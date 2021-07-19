
<?php
error_reporting(0);
include '../koneksi.php';

?>

<div class="container-fluid">
<div class="alert alert-success" role="alert">
   <i class="fa fa-list" aria-hidden="true"></i>        
   <h3>Tambah User</h3>
</div>
<form method="post" enctype="multipart/form-data" margin-bottom="10">
<div class="form.group">
   <label>Username</label>
   <input type="text" class="form-control" name="username" required>
</div>
<div class="form.group">
   <label>Password</label>
   <input type="text" class="form-control" name="password" required>
</div>
<div class="form.group">
   <label>Nama Lengkap</label>
   <input type="text" class="form-control" name="nama_lengkap" required>
</div>
<div class="form.group">
   <label>Alamat</label>
   <input type="text" class="form-control" name="alamat" required>
</div>
<div class="form.group">
   <label>Jabatan</label>
   <input type="text" class="form-control" name="jabatan" required>
</div>

<button class="btn btn-primary" name="simpan">Simpan</button>
</form>

<?php
if (isset($_POST['simpan']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    $nama_lengkap = $_POST['nama_lengkap'];
    $alamat = $_POST['alamat'];
    $jabatan = $_POST['jabatan'];


       $koneksidb->query("INSERT INTO tb_user(username,password,nama_lengkap,alamat,jabatan,level) VALUES ('$username', '$password', '$nama_lengkap','$alamat','$jabatan','user')");
      echo "<script>alert('User berhasil ditambahkan');</script>";
      echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=registeruser'>"; 
}     
?>

</div>