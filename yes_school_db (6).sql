-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 11:19 AM
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
  `feegeneratedate` varchar(100) DEFAULT NULL,
  `cartegory` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `student_id`, `feepayable`, `accountcode`, `scholarship`, `arrears`, `accountbalance`, `preference`, `createdby`, `createdat`, `feegeneratedate`, `cartegory`) VALUES
(1, 'SD20241110', 0, NULL, 0, '90', 90, '0', 'Greg Kay', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(2, 'SD20241111', 0, NULL, 0, '0', 0, '0', 'Greg Kay', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(3, 'SD20241112', 0, NULL, 0, '90', 90, '0', 'Greg Kay', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(4, 'SD20241113', 0, NULL, 0, '90', 90, '0', 'Greg Kay', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(5, 'SD20241114', 0, NULL, 0, '420', 420, '0', 'Greg Kay', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(6, 'SD20241115', 0, NULL, 0, '0', 0, '0', 'Greg Kay', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(7, 'SD20241116', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(8, 'SD20241117', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(9, 'SD20241118', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(10, 'SD20241119', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(11, 'SD20241120', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(12, 'SD20241121', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(13, 'SD20241122', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(14, 'SD20241123', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(15, 'SD20241124', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(16, 'SD20241125', 0, NULL, 0, '330', 330, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(17, 'SD20241126', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(18, 'SD20241127', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(19, 'SD20241128', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(20, 'SD20241129', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(21, 'SD20241130', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(22, 'SD20241131', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(23, 'SD20241132', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(24, 'SD20241133', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(25, 'SD20241134', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(26, 'SD20241135', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(27, 'SD20241136', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(28, 'SD20241137', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(29, 'SD20241138', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(30, 'SD20241139', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(31, 'SD20241140', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(32, 'SD20241141', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(33, 'SD20241142', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(34, 'SD20241143', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(35, 'SD20241144', 0, NULL, 0, '360', 360, '0', 'Greg Kay', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Wed, 04 Dec 2024 14:32:17 GMT', NULL),
(36, 'SD20251110', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Wed, 15 Jan 2025 09:45:23 GMT', NULL, 'GENERAL'),
(37, 'SD20251111', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Wed, 15 Jan 2025 09:45:23 GMT', NULL, 'GENERAL'),
(38, 'SD20251112', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Wed, 15 Jan 2025 09:45:23 GMT', NULL, 'GENERAL'),
(39, 'SD20251113', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Wed, 15 Jan 2025 09:45:23 GMT', NULL, 'GENERAL'),
(40, 'SD20251114', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Wed, 15 Jan 2025 09:45:23 GMT', NULL, 'SPECIAL'),
(41, 'SD20251115', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Wed, 15 Jan 2025 09:45:23 GMT', NULL, 'FOREIGN '),
(42, 'SD20251116', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Thu, 16 Jan 2025 09:36:01 GMT', NULL, 'FOREIGN '),
(43, 'SD20251117', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Thu, 16 Jan 2025 09:36:01 GMT', NULL, 'GENERAL'),
(44, 'SD20251118', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Thu, 16 Jan 2025 09:36:01 GMT', NULL, 'FOREIGN '),
(45, 'SD20251119', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Thu, 16 Jan 2025 09:36:01 GMT', NULL, 'GENERAL'),
(46, 'SD20251110', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(47, 'SD20251111', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(48, 'SD20251112', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(49, 'SD20251113', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(50, 'SD20251114', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(51, 'SD20251115', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(52, 'SD20251116', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(53, 'SD20251117', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(54, 'SD20251118', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(55, 'SD20251119', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(56, 'SD20251120', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(57, 'SD20251121', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(58, 'SD20251122', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(59, 'SD20251123', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(60, 'SD20251124', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(61, 'SD20251125', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(62, 'SD20251126', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(63, 'SD20251127', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(64, 'SD20251128', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(65, 'SD20251129', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(66, 'SD20251130', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(67, 'SD20251131', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(68, 'SD20251132', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(69, 'SD20251133', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(70, 'SD20251134', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(71, 'SD20251135', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(72, 'SD20251136', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(73, 'SD20251137', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(74, 'SD20251138', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(75, 'SD20251139', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(76, 'SD20251140', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(77, 'SD20251141', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(78, 'SD20251142', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(79, 'SD20251143', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(80, 'SD20251144', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(81, 'SD20251145', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(82, 'SD20251146', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(83, 'SD20251147', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(84, 'SD20251148', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(85, 'SD20251149', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(86, 'SD20251150', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(87, 'SD20251151', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(88, 'SD20251152', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(89, 'SD20251153', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(90, 'SD20251154', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(91, 'SD20251155', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(92, 'SD20251156', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(93, 'SD20251157', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(94, 'SD20251158', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(95, 'SD20251159', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(96, 'SD20251160', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(97, 'SD20251161', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(98, 'SD20251162', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(99, 'SD20251163', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(100, 'SD20251164', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(101, 'SD20251165', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(102, 'SD20251166', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(103, 'SD20251167', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(104, 'SD20251168', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(105, 'SD20251169', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(106, 'SD20251170', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(107, 'SD20251171', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(108, 'SD20251172', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(109, 'SD20251173', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(110, 'SD20251174', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(111, 'SD20251175', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(112, 'SD20251176', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(113, 'SD20251177', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(114, 'SD20251178', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(115, 'SD20251179', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(116, 'SD20251180', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(117, 'SD20251181', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(118, 'SD20251182', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(119, 'SD20251183', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(120, 'SD20251184', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(121, 'SD20251185', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(122, 'SD20251186', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(123, 'SD20251187', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(124, 'SD20251188', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(125, 'SD20251189', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(126, 'SD20251190', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(127, 'SD20251191', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(128, 'SD20251192', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(129, 'SD20251193', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(130, 'SD20251194', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(131, 'SD20251195', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(132, 'SD20251196', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(133, 'SD20251197', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(134, 'SD20251198', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(135, 'SD20251199', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(136, 'SD20251200', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(137, 'SD20251201', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(138, 'SD20251202', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(139, 'SD20251203', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(140, 'SD20251204', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(141, 'SD20251205', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(142, 'SD20251206', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(143, 'SD20251207', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(144, 'SD20251208', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(145, 'SD20251209', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(146, 'SD20251210', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(147, 'SD20251211', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(148, 'SD20251212', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(149, 'SD20251213', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(150, 'SD20251214', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(151, 'SD20251215', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(152, 'SD20251216', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(153, 'SD20251217', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(154, 'SD20251218', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(155, 'SD20251219', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(156, 'SD20251220', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(157, 'SD20251221', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(158, 'SD20251222', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(159, 'SD20251223', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(160, 'SD20251224', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(161, 'SD20251225', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(162, 'SD20251226', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(163, 'SD20251227', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(164, 'SD20251228', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(165, 'SD20251229', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(166, 'SD20251230', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(167, 'SD20251231', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(168, 'SD20251232', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(169, 'SD20251233', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(170, 'SD20251234', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(171, 'SD20251235', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(172, 'SD20251236', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(173, 'SD20251237', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(174, 'SD20251238', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(175, 'SD20251239', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(176, 'SD20251240', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(177, 'SD20251241', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(178, 'SD20251242', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(179, 'SD20251243', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(180, 'SD20251244', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(181, 'SD20251245', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(182, 'SD20251246', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(183, 'SD20251247', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(184, 'SD20251248', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(185, 'SD20251249', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(186, 'SD20251250', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(187, 'SD20251251', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(188, 'SD20251252', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(189, 'SD20251253', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(190, 'SD20251254', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(191, 'SD20251255', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(192, 'SD20251256', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(193, 'SD20251257', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(194, 'SD20251258', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(195, 'SD20251259', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(196, 'SD20251260', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(197, 'SD20251261', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(198, 'SD20251262', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(199, 'SD20251263', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(200, 'SD20251264', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(201, 'SD20251265', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(202, 'SD20251266', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(203, 'SD20251267', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(204, 'SD20251268', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(205, 'SD20251269', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(206, 'SD20251270', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(207, 'SD20251271', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(208, 'SD20251272', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(209, 'SD20251273', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(210, 'SD20251274', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(211, 'SD20251275', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(212, 'SD20251276', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(213, 'SD20251277', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(214, 'SD20251278', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(215, 'SD20251279', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(216, 'SD20251280', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(217, 'SD20251281', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(218, 'SD20251282', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(219, 'SD20251283', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(220, 'SD20251284', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(221, 'SD20251285', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(222, 'SD20251286', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(223, 'SD20251287', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(224, 'SD20251288', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(225, 'SD20251289', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(226, 'SD20251290', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(227, 'SD20251291', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(228, 'SD20251292', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(229, 'SD20251293', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(230, 'SD20251294', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(231, 'SD20251295', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(232, 'SD20251296', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(233, 'SD20251297', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(234, 'SD20251298', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(235, 'SD20251299', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(236, 'SD20251300', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(237, 'SD20251301', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(238, 'SD20251302', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(239, 'SD20251303', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(240, 'SD20251304', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(241, 'SD20251305', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(242, 'SD20251306', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(243, 'SD20251307', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 11:42:09 GMT', NULL, NULL),
(244, 'SD20251110', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(245, 'SD20251111', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(246, 'SD20251112', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(247, 'SD20251113', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(248, 'SD20251114', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(249, 'SD20251115', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(250, 'SD20251116', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(251, 'SD20251117', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(252, 'SD20251118', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(253, 'SD20251119', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(254, 'SD20251120', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(255, 'SD20251121', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(256, 'SD20251122', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(257, 'SD20251123', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL'),
(258, 'SD20251124', 0, NULL, 0, '0.00', 0, '0', 'Greg Kay', 'Sat, 15 Feb 2025 13:19:27 GMT', NULL, 'GENERAL');

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
  `amount` decimal(50,0) DEFAULT 0,
  `class` varchar(50) DEFAULT NULL,
  `scartegory` varchar(100) DEFAULT NULL,
  `feegeneratedate` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `cartgroupid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignfeecartegory`
--

INSERT INTO `assignfeecartegory` (`id`, `total`, `feename`, `amount`, `class`, `scartegory`, `feegeneratedate`, `createdat`, `createdby`, `cartgroupid`) VALUES
(36, '60', 'TUITION', 80, 'KG 1', 'CONTINUAL ', NULL, '2025-01-22', 'Greg Kay', NULL),
(39, '30', 'TUITION', 30, 'KG 2', 'FOREIGN ', NULL, '2025-02-13', 'Greg Kay', NULL),
(47, '150', 'TUITION', 40, 'PRIMARY 1', 'CONTINUAL ', NULL, '2025-02-13', 'Greg Kay', NULL),
(52, '30', 'TUITION', 70, 'KG 1', 'FOREIGN ', NULL, '2025-02-13', 'Greg Kay', NULL),
(58, '50', 'TUITION', 10, 'KG 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(59, '50', 'FEEDING', 10, 'KG 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(60, '50', 'TRANSPORTATION', 10, 'KG 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(61, '50', 'MAINTENANCE', 10, 'KG 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(62, '50', 'P.T.A', 10, 'KG 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(63, '50', 'TUITION', 10, 'KG 2', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(64, '50', 'FEEDING', 10, 'KG 2', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(65, '50', 'TRANSPORTATION', 10, 'KG 2', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(66, '50', 'MAINTENANCE', 10, 'KG 2', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(67, '50', 'P.T.A', 10, 'KG 2', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(68, '50', 'TUITION', 10, 'PRIMARY 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(69, '50', 'FEEDING', 10, 'PRIMARY 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(70, '50', 'TRANSPORTATION', 10, 'PRIMARY 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(71, '50', 'MAINTENANCE', 10, 'PRIMARY 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL),
(72, '50', 'P.T.A', 10, 'PRIMARY 1', 'GENERAL', NULL, '2025-02-15', 'Greg Kay', NULL);

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

--
-- Dumping data for table `assignfeerecord`
--

INSERT INTO `assignfeerecord` (`id`, `class`, `total`, `createdat`, `createdby`, `status`, `cartegory`) VALUES
(1, 'PRIMARY 1', '120', '2025-01-15', 'Greg Kay', 'pending', 'GENERAL'),
(2, 'KG 1', '50', '2025-01-16', 'Greg Kay', 'pending', 'FOREIGN '),
(3, 'KG 1', '10', '2025-01-16', 'Greg Kay', 'pending', 'SPECIAL'),
(4, 'KG 1', '110', '2025-01-16', 'Greg Kay', 'pending', 'GENERAL'),
(5, 'KG 2', '30', '2025-01-16', 'Greg Kay', 'pending', 'GENERAL'),
(6, 'KG 2', '60', '2025-01-16', 'Greg Kay', 'pending', 'FOREIGN '),
(7, 'KG 1', '160', '2025-01-16', 'Greg Kay', 'pending', 'GENERAL'),
(8, 'KG 1', '140', '2025-01-16', 'Greg Kay', 'pending', 'FOREIGN '),
(9, 'KG 1', '20', '2025-01-16', 'Greg Kay', 'pending', 'GENERAL'),
(10, 'KG 1', '20', '2025-01-16', 'Greg Kay', 'pending', 'GENERAL'),
(11, 'KG 1', '90', '2025-01-16', 'Greg Kay', 'pending', 'GENERAL'),
(12, 'KG 1', '50', '2025-01-16', 'Greg Kay', 'pending', 'SPECIAL'),
(13, 'KG 1', '500', '2025-01-22', 'Greg Kay', 'pending', 'GENERAL'),
(14, 'KG 1', '250', '2025-01-22', 'Greg Kay', 'pending', 'GENERAL'),
(15, 'KG 2', '250', '2025-01-22', 'Greg Kay', 'pending', 'GENERAL'),
(16, 'PRIMARY 1', '250', '2025-01-22', 'Greg Kay', 'pending', 'GENERAL'),
(17, 'PRIMARY 2', '250', '2025-01-22', 'Greg Kay', 'pending', 'GENERAL'),
(18, 'PRIMARY 3', '250', '2025-01-22', 'Greg Kay', 'pending', 'GENERAL'),
(19, 'KG 1', '50', '2025-01-22', 'Greg Kay', 'pending', 'FOREIGN '),
(20, 'KG 1', '60', '2025-01-22', 'Greg Kay', 'pending', 'CONTINUAL '),
(21, 'KG 2', '30', '2025-02-13', 'Greg Kay', 'pending', 'FOREIGN '),
(22, 'PRIMARY 1', '90', '2025-02-13', 'Greg Kay', 'pending', 'FOREIGN '),
(23, 'PRIMARY 2', '130', '2025-02-13', 'Greg Kay', 'pending', 'FOREIGN '),
(24, 'PRIMARY 1', '150', '2025-02-13', 'Greg Kay', 'pending', 'CONTINUAL '),
(25, 'KG 1', '40', '2025-02-13', 'Greg Kay', 'pending', 'GENERAL'),
(26, 'KG 1', '30', '2025-02-13', 'Greg Kay', 'pending', 'FOREIGN '),
(27, 'KG 1', '50', '2025-02-14', 'Greg Kay', 'pending', 'GENERAL'),
(28, 'KG 1', '50', '2025-02-15', 'Greg Kay', 'pending', 'GENERAL'),
(29, 'KG 2', '50', '2025-02-15', 'Greg Kay', 'pending', 'GENERAL'),
(30, 'PRIMARY 1', '50', '2025-02-15', 'Greg Kay', 'pending', 'GENERAL');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `groupecode` varchar(50) DEFAULT NULL,
  `entityid` varchar(50) DEFAULT NULL,
  `classid` varchar(50) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `datetaken` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL
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
(1, '8659', 'KG 1', NULL, '', 'true', NULL, NULL, 'Wed, 15 Jan 2025 09:38:47 GMT', 'Greg Kay'),
(2, '5879', 'KG 2', NULL, '', 'true', NULL, NULL, 'Wed, 15 Jan 2025 09:38:47 GMT', 'Greg Kay'),
(3, '7928', 'PRIMARY 1', NULL, '', 'true', NULL, NULL, 'Wed, 15 Jan 2025 09:38:47 GMT', 'Greg Kay'),
(4, '8855', 'PRIMARY 2', NULL, '', 'true', NULL, NULL, 'Wed, 15 Jan 2025 09:38:47 GMT', 'Greg Kay'),
(5, '5617', 'PRIMARY 3', NULL, '', 'true', NULL, NULL, 'Wed, 22 Jan 2025 08:11:36 GMT', 'Greg Kay');

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
-- Table structure for table `examgroup`
--

CREATE TABLE `examgroup` (
  `id` int(11) NOT NULL,
  `grouptitle` varchar(100) DEFAULT NULL,
  `session` varchar(100) DEFAULT NULL,
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
  `examgroup` varchar(50) DEFAULT NULL,
  `overallscore` varchar(10) DEFAULT '0',
  `overallposition` varchar(10) DEFAULT '0',
  `classize` varchar(100) DEFAULT '0'
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
  `createdat` varchar(50) DEFAULT NULL,
  `chosengrade` varchar(50) DEFAULT NULL
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

--
-- Dumping data for table `feepaymentrecords`
--

INSERT INTO `feepaymentrecords` (`id`, `student_id`, `amountpaid`, `stdname`, `class`, `mode`, `balbeforepayment`, `balanceafterpayment`, `arrears`, `session`, `activeaccountid`, `date`, `collectedby`, `receiptid`, `amountinvolved`, `activity`) VALUES
(1, 'SD20251111', '4', 'Fred  Brandt', 'KG 1', 'Cash', '19', '15', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111143', NULL, 'Fee Payment'),
(2, 'SD20251117', '56', 'Caren  Berman', 'KG 1', 'Cash', '250', '194', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111779', NULL, 'Fee Payment'),
(3, 'SD20251116', '45', 'Nunoo  Geli', 'KG 1', 'Cash', '50', '5', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111635', NULL, 'Fee Payment'),
(4, 'SD20251115', '34', 'Manfred  Zulu', 'KG 1', 'Cash', '50', '16', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111595', NULL, 'Fee Payment'),
(5, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '15', '14', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111151', NULL, 'Fee Payment'),
(6, 'SD20251112', '4', 'Julien  Vitz', 'KG 1', 'Cash', '250', '246', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111254', NULL, 'Fee Payment'),
(7, 'SD20251112', '24', 'Julien  Vitz', 'KG 1', 'Cash', '246', '222', '0', '1ST TERM 2025', 'session_d828g6sw2', '2025-01-27', 'Greg Kay', '25111286', NULL, 'Fee Payment'),
(8, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '14', '13', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111144', NULL, 'Fee Payment'),
(9, 'SD20251112', '100', 'Julien  Vitz', 'KG 1', 'Cash', '222', '122', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111289', NULL, 'Fee Payment'),
(10, 'SD20251112', '2', 'Julien  Vitz', 'KG 1', 'Cash', '122', '120', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111251', NULL, 'Fee Payment'),
(11, 'SD20251115', '1', 'Manfred  Zulu', 'KG 1', 'Cash', '16', '15', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111556', NULL, 'Fee Payment'),
(12, 'SD20251117', '2', 'Caren  Berman', 'KG 1', 'Cash', '194', '192', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111722', NULL, 'Fee Payment'),
(13, 'SD20251115', '2', 'Manfred  Zulu', 'KG 1', 'Cash', '15', '13', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '2511152', NULL, 'Fee Payment'),
(14, 'SD20251112', '2', 'Julien  Vitz', 'KG 1', 'Cash', '120', '118', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111232', NULL, 'Fee Payment'),
(15, 'SD20251111', '2', 'Fred  Brandt', 'KG 1', 'Cash', '13', '11', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111137', NULL, 'Fee Payment'),
(16, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '11', '10', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111161', NULL, 'Fee Payment'),
(17, 'SD20251117', '2', 'Caren  Berman', 'KG 1', 'Cash', '192', '190', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111721', NULL, 'Fee Payment'),
(18, 'SD20251116', '1', 'Nunoo  Geli', 'KG 1', 'Cash', '5', '4', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111684', NULL, 'Fee Payment'),
(19, 'SD20251115', '1', 'Manfred  Zulu', 'KG 1', 'Cash', '13', '12', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111593', NULL, 'Fee Payment'),
(20, 'SD20251112', '1', 'Julien  Vitz', 'KG 1', 'Cash', '118', '117', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111270', NULL, 'Fee Payment'),
(21, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '10', '9', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111182', NULL, 'Fee Payment'),
(22, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '9', '8', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111177', NULL, 'Fee Payment'),
(23, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '8', '7', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111115', NULL, 'Fee Payment'),
(24, 'SD20251111', '2', 'Fred  Brandt', 'KG 1', 'Cash', '7', '5', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '2511112', NULL, 'Fee Payment'),
(25, 'SD20251115', '2', 'Manfred  Zulu', 'KG 1', 'Cash', '12', '10', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111554', NULL, 'Fee Payment'),
(26, 'SD20251117', '2', 'Caren  Berman', 'KG 1', 'Cash', '190', '188', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111728', NULL, 'Fee Payment'),
(27, 'SD20251116', '1', 'Nunoo  Geli', 'KG 1', 'Cash', '4', '3', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111659', NULL, 'Fee Payment'),
(28, 'SD20251115', '1', 'Manfred  Zulu', 'KG 1', 'Cash', '10', '9', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111576', NULL, 'Fee Payment'),
(29, 'SD20251112', '12', 'Julien  Vitz', 'KG 1', 'Cash', '117', '105', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111286', NULL, 'Fee Payment'),
(30, 'SD20251112', '12', 'Julien  Vitz', 'KG 1', 'Cash', '105', '93', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111293', NULL, 'Fee Payment'),
(31, 'SD20251111', '3', 'Fred  Brandt', 'KG 1', 'Cash', '5', '2', '0', '3434', 'session_mcfey5y4v', '2025-01-30', 'Greg Kay', '25111160', NULL, 'Fee Payment'),
(32, 'SD20251111', '1', 'Fred  Brandt', 'KG 1', 'Cash', '2', '1', '0', '3434', 'session_zissj8l72', '2025-02-04', 'Greg Kay', '25111168', NULL, 'Fee Payment'),
(33, 'SD20251110', '100', 'George  Codey', 'KG 1', 'Cash', '700', '600', '650', '3434', 'session_s4stkif19', '2025-02-14', 'Greg Kay', '25111011', NULL, 'Fee Payment'),
(34, 'SD20251111', '100', 'Fred  Brandt', 'KG 1', 'Cash', '2851', '2751', '2661', '3434', 'session_s4stkif19', '2025-02-14', 'Greg Kay', '25111154', NULL, 'Fee Payment'),
(35, 'SD20251110', '100', 'George  Codey', 'KG 1', 'Cash', '600', '500', '650', '3434', 'session_37moelsyc', '2025-02-14', 'Greg Kay', '25111040', NULL, 'Fee Payment'),
(36, 'SD20251110', '10', 'Jeremy Manny Doku', 'KG 1', 'Cash', '50', '40', '0', '1ST TERM 2025', 'session_wmmstaxzh', '2025-02-15', 'Greg Kay', '25111053', NULL, 'Fee Payment'),
(37, 'SD20251110', '10', 'Gregory   Aidoo', 'KG 1', 'Cash', '50', '40', '0', '1ST TERM 2021', '0', '2025-02-15', 'Greg Kay', '25111072', NULL, 'Fee Payment'),
(38, 'SD20251111', '10', 'Jude   Bellingham', 'KG 1', 'Cash', '50', '40', '0', '1ST TERM 2021', 'session_7purz4h7m', '2025-02-15', 'Greg Kay', '25111123', NULL, 'Fee Payment'),
(39, 'SD20251112', '10', 'Marco  Asencio', 'KG 1', 'Cash', '50', '40', '0', '1ST TERM 2021', 'session_7purz4h7m', '2025-02-15', 'Greg Kay', '25111236', NULL, 'Fee Payment'),
(40, 'SD20251113', '10', 'Stella  Dare', 'KG 1', 'Cash', '50', '40', '0', '1ST TERM 2021', 'session_7purz4h7m', '2025-02-15', 'Greg Kay', '251113100', NULL, 'Fee Payment'),
(41, 'SD20251114', '10', 'Foster  Blay', 'KG 1', 'Cash', '50', '40', '0', '1ST TERM 2021', 'session_7purz4h7m', '2025-02-15', 'Greg Kay', '25111494', NULL, 'Fee Payment'),
(42, 'SD20251120', '50', 'Kofi  Danso', 'KG 2', 'Cash', '50', '0', '0', '1ST TERM 2021', 'session_7purz4h7m', '2025-02-15', 'Greg Kay', '2511208', NULL, 'Fee Payment'),
(43, 'SD20251121', '50', 'Grace  Amba', 'KG 2', 'Cash', '50', '0', '0', '1ST TERM 2021', 'session_7purz4h7m', '2025-02-15', 'Greg Kay', '25112146', NULL, 'Fee Payment'),
(44, 'SD20251110', '10', 'Gregory   Aidoo', 'KG 1', 'Cash', '90', '80', '40', '2ND TERM 2021', 'session_sykcbnkem', '2025-02-16', 'Greg Kay', '25111078', NULL, 'Fee Payment'),
(45, 'SD20251114', '1', 'Foster  Blay', 'KG 1', 'Cash', '89', '88', '40', '2ND TERM 2021', 'session_sykcbnkem', '2025-02-16', 'Greg Kay', '25111417', NULL, 'Fee Payment'),
(46, 'SD20251113', '1', 'Stella  Dare', 'KG 1', 'Cash', '84', '83', '40', '2ND TERM 2021', 'session_sykcbnkem', '2025-02-16', 'Greg Kay', '25111373', NULL, 'Fee Payment'),
(47, 'SD20251112', '1', 'Marco  Asencio', 'KG 1', 'Cash', '85', '84', '40', '2ND TERM 2021', 'session_sykcbnkem', '2025-02-16', 'Greg Kay', '25111227', NULL, 'Fee Payment'),
(48, 'SD20251112', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-17', 'Greg Kay', NULL, '1', 'Payment Reversal'),
(49, 'SD20251113', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-17', 'Greg Kay', NULL, '1', 'Payment Reversal'),
(50, 'SD20251110', '12', 'Gregory   Aidoo', 'KG 1', 'Cash', '75', '63', '40', '2ND TERM 2021', 'session_sykcbnkem', '2025-02-17', 'Greg Kay', '25111084', NULL, 'Fee Payment'),
(51, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '63', 'Update Balance'),
(52, 'SD20251113', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '84', 'Update Balance'),
(53, 'SD20251113', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '84', 'Update Balance'),
(54, 'SD20251114', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '10', 'Update Balance'),
(55, 'SD20251114', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '11', 'Update Balance'),
(56, 'SD20251113', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '10', 'Update Balance'),
(57, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '10', 'Update Balance'),
(58, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '20', 'Update Balance'),
(59, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '20', 'Update Balance'),
(60, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '100', 'Update Balance'),
(61, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '100', 'Update Balance'),
(62, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '100', 'Update Balance'),
(63, 'SD20251111', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '100', 'Update Balance'),
(64, 'SD20251111', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '100', 'Update Balance'),
(65, 'SD20251112', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '10', 'Update Balance'),
(66, 'SD20251113', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '100', 'Update Balance'),
(67, 'SD20251110', '0', NULL, 'KG 1', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-18', 'Greg Kay', NULL, '10', 'Update Balance');

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
(1, '7kyrsz', 'SD20251110', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Ben4xm', 'sunyani Enclave', NULL, 'Male', 'Father'),
(2, '5w82to', 'SD20251110', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace2lw', 'Accra lapaz', NULL, 'Female', 'Mother'),
(3, 'xyg4m6', 'SD20251111', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluoxy', 'dome', NULL, 'Female', 'Auntie'),
(4, '179h4i', 'SD20251112', 'bbb', '', NULL, '', '', '', 'bbbhwz', '', NULL, '', ''),
(5, 'h4q7bn', 'SD20251209', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benfv9', 'sunyani Enclave', NULL, 'Male', 'Father'),
(6, 'ehqyv2', 'SD20251209', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracef2h', 'Accra lapaz', NULL, 'Female', 'Mother'),
(7, 'zl2bar', 'SD20251210', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulub7h', 'dome', NULL, 'Female', 'Auntie'),
(8, 'vtx0oc', 'SD20251211', 'bbb', '', NULL, '', '', '', 'bbbhrc', '', NULL, '', '');

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
(1, 'RERERE', 'true', 'Sat, 25 Jan 2025 12:09:47 GMT', 'Greg Kay'),
(2, 'ERE', 'true', 'Sat, 25 Jan 2025 12:09:47 GMT', 'Greg Kay'),
(3, 'ERERE', 'true', 'Sat, 25 Jan 2025 12:09:47 GMT', 'Greg Kay'),
(4, 'TTTTT', 'true', 'Sat, 25 Jan 2025 12:09:47 GMT', 'Greg Kay'),
(5, '1111111111111', 'true', 'Sat, 25 Jan 2025 12:09:47 GMT', 'Greg Kay'),
(6, 'UUUU', 'true', 'Sat, 25 Jan 2025 12:59:38 GMT', 'Greg Kay');

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

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `sessionname`, `sessionaccountid`, `activeaccountid`, `activesessionname`, `startmonth`, `createdat`, `createdby`, `active`, `sessioncode`) VALUES
(25, '1ST TERM 2021', 'session_7purz4h7m', 'session_sykcbnkem', '2ND TERM 2021', 'JANUARY', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'false', 'session_7purz4h7m'),
(26, '2ND TERM 2021', 'session_sykcbnkem', 'session_sykcbnkem', '2ND TERM 2021', 'JANUARY', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true', 'session_sykcbnkem'),
(27, '3RD TERM 2021', 'session_gcn8sejh4', 'session_sykcbnkem', '2ND TERM 2021', 'JANUARY', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'false', 'session_gcn8sejh4');

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
-- Table structure for table `session_7purz4h7m`
--

CREATE TABLE `session_7purz4h7m` (
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

--
-- Dumping data for table `session_7purz4h7m`
--

INSERT INTO `session_7purz4h7m` (`student_id`, `amountpaid`, `firstName`, `lastName`, `otherName`, `class`, `arrears`, `session`, `activeaccountid`, `feepayable`, `preference`, `scholarship`, `accountbalance`, `date`, `createdby`) VALUES
('SD20251110', '0.00', 'Gregory ', 'Aidoo', '', 'KG 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '40', '2025-02-15', 'Greg Kay'),
('SD20251111', '10', 'Jude ', 'Bellingham', '', 'KG 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '40', '2025-02-15', 'Greg Kay'),
('SD20251112', '10', 'Marco', 'Asencio', '', 'KG 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '40', '2025-02-15', 'Greg Kay'),
('SD20251113', '10', 'Stella', 'Dare', '', 'KG 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '40', '2025-02-15', 'Greg Kay'),
('SD20251114', '10', 'Foster', 'Blay', '', 'KG 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '40', '2025-02-15', 'Greg Kay'),
('SD20251115', '0.00', 'Endrick', 'Lamar', '', 'PRIMARY 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251116', '0.00', 'Alexis', 'Sanchez', '', 'PRIMARY 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251117', '0.00', 'Frank', 'Dejong', '', 'PRIMARY 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251118', '0.00', 'Fleance', 'Macbeth', '', 'PRIMARY 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251119', '0.00', 'Stephen', 'Banson', '', 'PRIMARY 1', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251120', '50', 'Kofi', 'Danso', '', 'KG 2', '0', '1ST TERM 2021', '0', '50', '0', '0', '0', '2025-02-15', 'Greg Kay'),
('SD20251121', '50', 'Grace', 'Amba', '', 'KG 2', '0', '1ST TERM 2021', '0', '50', '0', '0', '0', '2025-02-15', 'Greg Kay'),
('SD20251122', '0.00', 'Maka', 'Sterling', '', 'KG 2', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251123', '0.00', 'Downing', 'Kofi', '', 'KG 2', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251124', '0.00', 'Nana', 'Blay', '', 'KG 2', '0', '1ST TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay');

-- --------------------------------------------------------

--
-- Table structure for table `session_gcn8sejh4`
--

CREATE TABLE `session_gcn8sejh4` (
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

--
-- Dumping data for table `session_gcn8sejh4`
--

INSERT INTO `session_gcn8sejh4` (`student_id`, `amountpaid`, `firstName`, `lastName`, `otherName`, `class`, `arrears`, `session`, `activeaccountid`, `feepayable`, `preference`, `scholarship`, `accountbalance`, `date`, `createdby`) VALUES
('SD20251110', '10', 'Gregory ', 'Aidoo', '', 'KG 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '40', '2025-02-15', 'Greg Kay'),
('SD20251111', '0', 'Jude ', 'Bellingham', '', 'KG 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251112', '0', 'Marco', 'Asencio', '', 'KG 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251113', '0', 'Stella', 'Dare', '', 'KG 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251114', '0', 'Foster', 'Blay', '', 'KG 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251115', '0', 'Endrick', 'Lamar', '', 'PRIMARY 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251116', '0', 'Alexis', 'Sanchez', '', 'PRIMARY 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251117', '0', 'Frank', 'Dejong', '', 'PRIMARY 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251118', '0', 'Fleance', 'Macbeth', '', 'PRIMARY 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251119', '0', 'Stephen', 'Banson', '', 'PRIMARY 1', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251120', '0', 'Kofi', 'Danso', '', 'KG 2', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251121', '0', 'Grace', 'Amba', '', 'KG 2', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251122', '0', 'Maka', 'Sterling', '', 'KG 2', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251123', '0', 'Downing', 'Kofi', '', 'KG 2', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay'),
('SD20251124', '0', 'Nana', 'Blay', '', 'KG 2', '0', '3RD TERM 2021', '0', '50', '0', '0', '50', '2025-02-15', 'Greg Kay');

-- --------------------------------------------------------

--
-- Table structure for table `session_sykcbnkem`
--

CREATE TABLE `session_sykcbnkem` (
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
('xnwsv4', 'user@user.com', 'Male', 'Admin', 'User', '024123123', '', '', NULL, 'Admin', '0,0,3,4,5,6', '', 1, 'True'),
('xs9g3i', 'user@user.com', 'Male', 'Kay', 'Greg', '', '', '', NULL, '', '1,2,3,4,5,6', '', 7, 'True');

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

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `userId`, `student_id`, `firstName`, `lastName`, `otherName`, `class`, `cartegory`, `previousclass`, `section`, `religion`, `gender`, `dateofbirth`, `accountbalance`, `status`, `isActive`, `filename`, `imagelink`, `feepayable`, `scholarship`, `arrears`, `preference`, `feegeneratedate`, `feegenerateforsession`, `feegeneratecode`, `deposit`, `amountpaid`) VALUES
(1, 'vb0x7b', 'SD20251110', 'Gregory ', 'Aidoo', '', 'KG 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-13', 2000, 'current', 'true', NULL, NULL, 0, '0', '100', '0', '2025-02-18', '2ND TERM 2021', '0', 0, '0'),
(2, 'tvb94m', 'SD20251111', 'Jude ', 'Bellingham', '', 'KG 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '10', '0', '2025-02-18', '2ND TERM 2021', '0', 0, '0'),
(3, 'dswm5i', 'SD20251112', 'Marco', 'Asencio', '', 'KG 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-18', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-18', '2ND TERM 2021', '0', 0, '0'),
(4, '02niwg', 'SD20251113', 'Stella', 'Dare', '', 'KG 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-18', '2ND TERM 2021', '0', 0, '0'),
(5, 'cmkoss', 'SD20251114', 'Foster', 'Blay', '', 'KG 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-11', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-18', '2ND TERM 2021', '0', 0, '0'),
(6, '6cq19y', 'SD20251115', 'Endrick', 'Lamar', '', 'PRIMARY 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(7, 'j7h195', 'SD20251116', 'Alexis', 'Sanchez', '', 'PRIMARY 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(8, 'ffmnuy', 'SD20251117', 'Frank', 'Dejong', '', 'PRIMARY 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-06', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(9, '5cqupj', 'SD20251118', 'Fleance', 'Macbeth', '', 'PRIMARY 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(10, 'l7jg2o', 'SD20251119', 'Stephen', 'Banson', '', 'PRIMARY 1', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-07', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(11, 'fqfffu', 'SD20251120', 'Kofi', 'Danso', '', 'KG 2', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-13', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(12, 'qtq72y', 'SD20251121', 'Grace', 'Amba', '', 'KG 2', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(13, 'pj0xif', 'SD20251122', 'Maka', 'Sterling', '', 'KG 2', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(14, 'x8r1kk', 'SD20251123', 'Downing', 'Kofi', '', 'KG 2', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '01-01-2020', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0'),
(15, '8ff21r', 'SD20251124', 'Nana', 'Blay', '', 'KG 2', 'GENERAL', NULL, 'NONE', 'Christianity', 'Male', '2025-02-03', 2000, 'current', 'true', NULL, NULL, 0, '0', '0', '0', '2025-02-15', '2ND TERM 2021', '0', 0, '0');

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

--
-- Dumping data for table `studentscartegory`
--

INSERT INTO `studentscartegory` (`id`, `title`, `description`, `createdby`, `createdat`, `cartid`) VALUES
(9, 'FOREIGN ', 'undefined', 'Greg Kay', 'Wed, 15 Jan 2025 09:12:42 GMT', 'nz2h7v0'),
(11, 'GENERAL', 'undefined', 'Greg Kay', 'Wed, 22 Jan 2025 08:11:36 GMT', 'qbfku8t'),
(12, 'CONTINUAL ', 'undefined', 'Greg Kay', 'Wed, 22 Jan 2025 08:11:36 GMT', 'ccicm2u');

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
(1, 'f7unf', 'MATH', 'Practical', 'true', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay'),
(7, 'hjimw', 'RME', 'Practical', 'true', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay'),
(8, 'evwzq', 'ENGLISH', 'Theory', 'true', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay'),
(9, 'f6n3v', 'CREATVE ARTS', 'Theory', 'true', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay'),
(10, 'brdwb', 'MUSIC AND DANCE', 'Theory', 'true', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay'),
(11, 's6c05', 'ICT', 'Theory', 'true', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay'),
(15, '5mzkz', 'COM SKILLS', 'Practical', 'true', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay');

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
('zw632n', 'banny25t9', 'parent', '$2b$10$FIreXVzyiyZYMOGUQSjkHOeI0AdEuZ6ukf/ouvRtNL0zlR/nT0ESm', NULL, '0', 2, '9736', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('st3slw', 'granny6d2v', 'parent', '$2b$10$QpEpgileAwgAOSGQ8qzNOupvuzGFlRMAKhsZNUCDA0SCsAQN4WTui', NULL, '0', 3, '9736', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('akztbw', 'jeremy 5mek', 'student', '$2b$10$cN70Vsf6dNIR9QWtQcE1au4BBxpiK9XpZOED/p0Cbn4muuTdnTTP2', NULL, '0', 4, '7802', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('adsuxd', 'noelgcqn', 'student', '$2b$10$84ph8CN.YaeSkd1tmE564uBnQaY6CzlzavXeoIW2FpudprNKURZOC', NULL, '0', 5, '9628', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('xqtgs4', 'sambat9uv', 'student', '$2b$10$1q7xP7CkP3h.EGfhF14.T.CgPQW73tIW8RlmdTdOLGOy0vJyfHyaq', NULL, '0', 6, '7657', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('9qljli', 'folic97c', 'student', '$2b$10$J5WmpYTPzM6DK3Npnq9AvuBaaw1sjJBEFFNKLjhUabBhiHfVrlQYm', NULL, '0', 7, '6291', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('odmyio', 'susan601t', 'student', '$2b$10$Zr4Ej9/I.xLHHvnhJ9.3hufEdixefH3URGEmvXrg3Pvt2Wne68m7K', NULL, '0', 8, '9314', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('5siud7', 'asantez2of', 'student', '$2b$10$O87yo2LL/gshvN95fe7g6uGyGWPKeWPfnl2LHDjIYZ3.IkONVtALO', NULL, '0', 9, '5148', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('lqwh30', 'oppong5kna', 'student', '$2b$10$evAjOBvkJxZWscaAN0qR5.He6jmMm5KbMiRRfaRnVPgcmEuC6cVe.', NULL, '0', 10, '1938', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('31mm02', 'edwinfvxj', 'student', '$2b$10$2WZr.SlxkPxjv1jjYZxQ1ex1b3DFB5WGoOAmgqILIOEXtSJ7hOfeW', NULL, '0', 11, '4526', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('zy38om', 'clarra4cic', 'student', '$2b$10$NvBNaR4hptPo9yL/dMMzzOMtTHmt4Kg5UIRvPNacS1WaEIb4i0pBW', NULL, '0', 12, '3778', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('raj8n3', 'xerxesi26n', 'student', '$2b$10$hQMXo6qH./8Bq1ZgkmFfuOSRaSvSu.AZ2llcSqiR0bvv.QFU2Yo8O', NULL, '0', 13, '5858', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('6b0iyl', 'fred89ix', 'student', '$2b$10$aHZpTaYBYt7Xjh2GNJtrmOYIwujN/yK2T8Q12gMUNnU2cg9XbE5pq', NULL, '0', 14, '3221', 'Thu, 12 Sep 2024 11:40:43 GMT', 'Asante', 'true'),
('gsrfgv', 'ff39ml', 'student', '$2b$10$6O8ocqukcxGajLd8mzIPGuu7OQFwipP84aOTfckqFNlfLjRZS2VvS', NULL, '0', 15, '5171', 'Fri, 13 Sep 2024 10:49:07 GMT', 'Asante', 'true'),
('1224xj', 'ssjxyo', 'student', '$2b$10$yPmZSIe/Z5fx6AExCfOJNeWJ.2NXb/WNMDhzZz3ORz8YWgbTKsSsW', NULL, '0', 16, '5809', 'Fri, 13 Sep 2024 11:42:27 GMT', 'Asante', 'true'),
('dx37pd', 'sds8i3f', 'student', '$2b$10$4rt.YLmR0.I8RolmWXtqgeRz1bA1Jb4iuOSQixmTv2C/1RfRwSdLi', NULL, '0', 17, '3982', 'Fri, 13 Sep 2024 11:46:44 GMT', 'Asante', 'true'),
('l7psuh', 'frank k1w6', 'student', '$2b$10$Bo3SXAyurOFo/eYYgNgAQ.YKgqBIybUqx3Gtz/8W.dtHyg9sIXqgS', NULL, '0', 18, '2391', 'Sat, 28 Sep 2024 11:49:30 GMT', 'Asante', 'true'),
('4l56l1', 'vincent7hrr', 'student', '$2b$10$LpPz7lIKzFXk1orfyrgbqeXnxUYGldVTyjmPjCxd7.arS1JgkipWm', NULL, '0', 19, '7498', 'Sat, 28 Sep 2024 12:03:22 GMT', 'Asante', 'true'),
('tfl5n8', 'Jeremygpt', 'student', '$2b$10$rXdYWVSe9ZSugYB0I7.Ab.eRR1kpCznmASF9wCeaVeVOD1GOe5vhG', NULL, '0', 20, '9774', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('j7mf8a', 'Bentju', 'parent', '$2b$10$j92./RGRThrOX6NJFoDvG.xxn0LRtToojPrNNjlOBwBRSiKZ8aJiK', NULL, '0', 21, '2690', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5cu3tw', 'Graces5q', 'parent', '$2b$10$.elESQEkobwpDzG8COSv/u0sfhwiAmOX5mIl2OiAma00ogIC1h62O', NULL, '0', 22, '5075', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('tsn70v', 'Gregory6rv', 'student', '$2b$10$uuUt8LQdS/eREF5SSoCvXuRZxHynHlKbjReDkCJu8SiyH5GIluvJ.', NULL, '0', 23, '7584', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('zdxomq', 'Zuluqid', 'parent', '$2b$10$KBwilIufSoQrWuAJQDtf6uuU5EyU5kMtTcPcpxCJ.OQJI010P2/rq', NULL, '0', 24, '3132', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('e1pnmq', 'bbbbbbtn6', 'student', '$2b$10$kIvhF4Pzw8q0U3t91oGvO.jOsfEm6avn/cFyUClo2JK4zzftPexhu', NULL, '0', 25, '5748', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5pficj', 'bbbfs4', 'parent', '$2b$10$2G.nI4JtbHsBpY35jzbs7.Nnm0ggGcWt3Whzqd7cJkBt2vEBEL1Ji', NULL, '0', 26, '7983', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7juzzo', 'rrrrlbo', 'student', '$2b$10$fM335/nui5Pf/AbzB8zf3.jHr3TT8cnSZEz8wGhNnH.sN164qj3Dq', NULL, '0', 27, '5396', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('inug2b', 'rrrrrpre', 'student', '$2b$10$FiaY87FaiE0gLlZGTyK0lOOf.dSHKRi49c1Q2eSTK7SrFyyFKrQ4e', NULL, '0', 28, '2246', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hky8nb', 'eeeekut', 'student', '$2b$10$rsnMd4771DzA8LuyoFc.8uVZmktLDNl0pbHVSBmG0Ky9fMRWLyai2', NULL, '0', 29, '8240', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('sscwg7', 'rrrrrreyw', 'student', '$2b$10$in9sicOT12floEm1ILzDM.PLr.CF1Ac2H2BrAjlGEzQfwJDNatDRK', NULL, '0', 30, '9897', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('houa8o', 'eeeegtb', 'student', '$2b$10$g9Q02mf59nxanNQwNjORPeIk9KgOrgzfpvIFpuR7dQqUWnLJH2.9q', NULL, '0', 31, '5294', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('wb0wea', 'rrrrrqia', 'student', '$2b$10$WpUut4iI.pW3bz5h05j07OTUWisWmn2UjoYr6lcAN3IS4jx9cTLpO', NULL, '0', 32, '9064', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1i076v', 'eeeedry', 'student', '$2b$10$BMtw7z8tF5asYUzWdANuZ.Za9as6FQOpMI2P9XvUdO.N6uqjOmMxm', NULL, '0', 33, '4863', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('z9fcur', 'dewenek', 'student', '$2b$10$MzG19VJ8bEaa1GjqRhK1IOQw2/Rkj6CknxRuePJjcwfXkwZBACsNa', NULL, '0', 34, '9213', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ygolyi', 'wedn5o', 'student', '$2b$10$B9zj2Q/g9.cVLmjFuPnscekW2C7jkB4LQPhyiqwN22ItFT99tD90W', NULL, '0', 35, '2920', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('kfmow5', 'wedtqc', 'student', '$2b$10$0VSHP0SbDyQe99hDIP7c.eikZ0nuFl0BHH7fkkonj0v7N.o5vpDfC', NULL, '0', 36, '3949', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ohpenu', 'wedfnk', 'student', '$2b$10$7iKfv4UZDtiJHYGJZ4CqtuDK/cTKp5HS3GEYXSZWYpAuXS9WrgY2W', NULL, '0', 37, '4540', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('fkc81v', 'weddtu', 'student', '$2b$10$sUImphWXNYNhyvpyuO3WsupG.TUZJrIVD6xBjYaH6Dbzg.VSIkof6', NULL, '0', 38, '2860', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('lfz42a', 'wedetp', 'student', '$2b$10$dkHnT.uThKU5NPML0V1Cs.SBLU2gwHJLtnzED5uBUFS35nrc5cn2O', NULL, '0', 39, '6426', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('zxind5', 'edlro', 'student', '$2b$10$lcPQ.fpvaJha9b30L9OpweesqGM2Z4pONqAs8yTWgaYvM2G.a4nIG', NULL, '0', 40, '6230', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1j67i2', 'wedmep', 'student', '$2b$10$s.FIwKpXVlhjOAtaghrmbu0yy0IcaWICGa0DgpDyE0o3oG90QDYx6', NULL, '0', 41, '6392', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('h0l7ju', 'wdln', 'student', '$2b$10$pCg.B5Cm8Uo.xkdJ.T3XauMvSkvdWOhhn3BgzkjWWt0L1LrMMfK36', NULL, '0', 42, '2644', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('b7r6py', 'wdkyx', 'student', '$2b$10$hcdV3.eNHlKHWODyVlgXse.7Cmf0jOB7l/JGQ0YLNPf.HwL8MvYC.', NULL, '0', 43, '1767', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('vxheho', 'wdkos', 'student', '$2b$10$qlBM/CepkJoC6eku0zrDQOWb/w7WgxSTzX82ey3uw7Lp/Q7/pwpj.', NULL, '0', 44, '6094', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1o86p3', 'wed8mq', 'student', '$2b$10$ooBWFnUSACjx7c.heWRd8.1hAT/6hSfMCIe6cEdzfX7IjeHNdy.7.', NULL, '0', 45, '8881', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('avivoq', 'wdqeg', 'student', '$2b$10$AErvdtkJE1sTpRTyXUIRH.EWFJoTYnKYr4QsXmJDF2DMFaot1q.dq', NULL, '0', 46, '8733', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7fhnx7', 'dewe8da', 'student', '$2b$10$7pF0yAlyGw6QctL8bIVk2OKzdQjzrk/qg0svO3LVJ2qKrTjp7Ufjq', NULL, '0', 47, '5303', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5f2wkh', 'dwedruo', 'student', '$2b$10$eWPb0BiNlyjG7jhSKYDW4ekXkkAjf81P9R2T2CeoE7WJtI0h4i/IC', NULL, '0', 48, '5405', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dx83ra', 'wdzd4', 'student', '$2b$10$nttbnWM8gCnnEH.dkZbbf.02gf7PoNkR15VWTN3hHR6mMybE2JLCu', NULL, '0', 49, '2000', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('19gb6k', 'wdjfs', 'student', '$2b$10$sXRZlabMRs7s6JhMf4V6heSdoSn8/j/9ILjPMGmrVFwWRTOR6Bjqu', NULL, '0', 50, '1950', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8nwkd5', 'wedrum', 'student', '$2b$10$0eqU8XkW2LdEWnbs5V7txe6/zhHi8qKEU5tmlKGkbeeR2pWSHJgki', NULL, '0', 51, '8408', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5a9enl', 'wdtbl', 'student', '$2b$10$nhra71BcsgUww.ZpbjurWe7IZeuRg9BS/VoVRL0oaii9UTuPVs1Aq', NULL, '0', 52, '1121', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('zmdvs1', 'Jeremydl8', 'student', '$2b$10$3yqPUgWWHggSBHWBjcDLG.TCOdIm9sNHVb83aAA50zZhAZq7pEYmm', NULL, '0', 53, '1071', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('4ep74p', 'Bengxn', 'parent', '$2b$10$g/com7eaXrw6Ui2yS.Wf2uYHbrKJzz5BcmJCSX.EJT3JBBb6a3vmG', NULL, '0', 54, '5334', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('t725hn', 'Gracewqs', 'parent', '$2b$10$Hen//t2MHD/U7NeLjjMqwenislRBJxkS8eGu4q7M0vo3kH.9J62c.', NULL, '0', 55, '2812', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7pdedf', 'Gregory1hw', 'student', '$2b$10$hubv67fikVk9iF6ybn8l/O2pU4shiDSv72mAsM10T0DOs8GwRAz4O', NULL, '0', 56, '6162', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('mr994w', 'Zulurg4', 'parent', '$2b$10$sSIMm7vi7cHZGrbU5CsmcuAOkVHNNENaNWWHjQrDw4SDlXVJpO1m.', NULL, '0', 57, '4688', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('sb56xg', 'bbbbbbafb', 'student', '$2b$10$mmjm3psNGq09J05398QoS.h1kr28ReH5T/M/Wv/TcUfrL6DF4tsAm', NULL, '0', 58, '8093', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('jo9yt7', 'bbbgeb', 'parent', '$2b$10$71gYijIvBpBGIa7kypHfUuxXxe7VvXyorJTRdaZ6CIyYvvtUJNw1.', NULL, '0', 59, '7322', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8x58xh', 'rrrrkfr', 'student', '$2b$10$yRuU./nfaVrHJ1ZK8ealxuTBycudsYiSc6PJn5o/YWLMxhJ7RvGs.', NULL, '0', 60, '7893', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('teumvq', 'rrrrraq1', 'student', '$2b$10$.YCrvphrWVzMW1V/Enozc.zPWPTe0VU0XWLOc1bVdN3tF75jrprP.', NULL, '0', 61, '4344', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qvc3pb', 'eeees99', 'student', '$2b$10$jdNC2o/.Cjemi6k3y1485.YHaLZmsXEAWMErvSubcBPAW9i4u.epi', NULL, '0', 62, '1352', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qgd14m', 'rrrrrrjef', 'student', '$2b$10$bAuIYKsF.I7crTwbgCeW5ueBVKnTUq.XdMLygiS2UQjWqhNJdIWKq', NULL, '0', 63, '4745', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('s7jdfh', 'eeeebhf', 'student', '$2b$10$3CVNL5h1B2g./tyRh3HC5ewmJ9eWCDw9vAxSScJ41ktT5x1gJob7G', NULL, '0', 64, '8652', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('wkn0gj', 'rrrrrkwv', 'student', '$2b$10$jSF87Ynrvb00G1KxdzaPeuJEHw1LP2bL.RPh/8m0cFS/BWCe3w/aC', NULL, '0', 65, '8929', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1l521k', 'eeeeuqa', 'student', '$2b$10$gc7w0ubkYC5ZeHcuxY6cSukgV7MwVbnWtEl6zDxOgVUmsNU0KBWRS', NULL, '0', 66, '5139', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('vxj9le', 'deweahz', 'student', '$2b$10$jOwsfmubpj4xJH2GGTIB9.UntGg6KTPSnnd9aqUAtYgsbR11Nt./W', NULL, '0', 67, '3657', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y8zcyg', 'wedy4m', 'student', '$2b$10$MUAqYtcamOmy2CEVAKChEemdNjcx6LyI3td/xCOKGkJnVP/1RMR.2', NULL, '0', 68, '3431', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('4pbumb', 'wedqzz', 'student', '$2b$10$263WsdGML0.9x13wXCDQZuy7pW8SdPrjQoN8RQFWSJt2T61.IbeR6', NULL, '0', 69, '8779', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ope0yu', 'wedeag', 'student', '$2b$10$ACvRa9FeWzy89b1ulOvJie.iNbB2x1KCu.aEcOyOvLAdlbcL13.HW', NULL, '0', 70, '3616', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ppdfoo', 'weddfw', 'student', '$2b$10$l/SmabnY05KNLZ4/R1hXg.fAws0Wa1/vxDm9dL/auEuEPMoOd4sES', NULL, '0', 71, '7027', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bogxt8', 'wedmhx', 'student', '$2b$10$kYWjwWMtUgh4.BA7MbJ5v.Os3fqVsM3Vx3/uQTGMsnmjGJ0NgUMrS', NULL, '0', 72, '3795', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2v2dsw', 'edi82', 'student', '$2b$10$mI6jCbT2zHxhLQDkYn/kC.x1LcQuypmANnyhomKdToYMg.qqNMtQ.', NULL, '0', 73, '4884', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('l82lsk', 'wedggu', 'student', '$2b$10$sM3CgOmpxbJTP3NYoDN0x.ZNHp8Q8cXrbsx5/Aw/8Mcn1iKJWokMu', NULL, '0', 74, '1437', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('yit8z0', 'w5xo', 'student', '$2b$10$hCXnvBlq8b8F8NpHPeR3tepKiVa59Xdky6kqc7yAqOQdsR0A0dV1a', NULL, '0', 75, '6430', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('sprc9d', 'wdnsn', 'student', '$2b$10$tkl9dWhRKQKn14RZbOW6L.1D0EQbGZFEA.gElc2lVU9kW0rTWDjW.', NULL, '0', 76, '5527', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rhlasb', 'wdkd8', 'student', '$2b$10$r0asLV5sC0MszzFkhOniDe2vZ5um/s8hmdn7qV7jj1l55VcAwrGwm', NULL, '0', 77, '3445', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2ecs35', 'wed71h', 'student', '$2b$10$ozqtAC0rf4IJZKnsQ5vXoeAswxznexqjQ.G0jQsImGpB6t..fNoiK', NULL, '0', 78, '6342', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('fp5mmm', 'wdnoj', 'student', '$2b$10$vuHpgtrcDAQxpy3j6vJG4.wP1kTigPXF550yIN56xqP3yGgRkN7CK', NULL, '0', 79, '3919', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5tewcn', 'dewend7', 'student', '$2b$10$z5/7Qnp95rf3XbVfsmOnNeWKu3qtgsZuPIqLaB8joMWP7BMHyeJ/6', NULL, '0', 80, '1768', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('nm3uzu', 'dwedn7i', 'student', '$2b$10$YhLhyXw201D/ydLiB3bKIOQ5bhscYy6aO3sRdF0rRMwrWbld4KNP6', NULL, '0', 81, '3547', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('eo8uwf', 'wdmmk', 'student', '$2b$10$kaAfWkHFm5AvzZPcnwlHN.vP59xESvQfLPMnxJP78TT1xCo82KEXO', NULL, '0', 82, '2659', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('u6ls3h', 'wdsto', 'student', '$2b$10$NZ68cZaIkyKcqH.0tkjzXOVqoRMlS9q/SmT12n2F5/9wXcpykvzAG', NULL, '0', 83, '1103', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('lwbrg7', 'wedqnv', 'student', '$2b$10$3Cu2jjI3zkCstjKY9rsSseJEi9Zqn0m/hCkmgLUgY2vaUoWbw2zEy', NULL, '0', 84, '8048', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('q4rcne', 'wdgfj', 'student', '$2b$10$GFrzZL4bSPoYfcSsvGhHB.6CCPqTEwEfdYd9YMvyo6g6X..uMq6tO', NULL, '0', 85, '1301', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8xnor3', 'Jeremyrfh', 'student', '$2b$10$pypu6TKcaqbNx2BSyLRgeuNz235JblBOaEXlMbKIAkZ4kRXcfCG1m', NULL, '0', 86, '8389', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('h0gzz4', 'Benb5f', 'parent', '$2b$10$cyI7xeAjKYECjZBS2jv2/.XyQE6e5YefZMUGDNHidWGI2Bs.y4SKy', NULL, '0', 87, '6319', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('okh91i', 'Gracem26', 'parent', '$2b$10$7PSrCaMOIugfn7DURQPNqOGEOIDylTR.KZnKyY3aqGlsylUClwvLK', NULL, '0', 88, '1608', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('to50du', 'Gregorywpo', 'student', '$2b$10$kWo2yK.LnDDbeoVlONayMOW0ZY74F6dThFSugydTk8YexLQz6rexm', NULL, '0', 89, '2542', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('cfw1t0', 'Zulursu', 'parent', '$2b$10$ozq8IHGjBLIS9goDIFtbxufFAHvM14VkY21m469vAnvvn1pJCxfHa', NULL, '0', 90, '9299', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('i9vpda', 'bbbbbbovt', 'student', '$2b$10$2i7WSliLZqTbpm4mdlNVJekB5NVXJV67/3/b2WOpT.ehb4hKGxKeW', NULL, '0', 91, '4286', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('12h4c6', 'bbbqpt', 'parent', '$2b$10$7XoEyhmVZa2cJJIrTlh0/uBTaAmNs0maYs3JFILCnFAVz16JiRLxS', NULL, '0', 92, '9743', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y4g94c', 'rrrr5ip', 'student', '$2b$10$94p2Gu9NMM01mZiq66E3ReboenqJ8ISyXQw/mU4FVpkZLT6G.NKPi', NULL, '0', 93, '9573', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('9lrzk1', 'rrrrrgbs', 'student', '$2b$10$RK38i9hPfS4RVtk5gm/6lueP7.nV.0X3wRWJWbxykUSrQIYryleXG', NULL, '0', 94, '1761', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('mjqnxr', 'eeeeu9d', 'student', '$2b$10$kYrjBojpIdo4GRoRx64GZ.9.0KTeYdoUAtKAjlGHrD7JaYuOmXsDC', NULL, '0', 95, '1299', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1hosrt', 'rrrrrrvuj', 'student', '$2b$10$MIAxccsJqfGCcojXKzfbOeSkO9uLmy3m4huocyHCyUV91MNa93eT2', NULL, '0', 96, '1889', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('x4tg56', 'eeeeuc8', 'student', '$2b$10$B0twr9ELUX7BEMM6mkTjWuvMqZS2m331rtclTAazExVZ4DfAAS8Ai', NULL, '0', 97, '1466', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bu8b1s', 'rrrrr3lg', 'student', '$2b$10$7dDIXNtAwuKatsPJYdJutuoTL7.g2szcjqkE1zOpwmWDZQBAEEbsi', NULL, '0', 98, '7632', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('z7v1ax', 'eeeeqyn', 'student', '$2b$10$lwdl4B/0HtQP1986U9H2reI9abmaKH.FHxUw40dW0TllF7Sjag11u', NULL, '0', 99, '4487', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('wlvjde', 'dewemw2', 'student', '$2b$10$hGe4JPOXCxHMPAwIl.BwmeylXOQ/xsZutShAB3Y9xkYhO9KJ3O1Ia', NULL, '0', 100, '2303', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qpgdig', 'wedh9w', 'student', '$2b$10$nnz1yloynKCi4kdpJEnWbeNg2ssihl5stF7M1eZDzzhgLgcrr8lwu', NULL, '0', 101, '9664', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7dtk5g', 'wedwsm', 'student', '$2b$10$TJpnP.Chxtaz4ev18dSIvuGjbWY0/.4uhO6hx2vEO3MWcrP7WXnhm', NULL, '0', 102, '7545', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hs4lh3', 'wed7yt', 'student', '$2b$10$1upJgz2vx4UjrE65tp6ivOr8wXfsN7KS6ECFd2ImAygEFWnCrg6KW', NULL, '0', 103, '1762', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('fcufho', 'wedwof', 'student', '$2b$10$WmBbYvL1RLK4Ujun8uNoPuUSgW7Df.56tC92znserrx72NPw8Nx6S', NULL, '0', 104, '6971', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('s004kf', 'wedmpy', 'student', '$2b$10$tCD0g6HF/vxeNMlE2OTrSeYWUuTFcGFk.kqlsTkDpvzrU8I7/7ZTS', NULL, '0', 105, '1291', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('vqozji', 'ed9ti', 'student', '$2b$10$CP2Raoq8S3T3/lwFwsyS0uU9nayw5.yu9a28AHZiqy3UO/WLrtmhW', NULL, '0', 106, '3871', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('4ronxm', 'wedxva', 'student', '$2b$10$1kfPLQ.LqmlukyziFGcsBOIarwqE116XSGmpuA5BBA987dYA.ol.u', NULL, '0', 107, '7370', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1q99qv', 'wklu', 'student', '$2b$10$Uw/IrpaTuAn2AOrqjOcNy.AqPAZ8M3loonuxnA4FAAWFtkW4zWnZO', NULL, '0', 108, '5910', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7tl0s7', 'wdxbf', 'student', '$2b$10$F00Q0g/5zyucXT8NEBnlI.4Gtza1E8wZ0iReDscZ6pxtmFPZgyM8e', NULL, '0', 109, '2324', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bfs2ap', 'wdznc', 'student', '$2b$10$5K9KirATdpu0fejed9L8genzwVNzFCuiU6htI1ircYCkRCZP7/hue', NULL, '0', 110, '5820', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('isvdk5', 'weddti', 'student', '$2b$10$KuknKCZF.M/yhWy//VqNneDrFhC1gnDpu7gRmpqUEMAD25EHjdYZm', NULL, '0', 111, '3573', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('3wc5u3', 'wdsux', 'student', '$2b$10$82qzDRK4Y8QdTuoMvw/Ap.n5yxZ3j5AL5Z1WscIduulPSAWa8E.PO', NULL, '0', 112, '4937', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('enjk1a', 'dewekus', 'student', '$2b$10$J8SESDZfiCmv6buRXx5wzOtpa82nEkOhSQCaTiXOnl8tPBwZqBLBy', NULL, '0', 113, '3534', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('twudhe', 'dwedzq8', 'student', '$2b$10$mEBm.IMkiHx0QOKr7dMLM.WVgpZlhbtpqBiiencBgMCIYnGS4JQza', NULL, '0', 114, '1363', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5z0v2z', 'wdba8', 'student', '$2b$10$4KPonHkLeGmgpx.YAFmKCutvPKxmLvO2rl1Fh9wtn5VTbnUehc.nO', NULL, '0', 115, '6955', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('3pkkzl', 'wdcqp', 'student', '$2b$10$NVDb2khDxWdQJMbgp50E4uSNHeZM/we0N29fdvnCxHj8.uagzLqLS', NULL, '0', 116, '2432', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dt6mri', 'wedmce', 'student', '$2b$10$Q8tlu/9pq6k864/IBQENgu58098xY0UvhTllPWEGHw2sij13pp6rS', NULL, '0', 117, '5244', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('do4n4a', 'wdzdj', 'student', '$2b$10$mUEVp/Fu6js5Txw3anIZnOSJl1RR1SsrmD13VsdRqMi2OOcofw6Lu', NULL, '0', 118, '1049', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('gzvbw2', 'Jeremy67c', 'student', '$2b$10$nb8MAdsVWEkOvldco3ZJK.7ZcVc.JS9M29mtbS6BhkGu1cTD7rttS', NULL, '0', 119, '2633', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('yuiif4', 'Benpm2', 'parent', '$2b$10$0IBRGjOg79Lqdb859RTSsOefVjC2ES6m4jjgPH9Jjr3GSwan3gKlO', NULL, '0', 120, '4390', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('yitxhw', 'Gracev4e', 'parent', '$2b$10$RMJJpGzATRIgrtcIH7iRi.oP5Y7uMNOf/A/GlMWrmIJC4oPzelMU6', NULL, '0', 121, '2905', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('r8v4bx', 'Gregorywiq', 'student', '$2b$10$1m.SNQ.0b.bDDPsc3uJyhO3xF7tgcOkxi12T34k43B8meJ9xk2hHa', NULL, '0', 122, '5557', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('mcoz59', 'Zuludl5', 'parent', '$2b$10$8dxQ32i/2SoLZ5ukFSdu1uQQHSUT2GAPyKXh2LBjzLWKWson.c.T6', NULL, '0', 123, '3964', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('pryj65', 'bbbbbbsjf', 'student', '$2b$10$tZIJUQ2GbdVeDZRgRtAFQOo2j6dHh2OPYspmzKzSzHL.93Ojur7jK', NULL, '0', 124, '1643', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('j9ntsf', 'bbbqoj', 'parent', '$2b$10$HlHxeaokSXfxajC.J4KPVu3ytS7U/hjgmG7wETArsvOLQLpaljF.e', NULL, '0', 125, '5233', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('sk8ij7', 'rrrrmul', 'student', '$2b$10$opgerHW8D8tm/kK5CzUKMu84pWQll3ta1/G0PjlHGCsl1//YgJIuu', NULL, '0', 126, '6634', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('4p87gi', 'rrrrrkgd', 'student', '$2b$10$JouoeIPFQ/JzLcE8Jdk4NOkz7N33nIWU/cly0DHrAvZpbI1Go01Le', NULL, '0', 127, '3230', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('k7p2yq', 'eeeemsg', 'student', '$2b$10$I6woCq/xsHZ2BfhlTdo4eeLpbZ57zMaWRYCrrsg/FeUkPSMu7aq4G', NULL, '0', 128, '9467', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rz9t7l', 'rrrrrrdnc', 'student', '$2b$10$1k8Lq6tZf21tcCy4Heo2Ae0toD7zFdIviUIMmlGOYaM4F9zQNh4ua', NULL, '0', 129, '4199', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('unqiec', 'eeeemzp', 'student', '$2b$10$7Ph.cEdUob.D.4AP3J.0bOCL.agKv3Q0Ld/9UpU/1eO9Zm2oLbYDG', NULL, '0', 130, '3043', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('gvfh0f', 'rrrrrhbh', 'student', '$2b$10$9eZybX8E/hb9FJiU5HQnquTu0iNEWeXQEdnuKxdQ/FKPySIHBPv9W', NULL, '0', 131, '6700', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('90a5r6', 'eeee2ve', 'student', '$2b$10$cjAwiYDG6PwRHqy7mkaiG.5MZ..MXBTsPdhJH9l0GVCBmL7ANgTgi', NULL, '0', 132, '6063', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y1x311', 'deweh62', 'student', '$2b$10$o/y.SgwcMS4g5e9GCyLCUeQITDiaLy8ccb.yBgSbWofj.V01TAlGG', NULL, '0', 133, '4166', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ggjaq5', 'wedton', 'student', '$2b$10$bkcx6BCOKfq0ChUz1p7.3elObjWz/jz15jqx4LIy9/HzQdwNSPwVi', NULL, '0', 134, '2591', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('0sgn18', 'wed2pg', 'student', '$2b$10$DRKnVdd5MaVF2CSXbDNkT.UO1WDHvGiA8Z18Q3H9Zyd8Ur4pqjgua', NULL, '0', 135, '3683', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('foq30r', 'wedqbc', 'student', '$2b$10$YPO4n6l5fr/BEhHbCD68t.gwMk.V2/vL0eS.HArcl7yytDtUx8wl.', NULL, '0', 136, '8745', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('s3gp6z', 'wedtqc', 'student', '$2b$10$fnRmHqeZ9731Dq0XRZyZyuapjnmgtNJf.MDDvryp1jm5JFpI09yQC', NULL, '0', 137, '8529', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ntni65', 'wedfw5', 'student', '$2b$10$0EUfPFVDnJ/adzJDwOTkIO7nOD2yP4EDDmfwjyC5MwjTujVrC2NQC', NULL, '0', 138, '4916', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dnu3fk', 'edflc', 'student', '$2b$10$dQ3aq9MlvD8bKVcqzhxGJ.wk90j/V3BWWUdQpKFerl0z2qpgUycny', NULL, '0', 139, '1841', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8c7t0m', 'wedcsg', 'student', '$2b$10$.UBaK5zK0ovZio.5obEcLeTEi8TtpsdNQb6eFdV49sgDrAMidMMdW', NULL, '0', 140, '6498', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ysoiva', 'widy', 'student', '$2b$10$O9l2scP.zdcVlBgN3jjlZei8CmLA6kQMfvuLi6R1K86btZzn0K/A2', NULL, '0', 141, '3733', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ovf9qy', 'wd1bj', 'student', '$2b$10$S6QPzkuZOfXiecFCp3XIxOVUUnp/F/2jRneATa22WCQtiJlNfPz2G', NULL, '0', 142, '9425', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('gzdbsy', 'wduad', 'student', '$2b$10$ZN8hZCKaGmlx.xikeCFs7.3PbJPf14YUtxBCubS3Xo/mk38xbu6Ry', NULL, '0', 143, '4099', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1emca2', 'wed25i', 'student', '$2b$10$ef9gXbtvFIIQLPxhn7sYwO4OSxJ4xs7cm8r1.rjXtsaSGp0mXWm0S', NULL, '0', 144, '2998', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y1rndm', 'wddkk', 'student', '$2b$10$9QNZlCYWbnPJb/EOclausOuufiKWKFtylskDpcgm.a0eZr52JmX5m', NULL, '0', 145, '1369', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hirn63', 'dewe8gr', 'student', '$2b$10$KSd8vP3iU1h3pn3Dh0mFFuEQt/o1FQTx8DRrjLM4KgkjsfLsYr0rW', NULL, '0', 146, '3967', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rc0ld1', 'dwed29r', 'student', '$2b$10$/.LlMt7IBRgHFQjwqQ3dL.N5eIvrojM.uWuV9sY/56tMs0RhNlfPi', NULL, '0', 147, '1687', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('nf2azh', 'wdpph', 'student', '$2b$10$coXVfqIe4qxB.NfnBAnMUeDXXnnafBG2.UuYBs9hc7d2GLyhHQIxe', NULL, '0', 148, '2413', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rtxbye', 'wdsgz', 'student', '$2b$10$zxGLoUVTFYEu0n2d5U32Gupo8mPOgHB8nXOIcs5G21yMNGh.3gfZO', NULL, '0', 149, '6392', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('3u0r54', 'wednxe', 'student', '$2b$10$uzljNeE9mr9.lCFvAfLjvOeA1nL8NMJvxLKI.HdqJlZJdtlpK3/7q', NULL, '0', 150, '2938', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('inoz4x', 'wduqb', 'student', '$2b$10$rTq2lcMPO4jwX2QA8wihkeuXKJoMaJn9uoS4j6wroIBEzqtC7LOZ.', NULL, '0', 151, '2755', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ece6g9', 'Jeremy9ov', 'student', '$2b$10$E/bN.M/qW0Lgro5cl/MLCePsfHkMpkuEC6uDqt4jHoAy5veQtHitq', NULL, '0', 152, '4194', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('th7y4b', 'Bene1s', 'parent', '$2b$10$IfeMO.AWk7jXIE29BfvgBeXPLYIhpG26n/HO85tN79S7TuCQRI1na', NULL, '0', 153, '7754', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('zftd5k', 'Gracepaj', 'parent', '$2b$10$lEpNqTz3KN3TU8jx//PLleWf4IULao1ZF5j4hMtmHxbBtgHZTBAci', NULL, '0', 154, '6922', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('edp4qj', 'Gregorydvg', 'student', '$2b$10$U6VE8e03aT.BbQPX/57KYuoerVdSFl41m2/LI5V1LTbCNGHzVnMG.', NULL, '0', 155, '9011', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('14g1hy', 'Zuluzci', 'parent', '$2b$10$SNByR8EV.21ngA759S..9.RQrZ0J6PMkYEYdTFzjfdCjeupwtknoO', NULL, '0', 156, '8149', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('zku9t8', 'bbbbbbiys', 'student', '$2b$10$3QfA/TSJG4DzMY2B/1sOMu6xOSDFACqxWwYR6ciG5IjmgKXwwgyOq', NULL, '0', 157, '1305', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('stojlr', 'bbbgdr', 'parent', '$2b$10$CHNrsrRZ2YKpYTn2j2.YSe3AjA3SUthGnRkJ53M5K.9f1RctN2MyG', NULL, '0', 158, '3637', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('9936m3', 'rrrrbnm', 'student', '$2b$10$zhjNmFGs7vlo0FDlwH0oHe4wsBRVXvd6dtX6OgN7zl1/0MFJ4PZJu', NULL, '0', 159, '7739', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('83iy4p', 'rrrrrzxm', 'student', '$2b$10$Y14XP2Vk0WkBg1tZWy9D.eTJjXRfqS4sDiamav7Dl3ogxGdzXbvq.', NULL, '0', 160, '1719', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('xc6sw6', 'eeee298', 'student', '$2b$10$.Ft449efKm4F3kScPYHveOf8CB/a7MnGSFiL374VBjuyaGeompcGC', NULL, '0', 161, '6323', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('847cst', 'rrrrrr3cd', 'student', '$2b$10$k4TrBfjsDK1N/15/SFDEwujZEbAMKQxCuK00NZFiMephWiatVJe2e', NULL, '0', 162, '2973', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('pesjow', 'eeeezvp', 'student', '$2b$10$BjM388rnwHwAcs1W7KXVIO8NDWFGKEG3mPpPI204/dRNlYvmdcP/C', NULL, '0', 163, '4181', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rawull', 'rrrrrduz', 'student', '$2b$10$KzJjBgye66EzIzX//4uFt.plId9yStnHQPt9ACCKp7Q0lDp.DuVUO', NULL, '0', 164, '6888', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('nhn287', 'eeee83e', 'student', '$2b$10$67YbptZb1cdHMPJgQlfoFehkr2amDTPO2KLDny0w7XzZgshgJZyMq', NULL, '0', 165, '9629', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('3mvwpj', 'dewef9j', 'student', '$2b$10$XPql4LFDDDoj7LKmKnTmiu1C0bSP6eYFv61UcBDMZT3GpYSw/l5q2', NULL, '0', 166, '8243', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('nl0bfs', 'wed6pi', 'student', '$2b$10$EczLEnvPjPERq17C4V1QUu33wS0iBx1fAiSE7asSeQHqD2QKeZRra', NULL, '0', 167, '5109', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('w6i9y1', 'wedkza', 'student', '$2b$10$A2dL5XR8OujISZk.n0Ya/OsGXxOBeo51ZuLmCgDKmfep6YuHTxXmG', NULL, '0', 168, '6337', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5zqdsn', 'wedu6n', 'student', '$2b$10$DHn.oEN/NVQauFphZn8E8eUhaWns5HsOXEbK21FLt0i3tejczJFzC', NULL, '0', 169, '7270', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hh85zq', 'wedvd6', 'student', '$2b$10$O0tuz2CleN31YLd/8F2bV.xY.DX0jR0cA1k1Q4Ak23k9BQ9WGDXOq', NULL, '0', 170, '9157', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rud57y', 'wedlzr', 'student', '$2b$10$ZGo2nVcokHeNeS4.Ous0Mu5SwslDB.lYt5vTGiOWCTO0VKNWfy3Qm', NULL, '0', 171, '6760', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('yn91ng', 'edhr6', 'student', '$2b$10$PzbiPUAva874fVk7yaTlyO4V6MFY6XipgqQXXjbC.2rwt1RQ9UFm6', NULL, '0', 172, '6045', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('25ckxf', 'wedk8z', 'student', '$2b$10$AeiKVTUREcT39FbtB1xxdOklLLDNY7N9A.MEJgXMLZRUU2rQ1NKti', NULL, '0', 173, '3306', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ztz68a', 'wwwa', 'student', '$2b$10$73UvBZdCIeAeRlmrbPuCMOw04KnsgJ5Pe9BT8usLhxVUcuGgWYloa', NULL, '0', 174, '6860', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y2wepu', 'wdzsp', 'student', '$2b$10$i7Z/l.F5ByL.VwdDf1nh0.57z30tK9VzgfDT0OFQ3ils7/PbYkjS6', NULL, '0', 175, '7466', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('whxyz6', 'wdczr', 'student', '$2b$10$j1UYFDhsQQRETuHdyZDcFOPOdGvcOnQp6oL/yNDQe5O8ZRFUuO3be', NULL, '0', 176, '6719', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('a27szi', 'wedrec', 'student', '$2b$10$L02Qzac2NJGCsuj0GrJNpO8lA.vTsAaYpDlCosNTQS1XcauszmvQe', NULL, '0', 177, '6952', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('z0rzvm', 'wdzb6', 'student', '$2b$10$KdJWF8rKEJ6ZcIJ/S2ZcDe9sEjyFJC79b.Ht1lmB4B8VhpJSZ8.rO', NULL, '0', 178, '9370', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y8xb5r', 'dewebv9', 'student', '$2b$10$FoQDhqaC4QnqnpMyVTcMee/K/QocYq.ZupdzE4.nTTrbNbVrS6Qf6', NULL, '0', 179, '1404', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2s0jnw', 'dwediiu', 'student', '$2b$10$oo3xIDOlk4zHEFRuTOVqHemp5Jid5jppLs3k5PBd0Bwqb8849se5G', NULL, '0', 180, '9398', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('c9z9mk', 'wdevq', 'student', '$2b$10$8R1lYk2qOip6TOQ1w.zA8.OICfJz30kKoDqhcuMrrBGJKTg5jFikG', NULL, '0', 181, '3440', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bx27fc', 'wdzim', 'student', '$2b$10$VrFUj.KrfZfx9zVr6GMZH.on5aoT6QVUOhaECMmceHBKr/6ny8z0G', NULL, '0', 182, '1168', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('mu2cqe', 'wedrwr', 'student', '$2b$10$pnKke1EE4f1kxZRSy9mWjOGDihoeM1FL/sfLlMm.h6tT8/M7zY9i.', NULL, '0', 183, '7666', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('pjfu4x', 'wdfo4', 'student', '$2b$10$7CK72f0THvmW27OH9vAVB.IEHCms7vxMW6NnJqxdptBFEU08ih7ue', NULL, '0', 184, '1264', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bd1f00', 'Jeremy3q6', 'student', '$2b$10$JE1u7m.efkIgvFyvKY65PuULilPqux19x4KJz/Ld.H94zUdu7/./C', NULL, '0', 185, '1174', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('gw75js', 'Gracef4k', 'parent', '$2b$10$e.76mb8cmBo/g7qnvUTkQe1DhoZkncua7oisswkI8kySqf476i986', NULL, '0', 186, '9422', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('4xolju', 'Benggx', 'parent', '$2b$10$ljoMyyEB4w95eNRS4n12OOwyGaLwiBnU04gBDB12QRkoKjjVskYwK', NULL, '0', 187, '6160', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('c8yxkm', 'Gregorypjf', 'student', '$2b$10$FJLdFd7OGA13NbXJvLfkBeOm4XIdw9hqM2CnXhCpZOKL0yeGVWJKe', NULL, '0', 188, '4158', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8ytmy2', 'Zuluvqy', 'parent', '$2b$10$pAu8hpI9e41d/.FqZNMC8.l9/CH3Y0qMiVjfyma7s1LOE0/Yfkd6G', NULL, '0', 189, '6865', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('p25b9w', 'bbbbbbhy8', 'student', '$2b$10$dWxfBa4zghmdl9PgBxuzBecM11Gg3k7nJand91BElge9DuEjZh7yq', NULL, '0', 190, '5067', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('g32653', 'bbbnra', 'parent', '$2b$10$tQhdRZWIAUIHGcofXaE0E.yuaUr.Ysp2cetHv97e7vRQmIupbSA9K', NULL, '0', 191, '4765', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('v0fee1', 'rrrrrmd', 'student', '$2b$10$VJB1Mr26KXFD3KlIYUhyu.bEYotMaATONmTRAGHWiX.gjEDcj.G2u', NULL, '0', 192, '3231', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rry8vq', 'rrrrrqjz', 'student', '$2b$10$t39JSGK2gquGsGTFvHnEsuXUxkjmwzxd2umcPH8bRee2bLCUK292u', NULL, '0', 193, '2069', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7qcukf', 'eeeesqr', 'student', '$2b$10$.lLwOvFOpy6fGnIHXJmiaObbT5oIRCU9GWkyAWZpbcz2TOBNCj6t2', NULL, '0', 194, '5330', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('w2r0n5', 'rrrrrrbdf', 'student', '$2b$10$iIUGcHRyIM5305QNxnPgAe6BK2oKKmFF07cXlVQUIub4.R4Uhy0HW', NULL, '0', 195, '2718', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('un4x1t', 'eeeeaut', 'student', '$2b$10$vUwj2LLbGZxwAyoNxyw4NuUOdQljkWq63tAnv0fG4HBvTyC50zftS', NULL, '0', 196, '8369', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('yffxsl', 'rrrrrqmq', 'student', '$2b$10$gy0Szm.tWHTKGb/DNCoRl.9YxOsUWEQsNmqpgjclIO3c/elfbmJvS', NULL, '0', 197, '8922', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('b1cp59', 'eeeenvz', 'student', '$2b$10$7NbsHV7AWTpOSCKvLAAYw.dQSo/N6zdKOQglwEbpY1J6JJsLLqGPi', NULL, '0', 198, '2821', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('fkk4tj', 'dewefnm', 'student', '$2b$10$uqh8MofjKGKrpyzghGlRB.WrJZsNL4iUd4Hcm7jz58E2ZPefY3Ayi', NULL, '0', 199, '2954', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('16kttw', 'wedwlv', 'student', '$2b$10$uqtZizDC9MrjBRXk9z5KkeQayl7FiM62hIH/8DzUj1I3Du2sG7d6y', NULL, '0', 200, '6314', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qgyf76', 'wedh3x', 'student', '$2b$10$FsAaqaOMfhWEAfIyiAOhfOj78P.YGsEA3d5ZG9yJJ0Sr7rnOGYq6a', NULL, '0', 201, '5092', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8232j4', 'wed6gi', 'student', '$2b$10$VXKfYUNqGsUiJPhx0eiwxOfbpGhwsurNC3TrKixo2zBcvMFD7KAaq', NULL, '0', 202, '5042', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('gl76bq', 'weddsj', 'student', '$2b$10$cg/bgjSX.gJ7x/qOrKI6hudsUSX4hOWXnG71HNzzRfDuzCtSS5sbq', NULL, '0', 203, '5474', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('fdtrtr', 'wedp6a', 'student', '$2b$10$ZncHV82ndgeMN/GetTLMUuslTdzVUwLhC2wXJvZkIyM3qDNkEl2A2', NULL, '0', 204, '2094', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('cvikth', 'edlxh', 'student', '$2b$10$pKpVrVRNqRR3kW68e3CAKuj/qUBtXeKQaVmpjOvO6GijCTC0jvywm', NULL, '0', 205, '9694', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('0o3r48', 'wedhdv', 'student', '$2b$10$rNlZcCLvRdymuK8zXe.6zuGEXoCf2BNy9zmnKp3QAGgooUiHcPtDy', NULL, '0', 206, '4841', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('wp59uc', 'ww7e', 'student', '$2b$10$bPA5wEgXzpjwtXqqXGFlAeVYCtLAw6c1WYECVHcWPvudWGdLybNie', NULL, '0', 207, '2410', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1em457', 'wdbzk', 'student', '$2b$10$W34ayD82lgnXfBitV5aJ7e0EqZw4nHwvBbKhbYuWkGi/AJzAAwcvS', NULL, '0', 208, '7950', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('gzxp90', 'wdj75', 'student', '$2b$10$XcUcVYoWYgG66OPPmn5Ozev9wSnFHdSrwZ0.dLKySpligcf/afZPS', NULL, '0', 209, '2584', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('h828u8', 'wedejm', 'student', '$2b$10$dSgHtQwSmmONzcslEv1W9.9QuOKfGqzymKgYqMIqclCCwnlDCQIxa', NULL, '0', 210, '3876', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2hh3uo', 'wdxxw', 'student', '$2b$10$nPDKSfjrh4Qqo7SMRuIdm.QigGCLVpQNKPYIbhOT8nKcDJpGuBgZ.', NULL, '0', 211, '3218', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hbn5a3', 'dewecjk', 'student', '$2b$10$mj2RZDBs3tgb0zMwD3wgP.i6rN.OvJIxd6Ab9oTk6xD/kZFK74yPW', NULL, '0', 212, '6248', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('t2gs1i', 'dwedy6h', 'student', '$2b$10$WlL3HD.k0S0UP991grIIauOhZQLupcASD9DSK8Gh5vjpyj.b.nc0a', NULL, '0', 213, '1004', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('66wdlq', 'wd2wj', 'student', '$2b$10$cKUMpZ5SzyZiytieZGR3Leordx9lLeKOo0QRjOD2wHIs2/wZ5Azqu', NULL, '0', 214, '2424', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('9ekot2', 'wdys6', 'student', '$2b$10$7q/E7DwJ0xMtbVMTQ2VDBOvmuk5DwVj3Fj55bJWUn.5OJC30YVjFu', NULL, '0', 215, '8117', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1fscyv', 'wedbwp', 'student', '$2b$10$2q93f9tXIZOqLFga7AMmxOXvKGFHn/O5V7rkVojpt3WfiO4n7Tp5u', NULL, '0', 216, '7398', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1ki4x6', 'wdvqv', 'student', '$2b$10$dr4RUxOREhZsFqAOYHn88uDhQ9iAOwiTf2pKpZxMhcJiPT2WyLFYe', NULL, '0', 217, '9380', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('51vtkz', 'Jeremylpf', 'student', '$2b$10$7S18RIoa9B6qm32xFW8ea.44qMj1U3cShrdqlyZZ1XwYu//.oudO6', NULL, '0', 218, '4634', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('251vh5', 'Benizg', 'parent', '$2b$10$gd32mYFdnFP6mSxGUGgzWeiQRiqGdb04BI/P96PkgRQSX5OPhWMfi', NULL, '0', 219, '1057', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('7lc5u1', 'Grace1dk', 'parent', '$2b$10$qqYKhK/AexO2JEM.tEkOvuTdviBOD8f1pCAlLQelON5jAPJa/zbcu', NULL, '0', 220, '7370', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('utoo9k', 'Gregorywrc', 'student', '$2b$10$zKgf/3yS2nownHPCHez.oODXDUONrxneM30jJWDUG6MoUIeSG2FQm', NULL, '0', 221, '8890', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ekyhug', 'Zuluxig', 'parent', '$2b$10$cRha0ka66AJXlBYLSxeeC.xCHOF2Yn13lhwXbBwwB.BZnKxEPF6bS', NULL, '0', 222, '8302', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('49tloe', 'bbbbbbltq', 'student', '$2b$10$8DTmutU9cVskvEJfKKZceeX9s2SND9nfAZMn1Q0iMh6tI8MQTbTY2', NULL, '0', 223, '4143', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('uad0yy', 'bbbbps', 'parent', '$2b$10$OHdIes7LF6kp0I.72twRDuTpMa4Prqezs0AQtbU4e/8b0xw7PWckG', NULL, '0', 224, '1937', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2waolv', 'rrrrwnr', 'student', '$2b$10$ar9zcoGRgi2DEm0x5btcquhRUp9nLgxdIMXM6sBXg3rse8xqd/XLi', NULL, '0', 225, '8405', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('75hhxr', 'rrrrranc', 'student', '$2b$10$G1PER4/JAelmPI.7/GYp.evuRInetHH/qpBIjzKfVZlu/k/7iPkd6', NULL, '0', 226, '4248', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('npo8r8', 'eeeelfc', 'student', '$2b$10$5UbkqgokwZlX.TUnTrrteOzxY7QT2aMAeZGjoxWjYJiAy1L1CzTNm', NULL, '0', 227, '3904', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('htk1dq', 'rrrrrr1r6', 'student', '$2b$10$L6v2K6I7QonwYA4M5a1RweHjSGBADgl6OIJZsr0sUjpRWLiOqWKH.', NULL, '0', 228, '3524', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('tv29xi', 'eeeead6', 'student', '$2b$10$XrfT0q2j528tAsEEtnDvKOo0nbqcVogaZQgmptrvL7oEytvjqhVIa', NULL, '0', 229, '2555', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('jyljzw', 'rrrrre7v', 'student', '$2b$10$32S5T.IyRtwzmT2hIyPk6OQhGDiBdlUVJwzlH2xuK56uY.X/ao08O', NULL, '0', 230, '7599', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('w9do3i', 'eeeepd1', 'student', '$2b$10$Eji115eHrY6TgGleIrZcw.VU4Rk61ZfaU4D9YaVFDmnBbdtSwpe92', NULL, '0', 231, '4099', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('9s3e74', 'deweii3', 'student', '$2b$10$o.dTPcJUxTqioUKggjJ//O99naCW4o./f6Par.vWkxtcP2K93V.P6', NULL, '0', 232, '9923', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2tih5d', 'wedndc', 'student', '$2b$10$Ci7D3XaA.sdiSFqm3jGx2.gBon2lThuNCIrXJ4gwHQ6JVGMgvYcwi', NULL, '0', 233, '5792', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('aeleuh', 'wedgmh', 'student', '$2b$10$8D8q8vldm6SoguMhpyuAeO6VCz6aZZKXnV/p5ORrzImT8CyKfWz82', NULL, '0', 234, '2704', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('0d8kh1', 'wedslz', 'student', '$2b$10$p18HmRhUcBpDGqZv/zGdXuW0SRADAoTYm2C9.HSUUjBDQizp6fuay', NULL, '0', 235, '3701', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ali5h4', 'wed6bs', 'student', '$2b$10$yT1GmTauZLoiwyZhqdqNBe5rE3bJkXAuouHaSe2jT3S.VVR1W7XDe', NULL, '0', 236, '4814', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rxf650', 'wedp9p', 'student', '$2b$10$ocKR3FJvf5qEQ21..jXnNeRQJMBWTFtvX2MJm4M7HVp3Wz94isq6K', NULL, '0', 237, '1398', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('wqxeq6', 'edlzb', 'student', '$2b$10$qFzfQsfSzfMYz./cBTSreu32n6j0YhKKaay1lUeoh6FDN/4VHD14y', NULL, '0', 238, '8025', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('u7dzvp', 'wedtxs', 'student', '$2b$10$pKFjAU4Z3CjTJboQfaoeLOvBJz5ztGSadwjHAdZF1s8G.Ts2cSWPW', NULL, '0', 239, '1502', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('469xoc', 'wlqh', 'student', '$2b$10$/OYWDh.z3vdbfuEVXNDZG.tE95mTqUqz.ma31ZJz2t9TFalnZmfMC', NULL, '0', 240, '4435', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('3wkbnl', 'wdvdz', 'student', '$2b$10$HccEzSJCBMI1p.MRVeW.hONoDASYYODalS5ZdwUUkCKDSKhOex6Au', NULL, '0', 241, '7391', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('s2idq9', 'wdqk1', 'student', '$2b$10$mMx1QXR2CtjyikO7d/x1QOh.wvj/ZGf5S4W8CqlL4XOzCpGDKTzHu', NULL, '0', 242, '4744', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('08gj6q', 'wedtb6', 'student', '$2b$10$OGeBeAXlahglxRtQcwYoHOzIB4bOuXQDxA9gFW5dnLRZx95zGUIdC', NULL, '0', 243, '2196', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rce5vn', 'wdkyr', 'student', '$2b$10$1Wx7OON6JYwxMPq51AmIkesZth4u1x5PltAS8/CR7kG6XZJtnoZxW', NULL, '0', 244, '1005', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('et228d', 'dewektj', 'student', '$2b$10$JAOdobxmO3AExYkWZ3L0muqzecmKPnAZjmbeHGGO6X2kR.Ug5NASK', NULL, '0', 245, '6880', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('estqy3', 'dwedqjc', 'student', '$2b$10$yj4/uRI5dW8ZZU4mj4awe.TQRz9U6DOZTMGrznRWOXUeKVXZsaGsC', NULL, '0', 246, '6234', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('cczuay', 'wdtxu', 'student', '$2b$10$ZrprCemDB/B02/gFqKFt0OI2Ed3fNULpXtSOvLzWPDdkzpnYccUSK', NULL, '0', 247, '9209', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('womd1w', 'wd17j', 'student', '$2b$10$J1rxSq/3vsguDUHeL/ZGl.74FWhrUuIWclTUF95BAJVAHyhMmAFIS', NULL, '0', 248, '1440', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('v56hls', 'wedgld', 'student', '$2b$10$RH2KyFz4IPUd7DeHMoMJkOS77GrvXZ7DCbZ44wmMvYhhhm/4Evzcq', NULL, '0', 249, '1782', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dlpe08', 'wdw9a', 'student', '$2b$10$26EZMiK2JF34PT4/FSxHyOIFuk4RWV408QfH4ZruPXOJHdkxApVZK', NULL, '0', 250, '3894', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('k3owdg', 'Jeremydqh', 'student', '$2b$10$FWdf3ldoAVsS99MJ9ead1.Bc2fsP2p2qHmKtnVKn3TlaLl3V1T1.y', NULL, '0', 251, '4656', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('znz8st', 'Benvpn', 'parent', '$2b$10$alZKPsY1.cTfCqbx.u5bfeWZ5hpN0TD99hP5lJlSIwoMR.yGxIrpC', NULL, '0', 252, '5835', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('uwekl8', 'Graceovb', 'parent', '$2b$10$JsL/ezuQTfA7SVeFbHMM2uL5uQmwNSdz4ElAI01o.jWymqOXyu6AS', NULL, '0', 253, '3297', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dkjot8', 'Gregorywgz', 'student', '$2b$10$dIi1laNl4vA5Uectus8nIusHTzaQQ1UKbYoS1iUj9yieFoWPGhaim', NULL, '0', 254, '7651', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qj84yp', 'Zuluzuv', 'parent', '$2b$10$Q/XlsXnmKmyMbnObXmLH7OdcwhoeXKoHdNVJcdHxVZXv6bBTopeni', NULL, '0', 255, '7980', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('4jslgw', 'bbbbbbonl', 'student', '$2b$10$xqG/HQXr.LXN6ik/U3v74e8lbgDIW49gOmj.MV9/eQgdMzML/0wU2', NULL, '0', 256, '6110', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('571v6y', 'bbbecm', 'parent', '$2b$10$dnv3Y7q6yp3G5FgdSxyQ.u67AzxEP6EwRPX3M.JadGYF2YTEkNK8y', NULL, '0', 257, '6695', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('8x1h47', 'rrrrl1i', 'student', '$2b$10$gV1U6T.BQNkdluzGz.I/QOOAAZ8J0pfLdubvcRIuV3V.qhk5L2A7q', NULL, '0', 258, '8942', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('jz87ag', 'rrrrrreu', 'student', '$2b$10$nVaQLQ4YEWTYee5NUDHLZe2rCZdzcIDz0KuelU/bHxkGTj/n..cN6', NULL, '0', 259, '2165', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('9cn5zv', 'eeeeg2g', 'student', '$2b$10$0UkeKXifRfY9ul9bPQW6wergelYy49fArbnZ5vUBnL8bsrbxVWh6u', NULL, '0', 260, '2181', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('a8fiyq', 'rrrrrrgfy', 'student', '$2b$10$ojtcXliTSCAOvSt1CfK/aOO2bkbQfD4RY1VVpsyeCSlcuZWOEusR.', NULL, '0', 261, '3972', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qbrm56', 'eeeesyv', 'student', '$2b$10$yPj5NxZyLteD7GFln5YjLuTG7ZpWnw0q4EmYSb7Hlhosmo4M3JEI6', NULL, '0', 262, '1821', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('kogrg8', 'rrrrrz3a', 'student', '$2b$10$GigOnWjgZ1paU4U4J21zZucing2I4aXeEjlRVEB1sl5EFuhkyUmK.', NULL, '0', 263, '3357', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('jgp4cf', 'eeeem8e', 'student', '$2b$10$f2wt5Jpa.R0HzZfpCquS4exokFO9JtrDsRhY88IDBxNvOwVUc8KS6', NULL, '0', 264, '8024', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ooiu5q', 'dewetci', 'student', '$2b$10$0OxpdFgH7XbWyu7/5bQzG.w1/.EBt9RW.y3jYfjWrGn/iub8OqisC', NULL, '0', 265, '5487', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('f6nb5f', 'weduyr', 'student', '$2b$10$4CHkl.BeMOz87mKJ2byZVuHOftJY182g2UFPyeePOw7EjUvgK51RC', NULL, '0', 266, '8015', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('prrylf', 'wedjfv', 'student', '$2b$10$QJmOvdgirTZOF2tvL6cN0uesAPsJWL4oeMOEzyevr9QhQyZDWzXwe', NULL, '0', 267, '5777', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('f3sknd', 'wedkta', 'student', '$2b$10$TUPmhVD2aNV6euVkC2VmHO9d91.gnBRn4QGykht1dhNm/DMbCYhXe', NULL, '0', 268, '2649', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('55hkpu', 'wede1j', 'student', '$2b$10$yAvCcFAsfQs1074Jf5U1YOIYlZflniKg24rgjmr05YXVgZnLYtVRi', NULL, '0', 269, '5093', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bsricw', 'wedood', 'student', '$2b$10$t96etlkNGGPeRk/m2h8nH.g5r0hAvuszrzvG1b.8PqtaAtwoFcx82', NULL, '0', 270, '9924', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('b9shxz', 'edg4t', 'student', '$2b$10$CU9kEaeblqGTwU2VO1qPpO8PrEaSPEmpXXF6aq6AlhyccDj2iS5wi', NULL, '0', 271, '2812', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('lmj47h', 'wedw1q', 'student', '$2b$10$lw.DWjfJOWCBMt8LsGjOkejZpmUNXFfLi7LUUW26wYLhtGQnxG5q.', NULL, '0', 272, '4369', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('lfbotj', 'wfub', 'student', '$2b$10$7Wo.q36v3tZ6LGE6ZOO8Du8VX/NuNhhHNWbEeaDN2M.JLp4uNV6lW', NULL, '0', 273, '4893', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('cgau4l', 'wdkus', 'student', '$2b$10$yaicY0OVGsfTxEcZiuzG6eRjS70AolQp7M40NZE3Tyog78NZ8twsW', NULL, '0', 274, '3606', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hv3vsn', 'wdcto', 'student', '$2b$10$OCZdw8u.AAnjpf7bUI5Q1u4Aq8em8XduhBzBgDOh4n.XsDjI7.mXK', NULL, '0', 275, '4109', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dfqor7', 'wediix', 'student', '$2b$10$zIdUFxSmxeTZ0/igARSflubrEv1h5ZP4Yd5vjm7VIYt5A2H8BXNMC', NULL, '0', 276, '4134', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('finzt0', 'wdxsx', 'student', '$2b$10$Sj9wGKbLfw2ryKLnH1fw/eW1CopCZM0C0l0HS/ncj/L8TDqUQYcOO', NULL, '0', 277, '7547', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('vxo0hi', 'dewejf9', 'student', '$2b$10$OD19mc3ErAtQVfSy5TDHgOXoDcZCxBigdb6TrL.SqzfgwkJ9qcM7O', NULL, '0', 278, '7158', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('0uzr6d', 'dwedklr', 'student', '$2b$10$eBSZe3IjFc4uHgifk.iOZOVs8k/TMd7l.VnJW8Sie2e9KnESeu39O', NULL, '0', 279, '1960', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('nrqw69', 'wdynm', 'student', '$2b$10$xKxNeC8BqA7shLJDI8PMqudoDQtw0RrxPjiT8w4a.ntMs.6qof84W', NULL, '0', 280, '1881', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('zbzquq', 'wditc', 'student', '$2b$10$xR260RTHtOd2D6sItxWkfeKs4Noim6oPJB5Fn0wwjosUNKYDPf1HS', NULL, '0', 281, '1116', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('o6jccc', 'wedaaj', 'student', '$2b$10$9Ks3dzhjcyQmVouXaO4iwu6JARO/vQHnwr3OdzMcdLunN4c8KTukC', NULL, '0', 282, '1083', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2795fg', 'wddts', 'student', '$2b$10$xD5rFNT7rr9M8AptB.WP6.56tTfS73GWQvFmr/hxkgGQ6fpyZ2.5G', NULL, '0', 283, '3768', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('oz9eri', 'Jeremydv2', 'student', '$2b$10$hYxUXbmGwsEmr3BwN2UtcewDLmscB6DNrdEau8mmvM1sMsXBelKuy', NULL, '0', 284, '7756', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('rxzujz', 'Benz9p', 'parent', '$2b$10$GADksoyRTyj6FXhoB8RzU.zbcdEDyg3o3k6Y2ye4pXD2i3uoO9GNK', NULL, '0', 285, '8875', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('jakkcs', 'Gracebty', 'parent', '$2b$10$kED1ZVanlTt5iMHJtfjSmOUfBPx6TFM24juUBeCQBwhi.HQDWg75C', NULL, '0', 286, '2876', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('oio8eg', 'Gregoryrfj', 'student', '$2b$10$OxMtofLZ3.ET0tB2RpMolegxh6HP7sKs4FG8f/gGeE7ntNpclt106', NULL, '0', 287, '7446', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('pef7pe', 'Zulusqx', 'parent', '$2b$10$Wh231jX.MQrYQb8fsgpvoel6PzXKo8womQc2iGCa0Go2dO6zxs4Ta', NULL, '0', 288, '1959', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('kwb61i', 'bbbbbbzpo', 'student', '$2b$10$sCNfdcUDUAlSrnfHqK9V8O56cRiqtf7jroFWgMiRxq5JH5z4lP1we', NULL, '0', 289, '2627', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('ru714h', 'bbbm9y', 'parent', '$2b$10$RxT3I16BQ1pvHN/bd3v1Juk9mVA2WOfMqhr5QnbnNwUsdw2E0oiR2', NULL, '0', 290, '8383', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('qisag7', 'rrrrihc', 'student', '$2b$10$4olqYYQ7Aia2hSGIcHR0s.XQFhIYpdyzy8Nyt7BlE5kB8NHfDfN5.', NULL, '0', 291, '8122', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1ozjye', 'rrrrrile', 'student', '$2b$10$myp5r4bTuBdfxBOwcuBkHueMKaMTUt4su7Qn0dYzZEUaEwQLJyDJG', NULL, '0', 292, '4552', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('dmbk9i', 'eeeeqst', 'student', '$2b$10$e4rtJeqtBVj7lRLAXj1AauK.mmjxgiAQWRa7p6Ush5zHzznWDQRKe', NULL, '0', 293, '2454', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true');
INSERT INTO `users` (`userId`, `email`, `role`, `password`, `pass`, `rolecode`, `Id`, `pincode`, `createdAt`, `createdBy`, `isActive`) VALUES
('hyqk8m', 'rrrrrreb2', 'student', '$2b$10$DuZxQMvyGEUmEyklHpZLh.VsFJyfx0.PFAV/CLkBfF0fRcMVBJvK6', NULL, '0', 294, '8578', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('o80hmb', 'eeeeftj', 'student', '$2b$10$BQFcVi9/rt0Z0JeWINTNB.OgcCZ/J7jsEUlAiS8WOHfsxptNPDJ2O', NULL, '0', 295, '1445', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5otbpk', 'rrrrrzou', 'student', '$2b$10$jASozQepmfQ5Lj1niGBe3.bju9dQcU1OuYT9XjdkH3gEmBJKkpNdy', NULL, '0', 296, '5376', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('deqwss', 'eeeetrt', 'student', '$2b$10$sCKZ6NHvN5xnOg/0EL/Tcu8Mskrqy0uoQuiuMTeFlmlTpjma2/oTi', NULL, '0', 297, '9243', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('9c6a74', 'dewewpa', 'student', '$2b$10$jLxPMV7csDV.FFLO/lNOH.TdWojQ9QM/GXCNfQWcJFEBDgBYrC6ri', NULL, '0', 298, '9272', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('1738hy', 'wedsnm', 'student', '$2b$10$cNgYQTqjM.wZi16WrL4CJeNFENcnhh6x9E59JvJurPlCcbGFbaA/e', NULL, '0', 299, '8944', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('swgzla', 'wedehu', 'student', '$2b$10$DFqW1wgo8EFbtwRavv7pjelaFumqo4j6sHkARwPRhRfbj6wEWqygW', NULL, '0', 300, '3640', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('tnle3o', 'wedm5j', 'student', '$2b$10$em/R2WbAtyiN2tH2Ku/KhezXGAqYxmdPSoMFYNY9Vrb78yGO9Web.', NULL, '0', 301, '7147', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('sen9c1', 'wedrlk', 'student', '$2b$10$vZ66iBoehjDg4zVGNE3e6Ovq7PmxU/2cbKsZ0yLnZfIXsQ/4IKRku', NULL, '0', 302, '8362', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('66x1cp', 'wedlms', 'student', '$2b$10$zicCEPB6odd9c9f1rH2GSeIMRDpcnjFqjmqtrsf3gr2YPPkDRhpD6', NULL, '0', 303, '7169', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('n4argx', 'edfds', 'student', '$2b$10$GPXWldLijNWpVsfZ44aLK.TAa6WfLvVFLS6eiZmtANW0a/EwmiYDG', NULL, '0', 304, '9737', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('2h145u', 'wedamz', 'student', '$2b$10$xmuCvozRUl4UWaR0P597bOsXWGWjap3OMfQRqEZ3cU.XzswbbMueG', NULL, '0', 305, '7604', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('i684c4', 'wv1x', 'student', '$2b$10$USbC5EbgS51huZCPWHC5jeVeytlNy1RK8Vh9xFe7ktEU4pwXDX/XS', NULL, '0', 306, '1470', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('exi3oz', 'wdznl', 'student', '$2b$10$GZWbs3KBGCIj8Mar0Pia4Ox7jvznCqyUlVqCfNK8onyEFea/OqPfS', NULL, '0', 307, '6161', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('y4p31o', 'wdnqx', 'student', '$2b$10$ZxGIgr6ypEKiC.HE9RLa/ePBQCGwvQazORO.GMpKr2td5Kqu4Yk32', NULL, '0', 308, '1046', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('a2oyll', 'wedga1', 'student', '$2b$10$6B6soZ0xYdw4CqEjQX3EvOwnhuMbe5HAO0oJgH6/uZwt3mFRD5HoK', NULL, '0', 309, '2502', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('yl773b', 'wdse8', 'student', '$2b$10$U8pqL9aGVOsHtptP8W4ZMuLXuzqrpOgpiK6rUyW1y2cXQDtH8iN/W', NULL, '0', 310, '7807', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('023gyu', 'dewezjy', 'student', '$2b$10$RQntve3ql/lJEz4nIJeIw.hZQozlMs7t1hyUa.SaFf4.B0aC/yB9S', NULL, '0', 311, '3712', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('bnlece', 'dwed8a2', 'student', '$2b$10$135dj5NhZIxeN46w328Ec.qho.N/F3VEol16PJeGZQCYOXzOW6uAG', NULL, '0', 312, '6988', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('n0swn3', 'wdq7z', 'student', '$2b$10$UdMSNXkwkGoKBWYHwo8eSOEYQ.LIKTIHMxr5N6bzn10weUSlIXT22', NULL, '0', 313, '6405', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('m3iymm', 'wddav', 'student', '$2b$10$DOCWNIeNMHgElIYJCzDpruEvM4V9PbffjIFFwp09tNkoJiUC54YQi', NULL, '0', 314, '6979', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('02ifwg', 'wedosq', 'student', '$2b$10$vXVItXgWGAI4.T9UmbpsLuxO1bXDShhgyBVZLX39c67x5JjMXF.WO', NULL, '0', 315, '2493', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('5hq9pp', 'wdnr8', 'student', '$2b$10$sPfjXl6mFFV8zIslP8ONUug5pocUGNKc.uVzgRxfmmb4Ce0GyowTu', NULL, '0', 316, '3974', 'Wed, 16 Oct 2024 19:14:06 GMT', 'ASANTE', 'true'),
('hlgmzb', 'sdfsdf@dfdfg.com', 'parent', '$2b$10$yOzNSEOkj45d/ckgi.Bn6eybqs6HxUyOuMBztE8KQU4NXwkvsnaaS', NULL, '0', 317, '2086', 'Thu, 17 Oct 2024 12:04:16 GMT', 'Asante', 'true'),
('4bzopi', 'ferfer@gfg.com', 'parent', '$2b$10$OW.u4m3hCaxfhftEuVVjK.IBI3KBNaK3vrjpn0Q59Ossq/.L6mHxK', NULL, '0', 318, '2086', 'Thu, 17 Oct 2024 12:04:16 GMT', 'Asante', 'true'),
('w5fhfn', 'sdffszolb', 'student', '$2b$10$futGebRn/h5edGr8jdKv2..dc2feAQwlPdZkDIcl8y/1mpgId/Aie', NULL, '0', 319, '2409', 'Thu, 17 Oct 2024 12:04:16 GMT', 'Asante', 'true'),
('9akyyw', 'undefinedaef', 'student', '$2b$10$7I9uIis3u5SkgWRtQxxPTOcsEm2OTRX4PgWaOU/ro5767WS0mszYC', NULL, '0', 320, '2295', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('yn7he6', 'undefinedvsd', 'student', '$2b$10$qjgt1gopOt/72gqfiM2WzeYfk1sHRMsABiREN1Z45CzT4SHPJeA4u', NULL, '0', 321, '2089', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('k50wsj', 'Jeremyhg8', 'student', '$2b$10$40mhXduJwbSaiAD4WRYV8.5Qg9SRwCLMjFr97o4TMZMgcZL0MmbP6', NULL, '0', 322, '2266', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('u7h2c8', 'Benikk', 'parent', '$2b$10$D8VePuDP6MbM2MgaJfzN2umt2iEjOf2P7tuZFDx2GJDGnt6qzEzGy', NULL, '0', 323, '8278', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('zqi9sk', 'Grace8ca', 'parent', '$2b$10$2htN6OENrDpUnE8/AiLA.umGKn9ESBTJP1qJgxTSKCBC3Wn6EgvGe', NULL, '0', 324, '4543', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('s3ydct', 'Gregoryyxa', 'student', '$2b$10$pqLlOJdR1geWQgeW3HwfVepFzruEfdo.3/7H2yTE2tEVu8nteExU.', NULL, '0', 325, '1152', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('unztxm', 'Zulufgo', 'parent', '$2b$10$DboM51NG5wmym8a0CM4YX.OazbHbN.cBN/Fbx.2c7YK0ayNVYs1PO', NULL, '0', 326, '6436', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('px9pca', 'bbbbbb4hw', 'student', '$2b$10$/yjsy.MTKEViNp8dB2D2Ius6GU51ihorlJ7EUlPeQTSWWLQiru/X2', NULL, '0', 327, '3658', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('5ufnw2', 'bbbwka', 'parent', '$2b$10$uGyoNtSiuX9HZk0CFKhl1e6z6R7Pz/QuBTzQIs8YsCjwwcmsTiL0a', NULL, '0', 328, '2733', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('4ci7wd', 'rrrrzkh', 'student', '$2b$10$YcRtJNwCW/PoHlP7BNlJvej8D0HQJyudQO.YtiKFJSPg7oiT1l05q', NULL, '0', 329, '9899', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('x0xzha', 'rrrrrblz', 'student', '$2b$10$vLn/FtxJ2rHz9GFInuclLeoWZKhJvGC0S4ES9fdgaupn316EPqPqy', NULL, '0', 330, '5504', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('vlkvvv', 'eeeeprq', 'student', '$2b$10$/mqagnX/9mDq/dHnCkTREO62wr757J6uFTSZGFXP.uxhMt/4RL8PW', NULL, '0', 331, '8808', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('xyv3ai', 'rrrrrrjpd', 'student', '$2b$10$3PZrnnFHARD3sphRFukLAejeoJ5wDul3Cyv.xK8FFN4R0oqnIwKfS', NULL, '0', 332, '3782', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('6wqjd5', 'eeeemr6', 'student', '$2b$10$1gyBPbUfuD.zqsjNLGmUEeSKpQZBa8q93haC1F39mrF7pDXrPp/e.', NULL, '0', 333, '6286', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('4beofm', 'rrrrrdj6', 'student', '$2b$10$amYyyB8kE3tp5zuZkTqWPulZMA7.gRHbpuPlc8KasDNRg0/ggVmDK', NULL, '0', 334, '1867', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('zqav69', 'eeee8dw', 'student', '$2b$10$9EiB7T4K.iEPft5kbFtCaO6ClmnWKPrpwGXBfiIlYX4kfhACf.uZW', NULL, '0', 335, '4274', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('gjw6h8', 'dewe4dh', 'student', '$2b$10$eii/V8x8HZzI//wwf0T2QOwwICqdbQexvQTZnrVGhA0jTZmHKgvP2', NULL, '0', 336, '5318', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('jvjkb9', 'wedeut', 'student', '$2b$10$cFifvE90ISExgU/pBiu2.OoomSG6MJPIpP1G.xuh0Lque5UxDcw2u', NULL, '0', 337, '1995', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('50ma80', 'wedu9t', 'student', '$2b$10$b4ktbFo7fbMAWi8bfX66LeDBSkyiBNNGfh0VJXLbroQmFgaCT1NDu', NULL, '0', 338, '1033', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('irl6mn', 'wedt9l', 'student', '$2b$10$scCcb9sCG84JXOobBMTUY.Y.SR/giFwz6/miIAnGrhBNzopvnlcii', NULL, '0', 339, '7021', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('7kzvmj', 'wedjvp', 'student', '$2b$10$qzmmvdCseTnlC58dmWueee08pVx6MTppqAmx5T80IphPV6cd4tUfu', NULL, '0', 340, '1017', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('qy39jq', 'wedxfn', 'student', '$2b$10$VB6EoG11khB6/JQ8ql0DA.52QzHvsNaGur3t3SNcjKog7wcj1aUt.', NULL, '0', 341, '8502', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('4ldl4c', 'eduvz', 'student', '$2b$10$vze.mYhnOPHwFVy07IxkkeYEAjdyIQolFiXCji/QspJ8LeZCdF1PC', NULL, '0', 342, '9142', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('t5qujm', 'wed9kp', 'student', '$2b$10$40dAtvu46Wxpghb49ZXK7e3K.w1DlpvJS95upGVGjRTTaf4T7EEs2', NULL, '0', 343, '3591', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('tk2syy', 'wkx8', 'student', '$2b$10$mbDSHL00F3GwQr/oQJnMF.lhgIg45ufdju33o35PoEBr2xag7nXDW', NULL, '0', 344, '5153', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('r0d3g1', 'wdu2t', 'student', '$2b$10$r73VnoV2EhYt9qxSIJcHPux3o2j3cNPDRarBjI.EW4Q89y4rha93.', NULL, '0', 345, '8377', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('vd6vjz', 'wdnw5', 'student', '$2b$10$.RvEo/L.UjDMfUNBIIA6G.NcPOUrwdE9XSI6wUO1mu4CleBx71O6K', NULL, '0', 346, '7393', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('gpa4vi', 'wedcub', 'student', '$2b$10$yXJbEij6OzpNv83ITE6uQ.QwyYaHl0PAQxXeGDXciLU7s3c4e0X7a', NULL, '0', 347, '6981', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('f2glyk', 'wd4kx', 'student', '$2b$10$TPEC/G1aV1NpsDXBLGLG7e5I53LhVkIDdMH7p00JCryTWGMaCmAuO', NULL, '0', 348, '7637', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('aruobc', 'dewebk9', 'student', '$2b$10$00ezqD88rug2cVBGZOCd.egaOktoLDTjtwRVaLPWsRKENc/DAbaB.', NULL, '0', 349, '6039', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('7xutr7', 'dwedpgm', 'student', '$2b$10$iN6jimicFJYw/y/Qbydz0OOs..syXqqh93kzp1.vK8N3LER4QeXGG', NULL, '0', 350, '8780', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('dwd78j', 'wdyji', 'student', '$2b$10$/hC/BMIwng6ySZUrJudpdOSKRFNmZdMTrTnaJ7crdBpk1KwXRDzHK', NULL, '0', 351, '1393', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('nvp0lo', 'wdzze', 'student', '$2b$10$lmt7iIyvX0k4RfU/ucLLi.LAAy5l3fcxjSBucdXAJ5yMHMx4dULQu', NULL, '0', 352, '6723', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('oi18cc', 'wedzgd', 'student', '$2b$10$5ziM4dzzRvdl6Sbg2hbgteeMfoakP26cJaI1IB6Mi5wNRDPJ1cOrO', NULL, '0', 353, '4740', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('ix1mg3', 'wdkbj', 'student', '$2b$10$0BQHR832CkcrxKoZNUkO6.vEHSTG1RRicMN9COx3htiTmz.p5ho6C', NULL, '0', 354, '4443', 'Thu, 17 Oct 2024 12:04:16 GMT', 'ASANTE', 'true'),
('udt8xe', 'Jeremyr1e', 'student', '$2b$10$t4E4TDXeM6t.stZiYs9rYOf60LqSXH1spiFKLvHsiYRkJevF3e6ti', NULL, '0', 355, '1060', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('jhkpsw', 'Ben7ha', 'parent', '$2b$10$icwI2H1x7OOKiEsoqG/dmew13SYvNzkhzoC6y/ErlQw2Rv7jhyPVK', NULL, '0', 356, '7918', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('s7tshw', 'Graceltg', 'parent', '$2b$10$hfjbiv6V8Jxf3qFIMMD/Xe1wAuKdc9gz.gN8w/SNM0XWBf.6huy4a', NULL, '0', 357, '9092', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('hie58c', 'Gregoryehi', 'student', '$2b$10$JJ9WZCWfoEbD.iRUmeDbdOQxBcMfOnyKI9kPNA78xsJ4tqxELTziK', NULL, '0', 358, '6885', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('m6sfj3', 'Zuluthq', 'parent', '$2b$10$VvFIPeSRJYpWQ7bl1MnT3eHE6E7Db.NtY6gHz.iyvib.0v/35FCDa', NULL, '0', 359, '2586', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('2af3wi', 'bbbbbb23h', 'student', '$2b$10$.Tg9/fNmEcaZCjw9njMfZeipzlhZraAa0MTn7e1dfNJI9T38TgF7i', NULL, '0', 360, '1376', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('wzog7b', 'bbb9vn', 'parent', '$2b$10$kcM/2LoEPlhqo6UXaUAgr.3CkPUOhYR10rfw4n98ck24qJarFjf72', NULL, '0', 361, '8716', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('cu6ozd', 'rrrrvoc', 'student', '$2b$10$WUIhfB39qYCLs.LKRJMAVekUJXAkLvHfYzziOCf2VisM5CSn4yDma', NULL, '0', 362, '4257', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('522c89', 'rrrrrgix', 'student', '$2b$10$5iZyJ4OcfFreEg9d16la3OsvRxYAqX5Q/I1vAC.7GGmZOd85hwDiq', NULL, '0', 363, '9439', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('ij2wso', 'eeee5mz', 'student', '$2b$10$HSfJwBsZ/dQ4ElAIMyy27.NVjRMOLMFi7lDOFgCRZnc0k79.VcabO', NULL, '0', 364, '9365', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('y8o76q', 'rrrrrrgxd', 'student', '$2b$10$e6Ftiew510dl6AHNkn2hrek84yNkKbYwz5DHYY93hbKAaxJU6P8lS', NULL, '0', 365, '9414', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('ohdu83', 'eeeehhg', 'student', '$2b$10$Lva5atHRBf0a7VgKwj2nJuOemcJ4VslSg6ZU9ecSDeLoVit/HQBQu', NULL, '0', 366, '2224', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('3op5p5', 'rrrrrj3k', 'student', '$2b$10$oDM8xgs.awk44ub.GVvJP.Wr4BEA48VJulCtOmCQsxJZSCrxFRZYO', NULL, '0', 367, '9526', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('ds7vtj', 'eeeeyln', 'student', '$2b$10$l9toVQ5ZIRAunxhqUCspCudGCcLyHxyCxg22iSGwKJZaY9GVlfU7i', NULL, '0', 368, '9326', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('7soym4', 'dewe2rp', 'student', '$2b$10$6tTSA59fBZzFTd2l2CAgru38P9MdwaHefo4kLU4.deNq8o426btOW', NULL, '0', 369, '1686', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('h5a2ff', 'wedeua', 'student', '$2b$10$hCrNxSGrCPdbGUu4b.VrzeKxLlp0J38EzTlflpL0Pj3fsOeAgZDAe', NULL, '0', 370, '1305', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('hzg2nv', 'wedmap', 'student', '$2b$10$Gm5XRVuKWG7Z5VW/tvidF.EHXhuK0dt68RzHmsDQ3ihfqjWmIG.gG', NULL, '0', 371, '4065', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('mjrjb2', 'wedo3e', 'student', '$2b$10$dy46ECYjbNmfVmzRBnLt9uB.4eVcH8u0VMjUx7m42x5jcDPH4BGT2', NULL, '0', 372, '6281', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('mbhqpx', 'wedkhn', 'student', '$2b$10$9H4oSenq62T4stdq77GJp.pwS1MqVEMhYusFKIRaCtra2YofJv5HW', NULL, '0', 373, '4521', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('thvf8w', 'wedll6', 'student', '$2b$10$qFGKK56AtmfPCqtnTW3hveUqvawsl6QIF3rCH4iJItopU002pertq', NULL, '0', 374, '6548', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('o4h4rf', 'edw8h', 'student', '$2b$10$OGo9F31llL.UWiGGDqChfODjwSDLR5YsARO/qQJ/KEtco8NmZA0Cm', NULL, '0', 375, '2706', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('lq7sg1', 'wedjiq', 'student', '$2b$10$PGXT/k0yE9MO0i/Dwie5AOq9hnfy96uCluxMVK/4UuSTJBGzUal5.', NULL, '0', 376, '1865', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('3al9wf', 'wbdw', 'student', '$2b$10$G.CTAULCXkaEmvbk5PVJ9eJeBWMHwxw8OcNVICXvuW5M70FZPYaf6', NULL, '0', 377, '2521', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('9x4xsx', 'wdgor', 'student', '$2b$10$AmUFWqITOcJKyK14LusEDe/dvWYxHjf31F4X9qXa9H7I7xyGhjNUS', NULL, '0', 378, '1653', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('kmelpx', 'wdug7', 'student', '$2b$10$peXJfRbZEWh6Z2xCwRjgduJ4r7witvA5XQ6ZSgaEnaDbVWJT1CrRS', NULL, '0', 379, '2257', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('a4dk8f', 'weduio', 'student', '$2b$10$KS.wiY9v4ovc4VcTNW0so.znuClguK0BAAu8fvZX1/ZUrNm9aD2je', NULL, '0', 380, '5505', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('zi3i7w', 'wdny9', 'student', '$2b$10$KdsF1eKumP.1r4pINrQSOO1ffc/oFI3iiTNqEa.uHOn9tIYsTsd6m', NULL, '0', 381, '3705', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('ocjnvq', 'deweivv', 'student', '$2b$10$fkY3PQyqag3MwVW3E64bNuARUOzdKPU3vBtwffAg/YXJ8IjgAwQVG', NULL, '0', 382, '2625', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('6bdpof', 'dwed2al', 'student', '$2b$10$4xhoFX4Q2fQtUKM72kblLungg4HxkSgnCLYZkNNFh0Z0KPzEZtHaK', NULL, '0', 383, '3241', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('wqwv4n', 'wdplu', 'student', '$2b$10$P0KK/NUqUY8memLrDOuJ8.0sKwzqS0DPbs2k5gTehK30qGYRA.uLm', NULL, '0', 384, '1954', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('dienkn', 'wdtll', 'student', '$2b$10$/II39JJSsHWdggNuVN9NzuP470Alie9JZpAaYe7YmVRSTg83UkLCi', NULL, '0', 385, '4828', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('c32oa9', 'wedhva', 'student', '$2b$10$Ws/Qb.SorwVGTjWkRm7YBe2Fde38YYhWGPkOEZE31Os4xRNThv9c.', NULL, '0', 386, '4188', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('dnbzi5', 'wdkji', 'student', '$2b$10$SCeuZamFwyCTo09PvpiHW.ghms/8MAlxlOMszrA78Lm/GbKpcqWkS', NULL, '0', 387, '2154', 'Sat, 19 Oct 2024 10:03:42 GMT', 'ASANTE', 'true'),
('5peaj1', 'Jeremyzae', 'student', '$2b$10$W7Qab0E.9j5KYKuGPVpEseHijwRRey4HSxXJ/a8GOELGjvkPUgYjq', NULL, '0', 388, '7967', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('t5yv25', 'Gracegie', 'parent', '$2b$10$pRv0wLdnEU30Rs3Dgsj9ruD75DxZScYh0MHToEHMuUJj3QRtS1f2m', NULL, '0', 389, '7647', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('9ut6ld', 'Benwat', 'parent', '$2b$10$2aHUvDQjz20sP/rjO8J9vOWzLgVj6spjEhloD/6gycf40Lupq7RTu', NULL, '0', 390, '1043', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('kvmrj6', 'Gregoryfoh', 'student', '$2b$10$/qqYKe39KMqFNQwMv4LKQe750xT2BGR5CGzmm460.gHklx/leHKzu', NULL, '0', 391, '8476', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('0ze1gu', 'Zulu9yw', 'parent', '$2b$10$d1xjqY/Lz61nfG/4sK7dp.KALq6c291Jb9wgniDWmTe029oli3I66', NULL, '0', 392, '6105', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('4x45gw', 'bbbbbbt32', 'student', '$2b$10$EQLlLVF8V7kYJ2nxOXsAZupWmvBKVb.cj9HQl12nw7SCgUK3l33qO', NULL, '0', 393, '4957', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('5yiamm', 'bbb7h1', 'parent', '$2b$10$khebTpu.z72ZQmUdgLHxq.aX4hwqN2fJLkeacg146lxyxJMl6eN/y', NULL, '0', 394, '1967', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('38i56p', 'rrrrt1c', 'student', '$2b$10$KaZw8a/D7Qbdi.0Mu0jXa.eGsX2ufgHBcPmgnIdU12p8iZaGRbBce', NULL, '0', 395, '5941', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('ipzflk', 'rrrrray5', 'student', '$2b$10$b3sNV37720A7is.HxlrcyOSP6bmSRW9pMMfB3w7iJFRyT24zAXF3a', NULL, '0', 396, '5396', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('39nyxi', 'eeeefxs', 'student', '$2b$10$wfDMUPHmgnYHEZyGazh9jOn5LctfGUSg3vWc3T74.go5F960gsT8i', NULL, '0', 397, '7448', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('zhoh23', 'rrrrrryiy', 'student', '$2b$10$nDinfe.WanVXfPqjCw64Nu8wH9ZkbVfRdurxH1.64Uzf.3BV7zO0K', NULL, '0', 398, '1750', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('tmiprn', 'eeeeza2', 'student', '$2b$10$zwvGOn8aNFJVfHOXegomuewoAqIqyxPQ99zRL4SbVZrsB6Z4Q4E9.', NULL, '0', 399, '1346', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('352omf', 'rrrrrnhh', 'student', '$2b$10$G5gnTFbHGIWFu2JTvM1YWeIGTeOP3VhZ9fXx35GM8bqK7weI5rYWG', NULL, '0', 400, '7476', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('47dkgh', 'eeeeiko', 'student', '$2b$10$jaoAitAULmdvpn2bOESnr.DUw4Yp5fHENE0BtN5h33kv7/JzcHK0C', NULL, '0', 401, '4872', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('u8p95a', 'deweu14', 'student', '$2b$10$FY72rg4tCTokLVFZ1A2Cm.DDLxcQvTNp3QPvc/7tafIk8asFDhMqq', NULL, '0', 402, '1034', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('80uujc', 'wedtea', 'student', '$2b$10$n/EHrVjhnVBuRP8XuWlq4e.dsefL8DWd.2266gp3VmjiDo068klPy', NULL, '0', 403, '7586', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('wp6n3b', 'wedokr', 'student', '$2b$10$ImfmBwrNiWqQlnIB.4ZK5.T5stwClH2329db2Znf22w1S8e8TwIe.', NULL, '0', 404, '2515', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('8ftxsr', 'wedx17', 'student', '$2b$10$Evs8H0gBXF7Yqabmfhug2urA/yhGCmntVUUDLLYrq9yKNEsR.Le9W', NULL, '0', 405, '6149', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('sei8zm', 'wedgnw', 'student', '$2b$10$ifEjV5mMV4HcCMeJBL5ve.yHwUn5vAx4i8Z/pXA0Mz9GJGpFvg6ki', NULL, '0', 406, '4027', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('srkhmk', 'wedrnd', 'student', '$2b$10$cnc/P8UdLgPmejcJrs3MZe9bK01ZezrSnKZTjXxAnwaiVa.gRa8Xm', NULL, '0', 407, '1076', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('8hj5jx', 'ed4lu', 'student', '$2b$10$RlSJp5L661SpYLfJ1fhAhu7gPD95IDaMZyoeENFo2f.FLCWOdUUMu', NULL, '0', 408, '8465', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('kqw7dl', 'wedoav', 'student', '$2b$10$bgKLiz/kVQKDE4GvFmJntOC83IfLF3ZWX8cmk6z5sHZoNY4ViLoTe', NULL, '0', 409, '8205', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('ry81q3', 'wqqz', 'student', '$2b$10$tOajAiI1Lg2.kEFeCdH.j.J330O5OxHnu.daru31zbMffxuF.LJPS', NULL, '0', 410, '4867', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('ga7u89', 'wdqzd', 'student', '$2b$10$OIdB9knTx4mxNDZolmAzZ.4haKmNbXDf3OVkiXpIjF8QnxOexEZXa', NULL, '0', 411, '1744', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('0l006d', 'wdtvc', 'student', '$2b$10$9doVc3bfEhUkF9/fzWhEReAhmokOuYQT2YtiSzAuS92Ne63e7Ivw6', NULL, '0', 412, '5491', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('vn887d', 'wedlqb', 'student', '$2b$10$hINNJI3TC5GHGbmsBS8tFOF6bNiSonPRza.4xCvej5/oM3/Q8I8.m', NULL, '0', 413, '3246', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('yy3kco', 'wdvyg', 'student', '$2b$10$Xa5QBgJIlA1Jr2wLyTvVyuPVj7tZD8YbHFZE1icMNiNPt/QCsq5Uy', NULL, '0', 414, '3210', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('dgeotd', 'deweb3m', 'student', '$2b$10$c242lC09fyv6yBS.xkzFS.NZhhihOfmfY5pry5k1nRXnHm2CgQzF.', NULL, '0', 415, '6001', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('h97d7u', 'dwedt88', 'student', '$2b$10$UONa6G8831JEdzhsLpCAe.UsxYjlnl3sDflq2lOT.JA3tCIdqMmSu', NULL, '0', 416, '5569', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('32i4jy', 'wdbvq', 'student', '$2b$10$NT.P54wE8RtyYOwhiAWp2urrc87DvE/p3NiXOj8MvA2uwo4KJmAii', NULL, '0', 417, '8593', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('ochgk9', 'wd1e5', 'student', '$2b$10$dwiR/KdhLBxy21e0bNDqK.vK/VPslha/Nw71xCZlaH5MUcClDA4Ui', NULL, '0', 418, '3620', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('jki2oa', 'wedkgr', 'student', '$2b$10$VYPBJloyfKV6opPoM1CgmedrNQV8b1hsLLnhga0ccf3pnCdvKiuAW', NULL, '0', 419, '2659', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('sicm0y', 'wdjjh', 'student', '$2b$10$nEDsTcMtU7OfQRERiP72E.YBn83B47SQ37UpKzo2d9A6GWpjXSn82', NULL, '0', 420, '3674', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('037rnc', 'Jeremymzj', 'student', '$2b$10$DMTGZONV/5NApYg4KK6l9ut7olpW4deGlDrw1.Milj64IJgQfVHye', NULL, '0', 421, '9559', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('vnamn3', 'Benjl9', 'parent', '$2b$10$nMeY5L69BbTR6TnWOYyMNe7.7i/Oci1m2PhUhnWK8Bm5r/TQXRMLu', NULL, '0', 422, '3516', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('np32tx', 'Gracec6t', 'parent', '$2b$10$7XpPf83HWNGUVMU7rrO9RuhmsfIwCX.Jo9hGTrKev6wGnS1ja8o6K', NULL, '0', 423, '5127', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('38zdjb', 'Gregoryxml', 'student', '$2b$10$BzA1B4xoWYCtSt91ijn1/O69d0QR2Z2QSpJUP0zKD.0tXIh..mOvG', NULL, '0', 424, '7923', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('6ody38', 'Zuluwmh', 'parent', '$2b$10$qzOBwILapa6arwQjEikxA.fNsIAxd9kCOv3IDBk3qy7ArjfoS5vWC', NULL, '0', 425, '9264', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('2u1dcz', 'bbbbbbnlw', 'student', '$2b$10$S5E/J3AwDThVf1AgepY.7el0hebnqc.aOhqcs/er8fdEEKwbkfIkW', NULL, '0', 426, '4010', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('hpi6lo', 'bbbcrd', 'parent', '$2b$10$TrBTpDbvVzFh6MgLyD4yI.mzEgKEjbXiGHTm3S3Y72MXOhoy5iPg.', NULL, '0', 427, '5936', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('leb6i0', 'rrrrgws', 'student', '$2b$10$rYEWyE7ULMcvSmvDBW2BJOD1DAzAaP4BVWv0rH1MVMVQt87khDFSG', NULL, '0', 428, '6911', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('wxmf8t', 'rrrrrzxk', 'student', '$2b$10$BpzCAhuJxTIMTo.Fc/dxtuaO9iw6TpEQmm.EGqcCw0.aFMewDBT/K', NULL, '0', 429, '3352', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('27t50p', 'eeeesdk', 'student', '$2b$10$SPrqiY8HaEbEZ8Qz92ySJeP9HK7c0w2UqCPsiT69qlUtt3OukfPwG', NULL, '0', 430, '5223', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('m73a9r', 'rrrrrrpzx', 'student', '$2b$10$KcqO7mbk2X/kNkY27Bnr8OOWeQPcmOwWdnx97h530oeWq0i3pISES', NULL, '0', 431, '5931', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('lfgjg5', 'eeeevzb', 'student', '$2b$10$R7iPJjjlOlIQRhVsUEuTReUfywt7Ge4I0u45KXdV.M1omw0vL8Hcm', NULL, '0', 432, '5696', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('jx1h9b', 'rrrrrovx', 'student', '$2b$10$.zQime94OUB8rGHqI5PIP.Vg4bEBt99v44UCd/vmVbhqKytI9bdMW', NULL, '0', 433, '1267', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('gp2tvp', 'eeee9rs', 'student', '$2b$10$QEOLx9mwHh7.8jIdxtm4x.W.66D6XRkUxPhIjqHUPPuhv2AWNlr1m', NULL, '0', 434, '2317', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('mttxpg', 'dewee9j', 'student', '$2b$10$ngJ7AF.QePMbn4Qe8dbqjelgYv5s6m6lcifqLdQHYnZPUwvlq9oKm', NULL, '0', 435, '3504', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('4cvk5a', 'wedlvp', 'student', '$2b$10$.wOqb.qgukLyngl06738cOk3kmxJultz7iwBiya/6mW4llQUFPjxK', NULL, '0', 436, '1561', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('kefwdu', 'wedofv', 'student', '$2b$10$zaUuuM3skhvoyPu3t5gSkOqQJEfKRDbCJefbKh93/cAc5J5sm1egq', NULL, '0', 437, '8064', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('iqv161', 'wed8r1', 'student', '$2b$10$tVDNcXEWAdd0VX/oNR9mMejl87azqqKkcVPeUDwLsNRqBZ.JxmEe.', NULL, '0', 438, '6665', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('9gytql', 'wedyul', 'student', '$2b$10$o1hnm9m25aQrmOSoveIXVeREzoKiqXHhUiyLMs52iUHhRxy78nCJO', NULL, '0', 439, '3994', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('8t9e73', 'wedeol', 'student', '$2b$10$kK1uJgY9IQnirdig1puYqONlApXQn8sK22CrAWm/0dnKrFu0Wo2Jy', NULL, '0', 440, '2293', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('t4ap19', 'ed8fo', 'student', '$2b$10$Z0zu1PqvL/Q0.0Sz3raub.0nKS1PenJUkUAnl72C7OB4OPZFBVupe', NULL, '0', 441, '4421', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('dnd8fv', 'wed8da', 'student', '$2b$10$a38vm360.JdEHepdImPx1OnpnJ1Qs27pjNeSK6yxZWV.n4Ow7wsoK', NULL, '0', 442, '1998', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('m9w4xo', 'wnov', 'student', '$2b$10$O9tgpEUewzFfeH2yQ4LCfuXxFPzuqoxwnee6ya0ejKX.4W6Jeqz96', NULL, '0', 443, '6921', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('8a5i1c', 'wdavk', 'student', '$2b$10$ivPQOYDsKGBoKLpGbOnG9.pMgX0E04I4uXydKkKVrDvzLJABO886a', NULL, '0', 444, '5873', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('k644nr', 'wdwg6', 'student', '$2b$10$HaETaN9ETJykzYqVo9hYgeevOMHm8yMwXfl4K7vqm1LZ.51LNNc0G', NULL, '0', 445, '7767', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('ecrxea', 'wedwv7', 'student', '$2b$10$C7IQXF078fHmqVejTs7houZOanW.ylR7ds4UnWrzF0kFsXG0oi7oW', NULL, '0', 446, '3330', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('pvf62g', 'wd9qd', 'student', '$2b$10$lt5ggIzikcB4Wk.1xLmdbefTG/mkbOYlDxsHlVINgYGZU3UROq8DK', NULL, '0', 447, '6448', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('0phqee', 'dewelqd', 'student', '$2b$10$Z2g56zJTa3AttwkEFwHCd.S3TM3H7Bqhq2K9O/uIz2ZjPZxvoF3kK', NULL, '0', 448, '5977', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('xdxulb', 'dwedjlu', 'student', '$2b$10$MiV4DmEjj6/mc3FltP6U6e4fQz1eGmCl5vF5EmUwagFiBOGJETz4y', NULL, '0', 449, '2263', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('53nihh', 'wdudb', 'student', '$2b$10$Sze/pCXarlz4BPX8hAXC2.BDdkYu3SAqkzEzVHHSSGnFloj4nR9ZS', NULL, '0', 450, '6974', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('ji1r9q', 'wdra6', 'student', '$2b$10$m8PjWdHJpC9jnUg/C3yXxe99qlTPzgJfsUmPADn64jr2k2K4X6aRW', NULL, '0', 451, '5649', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('6lgpto', 'wedoke', 'student', '$2b$10$91qinlx0xuB.rn/c1nkHa.nqo0wEX/2dY729YnFO8D50thC48s4uq', NULL, '0', 452, '7451', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('gup8vv', 'wdqc2', 'student', '$2b$10$QlfWrXplXE.CDXFIXq8HluWtPYP2LqtJpMkr1HMwMsF5oiVeCKTBO', NULL, '0', 453, '7075', 'Mon, 28 Oct 2024 11:57:47 GMT', 'ASANTE', 'true'),
('0gc48u', '1@g.com', 'staff', '$2b$10$vqnSVf3zY5k0Ewji0/Zth.fBai.6HrN7CtYbYCZjagvysnEA0krkC', NULL, '123456', 454, '1826', 'Wed, 30 Oct 2024 18:48:33 GMT', 'undefined', 'true'),
('xs9g3i', 'user@user.com', 'staff', '$2b$10$LwWCPFdAIcTLBHBPXSTsOuqPy/s9ckpR4JfYcmIrtoX8jBRNZzQwa', NULL, '1,2,3,4,5,6', 459, '6345', 'Sat, 02 Nov 2024 23:15:48 GMT', 'undefined', 'true'),
('9np725', 'usdfsdf', 'guardian', '$2b$10$4LfYTo2yVfcLa/Q.beRsbu/KEAXyGFibSOoCXCYm6f/vcMlIoEujG', NULL, '0', 460, '6782', 'Tue, 05 Nov 2024 20:20:02 GMT', '', 'true'),
('d8ujya', 'Jeremycza', 'student', '$2b$10$7abTLMdyl6U.gX6Xw438deuCFp9jWWsuM/3zSHta5Dc3Y0zRMuZ9q', NULL, '0', 463, '5150', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('yuvjin', 'Benbyv', 'parent', '$2b$10$2id9KrlecgmQiBPEATEH8Oc6HwXFD4xkXxy1ebaXEFY9ABPeEBiQu', NULL, '0', 464, '6401', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('j6qjgv', 'Gracegrn', 'parent', '$2b$10$aOrjn2g2yrqXDTs/NqXn8eZBoMAROSwj/tHg2ZotG9wNCXHBayzeu', NULL, '0', 465, '8264', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('jrmfz2', 'Gregorytbr', 'student', '$2b$10$tZ1El2IpPxagzzcD3lrh3uj/vump/H.VaBB8xW7ffexC6h65iidEm', NULL, '0', 466, '6755', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('fvzv6i', 'Zuluhuv', 'parent', '$2b$10$5bX583tm2uySW164oZBmb.sCqcaYwgrhyTTqQgyyRuxhziZLvV5Lu', NULL, '0', 467, '8747', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('yee8i8', 'bbbbbbbre', 'student', '$2b$10$LEftTG0XLR4blPIKXWQQ/OiPGqJk5fDE0aas6jADFYXPCGc1P4Ahq', NULL, '0', 468, '4191', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('4gqgiy', 'bbbk2w', 'parent', '$2b$10$1/3BZT7h8vzrUoKWL4JK2uWTTD4EWvQC3UQHvC.or6rA/7Ps.MAxS', NULL, '0', 469, '3138', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('7w9tv6', 'rrrrzrr', 'student', '$2b$10$btfhnAgmshaR1yDjD/F0Z.nLJM1rXWKhEgat8HaJD.EfZ2GqjuUEG', NULL, '0', 470, '4986', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('ex25qh', 'rrrrrlyb', 'student', '$2b$10$1Q2njoV41uGdjPvTwV1Wo.G8weNJnTUTf6mdPMiJWakDYajYGc/CG', NULL, '0', 471, '5013', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('t1ss9m', 'eeeeggd', 'student', '$2b$10$duOW.MKSyEKkW8rd.rLdK.S5OAtroRm4b/5kKJvKAqU8U3pp6CCp2', NULL, '0', 472, '6106', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('wjcmk1', 'rrrrrrznf', 'student', '$2b$10$90vGUgGSLJ2hL468AzEwDeBrC8TOu3gAWXDkVMibezJayY0.A/m0O', NULL, '0', 473, '8106', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('ma0hrh', 'eeee2kz', 'student', '$2b$10$LW33dddVfo2pisRMfDOUiemftVYrCjUPWHXJtYrUtQxi.d8obmX9y', NULL, '0', 474, '8451', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('2smjr1', 'rrrrr7ak', 'student', '$2b$10$KgS.cDOzqZd6wcrVmhQq4uMCXu/5g6PteoAnnQakxzxRfp0R2C2FO', NULL, '0', 475, '4614', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('l43fih', 'eeeewoq', 'student', '$2b$10$v./H.iuv5hHdxlZwE1u.NOWP1zvCJNaSzwGfjLREeQrA6HjGv7lwq', NULL, '0', 476, '4121', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('7mmctc', 'dewe3yv', 'student', '$2b$10$avFKnYg8zj40en8wnYHfAeBD7JfQjhChMa40kjXY0jUdLWPwvDayi', NULL, '0', 477, '8447', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('4gytd3', 'wed6m8', 'student', '$2b$10$crqRIXkCeWUtkrhq4AEc2uaqoGS6MCCQbbnO9RwP6s5egjdYxls5G', NULL, '0', 478, '6844', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('oay6i7', 'wedwds', 'student', '$2b$10$bQlqYKgc7kE30Unf4FPiW.6zcTq9lBYQ3jgl4XfObNXzJHfQ35vxq', NULL, '0', 479, '1391', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('xuiocv', 'wedhfi', 'student', '$2b$10$V52y5rh5MFUXLocou0GV3uVabkZusjPuHUsj.H6TH3WwaaAxKUn12', NULL, '0', 480, '3168', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('u03svd', 'wedirq', 'student', '$2b$10$e1zZZq9Q7qQonzwo6ou6Be3pwIaUv4yRKEcLUOwuATOhENbsyDSzq', NULL, '0', 481, '3531', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('onifjs', 'wedkyk', 'student', '$2b$10$P7WJz/lb3KEj20C1knd2nOjmRKami20qt7cXIXv8n1vktkB5iSKQG', NULL, '0', 482, '9852', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('qy32u6', 'edygy', 'student', '$2b$10$UNhaQxICOiUJm39SDvEGU.ibHnXqDRNLdfyuA94rDayvLaxbfQOwS', NULL, '0', 483, '9606', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('jyn25o', 'wedcmv', 'student', '$2b$10$9h.re9YkDj98R.bo3h1WaOKF0okA3SHR22cA0riCm9AOByzp6lMvK', NULL, '0', 484, '1575', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('4a6knd', 'wfir', 'student', '$2b$10$vr9OPlcStjRNqiwKjmrmO.bkuqL2U03giJ4J0c7OMaVtrB3UEXiAq', NULL, '0', 485, '5511', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('0hha44', 'wdihz', 'student', '$2b$10$.W7mQBeetR3t4RwhU/tiTu37t74j/tzRKZOXkboogvN4T.XA1cIhC', NULL, '0', 486, '6339', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('4ok00o', 'wdwyv', 'student', '$2b$10$o.CzjWhqcGE6DLSTvAV3ruRoH1r/uVLGK40e0.HvGbLEBdswj4aAS', NULL, '0', 487, '8755', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('28567o', 'wedtea', 'student', '$2b$10$mo6G0uFQuK7aTl3QHaf6WuzczndmH4H8MJXAb54z2YaWx7G6BY4/2', NULL, '0', 488, '2442', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('0qfmu9', 'wdbrg', 'student', '$2b$10$sBubR2/TKjzH4DSJKwbEGey57r9c5753SoKpkcIPPn/tPHRWXd.iW', NULL, '0', 489, '3843', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('vhdjep', 'dewe43m', 'student', '$2b$10$s8UxZT7gUHYYhhpcsN6WmeSP6y5cLvhRZqqITrq1RhkNUbSMCsCFW', NULL, '0', 490, '2934', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('k88ihb', 'dwedqqh', 'student', '$2b$10$E3TVaVFa9qoV8f70n5yUMO2mPPdPsn3TtC0L6pYvh22FiMDlwwa0K', NULL, '0', 491, '6601', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('5jwatv', 'wdn1r', 'student', '$2b$10$HTxo785JPupvPwqh/zZPw.C7NWieoij45CMegwabXKGZ7UuAs.HMy', NULL, '0', 492, '3842', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('uhx13m', 'wdwbg', 'student', '$2b$10$I5LXnCACey0XRAboocBp4.H7tdq2q6sfevc776Rw31P/CebPYNwoG', NULL, '0', 493, '7761', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('q7injj', 'wedhm4', 'student', '$2b$10$a0MVPDAdXsSILstxmp9AcuinsaVqcNzYVQNaDBpjW8SYt1V29gpsi', NULL, '0', 494, '9817', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('l3w80q', 'wdhja', 'student', '$2b$10$CccPSwPQP4ghyYvZi89g0eE.N6ZLRaVb8IT4UXTFyfxLeab0goXLq', NULL, '0', 495, '8118', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('lk5y13', 'Jeremyhsd', 'student', '$2b$10$CRflyKqG2bJjy4oNvhl2B.sQriUxSDXu7bDCEb8pAZv5Es7mll/Cq', NULL, '0', 496, '3292', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('iajjhw', 'Benmc1', 'parent', '$2b$10$M8p4IVC.6tS64empVyPOyegcDe191di4erqlaGQNb.asumhpMQpay', NULL, '0', 497, '2671', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('xv8chc', 'Gracegqs', 'parent', '$2b$10$T2L0gTVsbvcmMIpWJB9uVOE93xb4WbHg0BcowCNm4C1OvlZ59wIMm', NULL, '0', 498, '2732', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('78ut2f', 'Gregoryt3m', 'student', '$2b$10$lJktUuq6ne8H68uqmGXrT..KqjIqbH767edPqgZa/CZt1itifzp36', NULL, '0', 499, '4360', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('xkmci2', 'Zuluq1i', 'parent', '$2b$10$XvXxZIbNrjgfzigwRrEkdevaxSFWkg4e7gsHva2sQsDbK5BNybuhy', NULL, '0', 500, '1260', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('9f6fgl', 'bbbbbbth6', 'student', '$2b$10$STyaNvq21UBnkrgwfBFuEe3gPxiI5bOFeDPJz3zQZwma09YXrQvUK', NULL, '0', 501, '2134', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('23m7pp', 'bbbnb6', 'parent', '$2b$10$pMVAMifo3BwkIEExnElUYeE8n9BkzEVHkH6WdlJ9kvUoQkzt6a2Te', NULL, '0', 502, '5321', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('vlgvyu', 'rrrrjkm', 'student', '$2b$10$itdnE50YCF2mplqu.kXhC.0igMKOp0i9CuJ6UVR.mPxZxSV0HKGz.', NULL, '0', 503, '4651', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('bdc1bo', 'rrrrrmhe', 'student', '$2b$10$Ph3prX.ZcthKGI3vu2WnoeaJzbJCUnc5gtZYc24HRkbDzh1oZApMS', NULL, '0', 504, '7720', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('7y5b33', 'eeeexy2', 'student', '$2b$10$rJqZ.DOAkAAE9pEmcCAXveh0lMVCiErLF5vJgt/UCz0Qrm9/0nckG', NULL, '0', 505, '1637', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('w085ag', 'rrrrrrdr4', 'student', '$2b$10$BZzgHPdOM8ScAkJ1SMCwsOLvn14bNpGmvtdWmnxIrK/9dz6C59ClK', NULL, '0', 506, '7822', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('je9uog', 'eeeeyfz', 'student', '$2b$10$CeDgLRlsESdxV/fQTBQA1O8zkLA8giZ1LmYvT97QLRnrDxvEP.0WG', NULL, '0', 507, '3061', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('rzja1r', 'rrrrr6lx', 'student', '$2b$10$2gxdGW/NenMk3RAm4NWGVeTtVuL3q33yCIUfDErvVJ.jrOEk5lE4m', NULL, '0', 508, '1008', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('gdshr6', 'eeee9hg', 'student', '$2b$10$YAO4ntMRwPkd33UUN.IHKOzrTrxfiqJrMLgWcEtWjinuuHf/OrmWS', NULL, '0', 509, '9112', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('rho4j9', 'deweztr', 'student', '$2b$10$SpNWy8REFM0yZYfT2X3hIeXQXYH5OQKOXjfB1oDeQkwrgqtbM62Jm', NULL, '0', 510, '5083', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('d9jxwa', 'wednxm', 'student', '$2b$10$nWrTvoAzL1o4EaYOI3V00.hl52FGsPAqrLK/KDyEjYVZLPMkM.xuS', NULL, '0', 511, '1708', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('demrbm', 'wedxdw', 'student', '$2b$10$21jOuNe9/k/RASpjDCOyLunfqxOYi/a9/I8CrkCLPHqN1Lf.UWyUy', NULL, '0', 512, '7378', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('xh02tk', 'wedcof', 'student', '$2b$10$XpipedKV1m3MQSASg2q1yOdrb4whr.uy33DiWIeuWaC/Z13COTQCO', NULL, '0', 513, '7525', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('bvnkgm', 'wedqqw', 'student', '$2b$10$yVBUdRXzaM6e6uxTykxjletQ4xOkd3OEsz7xPgInim4lk8jfzumoS', NULL, '0', 514, '9808', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('9p0flk', 'wedslo', 'student', '$2b$10$uUWl0C4.hsiy6krbRXAt.OCKa14Arb9TVYAcQd0KymK6klQhxEvga', NULL, '0', 515, '6362', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('aqbn2t', 'edmoo', 'student', '$2b$10$Dt5ezSAD5EOi/YavB3lGo.Sm5ULPgSu7z6gf24tuNIP2hR0Lknn9q', NULL, '0', 516, '1478', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('o0xlen', 'wed176', 'student', '$2b$10$BET5Wa1Cn5eV85k97RwQE.mYCYxtkrxV8EVgUgj0DbqodW76Bt2E.', NULL, '0', 517, '9342', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('nxfio7', 'wmoh', 'student', '$2b$10$e7U3K7U5QfRrhO0YsjtFSO3tdsKR55eYpCKJIFnwagRc0Ia.XHXau', NULL, '0', 518, '2239', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('gi75nq', 'wdy7i', 'student', '$2b$10$lj6pL48jMpgBRlAyHj84G.xjVlGCjrGl0Gvsg70eNkkU0eQs3lOvG', NULL, '0', 519, '4950', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('jh982c', 'wd4hf', 'student', '$2b$10$dA6WfbTsE9BlICKlnWg3A.jnDMjzhaTTdPJgUbolQewEBuRhLJuXq', NULL, '0', 520, '8136', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('syjo04', 'wedngx', 'student', '$2b$10$ZudrDuVy5bVmkkVKOkjK4uLcZtZ44q6t/YGp6D.uHdQgJdz6x8yfe', NULL, '0', 521, '5257', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('kj2hbn', 'wdifw', 'student', '$2b$10$d2PeeNnyD05z03NziRQ6BOJqwYzu63M3Vh5dX1ZS0T9va9FNkW5nW', NULL, '0', 522, '9896', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('437net', 'deweaa7', 'student', '$2b$10$TIm9XKrPnmNaHTaFIuvY0.f08n6/1m0iBanl2NGgEXrFZv92SAFbi', NULL, '0', 523, '4801', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('9surm6', 'dwedrte', 'student', '$2b$10$/wvGTb.ydNZjqqkSiow.8OzSOI0BZ32iEBcN9Nc4RH8p.4v3mErXq', NULL, '0', 524, '7961', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('0lgc5u', 'wdn6s', 'student', '$2b$10$SeR4DrCccIq1QUIUXqjB.OXf01PadH7bhHvBrD03CdXA.hl6cKsiq', NULL, '0', 525, '3048', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('tgnsl7', 'wdnvr', 'student', '$2b$10$QyS/RC3wuc3AkR/Uh6nriOZjosiYj26oZvvosOh3LRC/FluEjt4gG', NULL, '0', 526, '3451', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('q48bft', 'wedqew', 'student', '$2b$10$vUfHW30mBr5Z3P4RD1gGUuJJbFMcbCR7JT0MsdHR6OKeOpV5buGB2', NULL, '0', 527, '3791', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('t1a2hr', 'wdd6t', 'student', '$2b$10$E9O8Q2vhQewVjyb8Q.clVuTg/.OTZUuqDm/3lxa4UJ5dDaTo1LgVm', NULL, '0', 528, '4971', 'Wed, 06 Nov 2024 07:50:39 GMT', 'ASANTE', 'true'),
('mwy2ad', 'dfd@fg.com', 'parent', '$2b$10$SeBZjJGjdblhz43n/UY8TesSf457K3TDVD7r5YNVBkYJUjSbrjuBC', NULL, '0', 529, '7768', 'Wed, 13 Nov 2024 11:10:17 GMT', 'Asante', 'true'),
('nnpvde', 'dfrftm', 'student', '$2b$10$96/W8pv.eIY9FCMexxSmKOkDCfacb2LSQkWULsB2PATAEIppYWoEy', NULL, '0', 530, '2672', 'Wed, 13 Nov 2024 11:10:17 GMT', 'Asante', 'true'),
('8onm1f', 'dfd@fg.com', 'parent', '$2b$10$gRXH2riln9SjvJk6Dne3peN6plJrrtNGTdf19MqMtXQGszVfOtQ/u', NULL, '0', 531, '7768', 'Wed, 13 Nov 2024 11:10:17 GMT', 'Asante', 'true'),
('7bxwwp', 'fdf4ro7', 'parent', '$2b$10$cG6YPbBAI3.36Fyxq52TrO3eqr2y4zOIXy2kfJKVlj8XD2Lgk8iRW', NULL, '0', 532, '3997', 'Wed, 13 Nov 2024 11:10:17 GMT', 'Asante', 'true'),
('mfj5cg', 'df6mjf', 'parent', '$2b$10$HrgIJrPzvVUYn8GVtcXooe.bPoQ4TTGgTipJsO4sJstVr1fFk2A.e', NULL, '0', 533, '3997', 'Wed, 13 Nov 2024 11:10:17 GMT', 'Asante', 'true'),
('dgx78q', 'sf0atc', 'student', '$2b$10$vs4PPGfu2oisojmHXaqMUe9inDEUbzQ807uo4t66w/CT0qoA6n4zy', NULL, '0', 534, '7538', 'Wed, 13 Nov 2024 11:10:17 GMT', 'Asante', 'true'),
('bbr3nd', 'Jeremylcp', 'student', '$2b$10$sxfrh.4rXooPFRN/isLjqeUhIdQw0PqSZYGfuUI/wTBcf5DxweWAG', NULL, '0', 535, '9067', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('78lbp7', 'Bensdz', 'parent', '$2b$10$Z8Iw3UtDmkegqtITJwN3Z.JkVi3O6KCN2KaRP2ZFFbXJ/pGyxKQ0u', NULL, '0', 536, '5145', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('bbep3m', 'Graceuyk', 'parent', '$2b$10$mKeBBVo7seKfFpnBDKkXlueswpZSMYn3vDhXiAzWQGeGXm2MNKh.O', NULL, '0', 537, '6891', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('pe6pca', 'Gregorylwm', 'student', '$2b$10$.UdS8H4igupWZnkGoAAkkuSt703cWp9PRqwO1d3vk1jRaXkNyfYDq', NULL, '0', 538, '2817', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('xk71i4', 'Zulu4i4', 'parent', '$2b$10$LZfIpR4SMfA2JXpswDcOOOByGo8rMeeeLq5h9LaIiwcFPl5q1Svhq', NULL, '0', 539, '2826', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('bkrewg', 'bbbbbbnip', 'student', '$2b$10$bXuhArLP5EGdtQVfI05WfuWOHPBMF9II8wi3P4E15FtdrLDKYgrBe', NULL, '0', 540, '3436', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('jgenoq', 'bbbgto', 'parent', '$2b$10$jgaR8tnRxBtzfx286ec01.9O4noIdTJ70nJuDdnblcG9EzV2yIscu', NULL, '0', 541, '7389', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('os1bv6', 'rrrrzmv', 'student', '$2b$10$GbEKI.MU7RoSmmJYCDVZFetx5E5Bp6GB5WwmSDr514VdFfFx60BGa', NULL, '0', 542, '1125', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('wmpcsd', 'rrrrrzg1', 'student', '$2b$10$0o1vNO.FHbO1JNQl8/HC9OAK3eii/VIbX0YtXraWJ/yRHmr6zOsQ6', NULL, '0', 543, '8669', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('diwmwe', 'eeeei5o', 'student', '$2b$10$jP8OTyMjQudCvnrNNCzChukq8I6nYtASFZf7KJvlYHgqHSbq5UsJq', NULL, '0', 544, '1675', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('y4c7wk', 'rrrrrrbpa', 'student', '$2b$10$LiAcfdUIfdRa95ZRIiIl5Omjg.caFr3LhFNsA0.xatXIaXpvqTELy', NULL, '0', 545, '7374', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('i46iw2', 'eeee8zo', 'student', '$2b$10$Gy0IVx2TKYO2.2CIz5GdgunC/GQo3ia.4fRLAv61YKqkt36uveiLK', NULL, '0', 546, '1607', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('kvwj4z', 'rrrrrlro', 'student', '$2b$10$n.RDS5vavPS18KuLU/Nip.F2XoV2RMdhscpvkCOXqERcRE4v0RigW', NULL, '0', 547, '5656', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('pu7vb2', 'eeee1ha', 'student', '$2b$10$smHit2eoGM3XKpyEWpq1EegKihfO3jNE61GzdJyLSRhwjFYhE9ch2', NULL, '0', 548, '3956', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('ycbjww', 'dewemmi', 'student', '$2b$10$TvjgFR4bZtCwIRmtV17g5.r2JbirqbidmVUhDpCaWe8pcAwn/6zY6', NULL, '0', 549, '3742', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('9brtqw', 'wed811', 'student', '$2b$10$l7sGd.6xyJ76N/ZmjJydGehtUHwaV2EK.RJXIpXzwGhUwsDTu38mu', NULL, '0', 550, '3108', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('56gvjn', 'wedpxg', 'student', '$2b$10$9DCSdcg7wwHHGBPMbFw3WeZnMu5EP6.55QlUMn5a6aEObXzpcwZLi', NULL, '0', 551, '7370', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('ag9ssj', 'wed12e', 'student', '$2b$10$i7dun1AkqKzFyTrhRBCP2uuVFKtLGK2PkdrAP4erWa1ttJ7zR1eRC', NULL, '0', 552, '5493', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('wzbu7p', 'wed1ok', 'student', '$2b$10$tKzkYKmUpdSOk8VCStFF8OqxMwxcdlEizcTNOTce.E5YQw1kMVaae', NULL, '0', 553, '8897', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('a8sduf', 'wedsno', 'student', '$2b$10$n4MD/PcLy9qvF8Q1l8iLKO78ECuF8XWd3QAr0DdVgrB3RLjT9ewJ.', NULL, '0', 554, '6061', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('4yqwza', 'edpoc', 'student', '$2b$10$xst5tkYD.F5IEBN/E7QVE.xbP1AG0RSNJVoT/xXK9ExKrGT2ADivG', NULL, '0', 555, '4545', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('degjnm', 'wedr92', 'student', '$2b$10$tfQoCrErOeyVHSklGTSVzeX3eskivkmb/lXISzJZNu4zhO/PkQsza', NULL, '0', 556, '9667', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('0ia38r', 'wuvj', 'student', '$2b$10$WayKD4Eyb2DMPWLeLZx4L.KVqfwbjDBj0/k.z03c4XgcNTPOTfnXi', NULL, '0', 557, '5538', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('8uil2d', 'wda8l', 'student', '$2b$10$qFbri2oPXcBUUF/5NiQkPurO/WClVGh1JmzHleEzbNEu4WOyBlTZ2', NULL, '0', 558, '1139', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('ic2upk', 'wd7aq', 'student', '$2b$10$Bf5ccfOf4f3S5jGSR1k3De5bxWO5lodoobDFRN5d60g9kMnS8gHLu', NULL, '0', 559, '4194', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('lewhvd', 'wedpjz', 'student', '$2b$10$iLxJqZ0FaHK4Me5Dk6NbEOGl/p7E6VcBDtyaEYOFzjGYTTG/Y2Onu', NULL, '0', 560, '5939', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('lfj2rl', 'wdhrl', 'student', '$2b$10$RD.OAkuVTeKsFs9PFWAVCuIixLB9X.yKU0j822WAo4qrej3pvFISa', NULL, '0', 561, '7674', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('v2ubjy', 'deweec4', 'student', '$2b$10$5f5Fh1v74.G.7r3S.BEh5uf0BQJuhmYokI/A/BZkPniQ1ueBT9rAW', NULL, '0', 562, '8715', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('uyvlqv', 'dwed9py', 'student', '$2b$10$LufV4gWSM5vBSswCODuGkuG78R2FSU2uqVOyKhK3xBUsExTlztyV2', NULL, '0', 563, '7304', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('noqii9', 'wdqs9', 'student', '$2b$10$vp0lgtkeDNvXWBt.MA63IefcgtzKYrKL/a4L5nfgN82Uv4BPgtmEa', NULL, '0', 564, '3314', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('x0kjvr', 'wdnu3', 'student', '$2b$10$02Jw7KAxWfwWNr/Ppo1Nwe79zSTrsvYKZAV7gRD8mf/0FSQlfaa8a', NULL, '0', 565, '2584', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('0mcftr', 'wedrkq', 'student', '$2b$10$9m6CRFtYxIqcPcADlnFqd.pnWFr4fAvq/NwCKb5JMeR71lVq.2VX.', NULL, '0', 566, '6633', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('kl0k8v', 'wdao7', 'student', '$2b$10$pQQssqjQUMUVS34B9oxhJOxnmz3yjbdWDaAAxqZBbpsqpf0.Zd0r2', NULL, '0', 567, '9110', 'Wed, 13 Nov 2024 11:10:17 GMT', 'ASANTE', 'true'),
('o6d7wg', 'Jeremyznt', 'student', '$2b$10$YTEKYGw.6tyi.cuXlZH7DeOa/JtnQBD.jZPi4RXe/syqTcqjjMLKm', NULL, '0', 568, '8549', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('m9772d', 'Benpso', 'parent', '$2b$10$fHOoVPv81SZOYq0TBflX2.OpITv96Qvw0q8kzOsKjG8gbnntCE/JG', NULL, '0', 569, '6939', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('gfzs7n', 'Gracesin', 'parent', '$2b$10$Q/909ygwchS5J7ZbAJ4EC.ZQOK9Zi0wtzhQMUvbqP1PnTzH7sXmaC', NULL, '0', 570, '8597', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('vlfsxr', 'Gregoryvgf', 'student', '$2b$10$pHmxZ/A24mWryGkzYTwxd.sDT2S.Ua9xmngFKZUCGN4/slMSZfirq', NULL, '0', 571, '7534', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('xuttsv', 'Zuludw1', 'parent', '$2b$10$o0rwHf/MX7rWA3Au9HjX/u757Qa3HKsXobYzs.D3TnjXOqmYv5MYG', NULL, '0', 572, '1676', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('jh95t5', 'bbbbbbzj7', 'student', '$2b$10$UL8jHQ28wt6uXLXbccV9/.V6EMcg8SnK0CHLHfwFdA2mnwzw.I91u', NULL, '0', 573, '4967', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('3rqdvx', 'bbbe7r', 'parent', '$2b$10$wt98hnBZZnN29rjHOwi4tO3zJrPOIULEqsxHMnjLbs1HeEJ9JM66C', NULL, '0', 574, '6922', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('leow61', 'rrrrhvo', 'student', '$2b$10$snBwT5zXvvXlVQJ/GeqCiOMLbZU/6/SyQeuATTdZS.N2ghX7ICdUK', NULL, '0', 575, '7318', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('7enye9', 'rrrrr1qm', 'student', '$2b$10$A25BpLItzn.0Uca4E1QJdOChqg5xsnTZY8xiXEFs/ApzI7fTMdBoW', NULL, '0', 576, '3400', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('shqwi4', 'eeeefr5', 'student', '$2b$10$W3sfFSz6IfM8etB/SnyFA.ysJJ5j8qIA5nhlxfJzcuSan7diPJSfa', NULL, '0', 577, '7738', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('v415f8', 'rrrrrrxij', 'student', '$2b$10$VYnl6PNeCl9cR6buhlaZte1B4la/UnJ.VZEo1mqxdNeyGDpNpebLu', NULL, '0', 578, '5261', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('w7drjs', 'eeeehhg', 'student', '$2b$10$zM3r2dtAMr3NoF13fiIkAedkPVJCDBr7effLpi1ZTYr0RyMdYpgRO', NULL, '0', 579, '3525', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('szw0hx', 'rrrrr3aj', 'student', '$2b$10$XOgk8fhYC.EgFW43X2/N0uc08QIiC0AcNLWiuMSmjPccz9csUDGga', NULL, '0', 580, '2799', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('vz2pn6', 'eeeeydg', 'student', '$2b$10$IGSl5Y5y0VTiFr8lliKG7.o6XArfzxcPU5taka9vbVwZAmdDvK5F2', NULL, '0', 581, '9076', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('60oz8m', 'deweiwz', 'student', '$2b$10$J/vg7lHRwoHqfDdjfHO7Ae1xC4HoeZJ3aQMr.43yQTUCDEbLFBLwK', NULL, '0', 582, '5407', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('yeqqjs', 'wedqtp', 'student', '$2b$10$iAe3jfqoQmw8nJSCiFqq6u4cJufjphIN4ye8lBUdbfO6ZoZTeYuKW', NULL, '0', 583, '1046', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('3933n5', 'wedgy8', 'student', '$2b$10$wpkGe.2DuFPtsnJ7n.s3N.J7kRLn9rnSNmqN3aKViEeAlV0.hYW96', NULL, '0', 584, '3064', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('qwxj43', 'wednhl', 'student', '$2b$10$CyyfWg3KpROHEQwKhWGmDeFM02WsFMYPB4uYpeDHtaptEgoYvzdYG', NULL, '0', 585, '8217', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('y3hiuc', 'wedxrf', 'student', '$2b$10$uhTd209vUBOqUeEI5j5RL.FgLmenxs8HSjeVO0C3e8.7hk9WFbvZm', NULL, '0', 586, '1574', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('77hby1', 'wedhgm', 'student', '$2b$10$GUw7Wr0KsF9FsgMr4e4.1u5gOG/z3cW1PJhTAezjUzRpSZi6SqTN2', NULL, '0', 587, '2303', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('fse5uq', 'edabr', 'student', '$2b$10$gBhg.xNoObyY5DTO7rseO.ff15cyXPqwJ.Oel37eXwtC0jJntbLuK', NULL, '0', 588, '4459', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('jn540k', 'wed1ty', 'student', '$2b$10$VwsDZWfOECtvzUoD1HdvvO0KRS7McghLKmiwXBaG1UrCu1i3NMj76', NULL, '0', 589, '4715', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('03dr3a', 'w7k4', 'student', '$2b$10$90rpkpXFP9IOM2IjXqjqY.wK.8RHYvAm0ZmOFA.z52cwiDHjFnLgq', NULL, '0', 590, '2743', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true');
INSERT INTO `users` (`userId`, `email`, `role`, `password`, `pass`, `rolecode`, `Id`, `pincode`, `createdAt`, `createdBy`, `isActive`) VALUES
('kcy2jh', 'wdyxj', 'student', '$2b$10$WG2ulOAfYbmLBg4pF7YLM.Th90FYHEwlBtUzw7BIRgo836.oM9xpu', NULL, '0', 591, '1916', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('4wyw04', 'wdn3u', 'student', '$2b$10$4bcYgzn/HAliUBly6ZpTH.hPLYO3GOc8J24qO/drl9RsBCO302U1u', NULL, '0', 592, '6607', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('jfpkhe', 'wedgpq', 'student', '$2b$10$awxdIEQDxqyHluh.3MezQ.PncnoWGAmHw4R2fVP9FuyLZ37sDDx5q', NULL, '0', 593, '6503', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('jhygts', 'wdilh', 'student', '$2b$10$W0NmojH0bJklDbhDx2RU/.JrDS9bATtaSYgKnQJ5HGBz.AmMWZFU6', NULL, '0', 594, '5572', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('v9aamc', 'dewewpr', 'student', '$2b$10$MvQaReBEoIdayK1W6xxnfOmwVKbyvI8xt2i2zVhYH90JE7KNyV2U2', NULL, '0', 595, '7751', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('1c31s7', 'dwedzvs', 'student', '$2b$10$l91uXiR4fvjbuWqki.p3V.lLFgeUIMICL9HB3zgu2tpdWkmNtxxbC', NULL, '0', 596, '3168', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('0prtry', 'wdbfy', 'student', '$2b$10$P2TsOVcPJsBonG8qPWGM2eSUgdIE8sWBieVAlzA0xLfP40iDlH/5K', NULL, '0', 597, '3167', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('972s6y', 'wdt2e', 'student', '$2b$10$it06GLr.a5NZRAzrQY8O4.6OKVVemkS6muLs/yM21H9gfXAjQD4m2', NULL, '0', 598, '6730', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('szzzo6', 'weddpa', 'student', '$2b$10$qoImfXzmoqcVWmqQShtKM.PcQTGqdHpCt1hNRPNLzdUy4ZodT3on6', NULL, '0', 599, '9818', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('qacr7n', 'wdalb', 'student', '$2b$10$iL3tyeqWMQfFpV37/WIMQ.jwKrKD.crBFI3vSVQ6o9vma8QT2tN2C', NULL, '0', 600, '3163', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('3uye8f', 'Jeremyqnu', 'student', '$2b$10$YIsZA7Is.UIfh89Nupzxhe5svlCbrf.9HbpW/Ago15i9v16owGWk6', NULL, '0', 601, '8350', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('dcukgw', 'Benxfp', 'parent', '$2b$10$2cVEfOrQQP/11TInCyanhusEIUZoCK0r1vkcajE5sNcDcY8Koeajy', NULL, '0', 602, '3242', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('o9a08t', 'Gracequo', 'parent', '$2b$10$KgCBBZgg0qXqjrj6Cja/TuQjNiNX78xUY4oSoccSVb72R49jPlOmS', NULL, '0', 603, '6234', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('gsbcxw', 'Gregorylir', 'student', '$2b$10$misavpnC5tVAxyqUpPfLgu2Yss7lsavwiR8ZI1R8VGiftE9p8FeZC', NULL, '0', 604, '6195', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('bcuymn', 'Zulu5z2', 'parent', '$2b$10$pF.ljqCvSzjZzOKHRY1vWu20MRl2B/wjoIk4kx.ztG567g7UP43Ka', NULL, '0', 605, '7540', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('phttx1', 'bbbbbbiqe', 'student', '$2b$10$xu19/gg32PwzlvxrU8hKbOPEZ5z666ml/BXPhzzbeRH4.N0lKOsL.', NULL, '0', 606, '4884', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('dh2v7j', 'bbbvar', 'parent', '$2b$10$rxW.qsLVXEjEiGS08xV.DuSWZpyuQnNzIhXIdnZHttxjMkag6I6/.', NULL, '0', 607, '5332', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('jn3k4r', 'rrrryz4', 'student', '$2b$10$Vv2v.lb6UEodjLH1kPyPweNqEdW5I61EU2RrICBw1V9/gbr3G1yAa', NULL, '0', 608, '8214', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('mcw28w', 'rrrrrxbd', 'student', '$2b$10$FLbGqHaVvBJuqRLYIqCituQQKM3fF5rMSfn.ELzdC7uRpnQEUTFW2', NULL, '0', 609, '4790', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('jbeze6', 'eeeexqw', 'student', '$2b$10$sV./n1ZikHEHlMnHspqmdOPyD7cL1iRXsh09DEs12vHNQ.C1E9ExO', NULL, '0', 610, '3826', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('1i9qb3', 'rrrrrrgcm', 'student', '$2b$10$KVs8x5Zjy/EJtm/3yrJM1.1Bbv/2KZB5pZH8JhZQ4yhVqRRMsMAu2', NULL, '0', 611, '9666', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('6qwns4', 'eeeejpi', 'student', '$2b$10$cRn0VEcF3GVrATWSIhWhb.FhXBDVxqYLRUnfAIK7Spgqot55bUOum', NULL, '0', 612, '5102', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('c303cq', 'rrrrrkmw', 'student', '$2b$10$5h5BgY8pJwt.NRTd9VeuAeUoKot1g/UV6B.zQHn55KwvbruN6yScK', NULL, '0', 613, '6275', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('ii35py', 'eeeepuq', 'student', '$2b$10$5dl.OVrDh3JG1yBd1sHhgex6xihYgGF/EzHNoVNPkhnMqHGrYz9.q', NULL, '0', 614, '1064', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('ct9tia', 'dewenmf', 'student', '$2b$10$Sff1mZyTyMyE.v4mchjK1eCQNPwqO7dUx4PRgkgjnX17Z8zWxiqEq', NULL, '0', 615, '8632', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('zu721a', 'wedhdg', 'student', '$2b$10$P2UG4ueozlRDdhzv8pAQaeJt6pf3z6/.pUQ75bhjXIjaRjF5sUAUO', NULL, '0', 616, '1841', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('q4vztv', 'wed3oj', 'student', '$2b$10$xviuwnO3c/ebcMAOPRwz0.Rt5.ag273m0Ww857UC0XmTfw9SsuYHK', NULL, '0', 617, '8064', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('tzd44f', 'wedbrz', 'student', '$2b$10$TGvtcC84isF.9XrEftALCuuIIiT.upbhRM5/vkN6v1Ri/nFvAcmdW', NULL, '0', 618, '6747', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('e9fblg', 'wed9sy', 'student', '$2b$10$kg47TYYnroGVdwCUneQINOJnizi1Q9OzpbrYdAnz0IP7JkAhvyGKi', NULL, '0', 619, '6008', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('sa1iea', 'wednym', 'student', '$2b$10$yEURmtcVF3bpfM1PS/emB.ag/Zl3gIDP9pgyVfpkQByLaBTjwENby', NULL, '0', 620, '3128', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('soeujl', 'edis4', 'student', '$2b$10$J16MP4Nitl/hsliPWH0PtOawdzkRdPUo.FG/Cfg5A8lWsgH5O3r4i', NULL, '0', 621, '8699', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('so3xnh', 'wedzuj', 'student', '$2b$10$T3MONOt3z2R3WQbhyPS99usLQg5RIRm23so9h7SjCP9LHkQy13Gw6', NULL, '0', 622, '9088', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('yzab9v', 'wdfz', 'student', '$2b$10$wfDiqErGXKKdaesY4FoMZeHHCpE.dfDD5cjtr5j38cLY/paGTYnSG', NULL, '0', 623, '2641', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('6em5i3', 'wdvyx', 'student', '$2b$10$.A55QaFbISVXr.snoeWtQuiAZd0gZf.XqxM65hORZ7syoBXq8Mz.C', NULL, '0', 624, '5879', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('et1zx5', 'wdqxa', 'student', '$2b$10$XHPUbazHhmCLhM7QGilC7udhIsvPm6wHTzmUd9867lQVPP/48BZ56', NULL, '0', 625, '2917', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('86pziz', 'wedquw', 'student', '$2b$10$vwpzdjb6t3.veILpZHYHSuCcPoFs/e9UR24AvtZI.FFombNkgkxnm', NULL, '0', 626, '4014', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('smh7yn', 'wdepu', 'student', '$2b$10$W1xJSoX8Lcllh3riR5u9q.gzXO78qBCHmj7aScK3bMlPyv/n0S/.y', NULL, '0', 627, '5920', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('v4wzmf', 'dewepj6', 'student', '$2b$10$JixDHADAQGtt5osrRNey/OnJTIeye9grJSFcGB8/6flQ0sKTKCVuG', NULL, '0', 628, '7162', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('vodjem', 'dwedzns', 'student', '$2b$10$rMjJD3vfTiMn/ITd2Ur6.uNNzNMppgaTPEK.4UzA1W5s08XfexRem', NULL, '0', 629, '4099', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('1rk2yv', 'wdxtv', 'student', '$2b$10$XfBY9FzjO3IlECxtV7ikCuDPMtm5F5g2sb/vN1UjvaYNw20goFgPa', NULL, '0', 630, '2766', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('7vkwez', 'wdtem', 'student', '$2b$10$IArAfgEXjcFIW74DJ4bc8eOlbuKZHDEYWZI.FUrJjwPpu1.Yr1YHG', NULL, '0', 631, '3450', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('wvtosb', 'wed9ad', 'student', '$2b$10$9m0FTInY1THSVTyqFyxPp.yWe26lM89QHRqNwr1cwpdTupXrZijF.', NULL, '0', 632, '9869', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('a3zx8f', 'wd42n', 'student', '$2b$10$.bsBpI1SUG5qbKJ0wIyMPeFa7YvFCFavYyhQPugnrwY3T/yuBCJ7i', NULL, '0', 633, '3463', 'Sat, 16 Nov 2024 17:04:18 GMT', 'Greg Kay', 'true'),
('319ga3', 'sdsdhjaa', 'parent', '$2b$10$duOMjYqQF0k9eGVvj61gy.lHjZABdpO9fsOiwRXzAfpvq7WIxihAW', 'o6kfa', '0', 634, '2261', 'Wed, 20 Nov 2024 11:13:52 GMT', 'Greg Kay', 'true'),
('f61ivy', 'sdsdubxi', 'parent', '$2b$10$3yWU9uMkPMFzWBVW4vfeiuupUq0fqRdBNMnt.CywfzKUlq27Dv6Hy', 'o6kfa', '0', 635, '2261', 'Wed, 20 Nov 2024 11:13:52 GMT', 'Greg Kay', 'true'),
('9lr6t5', 'ssssul4n', 'student', '$2b$10$99.TAMY3RdCfwZF4WqGbmuWgkNGMqHzZGFnH2p2RS5H34tUK5VkEq', 'oy9z1', '0', 636, '1776', 'Wed, 20 Nov 2024 11:13:52 GMT', 'Greg Kay', 'true'),
('ri9pje', 'bbbklou', 'parent', '$2b$10$Ze7bQMwcGwcxYWrT6DONJe2rlQQd6Yp097pXSxSeEgB7NWcw4XILW', 'z2sjo', '0', 637, '7064', 'Wed, 20 Nov 2024 11:13:52 GMT', 'Greg Kay', 'true'),
('erbfzm', 'bbb75gq', 'parent', '$2b$10$WHMoINnPEskOtLeSaFvfp.PXB.y.gYQJfbE5WrIA9vgDzLI5tDVwa', 'z2sjo', '0', 638, '7064', 'Wed, 20 Nov 2024 11:13:52 GMT', 'Greg Kay', 'true'),
('p53dke', 'bbbw2t4', 'student', '$2b$10$o.EY3wqn1T54hFHbGrVVwOK7lA3TEwbq50hEzUHX3ToWKiFBHed5u', 'fhjeq', '0', 639, '8213', 'Wed, 20 Nov 2024 11:13:52 GMT', 'Greg Kay', 'true'),
('ded8dv', 'eeee5bg0', 'parent', '$2b$10$NgTV.NXlv0.aUdfqJKs4q.L3k23drmCgS9trRr5raVrmhd4gatpxC', '8kh4c', '0', 640, '7723', 'Wed, 20 Nov 2024 11:26:57 GMT', 'Greg Kay', 'true'),
('d2gi8m', 'eeeeakib', 'parent', '$2b$10$lqWMWP7LBObp62u6CXeFweRnBx5qNA52fK4usPhT66kqFySa862cO', '8kh4c', '0', 641, '7723', 'Wed, 20 Nov 2024 11:26:57 GMT', 'Greg Kay', 'true'),
('cxa020', 'dffdfpm8w', 'student', '$2b$10$xs4Fq92pKWPvtGASMRX0meM10kRbYnCRLif5jwYVpF6duF5wMwyVa', '7l2px', '0', 642, '9646', 'Wed, 20 Nov 2024 11:26:57 GMT', 'Greg Kay', 'true'),
('xx1ua8', 'sd', 'parent', '$2b$10$ESmRVc/xtnL1xHjNx2sf/eqAi4EhFJEabRGhcfd.80ul64xb4DwBC', 'soteb', '0', 643, '8241', 'Wed, 20 Nov 2024 11:26:57 GMT', 'Greg Kay', 'true'),
('3oo68i', 'sd', 'parent', '$2b$10$wqx.S7myvr7dwF/T9vpR8.1zFB3VpZ4pL4WIO6AUgP3uVnsJi8H3O', 'soteb', '0', 644, '8241', 'Wed, 20 Nov 2024 11:26:57 GMT', 'Greg Kay', 'true'),
('234khz', 'mmmojb4', 'student', '$2b$10$ekuze25oByS2cI6IlpLpwuxgdNW7dqb5gti1B/yH4kyoF5/oOIMG6', 'f0i1s', '0', 645, '1059', 'Wed, 20 Nov 2024 11:26:57 GMT', 'Greg Kay', 'true'),
('3t2izj', 'Jeremyvzj', 'student', '$2b$10$iefBEMCDQjgihLuxPj4YDujCJuPJLtn7r0m3HaFnd65kcM/sb/z0q', NULL, '0', 646, '6003', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('ka8jf8', 'Benepd', 'parent', '$2b$10$9PoVcDJnkWPk.TP5bgO8ROlPs.9/.9k4Ww01DUo/HMbWgrR767YGO', NULL, '0', 647, '3211', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('55tmmv', 'Gracepyf', 'parent', '$2b$10$v66OJ9EuuQK.GwOL1zTPQuWhkSocXHM55uiY6tiGj.T5JPJFokCSK', NULL, '0', 648, '6097', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('l1an0j', 'Gregory7nw', 'student', '$2b$10$QtMI2imrZXtBxCY2ac2FEeUt13PhxVd2gNBoexFbBMo09T1P36NVe', NULL, '0', 649, '3723', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('l74k5b', 'Zulup2c', 'parent', '$2b$10$Fih/mmQgpUmVQ5zC6pmrvuOtdqizbUnyhTI4uk15x0g9uq.LEJ64y', NULL, '0', 650, '5643', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('zxhc6x', 'bbbbbbtil', 'student', '$2b$10$J1UbtvE20PV5YJKzMsb4vuoMMddSrXXaMSIC5FYaaWNWreXgKLGvq', NULL, '0', 651, '9421', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('7osq55', 'bbbzul', 'parent', '$2b$10$p1kysW2sWzKP80NTC1inOuqhfcw.yOmZyub76ZTSeFhKRHU/nBwOa', NULL, '0', 652, '2119', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('nfp71a', 'rrrru32', 'student', '$2b$10$wx0DjMcouAgCl7nNnTffU.sGQp.XD4k7XnE0iw5ej4fMHWRmYGkIm', NULL, '0', 653, '5107', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('t36tx7', 'rrrrrbon', 'student', '$2b$10$69ihuTj05BKHnmlYqTE3EuCVsf8wTAXJCb9CYjZOnvXssvw4ccp4.', NULL, '0', 654, '8638', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('279e4e', 'eeeeolv', 'student', '$2b$10$SuzTV3bhKpvU16GALkbLPeyQYVF2Z8k2C7aiWu53RbL4s044VEEgy', NULL, '0', 655, '3927', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('y257pk', 'rrrrrri5g', 'student', '$2b$10$zx7MmG3XA28PS3QclPuDwuaIB.Ly8JR.0Oz9jqFjhpmq.33GzgJPW', NULL, '0', 656, '7147', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('i8g969', 'eeeewoi', 'student', '$2b$10$Rekd/Aola09CEHWwZIC5E.ZP8EJP01niOY6kIdp0xdbDV4q71yI1a', NULL, '0', 657, '6027', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('t93i23', 'rrrrrmuj', 'student', '$2b$10$P/NUMQuqfTsiG3kjkW17.eA3CQWvj/Wy/MYJN/8FnvrOJNk0NMwIS', NULL, '0', 658, '6929', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('bpmhkn', 'eeeehlf', 'student', '$2b$10$/23CBvlVuCaRLf/2hpv4iOXySfVpcKbqtMQfq6gSBGaY0NgH2VNDW', NULL, '0', 659, '4462', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('64oc16', 'dewedve', 'student', '$2b$10$z.WS6dAciRBImZhFIeOMyeayLjR68G7h0yZCl9MnMG6GDRMgMBqHC', NULL, '0', 660, '8622', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('ck48fb', 'wedyhk', 'student', '$2b$10$DSxb8oNN7G.YrBUQYBWzyuHjbflb7m6eXYK8eVE4QZDNKgfn5qW82', NULL, '0', 661, '2249', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('221z1v', 'wedtwc', 'student', '$2b$10$l5nntJWfPeIRJ1W4zOfozuJmTmupNd5ZEAeaD0/S0IQQeWwnK7tEu', NULL, '0', 662, '9652', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('ihts36', 'wed51f', 'student', '$2b$10$nQvpNSAXc2Wb12Injwws5OfaZTPD/s7uMi824d11txtGmdd4jvEDW', NULL, '0', 663, '4587', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('38bjmb', 'wedasm', 'student', '$2b$10$7eWRXs.kXqKcAmqwvnieH.QRqI.NoIWo1gBMtv6WVG902DFQArndq', NULL, '0', 664, '8540', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('81qcgc', 'wedy4q', 'student', '$2b$10$AcDUr1RrrPt3OnqcZxPGG.1SbSJsh5s/Wx2WghojxiiLIx7bBkJeK', NULL, '0', 665, '2985', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('yi5aqo', 'ed6sx', 'student', '$2b$10$.Hsjzax72meEt9wv6hMP6Od7BY.B9Zv7TZ03xuSjaSL7sYXmZByMq', NULL, '0', 666, '5454', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('o7g77a', 'wedqpo', 'student', '$2b$10$qPinQBmfp54teoXw7QoxPOsVTWnk1dAusBSLno/6h09F9ZU8QXXNO', NULL, '0', 667, '8834', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('xv8et6', 'wmou', 'student', '$2b$10$CoGlnxxpH3MD0sXA0r/9Vuazm3p3AHLugHurlce/HXFN2mJjxJnX6', NULL, '0', 668, '5545', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('5kqov1', 'wdpgb', 'student', '$2b$10$LZulxQG2LFe/t9P.HwwN2ug01wTR6h1gz.j1w5XOWW9JTtvwFvf52', NULL, '0', 669, '2479', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('zlb4d7', 'wd5wi', 'student', '$2b$10$HlW15UGJ2DKKBVi9Rph.EOyLYL5D5yS0YOZSNObGQkswb5p3PgEEe', NULL, '0', 670, '8021', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('iqm0e2', 'wedry8', 'student', '$2b$10$BYAIud8qTciaE8xaEfrjFeYhA4fvpQycCzqlRKhrIj4ICzauSMrOK', NULL, '0', 671, '5378', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('se7p1q', 'wd8l3', 'student', '$2b$10$rn4Q/sO/j0ca2iXJShmGGOlBA0WnJ3utJUAHsiqFkomnOh.6zufEq', NULL, '0', 672, '9877', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('gdhshn', 'deweuno', 'student', '$2b$10$HfvCP09CkXmwb/Elr0QI0OcDY4sJEOcq0z7hP9dDBP5mI830oUcDC', NULL, '0', 673, '5358', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('e95pyq', 'dwedgxs', 'student', '$2b$10$8sFpGY.wtuxoYyxN1X1rGe7tnOVJqN1ly.WVo6cc.a4kuHvv/oPp2', NULL, '0', 674, '3790', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('l5xxwp', 'wd52s', 'student', '$2b$10$z84F6laa0tsC8LYHjeDES.zdHUPMo9SBbrjrM79kdA/9lXZX3329a', NULL, '0', 675, '8821', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('92ul0g', 'wdsws', 'student', '$2b$10$ofiWwA5GHfpkWUbMxR4j0.Es0A6AELKTxD.piADfP0LLjWgJvsED.', NULL, '0', 676, '6591', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('voba8x', 'wedrkp', 'student', '$2b$10$KPRLqhvcneEHHejR0sv3SuC7YT0FXjF9tOM5iBQq..jtxXm1p8pJq', NULL, '0', 677, '1138', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('bjgfhc', 'wdvzp', 'student', '$2b$10$TDIc.92EexsE1XdLXrTWU.itSGpoW6C3KgaDas6gYcXHai7WHK9nW', NULL, '0', 678, '7708', 'Wed, 20 Nov 2024 12:23:44 GMT', 'Greg Kay', 'true'),
('kb242p', 'hkvbjhk1sz', 'student', '$2b$10$TL6/tSk4NexB36b2Gq4nQOdB6BCeOU4khxIQ.GT9DfiQTDqSjz3i2', 'l1gfg', '0', 679, '8852', 'Thu, 21 Nov 2024 10:10:29 GMT', 'Greg Kay', 'true'),
('etjnzw', 'hbhkikba', 'student', '$2b$10$a2QvYdLKNi4A09JUWmaXeOnU0hVrHzKbX.TTKONKNC3Y9ytS6YHTa', '6j6r0', '0', 680, '4542', 'Thu, 21 Nov 2024 10:10:29 GMT', 'Greg Kay', 'true'),
('9oyzmr', 'hukh5s5l', 'parent', '$2b$10$gqf9hYsqgYFMIIhafyxUee4oscchIAjH/mVcWLSTnuCTs5NqHeES.', 'ts4sm', '0', 681, '1951', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('vgkdv9', 'gyjguovfq', 'student', '$2b$10$47ps/EhJ6yC2A1E5BO5PXuZKP6dGvB1lvILw0nQIArQ4mTyQu00/a', 'frht0', '0', 682, '6040', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('b4h3d4', 'gregory0275', 'student', '$2b$10$XPACK4BA322pOwW/o23S2O5BSpcx/jQ2wFdmcY.n/B5fFbkqjKbNC', '8moc9', '0', 683, '4387', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('4g4bup', 'gregr@gf.com', 'parent', '$2b$10$j034wqRVHywThYpzjOO9juf6JAP10n2MsTvCNb/XcVZU/ruuHTREm', 'xgumg', '0', 684, '5905', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('7zpmi5', 'kofi64m6', 'student', '$2b$10$Fn62KlAuwogR.EfpbmaDO.86llqJXrSnzylRB6FClSrIn9cs.BSCi', '2pk5c', '0', 685, '6283', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('8cmatt', 'Jeremy7om', 'student', '$2b$10$DJ3mFx54mMpu9CKHYKwaiuK2jEc5WHQGGYXvg7a7Dnp0TJhkvScyG', NULL, '0', 686, '5181', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('h9v9gx', 'Benpba', 'parent', '$2b$10$9BUQbhxv1i.V8.0m296Vw.WbzYB3YqmEqrfoo0RIFvPEXReihw7U2', NULL, '0', 687, '8654', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('ykrt2r', 'Gracemte', 'parent', '$2b$10$xQY9SDAbuP.YxoHuai8v4.CFVhV5a68.1g9DsYPK4gCGi33LNvqyO', NULL, '0', 688, '7966', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('jyuyml', 'Gregory2iy', 'student', '$2b$10$r5MNR9QDozgC1PjoHg7r1um4Cup0/H/6NMCF5VdnFRMV326cKCCRm', NULL, '0', 689, '1702', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('ai9jvx', 'Zuluzut', 'parent', '$2b$10$ICbBzaaLQtry/DibgG.EUe4bJsZMqx/BMhnVs0sqP9gbjfEsWfXwy', NULL, '0', 690, '2591', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('aswhbx', 'bbbbbbdkk', 'student', '$2b$10$RJueiOVHz72dGCzkJ7GLT.MRG9t91/UcawTIp9k302meuc5iqf446', NULL, '0', 691, '8457', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('pcxh42', 'bbbtol', 'parent', '$2b$10$DG21UD.pQxaGqS/hTl3/VO.QQ3wURzmaTnwa4m3QC3eMb7UMc02ze', NULL, '0', 692, '2914', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('n6yahb', 'rrrrdsb', 'student', '$2b$10$mBx3QyLJDc.8hdBo3voL8evGogPDzn19.NSvZoV/.tgeLPMmk5TGK', NULL, '0', 693, '1925', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('hkd05x', 'rrrrrpxf', 'student', '$2b$10$GETHhnjgVjhmrXuwcuD5oe2pvAhCsr1mOdnaxxSYq9OvsvDGHrHHa', NULL, '0', 694, '4164', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('d2ea4y', 'eeeekot', 'student', '$2b$10$wYtZu2cNt9eMPsuMjnnYHOwKBY/hQB4diro9LBledb0mrabAFUE1y', NULL, '0', 695, '9301', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('lql2fz', 'rrrrrrgxb', 'student', '$2b$10$7UMm11uQAPB5f4ZsfHBtq.qEinBvqsJMDAAloqlgoo5x9ViGR..Ai', NULL, '0', 696, '6509', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('ua5z9r', 'eeeevzf', 'student', '$2b$10$9/6Sjwue8z4K5Yw23shuaO3SLsZKb.cKgMI/6I3kzSKp7h8oZ/vyi', NULL, '0', 697, '8958', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('hj069o', 'rrrrr6fy', 'student', '$2b$10$MNj4oIuquCs/XWyCal1EOuUj38EiDMpJ.rc8/b.jo4nqMIhAaZ.ui', NULL, '0', 698, '6574', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('90ebjb', 'eeeebw9', 'student', '$2b$10$SoHxey5E8OtBOFl4MjHZ9eGvKToW6gWlYHjn17L6bzhzGwbzHQe4.', NULL, '0', 699, '7405', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('23u8vm', 'dewerqa', 'student', '$2b$10$vwbizI6oML.h/9iFctyz0u12P6AgPQPzGLlEIsq6TroVe1J24YFPW', NULL, '0', 700, '2761', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('amuas8', 'wedtw1', 'student', '$2b$10$YdNfK1ST0Z9bkxKu/mVDEOxHjQZxrr1MLq0GnndTXxoY3au9.DWt.', NULL, '0', 701, '7568', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('8wt8rx', 'wedqvv', 'student', '$2b$10$e/8.cwj3ZbfmCzjwdiNjj.tTGhghL.726.8LILmYLPIV1iSeOkZFC', NULL, '0', 702, '5652', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('d4qh36', 'weddsk', 'student', '$2b$10$QgJZq6p4WwHbg.oc4SVZuuk354YZV1EPnBQMOZsY9PejrKlXZYkBa', NULL, '0', 703, '9974', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('c6un5p', 'wedmav', 'student', '$2b$10$NBwxcUISDSss7mYAICshqu3DaMB2PvL2alO3GyJTns/J0ZlS5T2vW', NULL, '0', 704, '5405', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('v2lim1', 'wedw34', 'student', '$2b$10$gnkQhSo6HvKX/qj.4K4Yo.SbkYtUXiDgt5JTWmWje4rggMd93uokq', NULL, '0', 705, '3535', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('24wy0y', 'edynr', 'student', '$2b$10$f.o.HxwVm3EaOfc.Vwa/NuMc2MnTQEyYINx2wHQ4n53nwnSJwOcOy', NULL, '0', 706, '9882', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('85971f', 'wedeng', 'student', '$2b$10$BcaBoAKNaywml/.K65N6AeuByae/tMcHb3MO9JcZTwa4KoGM/ejey', NULL, '0', 707, '8327', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('yyxyc7', 'wwrg', 'student', '$2b$10$PB7.ZU2gqsjYGPxo7UelEuX3Ye4XIe4B1t8g.1w12GF2HdTflUArC', NULL, '0', 708, '1950', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('yf96z9', 'wdfbz', 'student', '$2b$10$GbnkHi2ru7fnkJTQrzLLVuCa6I2sTWLImt9jZaGkOWTA6QJL.3uQW', NULL, '0', 709, '9343', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('c82j8v', 'wdz9l', 'student', '$2b$10$l2AOqY8YEyKodxijwwz.ve8Ds6LjOmvsaboxzh9PU5zNgJa0LWR2i', NULL, '0', 710, '9004', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('i6sm6s', 'weduyl', 'student', '$2b$10$SvtnSQ423HsZGU7R57oZLu4SwUGz/CY3A.MW000a/pU3Zq5IuMppq', NULL, '0', 711, '1416', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('f5j7og', 'wdlji', 'student', '$2b$10$3ymJNcLFfxlJ.DPNITKWpOioP6IsykljLZBg1jcfJuZ1bMLlzFDea', NULL, '0', 712, '7188', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('b8erdh', 'deweil5', 'student', '$2b$10$/NGvq4uu1k8NPfkDSIV/5u2B7jde.0mzH4GMLeoZxlACputnN3mrO', NULL, '0', 713, '1891', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('ivdl8c', 'dwedenz', 'student', '$2b$10$dFUS/NuNZQKmYujHE5CJ6.5/utKaOTMmXC70zGT2Hs7tMkD6aiBkC', NULL, '0', 714, '3903', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('kvva62', 'wdgjo', 'student', '$2b$10$YxyRq/wUfrARe0eaI6arOe77/scimeXfctoRmsH4alF.v2toiDCsG', NULL, '0', 715, '9405', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('tekr2t', 'wduek', 'student', '$2b$10$dF2vEVp849JXH1XG5R4ox.vwawZWgm8qkA0A.FiKQkH/HZh1fKtMW', NULL, '0', 716, '7692', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('0xi995', 'wedmlz', 'student', '$2b$10$dVBElIQCRs3u7qp4p3fWGuH/t1oR4LYBqOnGYfB1.FPXbDuL6MJzC', NULL, '0', 717, '7254', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('9sjept', 'wd39i', 'student', '$2b$10$4XezkrXEdEs3sPJcqtC16O/kTCeT097NBIH83yIq1U15upEnvCG/S', NULL, '0', 718, '7121', 'Mon, 25 Nov 2024 16:18:23 GMT', 'Greg Kay', 'true'),
('g8eih2', 'hjk', 'parent', '$2b$10$Nmv6F/CwvvD5tfR5JE3RnuU2Y9Z3hErzUq6ZA77L2hRo5IZaouezG', '8fugd', '0', 719, '1941', 'Tue, 03 Dec 2024 09:47:32 GMT', 'Greg Kay', 'true'),
('m3typx', 'hjk', 'parent', '$2b$10$LMsiS46tDwikjdsplSFPzOH3zxnbPtqpEhyAppF5f/vW0c3hfR9di', '8fugd', '0', 720, '1941', 'Tue, 03 Dec 2024 09:47:32 GMT', 'Greg Kay', 'true'),
('16s71n', 'hgjkdxwr', 'student', '$2b$10$nKRzjDjTEoexM/2jhg7jtOESV4qnVjTR.F/on7DUeHxlf49s9xahy', 'wkqcr', '0', 721, '6955', 'Tue, 03 Dec 2024 09:47:32 GMT', 'Greg Kay', 'true'),
('2aut5h', 'fgh21q1', 'parent', '$2b$10$yGbsQ/j1RTEUzuzQ/hJ8SOuZjr4I/ZvX.rha6KfWf9G0PZ2S8GY/6', 'l5upm', '0', 722, '1863', 'Tue, 03 Dec 2024 09:47:32 GMT', 'Greg Kay', 'true'),
('pm5cvz', 'fgh', 'parent', '$2b$10$EjgZqPQf.VRps907nke/QenpSuibOS/9.1aE6h8qRB9uZldFEmg4a', 'l5upm', '0', 723, '1863', 'Tue, 03 Dec 2024 09:47:32 GMT', 'Greg Kay', 'true'),
('60g5pv', 'hfghxosd', 'student', '$2b$10$kN1CHjyxPpKWj4.hQ40Yw.ifuRcsOg.mIMGRGuj3B/L69qPRGVGMu', 'qfsmh', '0', 724, '7721', 'Tue, 03 Dec 2024 09:47:32 GMT', 'Greg Kay', 'true'),
('r9xmye', 'gfh', 'parent', '$2b$10$oaZFlXuZuFiMsD/Ou9G.e.XVT0Vhmaz4.A5XFHQaAdWb2dbrKrogu', 'z9cgb', '0', 725, '8593', 'Tue, 03 Dec 2024 10:37:23 GMT', 'Greg Kay', 'true'),
('a84hyg', 'fghoas5', 'parent', '$2b$10$kwMrNtSbKm/Z6tGgy9h8eeSMkh0qTCJm9inuctOKPMCpoB82eqvee', 'z9cgb', '0', 726, '8593', 'Tue, 03 Dec 2024 10:37:23 GMT', 'Greg Kay', 'true'),
('msk5mm', 'fdghghki0m', 'student', '$2b$10$CGKCI/682kHEc4XM2VCd.OgkMIa2bjCLsQJTVjbY6OJH.YPiK.Te2', '1e947', '0', 727, '4861', 'Tue, 03 Dec 2024 10:37:23 GMT', 'Greg Kay', 'true'),
('rr5d3t', 'gregi0py', 'student', '$2b$10$f.81v.oPyyBwJ9grxDEkvuC.l1I6DQBkJqsTNfNnBHjb.84IEbTRS', '6ct12', '0', 728, '6181', 'Tue, 03 Dec 2024 20:46:58 GMT', 'Greg Kay', 'true'),
('vphqxj', 'dfgw347', 'parent', '$2b$10$bNSFFDbeeKXAKVz7n4LiFufW4lrsmwLCrroHbgpam8Hl9W8QlsNjC', 'rgouq', '0', 729, '4247', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('zb2qk8', 'dfgdxf9i', 'student', '$2b$10$31fZa4Y5OEWpPvocAjZf2.lZs3qMN.VcI2K.3F/A3jrmmh/XeA6.y', '7sive', '0', 730, '5774', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('ds0s7f', 'dfgvk2z', 'parent', '$2b$10$BDu/bQDMH7nXtVV9Xkd20ebVEXlOfczxqfoN/eYN7M2yeJZbGv9IO', 'rgouq', '0', 731, '4247', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('nfurzf', 'fgdgn1jr', 'student', '$2b$10$hgHXyAHu3g9rWVTqJyVyzuKybW7YEVEH0x2suaABed2CgF9ixRd3a', 'b1eqb', '0', 732, '5151', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('f9hwkm', 'dfgico4', 'student', '$2b$10$c1IewmvoGsB9JvznwEV3nOcBNIgAOHjNJhEoNTiLj2U.qHeEhNxiy', 'ldfmv', '0', 733, '2254', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('g1vrgc', 'genysave', 'student', '$2b$10$RW0nkiX6Ng14XDM92CUck.PBYDC7.tr8cRpL7usXWYUJHgJJleuNa', '302lh', '0', 734, '9465', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('zwmvct', 'xerxeskxm', 'student', '$2b$10$lvXVrCeWAYv4BA9/gqUCeO9i7.civ4RpzgpU4Ejc7sEI9vqGtZN9m', 'vb5of', '0', 735, '4727', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('g7t9oy', 'franceisqa9k', 'student', '$2b$10$dRVArPxRC/loL.BjcVT84eM9lJHujg.fGdyxLUuw0PtYthj.u38Oa', 'ah10p', '0', 736, '1750', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('5uot3q', 'gregor668h', 'student', '$2b$10$Dwl1VZuNnZB7HIZg.22NNeqmuOrnWUKks9eslLlSmdyg5kQH4yuf2', '3rj2f', '0', 737, '8994', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('7hv10h', 'vivianzjor', 'student', '$2b$10$6JmE9Ba2BGqJ4ldkMG66j.zjpT4XgLN5UxcdDQ57rEDJdwhPs97yG', 'im53p', '0', 738, '1509', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('0utqwl', 'banfou5j7', 'student', '$2b$10$BQBD1VaP6DuoZhR6Koydx.K4vPPuTeMdjq3otmwh4AIQKdWEGO9ge', '1wyi2', '0', 739, '1838', 'Tue, 03 Dec 2024 20:57:42 GMT', 'Greg Kay', 'true'),
('1w4h5z', 'Jeremyqul', 'student', '$2b$10$thwhsGlAWJVGl/CCgg.4me2ldX9qUqI317jR5.QJU.PJn2Wfsm41m', NULL, '0', 740, '8902', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('tmloxz', 'Benrfx', 'parent', '$2b$10$LLtm2wM3gC.b3W2fUHKtUOb67HPTWvbHmGLKivIO3cQ9fzBjBLgnq', NULL, '0', 741, '3099', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('pvgcum', 'Gracewcd', 'parent', '$2b$10$VbRpR6RubNrRs1Yy477/wumEUQv3OfEzvg8Wy3639w5NEgBLbfW8.', NULL, '0', 742, '6534', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('9v0a3s', 'Gregoryszi', 'student', '$2b$10$jwu1qXKLhTK7bGPyGnDDGum6hkwyXyeghpuDQbB/zQ8rFkrt.d8jy', NULL, '0', 743, '6643', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('ey43in', 'Zulujkc', 'parent', '$2b$10$ya7kq4BvYq1lTflIrMrVhu6YWVHiI0HWbj0zSjFT/keqM/ATvvh5u', NULL, '0', 744, '2804', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('xweokk', 'bbbbbbgnt', 'student', '$2b$10$9.CZbaMQ.382ekNDgAF27uQKTk/d7qOph/HdB9GNup2cvjZ94htZq', NULL, '0', 745, '1477', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('ugfhyd', 'bbb9wy', 'parent', '$2b$10$VaaCtDiRxik9DE1LQxxgqOIjeZnRQXp2xJUMYSvgWTccQju27VYem', NULL, '0', 746, '6142', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('3loed7', 'rrrrvpq', 'student', '$2b$10$odXH8vWhi/4KEMxEqT4nkerYObwpL49tjTuFWuAFMd22Wh12oEnl.', NULL, '0', 747, '7133', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('5fsi06', 'rrrrrwfn', 'student', '$2b$10$rfVM2wz71mWMwnKZ1zxP6.7dcT9Sc2wx78rO3tm4lkok7mmZqgLOi', NULL, '0', 748, '1215', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('9qilx8', 'eeeenjc', 'student', '$2b$10$maoySe8Fs11lUQgoXJy4v.vH/CosrHh5mavWHDIXK7h43kCDDU1Oy', NULL, '0', 749, '8454', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('h8p3ky', 'rrrrrrx7a', 'student', '$2b$10$tc3H2esCD0qoCSm8c.jReuACbMfnMjZh2h5BDPZoL9oUHlcf9jHXi', NULL, '0', 750, '8654', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('r7gx4b', 'eeeeyon', 'student', '$2b$10$cWYOV4Knk0fz3GGkCpoxDe5ZphB4StB.Az6N1fnngAeUUBfdxzSbq', NULL, '0', 751, '8743', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('3ae1u5', 'rrrrrddp', 'student', '$2b$10$nZtD5iGRgeeH2WXD21CNxuhUSHiTdKGbffHJE3APo5X9SRw8.j3fW', NULL, '0', 752, '4365', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('moonm9', 'eeee5ct', 'student', '$2b$10$bsy0P69gI8SO2HWDMBvz9uUgNAKlmHBwiQCPS4ndyOQctLMYeOlUy', NULL, '0', 753, '5838', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('00kgs4', 'dewehfv', 'student', '$2b$10$aenDPuwwu3piKzGy/XHG6uJWTRdVpub4QgZuskm8mWyrp4nPf7LsO', NULL, '0', 754, '9645', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('p612re', 'wedcrz', 'student', '$2b$10$deXFyhaTvENp9agv3MsezuFtrzC1BrKTLMDA7nJ.pVy0wiUPSGgJm', NULL, '0', 755, '9804', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('o3mb88', 'wedth3', 'student', '$2b$10$zQregbeh3YbFCvhlrVUsd.EOor796vLq1eCxJPJ1SdvMJQyROzsJm', NULL, '0', 756, '1500', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('g26bv3', 'wedor5', 'student', '$2b$10$DFzOmoo8WI/mnZkQDJ9YauJtvA4fhHdCGWYJhtBzt24Y5Y1liQJZe', NULL, '0', 757, '7262', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('u8kh72', 'wedmul', 'student', '$2b$10$beO6n.Eud6UBs6wvHSLeB.t3eQK/nq3n9bGR5jwhXmBh3Qq0HK2ry', NULL, '0', 758, '1435', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('cih7zx', 'wed4au', 'student', '$2b$10$Pbg3CAhnIblAbqrO1mgtJeR2.p1GklWoiE1tPc.zU3x2BHzmsYKRW', NULL, '0', 759, '2527', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('k2wk48', 'edxi7', 'student', '$2b$10$HjKCmbCg5I5wCIgiRBwYHurnKfq5vuJpdug0oc7vJK04VXIK.eszi', NULL, '0', 760, '4453', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('znsuh9', 'wedx4d', 'student', '$2b$10$10sVgSupqJksOAZIZ7lxVefrFIf.g8R.O6OWyvSmCRcmLj0HQ6yci', NULL, '0', 761, '4740', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('1e4p2k', 'w2rj', 'student', '$2b$10$fEpdUMcKzTf63oSO1Qy81.HbvMfQQlsF0iEujwhV1Wc6G7SHiE5BS', NULL, '0', 762, '8529', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('fktal6', 'wdbyt', 'student', '$2b$10$u5LyM2l1TvpHv56nY1cWUetdjKXzGUtxnmauc2P7DH9/vhDH9ptNq', NULL, '0', 763, '2263', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('jyw7q1', 'wdosk', 'student', '$2b$10$bqILYxgE8HF5B4v87u4fqe2IO.xvajlwE43JSzSbJO6uwLpEUuCiq', NULL, '0', 764, '4395', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('bjblbc', 'wed97t', 'student', '$2b$10$JJZ4Mi2j.2YeJ70Pw1k9XOZ1doCLl233weL1PcUK53b5n1A7dnKkO', NULL, '0', 765, '4721', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('g65mgh', 'wdasz', 'student', '$2b$10$.2EOyO9sTNWOzWR4L1cRuOFf.Pn7fB71g/K/7gl9egJmRzWWHwMCu', NULL, '0', 766, '2652', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('jft5qv', 'deweytl', 'student', '$2b$10$/VIYfWN80WZV3cRHJjHOceSTElTfILNJmLKbwdAT9WVj0unyKBEoW', NULL, '0', 767, '5041', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('symv8y', 'dwedyn8', 'student', '$2b$10$8/jCkdEynwybLtaSLwBxdu8XNAopDqtJrlgGHQKYkZkmuApgYcfZ6', NULL, '0', 768, '8805', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('opt5se', 'wdrgo', 'student', '$2b$10$MuokdRaa/DdxZBkdnLTBW./yYkZg0CS5kcJ6457WPFzmBcJd/mHD6', NULL, '0', 769, '4891', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('ys184e', 'wdajq', 'student', '$2b$10$ZuSoApr1rFaCN0vaXG0ihuTO69xyuL4tlwHYprPYCKNgfWp5KPatC', NULL, '0', 770, '4233', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('dqylog', 'wedxr8', 'student', '$2b$10$aKAmGQU.gcfpzCZ9gxa9bekVLwm1Q5.PtX8BGLSCInGux70oGcfOu', NULL, '0', 771, '9576', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('lib2eu', 'wdoi8', 'student', '$2b$10$afvFZe2Rf2XLQDgMpAAplesl/HU9eY7KBubXrdtXwsj.LqMnMwcj6', NULL, '0', 772, '4131', 'Wed, 04 Dec 2024 09:18:34 GMT', 'Greg Kay', 'true'),
('jt980v', 'freda8m1', 'student', '$2b$10$SIVwTCNba8784uzH67s1EeARqH/Qlg2v2EDzuFdZyADETFNtDfcme', 'j81jg', '0', 773, '6530', 'Wed, 15 Jan 2025 09:38:47 GMT', 'Greg Kay', 'true'),
('yklfeb', 'georgepuai', 'student', '$2b$10$Ct5VJWODaG8spxuRhhglJu/LnFqEZa2OW9lsKS.eOxavdFQjnRrdG', 'rl665', '0', 774, '9024', 'Wed, 15 Jan 2025 09:45:23 GMT', 'Greg Kay', 'true'),
('sad4cd', 'fredsuyt', 'student', '$2b$10$cGWPYdXLSwrI0PqwDjDvyOwePSJH3IBwFQmwi/MJzjtCray6lF42.', 'adj98', '0', 775, '6042', 'Wed, 15 Jan 2025 09:45:23 GMT', 'Greg Kay', 'true'),
('e4e3ul', 'juliene9rd', 'student', '$2b$10$RsBdyKaxzwBXtBQJgzXjA.n5I6aZoL8aekwVmUICftLhf74YVL/VG', 'vhwlg', '0', 776, '5779', 'Wed, 15 Jan 2025 09:45:23 GMT', 'Greg Kay', 'true'),
('nb6kl3', 'amoscmlk', 'student', '$2b$10$SX7zWZQgQ2qIrMBQxH0Hge5pjVzDv1hsK68ljaoA/YfVdeHTZSaBa', '3pkfh', '0', 777, '2530', 'Wed, 15 Jan 2025 09:45:23 GMT', 'Greg Kay', 'true'),
('zuigmb', 'stella3smu', 'student', '$2b$10$hIIyBxBz00hfAOIZ41Z3I.mtbAJ3wNNrcpgGisjUw8edVXg6H9l6m', 'lwv34', '0', 778, '6470', 'Wed, 15 Jan 2025 09:45:23 GMT', 'Greg Kay', 'true'),
('kzr9t4', 'manfredgycf', 'student', '$2b$10$pnlUthPAwG/rme.UTnqfjesAxfTydaAyv8ZPfj9m1JESpGlHZWXGS', 'v8e00', '0', 779, '3060', 'Wed, 15 Jan 2025 09:45:23 GMT', 'Greg Kay', 'true'),
('h84ug0', 'nunoo8pg0', 'student', '$2b$10$xbco1QgrhOHEoAKISm.8buad5Qhah4SsxeMaKY4mj9XlAO/c4WoCS', 'k2jnj', '0', 780, '9134', 'Thu, 16 Jan 2025 09:36:01 GMT', 'Greg Kay', 'true'),
('j7240z', 'carenk8pq', 'student', '$2b$10$So.hyZ2TkB4l1nPayCiYZOiXSKamf0jiaO79MOkFsgMOUODRng1lK', 'yue8c', '0', 781, '8878', 'Thu, 16 Jan 2025 09:36:01 GMT', 'Greg Kay', 'true'),
('8avolq', 'ruthk2zm', 'student', '$2b$10$cp6g3V/82PemXJYqPuQSS.wexltlpOyZFQiSDeqJeEcevKlQxvXem', 'wmzne', '0', 782, '2274', 'Thu, 16 Jan 2025 09:36:01 GMT', 'Greg Kay', 'true'),
('uw82li', 'vivian6lgk', 'student', '$2b$10$7I4vcWksnmoyKZjEYCto4.hI29T/hYlA88YippP9QkswpvISjsJ0G', 'kv8vl', '0', 783, '8544', 'Thu, 16 Jan 2025 09:36:01 GMT', 'Greg Kay', 'true'),
('fwtigq', 'Jeremyctj', 'student', '$2b$10$iP3KkZPheiPSckukDqRMv.uKJkuqcO8K26jPubZvz6WphoBUKyJ82', NULL, '0', 784, '4154', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('7kyrsz', 'Ben4xm', 'parent', '$2b$10$fHybAkD.ECtlsuVSRy3RPuSmfShBKh8qv0h.iu.0vzLUe/BRiAKQu', NULL, '0', 785, '5387', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5w82to', 'Grace2lw', 'parent', '$2b$10$tTw/XUay43W8rKDR2ECf0.VRcqxs8bcWY3wnJv75dGYgDUiZc7kqa', NULL, '0', 786, '1121', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('xrtdp4', 'Gregoryb5w', 'student', '$2b$10$n9i96KhCK6oTFdTRlxbAte0jwyG.xz.nRLh2mX4zGlZ6h9Pw0fT/.', NULL, '0', 787, '1618', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('xyg4m6', 'Zuluoxy', 'parent', '$2b$10$mgpcX6PDOeq8keCTCG8PZ.SZUbLQ5K93sKtSLOcHvzjuz0L8wgrNq', NULL, '0', 788, '1164', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('je6yzw', 'bbbbbbg6b', 'student', '$2b$10$CqnY7XqCi2KZkq3SNQWWbeB.xyECWVdBd8gPTRiBNYMmnxrLai35O', NULL, '0', 789, '1185', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('179h4i', 'bbbhwz', 'parent', '$2b$10$dbzDAAmGnGgH.R9lIHe6fOdwUDE3wrCFy8nza8htueE26Av2lve26', NULL, '0', 790, '9553', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('dn74xg', 'rrrr2zk', 'student', '$2b$10$taJ8j79Q99atRmZsXQqum.WPkx1rDkvBx6smsxkpnssgfkFvNEsCa', NULL, '0', 791, '6555', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('3bq2tw', 'rrrrrjmw', 'student', '$2b$10$lSDkr.1riXULK/d0Kay4VOzxzD6ozOf7lRUS1UXo/GEs2LYScL79q', NULL, '0', 792, '8982', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('bosw6b', 'eeee9rp', 'student', '$2b$10$RvFtYqzye69SibNaIhO9bOqvOLW3Hb1WwgdYnccKWHT6vcvWQdBjy', NULL, '0', 793, '6264', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('yrjl70', 'rrrrrrer1', 'student', '$2b$10$FOzYQ2rmDT4wxTxnOMxf5eWBey8ybJO6O4T3aPbFh3tNMxru.DpPK', NULL, '0', 794, '8226', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('x4c60i', 'eeeeyhx', 'student', '$2b$10$3u54G7tg4ylGLTti6Y/8gOD6hUvLAwtxyqj5f3lp/6hOGt614eLQK', NULL, '0', 795, '2590', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ronvf5', 'rrrrrrnd', 'student', '$2b$10$v5.a2Sol8tpFvvAUNkvyF.gvHyDaQinRYsPIlCzdjUxu19tO2yMZC', NULL, '0', 796, '7764', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('4xv4ht', 'eeeeoep', 'student', '$2b$10$pDvfE.OQc9EbN4Zs305z4eP0f74Gpq2zcCvA4I4BSLCSIDcs8Hms.', NULL, '0', 797, '5805', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('s0v3lx', 'dewewg4', 'student', '$2b$10$GRrDB3dzh7x7f/yY..44Je8mjQMeaKLqh9ClVjcE0qdHIFJ9cQi86', NULL, '0', 798, '1177', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('6zhsq1', 'wed3r5', 'student', '$2b$10$uZc9ZmBHL5oPwJlY7/3R4e0YdFAJUdJ.1PvlQb3fYslC.yNzcvnFy', NULL, '0', 799, '4340', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('rudlwo', 'wedqyk', 'student', '$2b$10$N9lnS5zej.gzgyW2Dlw1E.8sf9Jnbove3z2ifIpvhm2iwBS5/I8bW', NULL, '0', 800, '2119', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1al0n8', 'wed7ex', 'student', '$2b$10$6964IRs1bN4zLZro7iNPyuYzzDi6EaengYg4CVdBWO7i1NJuQYn8C', NULL, '0', 801, '2912', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('v5nhtl', 'wedsez', 'student', '$2b$10$0aJwZaMz53/clqcykJqZt.msX205J2JhNiwqnYmaWRHj4NkDogFxi', NULL, '0', 802, '7124', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('bkpnga', 'wedxzg', 'student', '$2b$10$ehtruP2WvzaUR.H5crYS5uRgS0PYaBtcfW/gXXubLL/lcQYaL.E3G', NULL, '0', 803, '7939', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('w732c1', 'edakm', 'student', '$2b$10$DtRcthZ/Zd94vs7KNyTtQOfcAl/S7WZOipDurODv8Q9gYc0FGd5hq', NULL, '0', 804, '4592', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('pio3kv', 'wedqhg', 'student', '$2b$10$0b8jTeqSvTCW884SdOqkFOroE9N26uVq8WTh9zL3WQwCAgCPaoouC', NULL, '0', 805, '8770', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hl7ex7', 'wdzq', 'student', '$2b$10$ZQUeS1Av1lxUZaD3TS0lfO30ktIBcOdlRdEJPgprqKzBAyCL/lsH6', NULL, '0', 806, '7130', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('fblwav', 'wdrhf', 'student', '$2b$10$fbxRf85jGI4lwxUIXiParOMK2MWCyQ4OEHGemC1gQbuZWeZcSVCoq', NULL, '0', 807, '5773', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('bj0ipt', 'wd6as', 'student', '$2b$10$ctI3OyVazYBy3G1v/oT73.T5S.9e//Y.vkNV6vYnsEWA9XiReCQlO', NULL, '0', 808, '4733', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('pszmxq', 'wedp74', 'student', '$2b$10$epbJELa..5P89QhUx9r/YOm5IJkGWXvMCh2tntSxm6CfTfHhj9AA6', NULL, '0', 809, '8175', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('t94evl', 'wdlr6', 'student', '$2b$10$1isFAfrfh/nWzLr..NOrCu0PeR6d.XYfeA6EYtst3ZOVYVQ599hTq', NULL, '0', 810, '6560', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5wocap', 'dewekmi', 'student', '$2b$10$UEQi3Pw1jdoiqdeWZ0.xp.onG2NNieGS5D6dVjazMINQGErydZ9Xu', NULL, '0', 811, '2546', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('fgqme6', 'dwed9nl', 'student', '$2b$10$Xipq2j01G.ouu/acAp8kEOEHf7ZLzsqmHGaYNyWgB3bu3XWC1i2Zi', NULL, '0', 812, '5996', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('zcbaia', 'wdsir', 'student', '$2b$10$2Q5hIPuvHyfahkSNkfDMT.8jAdT4SyLwYNQnOkJszM7T1RbQo02Mq', NULL, '0', 813, '1528', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('w74e0l', 'wduad', 'student', '$2b$10$ZKKPjRA6Zwm0dfOnn6J07eldk45f0SuYL5cIKF8pmMYR39YamPFxC', NULL, '0', 814, '2203', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('dd2p4k', 'wedxxx', 'student', '$2b$10$Jb79o40LqK1REEuBWGmYHeZI.LD7gR56JTL5R9q4ASMRxhM1.OP12', NULL, '0', 815, '3970', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('eyb4yi', 'wdhs5', 'student', '$2b$10$N0dPPfL9LWive6fYLQVMi.QAxvP2IJBDTnLrSq7HjYsLKO4Uk5ddq', NULL, '0', 816, '6657', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('nv5vpa', 'wdsew', 'student', '$2b$10$J9xdAv31oQu3JnWeHecQTOJZoAhuj7WclO4P960UWD9UbPDP2Reta', NULL, '0', 817, '1835', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('645qdx', 'wd9ml', 'student', '$2b$10$SJgm9FHdB6R6NEN/h7E6Y.SZ0IuoJa1a.vPoQU9TzPIlA7Sb04cPC', NULL, '0', 818, '1155', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('sazoki', 'wdup8', 'student', '$2b$10$xF4ei88uzxDjH0iIEci4BOfDBdynvFmYjLeD2X16PqwazVnl1mQjW', NULL, '0', 819, '2981', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('na63d9', 'wdo4m', 'student', '$2b$10$OKFDR4jOrN//ptH/WEZaXevcsxE2axNLZ6tKce913863hHg2nT1Ra', NULL, '0', 820, '5462', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('7wk1l7', 'wdqdf', 'student', '$2b$10$TefCyG8lgJ7moBP4xaWLse4Lm58YZY9Rokt5RSEM6xcWMg70jtOFC', NULL, '0', 821, '9214', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('2auwbz', 'wd9ww', 'student', '$2b$10$A25MMQv4.wTWANYH.VX2T.9Wu9MAkgcXUZvA6aJrMm/qbtVdgnWL2', NULL, '0', 822, '5322', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('g6xwcf', 'wdkdr', 'student', '$2b$10$wGThwwTs90HFEv0P0j/5OOy2CJ8quS4BvAVNZN0/Q.14pBVACjoAW', NULL, '0', 823, '8708', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('okxqja', 'wduvs', 'student', '$2b$10$ifu10O/3wjKR8vXg18LzDelj1NFequpcYi0RhHpENFPBVTQpd1MxS', NULL, '0', 824, '3771', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('sqed0v', 'wdr96', 'student', '$2b$10$cdjCp3k2YmmcH5kPfxhq6esf8BimirtbAGoTW2joZur2svotTgN.y', NULL, '0', 825, '7330', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('psju2u', 'wd27o', 'student', '$2b$10$23qHlJX/3BiLGAMXQF4OGOoVWCdmRtET6DTaxLUfHRB1NP.VBrn32', NULL, '0', 826, '5318', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('f2kayv', 'wd3ud', 'student', '$2b$10$9PhKMEkLfdzYcpaTP5C.iO4GW85ZzKu39huK9V3ICRcFnKOOsy1x6', NULL, '0', 827, '8015', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('8yvw9w', 'wdc9o', 'student', '$2b$10$AeEvnZZyVzre4yNsr7DNDuVzdXAzX8aolML0/SpJCSEBbazo5q.Jm', NULL, '0', 828, '7593', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ce0vbg', 'wd93h', 'student', '$2b$10$WD8zVWCHs.Wp7P/JKUibTe87tj57hH3/XNtY9DtBVFScGhRHgIZ9S', NULL, '0', 829, '1022', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('xbigvd', 'wdntz', 'student', '$2b$10$GpvRQ8h8RmiVLxqPoO.n0OJpfFJkHD75C2iGWXTBHUcr1kTHSIyNO', NULL, '0', 830, '3653', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('to8ps6', 'wdnu2', 'student', '$2b$10$btb5ZHl12C9.pDVlFFYQ1ulvGUCAM9bC383E/Ek/Hvt7lZ.NSHkpO', NULL, '0', 831, '1712', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('zvqvx7', 'wdbfk', 'student', '$2b$10$vtDnjLD92zVq5pdwZEK5EurG4930aFSY.wsNZIvPzAyikXyt3Qz3q', NULL, '0', 832, '8809', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('jhj8dl', 'wdx5u', 'student', '$2b$10$StuzFXNSnd8JNU0.naNtD.rbhmJ0R2BGMHr67Kgjnc/LI8KKZxuYG', NULL, '0', 833, '4094', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('u58um1', 'wd29o', 'student', '$2b$10$13WH7vHRfJyvzesQKOkfkePF9Zu6NUxsZccX2AC/WOFuyLttYm7nO', NULL, '0', 834, '3077', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5nzr5s', 'wdi8m', 'student', '$2b$10$KKbo4McbS4c/gf5lsBllhePU5nbiYXCqJxx4bjwbbmH04NcSGm.hS', NULL, '0', 835, '4075', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9rertv', 'wdljm', 'student', '$2b$10$M0iQUu1hj3aV4smfgMmZvePgXsJswI8lkVK0smi2CJJePROYEetvm', NULL, '0', 836, '5579', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('tdjebh', 'wdmpb', 'student', '$2b$10$gWd.Cog.BGVhpAwMHFYq7.MCmRwXF6930CBPavgrOn0YYk16V14oS', NULL, '0', 837, '6033', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9qhik9', 'wdof9', 'student', '$2b$10$qSbVqJpvt4rotNWOday47uT/QSseV4GIg5ej3rgY/FmGlDUoRbaG2', NULL, '0', 838, '3192', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ulxqdo', 'wdmde', 'student', '$2b$10$Z.DWeXF3XeNyUqVtzBMqt.hu3ZtKCA.rXx6CF2y7/43XXAKUgn5km', NULL, '0', 839, '4121', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('yuzo0r', 'wdahu', 'student', '$2b$10$x.EQ3xZUYzBcAve8ETfOj.9VTbhkHuUxxP0mNeKVBJSkjHrweMbQm', NULL, '0', 840, '5908', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('y1vsi4', 'wdmpy', 'student', '$2b$10$j6qYsZ.CBs5JV7tVso.0V.gqckj9A3RTpthF2vYBSk/Juguq8yJb6', NULL, '0', 841, '3435', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('p2bt6a', 'wdo7a', 'student', '$2b$10$W9a85QbTTYsKM11MuRsn9ec1QKVeO3w16qtMDe6g5jmgigdO/IR/.', NULL, '0', 842, '6422', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('m4cqfj', 'wdfvu', 'student', '$2b$10$Sxc3X20N2iH2mrnaJEdG9uheYb2VcqfqEZLILuH74Kb1W2LmJ86tG', NULL, '0', 843, '1907', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('e4kq9t', 'wd3p1', 'student', '$2b$10$d6blkmn6bFy5DC7isGpMIOUgtu2VG2Nt6efwVbQ9fLI76TTxdFhnK', NULL, '0', 844, '6207', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hoh4wa', 'wdlct', 'student', '$2b$10$0skfYGQf83ZyV7l4lx75huHCpPL1d.zz.VdgDo1RPbOsKDwSDvG3G', NULL, '0', 845, '7319', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('2r87v0', 'wdreo', 'student', '$2b$10$JzgvGC6AthDOcXtJtsulH.UczLFPHNfn5i5P9TkujHiSJmeiZzRpu', NULL, '0', 846, '4627', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('96p2ft', 'wdhwi', 'student', '$2b$10$Yc8sim1WXTGqhsv/cWeGKuV7h3vU.GSZoJyVBYsb9m.GwxBIafp9a', NULL, '0', 847, '6818', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('pexoqp', 'wdvkm', 'student', '$2b$10$JRRarXScJ4pdPF0FYdk1FuXDxTalZfUcalbNsuhy1Y2sa0uuHqEGq', NULL, '0', 848, '9365', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('vm2cxw', 'wdvki', 'student', '$2b$10$tcca6rHMq2njEcsgfH0AcurP2EbJsk5EbthrTXkvruWOKqZ.bsmaO', NULL, '0', 849, '1162', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9v2gew', 'wd9gk', 'student', '$2b$10$HbBtaObax.JGU1srh5yZL.poAY6FlpVAXcWhUXMS1YZbYCm5.i5H.', NULL, '0', 850, '9560', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1fshi1', 'wdyv1', 'student', '$2b$10$WeVdCWlgZFfKNk0UHFZS4OEmwR7zyCCpnjP22JNdg2edcy9MXcxpS', NULL, '0', 851, '7072', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5mwwhn', 'wdclu', 'student', '$2b$10$ZnRjSIFCbdOsafbjtWXCT.F4.ODTDURslADPKetTuDBKsN4CutDLu', NULL, '0', 852, '2120', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('qlak6g', 'wdah1', 'student', '$2b$10$k5QTAqWWMZblgiBxyLx69uywBWUk68aRV4TlnioRyd2L0cTCzoV7O', NULL, '0', 853, '8588', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('c02jb5', 'wdycy', 'student', '$2b$10$YrIgJlcgjEmsOdmwtGXQEecNQkKnpvlf.L23odUIyeJf4ZKytGG0y', NULL, '0', 854, '5856', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('fkj23h', 'wdpux', 'student', '$2b$10$WY7jjpx4GcqREQ/7xU1Gb.QbeetUWT6zl2l1bAGFyOiqPjuYG1q4W', NULL, '0', 855, '6090', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('r21j99', 'wdkc6', 'student', '$2b$10$fVpPuWdo6ZxBlBTNk3zwhOQvOzJacPqxU/L1p.ajW880wxcUNlk92', NULL, '0', 856, '7754', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('896yp6', 'wdvwi', 'student', '$2b$10$v93aM2PTRDzHqmfNYnOFNuRgv9Z8iAT.S8cRgxsR3C39j.wBrghF6', NULL, '0', 857, '5731', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('uz63s5', 'wdbgw', 'student', '$2b$10$AFrzPTkXw12cG6yA.rpjUOQTjDY4umhCxwDZmyujqJ9HttiVA6ya.', NULL, '0', 858, '7528', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('2y41m2', 'wdjqp', 'student', '$2b$10$sXRlFcPLSPMiXqLcRUjUeOWHPqypkqFZk5AQkOyNUSkgislP.I9He', NULL, '0', 859, '6200', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('gww36g', 'wdyci', 'student', '$2b$10$ugQhpXienMly4z3GmgWqD.JbVwr9ye5pO7m4RY5BoJGiUxYtnvy5C', NULL, '0', 860, '3469', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('6czk4d', 'wdhyl', 'student', '$2b$10$F1oXOcNn6esrDvFhX8X8gOpr3ejRrsXt6XsRdNa.cL9BDCrmqCzU.', NULL, '0', 861, '8513', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('qps630', 'wdznc', 'student', '$2b$10$wkUXncuKb4mLY2Hv/9S6reqSFKghFFZUJBxoETVbnPmEPGCt38HU.', NULL, '0', 862, '9926', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('x0soqa', 'wdtkj', 'student', '$2b$10$u.1O6nZSGqTROtUXd5sOXu39AiqIBvV9PFTbN5Ky9YEZGgQbuwahu', NULL, '0', 863, '2545', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('15eer8', 'wdacy', 'student', '$2b$10$0/MNH89PGdABax2VIY1YwOKRDaE2UtmRHv2cWXBaIb/wLcNffiGRS', NULL, '0', 864, '5824', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('wxwxqg', 'wdrel', 'student', '$2b$10$DTSwFJP7g931UPlt8skCV.BMFUtLkYvm.G4uoKemHMmZqSMgqqFli', NULL, '0', 865, '6843', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1xcr7j', 'wdctw', 'student', '$2b$10$LLOx1LlQO5NYMlJrgeyl6uALRM9JxpDf2sh4WUZRlcTgQMSjIWbDq', NULL, '0', 866, '3576', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('n2atlw', 'wdgrp', 'student', '$2b$10$MfWpt1cDmLUJqcK9fXyhVeBSRLt0zVwCyFTSys7aj5KJYjDEoJkrK', NULL, '0', 867, '1291', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('oxq3c3', 'wdrmq', 'student', '$2b$10$XJflktfHUGybTAXVRcqHz.piV6G1/Qh.NYdDjzmN/2ee.R6k40/jS', NULL, '0', 868, '6849', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('zd3xds', 'wdlhe', 'student', '$2b$10$K2GY6rJHIke.XSWf/YN2Kuq5ag2VqHY7ib0nhcdmUURVijpzFU9LS', NULL, '0', 869, '4000', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5fbck2', 'wdtkm', 'student', '$2b$10$4Fo8tyfx0sxRp9XKgiK36eww/lCi6Z22sUhcoZaUgoWw9Rm/288Na', NULL, '0', 870, '9265', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ok8wxg', 'wd41s', 'student', '$2b$10$VJjgaBOCveXanPgYFB1.2exuyqdewTVh/oPLXlhtUtp2Rt/yZq8kO', NULL, '0', 871, '3612', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('tuxtes', 'wdvcv', 'student', '$2b$10$flE9Wqe/wNraqcwhPwBXv.WOau.NApD9BqOqlZeT5I31f4bS4hwuK', NULL, '0', 872, '7954', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1fga70', 'wdxpu', 'student', '$2b$10$EriPYn516BtzCWeJrW/oLObkNonh1A13Hy4Eab3VUicRL2xROEaxa', NULL, '0', 873, '1038', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('a1johg', 'wdav2', 'student', '$2b$10$g5Gr3q9rz6Edj9r7iEuWU.B0ib06wuuNDuS0rrJSHtZaRxyHK9yS2', NULL, '0', 874, '2367', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('jnvj5q', 'wdg6g', 'student', '$2b$10$6qFMqREdECq/Ll9AbzlkGeqk6sopYVkTLLsZ9xBwjlumlxuksGxE.', NULL, '0', 875, '1546', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('w9vu2x', 'wdulu', 'student', '$2b$10$c09JkhPSqrYEF4V6Ao93FuKpWAsQJv0Pa7TRdop4GE1h7i1TmO7x.', NULL, '0', 876, '4686', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ntsaan', 'wdmwo', 'student', '$2b$10$wKo6lcn6HFLOfoQMd68d1.1qEKOWVotqlmZZa/4.IWYJ76cjvVcyW', NULL, '0', 877, '9870', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('13gvk2', 'wdxfb', 'student', '$2b$10$vDC/y5R3nH1nUw5OxgttxOZPXE5RhTFgGE/c0MiBwpQtE36SlhBJy', NULL, '0', 878, '8532', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true');
INSERT INTO `users` (`userId`, `email`, `role`, `password`, `pass`, `rolecode`, `Id`, `pincode`, `createdAt`, `createdBy`, `isActive`) VALUES
('jtc1yv', 'wduna', 'student', '$2b$10$Wt9FLN2EH4qr4YN8dnjPhOlpX.02ZhcGXhqeYUykaDZSK7Bndgh8y', NULL, '0', 879, '8844', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('gpt83h', 'wdrrr', 'student', '$2b$10$g2lIP09JUzqec0wxWkAip.lcZAJ18UviUduZPFASl4BBlEBijFCHK', NULL, '0', 880, '4040', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('oynkjl', 'wd6jy', 'student', '$2b$10$QgKcVttMGaFjtSsRZqZ0Fu3tDzP38XRHiK1ArNKp4zy9XRADaOpHu', NULL, '0', 881, '1467', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('affis9', 'wdhyu', 'student', '$2b$10$Z/y/SiE265YxfHMFJ8kJ3e.OQvfcC35TLNGb7rhfsZEvtPeH/6tWq', NULL, '0', 882, '6450', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hd9t73', 'wdzy1', 'student', '$2b$10$8r.C4XD01uqniMBHtb9X1eNK4201h7/9ZkHlZlEcDsR4SVudcnnbu', NULL, '0', 883, '6478', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('qxt31d', 'wdxi1', 'student', '$2b$10$kWJKLF93HeMOr6MlAvo9suGPZ04henNY5PwEVWyiCWR8ZlCnEFcDu', NULL, '0', 884, '9101', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('f9elv5', 'wdrau', 'student', '$2b$10$MaSdLGe/sZlo07ce7hcnMudvmr2MX/rMOt3F6HT9CEjq.X2xXs74G', NULL, '0', 885, '2330', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('mzvdga', 'wd6dv', 'student', '$2b$10$gFUhP9HDpGjtM59Hhgb9DuA7fRgnBmW1ZeOYQwdmIr7im5QTfibQu', NULL, '0', 886, '4653', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9bg4k4', 'Jeremybug', 'student', '$2b$10$fel.TGW/1A89Rm.YkfyuGO0lfFir73zsF6NAiFQa4CplnyauH.fa6', NULL, '0', 887, '3861', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('h4q7bn', 'Benfv9', 'parent', '$2b$10$vsm6pN1T7kWkh2F0Xt0inuQokWvqOrug3BKo9ew4UZF5mEGBFYeGW', NULL, '0', 888, '5994', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ehqyv2', 'Gracef2h', 'parent', '$2b$10$teb0FROAgivqKsXwNdcHAuZ5UZCeCAP9WoTTK.ImNP1rE5wG8/rpy', NULL, '0', 889, '9604', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('dg03tx', 'Gregorym79', 'student', '$2b$10$N65ALwd0l6dMuDGdFYCWwOT76gPYZGLHiZf3ikczsgsrihLgG6JWu', NULL, '0', 890, '5385', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('zl2bar', 'Zulub7h', 'parent', '$2b$10$P8fbT6nvThDJcTgqNk1ykOIUoLfGn0xEQtXRQw.jvRECpLM1ZOKhu', NULL, '0', 891, '8416', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('rrwq4c', 'bbbbbbzcj', 'student', '$2b$10$AUe.KxNzX1o83AzI6njTj.MDCsWdXope3wNzfugsIPt/041yoZVey', NULL, '0', 892, '1187', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('vtx0oc', 'bbbhrc', 'parent', '$2b$10$pEOZ22/VbqPp3XOjna4ZjuQbBbiWJBtVb93WWtdlIV4JOWPtDUQ1u', NULL, '0', 893, '9480', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('rxi4gd', 'rrrrsmo', 'student', '$2b$10$PV05eYDuodJymWUG7rakH.g00G96A/KzMicuBcaecmgkEkbf2SVES', NULL, '0', 894, '7092', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('q7frf0', 'rrrrreb6', 'student', '$2b$10$mgmtrv8g8BPwuAAhmHgrUeMRnV.VslZXqBxggnBhf0qtrvHRkHzFO', NULL, '0', 895, '3346', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('p091yo', 'eeeedmo', 'student', '$2b$10$aKLaBToer2OZgSYKZRI.9eD/ekL09cwBae6LpmLiKgaiA3nbX.rBS', NULL, '0', 896, '4384', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('mpmi6c', 'rrrrrr4pl', 'student', '$2b$10$DqyCVUrCmZ.NAIyHFocOXuU8x4.fTikCLqpdGPbvCu0Kuc6itSfha', NULL, '0', 897, '8793', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('xqekpg', 'eeeexrw', 'student', '$2b$10$ht7CMKt2XrKlqUm35kcXYOuLSpGv2YMq5zw6zfScQ2w578G7G3YIu', NULL, '0', 898, '8177', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('8nhpfl', 'rrrrrdpx', 'student', '$2b$10$jqXEobEH/XsVAmbkuHrOdu5E0JSP9ZB7N.SK4N9gHH5ZXeV6us1x6', NULL, '0', 899, '1778', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('oxpnu5', 'eeeeyjw', 'student', '$2b$10$DRf7UeVWDY2ZbQ2C.ihnOuhLCPiy8hhA4dD1dYxwj5DBmeeUtQuty', NULL, '0', 900, '7636', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('fmwnlv', 'dewexcg', 'student', '$2b$10$A1GGSPFv./zdTKIsovjGRu4uuYElEPWN7LipfuE4SU3mA6bOo3i/K', NULL, '0', 901, '4689', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('n7905z', 'wedpx4', 'student', '$2b$10$EeJLZK6n4PFAg5DswkmJueG9B5notkmbs950km7ND/sQQn23z9YHa', NULL, '0', 902, '9918', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9rzvli', 'wedmx2', 'student', '$2b$10$2cTSGdHx9z0RHOnyub3WWe5metLWn8oxYpmiidQQW1bCz8zkRSH4m', NULL, '0', 903, '4865', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('zp5h2c', 'wedegm', 'student', '$2b$10$fnnup5cgi1ZOW9JYkXs/HeATIVkslYxlpE9NYLiuRrnXCIfjgougW', NULL, '0', 904, '8486', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('lbvado', 'wedfpg', 'student', '$2b$10$Y0wGcbTcdv/sgIG0oUi/puW5Ald6TLflDepN/w3kR6eLIIQRCGOdu', NULL, '0', 905, '9282', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('yltjik', 'wednsd', 'student', '$2b$10$xehn7UQzdEWCkCEvDAH.uOD1uY5VopoxcKf9TBgPXontYHMiy7kFK', NULL, '0', 906, '1134', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('kzufat', 'edjzz', 'student', '$2b$10$rAnr37uXL2Fq7nSWrY/F/.IFVuL1CHDmuAAD8M46cbniwJvE1lC2K', NULL, '0', 907, '7013', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('7z1ja1', 'wedyu6', 'student', '$2b$10$c2i9SCjR57XTP8YMLUT/u.wMaewWcalfvB5Ii5YYZOuAFW.Flfo/6', NULL, '0', 908, '2248', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('yapi5t', 'w8mp', 'student', '$2b$10$AuFuMvWG7TZ79S6v3QoqCegTSCGQTkhWIzbWaaahC.gpdV1YnwUEK', NULL, '0', 909, '2483', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('2lwuy1', 'wdeay', 'student', '$2b$10$TF1X.UuDVRFcnMaJhgFkx.nswa9jP8/HlwFcy1sxigDKEy2iLuZSK', NULL, '0', 910, '3525', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('fwheix', 'wd3ws', 'student', '$2b$10$mfxMoL.wn7IwWl6FtkwTV.dKDJWIbHpCwbNlwyTq7UvddzL6rjNf.', NULL, '0', 911, '5886', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('wxvmk7', 'wedcly', 'student', '$2b$10$ALdNbvN99NZjLH8/9iQCGuxxpZB6dSCHzDVEc0fFI68qeN2xDazui', NULL, '0', 912, '3937', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('dmah80', 'wdgmo', 'student', '$2b$10$5NNqOYF8OqAJ16ah1pDVmudMCREfVQHoYyx6LvJ7/jMHwzNvcIure', NULL, '0', 913, '1483', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5y4i0b', 'deweq4d', 'student', '$2b$10$P1mGYOTomT9JRzHQzKU8D.35dDeG72Zz2sFn40s07YWj4CV.5PO.u', NULL, '0', 914, '5664', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('pszezl', 'dweddiu', 'student', '$2b$10$p60GCbqoZB6MWCipF6NXleWPgjFSamYnU6vk2BiMbcVLSWTGvzHJG', NULL, '0', 915, '6071', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ecgp80', 'wdqu3', 'student', '$2b$10$2s1AdkFin8SFraP0RYNtJeBItFow9xuyzJv3pwhalBh6ItsXsSaGy', NULL, '0', 916, '4878', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hinf6y', 'wdets', 'student', '$2b$10$A3k05ziFSvXr6CMTTUxHE.mtzqtzZqBsaFUaB9Q14OVHMvQY8UGgK', NULL, '0', 917, '7884', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('5wf4r0', 'wedsks', 'student', '$2b$10$L/mDNRsq6q.RNTJIfHVFF.meY6MorCzfnCUHYu61pTH.6GfTDyh5e', NULL, '0', 918, '2532', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('el3cvk', 'wdjpl', 'student', '$2b$10$qme2RShqlJQlyiKab6d6D.qiShkIU3xFA5ftoJ1bB6WX8ipGOB/bq', NULL, '0', 919, '7857', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('cx7x0m', 'wd1mu', 'student', '$2b$10$rpfCyDRV9FYjD4.PBn4fhuvPYoyrudytFueuePs03q665AGQJr8gy', NULL, '0', 920, '5642', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('sqdlll', 'wdyrd', 'student', '$2b$10$pSk6t3tgdv6N1KcwJSg3FeUWPiOAU1k8xf1DNsZd3QA7xgauMIUA.', NULL, '0', 921, '1051', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('acemhr', 'wdxil', 'student', '$2b$10$SaV3Q.sjCTdZDvWXU5n9R.xVS7GMqV0j0qvcNT8zifiEzxIKP3vjW', NULL, '0', 922, '6881', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('p7or7x', 'wdbo8', 'student', '$2b$10$J3PTCJk3qUHf79Y7DYjMtu1iE9XakABeVBduWE8pOImGsaZIl7QcS', NULL, '0', 923, '7080', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('75gxgn', 'wdnar', 'student', '$2b$10$jzA.pF3wTbLaIGKnZKz8JeWhVMKnHy7dXBNcYhwssJZjl6hRIw/ZK', NULL, '0', 924, '2027', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ux3y1o', 'wdnku', 'student', '$2b$10$2ghCZcoRcGMEGre61Eqg4eCXs43EPt5MXvINXikeE3sg0QZKYw2AS', NULL, '0', 925, '1406', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('pbrhfx', 'wdflw', 'student', '$2b$10$IxcDyTkH5ZOXj7H46WmyyeadQUNtOwqwRCW3mUrAyI.MOnKb1KakW', NULL, '0', 926, '4021', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('k7es4f', 'wdtw3', 'student', '$2b$10$aV2y0DVT56TTBarFspWkkeirO/HZeeG8It9s0U6GhyH/nj4kTAx2C', NULL, '0', 927, '9381', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('wg3fa2', 'wddst', 'student', '$2b$10$uINPYSRbj/fTndf1YPfSG.MF0y8SXR8m54WzPljVj7K60vBzzbyIy', NULL, '0', 928, '8074', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('dnxbdc', 'wdiy8', 'student', '$2b$10$NwGxM6DHvgC25WMoUe0Z8OuhwBjk2/Oy/Bl3BSDTmXWeaGTWmjQ4S', NULL, '0', 929, '6828', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('85c8q4', 'wdtr7', 'student', '$2b$10$MEQfDz/OrKnR.GeTqWpK5O9E5vUPKQenOr6perqhVcLC3O1OlsMxO', NULL, '0', 930, '2920', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('6eni0o', 'wdiy7', 'student', '$2b$10$OPVlrjonsjQXLnvYyFVj3us6/8EUmdi6CYk4WEtXK.ZbK58CZlWYe', NULL, '0', 931, '3957', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('lpzifa', 'wdsdk', 'student', '$2b$10$bGwo49G7TZA0ZbB0jqBKheBprpRYPYV3xlBMgM0h5Q.iJxVKtFrei', NULL, '0', 932, '3171', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('lt7kds', 'wdmgr', 'student', '$2b$10$h7SNV.4cJC3KBOEgdaj1nuRLyxM5YjBalxl/qQ0vwsqN/X/vXQMLC', NULL, '0', 933, '8313', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('2xn9mz', 'wdobo', 'student', '$2b$10$T11tdLDi3zKzfXwAvaYQy.ygvnfTYaNqLSGSGbCqiewMe9N/07bW2', NULL, '0', 934, '4310', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('44uyh5', 'wdjp6', 'student', '$2b$10$utmCoUJ4QJCtftIVzWgVZObuzsDrcAE7iERUjY3lvKWa9N4pPG25y', NULL, '0', 935, '6853', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('4whlii', 'wd1j6', 'student', '$2b$10$f/AmQ9EZ1PSvLDZBwPpKd.GJre3G8bbYfAHSt8JseHUCzA3wZD0Hi', NULL, '0', 936, '7527', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('q4g4kw', 'wdops', 'student', '$2b$10$m9kMgqV2vxNkpGEZ3YKcMOG1vgx2WyaaW/4QmKdeq/Klottzz5G56', NULL, '0', 937, '3822', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('4fgj46', 'wddec', 'student', '$2b$10$9w.fY.4PQ8Q2rHWeKA3n9ug9qCIOB0GBsUIWbOnxwpJi9cZ2yNXfS', NULL, '0', 938, '1256', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ez60lx', 'wd3j1', 'student', '$2b$10$.jJsjOA/dMPrhlR7YRR/b.4jDduUhkiYD/9QgMi5F9EJbsRdy/IxG', NULL, '0', 939, '2881', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('qk3xbg', 'wdzny', 'student', '$2b$10$RNV/3LFgKiFv6higTriMZOrNJgfvWWODCgu8TkVO2GOy2KORdwlra', NULL, '0', 940, '3613', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('u3l4zt', 'wdmtk', 'student', '$2b$10$yWPyCokMWtC8bOaDeeYLdue7YVfN.4ulQ3M8zJZIzl.sss0lSNBRK', NULL, '0', 941, '3511', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('xsor8y', 'wdbgg', 'student', '$2b$10$r4NjLO1zmPd7Xdz4MQHSYeOWgpXUInsiAHL26ykjmOEbzZjHs.stm', NULL, '0', 942, '9983', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1zoil2', 'wdeea', 'student', '$2b$10$O/4g3lHu4iINZBA3XFO59OzfKjBHeK3xUAxV1SVP12GngwWoThqX2', NULL, '0', 943, '1042', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('0w7gtd', 'wd8o7', 'student', '$2b$10$Ewt9tAlz.SzensVCB5yMJOcpQwUVFYmlVRpcMye1b18rK7nIMOtte', NULL, '0', 944, '4809', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hhcg5s', 'wdygq', 'student', '$2b$10$5gk.xJH6HMIaaotOPWZua.wI0exsOb9cd770wTjyIhe4Hvf/E/EKK', NULL, '0', 945, '4562', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('vfkh2c', 'wd75g', 'student', '$2b$10$gvX6f8GQKPAdhzMVjr0Cyu222rw8k3nXq9Oi4mDugKr5teKJ5xtaC', NULL, '0', 946, '8215', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('8dfcl0', 'wdqsz', 'student', '$2b$10$6J7FZjSljTXrwtWF9ZKDzeg8RvQMyBMFOHPhI.7vDgEmXSVxzN4Nm', NULL, '0', 947, '1277', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('x5objf', 'wd8bt', 'student', '$2b$10$/uPjEpkjWKswPUjaQQnxc.6Gm6Ps4hLzwI.NM6kdhm.2UGEExSvJS', NULL, '0', 948, '8371', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('trw9rw', 'wd5do', 'student', '$2b$10$Y11EvX23b8Ca5YvtmJMbxu27omEuM0DIAQhUbTrLhxKAWO4P/7yHq', NULL, '0', 949, '6231', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('nrxi6v', 'wdmmz', 'student', '$2b$10$HeLH1cEYMT0D.MCS8JhZ2eIDLySJKewj6dCAKk1HDzjUtVFzDWPZe', NULL, '0', 950, '3357', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('dwglse', 'wdgci', 'student', '$2b$10$KXmkQ1JTf.ljTzuC6tBazuQpLpb9tCM11wzMOdpuPr2cNu26TVSa2', NULL, '0', 951, '2072', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('uzqta8', 'wddxh', 'student', '$2b$10$MoI33ockWAWwmgd4mZ3xFOkaCiW1vKGSaMLypyAm07vWiqsuRG/x6', NULL, '0', 952, '9843', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9hkjv1', 'wdq2z', 'student', '$2b$10$pqoGOFXniSLvVp6b.eHewe4leDzakwnyeVAnU49RdFea/ttTFl/7u', NULL, '0', 953, '6901', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hejmcv', 'wdkrn', 'student', '$2b$10$ScNvaRy5iPs1lIdGBlcUb.KpNSh3OMfDTyiLj54sgWM2Nd3xSK8fi', NULL, '0', 954, '2863', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('8u9cmu', 'wdlm9', 'student', '$2b$10$ekLF7d.pjhZ6ffFeShYpDOevqZdt40ZJ.b.pVlwmU36/UDvXfJa0u', NULL, '0', 955, '6153', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('swn208', 'wdjgk', 'student', '$2b$10$rP/varaFHtITF8C63.X25Okl4w8e9cRvZCLhyPvGQxJ474y1ppoQO', NULL, '0', 956, '9784', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('4aoxhm', 'wdtsk', 'student', '$2b$10$4RVOb04xb4h5H1c5HRq5fedWyozC6StxltqTkfa/otcNpgC5xGwT.', NULL, '0', 957, '9421', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('vndpds', 'wd1dd', 'student', '$2b$10$nVBa8CSHdi9pBJTFfqxwkO25p8c1UJoMnwqRlEdgKGt82vz1uJPni', NULL, '0', 958, '9419', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('3gpf3v', 'wdctl', 'student', '$2b$10$BkwWHLlpALE/uZHI8.Gk8ut2mWZiXXoxHv8dBe825I8G.ohh01.cS', NULL, '0', 959, '2794', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('qfqvsj', 'wdovk', 'student', '$2b$10$u96I9CLiMDm2vx00hL8ahOtd8xXxq8w3MfCA1vwephUGyY0hxERNi', NULL, '0', 960, '3034', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('nd78k8', 'wd93y', 'student', '$2b$10$HH/DVn7h063r7dmwdj87IeFtqIeVm.2mthXLg2hVQF05jU66f.mq2', NULL, '0', 961, '1587', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('lvcwz7', 'wdyik', 'student', '$2b$10$J5oRpVePOGX7YDMdzFvEYuqZX29uFOsMBrp9.3cZRkuxHagbyaXH2', NULL, '0', 962, '5663', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('jgjltx', 'wdiys', 'student', '$2b$10$itoBzFrMSaPECVN2aDa27uaxx3OPWyq..MjG.zc49AjSqUXGcHkK.', NULL, '0', 963, '7561', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('9vw7jh', 'wdbxi', 'student', '$2b$10$NwyeD6EsBrBXOq2Uhg1LQeka.Fgo8Ul.y35fXj5scf8WcHNyi32Cm', NULL, '0', 964, '6769', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('tcr2wh', 'wdqio', 'student', '$2b$10$FvO6.fxdCYKUEe95/tV3vu2aXHX2rIdQqxvEq62VG07xOjZLa6i5a', NULL, '0', 965, '1082', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('iqasdx', 'wdctw', 'student', '$2b$10$FrYnhU/ROwdRIXNOBrl3u.JtEV84APosS0Owxj2cwbg4hHVWM5dpS', NULL, '0', 966, '9792', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('ltttoq', 'wdbxh', 'student', '$2b$10$vYwIrJbjP30C/iaCEBxAeOJTIP0c31V9TQIgnMZtdZcq3OqzvLNxK', NULL, '0', 967, '6920', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('jk233e', 'wdrhj', 'student', '$2b$10$iFxMw5TbZdt4V1eglU482uLEVXmn/VbrYoGzb6hZm4G4Yp/dx0tUO', NULL, '0', 968, '5396', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('akxv5b', 'wdvxm', 'student', '$2b$10$G4SV3XP6eoEstxFiczlcYuV1NmLYIX4PrUDZH5rhRvEoHYBvo1IGy', NULL, '0', 969, '7028', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('7s7eq7', 'wd8a7', 'student', '$2b$10$SgcyJ/ZNph4wu74ydzI5nemC3TPck3OMPxW2H2ZK4mkgCpggQ9TA2', NULL, '0', 970, '5353', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('cl2fcf', 'wdytu', 'student', '$2b$10$rP9zRELdDDRENYLoXpbdM.99lSO3HaDDI8MqpHMLQZjfT2kY4jca6', NULL, '0', 971, '2252', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('nqa8ym', 'wdsil', 'student', '$2b$10$sk5qOabh.jaQYd1XEteHYeSOv6/uHLId93lMyDylcPQNVw8Pbnhti', NULL, '0', 972, '2046', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('099069', 'wdplp', 'student', '$2b$10$0JeWq0dyzlHwv//vul8iDuWpwUO7H4368ctXAaYp.cFB/a79QPtWu', NULL, '0', 973, '6584', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('l89kgz', 'wdjgw', 'student', '$2b$10$9bFJGR2AYUzTk0i2tpjIL.NIHAFaBXJ6WYLXD7ziECKApBWDy/GGG', NULL, '0', 974, '1230', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1m7ckb', 'wdmis', 'student', '$2b$10$jw7rwRkUimRmi2XE7A2HW.6Q08kzOtieqnE7CUd3c7dTgaeLtrMfC', NULL, '0', 975, '4518', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('1ve72m', 'wdrda', 'student', '$2b$10$jHgV/SWvB.ojlF2zGRWADu1szM/5rCCUJGBM1/uGDv1Ub1F2mkZty', NULL, '0', 976, '7921', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('na7ef1', 'wd3qe', 'student', '$2b$10$TPhMti3noTyvbEHQhzsWVOk2uBWfATJ0BS5AD2fHVrqY6ABhkmS2.', NULL, '0', 977, '1584', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hzckv1', 'wdwdm', 'student', '$2b$10$32Y/uxNS/NzkOm4gE3Mpgehs7Lbbm6HyQzoXzP27EoyZlc7LyqkCi', NULL, '0', 978, '6538', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('abob1m', 'wdoso', 'student', '$2b$10$Lf5D0v9kx/61ssA6gswVvOA0C04eedQv6NvsKx9KctqN4sRoWzrQC', NULL, '0', 979, '5643', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('kryjbe', 'wdanx', 'student', '$2b$10$bNEwEewQdNdXYJC/TH98Ue2L9HWOV4NsdBL6wV8DnoJskZWAhzb1m', NULL, '0', 980, '2265', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('hu1tuo', 'wdt9k', 'student', '$2b$10$w9Y10pIS9.NCFSnzwWvy8ej308PgZdjS.qfD0OO58xYtsqlCPEKK6', NULL, '0', 981, '3049', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('v24v1w', 'wdhul', 'student', '$2b$10$H/dKWixNv8n5Svl3rSiwi.YSlbyV3Kk0zofVtvBW7MzJPYXzirFvK', NULL, '0', 982, '7534', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('xpnnx4', 'wdmc6', 'student', '$2b$10$Y0XkWHBwjOX.okt5xHMRA.EpZhPgU2crUPuCUBKA/Oz3s4FkDZanK', NULL, '0', 983, '7219', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('cqhvnq', 'wdzx4', 'student', '$2b$10$JDag11TWeXOAtBW/C6.nrugVuuc15mTWIt3/UwCkZbmlPRm0IWgKm', NULL, '0', 984, '9444', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('rykl5g', 'wd5zs', 'student', '$2b$10$BWvt2Yby9FFbHVsDN8Xuo.ACwysZBc6XxEzqjpOnV7DcaU6i2NHWK', NULL, '0', 985, '1309', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('habkeq', 'wd6fo', 'student', '$2b$10$UH5zLN8uV3Ms0LYxxWjdae5ZhbuVIvovOIyadnIMKQN98q7nu4tvi', NULL, '0', 986, '9144', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('fcqi59', 'wdgoz', 'student', '$2b$10$Bil75mU5VxEkpDkDj3FmkO8rrX3YakuHQYURVL1dQNDED7bvsGESi', NULL, '0', 987, '6968', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('moum9g', 'wdwri', 'student', '$2b$10$iKtjv1Riz/AF8qzEw0ZMRODmNnvO01V91leNrSjUNCgfFQXOOYRJO', NULL, '0', 988, '3202', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('a5lml4', 'wdpxv', 'student', '$2b$10$cZWSN05eKc0zKapiLJGMD.3KEj3Q5VAtNIGBsnIhjlNwpS57LM0ei', NULL, '0', 989, '4892', 'Sat, 15 Feb 2025 11:42:09 GMT', 'Greg Kay', 'true'),
('vb0x7b', 'gregory jzvf', 'student', '$2b$10$qQdFb2ZI.2vyguEjKAMH9u2mxes0YE4TlHiqJFlbEzcPk0NXT4gcu', '24fdl', '0', 990, '8429', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('tvb94m', 'jude m8bs', 'student', '$2b$10$29ezBeJ/Z2zlu0fRf2qcGeIqfNknJI7ZTuaihBsEJ685IU9Gr2pSO', 'cbxga', '0', 991, '9550', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('dswm5i', 'marcof7f1', 'student', '$2b$10$BeJg7nwbpDIyCDL2JPvkkOA0OXUP930Nl.ElLD8N7x.Atto.bXo/S', '7y4vz', '0', 992, '3189', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('02niwg', 'stella1tt1', 'student', '$2b$10$WKRrwpNiluN5XFWc2yQxSe7iZ5Nlts31MWwFPylKvp7GUEIPd/ZQm', 'dw9cn', '0', 993, '7826', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('cmkoss', 'fostermpjt', 'student', '$2b$10$5Rs7.BISMjtk6Kop8MIGTOjdbipV8G8VNMY4lLYYkCJctRz2HqNk.', '00pal', '0', 994, '4199', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('6cq19y', 'endrickxcho', 'student', '$2b$10$YXafhsEU8Di43o0HwD3jHuJCPgxfR17DT7T9e0oTDYwjyZ6tj8nc6', 'odkfn', '0', 995, '3417', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('j7h195', 'alexis7qam', 'student', '$2b$10$HCefECgoPDPvPFwG64xi4OPqewbUEW0nI5hXZcjOGS7z7Np9DP/6K', 'dwhry', '0', 996, '2605', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('ffmnuy', 'frankaa6f', 'student', '$2b$10$P/v79gBCTjlv.SAFb/LOOeJNqMyu/aPAUzU2CcFalAS2.Wa5QSM0.', '4el01', '0', 997, '8029', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('5cqupj', 'fleanceek35', 'student', '$2b$10$VDKXIs4fNJRBxS2Q1iGy5O50hN4d28iwcU2ZiDfg84FDD.i7JodvS', 'm8fz9', '0', 998, '8626', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('l7jg2o', 'stephenovbo', 'student', '$2b$10$PUNwQA5GZKpTFzWkAUMRvO/a4n3DUmUdhvwWrOQLAUq2Ff5/sc2gS', '04mlm', '0', 999, '8068', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('fqfffu', 'kofiipv3', 'student', '$2b$10$5iSNZp6zL/qgPS6PjWV0cejYk/JqxXfxnRJh2rBqn1sGk4TVTaxc6', '9iui4', '0', 1000, '4673', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('qtq72y', 'gracee73s', 'student', '$2b$10$dseltwM6mY6.1cer7WymKu8Q/Xei/c84Qkup6JIRHe0e0cSnB.Hdm', '35qgo', '0', 1001, '6866', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('pj0xif', 'makan2by', 'student', '$2b$10$wVvAiuJNNJN.lEA15dZB4uaw/MDsr5xtuK4id0sNn3jeIeJYW2Eka', '10k9x', '0', 1002, '8143', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('x8r1kk', 'downing1syq', 'student', '$2b$10$TTeufzBWdWkIBbvft8n4/uYDMN2eQSRlC7Gn0lWRraRMtPjAEe69e', 'syqng', '0', 1003, '7586', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true'),
('8ff21r', 'nanaepie', 'student', '$2b$10$jQxUOT7t1DHFwb7CWhek8.uLYsRGkVMReiapNJc.brY.gAsjVpgjq', '3ori3', '0', 1004, '4100', 'Sat, 15 Feb 2025 13:19:27 GMT', 'Greg Kay', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `assignfeelog`
--
ALTER TABLE `assignfeelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignfeerecord`
--
ALTER TABLE `assignfeerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clearlog`
--
ALTER TABLE `clearlog`
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
-- AUTO_INCREMENT for table `feegeneraterecord`
--
ALTER TABLE `feegeneraterecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feepaymentrecords`
--
ALTER TABLE `feepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `guardianId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sessionacountrecords`
--
ALTER TABLE `sessionacountrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `studentscartegory`
--
ALTER TABLE `studentscartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
