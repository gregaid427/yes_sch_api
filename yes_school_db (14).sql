-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yes_school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountclosure`
--

CREATE TABLE `accountclosure` (
  `id` int(11) NOT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `oldsession` varchar(100) DEFAULT NULL,
  `newsession` varchar(100) DEFAULT NULL,
  `activeaccountid` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accountupdatelog`
--

CREATE TABLE `accountupdatelog` (
  `id` int(11) NOT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `balance` varchar(10) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `arrears` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignfeecartegory`
--

CREATE TABLE `assignfeecartegory` (
  `id` int(11) NOT NULL,
  `total` varchar(10) DEFAULT NULL,
  `feename` varchar(50) DEFAULT NULL,
  `feeid` varchar(50) DEFAULT NULL,
  `amount` decimal(50,0) DEFAULT 0,
  `class` varchar(50) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `scartegory` varchar(100) DEFAULT NULL,
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `cartgroupid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignfeelog`
--

CREATE TABLE `assignfeelog` (
  `id` int(11) NOT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(20) DEFAULT NULL,
  `entity` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignfeerecord`
--

CREATE TABLE `assignfeerecord` (
  `id` int(11) NOT NULL,
  `class` varchar(100) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cartegory` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `groupecode` varchar(50) DEFAULT NULL,
  `entityid` varchar(50) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `datetaken` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `sectionid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `classId` varchar(20) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `sectionid` varchar(50) DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` varchar(100) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clearlog`
--

CREATE TABLE `clearlog` (
  `id` int(11) NOT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `activity` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deletedstudent`
--

CREATE TABLE `deletedstudent` (
  `id` int(11) NOT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `cartegory` varchar(50) NOT NULL DEFAULT 'GENERAL',
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountbalance` decimal(10,0) DEFAULT 0,
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL,
  `feepayable` decimal(10,0) NOT NULL DEFAULT 0,
  `scholarship` varchar(10) NOT NULL DEFAULT '0',
  `arrears` varchar(10) NOT NULL DEFAULT '0.00',
  `preference` varchar(255) NOT NULL DEFAULT '0',
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `feegenerateforsession` varchar(100) DEFAULT NULL,
  `feegeneratecode` varchar(50) DEFAULT '0',
  `deposit` decimal(10,0) DEFAULT 0,
  `amountpaid` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examgroup`
--

CREATE TABLE `examgroup` (
  `id` int(11) NOT NULL,
  `grouptitle` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examresult`
--

CREATE TABLE `examresult` (
  `resultid` int(11) NOT NULL,
  `examid` varchar(50) DEFAULT NULL,
  `examclasscode` varchar(10) DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `subjectid` varchar(50) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `totalscore` varchar(10) DEFAULT '0',
  `examscore` varchar(10) DEFAULT '0',
  `classworkscore` varchar(10) DEFAULT '0',
  `othersscore` varchar(10) DEFAULT '0',
  `grade` varchar(50) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `examremark` varchar(254) DEFAULT '0',
  `teacherreamark` varchar(254) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `examgroup` varchar(50) DEFAULT NULL,
  `examgroupid` varchar(50) DEFAULT NULL,
  `overallscore` varchar(10) DEFAULT '0',
  `overallposition` varchar(10) DEFAULT '0',
  `classize` varchar(100) DEFAULT '0',
  `exampercent` varchar(10) DEFAULT NULL,
  `classworkpercent` varchar(10) DEFAULT NULL,
  `otherpercent` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examresultcode`
--

CREATE TABLE `examresultcode` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `subjectid` varchar(50) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `sectionid` varchar(50) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `examgroup` varchar(100) DEFAULT NULL,
  `examgroupid` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `chosengrade` varchar(50) DEFAULT NULL,
  `chosengradeid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `expensehead` varchar(50) DEFAULT NULL,
  `expenseheadid` varchar(50) DEFAULT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT '0.00',
  `documentlink` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expensehead`
--

CREATE TABLE `expensehead` (
  `expensehead` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedetails`
--

CREATE TABLE `feedetails` (
  `id` int(11) NOT NULL,
  `receiptid` varchar(20) DEFAULT NULL,
  `feeitem` varchar(100) DEFAULT NULL,
  `feeamount` varchar(10) DEFAULT '0',
  `amountapportioned` varchar(10) DEFAULT '0',
  `totalfeepaid` varchar(5) DEFAULT '0',
  `balbeforepay` varchar(10) DEFAULT '0',
  `balance` varchar(5) DEFAULT '0',
  `stdname` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `classid` varchar(20) DEFAULT NULL,
  `student_id` varchar(40) DEFAULT NULL,
  `collectedby` varchar(50) DEFAULT NULL,
  `staffid` varchar(30) DEFAULT NULL,
  `datecollected` varchar(30) DEFAULT NULL,
  `sessionid` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feegeneraterecord`
--

CREATE TABLE `feegeneraterecord` (
  `code` varchar(20) DEFAULT NULL,
  `session` varchar(30) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `entity` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feepaymentrecords`
--

CREATE TABLE `feepaymentrecords` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) DEFAULT NULL,
  `amountpaid` varchar(100) DEFAULT '0',
  `stdname` varchar(100) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `mode` varchar(100) DEFAULT NULL,
  `balbeforepayment` varchar(100) DEFAULT NULL,
  `balanceafterpayment` varchar(100) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `date` varchar(100) DEFAULT NULL,
  `collectedby` varchar(100) DEFAULT NULL,
  `receiptid` varchar(100) DEFAULT NULL,
  `amountinvolved` varchar(10) DEFAULT NULL,
  `activity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feesgroup`
--

CREATE TABLE `feesgroup` (
  `id` int(11) NOT NULL,
  `feeid` varchar(100) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financelog`
--

CREATE TABLE `financelog` (
  `id` int(11) NOT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `createdby` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `entity` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeid` int(11) NOT NULL,
  `gradecode` varchar(10) DEFAULT NULL,
  `gradetitle` varchar(100) DEFAULT NULL,
  `gradetitleid` varchar(50) DEFAULT NULL,
  `minscore` varchar(10) DEFAULT NULL,
  `maxscore` varchar(10) DEFAULT NULL,
  `scoreremarks` varchar(50) DEFAULT NULL,
  `grades` varchar(50) DEFAULT NULL,
  `exampercent` varchar(10) DEFAULT '0',
  `classworkpercent` varchar(10) DEFAULT '0',
  `otherscorepercent` varchar(10) DEFAULT '0',
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `graduatedstudent`
--

CREATE TABLE `graduatedstudent` (
  `id` int(11) NOT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `cartegory` varchar(50) NOT NULL DEFAULT 'GENERAL',
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountbalance` decimal(10,0) DEFAULT 0,
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL,
  `feepayable` decimal(10,0) NOT NULL DEFAULT 0,
  `scholarship` varchar(10) NOT NULL DEFAULT '0',
  `arrears` varchar(10) NOT NULL DEFAULT '0.00',
  `preference` varchar(255) NOT NULL DEFAULT '0',
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `feegenerateforsession` varchar(100) DEFAULT NULL,
  `feegeneratecode` varchar(50) DEFAULT '0',
  `deposit` decimal(10,0) DEFAULT 0,
  `amountpaid` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `guardianId` int(11) NOT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `student_Id` varchar(20) DEFAULT NULL,
  `gFirstName` varchar(30) DEFAULT NULL,
  `gLastName` varchar(30) DEFAULT NULL,
  `gOtherName` varchar(30) DEFAULT NULL,
  `originalemail` varchar(50) DEFAULT NULL,
  `gContact1` varchar(20) DEFAULT NULL,
  `gContact2` varchar(30) DEFAULT NULL,
  `gEmail` varchar(20) DEFAULT NULL,
  `gAddress` varchar(50) DEFAULT NULL,
  `gAddressLandmark` varchar(50) DEFAULT NULL,
  `gSex` varchar(10) DEFAULT NULL,
  `gRelation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `itemId` varchar(100) DEFAULT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `cartegory` varchar(50) DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `price` varchar(100) DEFAULT '0.00',
  `totalqty` varchar(1000) NOT NULL DEFAULT '0',
  `createdAt` varchar(50) DEFAULT NULL,
  `supplierContact1` varchar(50) DEFAULT NULL,
  `supplierContact2` varchar(50) DEFAULT NULL,
  `SupplierInfo` varchar(100) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventorycartegory`
--

CREATE TABLE `inventorycartegory` (
  `id` int(11) NOT NULL,
  `cartegoryname` varchar(40) DEFAULT NULL,
  `createdby` varchar(40) DEFAULT NULL,
  `createdat` varchar(40) DEFAULT NULL,
  `isactive` varchar(10) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventorystock`
--

CREATE TABLE `inventorystock` (
  `id` int(11) NOT NULL,
  `item` varchar(50) DEFAULT NULL,
  `availableqty` varchar(20) DEFAULT '0',
  `quantity` int(11) DEFAULT 0,
  `cartegory` varchar(50) DEFAULT NULL,
  `supplier` varchar(30) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `isactive` varchar(10) DEFAULT 'true',
  `note` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarshipenroll`
--

CREATE TABLE `scholarshipenroll` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `scholarshiptitle` varchar(50) DEFAULT NULL,
  `scholarshipid` varchar(10) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `cartegorycovering` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarshiplist`
--

CREATE TABLE `scholarshiplist` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `percentage` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `feecartapplicable` varchar(20) DEFAULT NULL,
  `applicable` varchar(20) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `contact1` varchar(50) DEFAULT NULL,
  `contact2` varchar(50) DEFAULT NULL,
  `logolink` varchar(100) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sectiongroup`
--

CREATE TABLE `sectiongroup` (
  `id` varchar(10) DEFAULT '0',
  `sectionName` varchar(50) DEFAULT NULL,
  `isActive` varchar(50) DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `sessionname` varchar(50) DEFAULT NULL,
  `sessionaccountid` varchar(20) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `activesessionname` varchar(50) DEFAULT '0',
  `startmonth` varchar(10) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `active` varchar(50) DEFAULT 'false',
  `sessioncode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessionacountrecords`
--

CREATE TABLE `sessionacountrecords` (
  `id` int(11) NOT NULL,
  `session` varchar(100) DEFAULT NULL,
  `sessionid` int(20) DEFAULT NULL,
  `amountcollected` int(10) DEFAULT NULL,
  `sessionarrears` varchar(10) DEFAULT NULL,
  `previousarrears` varchar(10) DEFAULT NULL,
  `arrearscarryforward` varchar(10) DEFAULT NULL,
  `nextsession` varchar(10) DEFAULT NULL,
  `createdby` varchar(20) DEFAULT NULL,
  `createdat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_4bskzsp3e`
--

CREATE TABLE `session_4bskzsp3e` (
  `student_id` varchar(40) DEFAULT NULL,
  `amountpaid` varchar(10) DEFAULT '0',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `feepayable` varchar(10) DEFAULT '0',
  `preference` varchar(80) DEFAULT '0',
  `scholarship` varchar(10) DEFAULT '0',
  `accountbalance` varchar(10) DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  `createdby` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_njvjctbk2`
--

CREATE TABLE `session_njvjctbk2` (
  `student_id` varchar(40) DEFAULT NULL,
  `amountpaid` varchar(10) DEFAULT '0',
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `arrears` varchar(20) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `activeaccountid` varchar(20) DEFAULT '0',
  `feepayable` varchar(10) DEFAULT '0',
  `preference` varchar(80) DEFAULT '0',
  `scholarship` varchar(10) DEFAULT '0',
  `accountbalance` varchar(10) DEFAULT '0',
  `date` varchar(50) DEFAULT NULL,
  `createdby` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `userId` varchar(20) DEFAULT NULL,
  `sEmail` varchar(50) DEFAULT NULL,
  `sGender` varchar(50) DEFAULT NULL,
  `sLastName` varchar(50) DEFAULT NULL,
  `sFirstName` varchar(50) DEFAULT NULL,
  `contact1` varchar(50) DEFAULT NULL,
  `contact2` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `staffId` varchar(50) DEFAULT NULL,
  `definedRole` varchar(50) DEFAULT NULL,
  `rolecode` varchar(20) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `active` varchar(20) DEFAULT 'True'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`userId`, `sEmail`, `sGender`, `sLastName`, `sFirstName`, `contact1`, `contact2`, `address`, `staffId`, `definedRole`, `rolecode`, `info`, `id`, `active`) VALUES
('gb7emm', 'user@user.com', 'Male', 'Test', 'User', '45434354656', '345456765', '', NULL, 'Admin', '1,2,3,4,5,6', '', 1, 'True');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `otherName` varchar(50) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `cartegory` varchar(50) NOT NULL DEFAULT 'GENERAL',
  `cartegoryid` varchar(50) DEFAULT NULL,
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `sectionid` varchar(50) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountbalance` decimal(10,0) DEFAULT 0,
  `feedetails` varchar(254) DEFAULT '0',
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL,
  `feepayable` decimal(10,0) NOT NULL DEFAULT 0,
  `scholarship` varchar(10) NOT NULL DEFAULT '0',
  `arrears` varchar(10) NOT NULL DEFAULT '0.00',
  `preference` varchar(255) NOT NULL DEFAULT '0',
  `preferenceamount` varchar(10) DEFAULT '0',
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `feegenerateforsession` varchar(100) DEFAULT NULL,
  `feegeneratecode` varchar(50) DEFAULT '0',
  `deposit` decimal(10,0) DEFAULT 0,
  `amountpaid` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentscartegory`
--

CREATE TABLE `studentscartegory` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `cartid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subjectcode` varchar(50) DEFAULT NULL,
  `subjectname` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `isactive` varchar(11) DEFAULT 'true',
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `rolecode` varchar(21) DEFAULT '0',
  `Id` int(11) NOT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `role`, `password`, `pass`, `rolecode`, `Id`, `pincode`, `createdAt`, `createdBy`, `isActive`) VALUES
('gb7emm', 'user@user.com', 'staff', '$2b$10$WLTBwtzjGDJPX2kgArrLGOMQ40xvE7nwca8O/o6YMAEs4yUmcGyk2', NULL, '1,2,3,4,5,6', 1, '2437', 'Fri, 09 May 2025 13:38:24 GMT', 'undefined', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountclosure`
--
ALTER TABLE `accountclosure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accountupdatelog`
--
ALTER TABLE `accountupdatelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignfeecartegory`
--
ALTER TABLE `assignfeecartegory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignfeelog`
--
ALTER TABLE `assignfeelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignfeerecord`
--
ALTER TABLE `assignfeerecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clearlog`
--
ALTER TABLE `clearlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deletedstudent`
--
ALTER TABLE `deletedstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examgroup`
--
ALTER TABLE `examgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresult`
--
ALTER TABLE `examresult`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `examresultcode`
--
ALTER TABLE `examresultcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensehead`
--
ALTER TABLE `expensehead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedetails`
--
ALTER TABLE `feedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feegeneraterecord`
--
ALTER TABLE `feegeneraterecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feepaymentrecords`
--
ALTER TABLE `feepaymentrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feesgroup`
--
ALTER TABLE `feesgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financelog`
--
ALTER TABLE `financelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeid`);

--
-- Indexes for table `graduatedstudent`
--
ALTER TABLE `graduatedstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`guardianId`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorycartegory`
--
ALTER TABLE `inventorycartegory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorystock`
--
ALTER TABLE `inventorystock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarshipenroll`
--
ALTER TABLE `scholarshipenroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarshiplist`
--
ALTER TABLE `scholarshiplist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessionacountrecords`
--
ALTER TABLE `sessionacountrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentscartegory`
--
ALTER TABLE `studentscartegory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountclosure`
--
ALTER TABLE `accountclosure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accountupdatelog`
--
ALTER TABLE `accountupdatelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignfeecartegory`
--
ALTER TABLE `assignfeecartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignfeelog`
--
ALTER TABLE `assignfeelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignfeerecord`
--
ALTER TABLE `assignfeerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clearlog`
--
ALTER TABLE `clearlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deletedstudent`
--
ALTER TABLE `deletedstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examgroup`
--
ALTER TABLE `examgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examresult`
--
ALTER TABLE `examresult`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examresultcode`
--
ALTER TABLE `examresultcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expensehead`
--
ALTER TABLE `expensehead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedetails`
--
ALTER TABLE `feedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feegeneraterecord`
--
ALTER TABLE `feegeneraterecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feepaymentrecords`
--
ALTER TABLE `feepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feesgroup`
--
ALTER TABLE `feesgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financelog`
--
ALTER TABLE `financelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `gradeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `graduatedstudent`
--
ALTER TABLE `graduatedstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `guardianId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventorycartegory`
--
ALTER TABLE `inventorycartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventorystock`
--
ALTER TABLE `inventorystock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginlog`
--
ALTER TABLE `loginlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarshipenroll`
--
ALTER TABLE `scholarshipenroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarshiplist`
--
ALTER TABLE `scholarshiplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessionacountrecords`
--
ALTER TABLE `sessionacountrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentscartegory`
--
ALTER TABLE `studentscartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
