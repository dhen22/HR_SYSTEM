-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 08:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement_list`
--

CREATE TABLE `announcement_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `to_` text NOT NULL,
  `from_` text NOT NULL,
  `date_` datetime NOT NULL,
  `cc_` text NOT NULL,
  `ref_` text NOT NULL,
  `re_` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_list`
--

INSERT INTO `announcement_list` (`id`, `title`, `description`, `date_created`, `date_updated`, `to_`, `from_`, `date_`, `cc_`, `ref_`, `re_`) VALUES
(21, 'ANNOUNCEMENT 1', '<p><font color=\"#000000\">SAMPLE <span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span><span style=\"font-size: 0.875rem;\">SAMPLE </span></font><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE </span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span></p>', '2023-06-22 16:12:02', '2023-06-26 14:20:25', 'ALSC EMPLOYEES', 'HR DEPARMENT', '0000-00-00 00:00:00', 'MANCOM', '2023', 'JUNE HOLIDAY'),
(22, 'ANNOUNCEMENT 2', '<p>JUNE HOLIDAY&nbsp;<span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY&nbsp;</span><span style=\"font-size: 0.875rem;\">JUNE HOLIDAY</span></p>', '2023-06-26 14:06:11', NULL, 'ASIAN LAND GROUP EMPLOYEE', 'HR DEPARMENT', '0000-00-00 00:00:00', 'MANCOM', '2023', 'JUNE HOLIDAY'),
(24, 'ANNOUNCEMENT 3', '<p><span style=\"color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: 0.875rem;\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE&nbsp;</span><span style=\"font-size: 0.875rem; color: rgb(0, 0, 0);\">SAMPLE</span><br></p>', '2023-06-26 14:20:53', NULL, 'ASIAN LAND GROUP EMPLOYEE', 'HR DEPARMENT', '0000-00-00 00:00:00', 'MANCOM', '2023', 'JULY HOLIDAY');

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(2, 'IT Department', 'Information Technology Department', '2021-08-21 10:16:06', NULL),
(3, 'Accounting & Finance Dept.', 'Accounting and Finance Department', '2021-08-21 10:18:00', '2021-08-21 10:18:17'),
(4, 'HR Department', 'HR department', '2023-06-22 15:58:40', NULL),
(5, 'Billing Department', 'Billing', '2023-06-26 14:48:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(1, 'Staff', 'Office Clerk', '2021-08-21 10:22:03', NULL),
(2, 'Programmer', 'Programmer', '2021-08-21 10:22:35', NULL),
(3, 'Web Developer', 'Web Developer', '2021-08-21 10:22:52', NULL),
(4, 'HR Staff', 'Human Resource Staff', '2021-08-21 10:23:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_meta`
--

CREATE TABLE `employee_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_meta`
--

