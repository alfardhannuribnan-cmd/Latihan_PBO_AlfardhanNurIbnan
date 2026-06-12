-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2026 at 03:15 AM
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
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('REGULER','IMAX','VELVET','3D','4DX','DOLBY_ATMOS','SCREENX','PREMIERE','KIDS','COUPLE') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut` varchar(50) DEFAULT NULL,
  `layar_panoramik` varchar(50) DEFAULT NULL,
  `area_bermain_anak` varchar(50) DEFAULT NULL,
  `kursi_pasangan` varchar(50) DEFAULT NULL,
  `layanan_makanan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut`, `layar_panoramik`, `area_bermain_anak`, `kursi_pasangan`, `layanan_makanan`) VALUES
(1, 'Avengers Endgame', '2026-07-01 13:00:00', 120, 50000.00, 'REGULER', 'Stereo', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Inside Out 3', '2026-07-01 16:00:00', 120, 50000.00, 'REGULER', 'Stereo', 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Avatar Fire and Ash', '2026-07-02 14:00:00', 250, 100000.00, 'IMAX', 'Dolby Atmos', 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Dune Part Three', '2026-07-02 19:00:00', 250, 100000.00, 'IMAX', 'Dolby Atmos', 'D', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Titanic Reborn', '2026-07-03 18:00:00', 50, 150000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Tersedia', NULL, NULL, NULL, 'Snack Premium'),
(6, 'The Notebook', '2026-07-03 21:00:00', 50, 150000.00, 'VELVET', NULL, NULL, NULL, NULL, 'Tersedia', NULL, NULL, NULL, 'Dinner Package'),
(7, 'Jurassic World', '2026-07-04 14:00:00', 150, 75000.00, '3D', NULL, NULL, 'K3D001', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Aquaman 3', '2026-07-04 19:00:00', 150, 75000.00, '3D', NULL, NULL, 'K3D002', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Fast X', '2026-07-05 15:00:00', 100, 120000.00, '4DX', NULL, NULL, NULL, 'Getaran Air Angin', NULL, NULL, NULL, NULL, NULL),
(10, 'Mission Impossible', '2026-07-05 20:00:00', 100, 120000.00, '4DX', NULL, NULL, NULL, 'Getaran Kabut', NULL, NULL, NULL, NULL, NULL),
(11, 'Interstellar', '2026-07-06 17:00:00', 180, 85000.00, 'DOLBY_ATMOS', 'Dolby Atmos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Oppenheimer', '2026-07-06 20:00:00', 180, 85000.00, 'DOLBY_ATMOS', 'Dolby Atmos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Top Gun Maverick', '2026-07-07 13:00:00', 170, 90000.00, 'SCREENX', NULL, NULL, NULL, NULL, NULL, '270 Derajat', NULL, NULL, NULL),
(14, 'Mad Max', '2026-07-07 18:00:00', 170, 90000.00, 'SCREENX', NULL, NULL, NULL, NULL, NULL, '270 Derajat', NULL, NULL, NULL),
(15, 'John Wick 5', '2026-07-08 19:00:00', 60, 175000.00, 'PREMIERE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Makanan Premium'),
(16, 'The Batman 2', '2026-07-08 21:00:00', 60, 175000.00, 'PREMIERE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Makanan Premium'),
(17, 'Minions 5', '2026-07-09 10:00:00', 140, 45000.00, 'KIDS', NULL, NULL, NULL, NULL, NULL, NULL, 'Tersedia', NULL, NULL),
(18, 'Frozen 3', '2026-07-09 13:00:00', 140, 45000.00, 'KIDS', NULL, NULL, NULL, NULL, NULL, NULL, 'Tersedia', NULL, NULL),
(19, 'La La Land', '2026-07-10 18:00:00', 80, 110000.00, 'COUPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Love Seat', NULL),
(20, 'Me Before You', '2026-07-10 21:00:00', 80, 110000.00, 'COUPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Love Seat', NULL);

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
