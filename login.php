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
$email=$_POST['email'];
$psw=$_POST['psw'];
 

$sql = "SELECT email FROM user WHERE email='$email' AND password='$psw'";
$result = $conn->query($sql);

if ($result->num_rows == 1) {
    
   $row = $result->fetch_assoc();
   session_start();
   $_SESSION["email"]= $row["email"];
       header('Location: home.html');
   
} else {
    echo "Invalid email or password!!"."<br>";
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