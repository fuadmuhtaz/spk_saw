-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2016 at 05:41 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$TR7tJBifQZWyvGpfTo4RDueN9ebAkyJG8T2kDo56yPyWZiCYh4dbe');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_pemilihan` int(11) NOT NULL,
  `alternatif` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_pemilihan`, `alternatif`) VALUES
(37, 'Fuad Muhtaz'),
(37, 'Saidi Yusuf'),
(37, 'Agung Perdananto'),
(37, 'Michael Jordan'),
(37, 'Ibnu Tangga'),
(40, 'Fajar Ngestu Prabowo'),
(40, 'Ryan Eka Setiawan'),
(40, 'Rafi Fahd Mansya'),
(40, 'Nadiyya Ulfah'),
(40, 'Inayatul Maula');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_pemilihan` int(11) NOT NULL,
  `alternatif` varchar(255) NOT NULL,
  `v` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_pemilihan`, `alternatif`, `v`) VALUES
(40, 'Rafi Fahd Mansya', 0.85);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_pemilihan` int(11) NOT NULL,
  `c1` double NOT NULL,
  `c2` double NOT NULL,
  `c3` double NOT NULL,
  `c4` double NOT NULL,
  `c5` double NOT NULL,
  `c6` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_pemilihan`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`) VALUES
(40, 24, 16, 15, 7, 8, 24),
(40, 36, 24, 35, 9, 15, 26),
(40, 38, 30, 40, 12, 10, 27),
(40, 18, 16, 20, 6, 5, 22),
(40, 20, 15, 19, 7, 9, 22);

-- --------------------------------------------------------

--
-- Table structure for table `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id_pemilihan` int(11) NOT NULL,
  `c1` double NOT NULL,
  `c2` double NOT NULL,
  `c3` double NOT NULL,
  `c4` double NOT NULL,
  `c5` double NOT NULL,
  `c6` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normalisasi`
--

INSERT INTO `normalisasi` (`id_pemilihan`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`) VALUES
(40, 0.6316, 0.5333, 0.375, 0.8571, 0.625, 0.9167),
(40, 0.9474, 0.8, 0.875, 0.6667, 0.3333, 0.8462),
(40, 1, 1, 1, 0.5, 0.5, 0.8148),
(40, 0.4737, 0.5333, 0.5, 1, 1, 1),
(40, 0.5263, 0.5, 0.475, 0.8571, 0.5556, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemilihan`
--

CREATE TABLE `pemilihan` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilihan`
--

INSERT INTO `pemilihan` (`id`, `keterangan`, `tanggal`, `status`) VALUES
(37, 'Programmer Back End 2017', '2016-11-27', 'alternatif'),
(39, 'Programmer Back End 2016', '2016-11-28', 'id'),
(40, 'Programmer Back End 2016', '2016-11-28', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id_pemilihan` int(11) NOT NULL,
  `v` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id_pemilihan`, `v`) VALUES
(40, 0.58185),
(40, 0.75255),
(40, 0.85),
(40, 0.64877),
(40, 0.54972);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD KEY `id_pemilihan` (`id_pemilihan`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD KEY `id_pemilihan` (`id_pemilihan`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `id_pemilihan` (`id_pemilihan`);

--
-- Indexes for table `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD KEY `id_pemilihan` (`id_pemilihan`);

--
-- Indexes for table `pemilihan`
--
ALTER TABLE `pemilihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD KEY `id_pemilihan` (`id_pemilihan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pemilihan`
--
ALTER TABLE `pemilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD CONSTRAINT `alternatif_ibfk_1` FOREIGN KEY (`id_pemilihan`) REFERENCES `pemilihan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_pemilihan`) REFERENCES `pemilihan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_pemilihan`) REFERENCES `pemilihan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD CONSTRAINT `normalisasi_ibfk_1` FOREIGN KEY (`id_pemilihan`) REFERENCES `pemilihan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`id_pemilihan`) REFERENCES `pemilihan` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
