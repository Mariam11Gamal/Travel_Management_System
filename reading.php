<?php
// Database connection
$host = "localhost";
$username = "root";
$password = "";
$database = "travel";

$conn = new mysqli($host, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle country selection
if (isset($_GET['country']) && !empty($_GET['country'])) {
    $country_code = $conn->real_escape_string($_GET['country']);

    // Fetch flights
    $flights_sql = "SELECT Flight_ID, Took_Off_From, Destination, Departure_Time, Flight_bill_cost 
                    FROM flight 
                    WHERE Country_Code = '$country_code'";
    $flights = $conn->query($flights_sql);

    // Fetch rooms with hotel details
    $rooms_sql = "SELECT hr.Room_Number, hr.Style, hr.View, hr.Total_bill_cost, 
                         h.Name AS Hotel_Name, h.Rating AS Hotel_Rating 
                  FROM hotel_room hr
                  JOIN hotel h ON hr.Hotel_ID = h.Hotel_ID
                  WHERE hr.Country_Code = '$country_code'";
    $rooms = $conn->query($rooms_sql);

    // Fetch restaurants
    $restaurants_sql = "SELECT name AS Restaurant_Name, 
                               type AS Restaurant_Type, 
                               rating AS Restaurant_Rating, 
                               price_range AS Price_Range, 
                               restaurant_bill_cost AS Restaurant_Bill_Cost
                        FROM restaurant 
                        WHERE Country_Code = '$country_code'";
    $restaurants = $conn->query($restaurants_sql);

    // Fetch tourist attractions
   // Fetch tourist attractions
$attractions_sql = "SELECT Attraction_Code, Name, Location, City, Rating, Popularity, Tourist_attraction_bill_cost 
FROM tourist_attraction 
WHERE Country_Code = '$country_code'";
$attractions = $conn->query($attractions_sql);


    echo "<h2>Available Flights</h2>";
    if ($flights->num_rows > 0) {
        echo '<label for="flight_id">Choose a Flight:</label>';
        echo '<select id="flight_id" name="flight_id" required>';
        while ($flight = $flights->fetch_assoc()) {
            echo "<option value='{$flight['Flight_ID']}'>";
            echo "Flight ID: {$flight['Flight_ID']}, ";
            echo "From: {$flight['Took_Off_From']}, ";
            echo "To: {$flight['Destination']}, ";
            echo "Departure: {$flight['Departure_Time']}, ";
            echo "Cost: {$flight['Flight_bill_cost']} USD";
            echo "</option>";
        }
        echo '</select>';
    } else {
        echo "<p>No flights found for this country.</p>";
    }

    echo "<h2>Available Rooms</h2>";
    if ($rooms->num_rows > 0) {
        echo '<label for="room_id">Choose a Room:</label>';
        echo '<select id="room_id" name="room_id" required>';
        while ($room = $rooms->fetch_assoc()) {
            echo "<option value='{$room['Room_Number']}'>";
            echo "Hotel: {$room['Hotel_Name']} (Rating: {$room['Hotel_Rating']}), ";
            echo "Room: {$room['Room_Number']}, ";
            echo "Style: {$room['Style']}, ";
            echo "View: {$room['View']}, ";
            echo "Cost: {$room['Total_bill_cost']} USD";
            echo "</option>";
        }
        echo '</select>';
    } else {
        echo "<p>No rooms found for this country.</p>";
    }

    echo "<h2>Available Restaurants</h2>";
    if ($restaurants->num_rows > 0) {
        echo '<label for="restaurant_id">Choose a Restaurant:</label>';
        echo '<select id="restaurant_id" name="restaurant_id" required>';
        while ($restaurant = $restaurants->fetch_assoc()) {
            echo "<option value='{$restaurant['Restaurant_Name']}'>";
            echo "Name: {$restaurant['Restaurant_Name']}, ";
            echo "Type: {$restaurant['Restaurant_Type']}, ";
            echo "Rating: {$restaurant['Restaurant_Rating']}, ";
            echo "Price Range: {$restaurant['Price_Range']}, ";
            echo "Cost: {$restaurant['Restaurant_Bill_Cost']} USD";
            echo "</option>";
        }
        echo '</select>';
    } else {
        echo "<p>No restaurants found for this country.</p>";
    }

    echo "<h2>Available Tourist Attractions</h2>";
    if ($attractions->num_rows > 0) {
        echo '<label for="attraction_id">Choose an Attraction:</label>';
        echo '<select id="attraction_id" name="attraction_id" required>';
        while ($attraction = $attractions->fetch_assoc()) {
            echo "<option value='{$attraction['Attraction_Code']}'>";
            echo "Name: {$attraction['Name']}, ";
            echo "Location: {$attraction['Location']}, ";
            echo "City: {$attraction['City']}, ";
            echo "Rating: {$attraction['Rating']}, ";
            echo "Popularity: {$attraction['Popularity']}, ";
            echo "Cost: {$attraction['Tourist_attraction_bill_cost']} USD";
            echo "</option>";
        }
        echo '</select>';
    } else {
        echo "<p>No tourist attractions found for this country.</p>";
    }
} else {
    echo "<p>Please select a valid country.</p>";
}
?>