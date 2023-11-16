-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 08:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
  `re_` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_list`
--

INSERT INTO `announcement_list` (`id`, `title`, `description`, `date_created`, `date_updated`, `to_`, `from_`, `date_`, `cc_`, `ref_`, `re_`, `message`) VALUES
(58, 'PANDESAL PARTY', '<p>Dear AsianLanders,</p><p><br></p><p>Let\'s celebrate Asian Land as one of the happiest workplaces on earth!aaa</p><p>Please be informed that October 18, 2023 - Wednesday, Will be our 2nd <b>PANDESAL PARTY </b>for 2023.</p><p>Themed as \"<b>ALSC GOES DISNEY</b>\", everyone is enjoined to be part of this event. This will be hours of updates, fun, surprises and prizes. Venue will be at The Clubhouse @ Dream Crest Private Residences.</p><p><br></p><p>Please come in your favorite Disney character outfit on this day and win exciting prizes. Watch out for more details and mechanics about this costume contest.</p>', '2023-10-03 11:09:05', '2023-11-11 18:42:34', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ FILE', 'HRD - 2023 - 27 / REV - 000', 'OCTOBER PANDESAL PARTY', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos & Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>'),
(60, '\"KAINANG PAMILYA MAHALGA\"', '<p>Please be informed that Management approved early dismissal at 4pm on Monday September 25, 2023 in support of the annual \"\"Kainang Pamilya Mahalaga\" Day initiative of the local and national government.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-10-06 10:08:30', NULL, 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD - 2023 - 026 / Rev - 000', '\"KAINANG PAMILYA MAHALAGA\" Day', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos &amp; Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>'),
(61, 'HOLIDAYS', '<p>Please be informed of the following holidays:</p><p>August 21 (Monday) - Special Non - working day</p><p>                                  - Ninoy aquino day</p><p>August 28 (Monday) - Regular Holiday</p><p>                                   - Heroes day</p><p><br></p><p>Please be guided accordingly.</p>', '2023-10-06 11:26:16', '2023-10-06 11:26:38', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD -2023 - 024 / Rev -000', 'AUGUST HOLIDAY', '<p>Holiday in month of August 2023, </p><p>Please attached file</p>'),
(69, 'SAMPLE', '<p>SAMPLE<br></p>', '2023-11-12 13:34:54', NULL, 'SAMPLE', 'SAMPLE', '0000-00-00 00:00:00', 'SAMPLE', 'SAMPLE', 'SAMPLE', '<p>SAMPLE</p>'),
(70, 'SAMPLESAMPLE', '<p>SAMPLESAMPLE<span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><span style=\"font-size: 0.875rem;\">SAMPLESAMPLE</span><br></p>', '2023-11-12 16:33:51', NULL, 'SAMPLESAMPLE', 'SAMPLESAMPLE', '0000-00-00 00:00:00', 'SAMPLESAMPLE', 'SAMPLESAMPLE', 'SAMPLESAMPLE', '<p>SAMPLESAMPLE</p>');

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
(4, 'HR Staff', 'Human Resource Staff', '2021-08-21 10:23:18', NULL),
(7, 'Technical Support', 'IT DEPARTMENT', '2023-08-08 15:38:50', NULL);

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
(45, 'type', '3', '2023-09-26 15:52:20'),
(45, 'employee_id', '10157', '2023-09-26 15:52:20'),
(45, 'firstname', 'Edhen', '2023-09-26 15:52:20'),
(45, 'middlename', 'Bagondol', '2023-09-26 15:52:20'),
(45, 'lastname', 'Sese', '2023-09-26 15:52:20'),
(45, 'dob', '1999-08-28', '2023-09-26 15:52:20'),
(45, 'contact', '09082386888', '2023-09-26 15:52:20'),
(45, 'address', 'Hagonoy Bulacan', '2023-09-26 15:52:20'),
(45, 'department_id', '2', '2023-09-26 15:52:20'),
(45, 'designation_id', '2', '2023-09-26 15:52:20'),
(45, 'username', 'denden', '2023-09-26 15:52:20'),
(45, 'approver', 'off', '2023-09-26 15:52:20'),
(46, 'type', '3', '2023-10-02 15:23:35'),
(46, 'employee_id', '10158', '2023-10-02 15:23:35'),
(46, 'firstname', 'donita', '2023-10-02 15:23:35'),
(46, 'middlename', 'cruz', '2023-10-02 15:23:35'),
(46, 'lastname', 'tantoco', '2023-10-02 15:23:35'),
(46, 'dob', '1999-09-28', '2023-10-02 15:23:35'),
(46, 'contact', '09103929803749', '2023-10-02 15:23:35'),
(46, 'address', 'malolos bulacan', '2023-10-02 15:23:35'),
(46, 'department_id', '2', '2023-10-02 15:23:35'),
(46, 'designation_id', '3', '2023-10-02 15:23:35'),
(46, 'username', 'donita', '2023-10-02 15:23:35'),
(46, 'approver', 'off', '2023-10-02 15:23:35'),
(45, 'leave_type_ids', '2,1', '2023-10-02 15:25:13'),
(45, 'leave_type_credits', '{\"2\":\"15\",\"1\":\"15\"}', '2023-10-02 15:25:13'),
(48, 'type', '3', '2023-11-11 10:47:16'),
(48, 'employee_id', '10159', '2023-11-11 10:47:16'),
(48, 'firstname', 'liezel', '2023-11-11 10:47:16'),
(48, 'middlename', 'S', '2023-11-11 10:47:16'),
(48, 'lastname', 'Sanches', '2023-11-11 10:47:16'),
(48, 'dob', '1111-11-11', '2023-11-11 10:47:16'),
(48, 'contact', '0009999999', '2023-11-11 10:47:16'),
(48, 'address', 'Pulilan Bulacan', '2023-11-11 10:47:16'),
(48, 'department_id', '2', '2023-11-11 10:47:16'),
(48, 'designation_id', '1', '2023-11-11 10:47:16'),
(48, 'username', 'zel', '2023-11-11 10:47:16'),
(48, 'approver', 'off', '2023-11-11 10:47:16'),
(49, 'type', '3', '2023-11-11 11:00:37'),
(49, 'employee_id', '10160', '2023-11-11 11:00:37'),
(49, 'firstname', 'Vernie', '2023-11-11 11:00:37'),
(49, 'middlename', 'D', '2023-11-11 11:00:37'),
(49, 'lastname', 'Dela Cruz', '2023-11-11 11:00:37'),
(49, 'dob', '0111-01-11', '2023-11-11 11:00:37'),
(49, 'contact', '111111111', '2023-11-11 11:00:37'),
(49, 'address', 'Malolos Bulacan', '2023-11-11 11:00:37'),
(49, 'department_id', '2', '2023-11-11 11:00:37'),
(49, 'designation_id', '7', '2023-11-11 11:00:37'),
(49, 'username', 'vernie', '2023-11-11 11:00:37'),
(49, 'approver', 'off', '2023-11-11 11:00:37');

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
(10, 45, NULL, 'Family Vacation', '2023-04-10 00:00:00', '2023-04-10 00:00:00', 1, 1, 1, 1, '2023-10-03 08:26:24', '2023-10-03 08:26:43');

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
(5, '73828', 'Sick Leave', 'dawdaw', 15, 1, '2023-11-12 16:04:52', '2023-11-12 16:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `memo_list`
--

CREATE TABLE `memo_list` (
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
-- Dumping data for table `memo_list`
--

INSERT INTO `memo_list` (`id`, `title`, `description`, `date_created`, `date_updated`, `to_`, `from_`, `date_`, `cc_`, `ref_`, `re_`) VALUES
(8, 'KAINANG PAMILYA MAHALAGA', '<p>Please be informed that Management approved early dismissal at 4pm on Monday, September 25, 2023 in support of the annual \"Kainang pamilya mahalaga\" Day initiative of the local and national goverment.</p><p>Please be guided accordingly.</p><p></p><p></p>', '2023-10-02 11:58:29', '2023-10-02 15:04:36', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM / FILE', 'HRD - 2023 ', 'KAINANG PAMILYA MAHALAGA');

-- --------------------------------------------------------

--
-- Table structure for table `policies_list`
--

CREATE TABLE `policies_list` (
  `id` int(30) NOT NULL,
  `no` int(30) NOT NULL,
  `title` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `refer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `policies_list`
