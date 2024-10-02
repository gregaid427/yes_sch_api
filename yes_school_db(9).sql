-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2024 at 01:08 PM
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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `student_id` varchar(25) DEFAULT NULL,
  `feepayable` decimal(10,0) DEFAULT 0,
  `accountcode` varchar(255) DEFAULT NULL,
  `scholarship` decimal(10,0) DEFAULT 0,
  `arrears` varchar(20) DEFAULT '0.00',
  `accountbalance` decimal(10,0) DEFAULT 0,
  `preference` varchar(255) DEFAULT '0',
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `feegeneratedate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `student_id`, `feepayable`, `accountcode`, `scholarship`, `arrears`, `accountbalance`, `preference`, `createdby`, `createdat`, `feegeneratedate`) VALUES
(1, 'SD20241110', 400, NULL, 100, '400', 390, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Thu, 12 Sep 2024 11:40:43 GMT'),
(2, 'SD20241111', 400, NULL, 0, '400', 800, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Thu, 12 Sep 2024 11:40:43 GMT'),
(3, 'SD20241112', 400, NULL, 0, '400', 800, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Thu, 12 Sep 2024 11:40:43 GMT'),
(4, 'SD20241113', 400, NULL, 0, '400', 800, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Thu, 12 Sep 2024 11:40:43 GMT'),
(5, 'SD20241114', 400, NULL, 0, '400', 800, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Thu, 12 Sep 2024 11:40:43 GMT'),
(6, 'SD20241115', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', NULL),
(7, 'SD20241116', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', NULL),
(8, 'SD20241117', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', NULL),
(9, 'SD20241118', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', NULL),
(10, 'SD20241119', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', NULL),
(11, 'SD20241120', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', NULL),
(12, 'SD20241121', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Fri, 13 Sep 2024 10:49:07 GMT', NULL),
(13, 'SD20241122', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Fri, 13 Sep 2024 11:42:27 GMT', NULL),
(14, 'SD20241123', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Fri, 13 Sep 2024 11:46:44 GMT', NULL),
(15, 'SD20241124', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Sat, 28 Sep 2024 11:49:30 GMT', NULL),
(16, 'SD20241125', 0, NULL, 0, '0.00', 0, '0', 'Asante', 'Sat, 28 Sep 2024 12:03:22 GMT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignfeecartegory`
--

