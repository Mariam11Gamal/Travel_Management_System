<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "travel";
$port = 3306;
$conn = new mysqli($host, $username, $password, $database, $port);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Define country codes
$country_codes = [
    "1" => "Japan",
    "10" => "Egypt",
    "4" => "China",
    "2" => "France",
    "7" => "Turkey",
    "3" => "Australia",
    "8" => "Italy",
    "9" => "Germany",
    "6" => "United Kingdom",
    "5" => "Russia"
];

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $first_name = $conn->real_escape_string($_POST['first_name']);
    $second_name = $conn->real_escape_string($_POST['last_name']);
    $disease = $conn->real_escape_string($_POST['diseases']);
    $passport_number = $conn->real_escape_string($_POST['passport_Number']);
    $address = $conn->real_escape_string($_POST['address']);
    $email = $conn->real_escape_string($_POST['email']);
    $phone_number = $conn->real_escape_string($_POST['phone-Number']);
    $gender = $conn->real_escape_string($_POST['gender']);
    $date_of_birth = $conn->real_escape_string($_POST['DOB']);
    $National_ID = $conn->real_escape_string($_POST['National_ID']);
    $country = $_POST['country'] ?? '';
    $flight_id = $_POST['flight_id'];
    $restaurant_name = $conn->real_escape_string($_POST['restaurant_id']);
    $hotel_room = $_POST['room_id'];
    $attraction_id = $_POST['attraction_id'];

    // Validate country selection
    if (array_key_exists($country, $country_codes)) {
        $country_code = $country;
    } else {
        die("Invalid country selected.");
    }

    // Check if the country code exists in the `country` table
    $check_country_sql = "SELECT * FROM country WHERE Country_Code = '$country_code'";
    $check_country_result = $conn->query($check_country_sql);
    if ($check_country_result->num_rows == 0) {
        die("Country code does not exist in the country table.");
    }

    // Insert data into the `customer` table
    $sql = "INSERT INTO customer (Customer_ID, First_Name, Second_Name, Disease, Passport_Number, Email, Phone_Number, Address, Gender, Date_of_Birth, Country_Code) 
            VALUES ('$National_ID', '$first_name', '$second_name', '$disease', '$passport_number', '$email', '$phone_number', '$address', '$gender', '$date_of_birth', '$country_code')";

    if ($conn->query($sql) === TRUE) {
        echo "";
        echo "<br>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Insert into FINANCE
    $transaction_code = rand(10000, 99999);
    $insert_finance = "INSERT INTO FINANCE (Transiction_Code) VALUES (?)";
    $stmt = $conn->prepare($insert_finance);
    $stmt->bind_param("i", $transaction_code);
    $stmt->execute();
    $stmt->close();

    // Insert flight
    $flight_transaction_code = rand(10000, 99999);
    $stmt = $conn->prepare("INSERT INTO customer_flight_finance (Customer_ID, Flight_ID, Flight_Transcation_Code, Transaction_Code) VALUES 
    ('$National_ID', '$flight_id', '$flight_transaction_code', '$transaction_code')");
    $stmt->execute();
    $stmt->close();

    // Insert restaurant
    $stmt = $conn->prepare("SELECT License_Number FROM restaurant WHERE Name = ?");
    $stmt->bind_param('s', $restaurant_name);
    $stmt->execute();
    $stmt->bind_result($restaurant_code);
    $stmt->fetch();
    $stmt->close();

    $restaurant_transaction_code = rand(10000, 99999);
    $stmt = $conn->prepare("INSERT INTO customer_finance_restaurant (Customer_ID, License_Number, Restaurant_Transaction_Code, Transaction_Code) VALUES (?, ?, ?, ?)");
    $stmt->bind_param('iisi', $National_ID, $restaurant_code, $restaurant_transaction_code, $transaction_code);
    $stmt->execute();
    $stmt->close();

    // Insert hotel room
    $hotel_transaction_code = rand(10000, 99999);
    $stmt = $conn->prepare("INSERT INTO customer_room_finance (customer_id, Room_Number, hotel_transaction_code, Transaction_Code) VALUES (?, ?, ?,  ?)");
    $stmt->bind_param('issi', $National_ID, $hotel_room, $hotel_transaction_code, $transaction_code);
    $stmt->execute();
    $stmt->close();

    // Insert tourist attraction
    $place_transaction_code = rand(10000, 99999);
    $stmt = $conn->prepare("INSERT INTO customer_tourist_attraction_finance (customer_id, Attraction_code, TOURIST_attractions_Transaction_Code, Transaction_Code) VALUES (?, ?, ?, ?)");
    $stmt->bind_param('iiii', $National_ID, $attraction_id, $place_transaction_code, $transaction_code);
    $stmt->execute();
    $stmt->close();

    // Initialize total cost
    $total_cost = 0;

    // Retrieve hotel cost
    $room_query = "SELECT Total_bill_cost FROM hotel_room WHERE Room_Number = ?";
    $stmt = $conn->prepare($room_query);
    $stmt->bind_param("i", $hotel_room);
    $stmt->execute();
    $stmt->bind_result($room_cost);
    $stmt->fetch();
    $total_cost += $room_cost;
    $stmt->close();

    // Retrieve restaurant cost
    $restaurant_query = "SELECT Restaurant_bill_cost FROM restaurant WHERE License_Number = ?";
    $stmt = $conn->prepare($restaurant_query);
    $stmt->bind_param("i", $restaurant_code);
    $stmt->execute();
    $stmt->bind_result($restaurant_cost);
    $stmt->fetch();
    $total_cost += $restaurant_cost;
    $stmt->close();

    // Retrieve flight cost (Assume flight cost stored elsewhere or calculated)
    $flight_query = "SELECT Flight_bill_cost FROM flight WHERE Flight_ID = ?";
    $stmt = $conn->prepare($flight_query);
    $stmt->bind_param("i", $flight_id);
    $stmt->execute();
    $stmt->bind_result($flight_cost);
    $stmt->fetch();
    $total_cost += $flight_cost;
    $stmt->close();

    // Retrieve tourist attraction cost
    $attraction_query = "SELECT Tourist_attraction_bill_cost FROM tourist_attraction WHERE Attraction_code = ?";
    $stmt = $conn->prepare($attraction_query);
    $stmt->bind_param("i", $attraction_id);
    $stmt->execute();
    $stmt->bind_result($attraction_cost);
    $stmt->fetch();
    $total_cost += $attraction_cost;
    $stmt->close();

    // Insert total cost into FINANCE
    $insert_finance = "UPDATE finance SET Total_Cost = ? WHERE Transiction_Code = ?";
    $stmt = $conn->prepare($insert_finance);
    $stmt->bind_param("id", $total_cost, $transaction_code);
    $stmt->execute();
    $stmt->close();

    // Fetch country name
    $stmt = $conn->prepare("SELECT Country_Name FROM country WHERE Country_Code = ?");
    $stmt->bind_param('s', $country);
    $stmt->execute();
    $stmt->bind_result($country_name);
    $stmt->fetch();
    $stmt->close();

    // Fetch customer name
    $stmt = $conn->prepare("SELECT First_Name FROM customer WHERE customer_id = ?");
    $stmt->bind_param('s', $National_ID);
    $stmt->execute();
    $stmt->bind_result($customer_name);
    $stmt->fetch();
    $stmt->close();

    // Display booking confirmation with details
    echo "
    <!DOCTYPE html>
    <html lang='en'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <title>Booking Confirmation</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f7f6;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
                padding: 20px 30px;
                background-color: #ffffff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                text-align: center;
                max-width: 500px;
                width: 100%;
            }
            h1 {
                color: #4CAF50;
                margin-bottom: 20px;
            }
            .details {
                margin: 10px 0;
                font-size: 18px;
                color: #333;
            }
            .success {
                font-size: 22px;
                font-weight: bold;
                color: #0066cc;
                margin-bottom: 30px;
            }
            .button {
                display: inline-block;
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                text-decoration: none;
                border-radius: 5px;
                font-size: 16px;
                margin-top: 20px;
                transition: background-color 0.3s ease;
            }
            .button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class='container'>
            <h1>Booking Confirmation</h1>
            <p class='success'>Booking completed successfully!</p>
            <p class='details'>Customer Name: $customer_name</p>
            <p class='details'>Country: $country_name</p>
            <p class='details'>Flight ID: $flight_id</p>
            <p class='details'>Restaurant: $restaurant_name</p>
            <p class='details'>Room Number: $hotel_room</p>
            <p class='details'>Attraction ID: $attraction_id</p>
            <p class='details'>Total Cost: $$total_cost</p>
            <a href='fronend.php' class='button'>Book Another</a>
        </div>
    </body>
    </html>
    ";

    $conn->close();
}
?>
