-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 03:16 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$qtV7KnOIcj9vO3wEzwsB2.EFMSTNXcYV4z.sCGHAOrt3jCcxmqj5a', 'Admin', 'iTernama', 'User.png', '2019-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(21, 10, 'Calon', 'Presiden Mahasiswa 1', '62e7a6a175bb05757ed8e80232edf5c5.png', 'Visi : Siap Untuk Menag Siap Untu kalah\r\nMisi : Siap Untuk Menag Siap Untu kalah\r\n\r\nPilihlah Kami Sebagai Calon Ketua Presiden Mahasiswa'),
(22, 10, 'Calon', 'Presiden Mahasiswa 2', '1538303665653.png', 'Visi : Siap Untuk Menag Siap Untu kalah\r\nMisi : Siap Untuk Menag Siap Untu kalah\r\n\r\nPilihlah Kami Sebagai Calon Ketua Presiden Mahasiswa'),
(33, 11, 'Calon', 'Ketua Bem 1', 'im1.png', 'Visi : Siap Untuk Menag Siap Untu kalah\r\nMisi : Siap Untuk Menag Siap Untu kalah\r\n\r\nPilihlah Kami Sebagai Calon Ketua Presiden Mahasiswa'),
(34, 11, 'Calon', 'Ketua Bem 2', 'business+costume+male+man+office+user+icon-1320196264882354682.png', 'Visi : Siap Untuk Menag Siap Untu kalah\r\nMisi : Siap Untuk Menag Siap Untu kalah\r\n\r\nPilihlah Kami Sebagai Calon Ketua Presiden Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'CALON PRESIDEN MAHASISWA 2020-2021', 1, 1),
(11, 'CALON KETUA BEM 2020-2021', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(28, 'Pemilih 1-SV-45', '$2y$10$6udqiPEq/GMZn1GIWYFnpOuYIupzt10bSZP5PUOf8HNzugJ9R/KWO', 'Pemilih 1', 'iTernama', '62e7a6a175bb05757ed8e80232edf5c5.png'),
(29, 'Pemilih 2-SV-74', '$2y$10$baBe9d67ltVu4eMYvgfRX.tBUmrh3lXvf8XOcqfNEZzyrM4CLDSUm', 'Pemilih 2', 'iTernama', 'business+costume+male+man+office+user+icon-1320196264882354682.png'),
(30, 'Pemilih 3-SV-81', '$2y$10$nPn1kan3nD.RVgwSJG7iQucRIrGi0d.7clZywz.vkMvK.1QxwiMmK', 'Pemilih 3', 'iTernama', '62e7a6a175bb05757ed8e80232edf5c5.png'),
(31, 'Pemilih 4-SV-52', '$2y$10$6YO4LEKtM49g2VHLuxFjCeRwK/ULoRkezPH0djFIvENQ.hRmwhMLa', 'Pemilih 4', 'iTernama', '1538303665653.png'),
(32, 'Pemilih 5-SV-84', '$2y$10$Vt49t2AVdD1YZ0ZW4mNmrO/eNAgpNhJSO6t3H930sPGfr5sXltloC', 'Pemilih 5', 'iTernama', '62e7a6a175bb05757ed8e80232edf5c5.png'),
(33, 'Pemilih 6-SV-53', '$2y$10$k08fJqjcgRgmiklPYpQXXeywFHsDz9vgeYf.mz/dduz/cOTP257DS', 'Pemilih 6', 'iTernama', 'im2.png'),
(34, 'Pemilih 7-SV-23', '$2y$10$9quwAm1GHzoJwrcO8c2pYOXmWmNIgCwXdMosbOJ2In9GePUDIze4y', 'Pemilih 7', 'iTernama', '1538303665653.png');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(141, 28, 21, 10),
(142, 28, 34, 11),
(143, 29, 21, 10),
(144, 29, 33, 11),
(145, 30, 22, 10),
(146, 30, 34, 11),
(147, 31, 21, 10),
(148, 31, 34, 11),
(149, 32, 21, 10),
(150, 32, 33, 11),
(151, 33, 21, 10),
(152, 33, 34, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
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
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