INSERT INTO `employee_meta` (`user_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(18, 'type', '3', '2023-06-22 08:56:34'),
(18, 'employee_id', '10157', '2023-06-22 08:56:34'),
(18, 'firstname', 'Edhen', '2023-06-22 08:56:34'),
(18, 'middlename', 'SG', '2023-06-22 08:56:34'),
(18, 'lastname', 'Sese', '2023-06-22 08:56:34'),
(18, 'dob', '2023-06-07', '2023-06-22 08:56:34'),
(18, 'contact', '09082386888', '2023-06-22 08:56:34'),
(18, 'address', '0416 zone 2 san isidro', '2023-06-22 08:56:34'),
(18, 'department_id', '2', '2023-06-22 08:56:34'),
(18, 'designation_id', '2', '2023-06-22 08:56:34'),
(18, 'username', 'den', '2023-06-22 08:56:34'),
(18, 'approver', 'off', '2023-06-22 08:56:34'),
(18, 'leave_type_ids', '4,2,1', '2023-06-22 10:35:48'),
(18, 'leave_type_credits', '{\"4\":\"100\",\"2\":\"16\",\"1\":\"15\"}', '2023-06-22 10:35:48'),
(19, 'type', '3', '2023-06-22 16:27:42'),
(19, 'employee_id', '10158', '2023-06-22 16:27:42'),
(19, 'firstname', 'Liezel', '2023-06-22 16:27:42'),
(19, 'middlename', 'SG', '2023-06-22 16:27:42'),
(19, 'lastname', 'Sanchez', '2023-06-22 16:27:42'),
(19, 'dob', '2023-06-14', '2023-06-22 16:27:42'),
(19, 'contact', '09082386888', '2023-06-22 16:27:42'),
(19, 'address', '0416 zone 2 san isidro', '2023-06-22 16:27:42'),
(19, 'department_id', '2', '2023-06-22 16:27:42'),
(19, 'designation_id', '1', '2023-06-22 16:27:42'),
(19, 'username', 'liezel', '2023-06-22 16:27:42'),
(19, 'approver', 'off', '2023-06-22 16:27:42'),
(19, 'leave_type_ids', '2,1', '2023-06-22 16:32:56'),
(19, 'leave_type_credits', '{\"2\":\"15\",\"1\":\"10\"}', '2023-06-22 16:32:56'),
(20, 'type', '3', '2023-06-26 14:17:56'),
(20, 'employee_id', '10156', '2023-06-26 14:17:56'),
(20, 'firstname', 'Jude', '2023-06-26 14:17:56'),
(20, 'middlename', 'DC', '2023-06-26 14:17:56'),
(20, 'lastname', 'Dela Cruz', '2023-06-26 14:17:56'),
(20, 'dob', '2023-06-06', '2023-06-26 14:17:56'),
(20, 'contact', '09082386888', '2023-06-26 14:17:56'),
(20, 'address', '0416 zone 2 san isidro', '2023-06-26 14:17:56'),
(20, 'department_id', '2', '2023-06-26 14:17:56'),
(20, 'designation_id', '3', '2023-06-26 14:17:56'),
(20, 'username', 'jude', '2023-06-26 14:17:56'),
(20, 'approver', 'off', '2023-06-26 14:17:56'),
(20, 'leave_type_ids', '2,1', '2023-06-26 14:18:08'),
(20, 'leave_type_credits', '{\"2\":\"15\",\"1\":\"15\"}', '2023-06-26 14:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `leave_type_id` int(30) DEFAULT NULL,
  `reason` text NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=approved, 2=denied,3=cancelled',
  `approved_by` int(30) DEFAULT NULL,
  `leave_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `user_id`, `leave_type_id`, `reason`, `date_start`, `date_end`, `type`, `status`, `approved_by`, `leave_days`, `date_created`, `date_updated`) VALUES
(9, 18, 2, 'Sick Family', '2023-06-22 00:00:00', '2023-06-22 00:00:00', 1, 1, 1, 1, '2023-06-22 08:57:51', '2023-06-26 09:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `default_credit` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `code`, `name`, `description`, `default_credit`, `status`, `date_created`, `date_updated`) VALUES
(1, 'VL', 'Vacation Leave', 'Vacation Leave with Pay', 10, 1, '2021-08-21 10:39:47', NULL),
(2, 'SL', 'Sick Leave', 'Leave type for calling sick with pay', 5, 1, '2021-08-21 13:48:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memo_list`
--

CREATE TABLE `memo_list` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'ALSC PORTAL'),
(6, 'short_name', 'ALSC'),
(11, 'logo', 'uploads/1687155960_1686885840_1674110340_logo2.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1629510720_company.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-08-21 12:48:19'),
(15, 'Edhen', NULL, 'Sese', 'denden', '0192023a7bbd73250516f069df18b500', 'uploads/1687334220_13_user.png', NULL, 2, '2023-06-21 15:57:57', NULL),
(16, 'Liezel', NULL, 'Sanchez', 'zel', '0192023a7bbd73250516f069df18b500', 'uploads/1687334280_19_user.png', NULL, 2, '2023-06-21 15:58:39', NULL),
(17, 'jude', NULL, 'dela cruz', 'judz', '0192023a7bbd73250516f069df18b500', 'uploads/1687334340_14_user.png', NULL, 1, '2023-06-21 15:59:25', NULL),
(18, 'Edhen', 'SG', 'Sese', 'den', 'cadc4583c983c78f9cb03ec0a7ddaf1f', 'uploads/18_user.png', NULL, 3, '2023-06-22 08:56:34', '2023-06-22 08:56:35'),
(19, 'Liezel', 'SG', 'Sanchez', 'liezel', 'a5c7b30fb632c92feb59154517223dc9', 'uploads/19_user.png', NULL, 3, '2023-06-22 16:27:42', '2023-06-22 16:27:43'),
(20, 'Jude', 'DC', 'Dela Cruz', 'jude', 'f376b8ae6217d18ca5ebcc8b402b63a1', 'uploads/20_user.jpg', NULL, 3, '2023-06-26 14:17:56', '2023-06-26 14:17:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement_list`
--
ALTER TABLE `announcement_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memo_list`
--
ALTER TABLE `memo_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement_list`
--
ALTER TABLE `announcement_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `memo_list`
--
ALTER TABLE `memo_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD CONSTRAINT `employee_meta_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `leave_applications_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
