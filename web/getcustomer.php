<?php

if( isset( $_POST['user_name'] ) )
{

$name = $_POST['user_name'];

$host = 'localhost';
$user = 'root';
$pass = 'root';

mysql_connect($host, $user, $pass);

mysql_select_db('fondok');

$selectdata = " SELECT customerUsername,stars,comment FROM fondok.rating WHERE hotelName = ' " + $name "'";

$query = mysql_query($selectdata);

while($row = mysql_fetch_array($query))
{
 echo "<p>".$row['customerUsername']."</p>";
 echo "<p>".$row['stars']."</p>";
 echo "<p>".$row['comment']."</p>";
}

}
?>