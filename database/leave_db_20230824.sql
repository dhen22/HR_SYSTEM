-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 04:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
(26, 'MID-YEAR PANDESAL PARTY', '<p>Dear AsianLanders,</p><p>Let\'s Celebrate success!</p><p><br></p><p>On July 12, 2023, Wednesday, @2:30 PM, we will hold our march awaited MID-YEAR PANDESAL PARTY, with the theme of <b>FIESTA - BRAVO ASIANDERO, ARIVA ASIANDERA!&nbsp;</b></p><p><b><br></b></p><p>Office hours for this day will be until 2:00 PM only and afterwards, everyone must proceed to the DPR Clubhouse of the event. You can already come to work wearing civilian in event theme colors of green, orange, blue and red on this day.</p><p>Attached are further details and event flow.</p><p>Looking forward to see you all.</p><p><br></p>', '2023-08-08 09:05:49', '2023-08-08 10:30:05', 'ALL EMPLOYEES', 'Human Resources and admin Department', '0000-00-00 00:00:00', 'MANCOM / ALL SECTION HEADS & SUPVRS / FILE', 'HRD-2023-021 / REV - 000', 'MID - YEAR PANDESAL PARTY'),
(27, 'JUNE HOLIDAY', '<p>Please be informed that Monday, June 12, 2023 is independence Day, a Regular Holiday.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-08-08 10:06:34', NULL, 'ALL ASIAN LAND GROUP EMPLOYEES', 'Human Resources and admin Department', '0000-00-00 00:00:00', 'MANCOM/FILE', 'HRD-2023-019/Rev-000', 'JUNE HOLIDAY'),
(28, 'MAY HOLIDAY', '<p>Please be informed that Monday, May 1, 2023 is <b>Labor Day</b>, a Regular Holiday.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-08-08 10:10:14', NULL, 'ALL ASIAN LAND GROUP EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/FILE', 'HRD-2023-015/Rev-000', 'MAY HOLIDAY'),
(29, 'APRIL HOLIDAYS', '<p>Please be informed of the following holidays:</p><p>April 6 (Thursday)&nbsp; -&nbsp; Regular Holiday&nbsp;</p><ul><li><span style=\"font-size: 0.875rem;\"><b>Maundy Thursday</b></span></li></ul><p>April 7 (Friday)&nbsp; &nbsp; &nbsp; &nbsp;- Regular Holiday</p><ul><li><b>Good Friday</b></li></ul><p>April 8 (Saturday)&nbsp; &nbsp;- Special non-working day</p><ul><li>&nbsp;<b>Black Saturday</b></li></ul><p><br></p><p>On April 5, 2023 (Holy wednesday), in observance of the Lenten Season, office hours will only be until 4PM. Employees may wear civilian clothes on this day.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-08-08 10:29:29', '2023-08-08 13:24:48', 'ALL EMPLOYEES', 'Human Resources Department', '0000-00-00 00:00:00', 'MANCOM/ ALL SECTION HEADS & SPVRS / FILE', 'HRD-2023-002 / REV - 002', 'APRIL HOLIDAYS'),
(30, 'AUGUST HOLIDAY', '<p>Please be informed of the following holidays:</p><p><b>August 21</b> (Monday) - Special Non - working day</p><ul><li><b>Ninoy Aquino Day</b></li></ul><p><b>August 28</b> (Monday) - Special Non - working day</p><ul><li><b>National Heroes Day</b></li></ul><p><br></p><p>Please be guided accordingly.</p>', '2023-08-16 10:33:01', '2023-08-16 10:33:35', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD-2023-024/Rev-000', 'AUGUST HOLIDAYS');

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
(21, 'type', '3', '2023-08-08 08:33:36'),
(21, 'employee_id', '100', '2023-08-08 08:33:36'),
(21, 'firstname', 'Edhen', '2023-08-08 08:33:36'),
(21, 'middlename', 'Bagondol', '2023-08-08 08:33:36'),
(21, 'lastname', 'Sese', '2023-08-08 08:33:36'),
(21, 'dob', '1999-02-08', '2023-08-08 08:33:36'),
(21, 'contact', '09082386888', '2023-08-08 08:33:36'),
(21, 'address', 'San isidro hagonoy bulacan', '2023-08-08 08:33:36'),
(21, 'department_id', '2', '2023-08-08 08:33:36'),
(21, 'designation_id', '3', '2023-08-08 08:33:36'),
(21, 'username', 'denden', '2023-08-08 08:33:36'),
(21, 'approver', 'off', '2023-08-08 08:33:36'),
(21, 'leave_type_ids', '2,1', '2023-08-15 16:00:33'),
(21, 'leave_type_credits', '{\"2\":\"15\",\"1\":\"15\"}', '2023-08-15 16:00:33');

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
(21, 'Edhen', 'Bagondol', 'Sese', 'denden', 'f899139df5e1059396431415e770c6dd', 'uploads/1692165300_33_user.jpg', NULL, 3, '2023-08-08 08:33:35', '2023-08-16 13:55:57'),
(22, 'Jude', NULL, 'Dela Cruz', 'jude', '0192023a7bbd73250516f069df18b500', 'uploads/1691460780_33_user.jpg', NULL, 2, '2023-08-08 10:13:38', NULL),
(27, 'admin', NULL, ' ', 'adminn', '0192023a7bbd73250516f069df18b500', 'uploads/1692347580_33_user.jpg', NULL, 2, '2023-08-18 16:33:24', '2023-08-18 16:34:21');

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
