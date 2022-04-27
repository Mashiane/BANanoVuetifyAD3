-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2022 at 12:35 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itassetmanager`
--
CREATE DATABASE IF NOT EXISTS `itassetmanager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `itassetmanager`;

-- --------------------------------------------------------

--
-- Table structure for table `checkins`
--

DROP TABLE IF EXISTS `checkins`;
CREATE TABLE `checkins` (
  `id` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `checkindate` varchar(20) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `lng` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkins`
--

INSERT INTO `checkins` (`id`, `employeeid`, `checkindate`, `lat`, `lng`) VALUES
(1, 1, '2021-07-26 01:09', '-33.9050496', '25.555763199999998'),
(2, 1, '2021-07-26 01:11', '-33.9050496', '25.555763199999998'),
(3, 1, '2021-07-26 02:44', '-33.9050496', '25.555763199999998'),
(4, 1, '2021-07-26 04:08', '-33.9050496', '25.5557632');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employeeid` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `emailaddress` varchar(100) DEFAULT NULL,
  `mobilephone` varchar(20) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeid`, `firstname`, `lastname`, `fullname`, `emailaddress`, `mobilephone`, `password`) VALUES
(1, 'Anele', 'Mbanga', 'Anele Mbanga', 'mbanga.anele@gmail.com', '0817366739', 'a017555038c48d67ecabe654b30d7e44'),
(3, 'Benjamin', 'Dube', 'Benjamin Dube', 'benjamin@dube.com', '0897654561', '333c35629ebd6aeb80341cae24ff901d');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
CREATE TABLE `hardware` (
  `hardwareid` int(11) NOT NULL,
  `hardwarename` varchar(100) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `serialno` varchar(50) DEFAULT NULL,
  `invoiceno` varchar(50) DEFAULT NULL,
  `purchasedate` varchar(30) DEFAULT NULL,
  `warrantyexpiry` varchar(30) DEFAULT NULL,
  `statusid` int(11) DEFAULT NULL,
  `assignedtoid` int(11) DEFAULT NULL,
  `notes` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`hardwareid`, `hardwarename`, `categoryid`, `serialno`, `invoiceno`, `purchasedate`, `warrantyexpiry`, `statusid`, `assignedtoid`, `notes`) VALUES
(5, 'Lenovo A', 1, '12345', '12345', '2021-06-01', '2021-08-31', 1, 1, ''),
(6, 'Acer Aspire', 8, 'CB35728290', '', '', '', 2, -1, ''),
(7, 'Apple MacBook', 1, 'CB35628728', '', '', '', 2, -1, ''),
(10, 'Samsung Monitor', 2, '', '', '', '', 3, -1, '');

-- --------------------------------------------------------

--
-- Table structure for table `hardwarecategory`
--

DROP TABLE IF EXISTS `hardwarecategory`;
CREATE TABLE `hardwarecategory` (
  `categoryid` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardwarecategory`
--

INSERT INTO `hardwarecategory` (`categoryid`, `description`, `color`) VALUES
(1, 'Laptop', 'light-green'),
(2, 'Monitor', 'blue'),
(3, 'Keyboard', 'blue'),
(4, 'Mouse', 'deep-orange'),
(5, 'Tablet', 'brown'),
(6, 'Mobile', 'pink'),
(7, 'Headset', 'teal'),
(8, 'Miscellaneous', 'grey'),
(9, 'Desktop', 'purple'),
(10, 'GPS Tracker', 'teal'),
(11, 'Printer', 'light-blue'),
(12, 'Scanner', 'blue-grey');

-- --------------------------------------------------------

--
-- Table structure for table `hardwarestatus`
--

DROP TABLE IF EXISTS `hardwarestatus`;
CREATE TABLE `hardwarestatus` (
  `statusid` int(11) NOT NULL,
  `description` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardwarestatus`
--

INSERT INTO `hardwarestatus` (`statusid`, `description`, `color`) VALUES
(1, 'Assigned', 'green'),
(2, 'In Stock', 'teal'),
(3, 'Ordered', 'indigo'),
(4, 'Pending', 'brown'),
(5, 'Written Off', 'red'),
(9, 'Reported Lost/Stolen', 'grey'),
(10, 'Depreciated', 'red'),
(13, 'In Repairs', 'orange');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE `issues` (
  `issueid` int(11) NOT NULL,
  `issuetype` varchar(20) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `requestid` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `licenseno` varchar(50) DEFAULT NULL,
  `dateissued` varchar(30) DEFAULT NULL,
  `notes` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`issueid`, `issuetype`, `employeeid`, `requestid`, `item`, `status`, `licenseno`, `dateissued`, `notes`) VALUES
(15, 'Hardware', 1, 1, 5, 'Issued', '', '2021-07-23', ''),
(16, 'Software', 1, 2, 6, 'Issued', '', '2021-07-26', ''),
(17, 'Software', 1, 6, 2, 'Pending', '', '', ''),
(18, 'Hardware', 1, 4, 7, 'Pending', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses` (
  `licenseid` int(11) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`licenseid`, `description`, `color`) VALUES
(1, 'Free', 'green'),
(2, 'Lifetime', 'brown'),
(3, 'Yearly (User Basis)', 'orange'),
(5, 'Monthly', 'indigo'),
(6, 'Open Source', 'teal'),
(7, 'DonationWare', 'blue-grey');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `requestid` int(11) NOT NULL,
  `employeeid` int(11) NOT NULL,
  `requesttype` varchar(20) NOT NULL,
  `requestitem` int(11) NOT NULL,
  `daterequested` varchar(20) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `notes` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`requestid`, `employeeid`, `requesttype`, `requestitem`, `daterequested`, `priority`, `status`, `notes`) VALUES
(1, 1, 'Hardware', 5, '2021-07-20', 'Low', 'Approved', NULL),
(2, 1, 'Software', 6, '2021-06-01', 'High', 'Approved', NULL),
(4, 1, 'Hardware', 7, '2021-07-20', 'Critical', 'Approved', NULL),
(6, 1, 'Hardware', 2, '2021-07-22', 'High', 'Approved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `id` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `edition` varchar(20) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL,
  `serialno` varchar(50) DEFAULT NULL,
  `invoiceno` varchar(50) DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `licenseid` int(11) DEFAULT NULL,
  `licenses` int(11) DEFAULT NULL,
  `purchasedate` varchar(20) DEFAULT NULL,
  `expirydate` varchar(20) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `notes` varchar(254) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`id`, `name`, `edition`, `version`, `serialno`, `invoiceno`, `vendorid`, `licenseid`, `licenses`, `purchasedate`, `expirydate`, `categoryid`, `notes`, `assigned`) VALUES
(2, 'Visual Studio 2017', 'Enterprise', '15.7.2', '', '', 1, 3, 700, '2021-06-01', '2021-07-31', 1, '', 0),
(4, 'Skype for Business', 'Business', '16.0.8625.21278', '', '', 1, 3, 1000, '2021-06-01', '2021-07-31', 6, '', 0),
(5, 'Windows 11', 'Home', '11', '', '', 1, 3, 1, '2021-07-01', '2021-07-31', 5, '', 0),
(6, 'b4a', 'Regular', '10.00', '', '', 4, 6, 1, '', '', 1, '', 0),
(7, 'b4j', '', '11', '', '', -1, 6, 1, '', '', 1, '', 0),
(8, 'b4i', 'Home', '10', '', '', -1, 5, 1, '', '', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `softwarecategory`
--

DROP TABLE IF EXISTS `softwarecategory`;
CREATE TABLE `softwarecategory` (
  `categoryid` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `softwarecategory`
--

INSERT INTO `softwarecategory` (`categoryid`, `description`, `color`) VALUES
(1, 'Development', 'green'),
(2, 'Graphics', 'pink'),
(3, 'Accounting', 'indigo'),
(4, 'HR', 'blue'),
(5, 'Common', 'deep-orange'),
(6, 'Miscellaneous', 'blue-grey'),
(7, 'System', 'purple'),
(8, 'Application', 'light-blue'),
(9, 'Multimedia', 'grey');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emailaddress` varchar(100) DEFAULT NULL,
  `password` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emailaddress`, `password`) VALUES
(5, 'admin@ictmanager.com', '833d6d67105643d14bf56cf9ddba70b3');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors` (
  `vendorid` int(11) NOT NULL,
  `vendorname` varchar(100) NOT NULL,
  `contactperson` varchar(100) NOT NULL,
  `contactnumber` varchar(20) NOT NULL,
  `addressline1` varchar(255) NOT NULL,
  `addressline2` varchar(255) NOT NULL,
  `addressline3` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `emailaddress` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendorid`, `vendorname`, `contactperson`, `contactnumber`, `addressline1`, `addressline2`, `addressline3`, `city`, `zipcode`, `phonenumber`, `emailaddress`, `website`) VALUES
(1, 'Microsoft', 'Sales Person', '0', '', '', '', '', '', '0', 'sales@microsoft.com', 'https://www.microsoft.com'),
(2, 'Adobe', 'unknown', '0', '', '', '', '', '', '0', 'adobe@adobe.com', ''),
(3, 'Test Vendor', 'unknown', '0', '', '', '', '', '', '0', 'vendor@company.com', ''),
(4, 'Anywhere Software', 'Erel', '123456789', '', '', '', '', '', '123456789', 'email@email.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkins`
--
ALTER TABLE `checkins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`hardwareid`),
  ADD KEY `FK_hardwarestatus_status` (`statusid`),
  ADD KEY `FK_hardware_hardwarecategory` (`categoryid`);

--
-- Indexes for table `hardwarecategory`
--
ALTER TABLE `hardwarecategory`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `hardwarestatus`
--
ALTER TABLE `hardwarestatus`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`issueid`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`licenseid`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestid`);

--
-- Indexes for table `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_software_licenses` (`licenseid`),
  ADD KEY `FK_software_softwarecategory` (`categoryid`);

--
-- Indexes for table `softwarecategory`
--
ALTER TABLE `softwarecategory`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkins`
--
ALTER TABLE `checkins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `hardwareid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hardwarecategory`
--
ALTER TABLE `hardwarecategory`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hardwarestatus`
--
ALTER TABLE `hardwarestatus`
  MODIFY `statusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `issueid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `licenseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `softwarecategory`
--
ALTER TABLE `softwarecategory`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hardware`
--
ALTER TABLE `hardware`
  ADD CONSTRAINT `FK_hardware_hardwarecategory` FOREIGN KEY (`categoryid`) REFERENCES `hardwarecategory` (`categoryid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_hardwarestatus_status` FOREIGN KEY (`statusid`) REFERENCES `hardwarestatus` (`statusid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `software`
--
ALTER TABLE `software`
  ADD CONSTRAINT `FK_software_licenses` FOREIGN KEY (`licenseid`) REFERENCES `licenses` (`licenseid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_software_softwarecategory` FOREIGN KEY (`categoryid`) REFERENCES `softwarecategory` (`categoryid`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
