-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 09:31 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_varietastanaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_lengkap`, `alamat`, `jabatan`, `level`) VALUES
(5, 'admin', 'admin', 'Zahra', 'Jl.Perumahan Balittri', 'Peneliti Pertama', 'admin'),
(6, 'guest', 'guest', 'Ananda', 'alamat', 'jabatan', 'user'),
(7, 'hai', 'hai', '', 'alamat', 'jabatan', 'user'),
(9, 'okan', 'okekan', '', 'alamat', 'jabatan', 'user'),
(10, 'ok', 'ok', 'ok', 'alamat', 'jabatan', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vari_teh`
--

CREATE TABLE `tb_vari_teh` (
  `id_varian` int(11) NOT NULL,
  `nama_varian` varchar(250) DEFAULT NULL,
  `no_klon` varchar(11) DEFAULT NULL,
  `asal` varchar(250) DEFAULT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `tinggi` varchar(100) DEFAULT NULL,
  `diameter` varchar(100) DEFAULT NULL,
  `percabangan` varchar(100) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `bentuk` varchar(100) DEFAULT NULL,
  `umur` varchar(200) DEFAULT NULL,
  `jml_bunga` int(11) DEFAULT NULL,
  `buah` varchar(100) DEFAULT NULL,
  `bentuk_biji` varchar(100) DEFAULT NULL,
  `berat_biji` varchar(100) DEFAULT NULL,
  `produk` varchar(100) DEFAULT NULL,
  `cita_rasa` varchar(100) DEFAULT NULL,
  `umur_ekonoha` varchar(100) DEFAULT NULL,
  `ketahanan_hama` varchar(100) DEFAULT NULL,
  `ketahanan_penyakit` varchar(100) DEFAULT NULL,
  `daerah_adaptasi` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `pemulia` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `nama_peneliti` varchar(100) NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_vari_teh`
--

INSERT INTO `tb_vari_teh` (`id_varian`, `nama_varian`, `no_klon`, `asal`, `tipe`, `tinggi`, `diameter`, `percabangan`, `warna`, `bentuk`, `umur`, `jml_bunga`, `buah`, `bentuk_biji`, `berat_biji`, `produk`, `cita_rasa`, `umur_ekonoha`, `ketahanan_hama`, `ketahanan_penyakit`, `daerah_adaptasi`, `ket`, `pemulia`, `photo`, `id_user`, `nama_peneliti`, `detail`) VALUES
(28, 'Karet Varietas', 'IRR 112', 'IAN 873 X RRCI 110', 'Lurus Mengarah Keatas', '> 200 m3', '0', 'Normal', 'Hijau Muda', 'Kipas', '0', 0, '0', 'Pipih', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan', 'Rendah', '5 September 2007', 'Rasidin Azwar, Aidi Daslin Sagala ', '5f8dd0fcaa455f848c5757bda74aeb5d--portrait-studio-photography-backdrops.jpg', 6, 'nama_lengkap', ''),
(29, 'Karet Varietas', '118', 'LCB1320 X FX 2784', 'Penghasil Latex dan Kayu', '0', '0', 'Normal', 'Hijau Muda', 'gghh', 'bb', 0, 'jj', 'kk', 'kk', 'll', 'Aroma Tidak Tajam', '20 Tahun', 'aadd', 'ddfg', 'gghghg', 'ddddd', '', 'download (13).jpg', 6, 'nama_lengkap', ''),
(30, 'Karet Varietas', 'BLIG I', 'Persilangan Fi antara Klon Induk GTIRRIM 600, GYT 577, AV 2037, PB 5/51, R1310', 'Blig I', '0', '0', 'Normal', 'Hijaau', 'Lonjong', '0', 0, 'Lonjong sampai agak bulat', '0', '0', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan', 'Dataran Tinggi', 'Perkebunan besar dianjurkan ditanam dengan jarak 6x3,5 m atau 475 pohon/ha ', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(31, 'Karet Varietas', '261', 'Tjir 1 X PR 107', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut (Conical)', 'Bentuk V (shaped)', 'Hijau Tua', 'Lonjong Memanjang (elliptical)', '0', 0, '0', 'Pipih', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan', 'Dataran Tinggi', '6 Januari 19965', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(32, 'Karet Varietas', '225', 'Tjir 1 X PR 107', 'Penghasil Latex dan Kayu', '> 200 m3', 'Setengah Lingkaran (Hemisphars)', 'Garpu', 'Hijau tua mengkilat', 'Diamond', '1 s/d 2', 0, '0', 'Pipih', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(33, 'Karet Varietas', '2037', 'AV 256 X 352', 'Jagur', '> 200 m3', 'Setengah Lingkaran (Hemisphars)', 'Garpu', 'Hijau kekuningan', 'Diamond', 'lebih awal (Desember)', 0, '-', 'Agak Bulat', '-', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(34, 'Karet Varietas', '712', 'RRIM 605 X RRIM 701', 'Jagur', '> 200 m3', 'Kerucut  terpotong (flat)', 'Normal', 'Hijau Tua', 'Bentuk V (shapid)', 'Januari-Februari', 0, '-', 'Bulat pada perut biji ada bintik kecil', 'Besar', 'Cepat ', 'Aroma Tidak Tajam', '20 Tahun', 'Tahan', 'Agak tahan terhadap oidium', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(35, 'Karet Varietas', '600', 'Tjir 1 X PB 86', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut (Conical)', 'Bentuk V (shaped)', 'Hijau kekuningan', 'Diamond', 'Januari-Februari', 0, '-', 'Bulat gepeng', 'Sedang', 'Sangat Tanggap (respon)', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(36, 'Karet Varietas', '712', 'RRIM 605 X RRIM 701', 'Jagur', '> 200 m3', 'Kerucut  terpotong (flat)', 'Normal', 'Hijau Tua', 'Lonjong Memanjang (elliptical)', 'Januari-Februari', 0, '-', 'Bulat pada perut biji ada bintik kecil', 'Besar', 'Cepat ', 'Aroma Tidak Tajam', '20 Tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(37, 'Karet Varietas', '100', 'RRIC 52 X Pb 85', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut  terpotong (flat)', 'Sapu', 'Hijau Tua', 'Abovate', 'Januari-Februari', 0, '-', 'Bentuk Lonjong', 'Besar', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(38, 'Karet Varietas', '300', 'PR 226 X PR 228', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut  terpotong (flat)', 'Bentuk V (shaped)', 'Hijau Tua', 'Lonjong Memanjang (elliptical)', 'Januari-Februari', 0, '-', 'Lonjong dan pada perut biji agak menonjol pipih', 'Besar', 'Cepat ', 'Aroma Tidak Tajam', '20 Tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '16 Januari 1995', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(39, 'Karet Varietas', '107', 'Klon Primer', 'Jagur', '> 200 m3', 'Setengah Lingkaran (Hemisphars)', 'Cemara', 'Hijau Tua', 'Diamond', 'Januari-Februari (normal)', 0, '-', 'Bulat gepeng pada kepala biji rata', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '20 Agustus 2003', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(40, 'Karet Varietas', '109', 'BPM 107 x BPM 13', 'Elliptica', '> 200 m3', 'Setengah Lingkaran (Hemisphars)', 'Lilin', 'Hijau Tua', 'Elliptical', 'Januari-Februari (normal)', 0, '-', 'Agak bulat gepeng', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '20 Agustus 2003', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(41, 'Karet Varietas', '5', 'Klon Primer', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut (Conical)', 'Cemara', 'Hijau kekuningan', 'Ellips', 'Januari-Februari', 0, '-', 'Gepeng', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '1 Agustus 2005', '1', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(42, 'Karet Varietas', '32', 'LCB 1320 x AVROS 1734', 'Penghasil Latex dan Kayu (tipe:slow starter)', '> 200 m3', 'Kerucut (Conical)', 'Garpu', 'Hijau tua agak kusam', 'Oval', 'Januari-Februari (normal)', 0, '-', 'Bulat', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '1 Agustus 2005', 'DR. Abdul Madjid', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(43, 'Karet Varietas', '39', 'LCB1320 X FX 25', 'Penghasil Latex dan Kayu (tipe:slow starter)', '> 200 m3', 'Kerucut (Conical)', 'Normal', 'Hijau tua mengkilat', 'Oval', 'Januari-Februari', 0, '-', 'Bulat', 'Besar', 'Cepat ', 'Aroma Tidak Tajam', '20 Tahun', 'Tahan', 'Tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '1 Agustus 2005', 'DR. Abdul Madjid, DR.Sukarya Danimihardja(alm)', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(44, 'Karet Varietas', '110', 'BPM 101 x RRIC 110', 'Penghasil Latex ', '> 200 m3', 'Normal', 'Garpu', 'Hijau muda', 'Ellips', 'Januari-Februari', 0, '-', 'Gepeng', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '1 Agustus 2005', 'SekarWoelan, Aidi DaslinSagala, Irwan Suhendry, Rasidin Azwar', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(45, 'Karet Varietas', '330', 'PB 5/51 x PB 32/36, Introduksi dari Malaysia', 'Penghasil Latex dan Kayu', '> 200 m3', 'Oval', 'Cemara', 'Hijau tua tidak mengkilat', 'Bulat telur terbalik', 'Januari-Februari', 0, '-', 'Agak Bulat', 'Agak besar', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '28 Maret 2008, Piang Besar Malaysia', 'Rasidin Azwar, Aidi Daslin Sagala ', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(46, 'Karet Varietas', '303', 'Tjir 1 X PR 107', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut  terpotong (flat)', 'Normal', 'Hijau Tua', 'Lonjong Memanjang (elliptical)', 'Januari-Februari', 0, '-', 'Agak bulat dan pada perut biji pipih', 'Kecil', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '16 Januari 1995', 'Sukarya Danimiharja, A.Madjid, Nong Alwi, Syafar Ginting, Rasidin Azwar dan Basuki', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(47, 'Karet Varietas', '260', 'PB 5/51 x PB 49', 'Penghasil Latex dan Kayu', '> 200 m3', 'Setengah Lingkaran (Hemisphars)', 'Garpu', 'Hijau kekuningan mengkilat', 'Abovate', 'Januari-Februari', 0, '-', 'Agak gepeng', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '20 Agustus 2003', 'Rasidin Azwar, Sekar Woelan, Aidi Daslin Sagala ', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(48, 'Karet Varietas', '340', 'PB 235 x PR 107 ; Introduksi dari Malaysia', 'Penghasil Latex dan Kayu', '> 200 m3', 'Sedang', 'Normal', 'Hijau tua tidak mengkilat', 'Bulat telur terbalik', 'Januari-Februari', 0, '-', 'Agak Bulat', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Dataran Tinggi', '28 Maret 2008, Piang Besar Malaysia', 'Rasidin Azwar, Aidi Daslin Sagala ', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(49, 'Karet Varietas', '24', 'GT 1 X AV 1734', 'Penghasil Latex dan Kayu', '> 200 m3', 'Kerucut (Conical)', 'Normal', 'Hijau kekuningan', 'Lonjong Memanjang (elliptical)', 'Januari-Februari', 0, '-', 'Bulat', 'sedang', 'Cepat ', 'Aroma Tidak Tajam', '20 tahun', 'Tahan', 'Agak tahan terhadap  corynespora, phytopthora dan jamur upas, agak tahan terhadap Oidium dan colleto', 'Dataran Tinggi', '16 Januari 1995', 'L.A. Napitupulu, H, Siregar, Nong Alwi Syafar Ginting, Aidi Daslin Sagala, Rasidin Azwar dan Basuki', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', ''),
(50, 'Kopi Arabika Varietas', 'KARTIKA I', 'BP 453 A merupakan hasil seleksi massa negatif pada populasi No.519-3 yang diintroduksikan dari CIFC, Portugal', 'Kate ( Dwarf)', '197 Cm', 'Pendek +/ 197 Cm', 'Agak lentur ruas pendek pembentukan cabang sekunder aktif, jumlah cabang primer produktif 30 cabang', 'Pupus hijau ( green tip), daun muda hijau, daun tua hijau agak gelap', 'Seragam bulat telur, ujung daun meruncing helaian daun tebal', 'Berbunga : 24-30 bulan', 10, 'Agak bulat Ukuran buah seragam, buah buah masak merah tua', 'Agak lonjong', '15,8 gram (100 biji) ', '4,175 Kg Kopi pasar/ha/tahun', 'Baik (fine cup)', '-', 'Peka terhadap netamatoda', 'Agak Tahan terhadap Cercospora sp', 'Dataran Tinggi', 'Kopi arabika kare mempunyai sifat apabila ditanam pada ketinggian kurang dari 1000 m dpl akan mengal', 'Retno Iilupi Surip Mawardi, Subadji dan Agus Dwi Purnomo', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(51, 'Kopi Arabika Varietas', 'KARTIKA 2', 'BP 454 A merupakan seleksi massa segatif pada populasi No. 520-3 yang di introduksi dari CIFC, Portugal ', 'Kate ( Dwarf)', '+/ 191 Cm', 'Pendek +/ 138,5 Cm', 'Ruas Pendek, pembentukan cabang sekunder aktif jumlah cabang primer produktif 29 cabang', 'Pupus hijau gelap', 'Bulat telur terbalik', 'Berbunga : 24-30 bulan', 10, 'agak bulat', 'Agak lonjong', '15,3 gram ( 100 biji)', '3,717 Kg Kopi pasar/ha/tahun', 'Baik (fine cup)', '-', 'Peka terhadap netamatoda', 'Agak tahan terhadap kerat daun, agak tahan terhadap Cercospora sp (tanaman muda', 'Dataran Tinggi', 'Kopi arabika kare mempunyai sifat apabila ditanam pada ketinggian kurang dari 1000 m dpl akan mengal', 'Retno Hulupi Surip Mawardi, Subadji dan Agus Dwi Purnomo', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(52, 'Kopi Varietas', 'USDA 762', 'Hasil seleksi pohon induk pada populasi tanaman kopi arabika hasil eksplorasi di Ethiopia oleh USDA', 'Tinggi agak melebar', '+/ 3 meter (Tanpa dipangkas)', '+/ 1,90 meter (batang tunggal)', 'Cabang primer tumbuh mendatar teratur, agak lentur, ruas batang 4-9 cm, ruas cabang 4-6 cm', 'Hijau agak tua dan kusam pupus daun hijau muda', 'lonjong melebar pangkal daun agak tumpul, ujung meruncing, helaian berlekuk tegas', '20-25 thn ( umur ekonomis)', 7, 'Buah muda berwarna hijau kusam, agak memanjang, ujung meruncing (1,22 cm), pangkal buah tumpul, disk', 'Agak memanjang (9,5 mm x 7,5 mm X 5,0 mm), seragam', '14,7 gram', '8-14 kwintal/ha untuk populasi 2000 - 3000 pohon/ha', 'Cukup baik', '-', 'Rentan terhadap serangan penyakit kerat daun', 'Agak tahan terhadap serangan kerat daun', 'Dataran Tinggi', 'Peka terhadap naungan dan tanah kurang subur. disarankan ditanam hanya pada ketinggian tempat diatas', 'Surip mawardi, Retno Hulupi, Murig Tahmadi dan J.R willet', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(53, 'Kopi Varietas', 'S 795', 'Hasil seleksi pada populasi keturunan gnerasi ke 5 iini S 288-23 yang telah disilang balikan dengan verietas kent populasi awal ini merupakan introduksi dari India', 'Tinggi melebar dengan daun rimbun menutupi batang pokok', '+/ 3,0 meter (tanpa dipangkas)', '+/ 2,01 meter ( batang tunggal)', 'Cabang primer tumbuh sangat aktif, demikian pula cabang cacing dan cabang balik sehingga percabangan', 'Hijau tua, pupus daun berwarna coklat ', 'Lonjong agak sempit dengan tepi bergelombang, ujung daun meruncing', '25 Tahun (umur ekonomis)', 7, 'Buah muda hijau, ujung tumpu, diskus datar melebar, berbentuk buah agak membulat (1,1 X 1,4 mm), bua', 'Membulat dengan ukuan 12,46 mm X 9,26 mm X 5,21 mm', '17,5 gram', '10-15 Kwintal/ha, untuk populasi 2000-2500 pohon/ha', 'Cukup baik', '-', 'Agak rentan serangan penggerek bubuk buah', 'Agak tahan terhadap serangan karat daun ( Hemilia vastatrix )', '-', 'Agak toleran terhadap tanah marginal', 'dapat ditanam mulai ketinggian tempay 700 m dpl', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(54, 'Kopi Arabika Varietas', 'ABSENIA 3', 'Hasil seleksi pohon induk pada populasi yang diintroduksikan dari Ethiopia', 'Tinggi melebar dengan perdu tegar', '+/ 3 meter (Tanpa dipangkas)', '+/ 1,99 meter (batang tunggal)', 'Cabang primer agak mendatar, cabang sekunder agak teratur, ruas 5-8 cm ', 'Kemerahan ( bronze )', 'Lonjong melebar, permukaan agak rata, ujung meruncing', '25 Tahun (umur ekonomis)', 7, 'Buah muda hijau, berbentuk buah lonjong bersegi, ujung buah tumpul, diskus agak rata, buah masak aga', 'Lonjong besar ( 13,6 mm X 8,4 mm X 5,3 mm )', '19,1 gram', '7,5 - 10 kwintal/ha, untuk populasi 2000-5000 pohon/ha ', 'Sangat baik', '-', 'Agak tahan serangan hama penggerak bubuk baik', 'Agak tahan terhadap karat (ketinggian tempat > 1250 meter ) Rentan terhadap kerat daun (ketinggian t', 'Dataran Tinggi', 'Mutu fiik biji baik, peka terhadap naungan terbuka. Daerah penanaman diatas 1250 meter dpl', 'Surip mawardi, Retno Hulupi, Murig Tahmadi dan J.R willet', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(55, 'Kopi Arabika Varietas', 'BP 426 A', 'Hasil seleksi individual pada populasi Catimor dari Colombia yang tidak dikenal riwayat genetiknya.', 'Katai, tajuk sedikit melebar dengan diameter dengan diameter 144 cm ', '121,3 cm apabila ditanam di lahan ketinggian > 1000 m dpl, dan 175,0 cm apabila ditanam dilahan keti', '-', 'Mendatar, tegak lurus batang utama agak lentur, panjang cabang primer 38,9 cm panjang ruas produktif', 'Daun tua berwarna hiaju tua gelap, daun muda berwarna hiaju muda', 'Bentuk daun oval agak memanjang, ujung meruncing dengan ukuran daun lebih besar dari pada kartika I ', '-', 0, ' jumlah buah peruas 9,7, dan berat 100 buah masak merah segar 114 gram ', 'berbentuk bulat memanjang diskus kecil, tanpa perhiasan buah', '16,4 gram (100 biji) ', '3,5 ton/ha untuk populasi 3300 pohon/ha, tetapi produktivitas rata-rata 2,8 ton/ha kopi pasar dengan', 'Baik', '10-15 Tahun', 'Tahan terhadap karat daun untuk ketinggian >1000 m dpl', ' agak tahan terhadap karat daun untuk ketinggian <900 m dpl', 'Dataran Tinggi', '-', 'Retno Hulupi, Surip Mawardi', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 5, 'Zahra', ''),
(56, 'Kopi Arabika Varietas', 'BP 426 A', 'Hasil seleksi individual pada populasi Catimor dari Colombia yang tidak dikenal riwayat genetiknya.', 'Katai, tajuk sedikit melebar dengan diameter dengan diameter 144 cm ', '121,3 cm apabila ditanam di lahan ketinggian > 1000 m dpl, dan 175,0 cm apabila ditanam dilahan keti', '-', '-', 'Daun tua berwarna hiaju tua gelap, daun muda berwarna hiaju muda', 'Bentuk daun oval agak memanjang, ujung meruncing dengan ukuran daun lebih besar dari pada kartika I ', '-', 0, '-', '-', '-', '-', 'Baik (fine cup)', '10-15 Tahun', 'Tahan terhadap karat daun untuk ketinggian >1000 m dpl', 'Agak tahan terhadap karat (ketinggian tempat > 1250 meter ) Rentan terhadap kerat daun (ketinggian t', 'Dataran Tinggi', '-', 'Retno Hulupi, Surip Mawardi', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(57, 'Kopi Arabika Varietas', 'SIGARAR UTA', 'Ditemukan diantar peranaman kopi yang ditanam Opung Sopan Boru Siregar di Desa Batu Gajah, Paranginan Lintong, Humbang hasundutan ( 1400 m dpl) pada tahun 1998', 'Habitus semi katai, seluruh tajuk daun merupakan batang pokok hingga ke permukaan batang pokok hingg', '-', '230 cm', 'percabangan sekunder sangat aktif bahkan pada cabang primer di atas permukaan tanah membentuk kipas ', 'Daun tua berwarna hiaju tua daun muda (flush) berwarna coklat kemerahan', 'Apabila ditanam tanpa penaung tepi daun bergelombang dan helaian mengatup keatas, sehingga sepintas ', '-', 0, 'Buah muda berwarna hijau bersih, sedangkan buah masak berwarna merah cerah, bentuk buah oval, dompol', 'besar', '196 gram', '1500bkg kopi biji/ha dengan kisaran 800-2300 kg hiji/ha, untuk penanaman dengan populasi 1600 pohon/', 'Baik (Good)', '20 Tahun pada kondisi linngkungan sumatra utara', ' Rentang serangan mematoda Radophoulus similis', 'Agak tahan penyakit karat daun, agak rentan serangan bubuk buah kopi', 'ketinggian 1000 m dpl', '-', 'Batara Girsang, Kamaluddin, Alfred Sipayung, Hernanto Budi Sentosa Asrul, Rohadi, Tiodor S. Situmora', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(58, 'Kopi Arabika Varietas', 'GAYO 1', 'Arabusta Timtim', 'Perdu, habitus tinggi melebar', '-', '+/2,87 m', 'Panjang cabang rata-rata 37,9 Cm', 'Daun tua berwarna hiaju tua daun muda (flush) berwarna coklat kemerahan', 'daun tua berbentuk oval ', 'medium', 0, 'Buah muda berwarna hijau bersih, sedangkan buah masak berwarna merah cerah, bentuk buah oval, dompol', 'Oval ( Panjang 1,40 - 1, 50 cm dan lebar 1,0 cm )', '-', 'Rata - rata 0,9 - 1,2 Ton Kopi Biji/Ha, untuk penanaman dengan 1.600 Pohon/Ha', 'Baik (Excellen)', '20 tahun', 'Penyakit karat daun ( Hemileia vastatrix)', 'serangan nematoda Radopholus similis agak tahan - tahan, Penggerek  buah kopi agak tahan', 'Kondisi lingkungan wilayah dataran tinggi Gayo pada ketiggian temoat di atas 1.000 m dol, tipe iklim', '-', 'Dinas Perkebunan dan kehutanan kabupaten Aceh Tengah Dinas Perkebunan dan Kehutanan Bener Meriah, Ba', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(59, 'Kopi Arabika Varietas', 'GAYO 2', 'bobor merupakan hasil seleksi pada populasi kopi arabika yang ditanam bercampur dengan Timtim Aceh dan Lini S', 'Perdu, habitus tipe tinggi', '-', '2,23 - 2,57', 'Panjang cabang primer rata-rata mencapai 34,1 cm , panjang ruas cabang agak pendek, sedikit lebih pa', 'Daun tua berwarna hiaju tua daun muda (flush) berwarna coklat ', 'Oval meruncing kerucut', '-', 0, 'Buah muda berwarna hijau kusam, agak memanjang, ujung meruncing (1,22 cm), pangkal buah tumpul, disk', 'Berbentuk membulat oval ( panjang 1, 43 - 1,50 cm dan lebar 1,06 cm )', '-', 'Rata - rata 0,9 - 1,2 Ton Kopi Biji/Ha, untuk penanaman dengan 1.600 Pohon/Ha', 'Baik (Excellen)', '20 tahun', 'Penyakit karat daun ( Hemileia vastatrix) agak tahan', 'serangan nematoda Radopholus similis agak tahan - tahan, Penggerek  buah kopi agak tahan', 'Kondisi lingkungan wilayah dataran tinggi Gayo pada ketiggian temoat di atas 1.000 m dol, tipe iklim', '-', 'Dinas Perkebunan dan kehutanan kabupaten Aceh Tengah Dinas Perkebunan dan Kehutanan Bener Meriah, Ba', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(60, 'Kopi Arabika Varietas', 'KOPYOL BALI', 'Arabusta Timtim generasi ke-2 sampai dengan ke -4', 'Habitus semi katai, seluruh tajuk daun merupakan batang pokok hingga ke permukaan batang pokok hingg', '-', '1,68 m dari batang pokok', 'Panjang cabang primer rata-rata mencapai 100 - 120 cm , panjang ruas cabang berkisar antara 4,23 - 7', 'Daun tua berwarna hiaju tua daun muda (flush) berwarna coklat kemerahan', 'daun tua berbentuk oval ', '-', 0, 'Buah muda berwarna hijau bersih, sedangkan buah masak berwarna merah cerah, bentuk buah oval, dompol', 'berbentuk bulat memanjang ( rata-rata panjang antara 1,41 - 1,52 Cm dan lebar 1,0 - 11 Cm), Rendemen', '-', 'Untuk tanaman kopi arabika kopyol dengan usia < 5 tahun telah mampu berproduksi antara 5,10 - 5,92 t', 'Baik (Good)', 'Masih dapat berproduksi pada usia 30 tahun ', 'Penyakit karat daun ( Hemileia vastatrix) tahan', 'serangan nematoda Radopholus similis agak tahan - tahan, Penggerek  buah kopi agak tahan', 'Daerah adaptasi kopi arabika \"Kopyol\" ada di kawasan petang kintamani kabupaten bangli, kawasan peta', '-', 'dinas Perkebunan Provinsi Bali ', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 7, '', ''),
(61, 'Karet Varietas', 'BP 426 A', 'suka', 'jk;', 'op;', 'hjkkj', 'Normal', 'pkkj', 'gghh', 'Januari-Februari', 0, '1', 'Agak Bulat', 'sedang', 'Cepat ', 'Baik (fine cup)', '20 Tahun', 'Peka terhadap netamatoda', 'agak tahan terhadap oidium dan colletotrichun, agak peka  corynespora, phytopthora dan jamur upas', 'Kondisi lingkungan wilayah dataran tinggi Gayo pada ketiggian temoat di atas 1.000 m dol, tipe iklim', '1 Agustus 2005', 'Rasidin Azwar, Aidi Daslin Sagala ', 'vegetation_nature_plants_vineyard_flora_icon_142057.png', 6, 'Ananda', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_vari_teh`
--
ALTER TABLE `tb_vari_teh`
  ADD PRIMARY KEY (`id_varian`),
  ADD KEY `fk_tb_vari_teh_tb_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_vari_teh`
--
ALTER TABLE `tb_vari_teh`
  MODIFY `id_varian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_vari_teh`
--
ALTER TABLE `tb_vari_teh`
  ADD CONSTRAINT `fk_tb_vari_teh_tb_user` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
