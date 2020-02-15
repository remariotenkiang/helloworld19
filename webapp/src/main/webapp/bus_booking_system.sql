-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2015 at 07:47 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bus booking system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `AdminID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Fname`, `Lname`, `Email`, `Username`, `Password`) VALUES
(1, 'Ramya', 'Boppana', 'ramyasusanth@gmail.com', 'ramya', 'd1051c4d4d2c9fff63cac2907ecc0c8c3881e603');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `Booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Bus_id` int(11) NOT NULL,
  `Seats_no` int(11) NOT NULL,
  `Total_fare` double NOT NULL,
  `Bank` varchar(200) NOT NULL,
  `Payment_method` varchar(200) NOT NULL,
  PRIMARY KEY (`Booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `user`, `Date`, `Bus_id`, `Seats_no`, `Total_fare`, `Bank`, `Payment_method`) VALUES
(3, 'sai', '2015-11-04 07:34:38', 15, 2, 2200, 'SBH', 'Net Banking'),
(4, 'sai', '2015-11-05 00:03:02', 18, 1, 350, 'SBH', 'Net Banking'),
(5, 'sai', '2015-11-05 02:52:06', 18, 1, 350, 'SBH', 'Net Banking'),
(6, 'sai', '2015-11-06 02:37:32', 10, 2, 2000, 'SBH', 'Debit card');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Origin` varchar(200) NOT NULL,
  `Destination` varchar(200) NOT NULL,
  `Seats` int(11) NOT NULL,
  `Arrival_time` time NOT NULL,
  `Departure_time` time NOT NULL,
  `Date` date NOT NULL,
  `Fare` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Id`, `Name`, `Origin`, `Destination`, `Seats`, `Arrival_time`, `Departure_time`, `Date`, `Fare`) VALUES
(1, '2017-9-10 travels', 'Pkr', 'Ktm', 8, '10:00:00', '16:00:00', '', 800),
(2, 'ABC travels', 'Pkr', 'Ktm', 18, '10:00:00', '16:00:00', '2015-10-17', 800),
(3, 'ABC travels', 'Pkr', 'Ktm', 22, '10:00:00', '16:00:00', '2015-10-18', 800),
(4, 'Sr travels', 'Pkr', 'Ktm', 11, '12:00:00', '19:00:00', '', 850),
(5, 'Sr travels', 'Pkr', 'Ktm', 12, '12:00:00', '19:00:00', '2015-10-17', 850),
(6, 'Sr travels', 'Pkr', 'Ktm', 20, '12:00:00', '19:00:00', '2015-10-18', 850),
(7, 'Rocky travels', 'Pkr', 'Ktm', 12, '14:00:00', '21:00:00', '2015-10-17', 900),
(8, 'Rocky travels', 'Pkr', 'Ktm', 16, '14:00:00', '21:00:00', '2015-10-18', 900),
(9, 'lolly travels', 'Pkr', 'Btl', 10, '09:00:00', '18:00:00', '2017-9-10', 1000),
(10, 'lolly travels', 'Pkr', 'Btl', 12, '09:00:00', '18:00:00', '2015-10-17', 1000),
(11, 'lolly travels', 'Pkr', 'Btl', 23, '09:00:00', '18:00:00', '2015-10-18', 1000),
(12, 'Patel travels', 'Pkr', 'Btl', 8, '07:00:00', '16:00:00', '2017-9-10', 1200),
(13, 'Patel travels', 'Pkr', 'Btl', 11, '07:00:00', '16:00:00', '2015-10-18', 1200),
(14, 'Sbt travels', 'Pkr', 'Btl', 7, '14:00:00', '23:00:00', '2017-9-10', 1100),
(15, 'Sbt travels', 'Pkr', 'Btl', 14, '14:00:00', '23:00:00', '2015-10-17', 1100),
(16, 'Sbt travels', 'Pkr', 'Btl', 25, '14:00:00', '23:00:00', '2015-10-18', 1100),
(18, 'Vijaya travels', 'Pkr', 'Dar', 8, '09:00:00', '04:00:00', '2017-9-10', 350),
(19, 'ABC travels', 'Ktm', 'Pkr', 10, '04:00:00', '10:00:00', '2017-9-10', 800),
(20, 'ABC travels', 'Ktm', 'Pkr', 11, '04:00:00', '10:00:00', '2015-10-17', 800),
(21, 'ABC travels', 'Ktm', 'Pkr', 12, '04:00:00', '10:00:00', '2015-10-18', 800),
(22, 'Sr travels', 'Ktm', 'Pkr', 9, '03:00:00', '09:00:00', '2017-9-10', 850),
(23, 'Sr travels', 'Ktm', 'Pkr', 10, '03:00:00', '09:00:00', '2015-10-17', 850),
(24, 'Sr travels', 'Ktm', 'Pkr', 12, '03:00:00', '09:00:00', '2015-10-18', 850),
(25, 'lolly travels', 'Btl', 'Pkr', 5, '01:00:00', '08:00:00', '2017-9-10', 1000),
(26, 'lolly travels', 'Btl', 'Pkr', 11, '01:00:00', '08:00:00', '2015-10-17', 1000),
(27, 'lolly travels', 'Btl', 'Pkr', 20, '01:00:00', '08:00:00', '2015-10-18', 1000),
(28, 'lolly travels', 'Dar', 'Pkr', 10, '02:00:00', '07:00:00', '2017-9-10', 350),
(29, 'lolly travels', 'Dar', 'Pkr', 20, '02:00:00', '07:00:00', '2015-10-17', 350),
(30, 'lolly travels', 'Dar', 'Pkr', 24, '02:00:00', '07:00:00', '2015-10-18', 350);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(200) DEFAULT NULL,
  `Lname` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Username` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Security` varchar(200) NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Fname`, `Lname`, `Email`, `Username`, `Password`, `Timestamp`, `Security`) VALUES
