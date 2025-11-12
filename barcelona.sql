-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2025 at 07:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barcelona`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `gambar`, `judul`, `keterangan`) VALUES
(1, 'FC_Barcelona_1910.jpg', 'Sejarah', 'FC Barcelona didirikan pada 29 November 1899 oleh Hans Gamper dan berkembang menjadi simbol budaya Catalan serta salah satu klub sepak bola paling sukses di dunia. Sejak awal, klub ini telah menjadi representasi identitas Catalan dan memiliki rivalitas sengit dengan Real Madrid, yang semakin intensif karena persaingan politik dan historis di Spanyol. '),
(2, '1.-La-Masia.jpg', 'La Masia', 'La Masia adalah sebutan untuk akademi muda dan fasilitas pelatihan FC Barcelona yang terkenal di dunia. La Masia merupakan bagian penting dari klub, yang dikenal karena melahirkan banyak pemain luar biasa, dan telah berevolusi dari sebuah rumah pertanian tua menjadi kompleks pelatihan modern yang mewujudkan filosofi klub.');

-- --------------------------------------------------------

--
-- Table structure for table `culers`
--

CREATE TABLE `culers` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `culers`
--

INSERT INTO `culers` (`id`, `nama`, `email`, `tanggal_daftar`) VALUES
(1, 'b', 'vincent@gmail.com', '2025-11-12 06:40:33'),
(2, 'b', 'vincent@gmail.com', '2025-11-12 06:40:39'),
(3, 'b', 'vincent@gmail.com', '2025-11-12 06:42:33'),
(4, 'b', 'vincent@gmail.com', '2025-11-12 06:42:35'),
(5, 'b', 'vincent@gmail.com', '2025-11-12 06:43:22'),
(6, 'ya', 'ya@gmail.com', '2025-11-12 06:43:38'),
(7, 'alan', 'alan@gmail.com', '2025-11-12 06:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kompetisi` varchar(50) NOT NULL,
  `pertandingan` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `tanggal`, `kompetisi`, `pertandingan`, `lokasi`, `jam`) VALUES
(2, '2025-11-22', 'La Liga', 'Barcelona vs Athletic Bilbao\r\n', 'Spotify Camp Nou', '22:15:00'),
(3, '2025-11-26', 'Champions League', 'Chelsea vs Barcelona', 'Stamford Bridge', '03:00:00'),
(4, '2025-11-29', 'La Liga', 'Barcelona vs Deportivo Alaves', 'Spotify Camp Nou', '22:15:00'),
(5, '2025-12-03', 'La Liga', 'Barcelona vs Atletico Madrid', 'Spotify Camp Nou', '03:00:00'),
(6, '2025-12-07', 'La Liga', 'Real Betis vs Barcelona', 'Estadio de La Cartuja', '00:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culers`
--
ALTER TABLE `culers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `culers`
--
ALTER TABLE `culers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
