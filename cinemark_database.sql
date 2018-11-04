-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2018 at 05:39 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinemark`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `fullname` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `moviename` varchar(20) DEFAULT NULL,
  `movieID` varchar(10) DEFAULT NULL,
  `auditorium` int(3) DEFAULT NULL,
  `movietime` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`moviename`, `movieID`, `auditorium`, `movietime`) VALUES
('Lehner Inc', '27579JXvl2', 9, NULL),
('Lehner Inc', '27579JXvl2', 9, NULL),
('Lehner Inc', '27579JXvl2', 9, NULL),
('Lehner Inc', '2779JXvl2', 9, NULL),
('Lehner Inc', '2779JXvl2', 9, NULL),
('McDermott-Raynor', '5320QRwc8', 24, NULL),
('Lehner Inc', '2779JXvl2', 9, NULL),
('McDermott-Ray', '5320QRwc8', 24, NULL),
('Schowalter, Collier', '4786PUns6', 21, NULL),
('Crona-Jacobson', '5157HFlj7', 3, NULL),
('Mission Impossible', '1564AQ5434', 22, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `cid` varchar(10) DEFAULT NULL,
  `orderID` varchar(10) DEFAULT NULL,
  `movieID` varchar(10) DEFAULT NULL,
  `ticketamount` int(3) DEFAULT NULL,
  `totalsale` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`cid`, `orderID`, `movieID`, `ticketamount`, `totalsale`) VALUES
('148N1q7847', 'AC07717925', 'n5Q3345060', 1, 2.02),
('943U6s0776', 'VX64277660', 'f6T0691032', 6, 43.55),
('189Q2r2795', 'CB38093110', 'b1W7993684', 5, 34.26),
('560A7b5125', 'BL54095174', 'l1B5082490', 4, 48.71),
('538O7h5852', 'AC56397173', 'b9T9053064', 5, 45.04);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
