-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2015 at 10:57 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emp`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE IF NOT EXISTS `emp` (
  `empid` varchar(20) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Emailid` varchar(20) DEFAULT NULL,
  `Year_of_joining` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empid`, `name`, `designation`, `Phone`, `Emailid`, `Year_of_joining`, `dob`) VALUES
('1', 'Ravi Karan Singh Kahlon', 'Chairman', 9780400002, 'chairman@pwrmdc.com', '1990-03-12', '1966-06-06'),
('10', 'Anil Kumar Bhutani', 'Sr. Hydrogeologist', 9463292276, 'shhydrowingpwrmdc201', '1995-10-18', '1965-06-23'),
('2', 'Surinder Singh Grewa', 'Managing Director', 9915260009, 'md@pwrmdc.com', '1992-10-29', '1970-03-23'),
('3', 'Adarsh Kumar Sharma', 'Chief Project Office', 9872012351, 'seplanning@yahoo.com', '1991-07-06', '1968-08-08'),
('4', 'Ajay Kumar Sharma', 'Chief Vigilance Offi', 9815975533, 'se_planning@pwrmdc.c', '1989-11-01', '1967-09-17'),
('5', 'R.K. Behl', 'Financial Advisor', 9872470522, 'fapwrmdcchd@gmail.co', '1990-04-17', '1971-10-11'),
('6', 'Yadbinder Pal Singh', 'Law Officer', 9915074886, 'lawofficerpwrmdc@gma', '1988-02-19', '1966-01-20'),
('7', 'Jaila Ram', 'Superintending Engin', 8146006800, 'se_bathida@pwrmdc.co', '1992-08-01', '1968-11-19'),
('8', 'B.K. Garg', 'Superintending Engin', 9872403930, 'de2pwrmdc@gmail.com', '1992-08-01', '0000-00-00'),
('9', 'Gurvinder Singh', 'Superintending Engin', 1634224666, 'de4pwrmdc@gmail.com', '1992-11-04', '1961-07-27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
