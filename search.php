<?php
    $key=$_GET['key'];
    $array = array();
    $con=mysqli_connect("localhost","root","root123","devjam");
    $query=mysqli_query($con, "select * from user_name where title LIKE '%{$key}%'");
    while($row=mysqli_fetch_assoc($query))
    {
      $array[] = $row['title'];
    }
    echo json_encode($array);
    mysqli_close($con);
?>
