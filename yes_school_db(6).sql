-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 12:49 PM
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
  `accountbalance` decimal(10,0) DEFAULT 0,
  `preference` varchar(255) DEFAULT '0',
  `createdby` varchar(50) DEFAULT NULL,
  `createdat` varchar(50) DEFAULT NULL,
  `feegeneratedate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `student_id`, `feepayable`, `accountcode`, `scholarship`, `accountbalance`, `preference`, `createdby`, `createdat`, `feegeneratedate`) VALUES
(1, 'SD20241160', 0, NULL, 0, 0, 'TRANSPORT,FEEDING,TUITION', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(2, 'SD20241161', 0, NULL, 0, 0, 'FEEDING,TUITION', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(3, 'SD20241162', 0, NULL, 0, 0, 'FEEDING,TUITION,TRANSPORT', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(4, 'SD20241163', 0, NULL, 0, 0, '0', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(5, 'SD20241164', 0, NULL, 0, 0, '0', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(6, 'SD20241165', 0, NULL, 0, 0, '0', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(7, 'SD20241166', 0, NULL, 0, 0, '0', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(8, 'SD20241167', 0, NULL, 0, 0, '0', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(9, 'SD20241168', 0, NULL, 0, 0, '0', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL),
(10, 'SD20241169', 0, NULL, 0, 0, 'FEEDING,TUITION', 'ASANTE', 'Thu, 22 Aug 2024 12:23:25 GMT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignfeecartegory`
--

