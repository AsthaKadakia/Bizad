-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2013 at 03:15 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `name` varchar(50) DEFAULT NULL,
  `phn` varchar(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `day` int(2) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` int(10) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `registrationno` int(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phoneno` int(15) NOT NULL,
  `cemail` varchar(25) NOT NULL,
  `website` varchar(25) NOT NULL,
  `recoveryemail` varchar(25) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `phn`, `email`, `password`, `firstname`, `lastname`, `day`, `month`, `year`, `gender`, `companyname`, `registrationno`, `street`, `city`, `district`, `state`, `country`, `phoneno`, `cemail`, `website`, `recoveryemail`, `ques`, `ans`) VALUES
('astha', '9', 'aj23kadakia@gmail.com', '12345', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('dakshi', '5624982498', 'dakshi@gmail.com', '9039', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('dimple', '9998622132', 'dimpleprajapati@gmail.com', '3563', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('jignesh', '9998622132', 'jmkadakia@gmail.com', '4447', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('kruti patel', '9998622132', 'krutipatel@gmail.com', '2547', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('smith', '9998622131', 'smitjshah@gmail.com', '3153', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
