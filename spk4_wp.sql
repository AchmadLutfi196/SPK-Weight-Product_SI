-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2024 at 03:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk4_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alter` int NOT NULL,
  `code` varchar(128) DEFAULT NULL,
  `alternatif` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alter`, `code`, `alternatif`) VALUES
(1, 'R1', 'SDN KEMAYORAN 1'),
(2, 'R2', 'SDN KEMAYORAN 2'),
(3, 'R3', 'SDN DEMANGAN 2'),
(4, 'R4', 'SDN DEMANGAN 1'),
(5, 'R5', 'SDN PEJAGAN 1'),
(10, 'R6', 'SDN PEJAGAN 2'),
(11, 'R7', 'SDN PANGERANAN 1'),
(12, 'R8', 'SDN PANGERANAN 3'),
(13, 'R9', 'SDN KRATON 2'),
(14, 'R10', 'SDN BANCARAN 1'),
(15, 'R11', 'SMPN 2 Bangkalan');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` int NOT NULL,
  `id_alter` int DEFAULT NULL,
  `c1` int DEFAULT NULL,
  `c2` int DEFAULT NULL,
  `c3` int DEFAULT NULL,
  `c4` int DEFAULT NULL,
  `c5` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `id_alter`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 1, 37, 410, 80, 100, 4),
(2, 2, 39, 350, 75, 100, 4),
(3, 3, 40, 340, 70, 100, 4),
(4, 4, 37, 360, 65, 100, 4),
(5, 5, 39, 320, 70, 100, 4),
(6, 10, 40, 350, 80, 100, 4),
(7, 14, 40, 340, 75, 100, 4),
(8, 15, 32, 400, 60, 80, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `kriteria` varchar(256) DEFAULT NULL,
  `jenis` varchar(32) DEFAULT NULL,
  `bobot` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `code`, `kriteria`, `jenis`, `bobot`) VALUES
(1, 'C1', 'Jumlah Rata-rata Siswa Per Kelas', 'cost', 4),
(2, 'C2', 'Jumlah Fasilitas', 'benefit', 5),
(3, 'C3', 'Kurikulum Terbaru', 'benefit', 4),
(4, 'C4', 'Sanitas dan Kebersihan', 'benefit', 3),
(5, 'C5', 'Akreditasi Sekolah', 'benefit', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alter`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`),
  ADD KEY `id_alter` (`id_alter`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alter` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id_bobot` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bobot`
--
ALTER TABLE `bobot`
  ADD CONSTRAINT `bobot_ibfk_1` FOREIGN KEY (`id_alter`) REFERENCES `alternatif` (`id_alter`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
