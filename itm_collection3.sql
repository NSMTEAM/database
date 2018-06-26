-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2018 at 09:24 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itm collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowandreturn`
--

CREATE TABLE `borrowandreturn` (
  `BorrowAndReturn_ID` int(10) NOT NULL COMMENT 'รหัสยืมและคืน',
  `Durable_articles_ID` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT ' 	รหัสครุภัณฑ์',
  `Department_ID` int(10) NOT NULL COMMENT 'รหัสหน่วยงาน',
  `Borrow_Date` date DEFAULT NULL COMMENT 'วันที่ยืม',
  `Return_Date` date DEFAULT NULL COMMENT 'วันที่คืน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_ID` int(10) NOT NULL COMMENT 'รหัสผู้ขาย',
  `Company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อผู้ขาย',
  `Tel` int(10) DEFAULT NULL COMMENT 'โทรศัพท์',
  `Fax` int(9) DEFAULT NULL COMMENT 'โทรสาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` int(10) NOT NULL COMMENT 'รหัสหน่วยงาน',
  `Department_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อหน่วยงาน',
  `Ministry_ID` int(10) NOT NULL COMMENT 'รหัสส่วนราชการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `durable articles`
--

CREATE TABLE `durable articles` (
  `Durable_articles_ID` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'รหัสครุภัณฑ์',
  `Status` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'สถานะครุภัณฑ์',
  `Durable_articles_title` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อครุภัณฑ์',
  `Count` int(6) DEFAULT NULL COMMENT 'จำนานครุภัณฑ์',
  `Location_ID` int(10) NOT NULL COMMENT 'รหัสที่ตั้ง',
  `Type_ID` int(10) NOT NULL COMMENT 'รหัสประเภท',
  `Property_ID` int(10) NOT NULL COMMENT 'รหัสคุณสมบัติ',
  `Group_ID` int(10) NOT NULL COMMENT 'รหัสกรุ๊ป',
  `Purchase_ID` int(10) NOT NULL COMMENT 'รหัสผู้ซื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `Group_ID` int(10) NOT NULL COMMENT 'รหัสประเภท',
  `Group_title` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อประเภท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_ID` int(10) NOT NULL COMMENT 'รหัสที่ตั้ง',
  `Location_title` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อสถานที่ตั้ง',
  `Address` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อที่อยู่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ministry`
--

CREATE TABLE `ministry` (
  `Ministry_ID` int(10) NOT NULL COMMENT 'รหัสส่วนราชการ',
  `Ministry_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อส่วนราชการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `Property_ID` int(10) NOT NULL COMMENT 'รหัสคุณสมบัติ',
  `Property_title` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อคุณสมบัติ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `Purchase_ID` int(10) NOT NULL COMMENT 'รหัสผู้ซื้อ',
  `Company_ID` int(10) NOT NULL COMMENT 'รหัสผู้ขาย',
  `Type_of_money` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ประเภทของเงิน',
  `HowToGetIt` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'วิธีการได้มา',
  `Date` date DEFAULT NULL COMMENT 'วันที่',
  `Notation` int(10) DEFAULT NULL COMMENT 'หมายเหตุ',
  `Department_ID` int(10) NOT NULL COMMENT 'รหัสแผนก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Type_ID` int(10) NOT NULL COMMENT 'รหัสประเภท',
  `Type_title` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'ชื่อประเภท'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowandreturn`
--
ALTER TABLE `borrowandreturn`
  ADD PRIMARY KEY (`BorrowAndReturn_ID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`),
  ADD KEY `Ministry_ID` (`Ministry_ID`);

--
-- Indexes for table `durable articles`
--
ALTER TABLE `durable articles`
  ADD PRIMARY KEY (`Durable_articles_ID`),
  ADD KEY `Location_ID` (`Location_ID`),
  ADD KEY `Type_ID` (`Type_ID`),
  ADD KEY `Property_ID` (`Property_ID`),
  ADD KEY `Group_ID` (`Group_ID`),
  ADD KEY `Purchase_ID` (`Purchase_ID`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_ID`);

--
-- Indexes for table `ministry`
--
ALTER TABLE `ministry`
  ADD PRIMARY KEY (`Ministry_ID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`Property_ID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`Purchase_ID`),
  ADD KEY `Company_ID` (`Company_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Type_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrowandreturn`
--
ALTER TABLE `borrowandreturn`
  MODIFY `BorrowAndReturn_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสยืมและคืน';

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Company_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ขาย';

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Department_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสหน่วยงาน';

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `Group_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภท';

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Location_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสที่ตั้ง';

--
-- AUTO_INCREMENT for table `ministry`
--
ALTER TABLE `ministry`
  MODIFY `Ministry_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสส่วนราชการ';

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `Property_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคุณสมบัติ';

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `Purchase_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ซื้อ';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
