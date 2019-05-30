
<!DOCTYPE html>
<html>
 <head>
   <title>

   </title>
  <src type="text/css" rel="stulesheet" hreftype="home.css">
  <meta name="keyword" conent="">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 </head>
 <body>
<style>
body
{
  background-color:#eeffff;
  background-position:fixed;
}
div a{
     text-decoration:none;
 }
div a:hover{
     background-color:rgb(180,180,180);
     text-decoration:none;
 }
div a:active{
     background-color:#3bc371;
}
.log{
  position: relative;
  left:1220px;
  top:14px;
  font-size:20px;
  color:#00b3b3;
  background-color:#b3ffff;
  border:none;
}
.titl a{
     position:relative;
     left:600px;
     top:14px;
     color:#00b3b3;
     font-size:25px;
}
.title a:hover{

}
.movesi{
  cursor: pointer;
  position:relative;
  top:14px;
  left:14px;
  font-size:20px;
    color:#00b3b3;
}
.icon{
    position:absolute;
    top:0;
    right:25px;
    font-size:30px;
    margin-left:50px;
}
.bar{
    display:flex;
    flex-direction:column;
  height:100%;
  width:0;
  position:fixed;
  z-index: 1;
  top:0;
  left:0;
  background-color:#f4f7f6;
  overflow-x:hidden;
  padding-top:60px ;
  transition:0.5s;
  border:inline;
        font-size:18px;
}

.toph
{
  border:inline;
        border-style:none;
        overflow:hidden;
        background-color:#b3ffff;
        height:60px;
    }
.footer {
   position: fixed;
   border-size:200px;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #2c3e50;
   text-align: center;
}
.footer a {
  color: #70726F;
  font-size: 20px;
  padding: 10px;
  border-right: 1px solid #70726F;
  transition: all .5s ease;
  color:white;
}
.footer a:first-child {
  border-left: 1px solid #70726F;
}
.footer a:hover {
  color: white;
}
p{
  color:white;
  font-size:14px;
}
span{
  color:white;
  font-size:14px;
}
.top{
  background-image:url("1.jpg");
  border-style-left:groove;
  border-style-right:groove;
  height:70px;
  width:100%;
}
.about{
  border-style:inset;
  line-height:22px;
  font-family:Arial,Helvetica,sans-serif;
  margin:5% 10% 5% 10%;
  padding:2% 5% 2% 5%;
}
.fa-home{
  font-size:25px;
  position:relative;
  left:40px;
  top:15px;
}

table {

  margin:2% 5% 10% 5%;
   width: 90%;
}
th,td{
	border-bottom:1px solid #b3ffff ;
}
.button{
   background-color:#4caf50;
   border:none;
   color:white;
   padding:15px 32px;
   text-align:center;
   font-size:16px;
   margin:4px 2px;
   cursor:pointer;
}

th, td {
   padding: 8px;
   text-align: left;
}

tr:hover {background-color:#f5f5f5;}
</style>
<div class="top">

</div>
  <div class="toph">
    <div id="sideb" class="bar">
      <a href="javascript:void(0)" class="icon" onclick="hidecont()">&times;</a>
      <a href="home.html">Home</a><br/>
      <a href="symp.html">Symptom Checker</a><br/>
      <a href="about.html">About</a><br/>
      <a href="privacy.html">Privacy</a><br/>
      <a href="contact.html">Contact</a><br/>
    
    </div>
    <span class="movesi" onclick="showcont()">&#9776;&nbsp&nbsp&nbsp Menu </span>
    <span><a href="Home.html"><i class="fa fa-home"></i></a></span>
    <span class="titl"><a href=" ">Gyromed</a></span>
    <button class="log" value="Logout">Logout</button> 
                  
  </div>
  <script type="text/javascript">
	var spcc
</script>
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
$addi=$_POST['sympquery'];
$countt=1;
 

$sql = "SELECT diseases,diagnosis,specialist FROM diseases WHERE $addi";
$result = $conn->query($sql);
echo "<table>
			<tr><th>PROBABLE DISEASES</th><th>DIAGNOSIS TESTS</th><th>FIND SPECIALIST NEAR YOU</th></tr>";

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["diseases"]."</th><td>".$row["diagnosis"]."</td><td><button class=\"button\" id=\"".$countt."\" onclick=\"mapp(".$countt.")\" >".$row["specialist"]."</td></tr><br>";
        $countt++;
    }
} else {
    echo "0 results";
}
$conn->close();
?>
<script type="text/javascript">

	function mapp(countt){

				spcc=document.getElementById(countt).innerHTML;


  					if (navigator.geolocation){

    					navigator.geolocation.getCurrentPosition(sssssss);

            
  					}}
  </script><script>          
  function sssssss(position){
          window.alert("ll");
  				var urll="https://www.google.co.in/maps/search/"+spcc+"/@"+ position.coords.latitude+","+position.coords.longitude+",13z";
          window.open(urll);
				}

</script>

 <footer class="footer">  
  <div class="container text-center">
    <p>Need more help?</br>
      contact us at(+919999988888)</p>

     <span>copyright &copy med services 2019 &nbsp&nbsp&nbsp&nbsp Follow us on...</span> 
    <a href="#"><i class="fa fa-facebook"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-linkedin"></i></a>
    <a href="#"><i class="fa fa-google-plus"></i></a>
    <a href="#"><i class="fa fa-skype"></i></a>
  </div>
   </footer> 

<script>
function showcont()
    {
         document.getElementById("sideb").style.width="250px";
    }
function hidecont()
    {
         document.getElementById("sideb").style.width="0px";
    }
</script>
 </body>
</html>