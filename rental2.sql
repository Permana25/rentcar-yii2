-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2021 pada 05.19
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `no_telp` int(50) NOT NULL,
  `no_ktp` int(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES
(16, 'Joe', 'Hungaria', '1', 867869203, 2147483647, '1611816537_joe.jpg'),
(17, 'Jamal', 'Semarang Timur', '1', 2147483647, 2147483647, '1611979386_jamal.jpg'),
(18, 'Chacha', 'Banyumanik', '2', 2147483647, 2147483647, '1611979465_chacha.jpg'),
(19, 'Zahra ', 'Jakarta', '2', 2147483647, 2147483647, '1611979609_zahra.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `log_time` double NOT NULL,
  `prefix` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(0, 0, 'Login', 1610368574.1099, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610368574.1099, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610368574.1099, \'reza\', \'Login\')'),
(0, 0, 'Login', 1610368632.2662, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610368632.2662, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610368632.2662, \'reza\', \'Login\')'),
(0, 0, 'Login', 1610504764.1865, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610504764.1865, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610504764.1865, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610507123.2775, 'reza', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`) VALUES (\'honda\', \'E 7879 VW\', \'Putih \', 2019, \'free\')'),
(0, 4, 'yii\\db\\Command::execute', 1610509173.7338, 'reza', 'UPDATE `mobil` SET `merk`=\'Toyota\', `tahun`=2001 WHERE `id_mobil`=1'),
(0, 4, 'yii\\db\\Command::execute', 1610512340.8469, 'reza', 'INSERT INTO `system_role` (`nama_role`) VALUES (\'customer\')'),
(0, 0, 'Login', 1610513189.4955, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610513189.4955, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610513189.4955, \'reza\', \'Login\')'),
(0, 0, 'Login', 1610519813.3473, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610519813.3483, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610519813.3473, \'reza\', \'Login\')'),
(0, 0, 'Login', 1610520674.7366, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610520674.7376, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610520674.7366, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610520717.7901, 'reza', 'DELETE FROM `user_role` WHERE `id_login`=\'17\''),
(0, 4, 'yii\\db\\Command::execute', 1610520717.8841, 'reza', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 17)'),
(0, 4, 'yii\\db\\Command::execute', 1610520717.9051, 'reza', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 17)'),
(0, 0, 'Login', 1610520754.6902, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610520754.6902, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610520754.6902, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610520789.4512, 'reza', 'DELETE FROM `user_role` WHERE `id_login`=\'16\''),
(0, 4, 'yii\\db\\Command::execute', 1610520789.4652, 'reza', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 16)'),
(0, 4, 'yii\\db\\Command::execute', 1610520789.4682, 'reza', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 16)'),
(0, 0, 'Login', 1610520808.6233, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610520808.6243, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610520808.6233, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610522262.1544, 'reza', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (1, 1, \'12 januari 2021\', \'24 januari 2021\', 150000, 0, \'13 januari 2021\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1610522301.9797, 'reza', 'UPDATE `transaksi` SET `id_customer`=1, `id_mobil`=1, `harga`=150000, `denda`=0, `status`=2 WHERE `id_transaksi`=1'),
(0, 0, 'Login', 1610524972.5414, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610524972.5424, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610524972.5414, \'reza\', \'Login\')'),
(0, 0, 'Login', 1610525656.6306, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610525656.6306, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610525656.6306, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610525769.835, 'reza', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`) VALUES (\'Mitsubishi\', \'H 7543 WQ\', \'Biru\', 2018, \'1\')'),
(0, 0, 'Login', 1610590503.3388, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610590503.3398, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610590503.3388, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610591912.3064, 'reza', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (2, 2, \'01/01/2021\', \'01/03/2021\', 150000, 0, \'01/14/2021\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1610592362.9232, 'reza', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (3, 3, \'2021-01-27\', \'01/30/2021\', 150000, 0, \'01/14/2021\', 2)'),
(0, 4, 'yii\\db\\Command::execute', 1610592409.4509, 'reza', 'DELETE FROM `transaksi` WHERE `id_transaksi`=1'),
(0, 4, 'yii\\db\\Command::execute', 1610592415.8002, 'reza', 'DELETE FROM `transaksi` WHERE `id_transaksi`=2'),
(0, 4, 'yii\\db\\Command::execute', 1610592421.6856, 'reza', 'DELETE FROM `transaksi` WHERE `id_transaksi`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610592474.3096, 'reza', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (1, 1, \'2021-01-01\', \'2021-01-03\', 250000, 0, \'2021-01-14\', 1)'),
(0, 0, 'Login', 1610596871.9251, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610596871.9261, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610596871.9251, \'reza\', \'Login\')'),
(0, 0, 'Login', 1610599226.4938, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610599226.4938, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610599226.4938, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610606970.885, 'reza', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'04\', \'jvkfvdfvd\', \'kuning\', 2001, \'1\', \'1610606970_c.jpg\')'),
(0, 0, 'Login', 1610679597.213, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610679597.213, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610679597.213, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610681946.6536, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Customer\', \'http://localhost/rental2/backend/web/index.php?r=customer\', 0, \'bars\', 0, 2)'),
(0, 4, 'yii\\db\\Command::execute', 1610682036.1109, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mobil\', \'http://localhost/rental2/backend/web/index.php?r=mobil\', 0, \'bars\', 0, 3)'),
(0, 4, 'yii\\db\\Command::execute', 1610682095.2999, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Transaksi\', \'http://localhost/rental2/backend/web/index.php?r=transaksi\', 0, \'bars\', 0, 4)'),
(0, 4, 'yii\\db\\Command::execute', 1610682222.2922, 'reza', 'UPDATE `menu_navigasi` SET `url`=\'/index.php?r=customer\', `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=6'),
(0, 4, 'yii\\db\\Command::execute', 1610683082.1635, 'reza', 'UPDATE `menu_navigasi` SET `url`=\'Customer\', `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=6'),
(0, 4, 'yii\\db\\Command::execute', 1610683175.5705, 'reza', 'UPDATE `menu_navigasi` SET `url`=\'customer\', `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=6'),
(0, 4, 'yii\\db\\Command::execute', 1610702526.2061, 'reza', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=7'),
(0, 4, 'yii\\db\\Command::execute', 1610702532.9342, 'reza', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=8'),
(0, 4, 'yii\\db\\Command::execute', 1610702553.3007, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mobil\', \'mobil\', 0, \'bars\', 0, 3)'),
(0, 0, 'Login', 1610763178.7263, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610763178.7263, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610763178.7263, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610763197.1734, 'reza', 'DELETE FROM `setting` WHERE `id_setting`=1'),
(0, 4, 'yii\\db\\Command::execute', 1610763213.0573, 'reza', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=6'),
(0, 4, 'yii\\db\\Command::execute', 1610763217.6915, 'reza', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=9'),
(0, 0, 'Login', 1610767535.6185, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610767535.6185, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610767535.6185, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610767699.3149, 'reza', 'UPDATE `login` SET `password`=\'25d55ad283aa400af464c76d713c07ad\', `foto`=\'1610767699_admin.jpg\' WHERE `id_login`=17'),
(0, 4, 'yii\\db\\Command::execute', 1610767877.361, 'reza', 'DELETE FROM `user_role` WHERE `id_login`=\'17\''),
(0, 4, 'yii\\db\\Command::execute', 1610767877.4451, 'reza', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (2, 17)'),
(0, 4, 'yii\\db\\Command::execute', 1610767877.4491, 'reza', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (1, 17)'),
(0, 0, 'Login', 1610767894.729, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610767894.729, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610767894.729, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610768317.0472, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'hyundai\', \' H 7879 RQ\', \'Putih \', 2019, \'2\', \'1610768317_a.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1610777437.0248, 'admin', 'DELETE FROM `mobil` WHERE `id_mobil`=1'),
(0, 0, 'Login', 1610778575.731, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610778575.732, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610778575.731, \'admin\', \'Login\')'),
(0, 0, 'Login', 1610779743.8498, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610779743.8498, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610779743.8498, \'reza\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610780143.0506, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mobil\', \'mobil\', 0, \'bars\', 0, 2)'),
(0, 4, 'yii\\db\\Command::execute', 1610780561.5365, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Systemmrole\', \'mobil\', 0, \'bars\', 0, 3)'),
(0, 4, 'yii\\db\\Command::execute', 1610780805.3505, 'reza', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=7'),
(0, 4, 'yii\\db\\Command::execute', 1610780813.611, 'reza', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=6'),
(0, 4, 'yii\\db\\Command::execute', 1610780831.324, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Customer\', \'customer\', 0, \'bars\', 0, 2)'),
(0, 4, 'yii\\db\\Command::execute', 1610780858.0695, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Mobil\', \'mobil\', 0, \'bars\', 0, 3)'),
(0, 4, 'yii\\db\\Command::execute', 1610780879.6727, 'reza', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'9\''),
(0, 4, 'yii\\db\\Command::execute', 1610780879.7377, 'reza', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 9)'),
(0, 4, 'yii\\db\\Command::execute', 1610780879.7427, 'reza', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 9)'),
(0, 4, 'yii\\db\\Command::execute', 1610780905.1062, 'reza', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Transaksi\', \'transaksi\', 0, \'bars\', 0, 4)'),
(0, 4, 'yii\\db\\Command::execute', 1610780911.8806, 'reza', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'10\''),
(0, 4, 'yii\\db\\Command::execute', 1610780911.9536, 'reza', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 10)'),
(0, 4, 'yii\\db\\Command::execute', 1610780911.9696, 'reza', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 10)'),
(0, 4, 'yii\\db\\Command::execute', 1610781011.4623, 'reza', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=4, `icon`=\'cart\', `status`=0 WHERE `id_menu`=10'),
(0, 4, 'yii\\db\\Command::execute', 1610781029.9343, 'reza', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=4, `icon`=\'bars\', `status`=0 WHERE `id_menu`=10'),
(0, 4, 'yii\\db\\Command::execute', 1610781822.6297, 'reza', 'DELETE FROM `mobil` WHERE `id_mobil`=4'),
(0, 4, 'yii\\db\\Command::execute', 1610781828.871, 'reza', 'DELETE FROM `mobil` WHERE `id_mobil`=5'),
(0, 4, 'yii\\db\\Command::execute', 1610781837.2095, 'reza', 'DELETE FROM `mobil` WHERE `id_mobil`=2'),
(0, 4, 'yii\\db\\Command::execute', 1610781848.3291, 'reza', 'DELETE FROM `mobil` WHERE `id_mobil`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610789143.3956, 'reza', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'honda\', \'D 666 WE\', \'Putih \', 2001, \'1\', \'1610789143_b.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1610789830.6819, 'reza', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'honda\', \'H 6767 WQ\', \'Merah\', 2018, \'2\', \'1610789830_honda.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1610789913.3797, 'reza', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (7, 7, \'2021-01-01\', \'2021-01-02\', 150000, 0, \'2021-01-16\', 2)'),
(0, 0, 'Login', 1610798475.7059, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610798475.7069, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610798475.7059, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610802308.7081, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Toyota\', \'D 666 WE\', \'Hitam\', 2019, \'2\', \'1610802308_d.jpg\')'),
(0, 0, 'Login', 1610811832.6714, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610811832.6724, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610811832.6714, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610814113.4448, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=1, `no_urut`=3, `status`=1 WHERE `id_menu`=4'),
(0, 4, 'yii\\db\\Command::execute', 1610814272.7609, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `icon`=\'icon-male\', `status`=0 WHERE `id_menu`=8'),
(0, 4, 'yii\\db\\Command::execute', 1610814416.6352, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `icon`=\'fas fa-couch\', `status`=0 WHERE `id_menu`=8'),
(0, 4, 'yii\\db\\Command::execute', 1610814612.7864, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `icon`=\'fas fa-truck-moving\', `status`=0 WHERE `id_menu`=9'),
(0, 4, 'yii\\db\\Command::execute', 1610814774.9667, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=4, `icon`=\'fas fa-users\', `status`=0 WHERE `id_menu`=10'),
(0, 4, 'yii\\db\\Command::execute', 1610814814.2119, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `icon`=\'fas fa-users\', `status`=0 WHERE `id_menu`=8'),
(0, 4, 'yii\\db\\Command::execute', 1610815002.6037, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=4, `icon`=\'fas fa-hand-holding-usd\', `status`=0 WHERE `id_menu`=10'),
(0, 4, 'yii\\db\\Command::execute', 1610822450.0392, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Dicky\', \'Jepara\', \'1\', 9874969643, 24773984039282)'),
(0, 4, 'yii\\db\\Command::execute', 1610822585.7579, 'admin', 'UPDATE `customer` SET `no_telp`=2147483647, `no_ktp`=2147483647 WHERE `id_customer`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610822685.3256, 'admin', 'UPDATE `customer` SET `no_telp`=2147483647, `no_ktp`=2147483647 WHERE `id_customer`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610822702.1466, 'admin', 'UPDATE `customer` SET `no_telp`=2147483647, `no_ktp`=2147483647 WHERE `id_customer`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610822816.5141, 'admin', 'UPDATE `customer` SET `no_telp`=2147483647, `no_ktp`=2147483647 WHERE `id_customer`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610823151.8453, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'riski\', \'desrefed\', \'2\', 9874969572, 8478256893264729)'),
(0, 4, 'yii\\db\\Command::execute', 1610823438.5927, 'admin', 'DELETE FROM `customer` WHERE `id_customer`=3'),
(0, 4, 'yii\\db\\Command::execute', 1610823443.291, 'admin', 'DELETE FROM `customer` WHERE `id_customer`=4'),
(0, 4, 'yii\\db\\Command::execute', 1610823467.8484, 'admin', 'UPDATE `customer` SET `jenis_kelamin`=\'1\', `no_telp`=2147483647, `no_ktp`=2147483647 WHERE `id_customer`=2'),
(0, 4, 'yii\\db\\Command::execute', 1610823511.9439, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Dicky\', \'jepara\', \'1\', 86537282, 236479832820284423)'),
(0, 4, 'yii\\db\\Command::execute', 1610823753.1717, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Toyota\', \'G 7777 GW\', \'kuning\', 2017, \'1\', \'1610823753_images.jpg\')'),
(0, 0, 'Login', 1610852549.7535, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610852549.7545, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610852549.7535, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610853383.1213, 'admin', 'UPDATE `mobil` SET `tahun`=2001 WHERE `id_mobil`=6'),
(0, 4, 'yii\\db\\Command::execute', 1610853950.0567, 'admin', 'UPDATE `transaksi` SET `id_customer`=2, `id_mobil`=6, `harga`=250000, `denda`=0, `status`=2 WHERE `id_transaksi`=4'),
(0, 0, 'Login', 1610895501.3896, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610895501.3906, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610895501.3896, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610895564.4542, 'admin', 'UPDATE `login` SET `password`=\'202cb962ac59075b964b07152d234b70\' WHERE `id_login`=17'),
(0, 0, 'Login', 1610895596.9581, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610895596.9581, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610895596.9581, \'admin\', \'Login\')'),
(0, 0, 'Login', 1610936598.476, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610936598.477, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610936598.476, \'admin\', \'Login\')'),
(0, 0, 'Login', 1610940433.1613, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1610940433.1623, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1610940433.1613, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1610942655.5354, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Sri Ayu\', \'Magelang\', \'2\', 987654332, 898798402492305)'),
(0, 4, 'yii\\db\\Command::execute', 1610943574.526, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (6, 7, \'2021-01-08\', \'2021-01-09\', 500000, 0, \'2021-01-18\', 1)'),
(0, 0, 'Login', 1611114164.4373, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611114164.4373, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611114164.4373, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611114455.0249, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Rezha\', \'Majalengka\', \'1\', 89437284892, 8947375672386427)'),
(0, 4, 'yii\\db\\Command::execute', 1611114490.8829, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Fatmawati\', \'indramayu\', \'2\', 958278430148427, 45892438687920)'),
(0, 4, 'yii\\db\\Command::execute', 1611114520.6546, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'dongkey\', \'cina\', \'1\', 2837942796478, 8372749329482)'),
(0, 0, 'Login', 1611195919.3248, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611195919.3248, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611195919.3248, \'admin\', \'Login\')'),
(0, 0, 'Login', 1611196549.8578, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611196549.8578, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611196549.8578, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611198637.4062, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Anzas\', \'Cirebon\', \'1\', 94835738, 4895834059845)'),
(0, 4, 'yii\\db\\Command::execute', 1611198819.1706, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Mitsubishi\', \'R 76754 WR\', \'Biru\', 2019, \'1\', \'1611198819_mitsubishi.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611199043.9285, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (2, 6, \'2021-01-20\', \'2021-01-27\', 150000, 12, \'2021-01-26\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1611199140.19, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (10, 10, \'2021-01-12\', \'2021-01-20\', 250000, 0, \'2021-01-13\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1611199279.2639, 'admin', 'UPDATE `mobil` SET `tahun`=2001 WHERE `id_mobil`=6'),
(0, 4, 'yii\\db\\Command::execute', 1611199837.2618, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (5, 10, \'2021-01-21\', \'2021-01-23\', 500000, 0, \'2021-01-21\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1611200474.6223, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=10'),
(0, 4, 'yii\\db\\Command::execute', 1611200474.6833, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (5, 10, \'2021-01-07\', \'2021-01-06\', 150000, 0, \'6-08-14\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1611200980.2562, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=10'),
(0, 4, 'yii\\db\\Command::execute', 1611200980.2932, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=9'),
(0, 4, 'yii\\db\\Command::execute', 1611201017.7434, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=10'),
(0, 4, 'yii\\db\\Command::execute', 1611201017.7984, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=10'),
(0, 4, 'yii\\db\\Command::execute', 1611201094.7008, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=10'),
(0, 4, 'yii\\db\\Command::execute', 1611201094.7138, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (7, 10, \'2021-01-21\', \'2021-01-22\', 250000, 0, \'2021-01-21\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1611210377.8597, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=9'),
(0, 4, 'yii\\db\\Command::execute', 1611210378.1167, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (9, 9, \'2021-01-21\', \'2021-01-22\', 500000, 0, \'2021-01-21\', 2)'),
(0, 0, 'Login', 1611282049.3944, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611282049.3954, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611282049.3944, \'admin\', \'Login\')'),
(0, 0, 'Login', 1611286582.7407, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611286582.7417, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611286582.7407, \'admin\', \'Login\')'),
(0, 0, 'Login', 1611303023.1039, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611303023.1049, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611303023.1039, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611303066.6074, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Qurratul A\\\'yuni\', \'Rembang \', \'2\', 8948238337536, 58942389735784)'),
(0, 4, 'yii\\db\\Command::execute', 1611303166.2901, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=6'),
(0, 4, 'yii\\db\\Command::execute', 1611303166.3321, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (11, 6, \'2021-01-22\', \'2021-01-24\', 1000000, 0, \'2021-01-22\', 1)'),
(0, 0, 'Login', 1611371668.0214, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611371668.0224, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611371668.0214, \'admin\', \'Login\')'),
(0, 0, 'Login', 1611374800.6715, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611374800.6715, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611374800.6715, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611374914.8871, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Arif\', \'Bandung \', \'1\', 9074587328734, 7854432787445)'),
(0, 4, 'yii\\db\\Command::execute', 1611375119.7758, 'admin', 'UPDATE `mobil` SET `tahun`=2001, `status`=\'1\' WHERE `id_mobil`=6'),
(0, 4, 'yii\\db\\Command::execute', 1611375204.5276, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=6'),
(0, 4, 'yii\\db\\Command::execute', 1611375204.6057, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (12, 6, \'2021-01-23\', \'2021-01-24\', 250000, 0, \'2021-01-23\', 1)'),
(0, 0, 'Login', 1611383827.2168, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611383827.2178, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611383827.2168, \'admin\', \'Login\')'),
(0, 0, 'Login', 1611415918.1813, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611415918.1813, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611415918.1813, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611416171.6158, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Nissan \', \'D 666 WE\', \'Oren \', 2019, \'1\', \'1611416171_11.png\')'),
(0, 4, 'yii\\db\\Command::execute', 1611416230.3401, 'admin', 'UPDATE `mobil` SET `no_plat`=\'F 9864 RW\', `tahun`=2019 WHERE `id_mobil`=11'),
(0, 4, 'yii\\db\\Command::execute', 1611416268.3073, 'admin', 'UPDATE `mobil` SET `tahun`=2019 WHERE `id_mobil`=11'),
(0, 4, 'yii\\db\\Command::execute', 1611416364.3708, 'admin', 'UPDATE `mobil` SET `tahun`=2019, `foto`=\'1611416364_nissan.jpg\' WHERE `id_mobil`=11'),
(0, 0, 'Login', 1611417129.0385, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611417129.0385, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611417129.0385, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611417289.3127, 'admin', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Log\', \'log\', 0, \'bars\', 0, 5)'),
(0, 4, 'yii\\db\\Command::execute', 1611418188.8762, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`) VALUES (\'Riyanto\', \'Indramayu\', \'1\', 984556342, 98520543987596)'),
(0, 4, 'yii\\db\\Command::execute', 1611420071.0778, 'admin', 'UPDATE `mobil` SET `merk`=\'honda jass\', `tahun`=2001 WHERE `id_mobil`=6'),
(0, 4, 'yii\\db\\Command::execute', 1611420187.5345, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=11'),
(0, 4, 'yii\\db\\Command::execute', 1611420235.2962, 'admin', 'UPDATE `transaksi` SET `id_customer`=10, `id_mobil`=10, `harga`=250000, `denda`=0, `status`=1 WHERE `id_transaksi`=8'),
(0, 4, 'yii\\db\\Command::execute', 1611420294.9756, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=11'),
(0, 4, 'yii\\db\\Command::execute', 1611420516.8553, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=11'),
(0, 4, 'yii\\db\\Command::execute', 1611421329.5978, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Hani\', \'Bogor\', \'2\', 37878982964782, 273849028496274, \'1611421329_ktp.jpg\')'),
(0, 0, 'Login', 1611581672.7653, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611581672.7663, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611581672.7653, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611581772.238, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'soni \', \'Karawang \', \'1\', 675856769, 67545768697798, \'1611581772_what-is-neural-network-blog.png\')'),
(0, 0, 'Login', 1611815265.482, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611815265.483, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611815265.482, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611816307.7306, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Honda Jazz\', \'E 7374 WO\', \'Merah\', 2019, \'1\', \'1611816307_honda.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611816537.4627, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Joe\', \'Hungaria\', \'1\', 867869203, 1234567890987654, \'1611816537_joe.jpg\')'),
(0, 0, 'Login', 1611885666.2307, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611885666.2317, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611885666.2307, \'admin\', \'Login\')'),
(0, 0, 'Login', 1611904928.7455, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611904928.7465, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611904928.7455, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611905507.0376, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1611905507.2326, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (16, 12, \'2021-01-29 14:25\', \'2021-01-30 14:25\', 150000, 0, \'2021-01-29\', 1)'),
(0, 0, 'Login', 1611973993.1662, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1611973993.1662, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1611973993.1662, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1611978083.6082, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Nissan \', \'G 7776 GW\', \'Oren \', 2019, \'1\', \'1611978083_nissan.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611978430.135, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=13'),
(0, 4, 'yii\\db\\Command::execute', 1611978430.16, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (16, 13, \'2021-01-30 10:45\', \'2021-01-31 10:45\', 150000, 0, \'2021-01-30\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1611978468.4572, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Mitsubishi\', \'G 7776 GW\', \'Biru\', 2020, \'1\', \'1611978468_e.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611978728.8811, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=13'),
(0, 4, 'yii\\db\\Command::execute', 1611978728.9391, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=2'),
(0, 4, 'yii\\db\\Command::execute', 1611978834.1171, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Toyota Yaris\', \'G 9898 TR\', \'kuning\', 2020, \'1\', \'1611978834_images.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611979035.5907, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Toyota Avanza\', \'E 4545 RW\', \'Hitam\', 2017, \'1\', \'1611979035_Avanza.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611979088.8307, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Daihatsu Ayla\', \'K 8976 HB\', \'Putih \', 2018, \'1\', \'1611979088_Ayla.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611979386.8317, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Jamal\', \'Semarang Timur\', \'1\', 98378493749, 324872346874234, \'1611979386_jamal.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611979465.5132, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Chacha\', \'Banyumanik\', \'2\', 97638740943, 12345678909876567, \'1611979465_chacha.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611979609.1075, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Zahra \', \'Jakarta\', \'2\', 938977846785, 987668732748828, \'1611979609_zahra.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1611979658.2403, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=17'),
(0, 4, 'yii\\db\\Command::execute', 1611979658.2703, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (19, 17, \'2021-01-30 11:05\', \'2021-01-31 11:05\', 400000, 0, \'2021-01-30\', 1)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `foto`) VALUES
(16, 'reza', '202cb962ac59075b964b07152d234b70', 'reza', '1610596861_download.jpg'),
(17, 'admin', '202cb962ac59075b964b07152d234b70', 'admin', '1610767699_admin.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_navigasi`
--

CREATE TABLE `menu_navigasi` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_navigasi`
--

INSERT INTO `menu_navigasi` (`id_menu`, `nama_menu`, `url`, `id_parent`, `no_urut`, `icon`, `status`) VALUES
(1, 'MASTER DATA', '#', 0, 1, 'database', 0),
(2, 'Menu Navigasi', 'menu-navigasi', 1, 1, 'bars', 0),
(3, 'Data Login', 'login', 1, 2, 'bars', 0),
(4, 'Data Hak Akses', 'systemrole', 1, 3, 'bars', 1),
(8, 'Customer', 'customer', 0, 2, 'fas fa-users', 0),
(9, 'Mobil', 'mobil', 0, 3, 'fas fa-truck-moving', 0),
(10, 'Transaksi', 'transaksi', 0, 4, 'fas fa-hand-holding-usd', 0),
(11, 'Log', 'log', 0, 5, 'bars', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_navigasi_role`
--

CREATE TABLE `menu_navigasi_role` (
  `id_menu_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_navigasi_role`
--

INSERT INTO `menu_navigasi_role` (`id_menu_role`, `id_menu`, `id_system_role`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(8, 6, 2),
(9, 6, 1),
(10, 7, 2),
(11, 7, 1),
(14, 8, 2),
(15, 8, 1),
(18, 11, 1),
(23, 12, 1),
(24, 13, 1),
(25, 9, 2),
(26, 9, 1),
(27, 10, 2),
(28, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(50) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `no_plat` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `tahun` int(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES
(12, 'Honda Jazz', 'E 7374 WO', 'Merah', 2019, '2', '1611816307_honda.jpg'),
(13, 'Nissan ', 'G 7776 GW', 'Oren ', 2019, '1', '1611978083_nissan.jpg'),
(14, 'Mitsubishi', 'G 7776 GW', 'Biru', 2020, '1', '1611978468_e.jpg'),
(15, 'Toyota Yaris', 'G 9898 TR', 'kuning', 2020, '1', '1611978834_images.jpg'),
(16, 'Toyota Avanza', 'E 4545 RW', 'Hitam', 2017, '1', '1611979035_Avanza.jpg'),
(17, 'Daihatsu Ayla', 'K 8976 HB', 'Putih ', 2018, '2', '1611979088_Ayla.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_role`
--

CREATE TABLE `system_role` (
  `id_system_role` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `system_role`
--

INSERT INTO `system_role` (`id_system_role`, `nama_role`) VALUES
(1, 'SYSTEM ADMINISTRATOR'),
(4, 'customer'),
(2, 'PROGRAMER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(50) NOT NULL,
  `id_customer` int(50) NOT NULL,
  `id_mobil` int(50) NOT NULL,
  `tgl_pinjam` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_kembali` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `harga` int(50) NOT NULL,
  `denda` int(50) NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES
(1, 16, 12, '2021-01-29 14:25:00', '2021-01-30 14:25:00', 150000, 0, '2021-01-29', 1),
(3, 19, 17, '2021-01-30 11:05:00', '2021-01-31 11:05:00', 400000, 0, '2021-01-30', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `id_system_role`, `id_login`) VALUES
(1, 2, 2),
(16, 1, 1),
(4, 2, 5),
(5, 2, 3),
(6, 2, 4),
(7, 2, 6),
(8, 2, 7),
(10, 2, 8),
(15, 2, 1),
(13, 1, 9),
(26, 2, 10),
(19, 2, 11),
(25, 2, 12),
(27, 2, 13),
(31, 2, 14),
(32, 2, 15),
(45, 2, 16),
(48, 1, 17),
(41, 2, 18),
(40, 2, 19),
(47, 2, 17),
(46, 1, 16);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  ADD PRIMARY KEY (`id_menu_role`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id_system_role`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`),
  ADD KEY `id_system_role` (`id_system_role`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
