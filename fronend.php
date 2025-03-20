<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism Form</title>
    <style>
            select {
        width: 100%; 
        max-width: 600px; 
        overflow: hidden; 
        white-space: nowrap; 
        text-overflow: ellipsis; 
        padding: 10px;
        margin: 10px 0;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
     }
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input, select, textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
        }
        button {
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Tourism Form</h1>
        <form method="POST" action="backend.php">
            <!-- Country Selection -->
            <label for="country">Choose a Country:</label>
            <select id="country" name="country" required onchange="fetchFlights(this.value)">
                <option value="">-- Select a Country --</option>
                <option value="1">Japan</option>
                <option value="10">Egypt</option>
                <option value="4">China</option>
                <option value="2">France</option>
                <option value="7">Turkey</option>
                <option value="3">Australia</option>
                <option value="8">Italy</option>
                <option value="9">Germany</option>
                <option value="6">United Kingdom</option>
                <option value="5">Russia</option>
            </select>

            <!-- Dynamic Flight Selection -->
            <div id="flight-selection"></div>

            <!-- Personal Information -->
            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required>

            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required>

            <label for="National_ID">National ID:</label>
            <input type="number" id="National_ID" name="National_ID" required>

            <label for="passport_Number">Passport Number:</label>
            <input type="number" id="passport_Number" name="passport_Number" required>

            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
            </select>

            <label for="DOB">Date of Birth:</label>
            <input type="date" id="DOB" name="DOB" required>

            <label for="phone-Number">Phone Number:</label>
            <input type="tel" id="phone-Number" name="phone-Number" required>

            <label for="diseases">Diseases (if any):</label>
            <textarea id="diseases" name="diseases"></textarea>

            <!-- Submit Button -->
            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        function fetchFlights(countryCode) {
            if (!countryCode) {
                document.getElementById('flight-selection').innerHTML = '';
                return;
            }
            fetch(`reading.php?country=${countryCode}`)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('flight-selection').innerHTML = data;
                })
                .catch(error => console.error('Error:', error));
        }
    </script>
    
</body>
</html>
