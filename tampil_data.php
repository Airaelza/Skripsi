<?php 
    error_reporting(0);
    $koneksidb = new mysqli("localhost","root","","db_varietastanaman");
        
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Lihat Data</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Data Penelitian</h6>
                </div>
                <div class="card-body">
                        <table class="table table-bordered table-responsive" id="tampildata" width="100%" cellspacing="0">
                            <thead>
                                <tr class="table-active text-center">
                                    <th>No</th>
                                    <th>Nama_Varietas</th>
                                    <th>No_Klon</th>
                                    <th>Asal</th>
                                    <th>Tipe_Pertumbuhan</th>
                                    <th>Tinggi_Tanaman</th>
                                    <th>Diameter_Tajuk</th>
                                    <th>Percabangan</th>
                                    <th>Warna_Daun</th>
                                    <th>Bentuk_Daun</th>
                                    <th>Umur_Daun</th>
                                    <th>JML_Cabang</th>
                                    <th>Buah</th>
                                    <th>Bentuk_Biji</th>
                                    <th>Berat_Biji</th>
                                    <th>Produktivitas</th>
                                    <th>Cita_Rasa</th>
                                    <th>Umur_Ekonomi Harapan</th>
                                    <th>Ketahanan_Hama</th>
                                    <th>Ketahanan_Penyakit</th>
                                    <th>Daerah_Adaptasi</th>
                                    <th>Keterangan</th>
                                    <th>Pemulia</th>
                                    <th>Nama_Peneliti</th>
                                    <th>Foto</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                        $no_urut = 0;
                        $sql = $koneksidb ->
                                query("SELECT * from tb_vari_teh"); while($data=$sql->fetch_assoc()){ $no_urut++; ?>
                                <tr>
                                    <td><?php echo $no_urut; ?></td>
                                    <td><?php echo $data['nama_varian']; ?></td>
                                    <td><?php echo $data['no_klon']; ?></td>
                                    <td><?php echo $data['asal']; ?></td>
                                    <td><?php echo $data['tipe']; ?></td>
                                    <td><?php echo $data['tinggi']; ?></td>
                                    <td><?php echo $data['diameter']; ?></td>
                                    <td><?php echo $data['percabangan']; ?></td>
                                    <td><?php echo $data['warna']; ?></td>
                                    <td><?php echo $data['bentuk']; ?></td>
                                    <td><?php echo $data['umur']; ?></td>
                                    <td><?php echo $data['jml_bunga']; ?></td>
                                    <td><?php echo $data['buah']; ?></td>
                                    <td><?php echo $data['bentuk_biji']; ?></td>
                                    <td><?php echo $data['berat_biji']; ?></td>
                                    <td><?php echo $data['produk']; ?></td>
                                    <td><?php echo $data['cita_rasa']; ?></td>
                                    <td><?php echo $data['umur_ekonoha']; ?></td>
                                    <td><?php echo $data['ketahanan_hama']; ?></td>
                                    <td><?php echo $data['ketahanan_penyakit']; ?></td>
                                    <td><?php echo $data['daerah_adaptasi']; ?></td>
                                    <td><?php echo $data['ket']; ?></td>
                                    <td><?php echo $data['pemulia']; ?></td>
                                    <td><?php echo $data['nama_peneliti'] ?></td>
                                    <td>
                                        <img src="../page/Varian/gambar/<?php echo $data['photo']; ?>" width="100" />
                                    </td>
                                    <td>
                                        <a href="index.php?halaman=ubahdata&id=<?php echo $data['id_varian']; ?>" class="btn btn-info">Ubah</a>
                                        <a href="index.php?halaman=detaildata&id=<?php echo $data['id_varian']; ?>" class="btn btn-info">Detail</a>
                                    </td>
                                 

                                </tr>
                                <?php } ?>
                            </tbody>

                        </table>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Data Datables -->

        <script type="text/javascript">
            $(document).ready( function () {
                $('#tampildata').DataTable();
            } );
        </script>

        <!-- Page level custom scripts -->
<!--         <script src="js/demo/datatables-demo.js"></script> -->

    </body>
</html>
