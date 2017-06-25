-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2015 at 06:21 PM
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
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `contractorid` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pincode` bigint(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contractorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`contractorid`, `address`, `city`, `pincode`, `country`, `state`) VALUES
('Amrit325', 'house no. 432,Friends Colony', 'Sangrur', 148001, 'India', 'Punjab'),
('Diljit529', 'house no.213,adarh nagar ', 'Sangrur', 148001, 'India', 'Punjab'),
('Hartej 832', 'house no. 43, Model town', 'Bhatinda', 151001, 'India', 'Punjab'),
('Rajesh 675', 'house no.34,Guru nanak colony', 'patiala', 147001, 'India', 'Punjab'),
('Surinder138', 'house no.20,Punjabi bagh', 'patiala', 147001, 'India', 'Punjab');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `bank_ifsc` varchar(20) NOT NULL DEFAULT '',
  `bank_name` varchar(20) DEFAULT NULL,
  `bank_branch` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bank_ifsc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_ifsc`, `bank_name`, `bank_branch`) VALUES
(' SBIN0011914', 'STATE BANK OF INDIA', ' BARNALA'),
('HDFC0000116', 'HDFC Bank', 'Patiala'),
('HDFC0000187', 'HDFC Bank', 'BHATINDA'),
('PUNB0043800 ', 'PUNJAB NATIONAL BANK', 'Sangrur'),
('SBIN0001759 ', 'SBI', 'Sangrur'),
('SBIN0005577', 'SBI', 'Sangrur'),
('SBIN0017258', 'STATE BANK OF INDIA', 'bhatinda');

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE IF NOT EXISTS `bidding` (
  `contractorid` varchar(20) NOT NULL DEFAULT '',
  `tender_no` varchar(50) DEFAULT NULL,
  `bid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`contractorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`contractorid`, `tender_no`, `bid`) VALUES
('Amrit325', 'PWRMDC/2015-16/32', 5000000),
('Diljit529', 'PWRMDC/2015-16/32', 5200000),
('Hartej 832', 'PWRMDC/2015-16/32', 5800000),
('Rajesh 675', 'PWRMDC/2015-16/30', 720000),
('Surinder138', 'PWRMDC/2015-16/30', 780000);

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE IF NOT EXISTS `contractor` (
  `contractorid` varchar(20) NOT NULL DEFAULT '',
  `name` char(20) DEFAULT NULL,
  `speciality` char(20) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pan_no` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(20) DEFAULT NULL,
  `acc_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contractorid`),
  FULLTEXT KEY `contractorid` (`contractorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`contractorid`, `name`, `speciality`, `Phone`, `email`, `pan_no`, `bank_ifsc`, `acc_no`) VALUES
('Amrit325', 'AmritKaushal', 'Lining', 9874573001, 'amrit56@gmail.com', 'ACENC4523E', 'SBIN0001759 ', 437987508640987),
('Diljit529', 'DiljitSingh', 'Drainage', 9875634780, 'diljit.singh@gmail.com', 'AAOCS4467I', 'HDFC0000187', 435637873560980),
('Hartej 832', 'Hartej Singh', 'Lining', 9768265701, 'hartej96@gmail.com', 'ACEHD2364K', 'PUNB0043800 ', 421798054067560),
('Rajesh 675', 'Rajesh Goyal', 'Contractor', 8147856708, 'rajesh.goyal@gmail.com', 'ANCHE1276E', 'HDFC0000116', 428736350963789),
('Surinder138', 'SurinderBansal', 'Drainage', 9855665721, 'surinder.12@gmail.com', 'ACERS6735C', 'SBIN0005577', 457383936129038);

-- --------------------------------------------------------

--
-- Table structure for table `contrproject`
--