--

INSERT INTO `policies_list` (`id`, `no`, `title`, `status`, `description`, `refer`) VALUES
(7, 14, 'DRUG-FREE WORKPLACE POLICY', 1, '<p>In compliance with Article V of Republic Act No. 9165, otherwise known as the Comprehensive Dangerous Drugs Act of 2002, and its Implementing Rules and Regulations and DOLE Department Order No. 53-03, series of 2003 (Guidelines for the Implementation of a Drug-Free Workplace Policies and Programs for the Private Sector), ASIAN LAND STRATEGIES CORPORATION / JAM ASIA PROPERTIES, INC. adopts its policies and programs to achieve a drug-free workplace.<span style=\"color: rgb(52, 58, 64); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">In compliance with Article V of Republic Act No. 9165, otherwise known as the Comprehensive Dangerous Drugs Act of 2002, and its Implementing Rules and Regulations and DOLE Department Order No. 53-03, series of 2003 (Guidelines for the Implementation of a Drug-Free Workplace Policies and Programs for the Private Sector), ASIAN LAND STRATEGIES CORPORATION / JAM ASIA PROPERTIES, INC. adopts its policies and programs to achieve a drug-free workplace.</span><br></p>', 'For more detailed policy, refer to ALSC-HRD-014-001.'),
(8, 15, 'SEXUAL HARASSMENT POLICY', 1, '<p><span style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space-collapse: preserve;\"><font color=\"#000000\">Sexual harassment of our employees by their colleagues is unlawful and the Company will take appropriate disciplinary action against anyone who is in breach of the regulations. Employees who believe that they have been or are being sexually harassed should inform the offenders that their behavior is unacceptable and unlawful. They can further lodge their complaints to the Human Resources and Admin Department who will investigate thoroughly and confidentially in accordance with the guidelines in handling sexual harassment Department. complaints, a copy is available at the Human Resources and Admin</font></span><br></p>', 'For more detailed policy, refer to ALSC-HRD-016-001.');

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
(6, 'short_name', 'HR PORTAL'),
(11, 'logo', 'uploads/1691454840_24_user.jpg'),
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
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1691454540_1686885840_1674110340_logo2.jpg', NULL, 1, '2021-01-20 14:02:37', '2023-08-08 08:29:18'),
(22, 'Jude', NULL, 'Dela Cruz', 'jude', '0192023a7bbd73250516f069df18b500', 'uploads/1691460780_33_user.jpg', NULL, 2, '2023-08-08 10:13:38', NULL),
(45, 'Edhen', 'Bagondol', 'Sese', 'denden', 'cadc4583c983c78f9cb03ec0a7ddaf1f', 'uploads/45_user.jpg', NULL, 3, '2023-09-26 15:52:20', '2023-09-26 15:52:20'),
(46, 'donita', 'cruz', 'tantoco', 'donita', 'a5c7b30fb632c92feb59154517223dc9', 'uploads/46_user.jpg', NULL, 3, '2023-10-02 15:23:35', '2023-10-02 15:23:35'),
(47, 'Francis', NULL, 'Diaz', 'francis', '0192023a7bbd73250516f069df18b500', 'uploads/1696292940_25_user.jpg', NULL, 1, '2023-10-03 08:29:14', NULL),
(48, 'liezel', 'S', 'Sanches', 'zel', '4d410063822cd9be28f86701c0bc3a31', 'uploads/48_user.jpg', NULL, 3, '2023-11-11 10:47:16', '2023-11-11 10:47:16'),
(49, 'Vernie', 'D', 'Dela Cruz', 'vernie', 'd132c74defa34e9f47fd52b3dc69779c', 'uploads/49_user.jpg', NULL, 3, '2023-11-11 11:00:37', '2023-11-11 11:00:37');

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
-- Indexes for table `policies_list`
--
ALTER TABLE `policies_list`
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `memo_list`
--
ALTER TABLE `memo_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `policies_list`
--
ALTER TABLE `policies_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
