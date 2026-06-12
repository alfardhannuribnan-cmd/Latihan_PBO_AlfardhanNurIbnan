-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2026 at 07:45 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_trpl1a_alfardhannuribnan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(100) DEFAULT NULL,
  `jadwal_tayang` datetime DEFAULT NULL,
  `jumlah_kursi` int DEFAULT NULL,
  `harga_dasar_tiket` decimal(10,2) DEFAULT NULL,
  `jenis_studio` enum('REGULAR','IMAX','VELVET') DEFAULT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(20) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(100) DEFAULT NULL,
  `layanan_butler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Avengers Endgame', '2026-07-01 13:00:00', 120, 50000.00, 'REGULAR', 'Stereo', 'A', NULL, NULL, NULL, NULL),
(2, 'Inside Out 3', '2026-07-01 16:00:00', 120, 50000.00, 'REGULAR', 'Stereo', 'B', NULL, NULL, NULL, NULL),
(3, 'Avatar Fire and Ash', '2026-07-02 14:00:00', 250, 100000.00, 'IMAX', NULL, NULL, 'K3D001', 'Getaran Layar', NULL, NULL),
(4, 'Dune Part Three', '2026-07-02 19:00:00', 250, 100000.00, 'IMAX', NULL, NULL, 'K3D002', 'Audio Flat', NULL, NULL),
(5, 'Titanic Reborn', '2026-07-03 18:00:00', 50, 150000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Tersedia', 'Butler Aktif'),
(6, 'The Notebook', '2026-07-03 21:00:00', 50, 150000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Tersedia', 'Butler Aktif'),
(7, 'Spider Man 4', '2026-07-04 13:00:00', 100, 60000.00, 'REGULAR', 'Stereo', 'C', NULL, NULL, NULL, NULL),
(8, 'Batman', '2026-07-04 16:00:00', 100, 60000.00, 'REGULAR', 'Stereo', 'D', NULL, NULL, NULL, NULL),
(9, 'Avatar 2', '2026-07-05 13:00:00', 200, 100000.00, 'IMAX', NULL, NULL, 'K3D003', 'Getaran Kursi', NULL, NULL),
(10, 'Interstellar', '2026-07-05 19:00:00', 200, 100000.00, 'IMAX', NULL, NULL, 'K3D004', 'Efek Gerak', NULL, NULL),
(11, 'Joker 2', '2026-07-06 13:00:00', 60, 150000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Tersedia', 'Butler Aktif'),
(12, 'Oppenheimer', '2026-07-06 20:00:00', 60, 150000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Tersedia', 'Butler Aktif'),
(13, 'Frozen 3', '2026-07-07 10:00:00', 80, 55000.00, 'REGULAR', 'Stereo', 'E', NULL, NULL, NULL, NULL),
(14, 'Minions 5', '2026-07-07 13:00:00', 80, 55000.00, 'REGULAR', 'Stereo', 'F', NULL, NULL, NULL, NULL),
(15, 'Dune Part Two', '2026-07-08 14:00:00', 220, 120000.00, 'IMAX', NULL, NULL, 'K3D005', 'Audio Premium', NULL, NULL),
(16, 'Mission Impossible', '2026-07-08 20:00:00', 220, 120000.00, 'IMAX', NULL, NULL, 'K3D006', 'Layar Besar', NULL, NULL),
(17, 'La La Land', '2026-07-09 18:00:00', 40, 175000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Luxury Pack', 'Butler Aktif'),
(18, 'Titanic', '2026-07-09 21:00:00', 40, 175000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Luxury Pack', 'Butler Aktif'),
(19, 'Avengers Secret Wars', '2026-07-10 13:00:00', 150, 70000.00, 'REGULAR', 'Stereo', 'G', NULL, NULL, NULL, NULL),
(20, 'Guardians Galaxy', '2026-07-10 16:00:00', 150, 70000.00, 'REGULAR', 'Stereo', 'H', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