(2, 'sai', 'boppana', 'sai@gmail.com', 'sai', 'f0488e300067bc295f044886b296f8cefbe08029', '2015-10-14 18:28:12', 'Challapalli'),
(3, 'ramya', 'boppana', 'ramyasusanth@gmail.com', 'ramya', 'a7ed34bfd8445010e0ab542561043a0bdd760e9a', '2017-9-10 05:12:14', 'Challapalli'),
(4, 'Ramya Sree', 'Boppana', 'ramyasusanth@gmail.com', 'Ramya Sree Boppana', '48be96eebb964cd9b885296a815b06e201e6f782', '2017-9-10 05:28:01', 'Challapalli'),
(5, 'Susanth', 'Boppana', 'susanthboppana@gmail.com', 'Susanth Boppana', 'bf2203c3d945b7bb81092db307bfedbf3765d48d', '2017-9-10 05:29:31', 'Challapalli'),
(6, 'Mani', 'Boppana', 'mani@gmail.com', 'mani', 'c29222e98de6437a383e8d946a9b202298e0aa3a', '2017-9-10 06:12:54', 'Challapalli'),
(7, 'Srinu', 'Boppana', 'srinu@gmail.com', 'srinu', '0d29204fc6676ae4c8e5d4efd45c50ea583bb804', '2017-9-10 06:13:52', 'Challapalli'),
(8, 'Ram', '', 'ram@gmail.com', 'ram', '77c7960e890deddebb7ff2e55e340d2ed1708368', '2017-9-10 06:15:08', 'Dar'),
(9, 'sita', '', 'sita@gmail.com', 'sita', 'da3ffa02d0505ada3490157e6d1f800f5d484930', '2017-9-10 07:11:33', 'Dar'),
(10, 'Susanth', 'Chowdary', 'boppanasusanth29@gmail.com', 'susanth29', '2a1fcf5856d9ffd2f2b815c9967fe51e2c5b39cc', '2015-10-18 03:16:16', 'Pkr'),
(12, 'githa', '', 'githa@gmail.com', 'githa', '32ef949c28f99c02d41a19897e3a624548445e8f', '2015-11-04 01:10:34', 'Pkr'),
(13, 'venkat', 'boppana', 'venky@gmail.com', 'venkat', '5803ef16bb1b95f4966c74bd695ca564481afdac', '2015-11-06 03:14:28', 'Pkr');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
