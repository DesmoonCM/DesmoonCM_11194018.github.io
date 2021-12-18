-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 02:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'Staff Marketing', '4000000', '800000', '500000'),
(3, 'Staff Administrasi', '4500000', '440006', '499989'),
(10, 'Staff Makan bareng', '30000000', '300000', '50000'),
(11, 'Staff Apapun', '1000000', '600000', '300000'),
(12, 'Admin', '4700000', '500000', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(25, '122021', '1234567890', 'Arya Berelaku', 'Laki-Laki', 'Staff Marketing', 21, 1, 2),
(26, '122021', '12345', 'Desmoon', 'Laki-laki', 'Staff Marketing', 20, 2, 4),
(27, '122021', '2424', 'Siapapun', 'Perempuan', 'Staff Administrasi', 24, 0, 1),
(28, '112021', '1234567890', 'Arya Berelaku', 'Laki-Laki', 'Staff Marketing', 23, 1, 3),
(29, '112021', '12345', 'Desmoon', 'Laki-laki', 'Staff Marketing', 25, 2, 1),
(30, '112021', '2424', 'Siapapun', 'Perempuan', 'Staff Administrasi', 24, 3, 2),
(31, '012021', '1234567890', 'Arya Berelaku', 'Laki-Laki', 'Staff Marketing', 22, 1, 7),
(32, '012021', '12345', 'Desmoon', 'Laki-laki', 'Staff Marketing', 25, 2, 1),
(33, '012021', '2424', 'Siapapun', 'Perempuan', 'Staff Administrasi', 24, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, '1234567890', 'Arya Berelaku', 'arya', '12345', 'Laki-Laki', 'Staff Marketing', '2020-08-01', 'Pegawai Tidak Tetap', 'Photo.jpg', 2),
(4, '2424', 'Siapapun', 'sppn', '81dc9bdb52d04dc20036dbd8313ed055', 'Perempuan', 'Staff Administrasi', '2021-10-04', 'Pegawai Tetap', 'images1.jpg', 2),
(9, '12345', 'Desmoon', 'desmon', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-laki', 'Staff Marketing', '2021-11-23', 'Pegawai Tidak Tetap', 'k1.jpg', 2),
(12, '1289302', 'Stella', 'stella', '827ccb0eea8a706c4c34a16891f84e7b', 'Perempuan', 'Admin', '2021-12-08', 'Pegawai Tetap', 'gambar.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpha', 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