CREATE TABLE `assignfeecartegory` (
  `id` int(11) NOT NULL,
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

INSERT INTO `assignfeecartegory` (`id`, `feename`, `amount`, `class`, `feegeneratedate`, `createdat`, `createdby`) VALUES
(1, 'FEEDING', 10, 'FGGF', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(2, 'TRANSPORT', 10, 'FGGF', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(3, 'TUITION', 10, 'FGGF', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(4, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(5, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(6, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(7, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(8, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(9, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(10, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(11, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(12, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(13, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(14, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(15, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(16, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(17, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(18, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(19, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(20, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(21, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(22, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(23, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(24, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(25, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(26, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(27, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(28, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(29, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(30, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(31, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(32, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(33, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(34, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(35, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(36, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(37, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(38, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(39, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(40, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(41, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(42, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(43, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(44, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(45, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(46, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(47, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(48, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(49, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(50, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(51, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(52, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(53, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(54, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(55, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(56, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(57, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(58, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(59, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(60, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(61, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(62, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(63, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(64, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(65, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(66, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(67, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(68, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(69, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(70, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(71, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(72, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(73, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(74, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(75, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(76, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(77, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(78, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(79, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(80, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(81, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(82, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(83, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(84, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(85, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(86, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(87, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(88, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(89, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(90, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(91, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(92, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(93, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(94, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(95, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(96, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(97, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(98, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(99, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(100, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(101, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(102, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(103, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(104, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(105, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(106, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(107, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(108, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(109, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(110, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(111, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(112, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(113, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(114, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(115, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(116, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(117, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(118, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(119, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(120, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(121, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(122, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(123, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(124, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(125, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(126, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(127, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(128, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(129, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(130, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(131, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(132, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(133, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(134, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(135, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(136, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(137, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(138, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(139, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(140, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(141, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(142, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(143, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(144, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(145, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(146, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(147, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(148, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(149, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(150, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(151, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(152, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(153, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(154, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(155, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(156, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(157, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(158, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(159, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(160, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(161, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(162, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(163, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(164, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(165, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(166, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(167, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(168, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(169, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(170, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(171, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(172, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(173, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(174, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(175, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(176, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(177, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(178, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(179, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(180, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(181, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(182, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(183, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(184, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(185, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(186, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(187, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(188, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(189, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(190, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(191, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(192, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(193, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(194, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(195, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(196, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(197, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(198, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(199, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(200, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(201, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(202, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(203, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(204, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(205, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(206, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(207, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(208, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(209, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(210, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(211, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(212, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(213, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(214, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(215, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(216, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(217, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(218, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(219, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(220, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(221, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(222, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(223, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(224, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(225, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(226, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(227, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(228, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(229, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(230, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(231, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(232, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(233, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(234, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(235, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(236, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(237, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(238, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(239, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(240, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(241, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(242, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(243, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(244, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(245, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(246, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(247, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(248, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(249, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(250, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(251, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(252, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(253, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(254, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(255, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(256, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(257, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(258, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(259, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(260, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(261, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(262, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(263, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(264, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(265, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(266, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(267, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(268, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(269, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(270, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(271, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(272, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(273, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(274, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(275, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(276, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(277, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(278, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(279, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(280, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(281, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(282, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(283, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(284, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(285, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(286, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(287, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(288, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(289, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(290, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(291, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(292, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(293, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(294, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(295, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(296, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(297, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(298, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(299, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(300, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(301, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(302, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(303, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(304, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(305, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(306, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(307, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(308, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(309, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(310, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(311, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(312, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(313, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(314, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(315, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(316, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(317, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(318, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(319, 'TUITION', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(320, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(321, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Thu, 22 Aug 2024 ', 'Asante'),
(322, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(323, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(324, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(325, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(326, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(327, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(328, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(329, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(330, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(331, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(332, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(333, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(334, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(335, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(336, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(337, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(338, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(339, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(340, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(341, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(342, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(343, 'TUITION', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(344, 'FEEDING', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante'),
(345, 'TRANSPORT', 10, 'PRIMARY 1', NULL, 'Fri, 23 Aug 2024 ', 'Asante');

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
(1, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(2, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(3, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(4, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(5, 'FGGF', '10', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(6, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(7, 'FGGF', '30', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(8, 'FGGF', '30', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(9, 'FGGF', '20', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(10, 'FGGF', '20', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(11, 'FGGF', '80', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(12, 'FGGF', '100', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(13, 'FGGF', '100', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(14, 'FGGF', '100', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(15, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(16, 'FGGF', '100', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(17, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(18, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(19, 'FGGF', '90', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(20, 'FGGF', '90', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(21, 'FGGF', '90', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(22, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(23, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(24, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(25, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(26, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(27, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(28, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(29, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(30, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(31, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(32, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(33, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(34, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(35, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(36, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(37, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(38, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(39, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(40, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(41, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(42, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(43, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(44, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(45, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(46, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(47, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(48, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(49, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(50, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(51, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(52, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(53, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(54, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(55, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(56, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(57, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(58, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(59, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(60, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(61, 'FGGF', '40', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(62, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(63, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(64, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(65, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(66, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(67, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(68, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(69, 'FGGF', '50', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(70, 'FGGF', '100', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(71, 'FGGF', '100', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(72, 'FGGF', '200', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(73, 'FGGF', '22', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(74, 'FGGF', '14', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(75, 'FGGF', '14', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(76, 'FGGF', '7', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(77, 'FGGF', '7', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(78, 'FGGF', '7', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(79, 'FGGF', '7', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(80, 'FGGF', '7', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(81, 'FGGF', '10', 'Mon, 19 Aug 2024 ', 'Asante', 'pending'),
(82, 'KG 1', '370', 'Wed, 21 Aug 2024 ', 'Asante', 'pending'),
(83, 'KG 1', '300', 'Wed, 21 Aug 2024 ', 'Asante', 'pending'),
(84, 'KG 1', '300', 'Wed, 21 Aug 2024 ', 'Asante', 'pending'),
(85, 'FGGF', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(86, 'FGGF', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(87, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(88, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(89, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(90, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(91, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(92, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(93, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(94, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(95, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(96, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(97, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(98, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(99, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(100, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(101, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(102, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(103, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(104, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(105, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(106, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(107, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(108, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(109, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(110, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(111, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(112, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(113, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(114, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(115, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(116, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(117, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(118, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(119, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(120, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(121, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(122, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(123, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(124, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(125, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(126, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(127, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(128, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(129, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(130, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(131, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(132, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(133, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(134, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(135, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(136, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(137, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(138, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(139, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(140, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(141, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(142, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(143, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(144, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(145, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(146, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(147, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(148, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(149, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(150, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(151, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(152, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(153, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(154, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(155, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(156, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(157, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(158, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(159, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(160, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(161, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(162, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(163, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(164, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(165, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(166, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(167, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(168, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(169, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(170, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(171, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(172, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(173, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(174, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(175, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(176, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(177, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(178, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(179, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(180, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(181, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(182, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(183, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(184, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(185, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(186, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(187, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(188, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(189, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(190, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(191, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(192, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(193, 'PRIMARY 1', '30', 'Thu, 22 Aug 2024 ', 'Asante', 'pending'),
(194, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(195, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(196, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(197, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(198, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(199, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(200, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending'),
(201, 'PRIMARY 1', '30', 'Fri, 23 Aug 2024 ', 'Asante', 'pending');

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
(41, '6134', 'PRIMARY 1', 'GOLD', '', 'true', NULL, NULL, 'Thu, 22 Aug 2024 12:23:25 GMT', 'Asante');

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
-- Table structure for table `feepaymentrecords`
--

CREATE TABLE `feepaymentrecords` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) DEFAULT NULL,
  `amountpaid` varchar(100) DEFAULT NULL,
  `mode` varchar(100) DEFAULT NULL,
  `balbeforepayment` varchar(100) DEFAULT NULL,
  `balanceafterpayment` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `collectedby` varchar(100) DEFAULT NULL,
  `receiptid` varchar(100) DEFAULT NULL
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

--
-- Dumping data for table `feesgroup`
--

INSERT INTO `feesgroup` (`id`, `feeid`, `name`, `description`, `createdby`, `createdat`, `status`) VALUES
(31, 'evllhli', 'TUITION', 'undefined', 'asante', 'Wed, 21 Aug 2024 10:29:01 GMT', 'true'),
(32, 'fidp1it', 'FEEDING', 'undefined', 'asante', 'Wed, 21 Aug 2024 10:29:01 GMT', 'true'),
(33, 'eyki58y', 'TRANSPORT', 'undefined', 'asante', 'Wed, 21 Aug 2024 10:29:01 GMT', 'true');

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
(1, 'Generate Fee', 'none', 'undefined', 'Thu, 15 Aug 2024 13:17:52 GMT', 'Generating fee for all Classes', 'applied'),
(2, 'Generate Fee', 'none', 'Greg', 'Thu, 15 Aug 2024 13:17:52 GMT', 'Generating fee for all Classes', 'applied'),
(3, 'Assign Fee', 'none', 'undefined', 'Thu, 15 Aug 2024 13:23:36 GMT', 'Assign fee for FGGF', 'applied'),
(4, 'Assign Fee', 'none', 'Asante', 'Thu, 15 Aug 2024 13:23:36 GMT', 'Assign fee for FGGF', 'applied'),
(5, 'Assign Fee', 'none', 'Asante', 'Thu, 15 Aug 2024 13:35:33 GMT', 'Assign fee for FGGF', 'applied'),
(6, 'Assign Fee', 'none', 'Asante', 'Thu, 15 Aug 2024 13:40:44 GMT', 'Assign fee for FGGF', 'applied'),
(7, 'Assign Fee', 'none', 'Asante', 'Thu, 15 Aug 2024 13:40:44 GMT', 'Assign fee for FGGF', 'applied'),
(8, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 15:58:19 GMT', 'Assign fee for FGGF', 'applied'),
(9, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 16:47:50 GMT', 'Assign fee for FGGF', 'applied'),
(10, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 16:47:50 GMT', 'Assign fee for FGGF', 'applied'),
(11, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 23:35:34 GMT', 'Assign fee for FGGF', 'applied'),
(12, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 23:54:03 GMT', 'Assign fee for FGGF', 'applied'),
(13, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 23:56:18 GMT', 'Assign fee for FGGF', 'applied'),
(14, 'Assign Fee', 'none', 'Asante', 'Fri, 16 Aug 2024 23:56:18 GMT', 'Assign fee for FGGF', 'applied'),
(15, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:45:05 GMT', 'Assign fee for FGGF', 'applied'),
(16, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:45:05 GMT', 'Assign fee for FGGF', 'applied'),
(17, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:45:05 GMT', 'Assign fee for FGGF', 'applied'),
(18, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:47:14 GMT', 'Assign fee for FGGF', 'applied'),
(19, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:47:14 GMT', 'Assign fee for FGGF', 'applied'),
(20, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:47:14 GMT', 'Assign fee for FGGF', 'applied'),
(21, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:47:14 GMT', 'Assign fee for FGGF', 'applied'),
(22, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:47:14 GMT', 'Assign fee for FGGF', 'applied'),
(23, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 00:47:14 GMT', 'Assign fee for FGGF', 'applied'),
(24, 'Assign Fee', 'none', 'Asante', 'Sat, 17 Aug 2024 20:27:39 GMT', 'Assign fee for FGGF', 'applied'),
(25, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:33:00 GMT', 'Assign fee for FGGF', 'applied'),
(26, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:33:00 GMT', 'Assign fee for FGGF', 'applied'),
(27, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:45:15 GMT', 'Assign fee for FGGF', 'applied'),
(28, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:45:15 GMT', 'Assign fee for FGGF', 'applied'),
(29, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:47:20 GMT', 'Assign fee for FGGF', 'applied'),
(30, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:49:56 GMT', 'Assign fee for FGGF', 'applied'),
(31, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:49:56 GMT', 'Assign fee for FGGF', 'applied'),
(32, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:49:56 GMT', 'Assign fee for FGGF', 'applied'),
(33, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:49:56 GMT', 'Assign fee for FGGF', 'applied'),
(34, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:49:56 GMT', 'Assign fee for FGGF', 'applied'),
(35, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:54:15 GMT', 'Assign fee for FGGF', 'applied'),
(36, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:54:15 GMT', 'Assign fee for FGGF', 'applied'),
(37, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:56:01 GMT', 'Assign fee for FGGF', 'applied'),
(38, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:56:01 GMT', 'Assign fee for FGGF', 'applied'),
(39, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:58:16 GMT', 'Assign fee for FGGF', 'applied'),
(40, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 21:58:16 GMT', 'Assign fee for FGGF', 'applied'),
(41, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:03:42 GMT', 'Assign fee for FGGF', 'applied'),
(42, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:03:42 GMT', 'Assign fee for FGGF', 'applied'),
(43, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:04:21 GMT', 'Assign fee for FGGF', 'applied'),
(44, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:04:21 GMT', 'Assign fee for FGGF', 'applied'),
(45, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:06:10 GMT', 'Assign fee for FGGF', 'applied'),
(46, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:06:10 GMT', 'Assign fee for FGGF', 'applied'),
(47, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:08:32 GMT', 'Assign fee for FGGF', 'applied'),
(48, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:08:32 GMT', 'Assign fee for FGGF', 'applied'),
(49, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:09:33 GMT', 'Assign fee for FGGF', 'applied'),
(50, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:09:33 GMT', 'Assign fee for FGGF', 'applied'),
(51, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:09:33 GMT', 'Assign fee for FGGF', 'applied'),
(52, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:15:03 GMT', 'Assign fee for FGGF', 'applied'),
(53, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:15:03 GMT', 'Assign fee for FGGF', 'applied'),
(54, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:16:26 GMT', 'Assign fee for FGGF', 'applied'),
(55, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:16:26 GMT', 'Assign fee for FGGF', 'applied'),
(56, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:16:26 GMT', 'Assign fee for FGGF', 'applied'),
(57, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:23:06 GMT', 'Assign fee for FGGF', 'applied'),
(58, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:23:06 GMT', 'Assign fee for FGGF', 'applied'),
(59, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:24:31 GMT', 'Assign fee for FGGF', 'applied'),
(60, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:24:31 GMT', 'Assign fee for FGGF', 'applied'),
(61, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:25:15 GMT', 'Assign fee for FGGF', 'applied'),
(62, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:25:15 GMT', 'Assign fee for FGGF', 'applied'),
(63, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:25:15 GMT', 'Assign fee for FGGF', 'applied'),
(64, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:30:17 GMT', 'Assign fee for FGGF', 'applied'),
(65, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:30:17 GMT', 'Assign fee for FGGF', 'applied'),
(66, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:37:06 GMT', 'Assign fee for FGGF', 'applied'),
(67, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:37:06 GMT', 'Assign fee for FGGF', 'applied'),
(68, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:37:36 GMT', 'Assign fee for FGGF', 'applied'),
(69, 'Assign Fee', 'none', 'Asante', 'Sun, 18 Aug 2024 22:37:36 GMT', 'Assign fee for FGGF', 'applied'),
(70, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 08:10:20 GMT', 'Assign fee for FGGF', 'applied'),
(71, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 08:10:20 GMT', 'Assign fee for FGGF', 'applied'),
(72, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 08:10:57 GMT', 'Assign fee for FGGF', 'applied'),
(73, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 08:10:57 GMT', 'Assign fee for FGGF', 'applied'),
(74, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 08:12:42 GMT', 'Assign fee for FGGF', 'applied'),
(75, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 08:12:42 GMT', 'Assign fee for FGGF', 'applied'),
(76, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:04:29 GMT', 'Assign fee for FGGF', 'applied'),
(77, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:04:29 GMT', 'Assign fee for FGGF', 'applied'),
(78, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:06:59 GMT', 'Assign fee for FGGF', 'applied'),
(79, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:06:59 GMT', 'Assign fee for FGGF', 'applied'),
(80, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:22:16 GMT', 'Assign fee for FGGF', 'applied'),
(81, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:23:05 GMT', 'Assign fee for FGGF', 'applied'),
(82, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:23:05 GMT', 'Assign fee for FGGF', 'applied'),
(83, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:31:16 GMT', 'Assign fee for FGGF', 'applied'),
(84, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:34:01 GMT', 'Assign fee for FGGF', 'applied'),
(85, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:40:56 GMT', 'Assign fee for FGGF', 'applied'),
(86, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:43:51 GMT', 'Assign fee for FGGF', 'applied'),
(87, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 10:48:05 GMT', 'Assign fee for FGGF', 'applied'),
(88, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 12:20:44 GMT', 'Assign fee for FGGF', 'applied'),
(89, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 12:50:37 GMT', 'Assign fee for FGGF', 'applied'),
(90, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 12:50:37 GMT', 'Assign fee for FGGF', 'applied'),
(91, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 13:26:22 GMT', 'Assign fee for FGGF', 'applied'),
(92, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 13:26:22 GMT', 'Assign fee for FGGF', 'applied'),
(93, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 13:42:29 GMT', 'Assign fee for FGGF', 'applied'),
(94, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 13:42:29 GMT', 'Assign fee for FGGF', 'applied'),
(95, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 14:10:15 GMT', 'Assign fee for FGGF', 'applied'),
(96, 'Generate Fee', 'none', 'undefined', 'Mon, 19 Aug 2024 14:10:15 GMT', 'Generating fee for all Classes', 'applied'),
(97, 'Generate Fee', 'none', 'undefined', 'Mon, 19 Aug 2024 14:10:15 GMT', 'Generating fee for all Classes', 'applied'),
(98, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 14:10:15 GMT', 'Assign fee for FGGF', 'applied'),
(99, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 21:11:52 GMT', 'Assign fee for FGGF', 'applied'),
(100, 'Assign Fee', 'none', 'Asante', 'Mon, 19 Aug 2024 21:11:52 GMT', 'Assign fee for FGGF', 'applied'),
(101, 'Assign Fee', 'none', 'Asante', 'Wed, 21 Aug 2024 10:29:01 GMT', 'Assign fee for KG 1', 'applied'),
(102, 'Generate Fee', 'none', 'undefined', 'Wed, 21 Aug 2024 10:29:01 GMT', 'Generating fee for all Classes', 'applied'),
(103, 'Assign Fee', 'none', 'Asante', 'Wed, 21 Aug 2024 10:29:01 GMT', 'Assign fee for KG 1', 'applied'),
(104, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:35:03 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(105, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:35:03 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(106, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:43:39 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(107, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:50:02 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(108, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:52:01 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(109, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:55:08 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(110, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 13:57:35 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(111, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 14:03:19 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(112, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 21:28:42 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(113, 'Assign Fee', 'none', 'Asante', 'Thu, 22 Aug 2024 21:31:33 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(114, 'Assign Fee', 'none', 'Asante', 'Fri, 23 Aug 2024 00:06:46 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(115, 'Assign Fee', 'none', 'Asante', 'Fri, 23 Aug 2024 00:09:51 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(116, 'Assign Fee', 'none', 'Asante', 'Fri, 23 Aug 2024 00:09:51 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(117, 'Assign Fee', 'none', 'Asante', 'Fri, 23 Aug 2024 00:09:51 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(118, 'Assign Fee', 'none', 'Asante', 'Fri, 23 Aug 2024 00:11:26 GMT', 'Assign fee for PRIMARY 1', 'applied'),
(119, 'Assign Fee', 'none', 'Asante', 'Fri, 23 Aug 2024 00:11:26 GMT', 'Assign fee for PRIMARY 1', 'applied');

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
(66, 'hve2dd', 'SD20241110', 'Ben', 'Doku', NULL, NULL, '23444444444', '234434553', 'Benhxj', 'sunyani Enclave', NULL, 'Male', 'Father'),
(67, 'jbpq9h', 'SD20241110', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracegzp', 'Accra lapaz', NULL, 'Female', 'Mother'),
(68, 'hik8qn', 'SD20241111', 'Zulu', 'Natal', NULL, NULL, '34354545656', '', 'Zulu52k', 'dome', NULL, 'Female', 'Auntie'),
(69, 'gtab7w', 'SD20241112', 'Ben', 'Doku', NULL, NULL, '23444444444', '234434553', 'Benmth', 'sunyani Enclave', NULL, 'Male', 'Father'),
(70, 'bjpnud', 'SD20241112', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Graceq7j', 'Accra lapaz', NULL, 'Female', 'Mother'),
(71, '515wjl', 'SD20241113', 'Zulu', 'Natal', NULL, NULL, '34354545656', '', 'Zuluznj', 'dome', NULL, 'Female', 'Auntie'),
(72, 'vh4rtw', 'SD20241114', 'Ben', 'Doku', NULL, NULL, '23444444444', '234434553', 'Benlbr', 'sunyani Enclave', NULL, 'Male', 'Father'),
(73, '5fji6q', 'SD20241114', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracegxt', 'Accra lapaz', NULL, 'Female', 'Mother'),
(74, '8oar9p', 'SD20241115', 'Zulu', 'Natal', NULL, NULL, '34354545656', '', 'Zuluumw', 'dome', NULL, 'Female', 'Auntie'),
(75, '267e0m', 'SD20241116', 'Ben', 'Doku', NULL, NULL, '23444444444', '234434553', 'Bennaw', 'sunyani Enclave', NULL, 'Male', 'Father'),
(76, 'btoogn', 'SD20241116', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Graceooi', 'Accra lapaz', NULL, 'Female', 'Mother'),
(77, 'q942j8', 'SD20241117', 'Zulu', 'Natal', NULL, NULL, '34354545656', '', 'Zululoo', 'dome', NULL, 'Female', 'Auntie'),
(78, 'je4uhm', 'SD20241118', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benkhv', 'sunyani Enclave', NULL, 'Male', 'Father'),
(79, 'zroelm', 'SD20241118', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracefgz', 'Accra lapaz', NULL, 'Female', 'Mother'),
(80, 'jtb3a9', 'SD20241119', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulupce', 'dome', NULL, 'Female', 'Auntie'),
(81, '75oxo3', 'SD20241120', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benqq5', 'sunyani Enclave', NULL, 'Male', 'Father'),
(82, 'xcb7wn', 'SD20241120', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace34q', 'Accra lapaz', NULL, 'Female', 'Mother'),
(83, 'uio46b', 'SD20241121', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulurfp', 'dome', NULL, 'Female', 'Auntie'),
(84, '77cc9o', 'SD20241123', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benaqd', 'sunyani Enclave', NULL, 'Male', 'Father'),
(85, '6avskz', 'SD20241123', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace44b', 'Accra lapaz', NULL, 'Female', 'Mother'),
(86, '52uzp0', 'SD20241124', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluris', 'dome', NULL, 'Female', 'Auntie'),
(87, '0sjge8', 'SD20241110', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benaid', 'sunyani Enclave', NULL, 'Male', 'Father'),
(88, '02rhf8', 'SD20241110', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace5iy', 'Accra lapaz', NULL, 'Female', 'Mother'),
(89, 'u7qttv', 'SD20241111', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulu8fp', 'dome', NULL, 'Female', 'Auntie'),
(90, 'z73x11', 'SD20241110', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benkyr', 'sunyani Enclave', NULL, 'Male', 'Father'),
(91, '7p8cm4', 'SD20241110', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace49k', 'Accra lapaz', NULL, 'Female', 'Mother'),
(92, 'nr4ll2', 'SD20241111', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluk3o', 'dome', NULL, 'Female', 'Auntie'),
(93, 'do3g4t', 'SD20241112', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Ben53r', 'sunyani Enclave', NULL, 'Male', 'Father'),
(94, 'moh1on', 'SD20241112', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracelnp', 'Accra lapaz', NULL, 'Female', 'Mother'),
(95, '57oxbh', 'SD20241113', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluuag', 'dome', NULL, 'Female', 'Auntie'),
(96, 'jo23q9', 'SD20241114', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Bentbw', 'sunyani Enclave', NULL, 'Male', 'Father'),
(97, '8jco9b', 'SD20241114', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracetid', 'Accra lapaz', NULL, 'Female', 'Mother'),
(98, 'voaon0', 'SD20241115', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulu31z', 'dome', NULL, 'Female', 'Auntie'),
(99, 'sudgng', 'SD20241116', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Ben9vp', 'sunyani Enclave', NULL, 'Male', 'Father'),
(100, 'cakv7o', 'SD20241116', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Graceybx', 'Accra lapaz', NULL, 'Female', 'Mother'),
(101, 'scfihb', 'SD20241117', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluyk2', 'dome', NULL, 'Female', 'Auntie'),
(102, 'ch1hz9', 'SD20241118', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benlxu', 'sunyani Enclave', NULL, 'Male', 'Father'),
(103, 'asp44t', 'SD20241118', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace29v', 'Accra lapaz', NULL, 'Female', 'Mother'),
(104, 'ulgqxs', 'SD20241119', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulucbi', 'dome', NULL, 'Female', 'Auntie'),
(105, '71qdte', 'SD20241110', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benzqv', 'sunyani Enclave', NULL, 'Male', 'Father'),
(106, '4i4upt', 'SD20241110', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Grace2jl', 'Accra lapaz', NULL, 'Female', 'Mother'),
(107, '22vjsi', 'SD20241111', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluhe8', 'dome', NULL, 'Female', 'Auntie'),
(108, 'jeezsi', 'SD20241112', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Bennxl', 'sunyani Enclave', NULL, 'Male', 'Father'),
(109, 'evhjcd', 'SD20241112', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracepfs', 'Accra lapaz', NULL, 'Female', 'Mother'),
(110, 'seq9kj', 'SD20241113', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuludqa', 'dome', NULL, 'Female', 'Auntie'),
(111, 's7j606', 'SD20241114', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benrnb', 'sunyani Enclave', NULL, 'Male', 'Father'),
(112, 'jszc5v', 'SD20241114', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Graceor9', 'Accra lapaz', NULL, 'Female', 'Mother'),
(113, 'aks119', 'SD20241115', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulusyd', 'dome', NULL, 'Female', 'Auntie'),
(114, 'od4kgz', 'SD20241116', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benkmv', 'sunyani Enclave', NULL, 'Male', 'Father'),
(115, 'oisosp', 'SD20241116', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracexz8', 'Accra lapaz', NULL, 'Female', 'Mother'),
(116, 'pnmn2o', 'SD20241117', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuludir', 'dome', NULL, 'Female', 'Auntie'),
(117, 'khwrz5', 'SD20241118', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Bene2j', 'sunyani Enclave', NULL, 'Male', 'Father'),
(118, 'g0he66', 'SD20241118', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Graceycb', 'Accra lapaz', NULL, 'Female', 'Mother'),
(119, 'xxrve1', 'SD20241119', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zulupek', 'dome', NULL, 'Female', 'Auntie'),
(120, 'nrh94q', 'SD20241120', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benwkw', 'sunyani Enclave', NULL, 'Male', 'Father'),
(121, 'wtr63h', 'SD20241120', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracelwz', 'Accra lapaz', NULL, 'Female', 'Mother'),
(122, '6syslj', 'SD20241121', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluy1j', 'dome', NULL, 'Female', 'Auntie'),
(123, 'vo5upj', 'SD20241110', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Ben1kf', 'sunyani Enclave', NULL, 'Male', 'Father'),
(124, 'c349fh', 'SD20241110', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracesod', 'Accra lapaz', NULL, 'Female', 'Mother'),
(125, 'ligo4y', 'SD20241111', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluftg', 'dome', NULL, 'Female', 'Auntie'),
(126, 'l0s535', 'SD20241112', 'bbb', '', NULL, '', '', '', 'bbbazi', '', NULL, '', ''),
(127, 'h377ps', 'SD20241120', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benddg', 'sunyani Enclave', NULL, 'Male', 'Father'),
(128, 'j09wgw', 'SD20241120', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracelqa', 'Accra lapaz', NULL, 'Female', 'Mother'),
(129, 'ieef19', 'SD20241121', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluqds', 'dome', NULL, 'Female', 'Auntie'),
(130, '63lwao', 'SD20241122', 'bbb', '', NULL, '', '', '', 'bbbgxx', '', NULL, '', ''),
(131, 'xvny4w', 'SD20241129', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benddg', 'sunyani Enclave', NULL, 'Male', 'Father'),
(132, 'dmycdo', 'SD20241129', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracelqa', 'Accra lapaz', NULL, 'Female', 'Mother'),
(133, 'lh2o5k', 'SD20241131', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluqds', 'dome', NULL, 'Female', 'Auntie'),
(134, '4zg4he', 'SD20241132', 'bbb', '', NULL, '', '', '', 'bbbgxx', '', NULL, '', ''),
(135, 'pg2ohc', 'SD20241140', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benagh', 'sunyani Enclave', NULL, 'Male', 'Father'),
(136, 'cqpvff', 'SD20241140', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracew9o', 'Accra lapaz', NULL, 'Female', 'Mother'),
(137, '59gvfx', 'SD20241141', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluo5i', 'dome', NULL, 'Female', 'Auntie'),
(138, 'o2mxox', 'SD20241142', 'bbb', '', NULL, '', '', '', 'bbbnnd', '', NULL, '', ''),
(139, '0g2mag', 'SD20241150', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Ben6jf', 'sunyani Enclave', NULL, 'Male', 'Father'),
(140, '9i4rbj', 'SD20241150', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracebot', 'Accra lapaz', NULL, 'Female', 'Mother'),
(141, '8ln8ih', 'SD20241151', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluari', 'dome', NULL, 'Female', 'Auntie'),
(142, 'ynlltb', 'SD20241152', 'bbb', '', NULL, '', '', '', 'bbbwxv', '', NULL, '', ''),
(143, 'f31szl', 'SD20241160', 'Ben', 'Doku', NULL, 'dfgdsg@gmail.com', '23444444444', '234434553', 'Benu1b', 'sunyani Enclave', NULL, 'Male', 'Father'),
(144, 'rf88kl', 'SD20241160', 'Grace', 'Doku', NULL, 'fvsdvf@gmail.com', '244442323', '2323444355', 'Gracet89', 'Accra lapaz', NULL, 'Female', 'Mother'),
(145, 'and3oc', 'SD20241161', 'Zulu', 'Natal', NULL, '', '34354545656', '', 'Zuluysh', 'dome', NULL, 'Female', 'Auntie'),
(146, '1058q1', 'SD20241162', 'bbb', '', NULL, '', '', '', 'bbbyhg', '', NULL, '', '');

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
(1, 'sng5hf', 'nfhhnhf', 'NONE', 40, 'ehbehvbf erbuvhrbvhg', 'Asante', 'dfvdaf', '0.00', '0', 'Sun, 11 Aug 2024 09:02:26 GMT', '3434', '3434', 'ekvnbhif eibvhi eby rebyuhbr', 'true');

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
(1, 'undefined', 'asante', 'Sun, 11 Aug 2024 15:30:28 GMT', 'true', 'undefined');

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
(12, 'GNPC SCHOLARSHIP', '100.00', NULL, 'Fixed Value', 'false', NULL, 'None', 'Tue, 20 Aug 2024 14:50:16 GMT', 'undefined', NULL),
(13, 'SPECIAL INITIATIVE SCHOLARSHIP', '0', NULL, 'Percentage', '50', NULL, 'TUITION', 'Wed, 21 Aug 2024 08:06:30 GMT', 'undefined', NULL),
(14, 'QUIZ TEAM SCHOLARSHIP', '0', NULL, 'Percentage', '50', NULL, 'TOTAL FEE PAYABLE', 'Wed, 21 Aug 2024 08:06:30 GMT', 'undefined', NULL),
(15, 'SPECIAL', '50.00', NULL, 'Fixed Value', 'false', NULL, 'None', 'Wed, 21 Aug 2024 10:29:01 GMT', 'undefined', NULL),
(16, 'SPECIAL1', '0', NULL, 'Percentage', '20', NULL, 'TOTAL FEE PAYABLE', 'Wed, 21 Aug 2024 10:29:01 GMT', 'undefined', NULL);

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
('St Andrews Complex', 'Main Station Anselms Ave, Accra', '023443434355', '', NULL, NULL, 'info@st.andrews.com', 1);

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
(1, '!ST TERM 2024', 'JANUARY', 'Tue, 06 Aug 2024 15:08:40 GMT', 'Asante', 'false'),
(2, 'GREEN', 'JANUARY', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante', 'false'),
(3, 'GREEN', 'JANUARY', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante', 'false'),
(4, 'GGGGG', 'JANUARY', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante', 'false'),
(5, 'HPP', 'JANUARY', 'Wed, 07 Aug 2024 11:04:55 GMT', 'Asante', 'false'),
(6, '2ND TERM 2024', 'JANUARY', 'Wed, 21 Aug 2024 10:29:01 GMT', 'Asante', 'true');

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
('zhhmp6', 'user@user.com', 'Male', 'User', 'User', '34354645', '43543', 'Accra', NULL, 'Admin', NULL, 'dfg', 1, 'True');

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
(1, 'ryrfne', 'SD20241110', 'Jeremy', 'Doku', 'Manny', 'FGGF', NULL, 'GREEN', 'Christian', 'Male', '21/05/94', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(2, 'osb6to', 'SD20241111', 'Gregory', 'Aidoo', '', 'FGGF', NULL, 'GREEN', 'Other', '', '21/03/21', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(3, 'zksg6z', 'SD20241112', 'bbbbbb', 'bbbb', 'bbbb', 'FGGF', NULL, 'GREEN', 'bbbb', 'bbbb', 'bbbb', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(4, '0qv1t0', 'SD20241113', 'rrrr', '', '', 'FGGF', NULL, 'GREEN', '', '', '', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(5, 'og3nxd', 'SD20241114', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(6, '03hy1f', 'SD20241115', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(7, 'umadqa', 'SD20241116', 'rrrrrr', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(8, 'yrpv2n', 'SD20241117', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(9, '6d3pl8', 'SD20241118', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(10, 'a30hho', 'SD20241119', 'eeee', 'eeeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(11, 'x3rlv5', 'SD20241120', 'Jeremy', 'Doku', 'Manny', 'FGGF', NULL, 'GREEN', 'Christian', 'Male', '21/05/94', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(12, '8t25b1', 'SD20241121', 'Gregory', 'Aidoo', '', 'FGGF', NULL, 'GREEN', 'Other', '', '21/03/21', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(13, 'jfar5y', 'SD20241122', 'bbbbbb', 'bbbb', 'bbbb', 'FGGF', NULL, 'GREEN', 'bbbb', 'bbbb', 'bbbb', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(14, 'rpjc0y', 'SD20241123', 'rrrr', '', '', 'FGGF', NULL, 'GREEN', '', '', '', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(15, 'jk6jwp', 'SD20241124', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(16, '0alawp', 'SD20241125', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(17, 'd4184c', 'SD20241126', 'rrrrrr', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(18, 'uoe886', 'SD20241127', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(19, 'ey72n2', 'SD20241128', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(20, 'dvpq07', 'SD20241129', 'Jeremy', 'Doku', 'Manny', 'FGGF', NULL, 'GREEN', 'Christian', 'Male', '21/05/94', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(21, '0c458z', 'SD20241130', 'eeee', 'eeeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(22, '3nqepj', 'SD20241131', 'Gregory', 'Aidoo', '', 'FGGF', NULL, 'GREEN', 'Other', '', '21/03/21', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(23, 'mtfssb', 'SD20241132', 'bbbbbb', 'bbbb', 'bbbb', 'FGGF', NULL, 'GREEN', 'bbbb', 'bbbb', 'bbbb', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(24, '6y35zg', 'SD20241133', 'rrrr', '', '', 'FGGF', NULL, 'GREEN', '', '', '', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(25, 'lriwra', 'SD20241134', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(26, 'd9tgnj', 'SD20241135', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(27, 'eap0j4', 'SD20241136', 'rrrrrr', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(28, 'enis2b', 'SD20241137', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(29, 'mer1xz', 'SD20241138', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(30, '0xwdt7', 'SD20241139', 'eeee', 'eeeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(31, 'xahsx1', 'SD20241140', 'Jeremy', 'Doku', 'Manny', 'FGGF', NULL, 'GREEN', 'Christian', 'Male', '21/05/94', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(32, 'e38ea1', 'SD20241141', 'Gregory', 'Aidoo', '', 'FGGF', NULL, 'GREEN', 'Other', '', '21/03/21', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(33, '7epz36', 'SD20241142', 'bbbbbb', 'bbbb', 'bbbb', 'FGGF', NULL, 'GREEN', 'bbbb', 'bbbb', 'bbbb', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(34, 'm2hy3x', 'SD20241143', 'rrrr', '', '', 'FGGF', NULL, 'GREEN', '', '', '', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(35, 'j0qhmm', 'SD20241144', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(36, 'hfg52x', 'SD20241145', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'ww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(37, 'n387lx', 'SD20241146', 'rrrrrr', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(38, 'sv9mkv', 'SD20241147', 'eeee', 'eeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(39, 'mlx7et', 'SD20241148', 'rrrrr', 'eee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'www', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(40, 'ev3ai8', 'SD20241149', 'eeee', 'eeeee', 'eeee', 'FGGF', NULL, 'GREEN', 'eeee', 'wwww', 'wwww', 0, 'Awaiting Promotion', 'true', NULL, NULL),
(41, '32lfdj', 'SD20241150', 'Jeremy', 'Doku', 'Manny', 'KG 1', NULL, '', 'Christian', 'Male', '21/05/94', 0, 'current', 'true', NULL, NULL),
(42, '8iblvt', 'SD20241151', 'Gregory', 'Aidoo', '', 'KG 1', NULL, '', 'Other', '', '21/03/21', 0, 'current', 'true', NULL, NULL),
(43, '6897ek', 'SD20241152', 'bbbbbb', 'bbbb', 'bbbb', 'KG 2', NULL, '', 'bbbb', 'bbbb', 'bbbb', 0, 'current', 'true', NULL, NULL),
(44, 'myvhoh', 'SD20241153', 'rrrr', '', '', 'KG 2', NULL, '', '', '', '', 0, 'current', 'true', NULL, NULL),
(45, '6jjvm9', 'SD20241154', 'rrrrr', 'eee', 'eeee', 'KG 2', NULL, '', 'eeee', 'wwww', 'ww', 0, 'current', 'true', NULL, NULL),
(46, 'frzv54', 'SD20241155', 'eeee', 'eeee', 'eeee', 'KG 2', NULL, '', 'eeee', 'wwww', 'ww', 0, 'current', 'true', NULL, NULL),
(47, 'jrokcd', 'SD20241156', 'rrrrrr', 'eeee', 'eeee', 'KG 2', NULL, '', 'eeee', 'wwww', 'www', 0, 'current', 'true', NULL, NULL),
(48, '9p2s0z', 'SD20241157', 'eeee', 'eeee', 'eeee', 'KG 2', NULL, '', 'eeee', 'wwww', 'wwww', 0, 'current', 'true', NULL, NULL),
(49, 'wnrzx9', 'SD20241158', 'rrrrr', 'eee', 'eeee', 'KG 2', NULL, '', 'eeee', 'wwww', 'www', 0, 'current', 'true', NULL, NULL),
(50, 'ledvb4', 'SD20241159', 'eeee', 'eeeee', 'eeee', 'KG 2', NULL, '', 'eeee', 'wwww', 'wwww', 0, 'current', 'true', NULL, NULL),
(51, 'wnxy7d', 'SD20241160', 'Jeremy', 'Doku', 'Manny', 'PRIMARY 1', NULL, 'GOLD', 'Christian', 'Male', '21/05/94', 0, 'current', 'true', NULL, NULL),
(52, '1a70k3', 'SD20241161', 'Gregory', 'Aidoo', '', 'PRIMARY 1', NULL, 'GOLD', 'Other', '', '21/03/21', 0, 'current', 'true', NULL, NULL),
(53, '6no1oz', 'SD20241162', 'bbbbbb', 'bbbb', 'bbbb', 'PRIMARY 1', NULL, 'GOLD', 'bbbb', 'bbbb', 'bbbb', 0, 'current', 'true', NULL, NULL),
(54, 'gb4cnh', 'SD20241163', 'rrrr', '', '', 'PRIMARY 1', NULL, 'GOLD', '', '', '', 0, 'current', 'true', NULL, NULL),
(55, 'vptp0k', 'SD20241164', 'rrrrr', 'eee', 'eeee', 'PRIMARY 1', NULL, 'GOLD', 'eeee', 'wwww', 'ww', 0, 'current', 'true', NULL, NULL),
(56, 'msvd4h', 'SD20241165', 'eeee', 'eeee', 'eeee', 'PRIMARY 1', NULL, 'GOLD', 'eeee', 'wwww', 'ww', 0, 'current', 'true', NULL, NULL),
(57, 'wpb0m6', 'SD20241166', 'rrrrrr', 'eeee', 'eeee', 'PRIMARY 1', NULL, 'GOLD', 'eeee', 'wwww', 'www', 0, 'current', 'true', NULL, NULL),
(58, '8868ai', 'SD20241167', 'eeee', 'eeee', 'eeee', 'PRIMARY 1', NULL, 'GOLD', 'eeee', 'wwww', 'wwww', 0, 'current', 'true', NULL, NULL),
(59, 'gzq0uz', 'SD20241168', 'rrrrr', 'eee', 'eeee', 'PRIMARY 1', NULL, 'GOLD', 'eeee', 'wwww', 'www', 0, 'current', 'true', NULL, NULL),
(60, '3qxhxd', 'SD20241169', 'eeee', 'eeeee', 'eeee', 'PRIMARY 1', NULL, 'GOLD', 'eeee', 'wwww', 'wwww', 0, 'current', 'true', NULL, NULL);

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
('9x8l29', 'Jeremyuyx', 'student', '$2b$10$/SsLeSguAvwMvqK4bnrq..mkXjj9sBBFZS5a4o/kxkCwLNHPCbyIa', '0', 1, '9827', 'Tue, 13 Aug 2024 21:10:56 GMT', 'ASANTE', 'true'),
('ch1hz9', 'Benlxu', 'parent', '$2b$10$j7DcsJEobf5LsNoKZha6VuVMAWFq5CEoq1.UHLJ4WO5SIJPeTzz2.', '0', 2, '4457', 'Tue, 13 Aug 2024 21:10:56 GMT', 'ASANTE', 'true'),
('asp44t', 'Grace29v', 'parent', '$2b$10$r70JBL6Gzfm98J2RJnkI5eU4KPyPaq8tIuLFPx2wi6XTPMb/G4WJe', '0', 3, '6440', 'Tue, 13 Aug 2024 21:10:56 GMT', 'ASANTE', 'true'),
('2werj2', 'Gregorynsk', 'student', '$2b$10$PprbC.YHHsME7qlfXmafFOu2O./iQ0zewYquYcotGZnifLeeVZ2LC', '0', 4, '2327', 'Tue, 13 Aug 2024 21:10:56 GMT', 'ASANTE', 'true'),
('ulgqxs', 'Zulucbi', 'parent', '$2b$10$0xPgb.VfFDm9hBjdxlE5luJC.7sbz5civSgNutuWcG9pp6zsrNFce', '0', 5, '6071', 'Tue, 13 Aug 2024 21:10:56 GMT', 'ASANTE', 'true'),
('a6bqs0', 'Jeremyip4', 'student', '$2b$10$VzdeWHJA2lWpoujY8LT81eVvvJXDYyeD2oVbdhgr/Gek7dmWJB0yK', '0', 6, '9335', 'Tue, 13 Aug 2024 21:15:29 GMT', 'ASANTE', 'true'),
('71qdte', 'Benzqv', 'parent', '$2b$10$Clnvf354m3g/JNYtFR/XMeVDma5bnNm9iduho8lyaXLEvWpwhTfCa', '0', 7, '7680', 'Tue, 13 Aug 2024 21:15:29 GMT', 'ASANTE', 'true'),
('4i4upt', 'Grace2jl', 'parent', '$2b$10$S7HE95x7b4QxrDyKxGFdEOg4gl71RusLbupZJLySrvGwgpLQqHs1O', '0', 8, '8052', 'Tue, 13 Aug 2024 21:15:29 GMT', 'ASANTE', 'true'),
('nq2ak2', 'Gregoryoaw', 'student', '$2b$10$pg16mxfhriTjbcJnqqEAGuVu43i3gz7IQjzNw9go9Htc.RsMWao3a', '0', 9, '4445', 'Tue, 13 Aug 2024 21:15:29 GMT', 'ASANTE', 'true'),
('22vjsi', 'Zuluhe8', 'parent', '$2b$10$EEVdsKZcrLnUthYAQXmLuOmiHso3BnMG/PK8ij/R/u93YzGCPF.yq', '0', 10, '4347', 'Tue, 13 Aug 2024 21:15:29 GMT', 'ASANTE', 'true'),
('8rxl8k', 'Jeremykxx', 'student', '$2b$10$HkWqoPefKWo0CUUxe.Vl9OMONhf/ChVDrJUpjeRmli9/vzmRfntAW', '0', 11, '2130', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('evhjcd', 'Gracepfs', 'parent', '$2b$10$RszuM8OWZ1LxCCNouqhmhO1FnCHsybu37BQShxzwu6dCN1CtiaggC', '0', 12, '4860', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('jeezsi', 'Bennxl', 'parent', '$2b$10$KAc5x8GQQqWJc3faLkb3qe/PJeHhGzSvLOD6V6Pk6hXNbmHRwQIoK', '0', 13, '3774', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('kedfes', 'Gregory2s4', 'student', '$2b$10$9HvNV/7/lt1pnmu0cQwlUOQBlcrWTgkmm1ewUZ/6XPGjmoXehgtX2', '0', 14, '9351', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('seq9kj', 'Zuludqa', 'parent', '$2b$10$VMOELgfxiyWPgSd0Gb1E1eceZK1ucpquwQUdqZe6myHV/Oe6rM9Oi', '0', 15, '4779', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('lkdf7z', 'Jeremygpx', 'student', '$2b$10$vKiXJEhifCMQpsomsTznwectbRkeD/U52FQj32HQW/bJlWMZqEwW.', '0', 16, '3926', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('s7j606', 'Benrnb', 'parent', '$2b$10$stxF9lJ2Eqpa2iPsfDveP.R5AeLZVYUEKFStPWYXKAYrdHhRNKFY.', '0', 17, '5192', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('jszc5v', 'Graceor9', 'parent', '$2b$10$o1EegK0eed55RzWokCRhy.CcGv9ivBDpkP7.y3gH0yK0gOtTuDtuG', '0', 18, '7466', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('rr2r46', 'Gregoryufc', 'student', '$2b$10$FFURiGBnWkDL929F26A/i.AGHRd0f9eaoqoaYA751rGWzsW8rodJi', '0', 19, '3414', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('aks119', 'Zulusyd', 'parent', '$2b$10$SQy1w93JOVbna2xQEeweD.uMXAFzU.GonCZHSphvq4CcLqcC4oBoW', '0', 20, '8219', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('86chka', 'Jeremye1o', 'student', '$2b$10$MeCI/G2.zH0OkG.WVVA4qezL7fMEa84HPDIZn6LLPIFRyh7mAQzAe', '0', 21, '6250', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('od4kgz', 'Benkmv', 'parent', '$2b$10$RrATLlj8hC7lh4AKUENTAO28H3x9G4ZrYZJekipi/BDvtQD8qjmEm', '0', 22, '8758', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('oisosp', 'Gracexz8', 'parent', '$2b$10$dpNcelEISeoS1zW4zEowgehvrLANVrU3uhQ0obmxb3WVDo7auB4IC', '0', 23, '9838', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('qkh0ld', 'Gregoryjki', 'student', '$2b$10$CXtq9mrGM2xrlpeRcjY8OeGfD4X4BOb.qcsW0UxDgR5YzATltsjzS', '0', 24, '1429', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('pnmn2o', 'Zuludir', 'parent', '$2b$10$GWyvdX0F.vf6xy.ssJ8KKeAwkh/C4TREgoPufxNx7YsWgvDx957eO', '0', 25, '4020', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('y8twub', 'Jeremyjbd', 'student', '$2b$10$n9a.K7tMorfJOdwTfHK8T.PbYz8iXQPuS.HBz1emMiWcob1UtqOtq', '0', 26, '3292', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('khwrz5', 'Bene2j', 'parent', '$2b$10$aXoXddKjsw1Fqcm.db5E2uzP0p7lkaBXOVd88BSBT/qWNVddjMUie', '0', 27, '8113', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('g0he66', 'Graceycb', 'parent', '$2b$10$iXVxTf1yzj/1znpG0yOLWe1bCFLD55Ya9mIFk9nHgOSRSoqP7Updi', '0', 28, '7514', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('9vism3', 'Gregoryyg4', 'student', '$2b$10$nFHhxFDoKMv8YlwnWLrquuzVc7FpDMbV5pbtqqX3D3izmylf/g6t6', '0', 29, '3483', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('xxrve1', 'Zulupek', 'parent', '$2b$10$rKTZ8./IUFb930bEV1VyZeYUALq/hcQsUMuFsAoitpySb9zbP7isu', '0', 30, '1449', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('t6jquy', 'Jeremyvg4', 'student', '$2b$10$rybNoh.oH6PVGhuzE1pOC.XZ/dUIw2FGQPiXDkVyuOFTQ.CAHMzTm', '0', 31, '4627', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('nrh94q', 'Benwkw', 'parent', '$2b$10$gvK8B1iM18GlZfFvyzHwmOelNZmTbvxYjspxTtLNyZK8gXYjBh/hW', '0', 32, '4501', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('wtr63h', 'Gracelwz', 'parent', '$2b$10$bCyXEzlJHjj6t4kNaNoa8.Wat7T6UDMQdOhNSByKN0cKayyEjPMkq', '0', 33, '2064', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('u14fcp', 'Gregoryfie', 'student', '$2b$10$g4Zx6EMDSmV1f7gRfMaAKesCfRWD8CFQBQJy1q2AR/bwmveRjxXEq', '0', 34, '1620', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('6syslj', 'Zuluy1j', 'parent', '$2b$10$pRyGXdwQeOLqhTPZCtGa3.YFMmn85PaaTyirZ5l8urWqXuc6vMKua', '0', 35, '9810', 'Wed, 14 Aug 2024 17:18:13 GMT', 'ASANTE', 'true'),
('ryrfne', 'Jeremywnu', 'student', '$2b$10$MDMf5MD80i59.EJ8PpnB3.pZXQ0pkLTuRKO1802EKee84KkjLjIT.', '0', 36, '6737', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('c349fh', 'Gracesod', 'parent', '$2b$10$iv8x4.2zDCKd0wOPVbIe.OjynNx6CO.BVmk1/W2NsgcIPUqpZt.O2', '0', 37, '7656', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('vo5upj', 'Ben1kf', 'parent', '$2b$10$Hom9jg527joksBEWxgN9Rub2ONSgnIwN6PXpN5zKV8rwPT7rKv0n2', '0', 38, '1593', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('osb6to', 'Gregorynon', 'student', '$2b$10$ri0ZfG34imDr50QshMftGuk7/7uZVBAVbVYMkd2zSzXzLBGAynkBO', '0', 39, '4614', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('ligo4y', 'Zuluftg', 'parent', '$2b$10$hoRmELuMse4zqQvAIQltp.D5zLbhJJL.pENBXFWuedkBdHspTZkN.', '0', 40, '3208', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('zksg6z', 'bbbbbb4gv', 'student', '$2b$10$Hcw3uSjuxM.9e43QMUsCkeFS16jKTSZwF/4BhCNUNpvQiqZGaA3XG', '0', 41, '3735', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('l0s535', 'bbbazi', 'parent', '$2b$10$chWb1N4GhMNuQtNfChpmS.j2VW0ZHK/xTkF7MwhSFlILCzpuhfhE.', '0', 42, '4944', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('0qv1t0', 'rrrr2je', 'student', '$2b$10$tSRHJvzZrlED0U7fJRZIAut9LB2xwxFBIfgCoAXEofgPjZE2fpH3a', '0', 43, '4983', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('og3nxd', 'rrrrr3hf', 'student', '$2b$10$ZGkpSu80g0x1f5s3sk2cEuL.0aO2.LoaKObNOQbcWuyrscpURhY7.', '0', 44, '3006', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('03hy1f', 'eeeeulh', 'student', '$2b$10$7bSjOhEc13oAchLJ7wXqd.9RBSckspbZQbZNXRN2CAd38R8GluEvS', '0', 45, '7027', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('umadqa', 'rrrrrrljd', 'student', '$2b$10$CSNYW0RgjRhBfyI1K6MgM.bW6.8SwZo/ZKHHqFdhPjxSXS7hWmrpu', '0', 46, '3238', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('yrpv2n', 'eeeelju', 'student', '$2b$10$Hfdr1ik5hyJx8D3lvrXbY.4K5SSWxtIkkSmKgyg8mUxcYDM6l7acS', '0', 47, '4496', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('6d3pl8', 'rrrrrsks', 'student', '$2b$10$CAZlMoEFGQWXdLgUy82TC.mgxzfQsa3/tHS1KQzW/7JzxhwofDs/S', '0', 48, '3874', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('a30hho', 'eeeeqvf', 'student', '$2b$10$XtgagtXiH0hg/zU8g./NleXdooAwDfo0OZI8oTzPq3YN37E.QWq7O', '0', 49, '1302', 'Wed, 14 Aug 2024 17:38:53 GMT', 'ASANTE', 'true'),
('x3rlv5', 'Jeremyy5k', 'student', '$2b$10$DfoEq9byzsjOvtjtA9Uoku5o9fEeVy0/o/Hu9JIm1ez.Lo1dsl6U6', '0', 50, '9156', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('h377ps', 'Benddg', 'parent', '$2b$10$hRjJgn60TE6U7NvSaBn6de4sCbolNG9E74nywURH1uuWAT3GHQBfi', '0', 51, '4548', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('j09wgw', 'Gracelqa', 'parent', '$2b$10$B3uQ77PcFQZRpPfhFjYsV.2Xw9IIcYU8E2BsM.MMfIKO76LG0.ZRW', '0', 52, '8424', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('8t25b1', 'Gregoryw2r', 'student', '$2b$10$kM75o4mkhUl0pDl6YqhzeODWh7i2MdCcLD0TTOIVTWFNAe05HW.n6', '0', 53, '8868', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('ieef19', 'Zuluqds', 'parent', '$2b$10$XVwyawONm8dLyITbS1c6Fuw8GwqExqT2H4AazeGeVYvtPGQMprHWW', '0', 54, '5169', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('jfar5y', 'bbbbbbxxh', 'student', '$2b$10$NpRhf1Qn9XZ5bgpW0AeukuSr3CQHD2Ul4/EbYvY9NVB5AEGK81yVC', '0', 55, '8381', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('63lwao', 'bbbgxx', 'parent', '$2b$10$ZRVjbuVKWtzj.GOgcqdsG.l8X5ixvzr./BnPRebAHEzoVmGOhy1Ve', '0', 56, '7365', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('rpjc0y', 'rrrrifm', 'student', '$2b$10$ixrcnBceneIhXW5VQ2bl5eoA9hrzUs1B09Y9HuGgkca3qNTUe1IJe', '0', 57, '4233', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('jk6jwp', 'rrrrreml', 'student', '$2b$10$kbeb3UlNxLCRVUjtnce2F.q5OCIfjf2adlaFFQtved.bn6qP.E19e', '0', 58, '9611', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('0alawp', 'eeeee9x', 'student', '$2b$10$KMqhBs0J2JtHGeRDrhBrNuuYCoA/TqB/llTIytP3bnR5otqa21/mG', '0', 59, '3235', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('d4184c', 'rrrrrrvss', 'student', '$2b$10$d0ynICTZyCFnn5O/BNK.N.eYsg0JFOI.yfEYkGVZ//y0Zag370NV6', '0', 60, '9794', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('uoe886', 'eeeeljv', 'student', '$2b$10$KaFOYtLzGNpgFbB3mi77We15AM1sb0JORhjoPpGgtiPa7Call1UX6', '0', 61, '6869', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('ey72n2', 'rrrrrw27', 'student', '$2b$10$sTrtzKaZHPrn194f5Ee7UeW6I6td85gwWwB0xWzmYBc20iizeMbGC', '0', 62, '5048', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('dvpq07', 'Jeremyy5k', 'student', '$2b$10$7V.GYApPusP/fiJPCbiITOXkeIef9Ps0nimRgEHjA6L0c.h8uiW/O', '0', 63, '7811', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('xvny4w', 'Benddg', 'parent', '$2b$10$mXolWU75Ii.xdJyof9kt/ea3KnlOCMOfmhT1NCo35DploGHSfmkvK', '0', 64, '6580', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('dmycdo', 'Gracelqa', 'parent', '$2b$10$CTnn0UxnnH/U7gw1caoY9OA/46Qf5I07msgbVtCsR5a5xWsBH7pW6', '0', 65, '1867', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('0c458z', 'eeeeiue', 'student', '$2b$10$Y0yESRUca44yEjpzF84Kl./0qsgtUNiA/KVfzwfpylSIIgLi6XV6O', '0', 66, '3492', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('3nqepj', 'Gregoryw2r', 'student', '$2b$10$WtNDlCN.aonwZzgMBVEX1uT1LH45CDpgR/TeSRq.kDMJ6cZ5JLzv6', '0', 67, '7996', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('lh2o5k', 'Zuluqds', 'parent', '$2b$10$9ibqJWqy8fXeGuDAYTUJa.wSe9g5BexBcdsUxVVebBdI9CNwRP14S', '0', 68, '2137', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('mtfssb', 'bbbbbbxxh', 'student', '$2b$10$Z3sRto8LjLCGew/7r36mqukOoEFwZjK/CoawUFcpGaC29nHnp3dI2', '0', 69, '2710', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('4zg4he', 'bbbgxx', 'parent', '$2b$10$wQinAI7xdElzsCeks4mCjuiMgp.qj9BA7jeum44iyuYFZWFqZqO2O', '0', 70, '4855', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('6y35zg', 'rrrrifm', 'student', '$2b$10$ySKFHLvHTQDpoXkF.x36/OZ4SWxI4Ip126DUu6yE5UXuvVDRclSd.', '0', 71, '2426', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('lriwra', 'rrrrreml', 'student', '$2b$10$nuGIOkEeQFn0eOomUgNq0upAFTITW8USKb.1iYSTMM90sxWrDBme.', '0', 72, '1421', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('d9tgnj', 'eeeee9x', 'student', '$2b$10$/3eaePD4pdRQWWftxl1rGOc02fS.WdJoZ8i5tapJZI.FCxgkCgL0i', '0', 73, '7957', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('eap0j4', 'rrrrrrvss', 'student', '$2b$10$K2bxDh6k3f8KVihmUsOWk.WPH2yaLyXD1ZNPSrhd4H6oIhQ4PjZxm', '0', 74, '7813', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('enis2b', 'eeeeljv', 'student', '$2b$10$BmvClVkOE8BswZDTs0lWBO2QsIfjaeGTDxEk72sx0uRY0bTWAA1E6', '0', 75, '9534', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('mer1xz', 'rrrrrw27', 'student', '$2b$10$jzEnbwOcoSn1kKl3Ydd01u5A.WE55msDw8Bvncks3uahTb7ED4j9G', '0', 76, '7989', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('0xwdt7', 'eeeeiue', 'student', '$2b$10$fv9ReX8ltMzOohdn.aZbp.03UdwREOPEoVOYjA92MuLEiWeRXR2Y6', '0', 77, '7856', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('xahsx1', 'Jeremyslq', 'student', '$2b$10$emLA4nelkRRe1l9th.FWBub8JcAfXg83b6bDrnv2fL91g.1/w79Qe', '0', 78, '8497', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('pg2ohc', 'Benagh', 'parent', '$2b$10$DifK1y7ar/6Q3s9qwzZiv.r5ccki/pNgva0dXnSgwfsCdrnyLuirG', '0', 79, '3880', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('cqpvff', 'Gracew9o', 'parent', '$2b$10$0FIJXYzXe7tgk8ocOVJVpOh0CTb/9gtG72s60JPQFQ7G9mkqEqj7G', '0', 80, '8108', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('e38ea1', 'Gregoryrmn', 'student', '$2b$10$Gyf6WB0nGTXGJmSoiVTCfeYcGQOSfYS0/d8pzdAhbug5fjpV5a3z6', '0', 81, '3820', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('59gvfx', 'Zuluo5i', 'parent', '$2b$10$1zkvuKjTjiOdrYKfFswjZOfelPiLaxzwOZy12H5IvuFHDNajGBaL.', '0', 82, '5273', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('7epz36', 'bbbbbbjft', 'student', '$2b$10$ST4IP2VxTZmzw.VCGcYJ8.6ve8qvjx2nAxhDpDVnLunbeny4W/Rpq', '0', 83, '5421', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('o2mxox', 'bbbnnd', 'parent', '$2b$10$jsaFhl7U2nPrptNQrDVUduseZS/2GUaNImcqP7ukcmWlfXhV1PbhW', '0', 84, '2913', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('m2hy3x', 'rrrrgnv', 'student', '$2b$10$fS3aLJjC1XlHn/VZQ96o..R63lDrvc/VyGAXG6SWpqsrBj.lZkNjC', '0', 85, '3437', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('j0qhmm', 'rrrrrbzf', 'student', '$2b$10$Bd4oQEOX5IhU8TAXGYkri.v11yKshDXXqhy6fvp.FI6DOl.tW8PPm', '0', 86, '5501', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('hfg52x', 'eeeebld', 'student', '$2b$10$qd6yiXpA9PyWg1McA0HgxOX0KV.H/1GQ8mzYLRMOOOGD8snNaIZRy', '0', 87, '5689', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('n387lx', 'rrrrrrgsf', 'student', '$2b$10$PpzjyVTlsBDSCrD9BJJ3auDBtqgBT15KRTJFBGtwlE3J2gDBs7VmK', '0', 88, '8400', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('sv9mkv', 'eeeela3', 'student', '$2b$10$moYlsqxVoEoH9AropnVOM.YBKqD89B8BKJ/8P755BwK9WRknrFhP.', '0', 89, '7185', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('mlx7et', 'rrrrrl3j', 'student', '$2b$10$P6ECHQa9Gb2TXbZ0ecvBIOgg34RF3DH3olFRSiiXS.VuZkkrjEj1G', '0', 90, '7628', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('ev3ai8', 'eeee5j2', 'student', '$2b$10$MXp2JO9EcOApIfkUspn0pO.m689Sy1Q1Yfohf0GGqI9srCebeVme2', '0', 91, '3658', 'Mon, 19 Aug 2024 14:10:15 GMT', 'ASANTE', 'true'),
('32lfdj', 'Jeremychr', 'student', '$2b$10$IGxPcl5wOSLv0vopCNXxvO1FaNPPjNjA607DXhBrY/Ol/8ndsSLXa', '0', 92, '7373', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('9i4rbj', 'Gracebot', 'parent', '$2b$10$OEYA3chA8QWkoSTjTVE7Qeqj3JuDYz3jKoxJ8Lf4eOAMtB.zNfxFa', '0', 93, '6770', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('0g2mag', 'Ben6jf', 'parent', '$2b$10$PmnARSiSHTIvuQIPlL/PAeljNNz2cldF8Yh83TcnbPbBW14mdrrfK', '0', 94, '7684', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('8iblvt', 'Gregoryoes', 'student', '$2b$10$J3ITR2pmdAF1eh5H0ouggujRKkXko6kt/L6qMHoIeHecjuNUOyaUa', '0', 95, '2079', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('8ln8ih', 'Zuluari', 'parent', '$2b$10$1BETljBTfCcFspIMnwMdSueAugu6AbY9FvF.HrXgX6EiVjfU798Gm', '0', 96, '2947', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('6897ek', 'bbbbbb79c', 'student', '$2b$10$faHOIe40l395./OBh9Q5zudZ.rom.Ut7J5JWoeMoE21FwkgziqsHe', '0', 97, '1400', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('ynlltb', 'bbbwxv', 'parent', '$2b$10$U9Es2y.ldlxOygS0ikdCSeQFJEYsBjWxnt9rFdJpi3VLqbtDw.m4G', '0', 98, '3946', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('myvhoh', 'rrrrkdj', 'student', '$2b$10$jX60jeVkQXukromcM0zIL.bqoJ378ffbWdthYTeyjx9s.aMkphpCe', '0', 99, '6936', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('6jjvm9', 'rrrrrglc', 'student', '$2b$10$0uJinBSGpW42QZdRmiqU9uEz6WlGWEgQ6p0qfLOlmMKB4MIhMgA3K', '0', 100, '9604', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('frzv54', 'eeeeijm', 'student', '$2b$10$v5SugpaGyU9HY7hAvVUrueSHd3L8ht1GuFbLary3SSjkmOQUwzHvC', '0', 101, '3556', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('jrokcd', 'rrrrrr9bs', 'student', '$2b$10$5RA7LmiaAkBBgxXLbobN7.ph9OLL5s3OFpGlLAtZifMPhQ.4ijAve', '0', 102, '3312', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('9p2s0z', 'eeeeecw', 'student', '$2b$10$.OZwUZclXiAJQa/iHRPXW.prdTqKSWmcr4KQs/I4e6nJDB/ufxKny', '0', 103, '9727', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('wnrzx9', 'rrrrrrnm', 'student', '$2b$10$Z0KrhoaTCi197ueWlVM23unVnxZISXSIim4edAuRRkbA4lVXjgBl2', '0', 104, '3941', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('ledvb4', 'eeeef2w', 'student', '$2b$10$7rik3q76s/zTxIkXGh3LnOJs/vAy2hUX3VGNj5ZRzxh45zNAV/vpm', '0', 105, '8457', 'Wed, 21 Aug 2024 10:29:00 GMT', 'ASANTE', 'true'),
('wnxy7d', 'Jeremy17a', 'student', '$2b$10$nByDF2FRtZchZDbSp4NJjOueQ9vwu6RshZRXUkDRoAUvRytLuRS5K', '0', 106, '4971', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('f31szl', 'Benu1b', 'parent', '$2b$10$TjB4FEtR8O01/yXomHfTCuT71/cJAy91YdXm37v6lz.r6GsM9Rihu', '0', 107, '6513', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('rf88kl', 'Gracet89', 'parent', '$2b$10$kOq2SIVhvOKstp63gNl6Y..FutYoa2K5Y5P8EmMGz9/u9ACa5kkRi', '0', 108, '5805', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('1a70k3', 'Gregoryykb', 'student', '$2b$10$ZYOIwFhfzSciZOevf7IyUufVWnRfMAWd6.GQZYaRp/l4N4Y1Kh0Bq', '0', 109, '9173', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('and3oc', 'Zuluysh', 'parent', '$2b$10$aFM3kL8P023o0olY0sjMRuEN4n0AHf.uKpKedfDLFKRjg3/p4Mxs6', '0', 110, '1353', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('6no1oz', 'bbbbbbewi', 'student', '$2b$10$1bucD6dKAWoiqFz.5lOuHOG6FL7Y9m7Pj23QrFvdSG4.9CGartA0W', '0', 111, '1195', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('1058q1', 'bbbyhg', 'parent', '$2b$10$WMLjXBkMYveblSlF8NdT0.REkHncaMARXMY3esSuRakwg3OlCEjMe', '0', 112, '8934', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('gb4cnh', 'rrrr95h', 'student', '$2b$10$5wmTXrWdVrSgMARtW10.BOWoAKQXiPldICIVuQNield4KO/rsT5Ye', '0', 113, '7220', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('vptp0k', 'rrrrrtnx', 'student', '$2b$10$2fbcYyTwR3pYVBqJUmprSeQgVj1M2/HVPO.fWEfA1sOU6yMcclzE6', '0', 114, '7402', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('msvd4h', 'eeeejat', 'student', '$2b$10$3V0Fbcy4WeDo.SbtY9UkXuD.B9bYdTSux2vbVK0i0.2XnH0xk0meK', '0', 115, '5986', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('wpb0m6', 'rrrrrraap', 'student', '$2b$10$sSTJyVr0d9dxGKEYL/snqO5TasIR8qO8Rkv7lR8CBUz28fhEMu7Au', '0', 116, '6790', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('8868ai', 'eeeemmu', 'student', '$2b$10$YdnNZhOpxrY8Eps9itWHNeoD.fgQGEoOclKHFS.FFAdRruh2gI5eC', '0', 117, '9956', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('gzq0uz', 'rrrrrvem', 'student', '$2b$10$/B4BycsOm4XqbZ73QFNTBe5anXIHb7O91EeUaAKhVktHwksMcLRRy', '0', 118, '2473', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true'),
('3qxhxd', 'eeeeiyp', 'student', '$2b$10$nTj1J6/v91Up5FPGrDqp4uDqDt9lmtzoJFXRQnXWMZorA4XPlhwwq', '0', 119, '1661', 'Thu, 22 Aug 2024 12:23:25 GMT', 'ASANTE', 'true');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `assignfeecartegory`
--
ALTER TABLE `assignfeecartegory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `assignfeerecord`
--
ALTER TABLE `assignfeerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
-- AUTO_INCREMENT for table `feepaymentrecords`
--
ALTER TABLE `feepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feesgroup`
--
ALTER TABLE `feesgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `financelog`
--
ALTER TABLE `financelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `guardianId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarshiplist`
--
ALTER TABLE `scholarshiplist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
