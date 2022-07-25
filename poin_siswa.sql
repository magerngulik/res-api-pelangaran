-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 05:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poin_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_guru`
--

CREATE TABLE `data_guru` (
  `id_guru` int(11) NOT NULL,
  `nm_guru` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_guru`
--

INSERT INTO `data_guru` (`id_guru`, `nm_guru`, `email`, `password`, `address`) VALUES
(1, 'Heriyanto', 'Heriyanto@gmail.com', '12345678', 'Jl. Terpadu Dorak');

-- --------------------------------------------------------

--
-- Table structure for table `data_kelas`
--

CREATE TABLE `data_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nm_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kelas`
--

INSERT INTO `data_kelas` (`id_kelas`, `nm_kelas`) VALUES
(1, 'X IPA 1'),
(2, 'X IPA 2'),
(3, 'X IPA 3'),
(4, 'X AGAMA'),
(5, 'X IPS');

-- --------------------------------------------------------

--
-- Table structure for table `data_pelangaran`
--

CREATE TABLE `data_pelangaran` (
  `id_pelangaran` int(11) NOT NULL,
  `nm_pelangaran` varchar(100) NOT NULL,
  `jns_pelangaran` varchar(50) NOT NULL,
  `poin_pelangaran` int(50) NOT NULL,
  `jenis` enum('Laki-Laki','Perempuan','Semua') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pelangaran`
--

INSERT INTO `data_pelangaran` (`id_pelangaran`, `nm_pelangaran`, `jns_pelangaran`, `poin_pelangaran`, `jenis`) VALUES
(1, 'Tidak menggunakan peci', 'RIngan', 10, 'Laki-Laki'),
(2, 'Tidak menggunakan dasi', 'RIngan', 10, 'Laki-Laki'),
(3, 'Melakukan zina', 'Sangat berat', 50, 'Semua');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nm_siswa` varchar(255) NOT NULL,
  `nisn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `id_kelas`, `nm_siswa`, `nisn`) VALUES
(1, 1, 'M. Zulkarnaen', '123456'),
(2, 1, 'Rahma Shafiah', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_pelangaran`
--

CREATE TABLE `transaksi_pelangaran` (
  `id_trans_pelangaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_pelangaran` int(11) NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_pelangaran`
--

INSERT INTO `transaksi_pelangaran` (`id_trans_pelangaran`, `id_guru`, `id_siswa`, `id_pelangaran`, `date_create`) VALUES
(1, 1, 1, 1, '2022-06-21'),
(7, 1, 2, 1, '2022-06-21'),
(8, 1, 1, 2, '2022-06-21'),
(9, 1, 1, 2, '2022-07-25'),
(10, 1, 1, 2, '2022-07-25'),
(11, 1, 1, 2, '2022-07-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `data_kelas`
--
ALTER TABLE `data_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `data_pelangaran`
--
ALTER TABLE `data_pelangaran`
  ADD PRIMARY KEY (`id_pelangaran`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `transaksi_pelangaran`
--
ALTER TABLE `transaksi_pelangaran`
  ADD PRIMARY KEY (`id_trans_pelangaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_kelas`
--
ALTER TABLE `data_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_pelangaran`
--
ALTER TABLE `data_pelangaran`
  MODIFY `id_pelangaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi_pelangaran`
--
ALTER TABLE `transaksi_pelangaran`
  MODIFY `id_trans_pelangaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
