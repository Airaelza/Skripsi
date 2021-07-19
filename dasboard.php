<?php
$ambildata = $koneksi->query("SELECT * FROM tb_vari_teh");
$jumlahdata = mysqli_num_rows($ambildata);

$ambiljumlahpengguna = $koneksi->query("SELECT * FROM tb_user");
$jumlahpengguna = mysqli_num_rows($ambiljumlahpengguna);

$ambiljumlahadmin = $koneksi->query("SELECT * FROM tb_user WHERE level = 'admin' ");
$jumlahadmin = mysqli_num_rows($ambiljumlahadmin);
?>

<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    </div>  
  
  <div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Jumlah Data</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahdata; ?> DATA</div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-list fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
      </div>

        <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Jumlah Pengguna</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahpengguna; ?> USER</div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-user fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Jumlah Admin</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahadmin; ?> ADMIN</div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-user fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
        </div>


    <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Tanggal Login</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo date('d-m-Y'); ?></div>
                    </div>
                    <div class="col-auto">
                      <i class="fa fa-calendar fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
           
      </div>  
      
       <div class="form-group input-group">
         <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
         <div class="card border-left-primary shadow h-100 py-2">
          
                <div class="card-body">
                        <span class="input-group-addon"></i></span>
                        <input type="password" name="caridata" class="form-control"  placeholder="Cari Data" />
                     </div>
                     <input type="submit" name="cari" value="cari"class="btn btn-primary ">   
                     </div>  </div>         
</div>
