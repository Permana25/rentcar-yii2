-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 03:04 AM
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
-- Database: `rental2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
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
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES
(16, 'Joe', 'Hungaria', '1', 867869203, 2147483647, '1611816537_joe.jpg'),
(18, 'Chacha', 'Banyumanik', '2', 2147483647, 2147483647, '1611979465_chacha.jpg'),
(19, 'Zahra ', 'Jakarta', '2', 2147483647, 2147483647, '1611979609_zahra.jpg'),
(20, 'Cj', 'Amerika ', '1', 97483757, 2147483647, '1612145731_cj.jpg'),
(21, 'Anzas febriyana', 'Kabupaten Cirebon, sumber ', '1', 2147483647, 2147483647, '1615359425_anzas.jpg'),
(22, 'Cici', 'Surabaya ', '2', 2147483647, 2147483647, '1614221837_cici.jpg'),
(23, 'Rezha Agascha ', 'Majalengka, Jawa Barat ', '1', 2147483647, 2147483647, '1615273882_koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `log`
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
-- Dumping data for table `log`
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
(0, 4, 'yii\\db\\Command::execute', 1611979658.2703, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (19, 17, \'2021-01-30 11:05\', \'2021-01-31 11:05\', 400000, 0, \'2021-01-30\', 1)'),
(0, 0, 'Login', 1612145263.3709, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612145263.3719, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612145263.3709, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1612145731.5144, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Cj\', \'Amerika \', \'1\', 97483757, 78387328477854, \'1612145731_cj.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1612145787.6017, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Toyota Fortuner\', \'Y 7689 BT\', \'Coklat\', 2019, \'1\', \'1612145787_fortuner.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1612145859.8058, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=14'),
(0, 4, 'yii\\db\\Command::execute', 1612145859.8378, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (20, 14, \'2021-02-01 09:15\', \'2021-02-02 09:15\', 250000, 0, \'2021-02-01\', 1)'),
(0, 0, 'Login', 1612146044.6134, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612146044.6144, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612146044.6134, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1612146172.0276, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=16'),
(0, 4, 'yii\\db\\Command::execute', 1612146172.0866, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (17, 16, \'2021-02-01 09:20\', \'2021-02-02 09:20\', 150000, 0, \'2021-02-01\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1612149297.9964, 'admin', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Home\', \'index\', 0, \'bars\', 0, 6)'),
(0, 4, 'yii\\db\\Command::execute', 1612149346.4942, 'admin', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=12'),
(0, 0, 'Login', 1612317846.6293, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612317846.6303, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612317846.6293, \'admin\', \'Login\')'),
(0, 0, 'Login', 1612408981.7753, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612408981.7753, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612408981.7753, \'admin\', \'Login\')'),
(0, 0, 'Login', 1612418432.1608, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612418432.1618, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612418432.1608, \'admin\', \'Login\')'),
(0, 0, 'Login', 1612421894.6899, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612421894.6899, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612421894.6899, \'admin\', \'Login\')'),
(0, 0, 'Login', 1612576439.889, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612576439.889, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612576439.889, \'admin\', \'Login\')'),
(0, 0, 'Login', 1612973352.3118, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1612973352.3123, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1612973352.3118, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613185052.9146, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613185052.9152, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613185052.9146, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613441432.919, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613441432.9197, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613441432.919, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1613444914.0923, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Anzas febriyana\', \'Cirebon\', \'1\', 2147483647, 2147483647, \'1613444913_anzas.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1613444996.5784, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=18'),
(0, 4, 'yii\\db\\Command::execute', 1613444996.728, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (21, 18, \'2021-02-16 10:05\', \'2021-02-17 10:05\', 400000, 0, \'2021-02-16\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1613445156.9867, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Suzuki Karimun Estilo\', \'B 9876 BY\', \'Ungu\', 2017, \'1\', \'1613445156_suzuki.jpg\')'),
(0, 0, 'Login', 1613613385.9531, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613613385.9535, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613613385.9531, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613702064.7324, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613702064.7329, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613702064.7324, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613721145.679, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613721145.6794, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613721145.679, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613787285.5307, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613787285.5312, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613787285.5307, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613790043.4198, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613790043.4202, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613790043.4198, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613795235.7889, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613795235.7893, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613795235.7889, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1613795658.3608, 'admin', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Dashboard\', \'web/index.php\', 0, \'tachnometer-alt\', 0, 6)'),
(0, 4, 'yii\\db\\Command::execute', 1613795815.5689, 'admin', 'DELETE FROM `menu_navigasi` WHERE `id_menu`=12'),
(0, 4, 'yii\\db\\Command::execute', 1613796320.3455, 'admin', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Dashboard\', \'site\', 0, \'box\', 0, 6)'),
(0, 0, 'Login', 1613797385.4507, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613797385.4512, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613797385.4507, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1613797428.0179, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=2, `status`=0 WHERE `id_menu`=13'),
(0, 4, 'yii\\db\\Command::execute', 1613797437.7503, 'admin', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'13\''),
(0, 4, 'yii\\db\\Command::execute', 1613797437.8676, 'admin', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 13)'),
(0, 4, 'yii\\db\\Command::execute', 1613797487.8307, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=3, `status`=0 WHERE `id_menu`=8'),
(0, 4, 'yii\\db\\Command::execute', 1613797521.4869, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=4, `status`=0 WHERE `id_menu`=9'),
(0, 4, 'yii\\db\\Command::execute', 1613797545.0354, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=5, `status`=0 WHERE `id_menu`=10'),
(0, 4, 'yii\\db\\Command::execute', 1613797577.396, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=6, `status`=0 WHERE `id_menu`=11'),
(0, 0, 'Login', 1613802098.1286, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613802098.1291, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613802098.1286, \'admin\', \'Login\')'),
(0, 0, 'Login', 1613969792.6763, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1613969792.6768, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1613969792.6763, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1613986407.5694, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=13'),
(0, 4, 'yii\\db\\Command::execute', 1613986407.6751, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (21, 13, \'22-Feb-2021 16:30\', \'23-Feb-2021 16:30\', 500000, 0, \'22-Feb-2021 hh:ii\', 1)'),
(0, 0, 'Login', 1614050729.2886, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614050729.2891, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614050729.2886, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1614050846.6173, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Cici\', \'Sukabumi\', \'2\', 2147483647, 2147483647, \'1614050846_cici.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1614050954.4329, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Honda HRV\', \' N 0000 KL\', \'Silver\', 2017, \'1\', \'1614050954_hrv.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1614051388.144, 'admin', 'DELETE FROM `customer` WHERE `id_customer`=17'),
(0, 4, 'yii\\db\\Command::execute', 1614053959.0462, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1614053959.1056, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=1'),
(0, 4, 'yii\\db\\Command::execute', 1614054195.6682, 'admin', 'DELETE FROM `customer` WHERE `id_customer`=22'),
(0, 4, 'yii\\db\\Command::execute', 1614054298.1138, 'admin', 'DELETE FROM `mobil` WHERE `id_mobil`=20'),
(0, 4, 'yii\\db\\Command::execute', 1614061621.3661, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=13'),
(0, 4, 'yii\\db\\Command::execute', 1614061621.4329, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=7'),
(0, 4, 'yii\\db\\Command::execute', 1614061738.7033, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=19'),
(0, 4, 'yii\\db\\Command::execute', 1614061738.755, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (21, 19, \'23-Feb-2021 13:25\', \'24-Feb-2021 13:25\', 500000, 0, \'23-Feb-2021 hh:ii\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1614061993.7072, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Honda HRV\', \' N 0000 KL\', \'Silver\', 2017, \'1\', \'1614061993_hrv.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1614062463.9363, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=19'),
(0, 4, 'yii\\db\\Command::execute', 1614062464.1005, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=8'),
(0, 4, 'yii\\db\\Command::execute', 1614062527.4304, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=21'),
(0, 4, 'yii\\db\\Command::execute', 1614062527.498, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (21, 21, \'23-Feb-2021 13:40\', \'24-Feb-2021 13:40\', 500000, 0, \'23-Feb-2021 hh:ii\', 1)'),
(0, 0, 'Login', 1614136669.7936, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614136669.7942, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614136669.7936, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614148592.9913, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614148592.9918, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614148592.9913, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1614149150.8932, 'admin', 'UPDATE `mobil` SET `tahun`=2017, `status`=\'1\', `foto`=\'1614149150_hrv.jpg\' WHERE `id_mobil`=21'),
(0, 4, 'yii\\db\\Command::execute', 1614149557.7487, 'admin', 'INSERT INTO `login` (`username`, `password`, `nama`, `foto`) VALUES (\'agascha\', \'123\', \'agascha\', \'avatar5.png\')'),
(0, 4, 'yii\\db\\Command::execute', 1614149606.8529, 'admin', 'DELETE FROM `user_role` WHERE `id_login`=\'18\''),
(0, 4, 'yii\\db\\Command::execute', 1614149606.922, 'admin', 'INSERT INTO `user_role` (`id_system_role`, `id_login`) VALUES (4, 18)'),
(0, 0, 'Login', 1614149664.3416, 'reza', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614149664.3421, 'reza', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614149664.3416, \'reza\', \'Login\')'),
(0, 0, 'Login', 1614149801.9979, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614149801.9984, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614149801.9979, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1614149866.8005, 'admin', 'UPDATE `login` SET `password`=\'25d55ad283aa400af464c76d713c07ad\', `foto`=\'1614149866_agascha.jpg\' WHERE `id_login`=18'),
(0, 0, 'Login', 1614149911.9055, 'agascha', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614149911.9062, 'agascha', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614149911.9055, \'agascha\', \'Login\')'),
(0, 0, 'Login', 1614149975.4589, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614149975.4598, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614149975.4589, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1614154284.7876, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=21'),
(0, 4, 'yii\\db\\Command::execute', 1614154284.8468, 'admin', 'INSERT INTO `transaksi` (`id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `denda`, `tanggal`, `status`) VALUES (21, 21, \'24-Feb-2021 15:10\', \'25-Feb-2021 15:10\', 500000, 0, \'24-Feb-2021 hh:ii\', 1)'),
(0, 4, 'yii\\db\\Command::execute', 1614154603.1583, 'admin', 'UPDATE `transaksi` SET `id_customer`=21, `id_mobil`=21, `tgl_pinjam`=\'30-Dec-1900 00:00\', `tgl_kembali`=\'01-Dec-1900 00:00\', `harga`=500000, `denda`=0, `tanggal`=\'1900-11-30\', `status`=1 WHERE `id_transaksi`=7');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(0, 4, 'yii\\db\\Command::execute', 1614154687.4824, 'admin', 'UPDATE `transaksi` SET `id_customer`=20, `id_mobil`=18, `harga`=400000, `denda`=0, `status`=1 WHERE `id_transaksi`=6'),
(0, 4, 'yii\\db\\Command::execute', 1614155808.7764, 'admin', 'UPDATE `transaksi` SET `id_customer`=21, `id_mobil`=21, `tgl_pinjam`=\'2021-11-30 12:0:0\', `tgl_kembali`=\'2021-11-30 12:0:0\', `harga`=500000, `denda`=0, `status`=1 WHERE `id_transaksi`=7'),
(0, 0, 'Login', 1614221538.4434, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614221538.4439, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614221538.4434, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1614221837.5173, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_telp`, `no_ktp`, `foto`) VALUES (\'Cici\', \'Surabaya \', \'2\', 2147483647, 2147483647, \'1614221837_cici.jpg\')'),
(0, 0, 'Login', 1614310599.9282, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614310599.9286, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614310599.9282, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614400095.5768, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614400095.5773, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614400095.5768, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614569233.0525, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614569233.0529, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614569233.0525, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614667573.7991, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614667573.7995, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614667573.7991, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614762677.0258, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614762677.0266, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614762677.0258, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614825277.7978, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614825277.7983, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614825277.7978, \'admin\', \'Login\')'),
(0, 0, 'Login', 1614926026.4599, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1614926026.4603, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1614926026.4599, \'admin\', \'Login\')'),
(0, 0, 'Login', 1615001546.774, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615001546.7745, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615001546.774, \'admin\', \'Login\')'),
(0, 0, 'Login', 1615044065.1764, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615044065.1769, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615044065.1764, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1615044981.9835, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615044982.2805, 'admin', 'INSERT INTO `transaksi` (`denda`, `id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `tanggal`, `status`, `total`) VALUES (200000, 22, 12, \'2021-03-06 10:35:11\', \'2021-03-07 10:35:11\', 500000, \'2021-03-06 \', 1, 300000)'),
(0, 4, 'yii\\db\\Command::execute', 1615045038.5797, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615045038.6739, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=8'),
(0, 4, 'yii\\db\\Command::execute', 1615045106.5573, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615045106.6409, 'admin', 'INSERT INTO `transaksi` (`denda`, `id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `harga`, `tanggal`, `status`, `total`) VALUES (100000, 22, 12, \'2021-03-06 10:35:35\', \'2021-03-08 10:35:35\', 500000, \'2021-03-06 \', 1, 600000)'),
(0, 4, 'yii\\db\\Command::execute', 1615045727.6592, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=14'),
(0, 4, 'yii\\db\\Command::execute', 1615045727.75, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=4'),
(0, 4, 'yii\\db\\Command::execute', 1615045746.3007, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=16'),
(0, 4, 'yii\\db\\Command::execute', 1615045746.4553, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=5'),
(0, 4, 'yii\\db\\Command::execute', 1615045771.3158, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=18'),
(0, 4, 'yii\\db\\Command::execute', 1615045771.3705, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=6'),
(0, 4, 'yii\\db\\Command::execute', 1615045788.0319, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=21'),
(0, 4, 'yii\\db\\Command::execute', 1615045788.1183, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=7'),
(0, 4, 'yii\\db\\Command::execute', 1615045905.5715, 'admin', 'DELETE FROM `mobil` WHERE `id_mobil`=17'),
(0, 4, 'yii\\db\\Command::execute', 1615047016.2439, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615047016.2933, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=9'),
(0, 4, 'yii\\db\\Command::execute', 1615047190.8782, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615047190.9575, 'admin', 'INSERT INTO `transaksi` (`denda`, `id_customer`, `id_mobil`, `tgl_pinjam`, `jam_pinjam`, `tgl_kembali`, `jam_kembali`, `harga`, `tanggal`, `status`, `total`) VALUES (200000, 21, 12, \'2021-03-06 \', NULL, \'2021-03-07 \', NULL, 1500000, \'2021-03-06 \', 1, 1700000)'),
(0, 4, 'yii\\db\\Command::execute', 1615047588.9234, 'admin', 'UPDATE `mobil` SET `status`=\'1\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615047589.0273, 'admin', 'DELETE FROM `transaksi` WHERE `id_transaksi`=10'),
(0, 4, 'yii\\db\\Command::execute', 1615053845.4423, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=12'),
(0, 4, 'yii\\db\\Command::execute', 1615053845.8298, 'admin', 'INSERT INTO `transaksi` (`denda`, `id_customer`, `id_mobil`, `tgl_pinjam`, `jam_pinjam`, `tgl_kembali`, `jam_kembali`, `harga`, `tanggal`, `status`, `total`) VALUES (100000, 16, 12, \'2021-03-07 \', \'02:00 PM\', \'2021-03-08 \', \'02:00 PM\', 500000, \'2021-03-07 \', 1, 600000)'),
(0, 0, 'Login', 1615101903.0226, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615101903.0231, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615101903.0226, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1615105789.989, 'admin', 'UPDATE `customer` SET `alamat`=\'Cirebon, sumber \', `no_telp`=2147483647, `no_ktp`=2147483647, `foto`=\'1614149150_hrv.jpg\' WHERE `id_customer`=21'),
(0, 4, 'yii\\db\\Command::execute', 1615106863.3528, 'admin', 'UPDATE `customer` SET `alamat`=\'Kabupaten Cirebon, sumber \', `no_telp`=2147483647, `no_ktp`=2147483647 WHERE `id_customer`=21'),
(0, 0, 'Login', 1615173103.7497, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615173103.7502, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615173103.7497, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1615174518.5095, 'admin', 'INSERT INTO `menu_navigasi` (`nama_menu`, `url`, `id_parent`, `icon`, `status`, `no_urut`) VALUES (\'Laporan Transaksi\', \'laporan\', 0, \'book\', 0, 7)'),
(0, 4, 'yii\\db\\Command::execute', 1615174582.508, 'admin', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'14\''),
(0, 4, 'yii\\db\\Command::execute', 1615174582.7052, 'admin', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 14)'),
(0, 4, 'yii\\db\\Command::execute', 1615174582.7791, 'admin', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 14)'),
(0, 4, 'yii\\db\\Command::execute', 1615175931.5888, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=7, `status`=0 WHERE `id_menu`=11'),
(0, 4, 'yii\\db\\Command::execute', 1615175947.9419, 'admin', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'11\''),
(0, 4, 'yii\\db\\Command::execute', 1615175948.8334, 'admin', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 11)'),
(0, 4, 'yii\\db\\Command::execute', 1615175989.5325, 'admin', 'UPDATE `menu_navigasi` SET `id_parent`=0, `no_urut`=6, `status`=0 WHERE `id_menu`=14'),
(0, 4, 'yii\\db\\Command::execute', 1615176000.6983, 'admin', 'DELETE FROM `menu_navigasi_role` WHERE `id_menu`=\'14\''),
(0, 4, 'yii\\db\\Command::execute', 1615176000.9185, 'admin', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (2, 14)'),
(0, 4, 'yii\\db\\Command::execute', 1615176000.9912, 'admin', 'INSERT INTO `menu_navigasi_role` (`id_system_role`, `id_menu`) VALUES (1, 14)'),
(0, 0, 'Login', 1615270337.9193, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615270337.9199, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615270337.9193, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1615273882.9067, 'admin', 'INSERT INTO `customer` (`nama`, `alamat`, `jenis_kelamin`, `no_ktp`, `no_telp`, `foto`) VALUES (\'Rezha Agascha \', \'Majalengka, Jawa Barat \', \'1\', 2147483647, 2147483647, \'1615273882_koala.jpg\')'),
(0, 4, 'yii\\db\\Command::execute', 1615274425.0281, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=13'),
(0, 4, 'yii\\db\\Command::execute', 1615274425.2446, 'admin', 'INSERT INTO `transaksi` (`denda`, `id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `jam_pinjam`, `jam_kembali`, `harga`, `tanggal`, `status`, `total`) VALUES (250000, 23, 13, \'2021-03-09 \', \'2021-03-10 \', \'02:15 PM\', \'02:15 PM\', 1500000, \'2021-03-09 \', 1, 1750000)'),
(0, 0, 'Login', 1615346129.4263, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615346129.4268, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615346129.4263, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1615350498.389, 'admin', 'UPDATE `mobil` SET `status`=\'2\' WHERE `id_mobil`=14'),
(0, 4, 'yii\\db\\Command::execute', 1615350498.775, 'admin', 'INSERT INTO `transaksi` (`denda`, `id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `jam_pinjam`, `jam_kembali`, `harga`, `tanggal`, `status`, `total`) VALUES (1500000, 21, 14, \'2021-03-10 \', \'2021-03-11 \', \'11:15 AM\', \'11:15 AM\', 5000000, \'2021-03-10 \', 1, 6500000)'),
(0, 4, 'yii\\db\\Command::execute', 1615359425.1114, 'admin', 'UPDATE `customer` SET `no_telp`=2147483647, `no_ktp`=2147483647, `foto`=\'1615359425_anzas.jpg\' WHERE `id_customer`=21'),
(0, 4, 'yii\\db\\Command::execute', 1615359571.5923, 'admin', 'INSERT INTO `mobil` (`merk`, `no_plat`, `warna`, `tahun`, `status`, `foto`) VALUES (\'Nissan Juke \', \'H 8989 HI\', \'abu-abu\', 2019, \'1\', \'1615359571_juke.jpg\')'),
(0, 0, 'Login', 1615428508.9595, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615428508.9599, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615428508.9595, \'admin\', \'Login\')'),
(0, 4, 'yii\\db\\Command::execute', 1615430189.1923, 'admin', 'UPDATE `mobil` SET `jenis`=\'2\', `tahun`=2019, `foto`=\'1615430189_juke.jpg\' WHERE `id_mobil`=22'),
(0, 4, 'yii\\db\\Command::execute', 1615430317.6129, 'admin', 'UPDATE `mobil` SET `no_plat`=\'H 8989 KL\', `tahun`=2019, `foto`=\'1615430317_juke.jpg\' WHERE `id_mobil`=22'),
(0, 4, 'yii\\db\\Command::execute', 1615430515.9573, 'admin', 'UPDATE `mobil` SET `tahun`=2019, `foto`=\'1615430515_juke.jpg\' WHERE `id_mobil`=22'),
(0, 0, 'Login', 1615437317.1181, 'admin', 'Login'),
(0, 4, 'yii\\db\\Command::execute', 1615437317.1186, 'admin', 'INSERT INTO `log` (`level`, `category`, `log_time`, `prefix`, `message`) VALUES (0, \'Login\', 1615437317.1181, \'admin\', \'Login\')');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`, `nama`, `foto`) VALUES
(16, 'reza', '202cb962ac59075b964b07152d234b70', 'reza', '1610596861_download.jpg'),
(17, 'admin', '202cb962ac59075b964b07152d234b70', 'admin', '1610767699_admin.jpg'),
(18, 'agascha', '25d55ad283aa400af464c76d713c07ad', 'agascha', '1614149866_agascha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi`
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
-- Dumping data for table `menu_navigasi`
--

INSERT INTO `menu_navigasi` (`id_menu`, `nama_menu`, `url`, `id_parent`, `no_urut`, `icon`, `status`) VALUES
(1, 'MASTER DATA', '#', 0, 1, 'database', 0),
(2, 'Menu Navigasi', 'menu-navigasi', 1, 1, 'bars', 0),
(3, 'Data Login', 'login', 1, 2, 'bars', 0),
(4, 'Data Hak Akses', 'systemrole', 1, 3, 'bars', 1),
(8, 'Customer', 'customer', 0, 3, 'fas fa-users', 0),
(9, 'Mobil', 'mobil', 0, 4, 'fas fa-truck-moving', 0),
(10, 'Transaksi', 'transaksi', 0, 5, 'fas fa-hand-holding-usd', 0),
(11, 'Log', 'log', 0, 7, 'bars', 0),
(13, 'Dashboard', 'site', 0, 2, 'box', 0),
(14, 'Laporan Transaksi', 'laporan', 0, 6, 'book', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_navigasi_role`
--

CREATE TABLE `menu_navigasi_role` (
  `id_menu_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_navigasi_role`
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
(23, 12, 1),
(25, 9, 2),
(26, 9, 1),
(27, 10, 2),
(28, 10, 1),
(29, 13, 1),
(32, 11, 1),
(33, 14, 2),
(34, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(50) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `no_plat` varchar(255) NOT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `warna` varchar(255) NOT NULL,
  `tahun` int(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merk`, `no_plat`, `jenis`, `warna`, `tahun`, `status`, `foto`) VALUES
(12, 'Honda Jazz', 'E 7374 WO', '2', 'Merah', 2019, '2', '1611816307_honda.jpg'),
(13, 'Nissan ', 'G 7776 GW', '2', 'Oren ', 2019, '2', '1611978083_nissan.jpg'),
(14, 'Mitsubishi', 'G 7776 GW', '2', 'Biru', 2020, '2', '1611978468_e.jpg'),
(15, 'Toyota Yaris', 'G 9898 TR', '1', 'kuning', 2020, '1', '1611978834_images.jpg'),
(16, 'Toyota Avanza', 'E 4545 RW', '2', 'Hitam', 2017, '1', '1611979035_Avanza.jpg'),
(18, 'Toyota Fortuner', 'Y 7689 BT', '1', 'Coklat', 2019, '1', '1612145787_fortuner.jpg'),
(19, 'Suzuki Karimun Estilo', 'B 9876 BY', '2', 'Ungu', 2017, '1', '1613445156_suzuki.jpg'),
(21, 'Honda HRV', ' N 0000 KL', '1', 'Silver', 2017, '1', '1614149150_hrv.jpg'),
(22, 'Nissan Juke ', 'H 8989 KL', '2', 'abu-abu', 2019, '1', '1615430515_juke.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `konten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_role`
--

CREATE TABLE `system_role` (
  `id_system_role` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_role`
--

INSERT INTO `system_role` (`id_system_role`, `nama_role`) VALUES
(1, 'SYSTEM ADMINISTRATOR'),
(4, 'customer'),
(2, 'PROGRAMER');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(50) NOT NULL,
  `id_customer` int(50) NOT NULL,
  `id_mobil` int(50) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `jam_pinjam` time DEFAULT NULL,
  `jam_kembali` time DEFAULT NULL,
  `harga` int(50) NOT NULL,
  `denda` int(50) NOT NULL,
  `tanggal` date NOT NULL,
  `status` int(2) NOT NULL,
  `total` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`, `id_mobil`, `tgl_pinjam`, `tgl_kembali`, `jam_pinjam`, `jam_kembali`, `harga`, `denda`, `tanggal`, `status`, `total`) VALUES
(11, 16, 12, '2021-03-07', '2021-03-08', '02:00:00', '02:00:00', 500000, 100000, '2021-03-07', 1, 600000),
(12, 23, 13, '2021-03-09', '2021-03-10', '02:15:00', '02:15:00', 1500000, 250000, '2021-03-09', 1, 1750000),
(13, 21, 14, '2021-03-10', '2021-03-11', '11:15:00', '11:15:00', 5000000, 1500000, '2021-03-10', 1, 6500000);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(11) NOT NULL,
  `id_system_role` int(11) NOT NULL,
  `id_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
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
(49, 4, 18),
(40, 2, 19),
(47, 2, 17),
(46, 1, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  ADD PRIMARY KEY (`id_menu_role`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id_system_role`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`),
  ADD KEY `id_system_role` (`id_system_role`),
  ADD KEY `id_login` (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu_navigasi`
--
ALTER TABLE `menu_navigasi`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu_navigasi_role`
--
ALTER TABLE `menu_navigasi_role`
  MODIFY `id_menu_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id_system_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
