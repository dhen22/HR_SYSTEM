-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 09:11 AM
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
(58, 'PANDESAL PARTY', '<p>Dear AsianLanders,</p><p><br></p><p>Let\'s celebrate Asian Land as one of the happiest workplaces on earth!</p><p>Please be informed that October 18, 2023 - Wednesday, Will be our 2nd <b>PANDESAL PARTY </b>for 2023.</p><p>Themed as \"<b>ALSC GOES DISNEY</b>\", everyone is enjoined to be part of this event. This will be hours of updates, fun, surprises and prizes. Venue will be at The Clubhouse @ Dream Crest Private Residences.</p><p><br></p><p>Please come in your favorite Disney character outfit on this day and win exciting prizes. Watch out for more details and mechanics about this costume contest.</p>', '2023-10-03 11:09:05', NULL, 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ FILE', 'HRD - 2023 - 27 / REV - 000', 'OCTOBER PANDESAL PARTY', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos &amp; Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>'),
(60, '\"KAINANG PAMILYA MAHALGA\"', '<p>Please be informed that Management approved early dismissal at 4pm on Monday September 25, 2023 in support of the annual \"\"Kainang Pamilya Mahalaga\" Day initiative of the local and national government.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-10-06 10:08:30', NULL, 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD - 2023 - 026 / Rev - 000', '\"KAINANG PAMILYA MAHALAGA\" Day', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos &amp; Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>'),
(61, 'HOLIDAYS', '<p>Please be informed of the following holidays:</p><p>August 21 (Monday) - Special Non - working day</p><p>                                  - Ninoy aquino day</p><p>August 28 (Monday) - Regular Holiday</p><p>                                   - Heroes day</p><p><br></p><p>Please be guided accordingly.</p>', '2023-10-06 11:26:16', '2023-10-06 11:26:38', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD -2023 - 024 / Rev -000', 'AUGUST HOLIDAY', '<p>Holiday in month of August 2023, </p><p>Please attached file</p>');

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
(45, 'leave_type_credits', '{\"2\":\"15\",\"1\":\"15\"}', '2023-10-02 15:25:13');

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
(8, 'KAINANG PAMILYA MAHALAGA', '<p>Please be informed that Management approved early dismissal at 4pm on Monday, September 25, 2023 in support of the annual \"Kainang pamilya mahalaga\" Day initiative of the local and national goverment.</p><p>Please be guided accordingly.</p><p></p><p></p>', '2023-10-02 11:58:29', '2023-10-02 15:04:36', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM / FILE', 'HRD - 2023 ', 'KAINANG PAMILYA MAHALAGA'),
(12, 'SAMPLE MEMO', '<p>efsefesf</p>', '2023-10-06 14:15:27', NULL, 'ALL EMPLOYEES', 'ajbfjb', '0000-00-00 00:00:00', 'hjhgj', 'bjb', 'jbkjb');

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
(47, 'Francis', NULL, 'Diaz', 'francis', '0192023a7bbd73250516f069df18b500', 'uploads/1696292940_25_user.jpg', NULL, 1, '2023-10-03 08:29:14', NULL);

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `memo_list`
--
ALTER TABLE `memo_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
