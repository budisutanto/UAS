-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 10:59 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_phplogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_daerah`
--

CREATE TABLE `data_daerah` (
  `id` int(2) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_daerah`
--

INSERT INTO `data_daerah` (`id`, `kota`) VALUES
(1, 'Jakarta'),
(2, 'Aceh'),
(3, 'Sumatera Utara'),
(4, 'Sumatera Barat'),
(5, 'Riau'),
(6, 'Kepulauan Riau'),
(7, 'Jambi'),
(8, 'Bengkulu'),
(9, 'Sumatera Selatan'),
(10, 'Kepulauan Banka Belitung'),
(11, 'Lampung'),
(12, 'Banten'),
(13, 'Jawa Barat'),
(14, 'Jawa Tengah'),
(15, 'Yogyakarta '),
(16, 'Jawa Timur'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Utara'),
(21, 'Kalimantan Barat'),
(22, 'Kalimantan Tengah'),
(23, 'Kalimantan Selatan'),
(24, 'Kalimantan Timur'),
(25, 'Gorontalo'),
(26, 'Sulawesi Utara'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Tengah'),
(29, 'Sulawesi Selatan'),
(30, 'Sulawesi Tenggara'),
(31, 'Maluku Utara'),
(32, 'Maluku'),
(33, 'Papua'),
(34, 'Papua Barat');

-- --------------------------------------------------------

--
-- Table structure for table `data_relawan`
--

CREATE TABLE `data_relawan` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `nohp` varchar(14) NOT NULL,
  `keahlian` varchar(50) NOT NULL,
  `daerah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_relawan`
--

INSERT INTO `data_relawan` (`id`, `nama`, `alamat`, `email`, `nohp`, `keahlian`, `daerah`) VALUES
(11, 'Budi Sutanto', 'Depok', 'budi.sutanto12345@gmail.com', '089695336389', 'IT', 'Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(5, 'budi', '$2y$10$AGS3qIR43DyNuafBqu7Woe7Mo0OHWjTkGERKPmhll.lFued8sItSm'),
(4, 'admin', '$2y$10$64Z6SyT/iVsvS1QFxLV/heyMxTQW9p8qNLezpUIcQRaW4o777GInm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_daerah`
--
ALTER TABLE `data_daerah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_relawan`
--
ALTER TABLE `data_relawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_daerah`
--
ALTER TABLE `data_daerah`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `data_relawan`
--
ALTER TABLE `data_relawan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
