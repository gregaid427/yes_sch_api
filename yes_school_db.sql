-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 02:08 PM
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
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `classId` varchar(20) DEFAULT NULL,
  `title` varchar(55) DEFAULT NULL,
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

INSERT INTO `class` (`id`, `classId`, `title`, `instructor`, `isActive`, `updatedAt`, `updatedBy`, `createdAt`, `createdBy`) VALUES
(1, '1702', 'PRIMARY 1', '', 'true', NULL, NULL, 'Wed Jul 24 2024 11:15:55 GMT+0000 (Greenwich Mean Time)', 'Asante');

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
  `createdat` date DEFAULT current_timestamp(),
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
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `guardianId` int(11) NOT NULL,
  `userId` varchar(20) DEFAULT NULL,
  `student_Id` varchar(20) DEFAULT NULL,
  `gFirstName` varchar(30) DEFAULT NULL,
  `gLastName` varchar(30) DEFAULT NULL,
  `gOtherName` varchar(30) DEFAULT NULL,
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
(7, 'ERFEWRFE', NULL, 'Tue Jul 23 2024 15:19:41 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(8, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:20:07 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(9, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:20:13 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(10, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:28:00 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(11, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:28:04 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(12, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:28:08 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(13, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:28:59 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(14, '1ST TERM 2021', NULL, 'Tue Jul 23 2024 15:29:02 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(15, '2ND TERM 2024', 'JUNE', 'Wed Jul 24 2024 10:19:43 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(16, '2ND TERM 2024', 'JUNE', 'Wed Jul 24 2024 10:21:54 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(17, '2ND TERM 2024', 'JUNE', 'Wed Jul 24 2024 10:24:29 GMT+0000 (Greenwich Mean ', 'Asante', 'false'),
(18, '2ND TERM 2024', 'APRIL', 'Wed Jul 24 2024 11:12:56 GMT+0000 (Greenwich Mean ', 'Asante', 'true');

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
  `sOtherName` varchar(50) DEFAULT NULL,
  `contact1` varchar(50) DEFAULT NULL,
  `contact2` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `definedRole` varchar(50) DEFAULT NULL,
  `rolecode` varchar(20) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `g1fname` varchar(50) DEFAULT NULL,
  `g1lastname` varchar(50) DEFAULT NULL,
  `g1sex` varchar(50) DEFAULT NULL,
  `g1address` varchar(110) DEFAULT NULL,
  `g1email` varchar(50) DEFAULT NULL,
  `g1contact1` varchar(50) DEFAULT NULL,
  `g1relation` varchar(50) DEFAULT NULL,
  `g1contact2` varchar(50) DEFAULT NULL,
  `g2fname` varchar(50) DEFAULT NULL,
  `g2lastname` varchar(50) DEFAULT NULL,
  `g2sex` varchar(50) DEFAULT NULL,
  `g2address` varchar(110) DEFAULT NULL,
  `g2email` varchar(50) DEFAULT NULL,
  `g2contact1` varchar(50) DEFAULT NULL,
  `g2relation` varchar(50) DEFAULT NULL,
  `g2contact2` varchar(50) DEFAULT NULL,
  `accountBalance` decimal(10,0) DEFAULT 0,
  `status` varchar(20) DEFAULT NULL,
  `isActive` varchar(20) DEFAULT 'true',
  `filename` varchar(100) DEFAULT NULL,
  `imagelink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `userId`, `student_id`, `firstName`, `lastName`, `otherName`, `class`, `previousclass`, `section`, `religion`, `gender`, `dateofbirth`, `g1fname`, `g1lastname`, `g1sex`, `g1address`, `g1email`, `g1contact1`, `g1relation`, `g1contact2`, `g2fname`, `g2lastname`, `g2sex`, `g2address`, `g2email`, `g2contact1`, `g2relation`, `g2contact2`, `accountBalance`, `status`, `isActive`, `filename`, `imagelink`) VALUES
(1, '8daw2h', 'SD20241110', 'User', 'User', '', 'DFSFD', NULL, 'None', 'Christianity', 'Male', '01-01-2020', 'father', 'father', 'Male', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 0, 'waiting', 'true', NULL, NULL),
(2, 'std5pk', 'SD20241111', 'greg', '', '', 'undefined', NULL, 'None', 'Christianity', 'Male', '01-01-2020', '', '', 'Male', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 0, 'waiting', 'true', '40629student.png', 'www.yeschool.com/uploadsstudent/40629student.png'),
(3, '3mryk0', 'SD20241112', 'dsfsdfasf', 'eafawefe', '', 'undefined', NULL, 'None', 'Christianity', 'Male', '01-01-2020', 'fareferf', '', 'Male', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 0, 'waiting', 'true', NULL, NULL),
(4, 'nv1u2w', 'SD20241113', 'efwaerrer', 'werawer', '', 'PRIMARY 1', NULL, 'None', 'Christianity', 'Male', '01-01-2020', '', '', 'Male', '', '', '', '', '', '', '', 'Male', '', '', '', '', '', 0, 'waiting', 'true', NULL, NULL);

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
('n2lu6t', 'fatherfrfv', 'parent', '$2b$10$FYpZRPAsIuy/7su3Ed0k/e2pctXLw9g56o8JB.ekmDnGSvfWof9dS', '0', 1, '4423', 'Tue, 23 Jul 2024 12:54:17 GMT', '', 'true'),
('8daw2h', 'userifvl', 'student', '$2b$10$KtOIAb0LxSJTDj6Iyv0lF.YAxgKbH8uy8RII8MthfdMvf8CD9nJn.', '0', 2, '8806', 'Tue, 23 Jul 2024 12:54:17 GMT', '', 'true'),
('std5pk', 'greg172b', 'student', '$2b$10$O1NGi0d3kJ41PLBcEM04S.tENQo68DrOlH40Qrv9qxyQf5c.4waHm', '0', 3, '1149', 'Wed, 24 Jul 2024 11:11:22 GMT', '', 'true'),
('ka9fai', 'fareferf8wx9', 'parent', '$2b$10$2DELpYVXSZxi5jr8Wt6LUeBDlHic6jB0T92lJ.vdq/X8LOKD7t6Da', '0', 4, '7531', 'Wed, 24 Jul 2024 11:15:34 GMT', '', 'true'),
('3mryk0', 'dsfsdfasfdul7', 'student', '$2b$10$SfqMxU3H9XGB1biMJn84e.GuVcULAVtW1YjFzNu/KOoiEf/aDW9he', '0', 5, '5811', 'Wed, 24 Jul 2024 11:15:34 GMT', '', 'true'),
('nv1u2w', 'efwaerreraj3h', 'student', '$2b$10$qnko8WUQfdhjdOHFV906iOZfODcOuuPhdzmlY7sN.U6LOytHXhyq6', '0', 6, '2878', 'Wed, 24 Jul 2024 11:16:28 GMT', '', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
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
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sectiongroup`
--
ALTER TABLE `sectiongroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
