-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2018 at 06:32 AM
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
-- Database: `de_may_2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `cand`
--

CREATE TABLE `cand` (
  `CANDID` int(3) NOT NULL,
  `CANDNAME` varchar(50) NOT NULL,
  `CONSTID` int(3) NOT NULL,
  `PARTYID` int(3) NOT NULL,
  `VOTES` int(5) NOT NULL,
  `DATEOFBIRTH` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cand`
--

INSERT INTO `cand` (`CANDID`, `CANDNAME`, `CONSTID`, `PARTYID`, `VOTES`, `DATEOFBIRTH`) VALUES
(1, 'Alice Arnold', 10, 100, 300, '1980-05-06'),
(2, 'Bob Bolton', 10, 200, 250, '1940-02-12'),
(3, 'Charlie Chaplin', 10, 300, 200, '1957-11-03'),
(4, 'Dermot d\'Oliveira', 10, 100, 500, '1992-02-29'),
(5, 'Eve Elleson', 20, 200, 550, '1963-11-07'),
(6, 'Felicity Forty', 20, 300, 250, '1970-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `const`
--

CREATE TABLE `const` (
  `CONSTID` int(3) NOT NULL,
  `CONSTNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `const`
--

INSERT INTO `const` (`CONSTID`, `CONSTNAME`) VALUES
(10, 'Xmas Common'),
(20, 'Ynys Môn'),
(30, 'Zennor');

-- --------------------------------------------------------

--
-- Table structure for table `pty`
--

CREATE TABLE `pty` (
  `PARTYID` int(3) NOT NULL,
  `PARTYNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pty`
--

INSERT INTO `pty` (`PARTYID`, `PARTYNAME`) VALUES
(100, 'Red'),
(200, 'Blue'),
(300, 'Yellow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cand`
--
ALTER TABLE `cand`
  ADD PRIMARY KEY (`CANDID`);

--
-- Indexes for table `pty`
--
ALTER TABLE `pty`
  ADD PRIMARY KEY (`PARTYID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cand`
--
ALTER TABLE `cand`
  MODIFY `CANDID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pty`
--
ALTER TABLE `pty`
  MODIFY `PARTYID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;