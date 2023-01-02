-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 01:21 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'tugasakhir', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `jenis` int(11) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `tanggal` date NOT NULL,
  `pengarang` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kode`, `jenis`, `judul`, `tanggal`, `pengarang`) VALUES
(1, 'SVJZGXVJ', 2, 'Ayat-Ayat Cinta', '2017-12-21', 'Habiburrahman El Shirazy'),
(2, 'KQKM6UJ5', 1, 'Ensiklopedia Komunikasi', '2015-04-03', 'Alex Sobur'),
(3, '0OCQBBQX', 4, 'Mari Bung Rebut Kembali', '2012-10-29', 'Willy Aditya'),
(4, 'ZR1PC9UI', 2, 'Rentang Kasih', '2017-09-03', 'Gita Savitri');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` int(11) NOT NULL,
  `nis` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempat_lahir` varchar(41) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `nis`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `tanggal`) VALUES
(1, 14619, 'Suluh Sulistiawan', 'Pemalang', '2004-06-22', 'Teknik Komputer dan Jaringan', '2018-07-16'),
(3, 14617, 'Hamdan Ainur R.', 'Pemalang', '2003-00-00', 'Teknik Komputer dan Jaringan', '2018-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `nis` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nis`, `nama`, `jurusan`, `kode`, `judul`, `tanggal`) VALUES
(1, 14619, 'Suluh Sulistiawan', 'Teknik Komputer dan Jaringan', 'SVJZGXVJ', 'Ayat-Ayat Cinta', '2019-12-03'),
(2, 14619, 'Suluh Sulistiawan', 'Teknik Komputer dan Jaringan', 'KQKM6UJ5', 'Ensiklopedia Komunikasi', '2019-12-03'),
(3, 14619, 'Suluh Sulistiawan', 'Teknik Komputer dan Jaringan', '0OCQBBQX', 'Mari Bung Rebut Kembali', '2019-12-03'),
(4, 14619, 'Suluh Sulistiawan', 'Teknik Komputer dan Jaringan', 'ZR1PC9UI', 'Rentang Kasih', '2019-12-03'),
(5, 14617, 'Hamdan Ainur R.', 'Teknik Komputer dan Jaringan', 'SVJZGXVJ', 'Ayat-Ayat Cinta', '2019-12-03'),
(6, 14617, 'Hamdan Ainur R.', 'Teknik Komputer dan Jaringan', 'KQKM6UJ5', 'Ensiklopedia Komunikasi', '2019-12-03'),
(7, 14617, 'Hamdan Ainur R.', 'Teknik Komputer dan Jaringan', '0OCQBBQX', 'Mari Bung Rebut Kembali', '2019-12-03'),
(8, 14617, 'Hamdan Ainur R.', 'Teknik Komputer dan Jaringan', 'ZR1PC9UI', 'Rentang Kasih', '2019-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`,`kode`) USING BTREE;

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`,`nis`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
