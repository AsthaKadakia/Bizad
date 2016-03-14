-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2013 at 02:53 PM
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
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `advertisementID` int(50) NOT NULL,
  `CategoryID` int(50) NOT NULL,
  `AdsTitle` varchar(50) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `OwnerName` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Phone` int(11) NOT NULL,
  `tag` varchar(25) NOT NULL,
  `URL` varchar(50) NOT NULL,
  `ImageID` int(50) NOT NULL,
  `CouponCode` int(6) NOT NULL,
  PRIMARY KEY (`advertisementID`),
  KEY `SelectCategory` (`CategoryID`,`ImageID`),
  KEY `UploadImage` (`ImageID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`advertisementID`, `CategoryID`, `AdsTitle`, `Location`, `Description`, `OwnerName`, `email`, `Phone`, `tag`, `URL`, `ImageID`, `CouponCode`) VALUES
(1, 1, 'Cars On Road', 'Vadodara', 'There are so many cars running on streets of vadodara but the latest one is the BMW roizad model.', 'Astha', 'aj23kaakia@gmail.com', 656567, 'CARS..', 'www.carsjoy.com', 1, 456);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `AreaId` int(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `PinCodeNo` int(50) NOT NULL,
  `CityId` int(50) NOT NULL,
  PRIMARY KEY (`AreaId`),
  KEY `CityId` (`CityId`),
  KEY `CityId_2` (`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AreaId`, `AreaName`, `PinCodeNo`, `CityId`) VALUES
(1, 'Race Course Road', 390007, 1),
(2, 'Waghodia', 390019, 1),
(3, 'Old Padra Road', 390012, 1),
(4, 'Alkapuri', 390007, 1),
(5, 'Nizampura', 390002, 1),
(6, 'Gotri Road', 390021, 1),
(7, 'Subhanpura', 390007, 1),
(8, 'Jarod', 391510, 1),
(9, 'Akota', 390020, 1),
(10, 'Gorwa', 390016, 1),
(11, 'Goraj', 391761, 1),
(12, 'Manjalpur', 390011, 1),
(13, 'Vaghodia', 391760, 1),
(14, 'Fateganj', 390002, 1),
(15, 'O P Road', 390015, 1),
(16, 'Karelibaug', 390018, 1),
(17, 'Ellora Park', 390023, 1),
(18, 'VIP Road, Karelibaug', 390022, 1),
(19, 'Diwalipura', 390015, 1),
(20, 'Pratapnagar', 390009, 1),
(21, 'Munjmohda', 390020, 1),
(22, ' Mandvi', 390001, 1),
(23, 'Atlardra', 390012, 1),
(24, 'Vadodara H O', 390001, 1),
(25, 'Productivity Road', 390003, 1),
(26, 'Dabhoi', 391110, 1),
(27, 'Sayaji Ganj', 390005, 1),
(28, 'Kothi', 390001, 1),
(29, 'Dandia Bazar', 390001, 1),
(30, 'Pratapnagar', 390004, 1),
(31, 'VIP Road', 390006, 1),
(32, 'Ajwa Road', 390019, 1),
(33, 'Pani Gate', 390019, 1),
(34, 'Rc Dutt Road', 390005, 1),
(35, 'Raopura', 390001, 1),
(36, 'Jubilee Baug', 390001, 1),
(37, 'Sewasi', 391101, 1),
(38, 'Vasna Road', 390015, 1),
(39, 'Tarsali Road', 390009, 1),
(40, 'Bodeli', 391135, 1),
(41, 'Dabhoi Road', 390004, 1),
(42, 'Rajmahal Road', 390001, 1),
(43, 'Savli', 391770, 1),
(44, 'Sama Road', 390002, 1),
(45, 'Maneja', 390013, 1),
(46, 'Ankhol', 390019, 1),
(47, 'Chiku Wadi', 390005, 1),
(48, 'Bhailal Amin Marg', 390002, 1),
(49, 'Chowkhandi', 390017, 1),
(50, 'Makarpura Industrial Estate', 390010, 1),
(51, 'Bajwa', 391310, 1),
(52, 'Harni', 390022, 1),
(53, 'Varasia', 390022, 1),
(54, 'Chhani', 391740, 1),
(55, 'Makarpura', 390014, 1),
(56, 'Coimbatore', 641019, 1),
(57, 'Tiruvannamalai', 606603, 1),
(58, 'Padra', 391440, 1),
(59, ' Miyagam Karjan', 391240, 1),
(60, 'Fatepura', 390006, 1),
(61, ' Pavijetpur', 391160, 1),
(62, 'Sankheda', 391145, 1),
(63, 'Chani Road', 390002, 1),
(64, 'Navapura', 390001, 1),
(65, 'Tandalja Road', 390020, 1),
(66, 'Bagikhana', 390001, 1),
(67, 'Bhaili', 391410, 1),
(68, 'Sama', 390008, 1),
(69, 'Koyali', 391330, 1),
(70, 'Pratap Gunj', 390002, 1),
(71, 'Vatsar Road', 390013, 1),
(72, 'Kandari', 391210, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `blog` varchar(5000) NOT NULL,
  `imageid` int(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `imageid` (`imageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `name`, `email`, `title`, `blog`, `imageid`, `date`) VALUES
(1, 'astha', 'aj23kadakia@gmail.com', 'slkmfksld', 'hii i am astha', 1, '12/11/13');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int(50) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Business'),
(2, 'Movies');

-- --------------------------------------------------------

--
-- Table structure for table `cinemas`
--

CREATE TABLE IF NOT EXISTS `cinemas` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 54, 'PVR Cinemas ', 'Deep Multiplex, Behind Kiran Motors, Old Chani Road', NULL, '8800900009', 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls	'),
(2, 1, 'Inox Cinemas', 'Ellora Park, Race Course Circle, Gopalbaug', '(0265) 6191888', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls	,Online Booking , 4 Screens, Home Delivery of Tic'),
(3, 30, 'Cinemarc Vihar Cinemas', 'Opposite Yogini Vasantdevi Hospital, Pratapnagar Road', '(0265) 2422626', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls,No of Screens,	'),
(4, 14, 'Inox Cinemas', 'Level 4, Seven Seas Mall, Near Ipcl Circle', '(0265) 2783333', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls'),
(5, 1, 'Cinemax Cinemas ', '3rd Floor, Cine Mall, Near Natubhai Circle', '(0265) 2323726', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls'),
(6, 4, 'Cinemarc Cinemas', '3rd Floor, Galleria Mall, Next To Sir Sayajirao Nagar Gruh, Opposite D Mart', NULL, '9537771000', 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls,	No of Screens  '),
(7, 35, 'Rajhans Sagar Cinema ', 'Rajhans Business Hub, Near Raopura Tower, Raopura Road', '(0265) 2420042', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls	'),
(8, 4, 'Mukta Arts Cinemas', '3rd Floor, Centre Square Mall, Opposite Vadodara Central, Near Genda Circle', '(0265) 3025100', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls'),
(9, 6, 'Chandan Cinema', 'Near Bhimpura Chowkdi, Po Sevasi', '(0265) 6622787', NULL, 'Cinema Halls, Hindi Movies, Multiplex Cinema Halls'),
(10, 20, 'Alpana Cinema', 'Pratap Nagar Road', ' (0265) 2581435', NULL, 'Cinema Halls, Besharam (Hindi Movie), Arundati Ek Anokhi Kahaani (Hindi Movie),1 Screen '),
(11, 33, 'Natraj Cinema ', 'Beside St Depot, Chhani Road', '(0265) 2794183', NULL, 'Cinema Halls, Hindi Movies, Boss (Hindi Movie)	'),
(12, 27, 'Rajshree Cinema ', 'Opp Kalaghoda', '(0265) 2361263', NULL, ' Cinema Halls, Hindi Movies, Paapi Ek Satya Katha (Hindi Movie),1 Screen '),
(13, 30, 'Apsara Cinema ', 'R Tagore Road', ' (0265) 2436796', NULL, 'Cinema Halls, Hindi Movies, Baat Bann Gayi (Hindi Movie)'),
(14, 22, 'Aradhana Cinema ', 'Poolbari Naka, Opposite Ssg Hospital, Anandpura, Tilak Road, Salatwada', '(0265) 2426335', NULL, 'Cinema Halls, Hindi Movies, Grand Masti (Hindi Movie)'),
(15, 6, 'Priya Cinema', 'Near Gotri Water Tank, Nr Gokulnagar', '(0265) 2370158', NULL, 'Cinema Halls, Hindi Movies, Boss (Hindi Movie),1 Screen '),
(16, 26, 'Krishna Cinema', 'Opposite New Bus Stand', '(02663) 258999', NULL, 'Cinema Halls, Boss (Hindi Movie), Hindi Movies,1 Screen '),
(17, 1, 'Storm 5d Entertainment ', '3rd Floor, Center Square Mall, Near Genda Circle', ' (0265) 3043444', NULL, 'Cinema Halls, 5d Cinema Halls	'),
(18, 58, 'Krishna Cinema', 'Near S T Depot', '(02662) 222888', NULL, 'Cinema Halls, Gujarati Movies, MAA Baap Na Aashirwad (Gujarati Movie),1 Screen  '),
(19, 22, 'Prince Cinema ', 'Near SUR Sagar Lake, Behind Pratap Cinema', '(0265) 2410856', NULL, 'Cinema Halls, Gujarati Movies, Hindi Movies	,1 Screen  '),
(20, 51, 'Ravi Cinema ', 'Near Railway Station, Near Chhani Jakat Naka', '(0265) 2232286', NULL, 'Cinema Halls, Hindi Movies, Boss (Hindi Movie),1 Screen'),
(21, 59, 'Patel Cinema ', 'Near Juna Bazar, Miyagam Karjan Main Road', '(02666) 232008', NULL, 'Cinema Halls');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `CityId` int(50) NOT NULL,
  `CityName` varchar(50) NOT NULL,
  `StateId` int(50) NOT NULL,
  PRIMARY KEY (`CityId`),
  KEY `StateId` (`StateId`),
  KEY `StateId_2` (`StateId`),
  KEY `StateId_3` (`StateId`),
  KEY `StateId_4` (`StateId`),
  KEY `StateId_5` (`StateId`),
  KEY `StateId_6` (`StateId`),
  KEY `StateId_7` (`StateId`),
  KEY `StateId_8` (`StateId`),
  KEY `StateId_9` (`StateId`),
  KEY `StateId_10` (`StateId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityId`, `CityName`, `StateId`) VALUES
(1, 'Vadodara', 1),
(2, 'dasd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE IF NOT EXISTS `colleges` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 14, 'The Maharaja Sayajirao University', 'Opposite Food & Drugs Laboratory', '(0265) 2795600', NULL, 'Colleges, Polytechnic Institutes, Institutes For Engineering'),
(2, 32, 'Sigma Institute Of Technology & Eng', 'Bhakhroal, Nr.ajwa Road, Baroda', NULL, '9909976813', 'Colleges, Engineering Colleges, Institutes For Engineering'),
(3, 44, 'Navrachna College Of Education', 'Near Swati, New Sama Road', '(0265) 2784041', NULL, 'Colleges, B Ed Institutes, B Ed Colleges'),
(4, 21, 'Manubhai Patel Dental College & Hos', 'Vishwa Jyoti Ashram, Opposite Gujarat Tractors, Near Vishwamitra Bridge', '(0265) 2338055', NULL, 'Colleges, Private Hospitals, Hospitals, General Physician Doctors'),
(5, 58, 'Mk Amin Arts Science & Commerce Col.', 'Mk College Campus, Behind Shroff High School, Station Road', '(0265) 222997', NULL, 'Colleges, Arts Colleges'),
(6, 6, 'Gujarat Medical Education and Resea', 'Old Tb Hospital Campus, Gotri Main Road', '(0265) 2398008', NULL, 'Colleges, Medical Colleges, Institutes'),
(7, 14, 'Convent Of Jesus And Mary Girls Hig', '22 Camp', '(0265) 2791672', NULL, ' Colleges, Schools, English Medium Schools'),
(8, 18, 'JAI Ambe Vidyalaya', 'Near Ambe Circle,Balaji Nagar', '(0265) 2483267', NULL, 'Colleges, Schools, English Medium Schools'),
(9, 43, 'K J Institute OF Engineering And Te', 'K J Campus, Opposite Industrial Training Institute', '(02663) 222264', NULL, 'Colleges, Polytechnic Institutes, Engineering Colleges	'),
(10, 32, 'American School Of Baroda ', 'Opp Sayajipura Village, Nr Sagar Studio, Ajwa Nimeta Road', '(0265) 6545155', NULL, 'Colleges, Schools, CBSE Schools'),
(11, 27, 'Dean Government Medical College', 'Shg Hospital Compound', '(0265) 2427545', NULL, 'Colleges, Medical Colleges'),
(12, 13, 'K M Shah Dental College & Hospital', 'Behind Ayurvedic College, Udyog Nagar', '9825013374', NULL, ' Colleges, Hospitals, Medical Colleges'),
(13, 32, 'Pioneer Pharmacy Degree College ', 'Near Ajwa Cross Road, Near Sayajipura, National Highway No 8, Ajwa Nimeta Road', '(0265) 2971624', NULL, 'Colleges, Medical Colleges, Pharmacy Colleges'),
(14, 32, 'S D Patel B Ed College ', 'JAY Yogeshwar Town Ship, Near Hotel Khatti Emli', ' (0265) 2565633', NULL, 'Colleges, Colleges For Private B Ed'),
(15, 14, 'Polytechnic College', 'Near Shashtri Bruigh, Near Pandya Hotel', '(0265) 2783914', NULL, 'Colleges, Commerce Colleges, Diploma Courses'),
(16, 37, 'Baroda Homeopathic Medical College', 'Near Sonarkui & Opposite Xavier Technical Institute, Sindhrot Road', '(0265) 2370319', NULL, 'Colleges, Private Hospitals, Hospitals'),
(17, 29, 'Faculty Of Performing Arts', 'Performing Arts & Music College Building, Opp SUR Sagar Talao, Nr Nyay Mandir', '(0265) 2410194', NULL, 'Colleges, Music Classes'),
(18, 21, 'Shree Mahalaxmiji Mahila Homoeopath', 'B/S Gujarat Tractor, Near Vishwamitri Bridge', '(0265) 2322614', NULL, 'Colleges, General Physician Doctors, Gynaecologist & Obstetrician Doctors	'),
(19, 31, 'Raghukul Vidhyalay', 'Ring Road', '(0265) 6545824', NULL, 'Colleges, Hostels, Arts Colleges'),
(20, 5, 'Atharva Vidyalaya', 'Opposite Prakruti Resort, Chani Road', '(0265) 2760009', NULL, ' Colleges, Schools, English Medium Schools'),
(21, 14, 'Swami Vivekanand Engineering Colleg', 'Sanskar Education Campus, Opp Mahajan Society, Post Office Road', NULL, '9825081035', 'Colleges, Engineering Colleges, College Science'),
(22, 35, 'M M Shah College Of Commerce & Mana', 'Near Sursagar Lake, Near Maharani School', '(0265) 2418819', NULL, 'Colleges, Commerce Colleges, MBA Colleges'),
(23, 35, 'Maharani High School ', 'Near SUR Sagar Lake', '(0265) 2434295', NULL, 'Colleges, Schools, Commerce Colleges	'),
(24, 37, 'Indu College Of Medical Science', 'Ankodia, Sewasi Koyli Road', '(0265) 2233220', NULL, 'Colleges, Medical Colleges'),
(25, 16, 'Jawaharlal Nehru Homoeopathic Medic', 'Hiravanti Chambers 3rd Floor, Opp Arya Kanya Vidyalaya', NULL, '9825027298', 'Colleges, Medical Colleges'),
(26, 2, 'Sanskar Institute Of Technology ', 'Post Pipaliya', '(0265) 245245', NULL, 'Colleges, Engineering Colleges, Institutes for Diploma in Mechanical Engineering'),
(27, 2, 'Mahavir Consultancy', 'B 43 Rajdeep Society, Ne Parivar Char Rasta, Ring Road', NULL, '9909031517', 'Colleges, Engineering Colleges, Medical Colleges'),
(28, 16, 'Akshar Mahila B Ed College ', 'Devraj Building, Opp Arya Kanya School', '(0265) 2481877', NULL, 'Colleges, B Ed Institutes, B Ed Colleges'),
(29, 35, 'Chhaya Tailoring & Designing Colleg', '102, Girija Chambers, Sardar Bhuvan Lane', '(0265) 2414681', NULL, 'Colleges, Fashion Designing Institutes, Institutes'),
(30, 2, 'Baroda College Of Pharmacy', 'At & Po. Limda Tal', '(0265) 2633556', NULL, 'Colleges, Medical Colleges'),
(31, 55, 'S R College ', 'Dwarkesh Building, Near Lmp Motors, Makarpura Main Road', '(0265) 2637269', NULL, 'Colleges, B Ed Institutes, B Ed Colleges'),
(32, 13, 'Royale Business School ', 'Royale Knowledge City, Near Ajwa Gardens, Village Raval, Ajwa Nimeta Road', '(02668) 262096', NULL, 'Colleges, Schools, MBA Institutes'),
(33, 13, 'Sbks Medical Institute & Research C', 'Pipariatal', '(02668) 2245265', NULL, 'Colleges, Medical Colleges'),
(34, 22, 'H V Shroff Memorial High School ', 'Ladvada', '(0265) 2518055', NULL, 'Colleges, Schools, Arts Colleges'),
(35, 13, 'Baroda College Of Pharmacy', 'At & Po. Limda', '(02668) 2263355', NULL, 'Colleges, Pharmacy Colleges	'),
(36, 5, 'Aisect College For Information Tech', '42/43, Kobe House, Tapovan Society, Beside Kalpana Nursing Home', '9825044445', NULL, 'Colleges, MBA Institutes, College Science'),
(37, 5, 'Aecs Maruti College', '3- A, Vishranti Park Society, Opposite Ganesh Apartment, Jain Derasar Road, Delux Cross Road', '(0265) 2782712', NULL, 'Colleges, Engineering Colleges, Education Consultants'),
(38, 17, 'Vitthal Vidyalaya', 'Sardar Patel Karamsad Bhavan, Opp Sarabhai Chemical, Wadi Vadodara', '(0265) 2313218', NULL, 'Colleges, Schools, Educational Institutions'),
(39, 7, 'Vadodara Jilla Sarvodaya Seva Mandal Vad', '6, Manhar Park Soc. Opp. Jain Temple, High Tension Road Subhanpura', '(0265) 2280984', NULL, 'Colleges, Colleges For Private B Ed'),
(40, 4, 'Wigan & Leigh College ', 'Tulsi House, A/84, Kunj Society, B/H Vadodara Central, Nr Ghenda Circle', '(0265) 3254425', NULL, 'Colleges, MBA Institutes, Institutes For Hotel Management'),
(41, 61, 'Vanvasi Sewa Samaj B. Ed. College ', 'Pavi Jetpur, Tarapur Road', NULL, '9998362788', 'Colleges, B Ed Institutes, Colleges For Private B Ed	'),
(42, 13, 'Baroda College Of Pharmacy ', 'P O Limda', '(02668) 262327', NULL, 'Colleges, Pharmacy Colleges'),
(43, 4, 'VSS Education Institute', '506, Dwarkesh Complex, 6th Floor, Near Welcome Hotel', NULL, '9227900127', 'Colleges, MBA Institutes, B Ed Institutes'),
(44, 16, 'Taqsila College ', 'Narayan Cplx, Nr Karelibaug Post Office', '(0265) 2466980', NULL, 'Colleges, BCA Institutes'),
(45, 22, 'Aryakumar Mahasabha College Of Physical', 'Etola, Vadodara H O', '(0265) 2830074', NULL, 'Colleges, Institutes	'),
(46, 35, 'M M Shah College Of Commerce & Mana', 'Near Maharani School, North Sursagar Lake', '(0265) 2429811', NULL, 'Colleges, MBA Colleges, College BBA	'),
(47, 43, 'Sanskar Bharti College Of Education ', 'Natvar Nagar', '(02663) 292100', NULL, 'Colleges, B Ed Colleges'),
(48, 55, 'Fine Engineering ', 'A1/611/3, Gidc Estate', NULL, '9898031607', 'Colleges, Engineering Colleges, Institutes For Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `CountryId` int(50) NOT NULL,
  `CountryName` varchar(200) NOT NULL,
  PRIMARY KEY (`CountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryId`, `CountryName`) VALUES
(1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `faqID` int(50) NOT NULL,
  `name` varchar(25) NOT NULL,
  `Ques` varchar(500) NOT NULL,
  `email` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  PRIMARY KEY (`faqID`),
  UNIQUE KEY `faqID` (`faqID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqID`, `name`, `Ques`, `email`, `date`) VALUES
(2, 'harita', 'What is Bizad Online DIctionary?', 'aj23kadakia', '12/7/13'),
(3, 'astha', 'What is your name?', 'djk@gmail.com', '12/8//13'),
(4, 'dimple', 'What is online dic', 'dimpleprajapati@gmail.com', '18/9/13'),
(6, 'mona', 'what do you mean by posting advertisement?', 'mona@gmail.com', '10/12/13 12:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `faqans`
--

CREATE TABLE IF NOT EXISTS `faqans` (
  `faqid` int(50) NOT NULL,
  `ansid` int(50) NOT NULL,
  `ans` varchar(500) NOT NULL,
  PRIMARY KEY (`faqid`,`ansid`),
  KEY `ansid` (`ansid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqans`
--

INSERT INTO `faqans` (`faqid`, `ansid`, `ans`) VALUES
(2, 1, 'skfmsdvnifjnvjfenvkjsdnv'),
(3, 2, 'mwefkmrwkfneornvefnje');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `Areaid` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `HospitalId` (`id`),
  KEY `AreaId` (`Areaid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=369 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `Areaid`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 1, 'Sterling Hospital', 'Sterling Addlife India Limited, Opposite INOX Cinema', '(0265) 2354455', '9574544456', 'Hospitals, Dermatologists, Orthopaedic Surgeons'),
(2, 2, 'Shree Vallabhacharya Mahaprabhuji Hospital', 'Shree Vallabha Complex, Kaladarshan Char Rasta', '(0265) 2522970', '9825050679', 'Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(3, 3, 'Amrut Multispeciality Hospital', 'A 4, Bhagvati Park Soceity, Opposite Tube Company, Near Apollo Clinic', '(0265) 2357550', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(4, 4, 'Sujay Urological Hospital', '15, Vishwas Colony, Behind Alkapuri Bharat Petrol Pump', '(0265) 2355051', '9825300222', 'Hospitals, Private Hospitals, Urologist Doctors'),
(5, 5, 'Shraddha Eye Hospital ', '13 Ground Floor Surya Flats Tower A, Opposite Swaminarayan Nagar Society, Nizampura Main Road', '(0265) 2761526', '9825711979', 'Hospitals, Eye Hospitals, Ophthalmologists'),
(6, 6, ' Anusha Fracture And Orthopedic Hosp', '14/15, Race Course Park, Near Natubhai Centre', ' (0265) 2398900', '9825040708', 'Hospitals, Orthopaedic Surgeons, Physiotherapists'),
(7, 3, 'Dr Avanish Mehta', '7, Manisha Society, Near Manisha Cross Road', '(0265) 2252920', '9712003763', 'Hospitals, General Physician Doctors, Cardiologists'),
(8, 7, 'Sarthak Hospital', '5 Apsara Society, Near Silver Appartment, Subhanpura Main Road', '(0265) 2291145', '9033020604', 'Hospitals, General Physician Doctors, Cardiologists'),
(9, 8, ' Ashirvad Hospital And Occupational Helth', 'Above Bank Of Baroda, Halol Vadodara Road', NULL, '9998021818', 'Hospitals, Health Check UP Centres, X Ray Centres Netralaya 	 '),
(10, 9, 'Netralaya ', '101 102 Rubellite 1st Floor, Above Uninor Office Close To Saffron Restaurant Urmi Char Rasta', '(0265) 2310440', '9275175945', 'Hospitals, Eye Hospitals, Eye Clinics'),
(11, 10, 'Bhailal Amin General Hospital', 'Bhailal Amin Marg', '(0265) 2285555', NULL, 'Hospitals, Public Hospitals, General Physician Doctors'),
(12, 11, 'Kailash Cancer Hospital and Researc', 'Waghodia', '(02668) 268041', NULL, 'Hospitals, Ambulance Services, 24 Hours Ambulance Services'),
(13, 12, 'Global Baroda Hospital', 'Near Nalini House, Near Shreyas Vidhyalaya, Behind Icic Bank', '(0265) 3300400', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(14, 35, 'Shree Sir Sayaji General Hospita', 'Near Kala Godha Circle, Opposite Aradhana Cinema, Jail Road', '(0265) 2424848', NULL, 'Hospitals, Public Hospitals, Dermatologists'),
(15, 2, 'Dhiraj General Hospital ', 'Sumandep Vidyapeeth Compound, At & Post Pipariya', '(02668) 245264', NULL, 'Hospitals, Public Hospitals, Orthopaedic Surgeons'),
(16, 3, 'Baroda Heart Institute & Research', '44, Haribhakti Colony', '(0265) 2325444', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(17, 14, 'Narhari Hospital ', 'Narayan Bhavan, Near Kamati Baug', '(0265) 2794413', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons'),
(18, 3, 'The Apollo Clinic  ', '3/A, Bhagwati Park Society, Opp Tube Company, O P Road', '(0265) 2357333', NULL, ' Hospitals, General Physician Doctors, ENT Doctors'),
(19, 16, 'Kashiben Gordhandas Patel Childrens', 'Jalaram Temple Road', '(0265) 2463906', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(20, 17, ' Balaji Hospital ', 'Opp Vidya Vikas School, Subhanpura', '(0265) 2282111', NULL, 'Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors'),
(21, 16, 'Navrang Hospital ', 'Nr Amit Nagar Circle, Beside HDFC Bank, VIP Road', '(0265) 2492233', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(22, 9, 'Shubhechha Multispeciality Hospital ', '409/412, Shrinagar Society, Near Urmi Cross Road, Off Productivity Road', '(0265) 2356212', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons'),
(23, 12, 'Spandan Multi Speciality Hospital ', 'Beside V M C Ward Office No IV, Sindhwai Mata Road', ' (0265) 2631300', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(24, 19, 'Global Meridian Hospital ', 'Off Old Padra Road', ' (0265) 2355633', NULL, 'Hospitals, Private Hospitals, Dermatologists'),
(25, 1, 'Adarsh General Hospital ', 'Race Course Circle, Opposite ICICI Bank', '(0265) 2344137', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(26, 52, 'Metro Hospital & Research Institute', 'Near Kendriya Vidyalay, Harni Savli Road', '(0265) 2491414', NULL, 'Hospitals, Private Hospitals, Dermatologists'),
(27, 4, 'Venus Super Speciality Hospital', 'Abhinav Complex, 67 Vishwas Colony, Opposite Only Parathas, Near Chikuwadi, Jetalpur Road', '(0265) 2357987', NULL, 'Hospitals, Private Hospitals, Neurologists	'),
(28, 22, 'Jamnabai General Hospital ', 'Opposite SBI, Mandvi Panigate Road', ' (0265) 2518134', NULL, 'Hospitals, Public Hospitals, ENT Doctors'),
(29, 1, 'Dr Bharat S Modi', '101/103, Akashganga Complex, Above Pizza Hut, Race Course Circle', ' (0265) 2337172', NULL, ' Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(30, 30, 'Yogini Vasantidevi Arogya Mandir', 'Goya Gate Co Oprative Housing Society, Pratap Nagar Road', '(0265) 2433300', NULL, ' Hospitals, Private Hospitals, Acupressure Doctors	'),
(31, 9, 'Vadodara Institute Of Neurological', '99, Urmi Society, Opposite ESIC Hospital,Opposite Haveli, Prodctivity Road', '(0265) 2331343', NULL, 'Hospitals, Private Hospitals, Neurologists	'),
(32, 21, 'Ashutosh Hospital ', 'Near Dominos Pizza, Near Akshar Chawk', ' (0265) 2332727', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(33, 53, 'Premdas Jalaram Hospital', 'Swami Premdas Nagar, Behind RTO, Harni Ring Road', ' (0265) 2564785', NULL, 'Hospitals, Private Hospitals, Dermatologists'),
(34, 22, 'B M Parikh Foundation Trust Charita', 'Samal Becher Ni Pole, M G Road', '(0265) 3094889', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons'),
(35, 23, 'Pramukhshwami Hospital & Research', 'Behind Atladra Temple, Near Atladara Railway Station, Shastri Yagnapurushdas Marg', '(0265) 2680313', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons'),
(36, 54, 'Satyam Hospital', 'Opposite Zenith Tins, Near Rama Kaka Dairy, National Highway No 8', ' (0265) 3082081', NULL, 'Hospitals, Private Hospitals, Public Hospitals'),
(37, 21, 'Manubhai Patel Dental College & Hos', 'Vishwa Jyoti Ashram, Opposite Gujarat Tractors, Near Vishwamitra Bridge', '(0265) 2338055', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(38, 25, 'Navjeevan Nursing Home ', '28,29, Anand Nagar Society, 1, Deviknandan Flats, Near Mahadev Mandir', '(0265) 2342222', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(39, 16, 'Dwarkesh Hospital', '10/11, Shivali Society, Nr L & T Circle, VIP Road', '(0265) 2464999', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(40, 26, 'Baps Pramukh Swami Hospital ', '794/795, Pramukh Swami Marg, Near Pramukh Swami Chowk, Main Road', '(0265) 250016', NULL, 'Hospitals, Private Hospitals'),
(41, 12, 'Manjalpur Hospital', '102, Abhishek House, 1st Floor, Opp Tulsidham Apartment', '(0265) 2640030', NULL, 'Hospitals, Private Hospitals, Dermatologists'),
(42, 27, 'Shree Chimanbhai Patel Orthopaedic', 'Behind Railway Station, Jetalpur Road', ' (0265) 2310809', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons	'),
(43, 4, 'Uma Children Hospital ', '11, Sampatrao Colony, Opp Circuit House, R C Dutt Road', '(0265) 2341296', NULL, ' Hospitals, Private Hospitals, General Physician Doctors'),
(44, 5, 'Anand Hospital', 'Anuradha Apartment, Near Gelani Petrol Pump, Opposite Uma Coop Bank', ' (0265) 2780760', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(45, 28, 'Swadia Surgical Hospital ', 'Behind Kuber Bhuvan, Police Ground Road, Kothi Cross Road', ' (0265) 2420333', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(46, 5, 'Valia S Infertility Clinic ', '4-D, Tashkant Society, Near Deluxe Bus Stop, Highway No 8', '(0265) 2776330', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Nursing Homes'),
(47, 7, 'DR Malhar Dave', '103, Shivalik Complex, Near Sitaram Complex', '(0265) 2292166', NULL, ' Hospitals, Orthopaedic Surgeons'),
(48, 9, 'Kamat Kidney & Eye Hospital 	', '15, Vinayak Society, Opp Sndt College, Behind Akota Stadium, Kothi Road', '(0265) 2322463', NULL, ' Hospitals, General Physician Doctors, Diagnostic Centres'),
(49, 16, 'Balwant Rai Mehtas Nisargopchar Aro', 'Near Corporation Garden, Water Tank Road', '(0265) 2481623', NULL, 'Hospitals, Charitable Hospitals, Naturopath Doctors	'),
(50, 16, 'Mental Hospital Karelibaug ', 'Opp Jivan Bharti School', '(0265) 2466834', NULL, 'Hospitals, Psychiatrists, Psychologist Doctors'),
(51, 5, 'Urmil Children Hospital', '14,Green Park, Opp. JAY Complex', '(0265) 2780300', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(52, 22, 'Dr Kadams Eye Hospital & Institute', '101, Alankar Apartment, Dandia Bazar', ' (0265) 2431028', NULL, ' Hospitals, Private Hospitals, General Physician Doctors'),
(53, 6, 'Paramount Diagnostic & Research Cen', 'Paramount Complex, Near Natubhai Circle', '(0265) 2395772', NULL, 'Hospitals, Private Hospitals, Diagnostic Centres'),
(54, 18, ' Doshi Orthopadic Hospital ', 'Balaji Shopping Centre 1st Floor', '(0265) 2483516', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(55, 2, 'Parul Sevashram Hospital', 'At Post Limda', '(0265) 260223', NULL, 'Hospitals, Dermatologists, General Physician Doctors'),
(56, 20, 'Ashirwad Super Speciality Children', 'D2, Sarang Duplex, Sindhvai Mata Road', '(0265) 2635600', NULL, ' Hospitals, Private Hospitals, Paediatricians'),
(57, 4, 'Vedanta Super Specialty Hospital', '3, Shreeji Chambers, 1st Floor, Near Jetalpur Bridge, Sampatrao Colony, Jetalpur Road', '(0265) 6596333', NULL, 'Hospitals, General Physician Doctors, Neurologists	'),
(58, 31, 'Pranayam Lung Institute & Research Centredanta Sup', 'Lakulesh Park Society, Near Sadhu Vasvani School, New VIP Road', NULL, '9601834252', 'Hospitals, Private Hospitals, General Physician Doctors'),
(59, 16, 'Sangam Hospital', 'Opp Sangam Bus Stand, Sangam Cross Road, Harni Road', '(0265) 2482000', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(60, 6, 'DEV Hospital ', 'S 10 To S 15, DEV Commercial Centre, Nr Natubhai Center', '(0265) 6544441', NULL, ''),
(61, 32, 'Vinayak Hospital', '1, Navneet Park Society, Outside Panigate', '(0265) 2565666', NULL, ' Hospitals, Private Hospitals, Orthopaedic Surgeons	'),
(62, 33, 'Shree Vijay Vallabh Hospital', 'Chhipwad, Shree Vijay Vallabh Marg', ' (0265) 2560718', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(63, 12, 'Devpushp Hospital', 'Devpushp Complex, Baroda Dairy Vrajdham Road ., Tulsi Dhame Cross Road', '(0265) 2635804', NULL, 'Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors	'),
(64, 53, 'Shreeji Hospital ', 'Opposite Narsinhdham Complex, Behind Sangam Bus Stop', '(0265) 6549559', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(65, 6, 'Modi Nursing Home & I C C U ', 'A/101, Kalpavruksh Complex, 1 St Floor, Opp Geb Sub Station', '(0265) 2333809', NULL, 'Hospitals, General Physician Doctors, Cardiologists'),
(66, 7, 'Bharucha Hospital', 'Anjana Park Complex, Subhanpura Main Road', '(0265) 2392954', NULL, 'Hospitals, Private Hospitals, General Surgeon Doctors'),
(67, 4, 'Shanti Eye Hospital', '102, Shiv Shakti Complex, Sampatrao Colony, Behind Ivory Terrace', '(0265) 6623530', NULL, 'Hospitals, Private Hospitals, Eye Hospitals'),
(68, 29, 'B R Patel Hospital ', 'Opp Brahmansabha Hall, Pratap Road', '(0265) 2426112', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(69, 28, 'Naik Burns & Cancer Hospital ', 'Opposite Goverment Press, Kasar Street', '(0265) 2434788', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(70, 1, 'Nishtha Hospital ', '201/202, Cc Patel Square, Opp Geri Offic, Ellora Park Road', ' (0265) 2280088', NULL, ' Hospitals, Private Hospitals, Dermatologists'),
(71, 9, 'Dr Raman Handas Eye Hospital', ' B 5, Yogeshwar Park Society, Near Bhavan School, Makarpura Road', '(0265) 2644466', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(72, 9, 'Amish Hospital & Burns Centre ', '3, Amish Hospital, Ashapuri Society, Nr Jain Temple', ' (0265) 2337895', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(73, 16, 'Varun Children Hospital', '4, Suhas Society, Opposite Shastri School, Harni Road', '(0265) 2484103', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(74, 34, 'Sundaram Hospital', '9, Anand Society, Behind Express Hotel', '(0265) 2353034', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(75, 16, 'J J Medical Hospital', '84/86, Kala Kunj Society, Beside Aavkar Hall, Water Tank Road', ' (0265) 2460385', NULL, ''),
(76, 29, 'Shantadevi Hospital 	', 'Kismat Building, Jawaharlal Nehru Marg', '(0265) 2436644', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons	'),
(77, 12, ' EVE Womens Hospital', 'A-6, Dayalbagh Society, Near Deep Chamber, Opposite HDFC Bank', '(0265) 2644889', NULL, 'Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors	'),
(78, 7, 'Acharya Nursing Home & ICU', '88/89, Shree JAY Ambe Co Op Society, Opp Gorwa Work Shop', '(0265) 2390378', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(79, 35, 'Siddhi Surgical Hospital ', 'Anandam Plaza, Opp Vasant Balmandir, Bhaukale Lane', '(0265) 2432121', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(80, 6, 'Esic Hospital ', 'Near T B Hospital', '(0265) 2336421', NULL, 'Hospitals, Public Hospitals, Esis Hospitals'),
(81, 31, 'Omkar Orthopaedic Hospital ', 'Krishna Lila, Opp Mangalya Park, Harni Warsia Ring Road', '(0265) 2518866', NULL, ' Hospitals, General Physician Doctors, Orthopaedic Surgeons	'),
(82, 55, 'Dr Padmaja Pepalla ', '2/3/4, Samrudhi Resi Cum Plaza, Nr Makarpura Bus Depot', '9601273718', NULL, 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician Doctors'),
(83, 5, 'Kadams Eye Hospital & Institute', 'A-1, Indraprastha Complex, Main Road', '(0265) 2760906', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists'),
(84, 35, 'Dhvani ENT Hospital ', 'Near G P O, Behind Suryanarayan Garden', '(0265) 2428191', NULL, 'Hospitals, Private Hospitals, ENT Doctors	'),
(85, 53, 'Navjivan Hospital', 'D 64 Motinagar, Nr Premdas Jalaram Hospital, Warasia Kisanwadi Ring Road', '(0265) 2530705', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(86, 34, 'Vadodara Critical Childcare Centre ', '11-B, Sampatrao Colony, Above Bina Clinic', '(0265) 2335000', NULL, 'Hospitals, Paediatricians, Paediatric Surgeon Doctors'),
(87, 55, 'Vasu Healthcare PVT LTD ', '967/4, G I D C, Erda Road', '9227788550', NULL, 'Hospitals, Nursing Homes, Clinics'),
(88, 54, 'Shreeji Hospital & Trauma Care Cent', 'Opp Rama Kaka Dairy, Nr Geb, National Highway No 8', '(0265) 2760599', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons	'),
(89, 33, 'Shreeji Hospital ', '1st Floor, Vama Square, Outside Panigate, Ayurvedic Cross Road', '(0265) 2511480', NULL, ' Hospitals, Private Hospitals, General Physician Doctors'),
(90, 13, 'K M Shah Dental College & Hospital', 'Behind Ayurvedic College, Udyog Nagar', '9825013374', NULL, 'Hospitals, Colleges, Medical Colleges'),
(91, 17, 'Atmaj Eye Care & Phaco Centre ', 'Sudhan Apartment, Ground Floor, Opp Tejas School, Atmajyoti Ashram Road', '(0265) 2398618', NULL, 'Hospitals, General Physician Doctors, Eye Hospitals'),
(92, 32, 'Chiranjeev Children Hospital ', '9, Navneet Park, Panigate, Ayurvedic Teen Rasta', '(0265) 2560621', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(93, 3, 'Uro Care Hospital ', 'Near Utkarsh Balvadi, Near Vrajwadi Appartment, Behind Vaccine Institute, Sainath Marg, Gadapur Road', '(0265) 2353049', NULL, 'Hospitals, Private Hospitals, Paediatricians'),
(94, 1, 'Dr K R Buch Hospital', 'Prakruti Tower, Opposite INOX, Race Course Circle', '(0265) 2331361', NULL, ' Hospitals, Neurologists, Neurosurgeons	'),
(95, 3, 'Yuva Cosmetic Surgery & Skin Clinic', '201, Soho Complex, Malhar Point Cross Road', '(0265) 2340277', NULL, ' Hospitals, Private Hospitals, Dermatologists'),
(96, 6, 'Shivani Hospital ', '1 Harinagar, Opp Manan Complex', '(0265) 2398296', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(97, 1, 'Bhumi Nursing Home & Echo Doppler C', 'Shalimar Chambers, Opp Sardar Bhavan', ' (0265) 2426318', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(98, 6, 'Eye Care Hospital & Phaco Centre ', 'Abov Paramount C T Scan Centre, Gotri Race Course Road, Nr Natubhai Circle', ' (0265) 2397198', NULL, 'Hospitals, Private Hospitals, Eye Hospitals'),
(99, 30, 'Pratapnagar Railway Hospital ', 'Pratapnagar', '(0265) 2641385', NULL, ' Hospitals, General Physician Doctors, Orthopaedic Surgeons	'),
(100, 53, 'Nisarg Hospital ', 'B-1, Panchsheel Complex, Near Zaver Nagar, Harni Varasiya Road', '(0265) 2465679', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(101, 6, 'Devdeep Orthopaedic Hospital', 'Spring Field Complex, 24 Harinagar Society, Near Harinagar Bus Stop', '(0265)2386667', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(102, 10, 'DR Manjusha Yadav ', 'Anandvan Complex, Subhanpura Road, Gorwa Road', '(0265)2389694', NULL, 'Hospitals, General Physician Doctors	'),
(103, 4, 'Shree Hi Tech Eye Surgery Clinic', '229, Siddharth Complex, Rc Dutt Road', '(0265)3058610', NULL, 'Hospitals, General Physician Doctors, Eye Hospitals	'),
(104, 33, 'Dr Shabbir N Nandarvawala', 'Zainee Nursing Home, Opposite Ayurvedic College Road', '(0265)2566252', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(105, 33, 'Gayatri Maternity & Nursing Home ', '101, NanNandan Complex, Opposite Prabhat Bus Stop, Below Zaveri Nagar', '(0265)2517123', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Nursing Homes'),
(106, 4, 'Maitri Hospital', 'Labh Complex, Near New India Mill, Jetalpur Road', '(0265)2322112', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(107, 4, 'Avdhoot Neurosurgical Hospital ', 'A/1, Ranjan Society, Nr Suvarn Puri Society, B/H Swagat Restaurant, Chikuwadi, Jetalpur Road', '(0265)2324994', NULL, 'Hospitals, Private Hospitals, General Physician Doctors	'),
(108, 35, 'Kalpana Uma Clinic ', 'Nr Ahemdabadi Pole, Bhaukales Lane', '(0265)2434200', NULL, 'Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors'),
(109, 4, 'Kesha Eye & Orthopaedic Hospital ', 'B/30, Vishwas Colony, B/H Alkapuri Shopping Centre', '(0265)2338099', NULL, 'Hospitals, Private Hospitals, General Physician Doctors	'),
(110, 16, 'Baba Advanced Orthopaedic Hospital ', '57, Maikrupa Society, Mental Hospital Road', '(0265)2460320', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(111, 16, 'Prutha Maternity Hospital', '3,Shree Muktanand Society', '(0265)2465024', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Maternity Hospitals'),
(112, 28, 'Dr Mehta Eye Hospital', 'Opp Khadi Bhavan', '(0265)2432312', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(113, 54, 'Ankur Child Hospital ', 'Hareram Complex, Chhani Jakat Naka', '(0265)2772508', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(114, 35, 'Neurosurgical Hospital', 'Sanstha Vasahat, Pratap Road', '(0265)2431617', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(115, 6, 'Rutvij Hospital', 'Patel Plaza Apartment, Opp Harinagar Bus Stop', '(0265)2333873', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(116, 16, 'Infectious Diseases Hospital ', 'Opp Sadhanagar Society, Bahucharaji Cross Road', '(0265)2460800', NULL, 'Hospitals, Public Hospitals, Doctors Infection'),
(117, 5, 'Desai Urological & Maternity Hospital', 'Abhinav Complex, 2nd & 3rd Floor, Near Hanuman Tempal, Delux Cross Road', '(0265)2780878', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(118, 4, 'Ami Surgical Hospital', '51, Sampatrao Colony, Rc Dutt Road', '(0265)2314535', NULL, 'Hospitals, General Physician Doctors, Gastroenterologists'),
(119, 33, 'Government Ayurvedic Hospital ', 'Opp Panigate St Depot, Ayurvedic Teen Rasta', '(0265)2561872', NULL, 'Hospitals, Public Hospitals, Ayurvedic Body Massage Centres'),
(120, 6, 'Narhari Hospital', '17, Mit Nagar Society, Gotri Road, Near G E B Sub Station', '(0265)2371975', NULL, ' Hospitals, Private Hospitals	'),
(121, 2, 'Shri Vallabhachary Mahaprabhuji Hospita', 'Vallabh Complex, Kaladarshan Cross Road, Waghodia Road', '(0265)2522970', NULL, 'Hospitals, Private Hospitals	'),
(122, 37, 'Baroda Homeopathic Medical College', 'Near Sonarkui & Opposite Xavier Technical Institute, Sindhrot Road', '(0265)2370319', NULL, 'Hospitals, Private Hospitals, Colleges'),
(123, 17, 'Krishna Critical Child Care Centre', 'Chi Chi Tower A, Nr Lohana Samaj Wadi', '(0265)6507183', NULL, 'Hospitals, Hospitality Services'),
(124, 29, 'Samir Hospital', 'Lakripur, Dandia Bazar Main Road', '(0265)2465408', NULL, 'Hospitals, Orthopaedic Surgeons, Paediatricians'),
(125, 38, 'Eeshita Hospital ', 'Next To Sabri School, Saiyad, Vasna Rd', '(0265)2252769', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(126, 7, 'RatingsAbhishek Hospital ', '103, Shivalik Complex, Near Sitaram Complex', '(0265)2290102', NULL, 'Hospitals, General Physician Doctors, Orthopaedic Surgeons'),
(127, 39, 'Vatsalya Childrens Hospital', 'C/129, Hirabaug Society, Susen Tarsali Ring Road', '(0265)2631344', NULL, 'Hospitals, Private Hospitals	'),
(128, 17, 'Apcot Multispeciality Hospital Pvt', 'Behind Trident, Near CNG Petrol Pump, Ellora Park Three Road, Race Cours Road, INOX Road', NULL, '9727780685', 'Hospitals, Private Hospitals, General Physician Doctors'),
(129, 3, 'Divya Maternity Home', 'A-18/23, Gulab Vatika, Near Tandalaja Road', '(0265)2333592', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Endocrinologists'),
(130, 3, 'Ashirwad Hospital ', 'Gandhi Chowk', NULL, '9426416361', 'Hospitals, General Physician Doctors, Nursing Homes'),
(131, 42, 'Pooja Nursing Home ', 'Kunjal Plaza, C Tower, Kirti Sthmbh, Palace Road', '(0265)2431419', NULL, 'Hospitals, General Physician Doctors, Nursing Homes'),
(132, 41, 'Mangalam Orthopaedic Hospital ', '26 To 32, Nivedanam, Soma Talav Cross Road', '(0265)6542765', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(133, 38, 'Shishu Children Hospital', '1/5 Shivalaya 2 Complex, 2nd Floor, Nr Raneshwar Temple Opp Petrol Pump', '(0265)2250976', NULL, 'Hospitals, General Physician Doctors, Neonatologist Doctors'),
(134, 27, 'Ashirvad Hospital', 'Nr Nehru Bhavan, Opp Polo Ground, Palace Road', '(0265)2425580', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(135, 7, 'Rishabh Nursing Home', 'Opp Golden Silver Apts,Beside Pujer Complex, New I P C L Road', '(0265)2395577', NULL, 'Hospitals, General Physician Doctors, Nursing Homes	'),
(136, 2, 'Kaka Hospital', 'Prabhat Society, B/H Desk Plaza, Nr Zaver Nagar Bus Stop', '(0265)2520041', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(137, 9, 'Netra Eye Hospital', '101, Silver Coin, Shrenik Cross Rds', '(0265)2311679', NULL, 'Hospitals, General Physician Doctors, Eye Hospitals'),
(138, 10, 'Accident & Fracture Hospital ', '2, Chitrakoot Complex, Opp Alembic Nagar', '(0265)2281616', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(139, 6, 'S P Sanatorium Tb Hospital', 'Gotri', '(0265)2398108', NULL, 'Hospitals, Private Hospitals, Tuberculosis Doctors	'),
(140, 35, 'Chandan Hospital ', 'Old Navrang Talkies Compound, Opposite Hotel Utsav', '(0265)2430253', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(141, 43, 'Shri Ghanshyam Clinic & Hospital ', 'Opposite Reliance Petrol Pump', '(02667)222271', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, General Surgeon Doctors'),
(142, 26, 'Baps Pramukhswami Hospital', 'Near Shinor Chowkdi, ,Tal. Dabhoi', '(02663)2256522', NULL, 'Hospitals, Private Hospitals	'),
(143, 52, 'Kalavati Hospital ', 'Daji Nagar Society, Harni Warashia Ring Road', '(0265)2569505', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(144, 40, 'Shree Jalaram Eye Hospital ', 'Near Bodeli Police Station, Sankheda Main Road, Dr N A Parikh Road, Alipura Cross Road', '(02665)220933', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists'),
(145, 16, 'Om Neonatal & Children Hospital ', 'A 3, Wagheshwari Society, Behind SBI Bank, VIP Main Road', '(0265)2464213', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(146, 2, 'Indrapuri Hospital ', 'Uma Cross Road', '(0265)2519151', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(147, 34, 'Aashray Urology Institute ', '80/A, Sampatrao Colony', '(0265)2356295', NULL, 'Hospitals, Private Hospitals, Pathology Labs'),
(148, 3, 'Sparsh Hospital ', 'F6/101, Earth Complex, Akshar Chowk', '(0265)2326648', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(149, 55, 'Makarpura Hospital', 'Skylon Complex, Opp New Era School', '(0265)2655381', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(150, 10, 'Shrinath Hospital', 'Anandvan Complex, Subhanpura Road', '(0265)2395055', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(151, 29, 'Janani Maternity Hospital', 'Opposite Alankar Apartment, Near Prabhat Hotel', '(0265)2437793', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Maternity Hospitals	'),
(152, 3, 'Karishma Hospital ', '101, Vraj Square, Above Alka Restaurant', '(0265)2253066', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(153, 9, 'Life Care Hospital ', 'Sun Silver Appartment, 1st Floor, Nr Akota Garden, Productivity Road', '(0265)2350655', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(154, 1, 'Ambalal Sarabhai Foundation', '1st Floor, Bombay Shopping Centre, Above Ladla Jewellers', '(0265)2314381', NULL, 'Hospitals, Dermatologists, General Physician Doctors'),
(155, 17, 'Riddhi Hospital ', '3, Ellora Park, Opp Indraprasth, Nr Vegetable Market', '(0265)2389827', NULL, 'Hospitals, Private Hospitals, Psychiatrists	'),
(156, 38, 'Swastik Hospital ', 'B-1/2 New Narayan Nagar Society, Near Raneshwar Mahadev,Gotri', '(0265)2252021', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(157, 38, 'Urav Hospital', 'Shivdarshan Complex, Near Ruturaj Complex, Near Shabari School', '(0265)2254171', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(158, 2, 'Spandan Children Hospital ', 'Gaurinandan Complex, Uma Cross Road', '(0265)2514356', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(159, 52, 'Dhaval Nursing Home ', '39/40, Sahajanand Society, Harni Varasiya Ring Road', '(0265)2480235', NULL, 'Hospitals, General Physician Doctors, Nursing Homes'),
(160, 53, 'Batra Hospital', '2, 1st Floor, Chaturbhai Park, Near Essar Petrol Pump, Harni Warsia Ring Road', '(0265)2563066', NULL, 'Hospitals, Private Hospitals, General Surgeon Doctors'),
(161, 9, 'Sushrusha Hospital ', '3/A, Tarang Society, Beside Akota Atithi Gruh, Productivity Road', '(0265)2343548', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(162, 7, 'Rushikesh Maternity & Nursing Home ', 'Anjana Park Complex, Nr Vidhyavihar School, New Ipcl Road', '(0265)2393666', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(163, 27, 'Dr Ashok J Bhatt ', 'Near Hotel Surya Palace', '(0265)2361323', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(164, 5, 'Om Hospital & Patholaogy Lab ', '18, 1st Floor, Jal Jyoti Apartment, New Sama Road', NULL, '9825165045', 'Hospitals, Private Hospitals, General Physician Doctors'),
(165, 14, 'Esic Hospital Fategunj', 'Fiftiha Masjid, Navayad Main Road', '(0265)2792962', NULL, 'Hospitals, Esis Hospitals	'),
(166, 5, 'Param Orthopaedic Hospital ', '134, Arpan Complex, Opposite Delux Society, Nizampur Main Road', '(0265)2782828', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(167, 38, 'Astha Children Hospital ', 'B/12, New Narayan Nagar Society, Gorti Road', '(0265)2254114', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(168, 29, 'Saujanya Fracture & Orthopaedic Hospital', 'Near Alakh Lab, Piramitar Road', '(0265)2436790', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(169, 12, 'Axi Hospital', 'Nr Shreyas Vidhyalaya, Opp Janshakti Circle, Lalbaug Manjalpur Road', '(0265)2646379', NULL, 'Hospitals, Private Hospitals, Ophthalmologists'),
(170, 6, 'Sai Orthopaedic Hospital ', '42-43, Kishan Complex, Opp Yash Complex', '(0265)2371300', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(171, 58, 'Jivan Jyot Hospital & ICU ', 'B/H Pranam Agarbatti Factory', '(02662)226227', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(172, 28, ' Jay Hospital ', 'Kasar Faliya, Opp . Govt Press, Behind Indu Blood Bank', '(0265)2432854', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(173, 6, 'Kadji The Care', '301-401 / 15 Shreeji Krupa Society, Near Tb Hospital,Behind Kalpvriksh   Complex', '(0265)3261994', NULL, 'Hospitals'),
(174, 62, 'Bodeli Dhokalia Public Hospital ', 'Natvarlal Parikh Road', '(02665)220468', NULL, 'Hospitals, Public Hospitals, Orthopaedic Surgeons'),
(175, 2, 'Samvedan Multispeciality Hospital ', 'Himalaya Complex 2, Opposite Vallabh Vidya Temple, Gurukul Cross Roads,   Waghodia Dabhoi Ring Road', '(0265)6540280', NULL, 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician Doctors	'),
(176, 9, 'Vraj Children Hospital', 'Sumant Park, Opposite Shrenik Park, Near Akota Stadium, Productivity Road', '(0265)2354141', NULL, 'Hospitals, Private Hospitals, Paediatricians'),
(177, 5, 'Ashish Hospital ', '15, Green Park Society, Nr Deluxe Char Rasta', '(0265)2780368', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(178, 29, 'City Surgical Hospital', 'Amisadan Hospital, Opp Maharashtra Lodge, Pratap Road', '(0265)2439190', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(179, 35, 'Baba Orhtopaedic Hospital ', 'Opp Navrang Complex, Utsav Hotel', '(0265)2425566', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(180, 12, 'Nidaan Children Hospital', '202, 2nd Floor, Atria Complex 2, Rajendra Society, Opposite Shreyas High School', '(0265)2644217', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(181, 6, 'Madhuvan Maternity & Eye Hospital ', '101/102, Kailash Apartment, Opposite Harinagar Water Tank, Harinagar', '(0265)2350352', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(182, 2, 'Mahavir Hospital ', 'A 6, Kiran Nagar, Opp Vrundavan Bus Stop', '(0265)2511375', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(183, 35, 'Krishnashraya Hospital ', 'Sanstha Vasahat, Pratap Road', '(0265)2412600', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(184, 35, 'Parul Maternity Hospital ', 'Sitaram Vado', '(0265)2459132', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(185, 22, 'Esic Hospital Bhutdijapa ', 'Bhutdi Jhapa', '(0265)2412435', NULL, 'Hospitals, Esis Hospitals'),
(186, 32, 'Sarveshwar Hospital ', 'Opp. Navjivan Post Office.', '(0265)2514266', NULL, 'Hospitals, General Physician Doctors, Ambulance Services'),
(187, 9, 'Sanjiv Nursing Home', 'A 16, Parth Housing Complex, Nr Akota Garden', '(0265)2314908', NULL, 'Hospitals, General Physician Doctors, Cardiologists'),
(188, 40, 'Bodeli General Hospital ', 'Taluka Sankheda, Alipura Dabhoi Cross Road', '(02665)2220713', NULL, 'Hospitals, Private Hospitals, Dermatologists	'),
(189, 35, 'Sant Surgical Hospital ', 'Sainath Tower, Kharivav, Gpo Road', '(0265)2424901', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(200, 23, 'Ramkrishna Paramhansa Hospital ', 'At & Post Kalali,Taluka & Distric', '(0265)2680702', NULL, 'Hospitals, Private Hospitals, Nursing Homes	'),
(201, 54, 'Shubh Hospital ', 'Vidhya Vihar Society, Channi Jakat Naka, New Sama Rd, Nr Abhilasha Cross Rd', '(0265)2771976', NULL, 'Hospitals, Private Hospitals, General Physician Doctors	'),
(202, 32, 'MAA Hospital ', 'A-8-9, Shree Hari Township, Sayaji Park', '(0265)2971497', NULL, 'Hospitals, Private Hospitals	'),
(203, 32, 'Narayan Eye Hospital ', 'Ambar Complex, Opp Mahavir Hall', '(0265)2521722', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists'),
(204, 55, 'Komal Children Hospital ', 'Lucky Apartments, A Block, Nr Vimal Society, Opp ONGC, Makarpura Road', '(0265)2653004', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(205, 9, 'Vadilal Eye Hospital & Medical Center', 'A/23, Shrinagar Society, Opp Silver Oak Building, Productivity Main Road, Shrenik   Park Cross Road', '(0265)2332424', NULL, 'Hospitals, Private Hospitals, Eye Hospitals'),
(206, 9, 'Vraj Hospital', 'Shree Complex, 2nd Floor, Opposite Punjab National Bank, Shrenik Park Cross Road', '(0265)6535615', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(207, 9, 'Sanjivani Eye Hospital ', '101, Ujjawal Complex, Opp Shrenik Park, B/S Akota Stadium', '(0265)6538212', NULL, 'Hospitals, General Physician Doctors, Eye Hospitals'),
(208, 29, 'Sankalp Hospital ', '1st Floor, Shri Ramway Plaza, Kharivav Road', '(0265)2439646', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(209, 27, 'Sanjiv Hospital ', 'Near Railway Station, B/H Madrass Cafe', '(0265)2793765', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(210, 24, 'Aids Control', 'Vadodara H O', '1051', NULL, 'Hospitals, HIV Hospitals'),
(211, 63, 'Vraj Hospital', '1st Floor, Yakshshree Complex, Near Keya Motors, Chhani Jakat Naka, Chani Road', '(0265)3014948', NULL, 'Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors'),
(212, 44, 'Riddhi Children Hospital', 'Raghukul Shopping Centre, 1st Floor, New Sama Road, Abhilasha Cross Road', '(0265)2713205', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(213, 14, 'Madhuram Hospital ', 'Next To Punjab Natinal Bank, Beside Seven Seas Mall', '(0265)2791231', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors'),
(214, 17, 'Sanjivani Medical Nursing Home ', '41/215, Opp Shakti Farsan, Above Moon Video Library, Race Cource Road', '(0265)2396215', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(215, 7, 'Paavan Hospital', 'First Floor,Shubhlaxmi Complex,Beside B.m.c.chambers,Subhanpura-Gorwa   Road,', '', '9898159435', 'Hospitals, Private Hospitals	'),
(216, 24, 'Balaji Hospital  ', 'Near Vidhya Vikas, School Ellora Park', '(0265)2438275', NULL, 'Hospitals, Private Hospitals	'),
(217, 7, 'Manusmruti Polyclinic Hospital ', 'Near Sitram Complex,Behind Ellora Park,Subhanpura Talav Vadi', '(0265)2397799', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(218, 12, 'Ankur Maternity Hospital', 'Opp Sarang Duplex, Nr Indra Complex, Sindhwai Mata Road', '(0265)2651799', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(219, 6, 'Anand Hospital', '161/162, Gangotri Complex, 1st Floor, Opposite Yash Complex', '(0265)2370007', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(220, 32, 'M S Pathak Homeipathic Medical Coll', 'Near Ajwa Nimeta Road, Sayaji Pura, N H No 8', '(0265)2971625', NULL, 'Hospitals, Private Hospitals, Colleges'),
(221, 32, 'Yesha Hospital', 'Amber Complex 1st Floor, Mahavir Hall Char Rasta', '(0265)6957927', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(222, 16, 'Kavya Womens Care Hospital ', 'Shripad Apartment, Opp Brightday School, VIP Road', '(0265)2487280', NULL, 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician '),
(223, 29, 'Krishna ENT Hospital', 'Ishwar Sadan, Opposite Lakdi Pool, Dandia Bazar Main Road', '(0265)2459511', NULL, 'Hospitals, Private Hospitals, ENT Doctors'),
(224, 4, 'Kailash Hospital ', 'Kailash Complex, Nr Mahadev Temple, Productivity Road', '(0265)2356061', NULL, 'Hospitals, Private Hospitals, Chest Specialist Doctors'),
(225, 9, 'Srushtil Hospital ', 'Rajvi Complex, Opp Akota Garden, Akota Grden Cross Road', '(0265)2333661', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(226, 9, 'Harsh Hospital ', '50, Samrajya Society 1, Munj Mahuda Road', '(0265)2313002', NULL, 'Hospitals, Private Hospitals, Dermatologists	'),
(227, 10, 'Gorwa Hospital ', 'Amin Chambers, Nr Gorwa Police Station, Nr Bapu Dargah', '(0265)2280299', NULL, 'Hospitals, Private Hospitals, ENT Doctors'),
(228, 5, 'Om ICU & Hospital ', '15, Green Park Society, B/S Anand Hospital, Deluxe Cross Road', '(0265)2786438', NULL, 'Hospitals, Private Hospitals, Cardiologists'),
(229, 5, 'Bhavesh Patel Hospital', '5/B, Indraprasth Complex, Above TVS Showroom, Opposite Swaminarayan Nagar, Nizampura Main Road', '(0265)2772836', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(230, 17, 'Tanvi Hospital', 'G/03, Chichi Tower A', '(0265)2290655', NULL, 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician   Doctors	'),
(231, 35, 'Nidhi Heart Cure Centre ', 'Mrudula Sadan, 2nd Floor, Next To Sansthavasahat, Opposite Maharashtra Lodge, Dandia Bazar', '(0265)2437207', NULL, 'Hospitals, General Physician Doctors, Cardiologists'),
(232, 64, 'Esic Hospital Nava Pura', 'Navapura', '(0265)2433483', NULL, 'Hospitals, Esis Hospitals'),
(233, 66, 'Dr Munshi Hospital', 'Girdharnivas, Opp Usha Kiran', '(0265)2423663', NULL, 'Hospitals, Private Hospitals	'),
(234, 6, 'Krishna Nursing Home ', 'Rain Plaza, Near Geb Sub Station', '(0265)2351935', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(235, 6, 'Arman Children Hospital', 'Kishan Complex, Opp Gotri Police Station', '(0265)6993300', NULL, 'Hospitals, Paediatricians'),
(236, 2, 'Baroda Life Line Hospital ', 'Near Soma Talav, Opposite Bharat Petrol Pump, Dabhoi Waghodia Ring Road, Mahesh Nagar', '(0265)6582111', NULL, 'Hospitals, General Physician Doctors, Diagnostic Centres'),
(237, 45, 'Ashray Nursing Home ', 'B-3/1, Shri Ambika Niketan Society, Maneja Road', '(0265)2630650', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Nursing Homes'),
(238, 7, 'Paavan Hospital ', '101,102, Subhanpura Gorwa Road,Sidhnath Road', '(0265)2292156', NULL, 'Hospitals, Private Hospitals	'),
(239, 2, 'Shree Vallabh Hospital', 'Beside LPG Gas Station, Parivar Cross Road, Waghodia Dabhoi Ring Road', '(0265)2510710', NULL, 'Hospitals, General Physician Doctors, Diabetologist Doctors'),
(240, 12, 'Siddhi Children Hospital ', '103, Radha Ksihan Appartment, Opposite Deep Chambers', '(0265)2658530', NULL, 'Hospitals, Paediatricians, Psychiatrists'),
(241, 55, 'SAI Krupa Hospital', '205-6, Silver Coin Apartment, Opp Bhavans, Makarapura Teen Rasta', '(0265)2651965', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(242, 2, 'Vraj Children Hospital', '101,Pushti Smruti Apt, Opp. Suryanagar Garba Ground, Ankhol', '(0265)2522360', NULL, 'Hospitals, Private Hospitals	'),
(243, 9, 'Vraj Hospital', '2nd Floor Shree Complex, Shrenik Park Char Rasta', '(0265)6535315', NULL, 'Hospitals, Private Hospitals	'),
(244, 16, 'Astha Hospital', '110 & 112, Konark Complex, Opp. Avkar Hall, Water Tank Road', '(0265)2793698', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(245, 1, 'Dr Mehta Eye Hospital', 'Indraprasth, Ground Floor, Opp INOX, INOX Road', '(0265)2334412', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(246, 10, 'Anand Multispeciality Hospital', 'B Tower Sundervan Complex, Nr Gorwa ITI, B/S Iocl Petrol Pump', '(0265)3087666', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(247, 42, 'Shrey Nurshing Home', 'Nairuti Appartment, Opposite Khanderao Market', '(0265)2439099', NULL, 'Hospitals, General Physician Doctors, Nursing Homes'),
(248, 5, 'Gunjan Hospital', 'A/F 2, Indraprashth Complex, Opp Swaminarayan Nagar, Abov TVC Showroom, Nizampura   Main Road', '(0265)2776849', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(249, 14, 'Siddharth Hospital', 'Behind Kalyan Cafe', '(0265)2791557', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(250, 17, 'Vallabh Park Hospital ', 'A-2/115, Vallabh Park, Near Hariom Nagar', '(0265)2390309', NULL, 'Hospitals, Private Hospitals, Dermatologists	'),
(251, 5, 'Ashirwad Maternity & Surgical Hospital', 'B - Indraprastha Complex, Opposite Swaminarayan Nagar, Chhani Main Road', '(0265)2761953', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(252, 5, 'Aayush Orthopaedic Hospital & Joint', 'Opposite Police Parade Ground,Near Dhvani Medical Store, Kharivav Road,Gpo Lane', '(0265)2410185', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(253, 16, ' Ankur Hospital', '1st Floor, Vip Complex, Opposite Jodhpur Sweet, Vip Road', '(0265)2486518', NULL, 'Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors'),
(254, 31, 'Shail Clinic & Nursing Home ', 'Chaturbhai Park, Near Essar Petrolpump, Warashiya Ring Road', '(0265)2561954', NULL, 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician  Doctors	'),
(255, 41, 'Shree Krishna Surgical Hospital ', 'Tejal Apartment Pratap Nagar Road', '(0265)2414266', NULL, 'Hospitals, Private Hospitals	'),
(256, 52, 'Sameep Eye Hospital & Corneal Centr', 'Chaturbhai Park, 1st Floor, Opp Rajdhani Society, Harni Varasia Ring Road', '(0265)2564436', NULL, 'Hospitals, Private Hospitals, Eye Hospitals'),
(257, 6, 'ESI Hospital ', 'Gotri Road', '(0265)2326285', NULL, 'Hospitals, Esis Hospitals	'),
(258, 53, 'Chiranjeev Children''s Hospital ', 'Near Ayurve Dic Teen Rasta, O/S Panigate, Navneet Park', '(0265)2510766', NULL, 'Hospitals, Children Hospitals'),
(259, 42, 'Urja Orthopaedic Hospital', 'Ashwamegh Complex, Nr Khanderao Market, Opp Tempo Stand', '(0265)2434821', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(260, 42, 'Pinku Children Hospital', '101, Gangotri Apartment, Rv Desai Road', '(0265)2421740', NULL, 'Hospitals, Private Hospitals, Paediatricians'),
(261, 28, 'Sashwat Hospital ', 'Shivdhara Complex, Opposite Union Bank, Kothi Cross Road, Salatwada Road', '(0265)2424276', NULL, 'Hospitals, Private Hospitals, Ambulance Services'),
(262, 38, 'Shree Hospital & Maternity Home', 'Rajratan Complex, Near Raneshwar Mandir', '(0265)2252972', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(263, 6, 'Sunil Children Hospital ', '105, Patel Plaza', '(0265)2331836', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(264, 32, 'Kaka Orthopaedic & Maternity Hospital', 'First Floor,Uma Char Rasta,Waghodia Road', '(0265)2512770', NULL, 'Hospitals, Private Hospitals, Maternity Hospitals'),
(265, 63, 'C B Patel Health Centre', 'Opp Gurudwara', '(0265)2772291', NULL, 'Hospitals, Public Hospitals'),
(266, 35, 'Anil Hospital', 'Near Maharashtra Lodge, Pratap Road', '(0265)2434241', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(267, 35, 'Ashutosh Clinic ', '1st Floor, Sainath Chamber, Sardar Bhawans Lane', '(0265)2421388', NULL, 'Hospitals, Nursing Homes'),
(268, 21, 'V R Hospital ', 'F/16, Samrajya Society 1, Opp Hanuman Temple', '(0265)2354005', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(269, 52, 'Vatsalya Eye Hospital', 'Ananya Avenue, 1st Floor, Motinagar Char Rasta, Harni Varasia Ring Road', '(0265)2530658', NULL, 'Hospitals, General Physician Doctors, Eye Hospitals	'),
(270, 41, 'Vandana Hospital', '1st Floor,Rushikesh Towe, Pratapnagar Main Road', '(0265)2582221', NULL, 'Hospitals, Private Hospitals	'),
(271, 12, 'Shree Vitthalesh Hospital ', 'Alwa Naka, Gidc Road', '(0265)2656381', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(272, 6, 'Shreeji Hospital ', 'Ankur Avenu, 1st Floor, Opp Yash Complex', '(0265)3245504', NULL, 'Hospitals, Nursing Homes, Maternity Hospitals'),
(273, 6, 'Ashray Nursing Home', '55, Kishan Complex, Opposite Yes Complex', NULL, '9909944341', 'Hospitals, Gynaecologist & Obstetrician Doctors, Nursing Homes'),
(274, 20, ' Sakshi Children Hospital', 'Rushikesh Tower First Floor, Nr Gita Mandir,B/S Daliya Patel Wadi', '(0265)2582516', NULL, 'Hospitals, Paediatricians, Children Books'),
(275, 2, 'Samarpan Hospital', 'Aditya Plaza, 1st Floor, Nr Zaver Nagar Bus Stop', '(0265)2570570', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(276, 39, 'Satya Hospital ', 'S-1/102 Nandanvan Complex, Opp Motinagar 2, Sussen Tarsali Ring Road', '(0265)2631200', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(277, 53, 'Anuj Children Hospital ', 'Opp Rajdhani Society, Harni Varsia Ring Road', '(0265)2564745', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(278, 1, 'Mahi Burns & Plastic Surgery Hospital ', 'fhdfhjfgh', '(08225)2422522', NULL, 'Hospitals, Private Hospitals	'),
(279, 9, 'Dr Banerjee Reshmi ', 'Shyamal, Bh Rajeev Tower, Old Padra Road', '(0265)2339994', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(280, 1, 'Ellorapark Hospitals Pvt Ltd', 'Sheel Commercial Complex, Nr Indraprasth, INOX Road', '(0265)2344447', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(281, 54, ' Smita Surgical Clinic ', '1st Floor, Hare Krishna Complex, Chhani Jakat Naka', '(0265)2771644', NULL, 'Hospitals, Private Hospitals, General Surgeon Doctors'),
(282, 10, 'Sahyog Surgical Hospital ', 'JAY Satyanarayan Society, Near Gorva ITI, Opposite Datar Dargah, Opposite Sahyog Society', '(0265)2280201', NULL, 'Hospitals, Orthopaedic Surgeons, Cardiologists'),
(283, 16, ' Sachi Hospital ', 'Karelibaug', '(0265)2466171', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons	'),
(284, 16, 'Par Helth Care ', '6,Harish Nagar, Nr.brahambhatt Chhatralaya', '(0265)5597019', NULL, ' Hospitals, Homeopathic Clinics, Clinics'),
(285, 16, 'Nirman Orthopaedics Pvt. Ltd.', '5/B Nivrutti Colony, Bahucharaji Road', NULL, '9824261861', 'Hospitals, Private Hospitals	'),
(286, 65, 'Welfare Trust ', '10, Shifa Complex, Ground Floor', '(0265)2322281', NULL, 'Hospitals, Public Hospitals, Welfare Organisations'),
(287, 27, 'Dr V C Patel ', 'Nr Railway Station', '(0265)2794797', NULL, 'Hospitals, Private Hospitals	'),
(288, 27, 'Shivam Homeopathic Clinic', '106, Garden View Chamber, Kala Ghoda Circle', '(0265)2361764', NULL, 'Hospitals, Private Hospitals, Homeopathic Doctors'),
(289, 47, 'AUM SAI Retina Care Centre', 'F/7, Kashivishehwar Tower - 4, B/H, Swagat Restaurant, Jetalpur Road', '(0265)2323430', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists	'),
(290, 10, 'Netradeep Eye Hospital ', '7, Chitrakut Flat, Opposite Ambika Complex, Gorwa Refinery Road', '(0265)2282308', NULL, 'Hospitals, Private Hospitals, Eye Hospitals	'),
(291, 10, 'Umiya Hospital & Iccu ', 'A/41, Radhakrishna Society, Opp Sahyog Baug, Gorwa Refinery Road', '(0265)2285494', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(292, 44, 'Amar Nursing Home ', 'Amar Nursing Home, 1st Floor, Amar Plaza, Chanakyapuri Road', '(0265)2791407', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(293, 10, 'Pallav Maternity & Nursing Home ', 'Anandvan Complex, New I P C L Road', '(0265)2395656', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(294, 5, 'Radhe Hospital', 'K-7, Hare Ram Hare Complex, Ground Floor, Chhani Jakat Naka Circle', '(0265)2762074', NULL, 'Hospitals, Private Hospitals, Diagnostic Centres'),
(295, 5, 'Aum Intensive Care Unit ', 'Deluxe Char Rasta, Bhailal Amin Marg', '(0265)27864380', NULL, 'Hospitals, Private Hospitals	'),
(296, 17, 'Patanjali Hospital', '2nd Floor,Pushti Cplx, Near Hariom Nagar Bus Stop', '(0265)2394264', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(297, 17, 'Killol Children Hospital ', 'Anuradha Complex, 1st Floor, Opp Ellora Park Police Station, Nr Race Course Circle', '(0265)2281501', NULL, 'Hospitals, Private Hospitals, Paediatricians'),
(298, 5, 'Ellorapark Hospitals Pvt Ltd ', 'Dwarkesh Chambers, Near S R Patel Petrol Pump, Nizampura Main Road', '(0265)2788717', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(299, 35, 'Dr Yogesh Thakkar', 'Sanstha Vasahat, Pratap Road', '(0265)2438910', NULL, 'Hospitals, Orthopaedic Surgeons'),
(300, 35, 'Maruti Hospital ', '1st Floor, Pavandham Apartment, Behind Chittekhan Hanuman, Main Road', '(0265)2428026', NULL, 'Hospitals, Private Hospitals, General Surgeon Doctor'),
(301, 16, 'Diva Hospital ', 'Near Amit Nagar Circle, VIP Road', '(0265)2486114', NULL, 'Hospitals, Private Hospitals, Paediatric Neurologists Doctors'),
(302, 35, 'Shree Maharani Chimanabhai Stree And Ba', 'Tarkeshwar, Nr Jubelibaug, Nr Prince Cinema', '(0265)2434927', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(303, 66, 'Shreejala Hospital ', 'Opp Raopura School No. 1 Behind Chittekhan Hanuman Temple, Bagikhana', '(0265)2414683', NULL, 'Hospitals, Private Hospitals	'),
(304, 35, 'Urja Burns Center', 'AMI Sadan, Opp. Maha Rastra Lodging, Pratap Road', '(0265)2406094', NULL, 'Hospitals, Hospital Accessory Dealers'),
(305, 4, 'Aathar Brain & Spinal Hospital', 'Near Laxmivilas Bank, Jetalpur Road', '(0265)2342159', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(306, 7, 'Gayatri Krupa Hospital', 'A/2 Sheetal Appartment', '(0265)2396655', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons	'),
(307, 52, 'Ameedeep Hospital', 'Narsinhadham Complex, Opposite Sangam Bus Stand, Harni Main Road', '(0265)2443911', NULL, 'Hospitals, Private Hospitals, Orthopaedic Surgeons'),
(308, 49, 'Harsic Childrens Hospital', 'Vithaldas Chamber, 2nd Floor, Sant Kabir Road', '(0265)2439164', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(309, 12, 'Jay Hospital', 'B/21, Gidc Colony, Opp PSI Hospital', '(0265)2645044', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(310, 12, 'Nursing Home ', '33/8, Shreejibaug Society, Prime Complex, Nr, Sitaba Ground', '(0265)2637359', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(311, 6, 'Samanvay Arogya Kendra', 'Vinoba Ashram, Near Water Tank Road, Behind Gayatri School', '(0265)2372593', NULL, 'Hospitals, Private Hospitals, Gymnasiums');
INSERT INTO `hospital` (`id`, `Areaid`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(312, 3, 'Rajvee Orthopaedic & Trauma Hospital', '101/111, Silver Plaza, Opp Rajvi Tower, Nr Tube Company', '(0265)2341721', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(313, 52, 'Sameep Children Hospital ', 'Near H R Petrol Pump, Chaturbhai Park, Harni Warasia Ring Road', '(0265)2570421', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(314, 50, 'Chirag Clinic & Nursing Home ', '124,Pavan Nagar, Gidc Colony', NULL, '9825054508', 'Hospitals, Nursing Homes, Clinics	'),
(315, 33, 'BMC Hospital ', 'Bavchwad', '(0265)2562010', NULL, 'Hospitals, Doctors-Physicians'),
(316, 32, 'Yash Hospital', 'A/8,Narayan Nagar Society, Behind New Depo.padra', NULL, '9825062890', 'Hospitals, Private Hospitals'),
(317, 53, 'Shanti Hospital ', 'F/14, Panchsheel Tenament, Near Jhaver Nagar, Harni Varasia Ring Road', '(0265)2491001', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(318, 52, 'R. Motwani Clinic ', 'Warshiya Road, R.t.o Road, Harni Colony', '(0265)2561407', NULL, 'Hospitals, Public Hospitals'),
(319, 51, 'Palash Hospital ', 'A/2,Bhakti Nagar,Novino - Tarsali Road,Makarpura', NULL, '9377958933', 'Hospitals, Private Hospitals	'),
(320, 58, 'Paras Hospital', 'Near-Dena Bank Road', '(02662)222381', NULL, 'Hospitals'),
(321, 26, 'Shivam Hospital ', 'Patel Waga', '(02663)2255129', NULL, 'Hospitals, Private Hospitals	'),
(322, 9, 'Sathvika Eye Hoshpital ', 'A/17, Parth Duplex, Near Akota Garden, Beside Radhakrishma Park', '(0265)6534664', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists	'),
(323, 1, 'Rinki Foundation ', 'Race Course Tower', '(0265)2313928', NULL, 'Hospitals, Private Hospitals, Eye Hospitals	'),
(324, 44, 'Sneh Children & Maternity Home', 'A 4, Gyankunj Society, Opp Mahakali Traders, New Sama Rd, Abhilasha Cross   Rds', '(0265)3021288', NULL, 'Hospitals, Gynaecologist & Obstetrician Doctors, Maternity   Hospitals	'),
(325, 35, 'Sashvat Clinic ', 'Kothi Pole', '(0265)2426939', NULL, 'Hospitals, Private Hospitals, General Surgeon Doctors'),
(326, 35, 'A Saatvik Eye Hospital ', '104,Apte Apartment, Behind Ushakiran Building, Karchikars Lane', '(0265)2425956', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists'),
(327, 35, 'Deep ICU ', 'Behind Maharani School,Near Sursagar', '(0265)2429127', NULL, 'Hospitals, Private Hospitals, Maternity Hospitals'),
(328, 22, 'V R Hospital', 'Ghantiada, Off Gendigate Road', '(0265)2421271', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(329, 35, 'Parikh Orthopaedic Hospital ', 'Opp Jubilee Garden, Raopura Road', '(0265)2434545', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(330, 1, 'Nirmay Hospital ', '7/A, Jayanand Society, Behind Alkapuri Club', '(0265)2340111', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(331, 1, 'Svidha Maternity Hospital ', 'Krishna Krupa, Opp Ellora Park, Police Chowky, Subhanpura', '(0265)2381383', NULL, 'Hospitals, Private Hospitals, Maternity Hospitals'),
(332, 1, 'Krishna Homeopathy Speciality Clinic & R', 'G7, Shree Dwarkesh Apartment, 92/A Sampatro Colony, Opp Circuit House, Laxmi   Hall Gali, R C Dutt R', '(0265)2321346', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(333, 2, 'Sparsh Orthopaedic Hospital ', 'Gurudev Complex 1st Floor, Nr Nalanda Water Tank, Kaladarshan Cross Road', '(0265)2510002', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(334, 50, 'Yash Hospital', 'B/22, Nandigram Socitey, Vadsar Road', '(0265)2651137', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(335, 50, 'Param Projects ', '991/2/D Gidc Estate', '(0265)2644675', NULL, 'Hospitals, Private Hospitals, Medical Equipments Dealers'),
(336, 33, 'Vardhman ENT Hospital', 'Opp Vama Square, O/S Panigate, Ayurvedic Crossing', '(0265)2572238', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(337, 66, 'Vraj Hospital Pvt. Ltd.', '1st Floor Yakshshri Complex', '(0265)27611781', NULL, 'Hospitals, Private Hospitals	'),
(338, 16, 'Pravin Gors Clinic', '3 Pragati Shopping Centre', '(0265)2461777', NULL, 'Hospitals, Private Hospitals	'),
(339, 27, 'MAA Children Hospital', 'Lalita Towers, Jetalpur Road', '(0265)2325454', NULL, 'Hospitals	'),
(340, 10, 'Sneh Nirmal Hospital ', '15 Sahkar Appartment, Panchvati', '(0265)2281090', NULL, 'Hospitals, Private Hospitals	'),
(341, 42, 'Balmangal Children Hospital ', '101, Aaram Complex, Nr Nehru Bhavan, Nr Polo Ground', '(0265)6552101', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(342, 7, 'Chirayu Children Hospital ', '4, 1st Floor, Golden Apartments, Opposite Pujer Complex', '(0265)6589729', NULL, 'Hospitals, Private Hospitals, Paediatricians	'),
(343, 29, 'Raghuvir Hospital ', 'Opp Bumiya Dary', '(0265)2418970', NULL, 'Hospitals, Private Hospitals	'),
(344, 24, 'Shree Kanth Nursing Home ', 'Jivabhai Park 2, Near Gayatri Petrol Pump, Undera, Refinary Road', NULL, '9925020603', 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician Doctors	'),
(345, 29, 'Dr Piyush Patel Facture & Orthopaedic Hospital', 'Shakuntal Jambubet, Khariwav Road', '(0265)2425720', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(346, 35, 'P & T Hospital ', 'B/H Gpo', '(0265)2433232', NULL, 'Hospitals, Private Hospitals, General Physician Doctors'),
(347, 29, 'Monal Surgical Hospital & Endoscopy', 'Near Brahmpuri Madhav Lodge, Behind Rajdhani Hotel', '(0265)2324991', NULL, ' Hospitals, Private Hospitals, General Physician Doctors'),
(348, 24, 'Dr B C Patel Nursing Home ', 'Vadodara H O', '(0265)2428788', NULL, 'Hospitals, Orthopaedic Surgeons, Nursing Homes'),
(349, 66, 'Nirmal Surgical Hospital', 'Nirmal Surgical Hospital', '(0265)3094777', NULL, 'Hospitals, Private Hospitals	'),
(350, 66, 'Surabhi Hospital', 'C-6 Honey Complex Gidc', '(0265)2427257', NULL, 'Hospitals, Private Hospitals	'),
(351, 24, 'Madhavi J Shah DR ', 'Vadodara H O', '(0265)2410807', NULL, 'Hospitals, Nursing Homes, Clinics'),
(352, 22, 'Bhumi Nursing Home ', 'Kilvani Naka, Bhutdi Jhapa', '(0265)2642301', NULL, 'Hospitals, Nursing Homes, 24 Hours Nursing Homes'),
(353, 14, 'Amar Nursing Home ', '1st Floor, Amar Complex, Sama, Chanakyapuri Road, Eme School', '(0265)2791407', NULL, 'Hospitals, General Physician Doctors, Gynaecologist & Obstetrician Doctors	'),
(354, 4, 'Bina Clinic Hospital ', 'B/11, Sampatrao Colony, Laxmi Hall Lane, R C Dutt Road', '(0265)2340231', NULL, 'Hospitals, Eye Hospitals, Ophthalmologists'),
(355, 52, 'Baroda ICU ', 'D 187/189, Dajinagar Society, 3rd Floor, Above Kalavati Hospital, Warasia Ring Road', '(0265)6566666', NULL, 'Hospitals, Private Hospitals, 24 Hours Chemists'),
(356, 12, 'Mahalaxmi General & Surgical Hospital ', 'Above Bank Of Baroda, Main Road', '(0265)2635216', NULL, 'Hospitals, Private Hospitals, General Surgeon Doctors'),
(357, 6, 'Singh Nursing & Children Hospital ', 'Kishan Complex, 1st Floor, Opp Yash Complex', '(0265)2370933', NULL, ' Hospitals, Private Hospitals, General Physician Doctors'),
(358, 16, 'Aesthetic Dental Clinic & Implant Centre ', 'Near Amit Nagar Circle, Beside HDFC Bank, VIP Road', '(0265)2492233', NULL, 'Hospitals, Dentists	'),
(359, 52, 'Shreeji Prasitu Gruh & Nursing Home ', 'Narsinhdham Complex, 1st Floor, Opp Sangam Bus Stand', '(0265)2483033', NULL, 'Hospitals, Nursing Homes, Home Nursing Services'),
(360, 58, 'Shreeji Hospital ', '20, Behind Indian Oil Petrol Pump', '(0265)223260', NULL, 'Hospitals, Private Hospitals	'),
(361, 58, 'Krishna Surgical Hospital & Trauma Care', 'A/7, Narayan Nagar Society, Opposite C B Pulse Mill, Behind New St Depot', '(02662)222135', NULL, 'Hospitals, Orthopaedic Surgeons, Paediatricians'),
(362, 2, 'AMI Hospital', '36,Bharat Nagar Society, Madodhar Road', '(02668)2262492', NULL, 'Hospitals, Private Hospitals	'),
(363, 40, 'Life Care Hospital', '1st Floor, Nilkanth Complex, Chhota Udepur Road, Alipura Char Rasta', '(02665)220054', NULL, 'Hospitals, Paediatricians, Multispeciality Hospitals	'),
(364, 40, 'Bodeli Primary Health Centre ', 'A-01, Near Juth Gram Panchayat Office, Alipura Road, Alikherwa', '(02665)221398', NULL, 'Hospitals, Private Hospitals	'),
(365, 27, 'Ashirwad Hospital ', 'Ashirwad Hosp, Opp Polo Grd, (Also serves VADODARA)', '(0265)2414959', NULL, 'Hospitals, Private Hospitals, Neurologists'),
(366, 7, 'Dr Archana Dwivedi', 'C/O Manav Maternity Hospital ,Gangotri Tnmt, Bh Saurabh Park(Also serves VADODARA)	', '(0265)2386708', NULL, 'Hospitals, Maternity Hospitals, Obesity Surgeon Doctors'),
(367, 1, 'Dr Rekha I Vassa ', 'Giriraj Hospital,1 Goyagate Society', '(0265)2433881', NULL, ' Hospitals, Private Hospitals, Gynaecologist & Obstetrician Doctors'),
(368, 4, 'Aabha Hospital ', '2nd Floor Status Avenue, Sampatrao Colony, Jetalpur Road(Also serves VADODARA)', '(0265)2327653', NULL, 'Hospitals, Private Hospitals, Hair Transplant Doctors');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 34, 'Revival Lords Inn Hotel ', 'Revival Lords Inn Hotel, Near Kalaghoda Circle Near Sayaji Gardens, University Road, Sayaji Ganj', '(0265) 3013545', '9374217275', 'Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000)'),
(2, 29, 'Hotel Vrundavan Residency ', 'Hotel Vrundavan Residency, Near Shiddhi Vinayak Mandir, Dandia Bazar Main Road', '(0265) 2458200', '9408355566', ' Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000)'),
(3, 4, 'Hotel Presidency Towers ', 'Next To National Plaza, R C Dutt Road', '(0265) 2340049', '8866775222', 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), 3 Star Hotels	'),
(4, 4, 'Hilltop Hotel ', 'Lalita Tower, 8 Floor, Near Rajpath Hotel, Behind Railway Station, Jetalpur Road', '(0265) 2355686', '9328456429', 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below)'),
(5, 3, 'Yahvi Hotels ', 'Behind GAIL India Near Manisha Cross Road', '(0265) 2350948', '9033004831', ' Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000), Hotels (Rs 3001 To Rs 4000)'),
(6, 4, 'Hotel Express Towers ', 'R C Dutt Road', '(0265) 3055000', '9227881058', ' Hotels, 4 Star Hotels, Hotels (Rs 3001 To Rs 4000),Laundry Service ,Cable/Satellite TV Service ,Int'),
(7, 4, 'Hotel Hampton By Hilton ', '14 Friends Co Op Society, Opposite Alkapuri Gymkhana', '(0265) 2303000', '9909924815', 'Hotels, 4 Star Hotels, Banquet Halls,72 Rooms,Laundry Service ,Cable/Satellite TV Service,'),
(8, 4, 'Hotel Savshanti Towers ', 'Opposite Circuit House, R C Dutt Road', ' (0265) 2334255', '9925013538', 'Hotels, Hotels (Rs 1001 To Rs 2000), 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),44 Rooms,Laundry Ser'),
(9, 35, 'Utsav Hotel Pvt Ltd', 'Navrang Complex Compund, Dandia Bazar, Manekrao Road', ' (0265) 2435859', '9825586233', 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 2001 To Rs 3000),Laundry Service,Cable/Satellite TV S'),
(10, 41, 'Hotel Lakeview ', '2nd Floor, Radhe Complex, Near St Depot, St Depot Road', '(02663) 255551', '9426336777', 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Lodging Services,15 Rooms,Laundry Service ,Cable/Satellite TV Service'),
(11, 27, 'Shri Krishna Hotel ', 'Amba Deep Building, Near Lalita Tower, Behind Railway Station', '(0265) 2326045', '9377241515', 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),Laundry Service, Cable/Satellite TV Service,24 hrs  	'),
(12, 4, '1589 Generation X Hotel ', 'Plot No 7, Sampat Rao Colony, Near P C Jewellers, Jetalpur Road', '(0265) 3071588', '9377158903', 'Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),'),
(13, 4, 'Hotel GRG', '33 Sampatrao Colony, Opposite Circuit House, R C Dutt Road', '(0265) 2341022', '8980209288', 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Hotels (Rs 2001 To Rs 3000),32 Rooms, Laundry Service,Cable/Satellite TV Service  '),
(14, 27, 'The Oasis ', 'Opposite BBC Towe', '(0265) 2222054,', '8347773365', 'Hotels, 3 Star Hotels, Restaurants,74 A C Rooms,Laundry Service ,Cable/Satellite TV Service'),
(15, 44, 'Riya Revti Party Plot And Banquet ', 'Opposite M S Hostel, Sama Savli Road', '(0265) 2713144', '9428423611', 'Hotels, Hotels (Rs 2001 To Rs 3000), Hotels (Rs 3001 To Rs 4000),11 Rooms,Laundry Service,Cable/Satellite TV Service'),
(16, 4, 'Royal Orchid Central Hotels ', 'Akota Munjmohda, Near Samrajya Gate No 2,Opposite Orizone Restaurant', '(0265) 2301234', ' 8511186800', ' Hotels, Hotels (Rs 2001 To Rs 3000), 4 Star Hotels,'),
(17, 29, 'NEW RAJDHANI HOTEL ', 'Near Fire Station, Near Nyay Mandir', '(0265) 2430116', '9998300987', 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),23 Rooms ,Tea/Coffee Maker,room safe(locker)'),
(18, 14, 'Tulsi Hotel ', 'Opposite Rosary High School, Pratap Gunj', '(0265) 2795331', '9376174930', 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Hotels (Rs 2001 To Rs 3000),Laundry Service,Internet Access,Tea/Coffee Maker '),
(19, 4, 'Hotel Harmony ', 'Shree Siddhivinayak Complex, Opposite Railway Booking Office, Faramji Road', '(0265) 2324184', '9825440101', 'Hotels, Hotels (Rs 2001 To Rs 3000), Hotels (Rs 3001 To Rs 4000)'),
(20, 14, 'Hotel Yuvraj ', 'Hotel Yuvraj, Next To Central Bus Depot, Opposite Station Road, Sayaji Ganj', '(0265) 2795252', '9428504147', 'Hotels, Hotels (Rs 1001 To Rs 2000), 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),Laundry Service,Cable/Satellite TV Service,Internet Access'),
(21, 4, 'Hotel Express Residency ', '18/19 Alkapuri Society, R C Dutt Road', '(0265) 3099000', NULL, 'Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000)	'),
(22, 16, 'Dash Continental Hotel', 'Dash Continental, Opp Bright School, V I P Main Road', ' (0265) 3952555', '8490970830', ' Hotels, Hotels (Rs 1001 To Rs 2000), 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),Laundry Service,Cable/Satellite TV Service Internet Access  ,'),
(23, 27, 'The Fern Residency', 'Near Central Bus Depot, Station Road, Sayaji Ganj', '(0265) 2792001', '8000501751', ' Hotels, Hotels (Rs 1001 To Rs 2000), 3 Star Hotels, Hotels (Rs 2001 To Rs 3000)'),
(24, 27, 'Sapphire Regency', 'Hotel Sapphire, Near Suraj Plaza', '(0265) 2361130', '9662534491', ' Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000)'),
(25, 35, 'Gita Lodge ', 'Gita Nivas Lodge, Opposite Pratap Cinema, Sursager Road', '(0265) 2427902', '9998050449', 'Hotels, Hotels (Rs 501 To Rs 1000), Lodging Services, Hotels (Rs 500 & Below),Laundry Service ,Cable/Satellite TV Service , 24 hours '),
(26, 27, 'Sayaji Hotels Ltd ', 'Sayaji Hotel, Opp Rajshreee Cinema, Kalaghoda', '(0265) 2363030', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),53 Rooms,Laundry Service,Cable/Satellite TV Service '),
(27, 27, 'Surya Palace Hotel', 'Opp Parsi Agyari', ' (0265) 2363366', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),Valet Parking '),
(28, 9, 'Gateway The Hotel', 'Near Akota Garden', '(0265) 2354545', NULL, ' Hotels, 4 Star Hotels, Hotels (Rs 8001 & Above),86 Rooms,Laundry Service ,Cable/Satellite TV Service '),
(29, 4, 'Welcom Hotel ', 'R C Dutt Road', '(0265) 2330033', NULL, 'Hotels, 5 Star Hotels, Hotels (Rs 8001 & Above),134 Rooms,Laundry Service ,Cable/Satellite TV Service '),
(30, 14, 'Ginger Hotel ', 'Survey 4, 2 B, Opposite Saffron Tower, Beside Methodist Church, Fateganj Camp Road', '(0265) 6633333', NULL, 'Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),100 Rooms, Laundry Service ,Cable/Satellite TV Service  '),
(31, 27, 'Hotel Surya ', 'Sayaji Ganj', ' (0265) 2226161', NULL, 'Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),78 Rooms ,Laundry Service,Internet Access'),
(32, 4, 'Tansha Comfort Residency ', 'Opposite Circuit House, R C Dutt Road', '(0265) 3088888', NULL, 'Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),48 Rooms,Laundry Service,Cable/Satellite TV Service '),
(33, 27, 'President Hotel', 'Nr Rajshree Cinema, Kalaghoda', '(0265) 2361246', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),34 Rooms,Laundry Service ,Cable/Satellite TV Service '),
(34, 3, 'Appusone Relish Hotel ', 'Near Hero Motocorp Showroom, Opposite Reliance Fresh, Akshar Chowk', '(0265) 6454545', NULL, ' Hotels, 3 Star Hotels, Hotels (Rs 2001 To Rs 3000),24 Rooms,Laundry Service ,Cable/Satellite TV Service'),
(35, 27, 'Apex International Hotel ', 'Opposite Sardar Patel Statue, Near Railway Station,Opposite Dariyden Ice Cream Parlour', '(0265) 2362551', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),40 Rooms ,Laundry Service ,Cable/Satellite TV Service'),
(36, 27, 'Ambassador Hotel', 'Ambassador Hotel, Nr Ambassador Sweet Mart', '(0265) 2362727', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),Laundry Service,Cable/Satellite TV Service,24 Hrs'),
(37, 2, 'AUM Health Resort', 'At & Po Jaffer Pura, Off Ajwa Road', '(0265) 2415293', NULL, 'Hotels, Hotels (Rs 2001 To Rs 3000), Resorts,12:00 noon,Dance Floor ,'),
(38, 27, 'Repose Hotel', '5th Floor, Nautilus Raj Trade Centre, Behind Sayajigunj Police Station', '(0265) 2363478', NULL, ' Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Hotels (Rs 2001 To Rs 3000),36 Rooms,Laundry Service,Cable/Satellite TV Service'),
(39, 5, 'Gaurav Hotel ', 'Next To Old Central Bus Depo Opp Railway Station', ' (0265) 2792001', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),34 Rooms , Laundry Service, Cable/Satellite TV Service'),
(40, 3, 'Siddharth Palace Hotel ', 'Opposite Avishkar Complex, Geb Colony', '(0265) 2339273', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Lodging Services, Hotels (Rs 2001 To Rs 3000)	,40 Centrall Ac Rooms,Laundry Service,Cable/Satellite TV Service  '),
(41, 27, 'P M Regency Hotel ', 'Near Sayajigunj Police Station, Near Surya Hotel', '(0265) 2361616', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000),40 Rooms ,Cable/Satellite TV Service,24 Hours  '),
(42, 52, 'Airport Hotel ', 'Airport Hotel, Opp Vadodara Airport, Harni Airport Road', '(0265) 2484455', NULL, ' Hotels, Hotels (Rs 2001 To Rs 3000), Hotels (Rs 3001 To Rs 4000), Hotels (Rs 4001 To Rs 5000),40 Rooms ,Laundry Service ,Cable/Satellite TV Service'),
(43, 4, 'Royal Hotel ', '37, Sampatrao Colony, Opposite Aamantran Restaurant, Race Cource Road', '(0265) 2353575', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000),25 Rooms,Laundry Service,Cable/Satellite TV Service'),
(44, 22, 'Mahi Valley Hotel & Resorts Ltd ', 'Village Sidhrot, Vadodara H O', '(0265) 6542866', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),12 noon , 20 KMS'),
(45, 27, 'Jal Sagar Hotel ', 'Opposite BBC Tower', '(0265) 2361110', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),38 Rooms,Laundry Service  ,Cable/Satellite TV Service'),
(46, 27, 'Rainbow Hotel ', '7th Floor,Commerce Centre', '(0265) 2363072', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),33 Rooms, Laundry Service ,Cable/Satellite TV Service'),
(47, 27, 'Amity Hotel ', 'Near Sardar Patel Statue', '(0265) 2361041', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000),Laundry Service ,24 Hrs ,7 Kms '),
(48, 54, 'Hotel Plazzo ', 'Near Dumad Cross Road, Vadodara By Pass, Dumad', NULL, '9327709977', 'Hotels, Hotels (Rs 1001 To Rs 2000), Banquet Halls,6 Rooms  , Laundry Service,Cable/Satellite TV Service'),
(49, 27, 'Prudent Hotel ', 'Monalisa Complex, 3rd & 4th Floor, Nr Dairy DEN Circle', ' (0265) 2363345', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),24 Rooms, Laundry Service, Cable/Satellite TV Service'),
(50, 4, 'Hotel Relish', '43, Sampatrao Colony, Near Amantran Restaurant, Jetalpur Road', '(0265) 3096663', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000),Laundry Service,24 Hours,Valet Parking'),
(51, 27, 'Valiant Hotel', '7th Floor, BBC Tower, Near Surya Hotel', '(0265) 2363480', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),29 Rooms, Laundry Service , Cable/Satellite TV Service '),
(52, 27, 'Alpha Hotel', 'Phoenex Complex, 7th Floor, Near Railway And Bus Station', ' (0265) 2363555', NULL, ' Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000,37 Rooms, Laundry Service ,Cable/Satellite TV Service'),
(53, 4, 'Landmark Hotel ', '2, Sampatrao Colony, Jetalpur Road', '(0265) 2353058', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),22 Rooms ,Laundry Service,Cable/Satellite TV Service'),
(54, 34, 'Raajpath Hotel', 'Near Railway Station', '(0265) 2332037', NULL, ' Hotels, Hotels (Rs 2001 To Rs 3000), Restaurants, Inexpensive Restaurants (Below Rs 350),'),
(55, 4, 'Hotel Neelam Residency', '27, Vishwas Colony, B/H National Plaza', '(0265) 2356839', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000),Laundry Service ,24 Hours'),
(56, 27, 'Rahi Inn Hotel', 'Opp B B C Tower', '(0265) 2226016', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Hotels (Rs 2001 To Rs 3000),32 Rooms,Laundry Service,Cable/Satellite TV Service'),
(57, 27, 'Chandan Mahal Hotel ', 'Chandan Mahal Building, Opp Bpc Tower', '(0265) 6621718', NULL, ' Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),33 Rooms,Laundry Service,Cable/Satellite TV Service'),
(58, 35, 'Hotel Sagar Lake ', 'Jubli Baug, Near Prince Cinema, Sursagar North', '(0265) 2419405', NULL, ' Hotels, Hotels (Rs 501 To Rs 1000),51 Rooms,Laundry Service,Cable/Satellite TV Service'),
(59, 4, 'Hotel Palm View Residency ', '18, Sampatrao Colony, Opposite Amantran Hotel, Standard Charted Bank Lane', '(0265) 2341166', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000),24 Rooms,Laundry Service ,Internet Access '),
(60, 4, 'Mamta Hotel ', '28 A, Nandawan Society, Behind Railway Station, Faramji Road', '(0265) 2354958', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000),16 Rooms,Laundry Service,Cable/Satellite TV Service'),
(61, 3, 'Yahvi Hotels And Banquets', 'Behind Gali, Mansi Chowkdi', '(0265) 2350054', NULL, 'Hotels, Lodging Services, 3 Star Hotels,21 Rooms,Laundry Service,Cable/Satellite TV Service'),
(62, 9, 'Bansal Hotel ', 'Near Lalita Tower, Behind Railway Station, Jetalpur Road', ' (0265) 2342932', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000),23 Rooms , Laundry Service,Cable/Satellite TV Service'),
(63, 14, 'Sweet Dream Hotel ', '1st Floor, Camps Corner', '(0265) 2782077', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),19 Rooms ,Laundry Service,Cable/Satellite TV Service'),
(64, 27, 'Radiant Hotel ', 'Orient Business Centre, Opposite Suraj Plaza', '(0265) 3012380', NULL, ' Hotels, Hotels (Rs 501 To Rs 1000),20 Rooms, Laundry Service,Cable/Satellite TV Service  '),
(65, 32, 'Tanya Airlines', 'aastha solution Travels, Vip road', '(02834) 307488', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), 3 Star Hotels	'),
(66, 1, 'Relief Hotel', 'Kirti Stambh, Opp Polo Ground, Palace Road', ' (0265) 2433570', NULL, ' Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below)	'),
(67, 5, 'Pooja Hotel ', 'Near Natraj Cinema, University Campus, Pratap Gunj', '(0265) 2791856', NULL, 'Hotels, Hotels (Rs 500 & Below), 20 Rooms,Laundry Service ,Cable/Satellite TV Service  '),
(68, 5, 'Siddhartha Hotel', 'Opposite University Boys Hostel, Pratap Gunj', ' (0265) 2792320', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000),24 Rooms ,Cable/Satellite TV Service ,24 hrs  '),
(69, 27, 'Roshni Hotel ', 'Manubhai Tower, 1st Floor, Opp M S University', ' (0265) 2363352', NULL, 'Hotels, Hotels (Rs 500 & Below),Laundry Service , 24 Hours'),
(70, 1, 'Happinz Restaurant And Banquet ', '1/2 Hari Bhakti Soc, Opp Race Course Post Office Nr Bird Circle, Race Course Road', '(0265) 2350637', NULL, ' Hotels, Cake Shops, Banquet Halls'),
(71, 34, 'Skylab Hotel ', '22, Sampatrao Colony, New India Mill Jetalpur Roa', ' (0265) 2337858', NULL, 'Hotels, Hotels (Rs 500 & Below),24 Hours '),
(72, 34, 'Tulsi Regency Hotel', 'Plot No 5, Vinod Baug, Near New India Mill, Jetalpur Road', '(0265) 2342848', NULL, 'Hotels, Conference Halls (Upto 50 Seats), Conference Halls,30 Rooms ,Laundry Service, Cable/Satellite TV Service  '),
(73, 14, 'Sargam Hotel ', 'Opposite Red Church, Above Dena Bank, Fatehgunj Main Road', '(0265) 2781397', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000),21 Rooms, Laundry Service,12:00 PM Noon  '),
(74, 27, 'Sanman Hotel', 'Vinod Baug, Opposite Ashutosh Hospital, Jetalpur Road', '(0265) 2344119', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),Laundry Service, 24 hrs '),
(75, 27, 'Som Galaxy Hotel ', 'Near Jagdish Hindu Lodge, Station Road', '(0265) 2361244', NULL, ' Hotels, Hotels (Rs 501 To Rs 1000),13 Rooms ,24 hrs'),
(76, 4, 'Rahi Hotel ', '6, Sampatrao Colony, Opp New India Mill', '(0265) 2335147', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), 24 Rooms  , Laundry Service ,Cable/Satellite TV Service'),
(77, 27, 'Sapna Hotel ', 'Lalita Tower, 6th Floor, Behind Railway Station, Jetalpur Road', '(0265) 2356254', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),18 Rooms,Laundry Service,Cable/Satellite TV Service'),
(78, 52, 'Airport Hotel', 'Airpoet Hotel,Harni Airport Road, Opp Vadodara Airport', '(0265) 02224844', NULL, 'Hotels, Hotels (Rs 2001 To Rs 3000), Hotels (Rs 3001 To Rs 4000), Hotels (Rs 4001 To Rs 5000),Cable/Satellite TV Service ,Valet Parking ,Internet Acce'),
(79, 48, 'Gurukrupa Hote', '10/A Shashtri Bridge, Polytechnic, N/R Pandya Hotel, Chani Road', ' (0265) 2795683', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000)'),
(80, 4, 'Sudarshan Palace Hotel', 'Behind Railway Station, R C Dutt Road', '(0265) 6531867', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000),38 Rooms, Laundry Service,Cable/Satellite TV Service'),
(81, 1, 'Mahi Valley Resort Booking Office', '101, Regent Tower, Race Cource Circle,', '(0265) 2340094', NULL, ' Hotels, Resorts, Hotel Resort,12 noon , 20 kms '),
(82, 27, 'Swastik Hotel ', 'Swastik Hotel, Opposite Sayajigunj Petrol Pump', '(0265) 2362969', NULL, ' Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Laundry Service,Cable/Satellite TV Service,Conference room(s)'),
(83, 27, 'Suren Hotel ', 'Kadak Bazar, Near Railway Station', '(0265) 2361586', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),24 hrs,5 Kms '),
(84, 1, 'Vijay Hotel ', 'Behind Railway Station, R C Dutt Road', '(0265) 2332898', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),10 Rooms,Laundry Service,Cable/Satellite TV Service'),
(85, 4, 'Hotel New Gayatri Bhavan', 'Opposite Railway Station', '(0265) 2794537', NULL, 'Hotels'),
(86, 27, 'R V Dongres Travellers Lodge', 'At Kadak Bazar Corner, Sayajigunj,Vadodara, Opp Railway Station', ' (0260) 2363621', NULL, 'Hotels'),
(87, 5, 'LAV Kush Hotel ', 'Near Natraj Cinema, Sation Road, Pratap Gunj', ' (0265) 2780804', NULL, 'Hotels, Hotels (Rs 501 To Rs 1000), Hotels (Rs 500 & Below),Laundry Service ,24 Hrs'),
(88, 5, 'Swagat Hotel ', 'Shankar Nagar', NULL, '9898856520', 'Hotels, Hotels (Rs 500 & Below)'),
(89, 57, 'Arunai Anantha', 'Pondicherry Bangalore Highway, Chengam Road Nh 66, Thiruvannamalai', '(04175) 5237275', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 2001 To Rs 3000), Hotels (Rs 3001 To Rs 4000)Cable/Satellite TV Servicevalet ParkingInternet Access	'),
(90, 56, 'Annamalai Hotels Pvt Ltd ', 'No 8/25, Next To Shanthi Cinema Hall Coimbatore Central, State Bank Road, Coimbatore', '(0422) 4391000', NULL, 'Hotels, Hotels (Rs 1001 To Rs 2000), Hotels (Rs 501 To Rs 1000), Hotels (Rs 2001 To Rs 3000),Cable/Satellite TV Service');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `ImageID` int(50) NOT NULL,
  `ImageURL` varchar(50) NOT NULL,
  PRIMARY KEY (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ImageID`, `ImageURL`) VALUES
(1, '../images/CAr.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE IF NOT EXISTS `libraries` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `MobileNo` varchar(15) NOT NULL,
  `Service` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 3, 'The Mothers Art and Exhibition Gall', 'F 46/47 Earth Complex, Old Padra Road, Akshar Chowk', '(0265) 2341664', '9327566755', 'Libraries, Art Galleries, Exhibition Halls'),
(2, 27, 'Dial A Book ', 'Satyam Apartment, Ground Floor, 19 Vrajwadi Society, Jetalpur Road', '(0265) 6544323', '', 'Libraries, Book Library'),
(3, 22, 'Central Library ', 'Near Apna Bazar', '(0265) 2415713', '', 'Libraries, Book Library'),
(4, 34, 'Ramakrishna Mission Vivekananda Mem', 'Dilaram Bungalow, Opp Circuit House', '(0265) 6554343', '', 'Libraries, Welfare Organisations, Libraries For Women'),
(5, 27, 'Smt Hansa Mehta Library ', 'C/O Maharaja Sayajirao University, Station Road', '(0265) 2795338', '', 'Libraries, Book Library'),
(6, 4, 'Mindgym Kids Library', 'Aakar, 10 Laxmi Society, Behind Baroda Heart Institute, Race Course Circle', '', '9825850966', 'Libraries, DVD Libraries, Video CD Libraries'),
(7, 16, 'Osho Glimpse ', '7, Vikramnagar Soceity, Nr Arya Kanya Vidhyalay, Opp Nanavati Flourmill', '(0265) 2462837', '', 'Libraries, Book Shops, Meditation Classes'),
(8, 25, 'Popular Book Centre & Library', 'Near Yuvraj Hotel, Station Road', '(0265) 2794424', '', 'Libraries, Book Shops, School Books'),
(9, 55, 'Bango Circulating Library ', 'G/9, Mangalmurti Complex, Opposite Novino Battery', '(0265) 2656682', '', 'Libraries, Book Shops, School Stationery Dealers	'),
(10, 2, 'RATO The Family Library ', 'C/O Pa Pa Pagli Play Center And Daycare, 14/A, Suryanagar Society', '', '8980800800', 'Libraries, Book Shops, Advertising Agencies'),
(11, 17, 'Zankar Sarvajanik Pustakalaya ', '202, Adalja Commercial Complex', '(0265) 2291430', '', 'Libraries	'),
(12, 3, 'Books Unlimited ', 'B 7 Kapil Towers, Opp Avishkar Complex', '(0265) 3059073', '', 'Libraries	'),
(13, 2, 'Hindi Sahitya Sammelan ', '15 Chitrakut Society, Near Nageshwar Mahadev Temple', ' (0265) 2512134', '', 'Libraries');

-- --------------------------------------------------------

--
-- Table structure for table `malls`
--

CREATE TABLE IF NOT EXISTS `malls` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `malls`
--

INSERT INTO `malls` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 10, 'Inorbit Mall', 'Survey No 100, Beside Gunjan Tower, Near Petrol Pump, Opposite Alembic School, Gorwa Road', '(0265)2352525', NULL, 'Shopping Malls'),
(2, 10, 'Vadodara Central Mall ', '19, Near Genda Circle, Sarabhai Road', '(0265) 6693600', NULL, 'Shopping Malls, Gold Jewellery Showrooms, Readymade Garment Retailers'),
(3, 14, 'Big Bazaar ', 'Seven Seas Mall, Near Diamond Jubilee Girls Hostel, Opposite Arvind Baug', ' (0265) 3926902', NULL, 'Shopping Malls, Book Shops, Cellular Phone Dealers, Cellular Phone Dealers-Samsung'),
(4, 14, 'Sevenseas Mega Mall', 'Gaurav Path', '(0265) 2786670', NULL, ' Shopping Malls, Entertainment Centres, Entertainment Centre For Children'),
(5, 4, 'Centre Square Mall', 'Opposite Vadodara Central, Near HDFC Bank, Near Gendigate Circle, Sarabhai Road', '(0265) 3089611', NULL, 'Shopping Malls'),
(6, 1, 'Cine Mall', 'Nr Natubhai Circle, Race Course Circle', '(0265) 2324393', NULL, 'Shopping Malls'),
(7, 27, 'M Cube The Mall ', 'Nr Chakli Circle, Jetalpur Road', '(0265) 6537808', NULL, 'Shopping Malls'),
(8, 15, 'Spencers Retail ', '30-Taux Banglo Vasana Road, Vasona Road, N/R Manisha Chokdi, Vasna Road', ' (0265) 2252683', NULL, 'Shopping Malls'),
(9, 5, 'Nanubhai Leisure World ', 'Opp Mehsana Nagar', '(0265) 3012345', NULL, 'Shopping Malls'),
(10, 34, 'Shreem Shalini Mall', 'Near Alkapuri Petrol Pump', '(0265) 2320990', NULL, 'Shopping Malls'),
(11, 43, 'Ganesh Vasan Bhandar ', 'Udalpur Chowkdi, Timbagam Road, Savli', NULL, '9925493102', 'Shopping Malls');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `name` varchar(50) DEFAULT NULL,
  `phn` varchar(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(6) NOT NULL,
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
('esha ', '9998622132', 'eshakadakia@gmail.com', '8601', 'null', 'null', 0, 'null', 0, 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
('harita', '9856985665', 'haritakadakia@gmail.com', 'vatsal', 'null', 'null', 0, 'null', 0, 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null'),
('jignesh', '9998622132', 'jmkadakia@gmail.com', '4447', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('kruti patel', '9998622132', 'krutipatel@gmail.com', '2547', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('smith', '9998622131', 'smitjshah@gmail.com', '3153', '', '', 0, '', 0, '', '', 0, '', '', '', '', '', 0, '', '', '', '', ''),
('swami', '9856985665', 'swami23@gmail.com', 'vatsal', 'null', 'null', 0, 'null', 0, 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null', 0, 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 44, 'Navyug English Medium School ', 'Anand Van Society, Nr. Mahadev Temple', '(0265)2783855', NULL, ' Schools, CBSE Schools, English Medium Schools'),
(2, 55, 'Kidzee Makarpura Baby Steps', 'Om Bunglow, Near D Mart Opposite S R P Ground', '(0265) 2970434', '7567822244', 'Schools, Playgroups, Day Care Centres'),
(3, 12, 'My Apple School ', 'Besides Bims College, Near Avdhoot Railway Crossing', '(0265)6583380', '9925133380', 'Schools, CBSE Schools, English Medium Schools'),
(4, 2, 'Kidzaniaa Roosevelt High School ', 'B 49 Prabhat Colony, Near Zaver Nagar', '(0265)6547755', '9825047755', 'Schools, Playgroups, Gujarati Medium Schools'),
(5, 6, 'E Campus One World Junior School ', 'A 34, Aaradhana Duplex, Near Akanksha Cross Road And Nadalay Haveli Road, Samta Lakshmipura Road', '(0265)6530005', '9227108288', 'Schools, Music Classes, Music Classes For Guitar'),
(6, 68, 'Navrachana School ', 'Near Eme Temple, Sama Road', '(0265)2791643', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(7, 24, 'Delhi Public School ', 'Near Kalali, Transpek Vadsar Road', '(0265)2681571', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(8, 67, 'Navrachana International School ', 'Near Ambedkar Nagar, Vasna Bhaili Road', '(0265)2253851', NULL, 'Schools, CBSE Schools, Boarding Schools	'),
(9, 68, 'Ambe Vidyalaya & M S Hostel ', 'Near Sama Jakat Naka, Sama Savli Road', '(0265)2714277', NULL, 'Schools, Boarding Schools, English Medium Schools'),
(10, 38, 'Bright Day School ', 'Near Satyadev Chemicals, Vasna Bhaili Road', '(0265)2251151', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(11, 52, 'Delhi Public School', 'Near Motnath Temple, Near Airport, Harni Virod Road', '(0265)2540001', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(12, 68, 'Urmi School & Hostel', 'Near Flyover, Amit Nagar, Sama Savli Road', '(0265)2712611', NULL, 'Schools, CBSE Schools, Hostels	'),
(13, 55, 'Bharatiya Vidya Bhavans Vallabhram', 'Opposite Police Station, Near Baroda Dairy, Near Teen Rasta, Makarpura Road', '(0265)2644222', NULL, ' Schools, CBSE Schools, Boarding Schools	'),
(14, 4, 'Baroda High School', 'Near Alkapuri Club', '(0265)2350777', NULL, ' Schools, English Medium Schools, Kindergartens'),
(15, 38, 'St Kabir School ', 'Opposite Raneshwar Mahadev Temple', '(0265)2253377', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(16, 16, 'Bright School', 'Ambalal Park', '(0265)2485846', NULL, 'Schools, English Medium Schools, Gujarati Medium Schools	'),
(17, 69, 'Podar World School ', 'Nr Chandan Multiplex, Opp Bapunagar Bus Stand, Sherki, Bhimpura Koyli Channel Road', '(0265)6540811', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(18, 23, 'Gujarat Public School ', 'Brg Estate, Near Kalali Railway Crossing, Off Old Padra Road', '(0265)2680215', NULL, 'Schools, CBSE Schools, Hostels	'),
(19, 16, 'Bal Bhavan Society ', 'Behind Sayaji Garden', '(0265)2792718', NULL, 'Schools, Cricket Coaching Classes, Classes for Music Vocals'),
(20, 5, 'New Era Senior Secondary School ', 'Nr Arpan Complex', '(0265)2784597', NULL, 'Schools, Educational Institutions'),
(21, 70, 'Rosary High School 	', 'Near Msu Pavilion', '(0265)2794137', NULL, 'Schools, English Medium Schools, Kindergartens'),
(22, 17, 'Tejas Vidyalaya ', 'Atmajyoti Ashram Road', '(0265)2389591', NULL, 'Schools, English Medium Schools, Kindergartens'),
(23, 9, 'Global Discovery Academy ', 'Unit No 16, Silver Coin Building, B/S Sony World', '(0265)3266966', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(24, 18, 'Ambe Vidyalaya ', 'Opposite HDFC Bank', '(0265)2481893', NULL, 'Schools, English Medium Schools, Kindergartens'),
(25, 50, 'DON Bosco High School ', 'Makarpura Road', '(0265)2630848', NULL, 'Schools, English Medium Schools, Kindergartens'),
(26, 55, 'Kendriya Vidyalaya', 'Air Force Station', '(0265)2643808', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(27, 18, 'Bright Day School', 'KG Section, Amit Complex', '(0265)2484568', NULL, ' Schools, English Medium Schools, Kindergartens'),
(28, 67, 'Vibgyor International High School ', 'Opp Banco Products & Bhd Bhayali Railway Station, Padra Road', '(0265)3247480', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(29, 1, 'D R Amin Memorial School', 'Near Lions Hall, Gadapura', '(0265)2333232', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(30, 14, 'Convent Of Jesus And Mary Girls Hig', '22 Camp', '(0265)2791672', NULL, 'Schools, Colleges, English Medium Schools	'),
(31, 24, 'Zenith High School ', 'Vadodara H O', '(0265)2580054', NULL, ' Schools, English Medium Schools'),
(32, 52, 'Bright Day School', 'Near Harni Old Jakatnaka, Harni Road', '(0265)2486891', NULL, 'Schools, English Medium Schools, Educational Institutions'),
(33, 12, 'Ambe School ', 'Opposite Sun City, Near Darbar Cross Road', '(0265)6584963', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(34, 52, 'Cygnus World School ', 'Motnath Mahadev Road', '(0265)3196000', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(35, 37, 'Nalanda International School ', 'Mahapura, Sewasi Mahapura Road', '(0265)6533855', NULL, 'Schools, English Medium Schools, Kindergartens'),
(36, 71, 'Billabong High International School ', 'Opp B P Petrol Pump, Kalali Vadsar Ring Road', '(0265)2630800', NULL, 'Schools, English Medium Schools, ICSE Schools'),
(37, 18, 'Parth School Of Science & Competiti', 'Prakash Bhavan, Near L&T Circle', '(0265)2491599', NULL, 'Schools, Gseb Schools'),
(38, 58, 'Vibgyor International High School ', 'Opp Banco Products,B/H Bili Railway Stn,Padra Road', '(0265)3247480', NULL, 'Schools, English Medium Schools, Kindergartens'),
(39, 6, 'Anand Vidya Vihar ', 'Harinagar', '(0265)2399541', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(40, 52, 'Kendriya Vidyalaya No 1 ', 'Eme Campus, Near Sangam Cross Road,Opposite Sangam Society', '(0265)2482021', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(41, 44, 'Vidyani Vidhyalaya ', 'Jyoti Colony', '(0265)2750119', NULL, 'Schools'),
(42, 38, 'Sabari Vidyalay', 'Vasna Road', '(0265)2251583', NULL, 'Schools, English Medium Schools, Gseb Schools'),
(43, 12, 'Shreyas Samarpan Vidyalay', 'Samarpan Building, Opp Dawat Restaurant, Rajnikant Jani Marg', '(0265)2651362', NULL, 'Schools, English Medium Schools, Kindergartens'),
(44, 32, 'American School Of Baroda', 'Opp Sayajipura Village, Nr Sagar Studio, Ajwa Nimeta Road', '(0265)6545155', NULL, 'Schools, Colleges, CBSE Schools'),
(45, 37, 'Green Valley High School', 'Near Bhimpura, Via Gotri Sevasi, Off Effluent Channel Road', '(0265)2888056', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(46, 66, 'Baroda High School', 'Opp Pologround, Baghikhana', '(0265)2433284', NULL, 'Schools, English Medium Schools, Gseb Schools'),
(47, 39, 'DON Bosco High School ', 'Nr Miltary, Nr Kabir Complex, Makarpura Road', '(0265)2655455', NULL, 'Schools, English Medium Schools, Kindergartens'),
(48, 55, 'New Era High School', 'Makarpura Road', '(0265)2643239', NULL, 'Schools, English Medium Schools, Kindergartens'),
(49, 55, 'Baroda High School', 'ONGC Colony, Makarpura Road', '(0265)2644478', NULL, ' Schools, English Medium Schools, Kindergartens'),
(50, 2, 'Swami Vivekananda Vidyalaya ', 'Nr Mahesh Complex, Parivar Cross Road', '(0265)2514944', NULL, 'Schools'),
(51, 3, 'Basil School ', 'Near Mukti Nagar, Tandalja Road', '(0265)2350763', NULL, 'Schools, English Medium Schools, Gseb Schools'),
(52, 10, 'Alembic Vidyalaya', 'Alembic Colony,Alembic Post Office', '(0265)2280401', NULL, 'Schools, Kindergartens, Playgroups'),
(53, 52, 'KV EME No 2', 'Kendriya Vidyalaya Eme No 2, Near Mayo Hospital, Sama Savali Road', '(0265)2481551', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(54, 23, 'Mira The Happy School ', 'Opposite Pramukh Swami Hostel, Atladara Main Road', '(0265)2680068', NULL, 'Schools, English Medium Schools, Gseb Schools	'),
(55, 6, 'Utkarsh Vidyalaya', 'Near Race Course, Near Harinagar Water-Tank', '(0265)2352065', NULL, 'Schools, English Medium Schools, Gujarati Medium Schools'),
(56, 1, 'M K High School ', '33, Nutan Bharat Society, Opp Maruti Couriers', '(0265)2340157', NULL, 'Schools, English Medium Schools, Kindergartens'),
(57, 2, 'Baroda Public School ', 'Kaladarshan Cross Road', '(0265)2520308', NULL, 'Schools, English Medium Schools'),
(58, 55, 'Auxilium Convent ', 'Nr Akashwani, Opp Shushen Textile', '(0265)2655010', NULL, 'Schools, English Medium Schools, Kindergartens'),
(59, 6, 'Euro kids', 'N 64 Hari Nagar Society, Nr Harinagar Crossing', NULL, '9429660099', 'Schools, English Medium Schools, Kindergartens'),
(60, 16, 'Jeevan Sadhna English Medium School ', 'Navi Dharti, Near Karelibaug Police Station', '(0265)2429042', NULL, 'Schools, English Medium Schools, Educational Institutions'),
(61, 12, 'Prince Ashokraje Gaekwad School ', 'Dhairya Prasad Palace Compound, B/H Arihant Complex', '(0265)2662794', NULL, 'Schools, CBSE Schools, English Medium Schools'),
(62, 52, 'Lalbahadur Shashtri Vidyalaya 	', 'Sangam Char Rasta', '(0265)2483280', NULL, 'Schools, Gujarati Medium Schools, Gseb Schools'),
(63, 13, 'Shree Ambe Vidyalaya ', 'Vaikunth Township, Near Bapod Jakat Naka', '(02668)6593800', NULL, 'Schools, English Medium Schools, Kindergartens'),
(64, 72, 'Manav Kendra Gyan Mandir ', 'National Highway No. 8, Post Kandari Karjan', '(02666)2232128', NULL, 'Schools, CBSE Schools, English Medium Schools	');

-- --------------------------------------------------------

--
-- Table structure for table `searchengine`
--

CREATE TABLE IF NOT EXISTS `searchengine` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `searchengine`
--

INSERT INTO `searchengine` (`id`, `name`) VALUES
(1, 'hospital'),
(2, 'cinema'),
(3, 'colleges'),
(4, 'hotel'),
(5, 'libraries'),
(6, 'malls'),
(7, 'school'),
(8, 'temple');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `StateId` int(50) NOT NULL,
  `StateName` varchar(200) NOT NULL,
  `CountryId` int(50) NOT NULL,
  PRIMARY KEY (`StateId`),
  KEY `CountryId` (`CountryId`),
  KEY `CountryId_2` (`CountryId`),
  KEY `CountryId_3` (`CountryId`),
  KEY `StateName` (`StateName`),
  KEY `StateName_2` (`StateName`),
  KEY `CountryId_4` (`CountryId`),
  KEY `CountryId_5` (`CountryId`),
  KEY `CountryId_6` (`CountryId`),
  KEY `CountryId_7` (`CountryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StateId`, `StateName`, `CountryId`) VALUES
(1, 'Gujarat', 1),
(2, 'trtt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `temple`
--

CREATE TABLE IF NOT EXISTS `temple` (
  `Id` int(50) NOT NULL,
  `AreaId` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Service` varchar(150) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `AreaId` (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temple`
--

INSERT INTO `temple` (`Id`, `AreaId`, `Name`, `Address`, `PhoneNo`, `MobileNo`, `Service`) VALUES
(1, 60, 'Swami Narayan Temple ', 'Opp Bhatia Petrol Pump', '(0265) 2484258', NULL, 'Temples	'),
(2, 6, 'Isckon Temple', 'Hare Krishna Dham', '(0265) 2310630', NULL, 'Temples, Tourist Attraction	'),
(3, 53, 'Arya Samaj Mandir ', 'Sindhu Park Society, Near RTO Office', '9426333688', NULL, 'Temples'),
(4, 12, 'Vrajdham Temple', 'Nr Mangleshwar Temple', '(0265) 2661015', NULL, 'Temples'),
(5, 54, 'Shree Omkar Jain Tirth ', 'Bhadrankar Nagar, Vasna Chani Road, National Highway No 8, Post Padmala', '(0265) 2242792', NULL, 'Temples'),
(6, 26, 'Jain Derasar', 'Shamalaji Ni Sheri', '(02663) 258150', NULL, 'Temples'),
(7, 12, 'Kashi Vishwanath Mahadev Temple', 'Rajmahal Road, Lalbaug Road', '(0265) 2412659', NULL, 'Temples'),
(8, 58, 'Ranu Tulja Mataji Mandir', 'Taluka Padra, Ranu', '(02662) 224224', NULL, 'Temples, Tourist Attraction'),
(9, 16, 'Shri Swaminarayan Mandir', 'Water Tank Road', '(0265) 2462628', NULL, 'Temples, Tourist Attraction'),
(10, 59, 'Badrika Ashram', 'Dariyapura, P O Chanod, Miyagam', '(02666) 227435', NULL, 'Temples');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD CONSTRAINT `advertisement_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `advertisement_ibfk_2` FOREIGN KEY (`ImageID`) REFERENCES `image` (`ImageID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`CityId`) REFERENCES `city` (`CityId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`imageid`) REFERENCES `image` (`ImageID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD CONSTRAINT `cinemas_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`StateId`) REFERENCES `state` (`StateId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `colleges`
--
ALTER TABLE `colleges`
  ADD CONSTRAINT `colleges_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `faqans`
--
ALTER TABLE `faqans`
  ADD CONSTRAINT `faqans_ibfk_2` FOREIGN KEY (`faqid`) REFERENCES `faq` (`faqID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_2` FOREIGN KEY (`Areaid`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `libraries`
--
ALTER TABLE `libraries`
  ADD CONSTRAINT `libraries_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `malls`
--
ALTER TABLE `malls`
  ADD CONSTRAINT `malls_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`CountryId`) REFERENCES `country` (`CountryId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `temple`
--
ALTER TABLE `temple`
  ADD CONSTRAINT `temple_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
