-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2018 at 06:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `de_dec_2016`
--

-- --------------------------------------------------------

--
-- Table structure for table `keeper`
--

CREATE TABLE `keeper` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keeper`
--

INSERT INTO `keeper` (`id`, `fullname`, `address`) VALUES
(1, 'Ambiguous, Arthur', 'Absorption Ave.'),
(2, 'Inconspicuous, Iain', 'Interception Rd.'),
(3, 'Contiguous, Carol', 'Circumscription Close'),
(4, 'Strenous, Sam', 'Surjection Street'),
(5, 'Assiduous, Annie', 'Attribution Alley'),
(6, 'Incongruous, Ingrid', 'Irresolution Pl.');

-- --------------------------------------------------------

--
-- Table structure for table `permit`
--

CREATE TABLE `permit` (
  `reg` varchar(25) NOT NULL,
  `sDate` varchar(50) NOT NULL,
  `chargeType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permit`
--

INSERT INTO `permit` (`reg`, `sDate`, `chargeType`) VALUES
('SO 02 ASP', '21/01/2006', 'Weekly'),
('SO 02 ATP', '21/01/2007', 'Daily'),
('SO 02 ATP', '22/01/2007', 'Daily'),
('SO 02 BSP', '30/01/2006', 'Weekly'),
('SO 02 BTP', '30/01/2006', 'Daily'),
('SO 02 BTP', '31/01/2006', 'Daily'),
('SO 02 BTP', '03/02/2007', 'Daily'),
('SO 02 BTP', '04/02/2007', 'Daily'),
('SO 02 BTP', '05/02/2007', 'Daily'),
('SO 02 BTP', '06/02/2007', 'Daily'),
('SO 02 BTP', '07/02/2007', 'Daily'),
('SO 02 CSP', '21/01/2007', 'Weekly'),
('SO 02 CTP', '21/01/2007', 'Daily'),
('SO 02 CTP', '22/01/2007', 'Daily'),
('SO 02 CTP', '22/01/2007', 'Daily'),
('SO 02 DSP', '30/01/2007', 'Weekly'),
('SO 02 DTP', ' 30/01/2007 ', 'Daily'),
('SO 02 DTP', ' 31/01/2007 ', 'Daily'),
('SO 02 ESP', '21/02/2007 ', 'Weekly'),
('SO 02 ESP', '21/02/2007 ', 'Daily'),
('SO 02 ETP', '22/02/2007', 'Daily'),
('SO 02 FSP', '25/02/2007', 'Weekly'),
('SO 02 FTP', '25/02/2007', 'Daily'),
('SO 02 FTP', '26/02/2007', 'Daily'),
('SO 02 GSP', '28/02/2007', 'Weekly'),
('SO 02 GSP', '28/02/2007', 'Daily'),
('SO 02 GTP', '01/03/2007', 'Daily');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` varchar(25) NOT NULL,
  `keeper` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `keeper`) VALUES
('SO 02 ASP', 1),
('SO 02 ATP', 1),
('SO 02 BSP', 3),
('SO 02 BTP', 2),
('SO 02 CSP', 1),
('SO 02 CTP', 1),
('SO 02 DSP', 4),
('SO 02 DTP', 3),
('SO 02 ESP', 1),
('SO 02 ETP', 5),
('SO 02 FSP', 3),
('SO 02 FTP', 4),
('SO 02 GSP', 6),
('SO 02 GTP', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keeper`
--
ALTER TABLE `keeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keeper`
--
ALTER TABLE `keeper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;