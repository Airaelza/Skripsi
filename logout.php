<?php
error_reporting(0);
$_SESSION['level'] = '';
unset($_SESSION['level']);
session_unset();
session_destroy();
echo "<script>alert('Anda berhasil logout');</script>";
echo "<script>location='../login.php';</script>";
?>