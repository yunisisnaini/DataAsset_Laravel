-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 08:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_asset_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangunan`
--

CREATE TABLE `bangunan` (
  `id` int(10) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `kode_barang` varchar(30) DEFAULT NULL,
  `register` varchar(10) DEFAULT NULL,
  `tingkat_bangunan` varchar(20) DEFAULT NULL,
  `beton_bangunan` varchar(20) DEFAULT NULL,
  `luas_lantai` bigint(10) DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_esperanto_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `luas_tanah` varchar(10) DEFAULT NULL,
  `kode_tanah` varchar(10) DEFAULT NULL,
  `asal_usul` varchar(10) DEFAULT NULL,
  `status_tanah` varchar(25) DEFAULT NULL,
  `harga` decimal(30,0) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `file_pdf` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bangunan`
--

INSERT INTO `bangunan` (`id`, `jenis_barang`, `kode_barang`, `register`, `tingkat_bangunan`, `beton_bangunan`, `luas_lantai`, `alamat`, `tanggal`, `nomor`, `luas_tanah`, `kode_tanah`, `asal_usul`, `status_tanah`, `harga`, `keterangan`, `file_pdf`, `created_at`, `updated_at`) VALUES
(1, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', 135, 'Kesongo Tuntang', NULL, '', '', '', 'APBD', 'Kantor BUN', '264645000', 'Kantor BPP Kesongo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', 243, '', NULL, '', '', '', 'APBD', '', '192673750', 'Kantor TU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', 9, 'Banding Bringin', NULL, '', '', '', 'APBD', '', '3037500', 'Kantor Kecil', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', 36, 'Sidomulyo Ungaran', NULL, '', '', '', 'APBD', '', '92803500', 'Kantor BUN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', 96, 'Banding Bringin', NULL, '', '', '', 'APBD', '', '41472000', 'Kantor BPP ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', 138, 'Sidomulyo Ungaran Timur', NULL, '', '', '', 'APBD', '', '51750000', 'Kantor Dinas Pertanian', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '12003200', 'Pos Inseminasi Buatan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', 28, 'Gogodalem', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '16447200', 'Pos IB Gogodalem', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', 42, 'Ds. Kalimaling, Kalimaling', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '16447200', 'Pos IB Kalimaling', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', 98, 'Ds. Getasan Kec. Getasan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '38376800', 'Pos IB Getasan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', 63, 'Klepu Kel. Karangjati Kec. Bergas', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '24670800', 'Pos IB Klepu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', 42, 'Ds. Kaliwungu Kec. Kaliwungu', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '16447200', 'Pos IB Kaliwungu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', 75, '', NULL, '', '', '', 'APBD ', '', '35244000', 'Kantor HUT', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', 140, 'Ds. Siwarak Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '56364000', 'Kantor BBi Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, 'Pakopen', '2023-06-02', '', '', '', 'APBD II', 'Hak Pakai', '447412453', 'Kantor BPP Pakopen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '476404000', 'Rehab Gedung KBU Tegalwaton', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, 'Mulyorejo', '2022-04-26', '', '', '', 'APBD ', '', '0', 'Gedung KBU Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, 'Kesongo', '2020-08-12', '', '', '', 'APBD II', 'Hak Pakai', '167449700', 'Gedung KBU Kesongo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, 'Tegalwaton', NULL, '', '', '', 'APBD ', '', '83477000', 'Gedung Kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Rehab Kantor KBU Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2022-09-05', '', '', '', 'APBD ', '', '0', 'Rumah Lindung dan Kantor KBU Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, 'Kalongan Kec. Ungaran Timur', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '48500000', 'Gedung Kantor UPTD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, 'Kalongan Kec. Ungaran Timur', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '107144000', 'Pagar, Talu dan Jaling', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', NULL, 'Kalongan Kec. Ungaran Timur', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '246209000', 'Gedung Pengelola', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '3200000', 'Kontruksi Tralis Jendela UPTD Tegalwaton', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '12024000', 'Tralis', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '37967700', 'Kantor, Rumah Lindung & Lantai Jemur UPTD Kesongo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '48700000', 'Gedung Kantor Dan Pengaspalan Kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0008', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Pagar Keliling , Sumur Resapan UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00010', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '97690000', 'Gedung Kantor BPP Kecamatan Susukan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00011', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '98700000', 'Kantor BPP Kec Ungaran Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00012', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '0', 'Kantor BPP Kecamatan Tuntang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00013', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '98994000', 'Gedung Kantor BPP', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00014', 'Tidak', 'Tidak', NULL, 'Bancak', '2022-07-05', '', '', '', 'APBD ', '', '127110000', 'Aula Kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00015', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Pagar Keliling , Sumur Resapan UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00016', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '160000000', 'Gedung Penyuluhan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00017', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Gedung Kantor UPTD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00018', 'Tidak', 'Tidak', 50, '', NULL, '', '', '', 'APBD ', '', '180131000', 'Rehab Kantor dan Rumah Lindung UPTD Pakopen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00019', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '209494000', 'Gedung Penyuluhan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00020', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '331480800', 'Bangunan Kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00021', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '276695507', 'Gedung Magang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00022', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '44884792', 'Gedung Pos IB Gedung Magang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00023', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '29250000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '14779000', 'UPTD Tegalwaton', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '47180000', 'UPTD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '74525000', 'UPTD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '107416363', 'Gedung BPP Kec Jambu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '98979000', 'Gedung BPP Kec Tengaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '113317000', 'Gedung BPP Kec Kaliwungu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0008', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '113626000', 'Gedung BPP Kec Bawen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0009', 'Tidak', 'Tidak', 81, '', NULL, '', '', '', 'APBD ', '', '113438000', 'Gedung BPP Kec Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00011', 'Tidak', 'Tidak', NULL, 'Kalongan UngaranTimur', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '39250000', 'Pagar Keliling', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00012', 'Tidak', 'Tidak', NULL, '', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '94650000', 'Pagar Keliling', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00013', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Kamar Susu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00014', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Rehab Tempat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '24123103', 'Rehab BPP Bergas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '17425000', 'Rehab BPP Ungaran Barat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '58869600', 'Gedung BPP Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '137362400', 'Gedung BPP Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '166239000', 'Gedung BPP Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, '', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '43250000', 'Rumah Timbangan dan Informasi Harga', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '13903000', 'Rehab BPP Kec Tengaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '54841000', 'Rehab BPP Kabupaten', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Rehab BPP Kec Tuntang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0008', 'Tidak', 'Tidak', NULL, 'Jl. Letjen Suprapto 9b Ungaran', '2022-04-26', '', '', '', 'APBD ', '', '184303000', 'Kantor BPP Kec Banyubiru', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00010', 'Tidak', 'Tidak', NULL, 'Kaliwungu', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '98975000', 'Gedung BPP Kaliwungu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00012', 'Tidak', 'Tidak', 22, 'Jl. Letjen Suprapto 9b Ungaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '13000000', 'Kanopi (Tempat Parkir)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00013', 'Tidak', 'Tidak', NULL, 'Jl. Letjen Suprapto 9b Ungaran', '2022-05-24', '', '', '', 'APBD II', '', '196525679', 'Kantor BPP Kec Susukan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Rehab UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, 'Ds. Mulyorejo Kelurahan Mulyorejo Tengaran', '2022-09-05', '', '', '', 'APBD ', '', '72921130', 'Ruang Café UPTD Kesongo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '95315453', 'Rehab UPTD Pakopen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '216198906', 'Gedung BPP Kec Bancak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0008', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '216661169', 'Gedung BPP Kec Pabelan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Paving Blok UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Kamar Mandi', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '345342000', 'Kantor BPP Kec Sumowono', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '197150000', 'Gedung Kantor-Pondasi awal calon Gd. Kantor Baru', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, 'Patemon Tengaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '53938380', 'Pos IB di Desa Patemon', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, '', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '172272250', 'Pos Penyuluhan-Kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', NULL, 'Sumogawe Getasan', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0008', 'Tidak', 'Tidak', NULL, 'Dadapayam Suruh', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0009', 'Tidak', 'Tidak', NULL, 'Plumutan Bancak', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00010', 'Tidak', 'Tidak', NULL, 'Rejosari', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00011', 'Tidak', 'Tidak', NULL, 'Pabelan', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00012', 'Tidak', 'Tidak', NULL, 'Tuntang', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00013', 'Tidak', 'Tidak', NULL, 'Terban Pabelan', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00014', 'Tidak', 'Tidak', NULL, 'Suruh', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00015', 'Tidak', 'Tidak', NULL, 'Sugihan Tengaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '57505000', 'Pos IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '30227000', 'BPP Ungaran Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '68686000', 'UPTD Kesongo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '76602033', 'BPP Sumowono', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '164168393', 'BPP Pringapus', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '205300574', 'BPP Getasan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', 190, 'Tambakboyo Ambarawa', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '222450000', 'Gudang Cadangan Pangan Pemerintah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', 'Bangunan Gedung UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Irigasi Tanah UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, 'Jl. letjen Suprapto 9b Ungaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '1459432000', 'Gedung kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, 'Tambakboyo Ambarawa', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '153858000', 'Lantai Jemur & Pagar Gudang Cadangan Pangan Tambak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', 42, 'Mulyorejo', '2018-07-23', '', '', '', 'APBD ', '', '33015000', 'MCK Bumi Perkemahan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, 'Jl. Letjen Suprapto 9b Ungaran', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '1421397000', 'Aula Kantor Disnakan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, 'Bandarjo Ungaran Barat', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '197366594', 'Gd. Kantor Baru', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, 'Bandarjo Ungaran Barat', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '72788406', 'Pembangunan TPNU RPH-U Ungaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, 'Bandarjo Ungaran Barat', '2018-07-24', '', '', '', 'APBD II', 'Hak Pakai', '291090000', 'Gedung RPUR Ungaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD II', '', '169550000', 'POS IB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD II', '', '104654000', 'RPU Ungaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD II', '', '76072000', 'Puskesmas Getasan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD II', '', '35060000', 'Puskesmas Bancak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD II', '', '133486000', 'Tempat Pemotongan, Incenerator dan Fasum', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD II', '', '23383000', 'Tralis dan Ruang Tunggu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2019-05-21', '', '', '', 'APBD II', '', '205353000', 'Pembangunan IPAL RPU', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2019-05-21', '', '', '', 'APBD II', '', '70550000', 'Gedung RPH Karangduren', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2019-05-21', '', '', '', 'APBD II', '', '24000000', 'Gedung RPH Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2019-05-21', '', '', '', 'APBD II', '', '174703000', 'Halaman pasar hewan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, '', '2019-05-21', '', '', '', 'APBD II', '', '307700000', 'Atap los pasar hewan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, 'UPTD Terminal Agribisnis Jetis', '2019-07-16', '', '', '', 'APBD II', 'Hak Pakai', '58234000', 'Tempat Pembuangan Sampah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0001', 'Tidak', 'Tidak', NULL, 'Kantor BPP Ambarawa', '2022-05-13', '', '', '', 'APBD II', '', '88834333', 'Kantor BPP Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', NULL, 'Kantor BPP Sumowono', '2022-05-13', '', '', '', 'APBD II', '', '85645949', 'Kantor BPP Sumowono', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', NULL, 'Kantor BPP Bandungan', '2022-05-13', '', '', '', 'APBD II', '', '75532527', 'Kantor BPP Bandungan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', NULL, 'Kantor BPP Jambu', '2022-05-13', '', '', '', 'APBD II', '', '87206083', 'Kantor BPP Jambu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', NULL, 'Kantor BPP Bergas', '2022-05-13', '', '', '', 'APBD II', '', '80986797', 'Kantor BPP Bergas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, 'Kantor BPP Tengaran', '2022-05-13', '', '', '', 'APBD II', '', '89222562', 'Kantor BPP Tengaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0007', 'Tidak', 'Tidak', NULL, 'Kantor BPP Bancak', '2022-05-13', '', '', '', 'APBD II', '', '89072379', 'Kantor BPP Bancak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0008', 'Tidak', 'Tidak', NULL, 'Kantor BPP Susukan', '2022-05-13', '', '', '', 'APBD II', '', '89307240', 'Kantor BPP Susukan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0009', 'Tidak', 'Tidak', NULL, 'Kantor BPP Kaliwungu', '2022-05-13', '', '', '', 'APBD II', '', '89044780', 'Kantor BPP Kaliwungu', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00010', 'Tidak', 'Tidak', NULL, 'Kantor BPP Bringin', '2022-05-13', '', '', '', 'APBD II', '', '89016543', 'Kantor BPP Bringin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00011', 'Tidak', 'Tidak', NULL, 'Kantor BPP Pabelan', '2022-05-13', '', '', '', 'APBD II', '', '89317008', 'Kantor BPP Pabelan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00012', 'Tidak', 'Tidak', NULL, 'Kantor BPP Ungaran Timur', '2022-05-13', '', '', '', 'APBD II', '', '76527197', 'Kantor BPP Ungaran Timur', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00013', 'Tidak', 'Tidak', NULL, 'Kantor BPP Bawen', '2022-05-13', '', '', '', 'APBD II', '', '72688277', 'Kantor BPP Bawen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00014', 'Tidak', 'Tidak', NULL, 'Kantor BPP Getasan', '2022-05-13', '', '', '', 'APBD II', '', '90324235', 'Kantor BPP Getasan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00015', 'Tidak', 'Tidak', NULL, 'Kantor BPP Pringapus', '2022-05-13', '', '', '', 'APBD II', '', '94794117', 'Kantor BPP Pringapus', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '00016', 'Tidak', 'Tidak', NULL, 'Kantor BPP Tuntang', '2022-05-13', '', '', '', 'APBD II', '', '72745031', 'Kantor BPP Tuntang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0002', 'Tidak', 'Tidak', 100, 'Dusun Tarukan desa candi kec bandungan', '2023-02-02', '', '100', '', 'Hibah', 'Hak Pakai', '86570000', 'Hibah bangunan gedung kantor permanen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0003', 'Tidak', 'Tidak', 100, 'Jln. mgr sugiyopranoto lingk gurung ngampin kec ambarawa', '2023-02-02', '', '100', '', 'Hibah', 'Hak Pakai', '131167000', 'Hibah bangunan gedung kantor permanen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0004', 'Tidak', 'Tidak', 70, 'Desa karangduren kec. tengaran kab smg', '2023-02-02', '', '70', '', 'Hibah', 'Hak Pakai', '91817000', 'Hibah bangunan gedung kantor permanen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0005', 'Tidak', 'Tidak', 70, 'Desa sumowono kec sumowono', '2023-02-02', '', '70', '', 'Hibah', 'Hak Pakai', '102372000', 'Hibah bangunan gedung kantor permanen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Bangunan Gedung Kantor Permanen', '1.3.3.01.01.01.001.', '0006', 'Tidak', 'Tidak', NULL, 'Pertanian', '2023-05-02', '', '', '', 'APBD II', 'Hak Pakai', '955436000', 'Bangunan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Bangunan Gedung Kantor Lainnya', '1.3.3.01.01.01.005.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa', '2019-10-10', '', '', '', 'APBD II', 'Hak Pakai', '218987000', 'Penataan Halaman Pasar Hewan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Bangunan Gedung Kantor Lainnya', '1.3.3.01.01.01.005.', '0001', 'Tidak', 'Tidak', NULL, 'UPTD BBI Siwarak', '2022-11-18', '', '', '', 'APBD II', 'Hak Pakai', '280508493', 'UPTD BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', 36, 'Kesongo Tuntang', NULL, '', '', '', 'APBD ', '', '9450000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', 60, 'Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '7832000', 'Rumah Peneduh', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0002', 'Tidak', 'Tidak', 36, 'Nyatnyono Ungaran Barat', NULL, '', '', '', 'APBD II', 'Hak Pakai', '14097600', 'Rumah Ruang Pelet', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0003', 'Tidak', 'Tidak', 54, '', NULL, '', '', '', 'APBD II', 'Hak Pakai', '21146400', 'Rumah Heacery Indoor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', 24, 'Pakopen Bawen', NULL, '', '', '', 'APBD ', '', '3150000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0002', 'Tidak', 'Tidak', 12, 'Pakopen Bawen', NULL, '', '', '', 'APBD ', '', '3150000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0003', 'Tidak', 'Tidak', 12, 'Pakopen Bawen', NULL, '', '', '', 'APBD ', '', '3450000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0004', 'Tidak', 'Tidak', 36, 'Kesongo , Tuntang', NULL, '', '', '', 'APBD ', '', '15120000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0005', 'Tidak', 'Tidak', 36, 'Sidomulyo Ungaran Timur', NULL, '', '', '', 'APBD ', '', '17280000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0006', 'Tidak', 'Tidak', 105, 'Sidomulyo Ungaran Timur', NULL, '', '', '', 'APBD ', '', '50400000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0007', 'Tidak', 'Tidak', 140, 'Kesongo , Tuntang', NULL, '', '', '', 'APBD ', '', '65625000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0008', 'Tidak', 'Tidak', 198, 'Sidomulyo Ungaran Timur', NULL, '', '', '', 'APBD ', '', '116424000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', 54, '', '2018-07-26', '', '', '', 'APBD II', 'Hak Pakai', '211196733', 'Rumah Heacery Indoor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '133124985', 'Rumah Kultur Pakan Alami', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Tegalwaton', NULL, '', '', '', 'APBD ', '', '47321000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0002', 'Tidak', 'Tidak', NULL, 'Suruh , Reksosari', NULL, '', '', '', 'APBD ', '', '81300000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0003', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', NULL, '', '', '', 'APBD ', '', '0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0004', 'Tidak', 'Tidak', 40, 'Pakopen Bandungan', NULL, '', '', '', 'APBD ', '', '156997000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0005', 'Tidak', 'Tidak', 109, 'Tuntang , Kesongo', NULL, '', '', '', 'APBD ', '', '166338000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Bringin', NULL, '', '', '', 'APBD ', '', '11778000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0002', 'Tidak', 'Tidak', NULL, 'Tengaran', NULL, '', '', '', 'APBD ', '', '11839000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0003', 'Tidak', 'Tidak', NULL, 'Susukan', NULL, '', '', '', 'APBD ', '', '12165000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0004', 'Tidak', 'Tidak', NULL, 'Tegalwaton Tengaran', NULL, '', '', '', 'APBD ', '', '28980000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0005', 'Tidak', 'Tidak', NULL, 'Kesongo, Tuntang', NULL, '', '', '', 'APBD ', '', '56199000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0006', 'Tidak', 'Tidak', NULL, 'Bringin', NULL, '', '', '', 'APBD ', '', '70558000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0007', 'Tidak', 'Tidak', NULL, 'Bancak', NULL, '', '', '', 'APBD ', '', '70593000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0008', 'Tidak', 'Tidak', NULL, 'Tengaran', NULL, '', '', '', 'APBD ', '', '74744000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0009', 'Tidak', 'Tidak', NULL, 'Susukan', NULL, '', '', '', 'APBD ', '', '75026000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00010', 'Tidak', 'Tidak', NULL, 'Wiru', NULL, '', '', '', 'APBD ', '', '76172000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00011', 'Tidak', 'Tidak', NULL, 'Ds Mulyorejo Tengaran', NULL, '', '', '', 'APBD ', '', '0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00012', 'Tidak', 'Tidak', NULL, 'Kesongo Tuntang', NULL, '', '', '', 'APBD ', '', '88591300', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00013', 'Tidak', 'Tidak', NULL, 'Kopeng Getasan', NULL, '', '', '', 'APBD ', '', '94700000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00014', 'Tidak', 'Tidak', NULL, 'Ds Tajuk Getasan', NULL, '', '', '', 'APBD ', '', '94789000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00015', 'Tidak', 'Tidak', NULL, 'Ds Mulyorejo Tengaran', NULL, '', '', '', 'APBD ', '', '0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00016', 'Tidak', 'Tidak', NULL, 'Ds. Mulyorejo Kelurahan Mulyorejo Tengaran', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Bangunan Silase', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00170', 'Tidak', 'Tidak', NULL, 'Ds. Mulyorejo Kelurahan Mulyorejo Tengaran', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Gudang Jerami', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00018', 'Tidak', 'Tidak', NULL, 'Ds. Mulyorejo Kelurahan Mulyorejo Tengaran', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Gedung Pakan Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '00019', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Gudang Pakan, Pos jaga, Rumah Pompa & Genset', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Ketapang', NULL, '', '', '', 'APBD ', '', '15000000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0002', 'Tidak', 'Tidak', 100, '', NULL, '', '', '', 'APBD ', '', '49650000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0003', 'Tidak', 'Tidak', 63, 'Kesongo Tuntang', NULL, '', '', '', 'APBD ', '', '60500000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0004', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '79030000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0005', 'Tidak', 'Tidak', NULL, 'Mulyorejo Barukan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Gudang Pengolahan Kompos', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0006', 'Tidak', 'Tidak', NULL, 'Mulyorejo Barukan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Gudang Pakan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0007', 'Tidak', 'Tidak', NULL, 'Kalongan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '39500000', 'Gudang Pakan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0008', 'Tidak', 'Tidak', NULL, 'Kalongan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '29700000', 'Gudang Pengolahan Kompos', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0009', 'Tidak', 'Tidak', NULL, 'Mulyorejo Barukan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Gudang Alsin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '26597600', 'Gudang Pengolahan Kompos', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '146202000', 'Pembangunan Pagar dan Akses jalan Gudang Cadangan ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', 90, 'Jln mgr sugiyopranoto lingk gurung ngampin kec ambarawa', '2023-02-02', '', '', '', 'Hibah', 'Hak Pakai', '248500000', 'Hibah bangunan gudang tertutup oermanen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'BPP Kec. Bergas, BPP Kec Ambarawa', '2022-09-09', '', '', '', 'APBD II', 'Hak Pakai', '49150000', 'Green House', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0002', 'Tidak', 'Tidak', NULL, 'BPP Kec. Bergas, BPP Kec Ambarawa', '2022-09-09', '', '', '', 'APBD II', 'Hak Pakai', '49150000', 'Green House', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Bangunan Gudang Tertutup Permanen', '1.3.3.01.01.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Mulyorejo Barukan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '0', 'Instalasi Biogas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', 60, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '36234000', 'Laboratorium', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, 'Jl. Letjend Soeprapto Sidomulyo Ungaran timur', NULL, '', '', '', 'APBD II', 'Hak Pakai', '57270708', 'Laboratorium BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, 'Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD ', 'Hak Pakai', '151471000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, 'Bandungan Pakopen', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '81063000', 'Gedung Labkeswan dan Kesmavet', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '98000000', 'Gedung Laboratorium Pakan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2021-10-11', '', '', '', 'APBD II', 'Hak Milik', '164799000', 'Belanja Bangunan Gedung Laboratorium', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, 'Dinas Pertanian, Perikanand dan Pangan Kabupaten Semarang Jl. Letjend Suprapto No. 9b Ungaran', '2022-10-18', '', '', '', 'APBD II', 'Hak Pakai', '422309000', 'Pembangunan Puskeswan Bidang Keswan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0002', 'Tidak', 'Tidak', NULL, 'Dinas Pertanian, Perikanan dan Pangan Kabupaten semarang', '2022-11-14', '', '', '', 'APBD II', 'Hak Pakai', '572490000', 'Pembangunan Tuntang Puskeswan Bidang Keswan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Bangunan Gedung Laboratorium Permanen', '1.3.3.01.01.05.001.', '0003', 'Tidak', 'Tidak', NULL, 'Dinas Pertanian, Perikanan dan Pangan Kabupaten semarang', '2022-09-16', '', '', '', 'APBD II', 'Hak Pakai', '80653000', 'Gedung Laboratorium', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', NULL, 'Suruh', '2018-07-23', '', '83', '', 'APBD II', 'Hak Pakai', '62084320', 'Puskeswan Suruh (Bangunan Lama)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', 72, 'Tegalwaton', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '42292800', 'Poskeswan Tegal Waton', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', NULL, 'Kelurahan Karangjati Kec. Bergas', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '12580800', 'Gedung Puskeswan Karangjati - Kandang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0002', 'Tidak', 'Tidak', NULL, 'Jl. Letjend Soeprapto Sidomulyo Ungaran Timur', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '81780000', 'Gedung Lab Keswan & Kesmavet', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0003', 'Tidak', 'Tidak', NULL, 'Kel Karangjati Bergas Karangjati', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '123430600', 'Gedung Puskeswan Karangjati - Gedung Kantor', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0004', 'Tidak', 'Tidak', NULL, 'Kel Karangjati Bergas Karangjati', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '140118600', 'Gedung Puskeswan Karangjati Rumdin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', NULL, 'Susukan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '272128000', 'Gedung Puskeswan Susukan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', NULL, 'Bancak', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '250682000', 'Puskeswan Bancak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', NULL, 'Ketapang Sudukan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '52260866', 'Puskeswan Bancak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '5427000', 'Tralis Jendela Kantor Labkeswan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0001', 'Tidak', 'Tidak', NULL, 'Bancak', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '173491193', 'Puskeswan Bancak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `bangunan` (`id`, `jenis_barang`, `kode_barang`, `register`, `tingkat_bangunan`, `beton_bangunan`, `luas_lantai`, `alamat`, `tanggal`, `nomor`, `luas_tanah`, `kode_tanah`, `asal_usul`, `status_tanah`, `harga`, `keterangan`, `file_pdf`, `created_at`, `updated_at`) VALUES
(212, 'Bangunan Rumah Sakit Hewan', '1.3.3.01.01.06.011.', '0002', 'Tidak', 'Tidak', NULL, 'Getasan', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '199694807', 'Puskeswan Getasan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Bangunan Kesehatan Lainnya', '1.3.3.01.01.06.019.', '0001', 'Tidak', 'Tidak', NULL, 'Tuntang', '2021-09-13', '', '', '', 'APBD II', 'Hak Pakai', '28674072', 'Mutasi 2020 DR Dinkes Ex Rumdin Paramedis', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Bangunan Gedung Tempat Ibadah Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', NULL, 'Desa Rowoboni Banyubiru', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '32389000', 'MCK dan Peribadatan TPI Rowoboni', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', 105, 'Sidomulyo Ungaran', NULL, '', '', '', 'APBD ', '', '19687500', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', NULL, 'Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD II', 'Hak Pakai', '137538701', 'Gedung Serbaguna BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', NULL, 'Ds Jetis Bandungan', NULL, '', '', '', 'APBD ', '', '16800000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0002', 'Tidak', 'Tidak', 220, 'Kesongo Tuntang', NULL, '', '', '', 'APBD ', '', '216720000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD ', '', '0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', NULL, 'Mulyorejo', NULL, '', '', '', 'APBD ', '', '0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0001', 'Tidak', 'Tidak', 40, 'Dusun Tarukan desa candi kec bandungan', '2023-02-02', '', '40', '', 'Hibah', 'Hak Pakai', '58498000', 'Hibah', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Bangunan Gedung Pertemuan Permanen', '1.3.3.01.01.08.001.', '0002', 'Tidak', 'Tidak', 100, 'Desa sumowono kec sumowono', '2023-02-02', '', '100', '', 'Hibah', 'Hak Pakai', '146246000', 'Hibah bangunan gedung pertemuan permanen', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Bangunan Olah Raga Terbuka Permanen', '1.3.3.01.01.11.004.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD', '', '14461000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Bangunan Olah Raga Terbuka Permanen', '1.3.3.01.01.11.004.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD', '', '53900000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Bangunan Olah Raga Terbuka Permanen', '1.3.3.01.01.11.004.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD  II', '', '39750000', 'Pavingisasi Lingkungan TPI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Jl. Palagan Bawen', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '82814000', 'Los Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Nyatyono Ungaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '47440605', 'Bangsal Penjualan BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', 594, 'Jl. Erlangga, Kel. Langensari Ungaran', '2023-01-18', '', '', '', 'APBD  II', 'Hak Pakai', '680002000', 'Pasar Ikan Higienis (Hibah Provinsi)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Bawen', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '236956000', 'Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, 'Lagensari Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '90940000', 'Pasar Higienis', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '559140200', 'Los Unggas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', 198, 'Desa Keboan Suruh', '2018-07-26', '', '', '', 'APBD  II', 'Hak Pakai', '450833558', 'Hatchery Indoor & Bangsal Penjualan Desa Keboan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD  ', '', '119256000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Langensari Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '46755000', 'Atap Kolam TAMP Ikan Kons PIH Langensari', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, 'Langensari Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '102970000', 'Gedung Pemasaran Ikan PIH Langensari', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa Bawen', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '767240000', 'Los Unggas dan Burung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, 'Los Kaki Lima', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '38000000', 'Los Kaki Lima', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, 'Bawen', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '166700000', 'Penataan Kawasan Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '132416415', 'Pasar Hewan Sumowono', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '90886585', 'Los Pasar Kambing Sumowono', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '53000000', 'Kios Pemasaran Olahan Ikan Kantor Disnakan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '133267299', 'Pagar Keliling Pemasaran Ikan PIH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0005', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '47114701', 'Bangsal Pengolahan Ikan PIH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '98760716', 'Tempat Penampungan Ikan Hias', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '99197284', 'Tempat Pemasaran Depo Pemasaran Ikan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '128530000', 'Gangway Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '170513000', 'Pasar Hewan Bringin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0005', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '246784243', 'Sekat Dinding Los Burung Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0006', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '304385765', 'Los Pakaian Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0007', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '1328775113', 'Los Pasar Kayu Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0008', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '1937763879', 'Kios dan Los Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD  ', '', '145117000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '5061708000', 'Kios dan Los Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2017-03-16', '', '', '', 'APBD  II', 'Hak Pakai', '197890000', 'Kios Bunga dan Pagar', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, 'Dinas Pertanian', '2017-03-16', '', '', '', 'APBD  II', 'Hak Pakai', '149380000', 'Kios Makan dan Tempat Parkir', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0003', 'Tidak', 'Tidak', NULL, 'Dinas Pertanian', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '207200000', 'Pembangunan Atap Los Sapi Pasar', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD  II', 'Hak Pakai', '201900000', 'Lantai Los PKL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD  II', 'Hak Pakai', '191070000', 'Fasum STA Jetis', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD  II', 'Hak Milik', '50280000', 'Fasum Bumi Perkemahan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa', '2021-12-03', '', '', '', 'APBD  II', 'Hak Pakai', '601242000', 'Pengerasan Jalan dan Draenase ( Pasar Hewan )', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Gedung Pertokoan/Koperasi/Pasar Permanen', '1.3.3.01.01.12.001.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa', '2022-11-11', '', '', '', 'APBD  II', 'Hak Pakai', '140577309', 'Pasar Hewan Penataan Pasar Hewan Ambarawa ( Perbai', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Bangunan Gedung Pertokokan Koperasi Pasar Lainnya', '1.3.3.01.01.12.004.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa', '2020-02-12', '', '', '', 'APBD  II', 'Hak Pakai', '211131600', 'Penataan Pasar Hewan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'Bangunan Gedung Pertokokan Koperasi Pasar Lainnya', '1.3.3.01.01.12.004.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa', '2022-11-11', '', '', '', 'APBD  II', 'Hak Pakai', '551792691', 'Penataan Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'Gedung Pos Jaga Permanen', '1.3.3.01.01.13.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '0', 'Pos Jaga dan Paving', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'Gedung Pos Jaga Permanen', '1.3.3.01.01.13.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-25', '', '', '', 'APBD  II', '', '0', 'Pos Satpam', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'Gedung Pos Jaga Permanen', '1.3.3.01.01.13.001.', '0001', 'Tidak', 'Tidak', NULL, 'Desa Rowoboni Banyubiru Rowoboni', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '99498000', 'Pos Pengawasan SDI TPI Rowoboni', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'Gedung Pos Jaga Permanen', '1.3.3.01.01.13.001.', '0001', 'Tidak', 'Tidak', NULL, 'BBI Keboan Suruh Keboan', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '103419062', 'Pos Jaga', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'Gedung Garasi/Pool Permanen', '1.3.3.01.01.14.001.', '0001', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', NULL, '', '', '', 'APBD  ', '', '21186000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'Gedung Garasi/Pool Permanen', '1.3.3.01.01.14.001.', '0001', 'Tidak', 'Tidak', NULL, 'Tegalwaton Tengaran', NULL, '', '', '', 'APBD  ', '', '4950000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'Gedung Garasi/Pool Permanen', '1.3.3.01.01.14.001.', '0002', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD  ', '', '49638000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0001', 'Tidak', 'Tidak', NULL, 'DISTAN', '2020-08-12', '', '', '', 'APBD  II', 'Hak Pakai', '554000335', 'RPH Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '414704400', 'RPH Karangjati', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '2919856142', 'RPH Candirejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '498052914', 'RPH Karang Duren', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '58740000', 'RPH Suruh', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0004', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '188375000', 'Rehab RPU RPH 2003', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '627091197', 'Kandang Isolasi, Rumah Jaga, Jembatan RPH Ungaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '97971912', 'LANJ. II RPH Karang Duren Tengaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '95597000', 'Bang. Pagar, Akses Jalan dan Pemasangan Rel Sistem', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '167245000', 'BANG. Pagar Akses Jalan Tempat Penampungan Unggas ', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Gedung Pemotong Hewan Permanen', '1.3.3.01.01.15.001.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '156821000', 'Pagar RPUR Ungaran', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0001', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0002', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0003', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0004', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0005', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0006', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0007', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0008', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '0009', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '00010', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '00011', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'Bangunan Kolam/Bak Ikan', '1.3.3.01.01.29.002.', '00012', 'Tidak', 'Tidak', NULL, 'BBi siwarak dan KPBI Ngampin', '2020-09-28', '', '', '', 'APBD  II', 'Hak Pakai', '22125461', 'Belanja Modal Konstruksi Jaringan Air', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', 16, 'Kesongo Tuntang', NULL, '', '', '', 'APBD  ', '', '4200000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', 22, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '12922800', 'Kandang Istirahat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', 12, 'Pakopen Bawen', NULL, '', '', '', 'APBD  ', '', '2850000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Portal & Paving UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0003', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2023-03-20', '', '', '', 'APBD  II', 'Hak Pakai', '231920000', 'Kandang Sapi & Kambing Ds. Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '66750000', 'Bangunan Usaha Kandang Kambing Boer', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0003', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '29650000', 'Kandang Beranak dan Umbaran Kambing UPTD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', 180, 'Keboan Suruh', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '468220000', 'Gedung BBI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', 187, 'Keboan Suruh', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '316332000', 'Gd. Pengelola/Kepala + Rumah Jaga dan Pagar (BBI d', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0003', 'Tidak', 'Tidak', 187, 'Keboan Suruh', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '316332000', 'Gd. Pengelola/Kepala + Rumah Jaga dan Pagar (BBI d', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0004', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '39250000', 'Penataan Lingkungan Kandang Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0005', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '34500000', 'Penyempurnaan Kandang Kambing', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0006', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Pedet Sapi Potong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0007', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Pedet Sapi Potong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0008', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Pedet Sapi Potong', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0009', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Induk', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '00010', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Jepit', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '00011', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Pagar Kawat Berduri & BRC', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '00012', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Pembuatan Pintu Pagar', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '49600000', 'Kandang Induk Kambing', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '49600000', 'Kandang Dara', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0003', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Kambing Panggung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0004', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Kambing Panggung', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang Kambing UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'Duren Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '111464430', 'Pagar Kolam Induk', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', NULL, 'Siwarak Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '95429593', 'Gedung Kantor BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'Kebowan', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '264925130', 'Pagar Keliling BBI Kebowan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '98949800', 'Gedung BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '42224000', 'Pagar BBI ke Keboan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0004', 'Tidak', 'Tidak', NULL, 'Siwarak Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '55251000', 'Sarpras Biosekuriti BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0005', 'Tidak', 'Tidak', NULL, 'Siwarak Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '44930617', 'Pagar Keliling BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0006', 'Tidak', 'Tidak', NULL, 'Duren Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '65371453', 'Pagar Keliling BBI Duren', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '269639644', 'Pagar Keliling BBI Ngampin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '82159000', 'Sarpras Biosecurity', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0003', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '174721552', 'Penataan Lingkungan BBI Kebowan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0004', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Saluran Perpipaan Kandang', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Kandang & Mushola UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '134814944', 'Pembangunan Talud Saluran Pembuangan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', '', '175348056', 'Kolam Induk Lele', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Bangunan Kandang Hewan Ternak Lainnya', '1.3.3.01.01.29.004.', '0001', 'Tidak', 'Tidak', NULL, 'BBI Siwarak dan BBI Ngampin', '2019-07-19', '', '', '', 'APBD  II', 'Hak Pakai', '106138960', 'Rehab Bangsal dan Bangunan BBI', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'Bangunan Tempat Parkir', '1.3.3.01.01.32.001.', '0001', 'Tidak', 'Tidak', NULL, 'Pasar Hewan Ambarawa', '2021-05-08', '', '', '', 'APBD  II', 'Hak Milik', '74309000', 'Pasar Hewan Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', 36, 'Kesongo, Tuntang', NULL, '', '', '', 'APBD  ', '', '12780000', 'Rumah Penjaga', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', 40, 'Banding, Bringin', NULL, '', '', '', 'APBD  ', '', '14600000', 'Rumah Dinas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', 84, 'Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '32894400', 'Rumah Dinas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', 48, 'Pakopen Bawen', NULL, '', '', '', 'APBD  ', '', '17280000', 'Rumah Dinas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', 20, 'Nyatnyono Ungaran Barat', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '8052000', 'Rumdin BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Rumah Dinas UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0002', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Rumah Dinas UPTD Mulyorejo', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0003', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Rumah Dinas Karyawan UTPD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0004', 'Tidak', 'Tidak', NULL, 'Kalongan Ungaran Timur', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '0', 'Rumah Dinas Karyawan UTPD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0005', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '19875000', 'Rumah Dinas Karyawan UTPD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0006', 'Tidak', 'Tidak', NULL, 'Barukan Tengaran', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '19875000', 'Rumah Dinas Karyawan UTPD Kalongan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0002', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '86611000', 'Mess Operator', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Kaliwungu', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '119535000', 'Rumah Petugas Medis Veteriner', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', NULL, 'Ngrapah Banyubiru', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '62389804', 'Rumah Karyawan BBI Ngampin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'Rumah Negara Golongan II Tipe A Permanen', '1.3.3.01.02.02.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-23', '', '', '', 'APBD  II', 'Hak Pakai', '191950000', 'Rehabilitasi Bangunan Gedung dan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'Tugu Tanda Batas Lainnya', '1.3.3.04.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, '', NULL, '', '', '', 'APBD  ', 'Hak Pakai', '18450000', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'Tugu Tanda Batas Lainnya', '1.3.3.04.01.05.001.', '0001', 'Tidak', 'Tidak', NULL, '', '2018-07-26', '', '', '', 'APBD  II', 'Hak Pakai', '149310000', 'Tambat Perahu Speedboat Bukit Cinta', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_02_175440_create_tanahs_table', 2),
(6, '2023_12_05_011808_add_timestamps_to_tanah_table', 3),
(8, '2023_12_05_030023_add_timestamps_to_bangunan_table_', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('Admin@gmail.com', '$2y$10$b4unsbDktUiJssS4ifmjGePXlJXzGN4ooqT14hOMcTiNcjN7m3IkS', '2024-01-01 00:20:50'),
('rabbit@gmail.com', '$2y$10$oFGFCrnu27Ftf3gcevySE.vxSIliqql.X0OBVA98xGsgiMSQJd1fu', '2023-12-13 18:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tanah`
--

CREATE TABLE `tanah` (
  `id` int(11) NOT NULL,
  `jenis_barang` varchar(255) NOT NULL,
  `luas` bigint(75) DEFAULT NULL,
  `letak_alamat` varchar(200) DEFAULT NULL,
  `hak` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor` varchar(100) DEFAULT NULL,
  `penggunaan` varchar(255) DEFAULT NULL,
  `asal_usul` varchar(255) DEFAULT NULL,
  `harga` decimal(50,0) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file_pdf` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanah`
--

INSERT INTO `tanah` (`id`, `jenis_barang`, `luas`, `letak_alamat`, `hak`, `tanggal`, `nomor`, `penggunaan`, `asal_usul`, `harga`, `keterangan`, `file_pdf`, `created_at`, `updated_at`) VALUES
(1, 'Tanah Bangunan Mess/Wisma/Asrama', 500, 'Jln. Mgr Sugiyopranoto RT03 RW 06 Lingk. Garung Ngampin Kec. Ambarawa Kab. semarang ( Dekat Masjid Al Huda Garung )', 'Hak Pakai', NULL, '12', 'Dinas Pertanian, Perikanan dan Pangan Kab. Semarang', 'Hibah', '374250000', 'Tanah Bangunan Gudang Dapat Hibah dari Kementrian Pertanian CQ Dirjend Peerkebunan Ex Proyek PRPTE )', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Tanah Bangunan Pasar', 440, 'Desa Jetis', 'Hak Pakai', NULL, '9', 'STA Jetis', 'APBD', '339900000', 'Komplek Pasar Jetis ( posisi tanah dibawah Lingk Kantor Kepala Desa Jetis )', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Tanah Bangunan Kantor Pemerintah', 1045, 'Desa Sumowono', 'Hak Pakai', NULL, '3', 'Gudang Pupuk', 'APBD', '721506000', 'Sekarang menjadi BPP SUMOWONO', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Tanah Bangunan Kantor Pemerintah', 13760, 'Desa Sidomulyo', 'Hak Pakai', NULL, '21', 'Kantor Dinas', 'APBD', '3096000000', 'Komplek Kantor dinas yang dari Dinas Pertanian,Dinsos, Inspektorat', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Tanah Bangunan Kantor Pemerintah', 1, 'Bancak', '', NULL, '', 'Pos IB', 'APBD', '504000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Tanah Bangunan Kantor Pemerintah', 42, 'Komplek Kantor Desa  Candi', '', NULL, '', 'Pos IB', 'APBD', '714000', 'POs IB Bandungan Tanah Milik Desa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tanah Bangunan Kantor Pemerintah', 80, 'Desa Karangduren Kecamatan Tengaran', 'Hak Pakai', NULL, '', 'DINAS PERTANIAN , PERIKANAN DAN PANGAN', 'APBD  II', '5200000', 'RPH Karangduren Lokasi sebelah Pasar Bangsari', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Tanah Bangunan Kantor Pemerintah', 1035, 'Desa Nyatnyono Kecam,atan Ungaran Barat', 'Hak Pakai', NULL, '', 'DINAS PERTANIAN , PERIKANAN DAN PANGAN', 'APBD  II', '124200000', 'Kantor BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Tanah Bangunan Kantor Pemerintah', 22800, 'Desa Nyatnyono Kecamatan Ungaran Barat', 'Hak Pakai', NULL, '', 'DINAS PERTANIAN , PERIKANAN DAN PANGAN', 'APBD  II', '148200000', 'Kolam BBI Siwarak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Tanah Bangunan Kantor Pemerintah', 1, 'Bergas', '', NULL, '', 'Puskeswan', 'APBD', '10590000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Tanah Bangunan Kantor Pemerintah', 1, 'Bergas', '', NULL, '', 'Puskeswan', 'APBD', '11025000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Tanah Bangunan Kantor Pemerintah', 1, 'Ambarawa', '', NULL, '', 'Kantor RPH', 'APBD', '18750000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Tanah Bangunan Kantor Pemerintah', 1, 'Ungaran Barat', '', NULL, '', 'BBI Siwarak', 'APBD', '148200000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Tanah Bangunan Kantor Pemerintah', 1, 'Ungaran Barat', 'Hak Pakai', NULL, '', 'Kantor BBI Siwarak', 'APBD', '124200000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Tanah Bangunan Kantor Pemerintah', 1, 'Getasan', 'Hak Pakai', NULL, '31', 'Pos IB dan Puskeswan', 'APBD', '980000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Tanah Bangunan Kantor Pemerintah', 1, 'Tengaran', '', NULL, '', 'RPH', 'APBD', '5200000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Tanah Bangunan Kantor Pemerintah', 1, 'Kaliwungu', '', NULL, '', 'Pos IB', 'APBD', '630000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Tanah Bangunan Kantor Pemerintah', 125, 'Kupang Kidul Kecamatan Ambarawa', 'Hak Pakai', NULL, '', 'Distan', 'APBD  II', '18750000', 'RPH Ambarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Tanah Bangunan Kantor Pemerintah', 42, 'Desa Kalimaling Kecamatan Bancak', 'Hak Pakai', NULL, '', 'Dinas Pertanian , Perikanan & Pangan', 'APBD  II', '504000', 'Gedung Pos IB Tanah Milik Desa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Tanah Bangunan Kantor Pemerintah', 706, 'Desa Karangjati Kecamatan Bergas', 'Hak Pakai', NULL, '', 'Dinas Pertanian , Perikanan & Pangan', 'APBD  II', '10590000', 'Poskeswan Bergas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Tanah Bangunan Kantor Pemerintah', 63, 'Desa Karangjati Kecamatan Bergas', 'Hak Pakai', NULL, '', 'Dinas Pertanian , Perikanan & Pangan', 'APBD  II', '11025000', 'Poskeswan Bergas Kecamatan Bergas', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Tanah Bangunan Kantor Pemerintah', 539, 'Komplek Kantor Kecamatan', 'Hak Pakai', NULL, '31', 'Dinas Pertanian , Perikanan & Pangan', 'APBD  II', '980000', 'Puskeswan Getasan Lokasi Belakang Koramil Getasan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Tanah Bangunan Kantor Pemerintah', 42, 'Desa Mukiran Kaliwungu', 'Hak Pakai', NULL, '', 'Dinas Pertanian , Perikanan & Pangan', 'APBD  II', '630', 'Gedung Pos IB Tanah Milik Desa lokasi sebelah SD Mukiran 4', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Tanah Bangunan Kantor Pemerintah', 1750, 'Desa Bringin Kecamatan Bringin', 'Hak Pakai', NULL, '5', 'PERTANIAN', 'APBD  II', '119359000', 'BPP Kecamatan Bringin lokasi sebelah KUD Kecamatan Bringin', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tanah Bangunan Kantor Pemerintah', 2263, 'Desa /Kec. Sumowono Kab. Semarang', 'Hak Pakai', NULL, '92.93', 'Dinas Pertanian Perikanan dan Pangan Kab. semarang', 'Hibah', '1123580000', 'Tanah Bangunan Kantor dan Gedung Pertemuan Rencana Buat Puskeswan ) Rumah dinas dalam pengusulan hibah yang (sekarang di pinjam Assosiasi Kopi )', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Tanah Bangunan Kantor Pemerintah', 1000, 'Dusun tarukan Desa Candi Kecamatan Bandungan', 'Hak Pakai', NULL, '1', 'Dinas Pertanian Perikanan dan Pangan Kab. semarang', 'Hibah', '1966000000', 'Tanah Bangunan Kantor dan Gedung Pertemuan ( Rumah dinas dalam proses pengusulamn Lokasi sebelah Tugu Dusun Tarukan Rencana Buat BPP Bandungan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Tanah Bangunan Kantor Pemerintah', 2200, 'Jln.Mgr Sugiyonopranoto,Lingk Garung RT 05.RW 06 Ngampin Kec. Ambarawa', 'Hak Pakai', NULL, '3', 'Dinas Pertanian Perikanan dan Pangan Kab. semarang', 'Hibah', '1582680000', 'Tanah Bangunan Kantor Pemerintah( Rumah Dinas dalam proses Hibah , Lokasi depan SD Ngampin I Ambarawa Rencana Buat BPP Amabarawa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Tanah Bangunan Kandang Hewan', 3750, 'Belakang Pasar Projo Ambarawa', 'Hak Pakai', NULL, '27', 'DISTAN', 'APBD  II', '750000000', 'RPH - AMBARAWA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Tanah Bangunan Kandang Hewan', 895, 'Karangjati Kecmatan Bergas', 'Hak Pakai', NULL, '53', 'DISTAN', 'APBD  II', '223750000', 'Puskeswan Karangjati', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Tanah Bangunan Kandang Hewan', 375, 'Desa Bangirejo Kecamatan Suruh', 'Hak Pakai', NULL, '', 'DISTAN', 'APBD  II', '111224036', 'BPP Kecamatan Suruh dan Puskeswan Kecamatan Suruh', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Tanah Bangunan Kandang Hewan', 336, 'Desa Boto Kecamatan Bancak', 'Hak Pakai', NULL, '', 'DISTAN', 'APBD  II', '17295797', 'PUSKESMAS BANCAK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Tanah Bangunan Bangunan Pembibitan', 15110, 'Desa Kesongo', 'Hak Pakai', NULL, '323', 'UPTD Kesongo', 'APBD', '312500000', 'UPTD Kesongo sekarang masih aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Tanah Bangunan Bangunan Pembibitan', 90000, 'Desa Barukan / Mulyorejo', 'Hak Pakai', NULL, '1', 'Tanaman Jarak', 'APBD', '1503800000', 'UPTD Mulyorejo sekarang sudah diserahkan ke BKUD Kabupaten Semarang.', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Tanah Bangunan Bangunan Pembibitan', 28471, 'Desa Kalongan Kecamatan Ungaran Timur', '', NULL, '7', 'Pembibitan', 'APBD', '80437500', 'Wacana UPTD Perbibitan Desa kaolongan akan dilakukan Tukar Guling dengan Tanah Desa disebelah Puskesmas Kalongan tujuan tukar guling untuk dipergunakan Area Wisata bagi Desa Kaolongan sedangkan bagi Pemerintah Daerah tanah pengganti digunakan untuk Polsek', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Tanah Bangunan Bangunan Pembibitan', 15000, 'Desa Tegalwaton', '', NULL, '', 'UPTD Tegalwaton', 'APBD', '300000000', 'Tanah Milik Desa yang didalamnya ada Puskeswan Tegalwaton dan kantor Gudang UPTD Perbibitan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Tanah Bangunan Bangunan Pembibitan', 20000, 'Desa Banding', '', NULL, '', 'ex BPP BANDING', 'APBD', '360000000', 'tanah Milik Desa yang sekarang tidak dimanfaatkan lokasi disebelah balai Desa Banding', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Tanah Bangunan Bangunan Pembibitan', 22550, 'Desa Pakopen', '', NULL, '', 'UPTD Pakopen', 'Tukar Guling', '1691250000', 'rencana tukar Guling dengan PT Indotek masih dalam proses', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 11000, 'SURUH', 'Hak Pakai', NULL, '', 'DISTAN', 'APBD  II', '450000000', 'Tanah Budidaya Perikanan ( Sertiifikat dalam Proses )', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 12266, 'Desa Ngrapah Kecamatan Banyubiru', 'Hak Pakai', NULL, '', 'DISTAN', 'APBD  II', '299903700', 'Tanah Budidaya Perikanan BBI Ngampin lokasi Dusun Cerebonan Masuk', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 8100, 'Dusun Karangwuni Desa Duren Kecamatan Tengaran', 'Hak Pakai', NULL, '', 'DISTAN', 'APBD  II', '408', 'Tanah Budidaya Perikanan BBI Duren masih aktif', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 1, 'Ambarawa', 'Hak Pakai', NULL, '', 'kantor BBI Unit Ngampin', 'APBD', '299903700', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 1, 'Suruh', 'Hak Pakai', NULL, '', 'BBI Kebowan', 'APBD', '450000000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 3600, 'Suruh', 'Hak Pakai', NULL, '', 'BBI Kebowan Kecamatan Suruh', 'APBD', '486300250', 'Operasional BBI Kebowan ( sertrifikat masih dalam proses )', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Tanah Tambak/Empang/KolamIkan/Akuarium', 1, 'Tengaran', 'Hak Pakai', NULL, '', 'Kolam Budidaya Perikanan', 'APBD', '408500000', 'Dimutasi ke DINAS PERTANIAN, PERIKANAN DAN PANGAN ;', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Tanah Waduk', 467, 'Desa Wonokerto', '', NULL, '', 'Lokasi Embung', 'APBD', '89846500', 'Embung selama ini masih digunakn untuk pengairan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tanah Tegalan', 2000, 'Desa Jubelan Kec. Sumowono', 'Hak Pakai', NULL, '1', 'Dinas Pertanian Perikanan dan Pangan Kab. semarang', 'Hibah', '993000000', 'Tanah yang saat ini digunakan BPP Sumowono untuk Pembibitan yang kedepannya untuk Pasar Hewan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Tanah Tegalan', 936, 'Desa Candi Kec. Bandungan', 'Hak Pakai', NULL, '15', 'Dinas Pertanian Perikanan dan Pangan Kab. semarang', 'Hibah', '1625832000', 'Lahan Kosong yang Sebagian untuk jalan Desa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin@gmail.com', NULL, '$2y$10$v/wCGuSm8cQtKluAEUKW0O8l/KDy1msCGMkDN8ocI.nnrIQvke9pO', NULL, NULL, NULL, '5BwC8VPx4OUhjPMJAWOBnXQ2N7AuvSa67MqjsUvb4lFx0UGBFsjPIqFwtibV', '2023-12-04 18:30:57', '2023-12-28 18:56:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangunan`
--
ALTER TABLE `bangunan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tanah`
--
ALTER TABLE `tanah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangunan`
--
ALTER TABLE `bangunan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tanah`
--
ALTER TABLE `tanah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
