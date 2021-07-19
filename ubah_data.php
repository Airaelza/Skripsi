<?php error_reporting(0); ?>

<div class="container-fluid">
   <div class="alert alert-success" role="alert">
      <i class="fa fa-list" aria-hidden="true"></i>  
      Ubah Data
   </div>

<?php
            $koneksidb = new mysqli("localhost","root","","db_varietastanaman");
            $ambildata = $koneksidb->query("SELECT * FROM tb_vari_teh WHERE id_varian = '$_GET[id]'");
            $pecah = $ambildata->fetch_assoc();
        ?>

 <form method="post" enctype="multipart/form-data">
   <div class="form.group">
      <label>Nama Varietas</label>
      <input type="text" class="form-control" name="nama_vari" value="<?php echo $pecah ['nama_varian'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>No Klon</label>
      <input type="text" class="form-control" name="no_klon" value="<?php echo $pecah ['no_klon'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Asal</label>
      <input type="text" class="form-control" name="asal" value="<?php echo $pecah ['asal'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Tipe Pertumbuhan</label>
      <input type="text" class="form-control" name="tipe" value="<?php echo $pecah ['tipe'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Tinggi Tanaman</label>
      <input type="text" class="form-control" name="tinggi" value="<?php echo $pecah ['tinggi'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Diameter Tajuk</label>
      <input type="text" class="form-control" name="diameter" value="<?php echo $pecah ['diameter'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Percabangan</label>
      <input type="text" class="form-control" name="percabangan" value="<?php echo $pecah ['percabangan'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Warna Daun</label>
      <input type="text" class="form-control" name="warna" value="<?php echo $pecah ['warna'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Bentuk Daun</label>
      <input type="text" class="form-control" name="bentuk" value="<?php echo $pecah ['bentuk'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Umur Daun</label>
      <input type="text" class="form-control" name="umur" value="<?php echo $pecah ['umur'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Jumlah Bunga</label>
      <input type="text" class="form-control" name="jml_bunga" value="<?php echo $pecah ['jml_bunga'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Buah</label>
      <input type="text" class="form-control" name="buah" value="<?php echo $pecah ['buah'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Bentuk Biji </label>
      <input type="text" class="form-control" name="bentuk_biji" value="<?php echo $pecah ['bentuk_biji'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Berat Biji</label>
      <input type="text" class="form-control" name="berat_biji" value="<?php echo $pecah ['berat_biji'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Produktivitas</label>
      <input type="text" class="form-control" name="produk" value="<?php echo $pecah ['produk'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Cita Rasa</label>
      <input type="text" class="form-control" name="cita_rasa" value="<?php echo $pecah ['cita_rasa'] ; ?>" required>
   </div>
   <div class="form.group">
      <label>Umur Ekonomi Harapan</label>
      <input type="text" class="form-control" name="umur_ekonoha" value="<?php echo $pecah ['umur_ekonoha'] ; ?>" required>
   </div>
      <div class="form.group">
      <label>Ketahanan Terhadap Hama</label>
      <input type="text" class="form-control" name="ketahanan_hama" value="<?php echo $pecah ['ketahanan_hama'] ; ?>" required>
   </div>
         <div class="form.group">
      <label>Ketahanan Terhadap Penyakit</label>
      <input type="text" class="form-control" name="ketahanan_penyakit" value="<?php echo $pecah ['ketahanan_penyakit'] ; ?>" required>
   </div>
         <div class="form.group">
      <label>Daerah Adaptasi</label>
      <input type="text" class="form-control" name="daerah_adaptasi" value="<?php echo $pecah ['daerah_adaptasi'] ; ?>" required>
   </div>
         <div class="form.group">
      <label>Keterangan</label>
      <input type="text" class="form-control" name="ket" value="<?php echo $pecah ['ket'] ; ?>" required>
   </div>
         <div class="form.group">
      <label>Pemulia</label>
      <input type="text" class="form-control" name="pemulia" value="<?php echo $pecah ['pemulia'] ; ?>" required>
   </div>
        <div class="form.group">
      <label>Foto</label><tr>
  
         <td> <img src="page/VariTeh/gambar/<?php echo $data['photo']; ?>" width="100"></td>
      </tr>
   </div>
   <div class="form-group">
      <label>Ganti Foto</label>
      <input type="file" name="file_foto" class="form-control">   
   </div>
   <button class="btn btn-primary" name="ubah">Ubah</button>
   <form>
   <?php
   $vari= $_POST['nama_vari'];
   $no_klon= $_POST['no_klon'];
   $asal= $_POST['asal'];
   $tipe = $_POST['tipe'];
   $tinggi = $_POST['tinggi'];
   $diameter = $_POST['diameter'];
   $percabangan= $_POST['percabangan'];
   $warna= $_POST['warna'];
   $bentuk= $_POST['bentuk'];
   $umur= $_POST['umur'];
   $jml_bunga= $_POST['jml_bunga'];
   $buah= $_POST['buah'];
   $bentuk_biji= $_POST['bentuk_biji'];
   $berat_biji= $_POST['berat_biji'];
   $produk= $_POST['produk'];
   $cita_rasa= $_POST['cita_rasa'];
   $umur_ekonoha= $_POST['umur_ekonoha'];
   $ketahanan_hama= $_POST['ketahanan_hama'];
   $ketahanan_penyakit= $_POST['ketahanan_penyakit'];
   $daerah_adaptasi= $_POST['daerah_adaptasi'];
   $ket= $_POST['ket'];
   $_SESSION['nama_lengkap'] = $data['nama_lengkap'];
   $namaFile=$_POST['photo'];
   $nama_lengkap = $_SESSION['nama_lengkap'];
      
      if(isset ($_POST['ubah']))
      {
      
      //upload photo
      $namaFile = $_FILES['file_foto']['name'];
      $namaSementara = $_FILES['file_foto']['tmp_name'];

      if (!empty($namaSementara)) {
        
         if (file_exists(gambar/$namaSementara)) {
         unlink(gambar/$namaSementara);
      }
      }
      $dirUpload = "../page/Varian/gambar/";
      
         //Jika Photo dirubah
         if(!empty($namaSementara)){
         move_uploaded_file($namaSementara, $dirUpload.$namaFile);
            $koneksidb -> query ("UPDATE tb_vari_teh SET nama_varian= '$vari', no_klon='$no_klon',asal='$asal',tipe='$tipe',
         tinggi='$tinggi',diameter='$diameter',percabangan='$percabangan',warna='$warna',bentuk='$bentuk',umur='$umur',
         jml_bunga='$jml_bunga',buah='$buah',bentuk_biji='$bentuk_biji',berat_biji='$berat_biji',
         produk='$produk',cita_rasa='$cita_rasa',umur_ekonoha='$umur_ekonoha',ketahanan_hama='$ketahanan_hama',ketahanan_penyakit='$ketahanan_penyakit',daerah_adaptasi='$daerah_adaptasi',ket='$ket',pemulia='$pemulia', nama_peneliti='$nama_lengkap',photo='$namaFile' WHERE id_varian = '$_GET[id]'");
         }else{
            $koneksidb -> query ("UPDATE tb_vari_teh SET nama_varian= '$vari', no_klon='$no_klon',asal='$asal',tipe='$tipe',
         tinggi='$tinggi',diameter='$diameter',percabangan='$percabangan',warna='$warna',bentuk='$bentuk',umur='$umur',
         jml_bunga='$jml_bunga',buah='$buah',bentuk_biji='$bentuk_biji',berat_biji='$berat_biji',
         produk='$produk',cita_rasa='$cita_rasa',umur_ekonoha='$umur_ekonoha',ketahanan_hama='$ketahanan_hama',ketahanan_penyakit='$ketahanan_penyakit',daerah_adaptasi='$daerah_adaptasi',ket='$ket',pemulia='$pemulia',nama_peneliti='nama_lengkap' WHERE id_varian = '$_GET[id]'");
         }
      
         echo "<script>alert('Data berhasil diupdate');</script>";
       	echo "<script>location='index.php?halaman=lihatdata';</script>";
      }
      
      ?>
</div>