CREATE TABLE `assignfeecartegory` (
  `id` int(11) NOT NULL,
  `total` varchar(10) DEFAULT NULL,
  `feename` varchar(50) DEFAULT NULL,
  `amount` decimal(50,0) DEFAULT 0,
  `class` varchar(50) DEFAULT NULL,
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignfeecartegory`
--

INSERT INTO `assignfeecartegory` (`id`, `total`, `feename`, `amount`, `class`, `feegeneratedate`, `createdat`, `createdby`) VALUES
(1, '400', 'FEEDING', 200, 'KG 1', NULL, '2024-09-12', 'Asante'),
(2, '400', 'TRANSPORT', 200, 'KG 1', NULL, '2024-09-12', 'Asante');

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
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignfeerecord`
--

INSERT INTO `assignfeerecord` (`id`, `class`, `total`, `createdat`, `createdby`, `status`) VALUES
(1, 'KG 1', '400', 'Thu, 12 Sep 2024 ', 'Asante', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `classId` varchar(20) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT NULL,
  `updatedAt` varchar(20) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdAt` varchar(100) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `classId`, `title`, `section`, `instructor`, `isActive`, `updatedAt`, `updatedBy`, `createdAt`, `createdBy`) VALUES
(1, '8318', 'KG 1', NULL, 'Mr. Daniel Jojo', 'true', NULL, NULL, 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante'),
(2, '6881', 'KG 2', NULL, 'Mr. Daniel Jojo', 'true', NULL, NULL, 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante'),
(3, '4668', 'KG 3', 'SILVER', '', 'true', NULL, NULL, 'Fri, 27 Sep 2024 09:58:51 GMT', 'Asante'),
(4, '4668', 'KG 3', 'YELLOW', '', 'true', NULL, NULL, 'Fri, 27 Sep 2024 09:58:51 GMT', 'Asante'),
(5, '4668', 'KG 3', 'GREEN', '', 'true', NULL, NULL, 'Fri, 27 Sep 2024 09:58:51 GMT', 'Asante'),
(6, '4668', 'KG 3', 'GOLD', '', 'true', NULL, NULL, 'Fri, 27 Sep 2024 09:58:51 GMT', 'Asante');

-- --------------------------------------------------------

--
-- Table structure for table `examgroup`
--

CREATE TABLE `examgroup` (
  `id` int(11) NOT NULL,
  `grouptitle` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examgroup`
--

INSERT INTO `examgroup` (`id`, `grouptitle`, `session`, `createdat`, `createdby`) VALUES
(1, 'END OF TERM EXAMINATION', NULL, 'Fri Sep 27 2024 09:58:51 GMT+0000 (Greenwich Mean ', 'Asante'),
(2, 'MID TERM EXAMINATION', NULL, 'Fri Sep 27 2024 09:58:51 GMT+0000 (Greenwich Mean ', 'Asante');

-- --------------------------------------------------------

--
-- Table structure for table `examresult`
--

CREATE TABLE `examresult` (
  `resultid` int(11) NOT NULL,
  `examid` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
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
  `examgroup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examresultcode`
--

CREATE TABLE `examresultcode` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
  `examgroup` varchar(100) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `expensehead` varchar(50) DEFAULT NULL,
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

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `name`, `expensehead`, `invoice`, `date`, `amount`, `documentlink`, `description`, `createdby`, `createdat`, `filename`, `link`) VALUES
(1, 'Light Bill', 'UTITLITY', '23243435', '2024-09-03', '500', NULL, '', 'Asante', '2024-9-12', '', 'www.yeschool.com/uploadexpense/');

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

--
-- Dumping data for table `expensehead`
--

INSERT INTO `expensehead` (`expensehead`, `createdat`, `createdby`, `notes`, `id`) VALUES
('UTITLITY', 'Thu, 12 Sep 2024 11:40:43 GMT', 'asante', 'undefined', 1);

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
  `date` varchar(100) DEFAULT NULL,
  `collectedby` varchar(100) DEFAULT NULL,
  `receiptid` varchar(100) DEFAULT NULL,
  `amountinvolved` varchar(10) DEFAULT NULL,
  `activity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feepaymentrecords`
--

INSERT INTO `feepaymentrecords` (`id`, `student_id`, `amountpaid`, `stdname`, `class`, `mode`, `balbeforepayment`, `balanceafterpayment`, `arrears`, `date`, `collectedby`, `receiptid`, `amountinvolved`, `activity`) VALUES
(1, 'SD20241110', '100', 'undefined', 'KG 1', 'Cash', '800', '700', '400', '2024-09-13', 'asante', '24111059', NULL, 'Fee Payment'),
(2, 'SD20241110', '100', 'undefined', 'KG 1', 'Cash', '700', '600', '400', '2024-09-13', 'asante', '24111041', NULL, 'Fee Payment'),
(3, 'SD20241110', '100', 'undefined', 'KG 1', 'Cash', '600', '500', '400', '2024-09-13', 'asante', '24111021', NULL, 'Fee Payment'),
(4, 'SD20241110', '50', 'undefined', 'KG 1', 'Cash', '500', '450', '400', '2024-09-13', 'asante', '24111063', NULL, 'Fee Payment'),
(5, 'SD20241110', '50', 'undefined', 'KG 1', 'Cash', '450', '400', '400', '2024-09-13', 'asante', '24111086', NULL, 'Fee Payment'),
(6, 'SD20241110', '10', 'undefined', 'KG 1', 'Cash', '400', '390', 'undefined', '2024-09-23', 'asante', '24111094', NULL, 'Fee Payment');

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

--
-- Dumping data for table `feesgroup`
--

INSERT INTO `feesgroup` (`id`, `feeid`, `name`, `description`, `createdby`, `createdat`, `status`) VALUES
(1, 'xwdafpo', 'FEEDING', 'undefined', 'asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'true'),
(2, 've7v6vc', 'TRANSPORT', 'undefined', 'asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `financelog`
--

CREATE TABLE `financelog` (
  `id` int(11) NOT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `createdat` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financelog`
--

INSERT INTO `financelog` (`id`, `activity`, `amount`, `user`, `createdat`, `description`, `status`) VALUES
(1, 'Assign Fee', 'none', 'Asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Assign fee for KG 1', 'applied'),
(2, 'Assign Fee', 'none', 'undefined', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Assign fee for undefined', 'applied'),
(3, 'Assign Fee', 'none', 'undefined', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Assign fee for undefined', 'applied'),
(4, 'Generate Fee', 'none', 'undefined', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Generating fee for all Classes', 'applied'),
(5, 'Generate Fee', 'none', 'undefined', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Generating fee for all Classes', 'applied');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeid` int(11) NOT NULL,
  `gradetitle` varchar(100) DEFAULT NULL,
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

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`gradeid`, `gradetitle`, `minscore`, `maxscore`, `scoreremarks`, `grades`, `exampercent`, `classworkpercent`, `otherscorepercent`, `createdby`, `createdat`, `notes`) VALUES
(1, 'General Grading', '65', '79', 'Very Good', 'B', '70', '20', '10', 'Asante', '2024-09-25', 'General Grading'),
(2, 'General Grading', '41', '54', 'Proficient', 'D', '70', '20', '10', 'Asante', '2024-09-25', 'General Grading'),
(3, 'General Grading', '55', '64', 'Good', 'C', '70', '20', '10', 'Asante', '2024-09-25', 'General Grading'),
(4, 'General Grading', '80', '100', 'Excellent', 'A', '70', '20', '10', 'Asante', '2024-09-25', 'General Grading'),
(5, 'General Grading', '0', '40', 'Fail', 'F', '70', '20', '10', 'Asante', '2024-09-25', 'General Grading');

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

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`guardianId`, `userId`, `student_Id`, `gFirstName`, `gLastName`, `gOtherName`, `originalemail`, `gContact1`, `gContact2`, `gEmail`, `gAddress`, `gAddressLandmark`, `gSex`, `gRelation`) VALUES
(1, 'zw632n', 'SD20241110', 'Banny', 'Frimps', NULL, NULL, '024123123', '', '', '', NULL, 'Male', 'Father'),
(2, 'st3slw', 'SD20241110', 'Granny', 'Frimps', NULL, NULL, '024123124', '', '', '', NULL, 'Male', 'Mother');

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

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `itemId`, `itemName`, `cartegory`, `quantity`, `description`, `CreatedBy`, `supplier`, `price`, `totalqty`, `createdAt`, `supplierContact1`, `supplierContact2`, `SupplierInfo`, `isActive`) VALUES
(1, 'ly51wd', 'P.E shorts', 'KITS', 400, '', 'Asante', 'Assanko LTD', '0.00', '0', 'Thu, 12 Sep 2024 11:40:43 GMT', '0231232231', '', 'Accra Legon', 'true');

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

--
-- Dumping data for table `inventorycartegory`
--

INSERT INTO `inventorycartegory` (`id`, `cartegoryname`, `createdby`, `createdat`, `isactive`, `notes`) VALUES
(1, 'KITS', 'asante', 'Thu, 12 Sep 2024 11:40:43 GMT', 'true', 'undefined');

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

--
-- Dumping data for table `inventorystock`
--

INSERT INTO `inventorystock` (`id`, `item`, `availableqty`, `quantity`, `cartegory`, `supplier`, `createdby`, `date`, `isactive`, `note`) VALUES
(1, 'P.E shorts', '0', 200, 'NONE', 'Assanko LTD', 'Asante', '2024-09-02', 'true', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `receiptid` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL
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

--
-- Dumping data for table `scholarshipenroll`
--

INSERT INTO `scholarshipenroll` (`id`, `student_id`, `scholarshiptitle`, `scholarshipid`, `createdat`, `createdby`, `amount`, `cartegorycovering`) VALUES
(1, 'SD20241110', 'PROPRIETOR SPECIAL GRANT', '1', 'Fri, 13 Sep 2024 12:56:23 GMT', 'asante', '100.00', 'FEE PAYABLE');

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

--
-- Dumping data for table `scholarshiplist`
--

INSERT INTO `scholarshiplist` (`id`, `title`, `amount`, `percentage`, `type`, `percent`, `feecartapplicable`, `applicable`, `createdat`, `createdby`, `description`) VALUES
(1, 'PROPRIETOR SPECIAL GRANT', '100.00', NULL, 'Fixed Value', 'false', NULL, 'FEE PAYABLE', 'Thu, 12 Sep 2024 11:40:43 GMT', 'undefined', NULL),
(2, 'GOVERNMENT GRANT SCHOLARSHIP', '0', NULL, 'Percentage', '50', NULL, 'FEEDING', 'Thu, 12 Sep 2024 11:40:43 GMT', 'undefined', NULL);

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

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`name`, `address`, `contact1`, `contact2`, `logolink`, `filename`, `email`, `id`) VALUES
('Holy Hill Preparatory School', 'Opposite Royal Institute ,Accra Central Enclave', '0231232344', '0232341434', 'http://localhost:5000/3922.jpg', '3922.jpg', 'holyhill@yahoo.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `classId` varchar(15) DEFAULT NULL,
  `sectionName` varchar(15) DEFAULT NULL,
  `createdAt` varchar(20) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sectiongroup`
--

CREATE TABLE `sectiongroup` (
  `id` int(11) NOT NULL,
  `sectionName` varchar(50) DEFAULT NULL,
  `isActive` varchar(50) DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sectiongroup`
--

INSERT INTO `sectiongroup` (`id`, `sectionName`, `isActive`, `createdAt`, `createdBy`) VALUES
(1, 'GOLD', 'true', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante'),
(2, 'SILVER', 'true', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante'),
(3, 'GREEN', 'true', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante'),
(15, 'YELLOW', 'true', 'Thu, 08 Aug 2024 15:58:54 GMT', 'Asante');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `sessionname` varchar(50) DEFAULT NULL,
  `startmonth` varchar(10) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `active` varchar(50) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `sessionname`, `startmonth`, `createdat`, `createdby`, `active`) VALUES
(6, '2ND TERM 2024', 'JANUARY', 'Wed, 21 Aug 2024 10:29:01 GMT', 'Asante', 'false'),
(7, '1ST TERM 2024', 'SEPTEMBER', 'Fri, 20 Sep 2024 09:51:09 GMT', 'Asante', 'true');

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
('xnwsv4', 'user@user.com', 'Male', 'User', 'User', '024123123', '', '', NULL, 'Admin', NULL, '', 1, 'True');

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
  `previousclass` varchar(50) DEFAULT NULL,
  `section` varchar(20) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `accountBalance` decimal(10,0) DEFAULT 0,
  `status` varchar(20) DEFAULT 'current',
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `userId`, `student_id`, `firstName`, `lastName`, `otherName`, `class`, `previousclass`, `section`, `religion`, `gender`, `dateofbirth`, `accountBalance`, `status`, `isActive`, `filename`, `imagelink`) VALUES
(1, 'akztbw', 'SD20241110', 'Jeremy ', 'Frimps', 'Nana', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '2024-09-02', 0, 'current', 'true', '63709dbdetail.JPG', 'http://localhost:5000//uploadsstudent/63709dbdetail.JPG'),
(2, 'adsuxd', 'SD20241111', 'Noel', 'Agana', 'Jojo', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '2024-09-02', 0, 'current', 'true', NULL, NULL),
(3, 'xqtgs4', 'SD20241112', 'Samba', 'Coulibaly', '', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '2024-09-09', 0, 'current', 'true', NULL, NULL),
(4, '9qljli', 'SD20241113', 'Foli', 'Danquah', '', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '2024-09-03', 0, 'current', 'true', NULL, NULL),
(5, 'odmyio', 'SD20241114', 'Susan', 'Wilson', 'Baah', 'KG 1', '', 'GOLD', 'Christianity', 'Male', '2024-09-03', 0, 'current', 'true', NULL, NULL),
(6, '5siud7', 'SD20241115', 'Asante', 'George', '', 'KG 2', NULL, 'NONE', 'Christianity', 'Male', '2024-09-09', 0, 'current', 'true', NULL, NULL),
(7, 'lqwh30', 'SD20241116', 'Oppong', 'Weah', '', 'KG 2', NULL, 'NONE', 'Christianity', 'Male', '2024-09-03', 0, 'current', 'true', NULL, NULL),
(8, '31mm02', 'SD20241117', 'Edwin', 'Volvo', '', 'KG 2', NULL, 'NONE', 'Christianity', 'Male', '2024-09-01', 0, 'current', 'true', NULL, NULL),
(9, 'zy38om', 'SD20241118', 'Clarra', 'Banson', '', 'KG 2', NULL, 'NONE', 'Christianity', 'Male', '2024-09-02', 0, 'current', 'true', NULL, NULL),
(10, 'raj8n3', 'SD20241119', 'Xerxes', 'Amos', '', 'KG 2', NULL, 'NONE', 'Christianity', 'Male', '2024-09-02', 0, 'current', 'true', NULL, NULL),
(11, '6b0iyl', 'SD20241120', 'Fred', 'Axan', 'Gala', 'KG 2', NULL, 'NONE', 'Christianity', 'Male', '2024-09-02', 0, 'current', 'true', NULL, NULL),
(12, 'gsrfgv', 'SD20241121', 'ff', '', '', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 0, 'current', 'true', NULL, NULL),
(13, '1224xj', 'SD20241122', 'ss', '', '', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 0, 'current', 'true', NULL, NULL),
(14, 'dx37pd', 'SD20241123', 'sds', '', '', 'KG 1', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 0, 'current', 'true', '41066student.png', 'http://localhost:5000/41066student.png'),
(15, 'l7psuh', 'SD20241124', 'frank ', 'Adansi', 'Cornelius', 'KG 3', NULL, 'SILVER', 'Christianity', 'Male', '01-01-2020', 0, 'current', 'true', NULL, NULL),
(16, '4l56l1', 'SD20241125', 'vincent', 'Sam', '', 'KG 3', NULL, 'YELLOW', 'Christianity', 'Male', '01-01-2020', 0, 'current', 'true', NULL, NULL);

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

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjectcode`, `subjectname`, `type`, `isactive`, `createdat`, `createdby`) VALUES
(1, 'gy1xb', 'MATHEMATICS', 'Theory', 'true', 'Fri, 20 Sep 2024 09:51:09 GMT', 'Asante'),
(3, 'xbsn0', 'ENGLISH', 'Theory', 'true', 'Fri, 27 Sep 2024 09:58:51 GMT', 'Asante'),
(4, '72kow', 'RME', 'Theory', 'true', 'Fri, 27 Sep 2024 09:58:51 GMT', 'Asante'),
(5, 'h47q2', 'SOCIAL STUDIES', 'Theory', 'true', 'Sun, 29 Sep 2024 12:54:06 GMT', 'Asante');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `rolecode` varchar(10) DEFAULT '0',
  `Id` int(11) NOT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `createdAt` varchar(50) DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `isActive` varchar(10) DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `role`, `password`, `rolecode`, `Id`, `pincode`, `createdAt`, `createdBy`, `isActive`) VALUES
('xnwsv4', 'user@user.com', 'staff', '$2b$10$6mHfVos7wjwIhqsYelwYAumwP77SasYphw7ONM4PCVmFvEKxv9VCi', '111111', 1, '4133', 'Thu, 12 Sep 2024 12:30:34 GMT', 'undefined', 'true'),
('zw632n', 'banny25t9', 'parent', '$2b$10$FIreXVzyiyZYMOGUQSjkHOeI0AdEuZ6ukf/ouvRtNL0zlR/nT0ESm', '0', 2, '9736', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('st3slw', 'granny6d2v', 'parent', '$2b$10$QpEpgileAwgAOSGQ8qzNOupvuzGFlRMAKhsZNUCDA0SCsAQN4WTui', '0', 3, '9736', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('akztbw', 'jeremy 5mek', 'student', '$2b$10$cN70Vsf6dNIR9QWtQcE1au4BBxpiK9XpZOED/p0Cbn4muuTdnTTP2', '0', 4, '7802', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('adsuxd', 'noelgcqn', 'student', '$2b$10$84ph8CN.YaeSkd1tmE564uBnQaY6CzlzavXeoIW2FpudprNKURZOC', '0', 5, '9628', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('xqtgs4', 'sambat9uv', 'student', '$2b$10$1q7xP7CkP3h.EGfhF14.T.CgPQW73tIW8RlmdTdOLGOy0vJyfHyaq', '0', 6, '7657', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('9qljli', 'folic97c', 'student', '$2b$10$J5WmpYTPzM6DK3Npnq9AvuBaaw1sjJBEFFNKLjhUabBhiHfVrlQYm', '0', 7, '6291', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('odmyio', 'susan601t', 'student', '$2b$10$Zr4Ej9/I.xLHHvnhJ9.3hufEdixefH3URGEmvXrg3Pvt2Wne68m7K', '0', 8, '9314', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('5siud7', 'asantez2of', 'student', '$2b$10$O87yo2LL/gshvN95fe7g6uGyGWPKeWPfnl2LHDjIYZ3.IkONVtALO', '0', 9, '5148', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('lqwh30', 'oppong5kna', 'student', '$2b$10$evAjOBvkJxZWscaAN0qR5.He6jmMm5KbMiRRfaRnVPgcmEuC6cVe.', '0', 10, '1938', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('31mm02', 'edwinfvxj', 'student', '$2b$10$2WZr.SlxkPxjv1jjYZxQ1ex1b3DFB5WGoOAmgqILIOEXtSJ7hOfeW', '0', 11, '4526', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('zy38om', 'clarra4cic', 'student', '$2b$10$NvBNaR4hptPo9yL/dMMzzOMtTHmt4Kg5UIRvPNacS1WaEIb4i0pBW', '0', 12, '3778', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('raj8n3', 'xerxesi26n', 'student', '$2b$10$hQMXo6qH./8Bq1ZgkmFfuOSRaSvSu.AZ2llcSqiR0bvv.QFU2Yo8O', '0', 13, '5858', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('6b0iyl', 'fred89ix', 'student', '$2b$10$aHZpTaYBYt7Xjh2GNJtrmOYIwujN/yK2T8Q12gMUNnU2cg9XbE5pq', '0', 14, '3221', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('gsrfgv', 'ff39ml', 'student', '$2b$10$6O8ocqukcxGajLd8mzIPGuu7OQFwipP84aOTfckqFNlfLjRZS2VvS', '0', 15, '5171', 'Fri, 13 Sep 2024 10:49:07 GMT', 'Asante', 'true'),
('1224xj', 'ssjxyo', 'student', '$2b$10$yPmZSIe/Z5fx6AExCfOJNeWJ.2NXb/WNMDhzZz3ORz8YWgbTKsSsW', '0', 16, '5809', 'Fri, 13 Sep 2024 11:42:27 GMT', 'Asante', 'true'),
('dx37pd', 'sds8i3f', 'student', '$2b$10$4rt.YLmR0.I8RolmWXtqgeRz1bA1Jb4iuOSQixmTv2C/1RfRwSdLi', '0', 17, '3982', 'Fri, 13 Sep 2024 11:46:44 GMT', 'Asante', 'true'),
('l7psuh', 'frank k1w6', 'student', '$2b$10$Bo3SXAyurOFo/eYYgNgAQ.YKgqBIybUqx3Gtz/8W.dtHyg9sIXqgS', '0', 18, '2391', 'Sat, 28 Sep 2024 11:49:30 GMT', 'Asante', 'true'),
('4l56l1', 'vincent7hrr', 'student', '$2b$10$LpPz7lIKzFXk1orfyrgbqeXnxUYGldVTyjmPjCxd7.arS1JgkipWm', '0', 19, '7498', 'Sat, 28 Sep 2024 12:03:22 GMT', 'Asante', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignfeecartegory`
--
ALTER TABLE `assignfeecartegory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignfeerecord`
--
ALTER TABLE `assignfeerecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
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
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectiongroup`
--
ALTER TABLE `sectiongroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `assignfeecartegory`
--
ALTER TABLE `assignfeecartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignfeerecord`
--
ALTER TABLE `assignfeerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `examgroup`
--
ALTER TABLE `examgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expensehead`
--
ALTER TABLE `expensehead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feepaymentrecords`
--
ALTER TABLE `feepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feesgroup`
--
ALTER TABLE `feesgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `financelog`
--
ALTER TABLE `financelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `gradeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `guardianId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventorycartegory`
--
ALTER TABLE `inventorycartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventorystock`
--
ALTER TABLE `inventorystock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarshipenroll`
--
ALTER TABLE `scholarshipenroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scholarshiplist`
--
ALTER TABLE `scholarshiplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sectiongroup`
--
ALTER TABLE `sectiongroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
