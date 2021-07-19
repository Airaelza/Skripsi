<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Penelitian</h6>
        </div>
        <div class="card-body">

        <?php
            $koneksidb = new mysqli("localhost","root","","db_varietastanaman");
            $ambildata = $koneksidb->query("SELECT * FROM tb_vari_teh WHERE id_varian = '$_GET[id]'");
            $pecah = $ambildata->fetch_assoc();
        ?>
                <div class="container-fluid">
                    <table class="table-form" border="0" width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <img width="50%" src="../page/Varian/gambar/<?php echo $pecah['photo']; ?>" alt="" class="img-thumbnail">
                        </tr>

                        <tr>
                        <td width="20%">Nama Peneliti</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['nama_peneliti']; ?>
                            </td>
                        </tr>

                        <tr>
                            <td width="20%">Nama Varietas</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['nama_varian']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>No klon</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['no_klon']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Asal</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['asal']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Tipe Pertumbuhan</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['tipe']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Tinggi Tanaman</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['tinggi']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Diameter Tajuk</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['diameter']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Percabangan</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['percabangan']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Warna daun</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['warna']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Bentuk Daun</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['bentuk']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Umur Daun</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['umur']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Jumlah Bunga</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['jml_bunga']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Buah</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['buah']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Bentuk Biji</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['bentuk_biji']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Berat Biji</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['berat_biji']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Produktivitas</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['produk']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Cita Rasa</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['cita_rasa']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Umur Ekonomi Harapan</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['umur_ekonoha']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Ketahanan Terhadap Hama</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['ketahanan_hama']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Ketahanan Terhadap Penyakit</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['ketahanan_penyakit']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Daerah Adaptasi</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['daerah_adaptasi']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Keterangan</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['ket']; ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Pemulia</td>
                            <td width="1%">:</td>
                            <td>
                                <?php echo $pecah['pemulia']; ?>
                            </td>
                        </tr>
                    </table>
                </div>
                <td>
                    <button class="btn btn-secondary" type="button" onclick="history.back();">Kembali</button> 
                </td>
        </div>
    </div>
</div>