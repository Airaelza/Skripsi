
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Halaman Login</title>
      <!-- BOOTSTRAP STYLES-->
      <link href="assets/css/bootstrap.css" rel="stylesheet" />
      <!-- FONTAWESOME STYLES-->
      <link href="assets/css/font-awesome.css" rel="stylesheet" />
      <!-- CUSTOM STYLES-->
      <link href="assets/css/custom.css" rel="stylesheet" />
      <!-- GOOGLE FONTS-->
      <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   </head>
   <body class="bg-success">
      <div >
         <div class="row text-center">
            <br/><br/>
            <img src="assets/img/balittri.png" class="user-image img-responsive"/>
            <h2> Halaman Login </h2>
            <br/>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
            <div class="panel panel-default">
               <div class="panel-heading">
                  <strong> Masukan Username dan Password </strong>  
               </div>
               <div class="panel-body">
                  <form role="form" method="POST">
                     <br />
                     <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                        <input type="text" name="username" class="form-control" placeholder="Your Username" textcolor="black"/>
                     </div>
                     <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                        <input type="password" name="password" class="form-control"  placeholder="Your Password" />
                     </div>
                     <input type="submit" name="login" value="Login"class="btn btn-primary ">
                  
                     <hr />
                  </form>
               </div>
            </div>
         </div>
      </div>
      </div>
      <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
      <!-- JQUERY SCRIPTS -->
      <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
      <script src="assets/js/bootstrap.min.js"></script>
      <!-- METISMENU SCRIPTS -->
      <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
      <script src="assets/js/custom.js"></script>
   </body>
</html>

<?php
include "koneksi.php";
session_start();
// ob_start();
// error_reporting(0);
if (isset($_POST['login']))
{
    $username = $_POST['username'];
    $pass = $_POST['password'];

    $sql = "SELECT * FROM tb_user WHERE username='$username' AND password = '$pass'";
    $hasil = mysqli_query($koneksidb, $sql);
    $ketemu = mysqli_num_rows($hasil);
    if ($ketemu > 0)
    {
        $data = mysqli_fetch_assoc($hasil);

        $_SESSION["id_user"] = $data["id_user"];
        $_SESSION["username"] = $data["username"];
        $_SESSION['nama_lengkap'] = $data['nama_lengkap'];
        $_SESSION["level"] = $data["level"];

        if ($_SESSION['level'] = $data["level"] == "admin")
        {
            session_start();
            header("Location:admin/index.php");
        }
        else if ($_SESSION['level'] = $data["level"] == "user")
        {
            session_start();
            header("Location:index.php");
        }
        else
        {
            echo "<div class='alert alert-danger'>
        <strong>Error!</strong> Username dan password salah. 
        </div>";

        }
    }else{
        header("location: login.php");
    }
}

?>

