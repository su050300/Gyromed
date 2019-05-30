<?php
$servername = "localhost";
$username = "root";
$password = "root123";
$dbname = "devjam";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$name=$_POST['name'];
$email=$_POST['email'];
$password=$_POST['pass'];
$age=$_POST['age'];
$weight=$_POST['weight'];
$bg=$_POST['bg'];
$gender=$_POST['gender'];

$sql = "INSERT INTO user (name, email, password, age, weight, bg, gender)
VALUES ('$name', '$email', '$password', $age, $weight, '$bg','$gender')";

if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id;
    echo "New record created successfully." . $last_id;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Invalid</title>
	<style type="text/css">
		body{
						background-image: url("images/doctor.jpg");
			background-repeat: no-repeat;
  			background-position: right top;
  			background-attachment: fixed;
		}
	</style>
</head>
<body>
<a href="index.html">Click here to return to login page.</a>
</body>
</html>