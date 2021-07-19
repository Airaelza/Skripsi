<?php
$host="localhost";
$user="root";
$password="";
$db="db_varietastanaman";

$koneksidb = mysqli_connect($host,$user,$password,$db);
if (!$koneksidb){
	  die("Koneksi gagal:".mysqli_connect_error());
}

?>