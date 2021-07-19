<div class="container-fluid">
   <div class="alert alert-success" role="alert">
      <i class="fa fa-list" aria-hidden="true"></i>  
      Ubah Data User
   </div>

<?php
   $ambildata = $koneksi -> query ("SELECT * FROM tb_user WHERE id_user = '$_GET[id]'");
   $pecah = mysqli_fetch_assoc($ambildata);
?>

 <form method="post" enctype="multipart/form-data">
   <div class="form.group">
      <label>Username</label>
      <input type="text" class="form-control" name="username" value="<?php echo $pecah ['username'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Password</label>
      <input type="text" class="form-control" name="password" value="<?php echo $pecah ['password'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Nama Lengkap</label>
      <input type="text" class="form-control" name="nama_lengkap" value="<?php echo $pecah ['nama_lengkap'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Alamat</label>
      <input type="text" class="form-control" name="alamat" value="<?php echo $pecah ['alamat'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Jabatan</label>
      <input type="text" class="form-control" name="jabatan" value="<?php echo $pecah ['jabatan'] ; ?>" required>
   </div>
   <button class="btn btn-primary" name="ubah">Ubah</button>
</form>
    <?php
if (isset($_POST['ubah']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    $nama_lengkap = $_POST['nama_lengkap'];
    $alamat = $_POST['alamat'];
    $jabatan = $_POST['jabatan'];

    $koneksi -> query ("UPDATE tb_user SET username= '$username', password='$password',nama_lengkap='$nama_lengkap',alamat='$alamat',jabatan='$jabatan'  WHERE id_user = '$_GET[id]'");

    echo "<script>alert('Data berhasil diupdate');</script>";
    echo "<script>location='index.php?page=VariTeh';</script>";
}
?>
</div>