CREATE TABLE IF NOT EXISTS `contrproject` (
  `contractorid` varchar(20) NOT NULL,
  `project_id` varchar(20) NOT NULL,
  PRIMARY KEY (`contractorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contrproject`
--

INSERT INTO `contrproject` (`contractorid`, `project_id`) VALUES
('Amrit325', '105BHA13'),
('Diljit529', '103MAN14'),
('Hartej 832', '101MAN14'),
('Rajesh 675', '104MAN13'),
('Surinder138', '102BHA13');

-- --------------------------------------------------------

--
-- Table structure for table `contrtender`
--

CREATE TABLE IF NOT EXISTS `contrtender` (
  `contractorid` varchar(20) NOT NULL,
  `tender_no` varchar(20) NOT NULL,
  PRIMARY KEY (`contractorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contrtender`
--

INSERT INTO `contrtender` (`contractorid`, `tender_no`) VALUES
('Amrit325', 'PWDRM/201314/325'),
('Diljit529', 'PWDRM/201314/569'),
('Hartej 832', 'PWDRM/201415/832'),
('Rajesh 675', 'PWDRM/201314/675'),
('Surinder138', 'PWDRM/201314/138');

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
('101', 'Rajesh Goyal', 'JE', 127, 'goyal.rajesh@gmail.c', '1985-08-01', '1962-07-04'),
('2', 'Surinder Singh Grewa', 'Managing Director', 9915260009, 'md@pwrmdc.com', '1992-10-29', '1970-03-23'),
('3', 'Adarsh Kumar Sharma', 'Chief Project Office', 9872012351, 'seplanning@yahoo.com', '1991-07-06', '1968-08-08'),
('4', 'Ajay Kumar Sharma', 'Chief Vigilance Offi', 9815975533, 'se_planning@pwrmdc.c', '1989-11-01', '1967-09-17'),
('5', 'R.K. Behl', 'Financial Advisor', 9872470522, 'fapwrmdcchd@gmail.co', '1990-04-17', '1971-10-11'),
('6', 'Yadbinder Pal Singh', 'Law Officer', 9915074886, 'lawofficerpwrmdc@gma', '1988-02-19', '1966-01-20'),
('7', 'Jaila Ram', 'Superintending Engin', 8146006800, 'se_bathida@pwrmdc.co', '1992-08-01', '1968-11-19'),
('8', 'B.K. Garg', 'Superintending Engin', 9872403930, 'de2pwrmdc@gmail.com', '1992-08-01', '0000-00-00'),
('9', 'Gurvinder Singh', 'Superintending Engin', 1634224666, 'de4pwrmdc@gmail.com', '1992-11-04', '1961-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `name` char(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `cost` tinyint(20) DEFAULT NULL,
  `units` tinyint(10) DEFAULT NULL,
  `supplier_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `latest_tender`
--

CREATE TABLE IF NOT EXISTS `latest_tender` (
  `tender_no` varchar(20) NOT NULL DEFAULT '',
  `tenderdescription` varchar(60) DEFAULT NULL,
  `requestdate` date DEFAULT NULL,
  PRIMARY KEY (`tender_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_tender`
--

INSERT INTO `latest_tender` (`tender_no`, `tenderdescription`, `requestdate`) VALUES
('PWRMDC/2015-16/30', 'Relining of W/Cs of O/L RD 19500-R of Jodhpur Disty', '2015-11-16'),
('PWRMDC/2015-16/31', 'Relining Lining of W/Cs of O/L RD 40233-L of Mandi Mr. of Jo', '2015-11-16'),
('PWRMDC/2015-16/32', 'Lining of W/Cs of O/L RD 5874-R Sukhchain Mr. of Lal Bai Dis', '2015-11-16'),
('PWRMDC/2015-16/33', 'Relining Lining of W/Cs of O/L RD 17847/17900-R of Mr. No. 1', '2015-11-16'),
('PWRMDC/2015-16/34', 'Relining Lining of W/Cs of O/L RD 441125/436710-R of Bathind', '2015-11-16'),
('PWRMDC/2015-16/35', 'Relining of W/Cs of O/L RD 77450-R of Ghuman Disty', '2015-11-16'),
('PWRMDC/2015-16/36', 'Relining of W/Cs of O/L RD 15228-R of Bhai Bakhtaur Br. of G', '2015-11-16'),
('PWRMDC/2015-16/37', 'Relining of W/Cs of O/L RD 16687-L of Khokhar S/Mr. of Mandi', '2015-11-16'),
('PWRMDC/2015-16/38', 'Relining of W/Cs of O/L RD 2607-L of S/Mr. No.1 of Joga Dist', '2015-11-16'),
('PWRMDC/2015-16/39', 'Relining of W/Cs of O/L RD 31131/29651-R of Kot Bhai Disty.', '2015-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_id` varchar(20) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `totalcost` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `type`, `Duration`, `totalcost`) VALUES
('101MAN14', 'repairing of canal', 'one year', 20035000),
('102BHA13', 'Construction of canal', '7 months', 30745980),
('103MAN14', 'repairing of canal', 'four months', 10023000),
('104MAN13', 'Construction of canal', '11 months', 10267000),
('105BHA13', 'Construction of canal', '6 months', 25067000);

-- --------------------------------------------------------

--
-- Table structure for table `supitem`
--

CREATE TABLE IF NOT EXISTS `supitem` (
  `supplier_id` varchar(20) NOT NULL,
  `items` varchar(20) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supitem`
--

INSERT INTO `supitem` (`supplier_id`, `items`) VALUES
('0086', 'Bricks'),
('0087', 'Bricks'),
('0096', 'cement'),
('0097', 'Cement');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` varchar(20) NOT NULL DEFAULT '',
  `name` char(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `phone` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `address`, `region`, `phone`) VALUES
('0086', 'Amrit Bricks', 'Chandigarh', 'Rajpura', 127),
('0087', 'ACC', 'shop no. 45, Bathinda road', 'Mansa', 127),
('0096', 'Ambuja cement', 'Railway Road', 'Sangrur', 127),
('0097', 'Bansal kilin', 'patiala road ', 'Dhuri', 127);

-- --------------------------------------------------------

--
-- Table structure for table `tender`
--

CREATE TABLE IF NOT EXISTS `tender` (
  `tender_no` varchar(20) NOT NULL DEFAULT '',
  `line_no` varchar(20) DEFAULT NULL,
  `estimatedcost` bigint(10) DEFAULT NULL,
  `closing_d` date DEFAULT NULL,
  `opening_d` date DEFAULT NULL,
  PRIMARY KEY (`tender_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tender`
--

INSERT INTO `tender` (`tender_no`, `line_no`, `estimatedcost`, `closing_d`, `opening_d`) VALUES
('PWDRM/201314/138', 'PWDRM/201314/138', 20655000, '2013-05-07', '2013-05-02'),
('PWDRM/201314/325', 'PWDRM/201314/325', 20134900, '2013-07-02', '2103-07-09'),
('PWDRM/201314/569', 'PWDRM/201314/569', 17654780, '2013-02-07', '2013-02-01'),
('PWDRM/201314/675', 'PWDRM/201314/675', 11234500, '2013-02-10', '2013-02-03'),
('PWDRM/201415/832', 'PWDRM/201415/832', 31597000, '2014-03-17', '2014-03-12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
