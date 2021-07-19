<?php 
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
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr class="table-active text-center">
                                    <th>No</th>
                                    <th>User Name</th>
                                    <th>Password</th>
                                    <th>Nama Lengkap</th>
                                    <th>Alamat</th>
                                    <th>Jabatan</th>
                                    <th>Level</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                        $no_urut = 0;
                        $sql = $koneksidb ->
                                query("SELECT * from tb_user"); while($data=$sql->fetch_assoc()){ $no_urut++; ?>
                                <tr>
                                    <td><?php echo $no_urut; ?></td>
                                    <td><?php echo $data['username']; ?></td>
                                    <td><?php echo $data['password']; ?></td>
                                    <td><?php echo $data['nama_lengkap']; ?></td>
                                    <td><?php echo $data['alamat']; ?></td>
                                    <td><?php echo $data['jabatan']; ?></td>
                                    <td><?php echo $data['level']; ?></td>
                                    <td>
                                       <a href="index.php?halaman=ubahuser&id=<?php echo $data['id_user']; ?>" class="btn btn-info">Ubah</a>
                                    </td>

                                </tr>
                                <?php } ?>
                            </tbody>

                        </table>
                    </div>
                     <a class="btn btn-primary mb-3" href="index.php?halaman=tambahuser" role="button"><i class="fa fa-plus"> Tambah User</i></a>
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

        <!-- Page level plugins -->
        <script src="vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/datatables-demo.js"></script>
    </body>
</html>
