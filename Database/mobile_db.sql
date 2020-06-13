-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2020 at 06:45 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(64) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(0, 'admin', '$2y$10$EX0L5MeIQldpkCuTZW.mjujTaj.Yy20IW0GOluecU/c.es.9r6E5.', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(255) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `nama_pengajar` varchar(128) NOT NULL,
  `nama_mapel` varchar(128) NOT NULL,
  `video` varchar(255) NOT NULL,
  `deskripsi` varchar(1024) NOT NULL,
  `kelas` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `nama_pengajar`, `nama_mapel`, `video`, `deskripsi`, `kelas`) VALUES
(77, 'Saauky', 'Dasar Java', 'Weird_Genius_-_Sweet_Scar_(ft__Prince_Husein)_Official_Music_Video.mp4', 'Test', 'X');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `nip` int(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_pengajar` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_mapel` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`nip`, `email`, `nama_pengajar`, `password`, `nama_mapel`) VALUES
(1139026, 'sharon@gmail.com', 'sharon', '$2y$10$c1p5tw87QNNVIh1O.JYRKOc1SLscg7C0SHabI/XngxwIUaWTek7Wa', 'Belajar Java'),
(11319027, 'pahala.picauly@gmail.com', 'Pahala Picauly Sagala', '$2y$10$R0eVBKutEB1EbquqXQalYuTF.Yjb6QTb.O3CcywjYGc/wYbbTHP.e', 'Dasar Pemograman'),
(11319048, 'ribka@gmail.com', 'Ribka Tambunan', '$2y$10$G1vlKZOecbSrioXt0hwV.uVBcucZXZAxdtrkxcIvCY31tdqbl38ce', 'Matematika'),
(214748365, 'zaidanline67@gmail.com', 'Saauky', '$2y$10$3qQ2TYrtQHy44LblPMexnu4ZQrCWD.dYh20P.sOL5cyo6Z48fJQEq', 'Matematika'),
(1819107728, 'imas@gmail.com', 'Imas Kartika', '$2y$10$wCSBYTaCpSJaEX/1VUo1p.YU88vbgr7PeW.j1OkmD2xnKjIbB7SD6', 'Matematika');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `password`, `email`, `image`, `is_active`, `date_created`) VALUES
(1, 'Pahala Picauly Sagala', '$2y$10$chHsIYRZT2iGF9FmO5EjqO9rMQLDb.OqyaE15GKsW0EjGOdB7hOyy', 'pahala.picauly@gmail.com', 'default.jpg', 1, 1591757216);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
