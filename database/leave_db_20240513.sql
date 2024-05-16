-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 04:49 AM
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
  `re_` text NOT NULL,
  `message` text NOT NULL,
  `file` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement_list`
--

INSERT INTO `announcement_list` (`id`, `title`, `description`, `date_created`, `date_updated`, `to_`, `from_`, `date_`, `cc_`, `ref_`, `re_`, `message`, `file`) VALUES
(58, 'PANDESAL PARTY', '<p>Dear AsianLanders,</p><p><br></p><p>Let\'s celebrate Asian Land as one of the happiest workplaces on earth!aaa</p><p>Please be informed that October 18, 2023 - Wednesday, Will be our 2nd <b>PANDESAL PARTY </b>for 2023.</p><p>Themed as \"<b>ALSC GOES DISNEY</b>\", everyone is enjoined to be part of this event. This will be hours of updates, fun, surprises and prizes. Venue will be at The Clubhouse @ Dream Crest Private Residences.</p><p><br></p><p>Please come in your favorite Disney character outfit on this day and win exciting prizes. Watch out for more details and mechanics about this costume contest.</p>', '2023-10-03 11:09:05', '2023-11-29 08:37:01', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ FILE', 'HRD - 2023 - 27 / REV - 000', 'OCTOBER PANDESAL PARTY', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos &amp; Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div>', NULL),
(60, '\"KAINANG PAMILYA MAHALGA\"', '<p>Please be informed that Management approved early dismissal at 4pm on Monday September 25, 2023 in support of the annual \"\"Kainang Pamilya Mahalaga\" Day initiative of the local and national government.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-10-06 10:08:30', NULL, 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD - 2023 - 026 / Rev - 000', '\"KAINANG PAMILYA MAHALAGA\" Day', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos &amp; Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>', NULL),
(61, 'HOLIDAYS', '<p>Please be informed of the following holidays:</p><p>August 21 (Monday) - Special Non - working day</p><p>                                  - Ninoy aquino day</p><p>August 28 (Monday) - Regular Holiday</p><p>                                   - Heroes day</p><p><br></p><p>Please be guided accordingly.</p>', '2023-10-06 11:26:16', '2023-10-06 11:26:38', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD -2023 - 024 / Rev -000', 'AUGUST HOLIDAY', '<p>Holiday in month of August 2023, </p><p>Please attached file</p>', NULL),
(83, 'BULACAN HOLIDAY', '<p>Please be informed that Wednesday, August 20, 2023 is Marcelo H. Del Pilar Day, Special Non-Working holiday in the province of Bulacan as declared under Republic Act 7449 (<i>An Act Declaring August Thirty A Special Non Working Holiday in the Province of Bulacan).</i></p><p><i><br></i></p><p>Please be guided accordingly.</p>', '2023-11-29 08:31:22', '2023-11-29 08:31:43', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/FILE', 'HRD-2023-025/Rev-000', 'BULACAN HOLIDAY - MARCELO H. DEL PILAR', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos & Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached <span class=\"il\">MEMO</span>.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><span class=\"il\">HR</span> Team</font></div>', NULL),
(84, 'JANUARY HOLIDAY', '<p>Please be informed that Monday, January 23, 2023 is the Anniversary of the inauguration of the First Philippine Republic, a Special Non-Working Day in the province of Bulacan.</p><p><br></p><p>Please be guided accordingly.</p>', '2023-11-29 08:36:22', '2024-03-12 10:14:34', 'ALL ASIAN LAND GROUP EMPLOYEES', 'HUMAN RESOURCES AND ADMIN DEPARTMENT', '0000-00-00 00:00:00', 'MANCOM / FILE', 'HRD-2023-001/Rev-000', 'JANUARY HOLIDAY', '<p><span style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Dear Asianderos & Asianderas,</span></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Please see attached file.</div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">For your information and guidance.<br></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><span class=\"il\">HR</span> Team</div>', NULL),
(86, 'PERSONAL ITEMS AND FOOD STORAGE IN THE WORKPLACE', '<p>In line with our 6S policy and our efforts to maintain an organized and clean workplace, all employees are reminded of the following guidelines:</p><ol><li>Personal Items. Each employee is allowed storage space when he/she can store securely his/her personal items. Please limit this space to maximum of one drawer or cabinet only to allot more space for official files and articles.</li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; while Management tolerates some forms of personal enterprise i.e selling of food items to co-employees, such merchandise shall NOT take space in storage allotted for official purpose</p><p><span style=\"font-size: 0.875rem;\"><br></span></p><p><span style=\"font-size: 0.875rem;\">&nbsp; &nbsp; &nbsp; &nbsp;2. Cleanliness and Pest Control. Everyone must conduct regular cleanout of storage spaces, including in the pantry area. Ensure that personal items, especially food are kept secured and sealed for health and safety and to avoid attracting pests like cockroaches, ants and rodents.</span></p><p><span style=\"font-size: 0.875rem;\"><br></span></p><p><span style=\"font-size: 0.875rem;\">For your information and guidance.</span></p>', '2023-12-19 13:37:10', NULL, 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM / FILE', 'HRD-2023-034/Rev-000', 'PERSONAL ITEMS AND FOOD STORAGE IN THE WORKPLACE', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos &amp; Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>', NULL);
INSERT INTO `announcement_list` (`id`, `title`, `description`, `date_created`, `date_updated`, `to_`, `from_`, `date_`, `cc_`, `ref_`, `re_`, `message`, `file`) VALUES
(89, 'ASIAN LAND @ 30: 2024 KICK OFF AND PARTY ', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">Dear Asianderas and\r\nAsianderas, </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">Happy New Year!  </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">Please refer to the attached\r\nfor the ROOMING LIST and BUS ASSIGNMENT* \r\nfor our forthcoming 30<sup>th</sup> Corporate Kick – Off with the theme,\r\n<b>“PERLAS! – Wisdom Through Experience”</b>\r\nat Taal Vista Hotel, Tagaytay City this January 12 – 13, 2024.  </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\">              </span><img src=\"data:image/jpeg;base64,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\" data-filename=\"qqq.jpg\" style=\"\"></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><b><span style=\"font-size:9.0pt;mso-bidi-font-size:\r\n11.0pt;line-height:107%\">*Names highlighted on the list are designated as Bus\r\nMarshalls and Keycard Room Representatives respectively. </span></b><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">Please take note further\r\nthat call time on January 12 , 2023 will be at 5:45AM.  ETD will be exactly at 6:00 AM.  Please do not be late. </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">If you have questions,\r\nplease coordinate with anyone from your HR Team.  Looking forward to see you all! </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:10.0pt;mso-bidi-font-size:11.0pt;line-height:107%\"> </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">Mon Saspa </span><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:.2pt;\r\nmargin-left:-.25pt;text-indent:-.5pt;line-height:104%\"><span style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;line-height:104%\">Employee Engagement Officer,</span><o:p></o:p></p>', '2024-01-04 13:54:37', '2024-03-12 10:12:46', 'ALL EMPLOYEES', 'Human Resources Department ', '0000-00-00 00:00:00', 'Mancom/ All Section Heads & SpvrS / FILE ', 'hrd – 2023 – 035 / rev - 111', 'ASIAN LAND @ 30: 2024 KICK OFF AND PARTY ', '<p><font face=\"Verdana\" size=\"2\" style=\"color: rgb(34, 34, 34); font-size: small;\">Dear Asianderos & Asianderas,</font></p><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">Please see attached MEMO.</font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">For your information and guidance.<br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\"><br></font></div><div style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><font face=\"Verdana\" size=\"2\">HR Team</font></div>', NULL);

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
(27, 'Documentation & Project Planning', '', '2024-01-31 14:17:10', NULL),
(28, 'Project Management', '', '2024-01-31 14:17:20', NULL),
(29, 'Property Admin & Quality Control', '', '2024-01-31 14:17:28', NULL),
(30, 'Asset and Property Management', '', '2024-01-31 14:17:37', NULL),
(31, 'Information Technology', '', '2024-01-31 14:17:44', NULL),
(32, 'Inventory Control', '', '2024-01-31 14:17:51', NULL),
(33, 'Treasury and Collection/Client Relations', '', '2024-01-31 14:18:00', NULL),
(34, 'Finance & IT', '', '2024-01-31 14:18:10', NULL),
(35, 'HR&Admin/GSS', '', '2024-01-31 14:18:19', '2024-03-06 15:40:31'),
(36, 'Legal', '', '2024-01-31 14:18:29', NULL),
(37, 'Sales & Marketing,Engineering', '', '2024-01-31 14:18:37', NULL),
(38, 'Corporate Communications', '', '2024-01-31 14:18:51', NULL),
(39, 'Marketing&Ops', '', '2024-01-31 14:19:04', NULL),
(40, 'Sales', '', '2024-01-31 14:19:11', NULL),
(41, 'Human Resources & Admin', '', '2024-01-31 14:19:18', NULL);

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
(20, 'WAREHOUSE INVENTORY SUPERVISOR', '', '2024-01-31 15:48:17', NULL),
(21, 'UTILITY STAFF - STOCKS', '', '2024-01-31 15:48:23', NULL),
(22, 'UTILITY', '', '2024-01-31 15:48:29', NULL),
(23, 'TREASURY SUPERVISOR', '', '2024-01-31 15:48:38', NULL),
(24, 'TREASURY ASSISTANT', '', '2024-01-31 15:48:48', NULL),
(25, 'TREASURER', '', '2024-01-31 15:48:57', NULL),
(26, 'TRAINING OFFICER', '', '2024-01-31 15:49:04', NULL),
(27, 'TELEMARKETER', '', '2024-01-31 15:49:10', NULL),
(28, 'TECHNICAL SUPPORT', '', '2024-01-31 15:49:18', NULL),
(29, 'TECHNICAL PLANNING SUPERVISOR', '', '2024-01-31 15:49:26', NULL),
(30, 'SUPPORT SPECIALIST', '', '2024-01-31 15:49:32', NULL),
(31, 'SR. CORPORATE COMMUNICATIONS ASSOCIATE', '', '2024-01-31 15:49:39', NULL),
(32, 'SOFTWARE DEVELOPER', '', '2024-01-31 15:49:47', NULL),
(33, 'SITE INVENTORY ASSISTANT', '', '2024-01-31 15:49:54', NULL),
(34, 'SENIOR SUPPORT SPECIALIST', '', '2024-01-31 15:50:00', NULL),
(35, 'SECURITY SERVICES OFFICER', '', '2024-01-31 15:50:07', NULL),
(36, 'SALES OPERATIONS ASSOCIATE', '', '2024-01-31 15:50:14', NULL),
(37, 'SALES OPERATION ASSOCIATE', '', '2024-01-31 15:50:26', NULL),
(38, 'SALES MANAGER', '', '2024-01-31 15:50:33', NULL),
(39, 'SALES DIRECTOR', '', '2024-01-31 15:50:41', NULL),
(40, 'SALES AND MARKETING OPERATIONS SUPERVISOR', '', '2024-01-31 15:50:47', NULL),
(41, 'REGULATORY PERMITS AND LICENSES SUPERVISOR ', '', '2024-01-31 15:50:55', NULL),
(42, 'RECRUITMENT OFFICER', '', '2024-01-31 15:51:04', NULL),
(43, 'QUALITY CONTROL SUPERVISOR', '', '2024-01-31 15:51:11', NULL),
(44, 'PURCHASING OFFICER', '', '2024-01-31 15:51:17', NULL),
(45, 'PURCHASING ASSISTANT', '', '2024-01-31 15:51:23', NULL),
(46, 'PROPERTY ADMINISTRATOR', '', '2024-01-31 15:51:29', NULL),
(47, 'PROPERTY ADMIN. SITE ASSISTANT', '', '2024-01-31 15:51:34', NULL),
(48, 'PROPERTY ADMIN. ASSISTANT', '', '2024-01-31 15:51:41', NULL),
(49, 'PROPERTY ADMIN ASSISTANT (RELIEVER)', '', '2024-01-31 15:51:47', NULL),
(50, 'PROJECT SUPERVISOR', '', '2024-01-31 15:51:55', NULL),
(51, 'PROJECT MANAGER', '', '2024-01-31 15:52:02', NULL),
(52, 'PROJECT ASSISTANT', '', '2024-01-31 15:52:08', NULL),
(53, 'PRINTING OPERATOR', '', '2024-01-31 15:52:15', NULL),
(54, 'PRESIDENT', '', '2024-01-31 15:52:23', NULL),
(55, 'MESSENGER', '', '2024-01-31 15:52:30', NULL),
(56, 'MAINTENANCE COORDINATOR/COMPANY DRIVER', '', '2024-01-31 15:52:37', NULL),
(57, 'M.I.C.E-SALES COORDINATOR', '', '2024-01-31 15:52:43', NULL),
(58, 'LOANS ASSISTANT', '', '2024-01-31 15:52:50', NULL),
(59, 'LEGAL ASSISTANT', '', '2024-01-31 15:52:56', NULL),
(60, 'LEAD SOFTWARE DEVELOPER ', '', '2024-01-31 15:53:03', NULL),
(61, 'JUNIOR DRAFTSMAN', '', '2024-01-31 15:53:09', NULL),
(62, 'JUNIOR DESIGNER', '', '2024-01-31 15:53:15', NULL),
(63, 'JR. TECHNICAL SUPPORT SPECIALIST', '', '2024-01-31 15:53:21', NULL),
(64, 'IT MANAGER', '', '2024-01-31 15:53:30', NULL),
(65, 'INVENTORY CONTROL OFFICER ', '', '2024-01-31 15:53:36', NULL),
(66, 'INVENTORY CONTROL ASSISTANT', '', '2024-01-31 15:53:47', NULL),
(67, 'HOUSING PERMITS SUPERVISOR', '', '2024-01-31 15:53:54', NULL),
(68, 'HOUSING PERMITS ASSISTANT', '', '2024-01-31 15:54:00', NULL),
(69, 'GENERAL SERVICES SECTION OFFICER', '', '2024-01-31 15:54:06', NULL),
(70, 'GENERAL SERVICES ASSISTANT', '', '2024-01-31 15:54:13', NULL),
(71, 'FRONT DESK OFFICER', '', '2024-01-31 15:54:19', NULL),
(72, 'FINANCE MANAGER/SR EA TO THE BOARD/INTERNAL AUDITOR', '', '2024-01-31 15:54:25', NULL),
(73, 'FILING CLERK', '', '2024-01-31 15:54:33', NULL),
(74, 'EXECUTIVE ASSISTANT TO THE COO', '', '2024-01-31 15:54:40', NULL),
(75, 'ESTIMATE SUPERVISOR', '', '2024-01-31 15:54:45', NULL),
(76, 'EMPLOYEE ENGAGEMENT OFFICER', '', '2024-01-31 15:54:52', NULL),
(77, 'EMERGING TECHNOLOGIES RESEARCH AND INTEGRATION MANAGER', '', '2024-01-31 15:54:58', NULL),
(78, 'ELECTRICIAN', '', '2024-01-31 15:55:06', NULL),
(79, 'ELECTRICAL SUPERVISOR', '', '2024-01-31 15:55:13', NULL),
(80, 'EA TO THE MANCOM', '', '2024-01-31 15:55:19', NULL),
(81, 'DOCUMENTATION SUPERVISOR', '', '2024-01-31 15:55:25', NULL),
(82, 'DOCUMENTATION ASSISTANT/MESSENGER', '', '2024-01-31 15:55:30', NULL),
(83, 'DOCUMENTATION ASSISTANT', '', '2024-01-31 15:55:41', NULL),
(84, 'DESIGNER 1 ', '', '2024-01-31 15:55:47', NULL),
(85, 'DEPARTMENT SECRETARY', '', '2024-01-31 15:55:54', NULL),
(86, 'CUSTOMER SERVICE REPRESENTATIVE', '', '2024-01-31 15:56:00', NULL),
(87, 'CUSTOMER SERVICE OFFICER', '', '2024-01-31 15:56:05', NULL),
(88, 'CREDIT ASSESSMENT ASSISTANT', '', '2024-01-31 15:56:11', NULL),
(89, 'CREDIT ASSESSMENT AND LOANS SUPERVISOR', '', '2024-01-31 15:56:17', NULL),
(90, 'CORPORATE COMMUNICATIONS MANAGER', '', '2024-01-31 15:56:23', NULL),
(91, 'CORPORATE COMMUNICATIONS ASSOCIATE', '', '2024-01-31 15:56:29', NULL),
(92, 'CORPORATE ASSETS ASISTANT', '', '2024-01-31 15:56:34', NULL),
(93, 'COMPENSATION AND BENEFITS OFFICER', '', '2024-01-31 15:56:41', NULL),
(94, 'COMPENSATION AND BENEFITS ASSISTANT', '', '2024-01-31 15:56:46', NULL),
(95, 'COMPANY DRIVER', '', '2024-01-31 15:56:52', NULL),
(96, 'CLIENT ASSETS ASISTANT', '', '2024-01-31 15:56:58', NULL),
(97, 'CHIEF OF OPERATION', '', '2024-01-31 15:57:06', NULL),
(98, 'CHIEF LEGAL OFFICER', '', '2024-01-31 15:57:12', NULL),
(99, 'CHIEF HUMAN RESOURCES OFFICER', '', '2024-01-31 15:57:19', NULL),
(100, 'CHIEF FINANCE OFFICER', '', '2024-01-31 15:57:24', NULL),
(101, 'CHIEF EXECUTIVE OFFICER', '', '2024-01-31 15:57:31', NULL),
(102, 'CASHIER', '', '2024-01-31 15:57:37', NULL),
(103, 'BROKER SALES COORDINATOR', '', '2024-01-31 15:57:43', NULL),
(104, 'BILLING SUPERVISOR (DA 3MOS 9.6)', '', '2024-01-31 15:57:49', NULL),
(105, 'BILLING ASSISTANT', '', '2024-01-31 15:57:55', NULL),
(106, 'AVP-TREASURY', '', '2024-01-31 15:58:02', NULL),
(107, 'AVP-CONTRACTS & DOCUMENTATIONS', '', '2024-01-31 15:58:08', NULL),
(108, 'AVP - PROJECT MANAGEMENT', '', '2024-01-31 15:58:14', NULL),
(109, 'AVP - ASSET AND PROPERTY MANAGEMENT', '', '2024-01-31 15:58:20', NULL),
(110, 'AUDITING SUPERVISOR', '', '2024-01-31 15:58:26', NULL),
(111, 'AUDIT ASSISTANT', '', '2024-01-31 15:58:32', NULL),
(112, 'ASSISTANT ESTIMATOR', '', '2024-01-31 15:58:38', NULL),
(113, 'ASSISTANT ACCOUNTING MANAGER', '', '2024-01-31 15:58:44', NULL),
(114, 'APM SUPERVISOR', '', '2024-01-31 15:58:50', NULL),
(115, 'ADMIN. COORDINATOR', '', '2024-01-31 15:58:57', NULL),
(116, 'ADMIN. ASSISTANT', '', '2024-01-31 15:59:02', NULL),
(117, 'ACCOUNTING ASSISTANT', '', '2024-01-31 15:59:08', NULL);

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
(186, 'type', '3', '2024-03-14 13:41:03'),
(186, 'username', '10147', '2024-03-14 13:41:03'),
(186, 'employee_id', '10147', '2024-03-14 13:41:03'),
(186, 'c_date_hired', '2021-08-05', '2024-03-14 13:41:03'),
(186, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-03-14 13:41:03'),
(186, 'c_status', 'Single', '2024-03-14 13:41:03'),
(186, 'c_sex', 'Female', '2024-03-14 13:41:03'),
(186, 'lastname', 'Tantoco', '2024-03-14 13:41:03'),
(186, 'firstname', 'Donita Rose', '2024-03-14 13:41:03'),
(186, 'middlename', 'Pingol', '2024-03-14 13:41:03'),
(186, 'c_address', 'sample', '2024-03-14 13:41:03'),
(186, 'c_email', 'sample', '2024-03-14 13:41:03'),
(186, 'designation_name', 'SOFTWARE DEVELOPER', '2024-03-14 13:41:03'),
(186, 'c_contact', '09xxxxxxx', '2024-03-14 13:41:03'),
(186, 'c_birthdate', '1996-12-09', '2024-03-14 13:41:03'),
(186, 'department_name', 'Information Technology', '2024-03-14 13:41:03'),
(186, 'c_division', 'Finance', '2024-03-14 13:41:03'),
(186, 'c_level', 'Rank', '2024-03-14 13:41:03'),
(186, 'c_section', 'Programming', '2024-03-14 13:41:03'),
(186, 'c_employment', 'Regular', '2024-03-14 13:41:03'),
(186, 'c_sbc_account_no', '', '2024-03-14 13:41:03'),
(186, 'c_tin', '', '2024-03-14 13:41:03'),
(186, 'c_sss', '', '2024-03-14 13:41:03'),
(186, 'c_pagibig', '', '2024-03-14 13:41:03'),
(186, 'c_philhealth', '', '2024-03-14 13:41:03'),
(186, 'c_salary1', '0', '2024-03-14 13:41:03'),
(186, 'c_allowance', '0', '2024-03-14 13:41:03'),
(186, 'c_transpo', '0', '2024-03-14 13:41:03'),
(186, 'c_e_date', '2024-03-01', '2024-03-14 13:41:03'),
(186, 'c_salary2', '0', '2024-03-14 13:41:03'),
(186, 'c_allowance2', '0', '2024-03-14 13:41:03'),
(186, 'c_cashiers_allow', '0', '2024-03-14 13:41:03'),
(186, 'c_atm_account', '0', '2024-03-14 13:41:03'),
(186, 'c_ghp', '0', '2024-03-14 13:41:03'),
(186, 'c_deduction_ma', '0', '2024-03-14 13:41:03'),
(186, 'c_tax_amount', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_sal', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_sss', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_pib', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_calamity', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_med', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_eme', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_car', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_edu', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_planters', '0', '2024-03-14 13:41:03'),
(186, 'c_loan_planters2', '0', '2024-03-14 13:41:03'),
(186, 'approver', 'off', '2024-03-14 13:41:03'),
(173, 'type', '3', '2024-03-14 13:42:38'),
(173, 'username', '10157', '2024-03-14 13:42:38'),
(173, 'employee_id', '10157', '2024-03-14 13:42:38'),
(173, 'c_date_hired', '2022-05-10', '2024-03-14 13:42:38'),
(173, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-03-14 13:42:38'),
(173, 'c_status', 'Single', '2024-03-14 13:42:38'),
(173, 'c_sex', 'Female', '2024-03-14 13:42:38'),
(173, 'lastname', 'Sese', '2024-03-14 13:42:38'),
(173, 'firstname', 'Edhen Joy', '2024-03-14 13:42:38'),
(173, 'middlename', 'Bagondol', '2024-03-14 13:42:38'),
(173, 'c_address', 'sample', '2024-03-14 13:42:38'),
(173, 'c_email', 'sample', '2024-03-14 13:42:38'),
(173, 'designation_name', 'SOFTWARE DEVELOPER', '2024-03-14 13:42:38'),
(173, 'c_contact', '09xxxxxxxx', '2024-03-14 13:42:38'),
(173, 'c_birthdate', '1999-08-28', '2024-03-14 13:42:38'),
(173, 'department_name', 'Information Technology', '2024-03-14 13:42:38'),
(173, 'c_division', 'Finance', '2024-03-14 13:42:38'),
(173, 'c_level', 'Rank', '2024-03-14 13:42:38'),
(173, 'c_section', 'Programming', '2024-03-14 13:42:38'),
(173, 'c_employment', 'Regular', '2024-03-14 13:42:38'),
(173, 'c_sbc_account_no', '', '2024-03-14 13:42:38'),
(173, 'c_tin', '', '2024-03-14 13:42:38'),
(173, 'c_sss', '', '2024-03-14 13:42:38'),
(173, 'c_pagibig', '', '2024-03-14 13:42:38'),
(173, 'c_philhealth', '', '2024-03-14 13:42:38'),
(173, 'c_salary1', '0', '2024-03-14 13:42:38'),
(173, 'c_allowance', '0', '2024-03-14 13:42:38'),
(173, 'c_transpo', '0', '2024-03-14 13:42:38'),
(173, 'c_e_date', '2024-03-01', '2024-03-14 13:42:38'),
(173, 'c_salary2', '0', '2024-03-14 13:42:38'),
(173, 'c_allowance2', '0', '2024-03-14 13:42:38'),
(173, 'c_cashiers_allow', '0', '2024-03-14 13:42:38'),
(173, 'c_atm_account', '0', '2024-03-14 13:42:38'),
(173, 'c_ghp', '0', '2024-03-14 13:42:38'),
(173, 'c_deduction_ma', '0', '2024-03-14 13:42:38'),
(173, 'c_tax_amount', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_sal', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_sss', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_pib', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_calamity', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_med', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_eme', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_car', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_edu', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_planters', '0', '2024-03-14 13:42:38'),
(173, 'c_loan_planters2', '0', '2024-03-14 13:42:38'),
(173, 'approver', 'off', '2024-03-14 13:42:38'),
(190, 'type', '3', '2024-03-14 13:45:55'),
(190, 'username', '10101', '2024-03-14 13:45:55'),
(190, 'employee_id', '10101', '2024-03-14 13:45:55'),
(190, 'c_date_hired', '2024-03-20', '2024-03-14 13:45:55'),
(190, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-03-14 13:45:55'),
(190, 'c_status', 'Single', '2024-03-14 13:45:55'),
(190, 'c_sex', 'Male', '2024-03-14 13:45:55'),
(190, 'lastname', 'Dela Cruz', '2024-03-14 13:45:55'),
(190, 'firstname', 'Juan', '2024-03-14 13:45:55'),
(190, 'middlename', 'M.', '2024-03-14 13:45:55'),
(190, 'c_address', 'sample', '2024-03-14 13:45:55'),
(190, 'c_email', 'sample', '2024-03-14 13:45:55'),
(190, 'designation_name', 'SOFTWARE DEVELOPER', '2024-03-14 13:45:55'),
(190, 'c_contact', '09xxxxx', '2024-03-14 13:45:55'),
(190, 'c_birthdate', '1999-05-05', '2024-03-14 13:45:55'),
(190, 'department_name', 'Information Technology', '2024-03-14 13:45:55'),
(190, 'c_division', 'Finance', '2024-03-14 13:45:55'),
(190, 'c_level', 'Rank', '2024-03-14 13:45:55'),
(190, 'c_section', 'Programming', '2024-03-14 13:45:55'),
(190, 'c_employment', 'Regular', '2024-03-14 13:45:55'),
(190, 'c_sbc_account_no', '', '2024-03-14 13:45:55'),
(190, 'c_tin', '', '2024-03-14 13:45:55'),
(190, 'c_sss', '', '2024-03-14 13:45:55'),
(190, 'c_pagibig', '', '2024-03-14 13:45:55'),
(190, 'c_philhealth', '', '2024-03-14 13:45:55'),
(190, 'c_salary1', '0', '2024-03-14 13:45:55'),
(190, 'c_allowance', '0', '2024-03-14 13:45:55'),
(190, 'c_transpo', '0', '2024-03-14 13:45:55'),
(190, 'c_e_date', '2024-03-01', '2024-03-14 13:45:55'),
(190, 'c_salary2', '0', '2024-03-14 13:45:55'),
(190, 'c_allowance2', '0', '2024-03-14 13:45:55'),
(190, 'c_cashiers_allow', '0', '2024-03-14 13:45:55'),
(190, 'c_atm_account', '0', '2024-03-14 13:45:55'),
(190, 'c_ghp', '0', '2024-03-14 13:45:55'),
(190, 'c_deduction_ma', '0', '2024-03-14 13:45:55'),
(190, 'c_tax_amount', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_sal', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_sss', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_pib', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_calamity', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_med', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_eme', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_car', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_edu', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_planters', '0', '2024-03-14 13:45:55'),
(190, 'c_loan_planters2', '0', '2024-03-14 13:45:55'),
(190, 'approver', 'off', '2024-03-14 13:45:55'),
(187, 'type', '3', '2024-03-14 13:47:36'),
(187, 'username', '10093', '2024-03-14 13:47:36'),
(187, 'employee_id', '10093', '2024-03-14 13:47:36'),
(187, 'c_date_hired', '2017-04-21', '2024-03-14 13:47:36'),
(187, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-03-14 13:47:36'),
(187, 'c_status', 'Single', '2024-03-14 13:47:36'),
(187, 'c_sex', 'Male', '2024-03-14 13:47:36'),
(187, 'lastname', 'Dela Cruz', '2024-03-14 13:47:36'),
(187, 'firstname', 'Jude', '2024-03-14 13:47:36'),
(187, 'middlename', 'Pangalinan', '2024-03-14 13:47:36'),
(187, 'c_address', 'sample', '2024-03-14 13:47:36'),
(187, 'c_email', 'sample', '2024-03-14 13:47:36'),
(187, 'designation_name', 'LEAD SOFTWARE DEVELOPER ', '2024-03-14 13:47:36'),
(187, 'c_contact', '09xxxxx', '2024-03-14 13:47:36'),
(187, 'c_birthdate', '1994-12-25', '2024-03-14 13:47:36'),
(187, 'department_name', 'Information Technology', '2024-03-14 13:47:36'),
(187, 'c_division', 'Finance', '2024-03-14 13:47:36'),
(187, 'c_level', 'Supervisor', '2024-03-14 13:47:36'),
(187, 'c_section', 'Programming', '2024-03-14 13:47:36'),
(187, 'c_employment', 'Regular', '2024-03-14 13:47:36'),
(187, 'c_sbc_account_no', '', '2024-03-14 13:47:36'),
(187, 'c_tin', '', '2024-03-14 13:47:36'),
(187, 'c_sss', '', '2024-03-14 13:47:36'),
(187, 'c_pagibig', '', '2024-03-14 13:47:36'),
(187, 'c_philhealth', '', '2024-03-14 13:47:36'),
(187, 'c_salary1', '0', '2024-03-14 13:47:36'),
(187, 'c_allowance', '0', '2024-03-14 13:47:36'),
(187, 'c_transpo', '0', '2024-03-14 13:47:36'),
(187, 'c_e_date', '2024-03-01', '2024-03-14 13:47:36'),
(187, 'c_salary2', '0', '2024-03-14 13:47:36'),
(187, 'c_allowance2', '0', '2024-03-14 13:47:36'),
(187, 'c_cashiers_allow', '0', '2024-03-14 13:47:36'),
(187, 'c_atm_account', '0', '2024-03-14 13:47:36'),
(187, 'c_ghp', '0', '2024-03-14 13:47:36'),
(187, 'c_deduction_ma', '0', '2024-03-14 13:47:36'),
(187, 'c_tax_amount', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_sal', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_sss', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_pib', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_calamity', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_med', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_eme', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_car', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_edu', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_planters', '0', '2024-03-14 13:47:36'),
(187, 'c_loan_planters2', '0', '2024-03-14 13:47:36'),
(187, 'approver', 'off', '2024-03-14 13:47:36'),
(189, 'type', '3', '2024-03-14 13:47:49'),
(189, 'username', '20181', '2024-03-14 13:47:49'),
(189, 'employee_id', '20181', '2024-03-14 13:47:49'),
(189, 'c_date_hired', '2015-10-05', '2024-03-14 13:47:49'),
(189, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-03-14 13:47:49'),
(189, 'c_status', 'Single', '2024-03-14 13:47:49'),
(189, 'c_sex', 'Male', '2024-03-14 13:47:49'),
(189, 'lastname', 'Diaz', '2024-03-14 13:47:49'),
(189, 'firstname', 'Francis Lorenzo', '2024-03-14 13:47:49'),
(189, 'middlename', 'Aguilar', '2024-03-14 13:47:49'),
(189, 'c_address', 'sample', '2024-03-14 13:47:49'),
(189, 'c_email', 'sample', '2024-03-14 13:47:49'),
(189, 'designation_name', 'LEAD SOFTWARE DEVELOPER ', '2024-03-14 13:47:49'),
(189, 'c_contact', '09xxxxxx', '2024-03-14 13:47:49'),
(189, 'c_birthdate', '1995-08-10', '2024-03-14 13:47:49'),
(189, 'department_name', 'Information Technology', '2024-03-14 13:47:49'),
(189, 'c_division', 'Finance', '2024-03-14 13:47:49'),
(189, 'c_level', 'Manager', '2024-03-14 13:47:49'),
(189, 'c_section', 'Programming', '2024-03-14 13:47:49'),
(189, 'c_employment', 'Regular', '2024-03-14 13:47:49'),
(189, 'c_sbc_account_no', '', '2024-03-14 13:47:49'),
(189, 'c_tin', '', '2024-03-14 13:47:49'),
(189, 'c_sss', '', '2024-03-14 13:47:49'),
(189, 'c_pagibig', '', '2024-03-14 13:47:49'),
(189, 'c_philhealth', '', '2024-03-14 13:47:49'),
(189, 'c_salary1', '0', '2024-03-14 13:47:49'),
(189, 'c_allowance', '0', '2024-03-14 13:47:49'),
(189, 'c_transpo', '0', '2024-03-14 13:47:49'),
(189, 'c_e_date', '2024-03-01', '2024-03-14 13:47:49'),
(189, 'c_salary2', '0', '2024-03-14 13:47:49'),
(189, 'c_allowance2', '0', '2024-03-14 13:47:49'),
(189, 'c_cashiers_allow', '0', '2024-03-14 13:47:49'),
(189, 'c_atm_account', '0', '2024-03-14 13:47:49'),
(189, 'c_ghp', '0', '2024-03-14 13:47:49'),
(189, 'c_deduction_ma', '0', '2024-03-14 13:47:49'),
(189, 'c_tax_amount', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_sal', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_sss', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_pib', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_calamity', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_med', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_eme', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_car', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_edu', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_planters', '0', '2024-03-14 13:47:49'),
(189, 'c_loan_planters2', '0', '2024-03-14 13:47:49'),
(189, 'approver', 'off', '2024-03-14 13:47:49'),
(188, 'type', '3', '2024-03-14 13:48:00'),
(188, 'username', '10178', '2024-03-14 13:48:00'),
(188, 'employee_id', '10178', '2024-03-14 13:48:00'),
(188, 'c_date_hired', '2023-08-22', '2024-03-14 13:48:00'),
(188, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-03-14 13:48:00'),
(188, 'c_status', 'Single', '2024-03-14 13:48:00'),
(188, 'c_sex', 'Male', '2024-03-14 13:48:00'),
(188, 'lastname', 'Manuel', '2024-03-14 13:48:00'),
(188, 'firstname', 'Beegil', '2024-03-14 13:48:00'),
(188, 'middlename', 'Ramirez', '2024-03-14 13:48:00'),
(188, 'c_address', 'sample', '2024-03-14 13:48:00'),
(188, 'c_email', 'sample', '2024-03-14 13:48:00'),
(188, 'designation_name', 'JR. TECHNICAL SUPPORT SPECIALIST', '2024-03-14 13:48:00'),
(188, 'c_contact', '09xxxxxxxxx', '2024-03-14 13:48:00'),
(188, 'c_birthdate', '1994-12-29', '2024-03-14 13:48:00'),
(188, 'department_name', 'Information Technology', '2024-03-14 13:48:00'),
(188, 'c_division', 'Finance', '2024-03-14 13:48:00'),
(188, 'c_level', 'Rank', '2024-03-14 13:48:00'),
(188, 'c_section', 'Technical', '2024-03-14 13:48:00'),
(188, 'c_employment', 'Regular', '2024-03-14 13:48:00'),
(188, 'c_sbc_account_no', '', '2024-03-14 13:48:00'),
(188, 'c_tin', '', '2024-03-14 13:48:00'),
(188, 'c_sss', '', '2024-03-14 13:48:00'),
(188, 'c_pagibig', '', '2024-03-14 13:48:00'),
(188, 'c_philhealth', '', '2024-03-14 13:48:00'),
(188, 'c_salary1', '0', '2024-03-14 13:48:00'),
(188, 'c_allowance', '0', '2024-03-14 13:48:00'),
(188, 'c_transpo', '0', '2024-03-14 13:48:00'),
(188, 'c_e_date', '2024-03-01', '2024-03-14 13:48:00'),
(188, 'c_salary2', '0', '2024-03-14 13:48:00'),
(188, 'c_allowance2', '0', '2024-03-14 13:48:00'),
(188, 'c_cashiers_allow', '0', '2024-03-14 13:48:00'),
(188, 'c_atm_account', '0', '2024-03-14 13:48:00'),
(188, 'c_ghp', '0', '2024-03-14 13:48:00'),
(188, 'c_deduction_ma', '0', '2024-03-14 13:48:00'),
(188, 'c_tax_amount', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_sal', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_sss', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_pib', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_calamity', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_med', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_eme', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_car', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_edu', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_planters', '0', '2024-03-14 13:48:00'),
(188, 'c_loan_planters2', '0', '2024-03-14 13:48:00'),
(188, 'approver', 'off', '2024-03-14 13:48:00'),
(173, 'leave_type_ids', '26,27', '2024-05-13 10:15:15'),
(173, 'leave_type_credits', '{\"26\":\"15\",\"27\":\"15\"}', '2024-05-13 10:15:15'),
(10072, 'type', '3', '2024-05-13 10:41:40'),
(10072, 'username', '10008', '2024-05-13 10:41:40'),
(10072, 'employee_id', '10008', '2024-05-13 10:41:40'),
(10072, 'c_date_hired', '2024-05-14', '2024-05-13 10:41:40'),
(10072, 'c_company', 'ALSC - Asian Land Strategies Company', '2024-05-13 10:41:40'),
(10072, 'c_status', 'Single', '2024-05-13 10:41:40'),
(10072, 'c_sex', 'Male', '2024-05-13 10:41:40'),
(10072, 'lastname', 'Carpio', '2024-05-13 10:41:40'),
(10072, 'firstname', 'John Anthony', '2024-05-13 10:41:40'),
(10072, 'middlename', 'ROBLES', '2024-05-13 10:41:40'),
(10072, 'c_address', '0065 PUROK 1 SAN JUAN', '2024-05-13 10:41:40'),
(10072, 'c_email', 'johnanthony443@gmail.com', '2024-05-13 10:41:40'),
(10072, 'c_office_loc', 'Malolos', '2024-05-13 10:41:40'),
(10072, 'designation_name', 'UTILITY', '2024-05-13 10:41:40'),
(10072, 'c_contact', '09082388453', '2024-05-13 10:41:40'),
(10072, 'c_birthdate', '1997-06-17', '2024-05-13 10:41:40'),
(10072, 'department_name', 'Project Management', '2024-05-13 10:41:40'),
(10072, 'c_division', 'Finance', '2024-05-13 10:41:40'),
(10072, 'c_level', 'Rank', '2024-05-13 10:41:40'),
(10072, 'c_section', 'General Services', '2024-05-13 10:41:40'),
(10072, 'c_employment', 'Regular', '2024-05-13 10:41:40'),
(10072, 'c_sbc_account_no', '', '2024-05-13 10:41:40'),
(10072, 'c_tin', '', '2024-05-13 10:41:40'),
(10072, 'c_sss', '', '2024-05-13 10:41:40'),
(10072, 'c_pagibig', '', '2024-05-13 10:41:40'),
(10072, 'c_philhealth', '', '2024-05-13 10:41:40'),
(10072, 'c_salary1', '30000', '2024-05-13 10:41:40'),
(10072, 'c_allowance', '0', '2024-05-13 10:41:40'),
(10072, 'c_transpo', '0', '2024-05-13 10:41:40'),
(10072, 'c_e_date', '2024-05-14', '2024-05-13 10:41:40'),
(10072, 'c_salary2', '0', '2024-05-13 10:41:40'),
(10072, 'c_allowance2', '0', '2024-05-13 10:41:40'),
(10072, 'c_cashiers_allow', '0', '2024-05-13 10:41:40'),
(10072, 'c_atm_account', '0', '2024-05-13 10:41:40'),
(10072, 'c_ghp', '0', '2024-05-13 10:41:40'),
(10072, 'c_deduction_ma', '0', '2024-05-13 10:41:40'),
(10072, 'c_tax_amount', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_sal', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_sss', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_pib', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_calamity', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_med', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_eme', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_car', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_edu', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_planters', '0', '2024-05-13 10:41:40'),
(10072, 'c_loan_planters2', '0', '2024-05-13 10:41:40'),
(10072, 'approver', 'off', '2024-05-13 10:41:40');

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
(51, 173, 27, 'Something Reason', '2024-05-15 00:00:00', '0000-00-00 00:00:00', 2, 1, 1, 0.5, '2024-05-13 10:14:30', '2024-05-13 10:28:32');

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
(26, 'SL', 'Sick Leave', 'The primary purpose of paid sick leave is to ensure employee against loss of pay for temporary absences from work sue to illness or injury.', 15, 1, '2024-03-22 11:46:59', '2024-03-26 09:06:30'),
(27, 'VL', 'Vacation Leave', ' Vacation leave refers to the time an employee takes off from work for rest, relaxation and  personal pursuits.', 15, 1, '2024-03-22 11:47:57', '2024-03-26 09:04:38'),
(28, 'ML', 'Maternity Leave', 'Matenity Leave is for a woman with an age of 30 years old and above', 30, 1, '2024-03-26 09:01:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `c_user` text NOT NULL,
  `c_date` text NOT NULL,
  `c_time` text NOT NULL,
  `c_module` text NOT NULL,
  `c_activity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `c_user`, `c_date`, `c_time`, `c_module`, `c_activity`) VALUES
(1, 'admin', '2024-03-14', '13:21:58', 'Employee', 'Add -- 123123123 -- De Jesus -- Leigh Anne'),
(2, 'admin', '2024-03-14', '13:22:32', 'Employee', 'Update -- 1000 -- De Jesus -- Leigh Anne'),
(3, 'admin', '2024-03-14', '13:22:53', 'Users', 'Delete -- 1000 -- De Jesus -- Leigh Anne'),
(4, 'admin', '2024-03-14', '13:24:13', 'Employee', 'Add -- 123333 -- De Jesus -- Leigh Anne'),
(5, 'admin', '2024-03-14', '13:24:21', 'Employee', 'Update -- 123333 -- De Jesus -- Leigh Anne'),
(6, 'admin', '2024-03-14', '13:24:32', 'Employee', 'Delete -- 123333 -- De Jesus -- Leigh Anne'),
(7, 'admin', '2024-03-14', '13:25:07', 'Department', 'Add -- aaadwdawd -- awdawd'),
(8, 'admin', '2024-03-14', '13:25:11', 'Department', 'Update -- aaadwdawd -- awdawdawdaw'),
(9, 'admin', '2024-03-14', '13:25:15', 'Department', 'Deleted -- aaadwdawd -- awdawdawdaw'),
(10, 'admin', '2024-03-14', '13:25:30', 'Designation', 'Add -- rrrr -- 3r3r3r'),
(11, 'admin', '2024-03-14', '13:25:34', 'Designation', 'Update -- rrrr -- 3radwawd'),
(12, 'admin', '2024-03-14', '13:25:38', 'Designation', 'Deleted -- rrrr -- 3radwawd'),
(13, 'admin', '2024-03-14', '13:26:17', 'Users', 'Add -- dawd, adw -- awdawd'),
(14, 'admin', '2024-03-14', '13:26:26', 'Users', 'Update -- dawd, adw -- awdad'),
(15, 'admin', '2024-03-14', '13:26:33', 'Employee', 'Delete -- awdad -- dawd -- adw'),
(16, 'admin', '2024-03-14', '13:27:49', 'Users', 'Add -- wdawd, aaadd -- adwda'),
(17, 'admin', '2024-03-14', '13:28:21', 'Users : Employee', 'Delete -- adwda -- wdawd -- aaadd'),
(18, 'admin', '2024-03-14', '13:28:54', 'Announcement', 'Add -- awdawd -- awdawd'),
(19, 'admin', '2024-03-14', '13:29:12', 'Announcement', 'Update -- awdawd -- awdawd'),
(20, 'admin', '2024-03-14', '13:29:19', 'Announcement', 'Deleted -- awdawd -- awdawd'),
(21, 'admin', '2024-03-14', '14:05:42', 'Employee', 'Add -- 12312 -- Magtalas -- Spouses Albert'),
(22, 'admin', '2024-03-14', '14:05:47', 'Users | Employee', 'Delete -- 12312 -- Magtalas -- Spouses Albert'),
(23, 'admin', '2024-03-15', '16:18:37', 'Employee', 'Add -- 80892 -- Amper -- Spouses Jesinelle'),
(24, 'admin', '2024-03-18', '11:33:21', 'Login', 'Log-in -- admin --  -- '),
(25, 'admin', '2024-03-18', '11:34:15', 'Login', 'Log-in -- admin --  -- '),
(26, 'admin', '2024-03-18', '11:34:51', 'Login', 'Log-in -- admin --  -- '),
(27, 'admin', '2024-03-18', '11:41:21', 'Users', 'Add -- ,  -- admin'),
(28, 'admin', '2024-03-18', '11:45:47', 'Login', 'Log-In --  --  -- '),
(29, 'admin', '2024-03-18', '11:46:58', 'Login', 'Log-In --  --  -- '),
(30, 'admin', '2024-03-18', '11:51:16', 'Login', 'User logged in: admin'),
(31, 'admin', '2024-03-18', '11:51:50', 'Login', 'User logged in: admin -- '),
(32, 'admin', '2024-03-18', '11:52:27', 'Login', 'User logged -- admin'),
(33, '10157', '2024-03-18', '11:52:55', 'Login', 'User logged -- 10157'),
(34, 'admin', '2024-03-18', '11:57:49', 'Login', 'User logged in -- admin (Adminstrator     )'),
(35, 'edhense', '2024-03-18', '11:58:04', 'Login', 'User logged in -- edhense (edhen sese)'),
(36, '10157', '2024-03-18', '11:58:24', 'Login', 'User logged in -- 10157 (Edhen Joy Sese)'),
(37, 'edhense', '2024-03-18', '13:14:31', 'Login', 'User logged -- edhense -- edhen -- sese'),
(38, 'edhense', '2024-03-18', '13:16:09', 'Login', 'User logged -- edhense -- (sese, edhen) '),
(39, '10157', '2024-03-18', '13:17:36', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(40, 'admin', '2024-03-18', '13:21:20', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(41, 'admin', '2024-03-18', '13:21:58', 'Login', 'User logged -- admin --     , Adminstrator'),
(42, 'edhense', '2024-03-18', '13:22:11', 'Login', 'User logged -- edhense -- sese, edhen'),
(43, 'edhense', '2024-03-18', '13:22:39', 'Login', 'User logged -- edhense -- (sese, edhen) '),
(44, '10157', '2024-03-18', '13:22:51', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(45, 'edhense', '2024-03-18', '13:36:51', 'Login', 'User logged -- edhense -- (sese, edhen) '),
(46, 'admin', '2024-03-18', '13:38:29', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(47, 'admin', '2024-03-18', '13:49:39', 'Employee', 'Update -- 80892 -- Amper -- Spouses Jesinelle'),
(48, 'admin', '2024-03-18', '13:49:50', 'Employee', 'Update -- 10157 -- Sese -- Edhen Joy'),
(49, 'edhense', '2024-03-18', '14:41:19', 'Login', 'User logged -- edhense -- (sese, edhen) '),
(50, 'edhense', '2024-03-18', '14:57:14', 'Uploads', 'Add -- aaaaa -- 2024-03-21'),
(51, 'edhense', '2024-03-18', '14:57:20', 'Policies', 'Deleted -- aaaaa -- 2024-03-21'),
(52, 'edhense', '2024-03-18', '15:07:38', 'Uploads', 'Add -- Drug Free Policy -- 2024-03-19'),
(53, 'admin', '2024-03-19', '08:33:41', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(54, 'admin', '2024-03-21', '08:24:59', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(55, '10157', '2024-03-21', '08:51:26', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(56, 'admin', '2024-03-21', '08:51:42', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(57, '10157', '2024-03-21', '10:22:01', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(58, 'admin', '2024-03-21', '10:24:06', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(59, 'admin', '2024-03-21', '10:29:53', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(60, '10157', '2024-03-21', '10:31:51', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(61, 'admin', '2024-03-22', '10:19:39', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(62, 'admin', '2024-03-22', '10:20:00', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(63, '10157', '2024-03-22', '10:50:15', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(64, '10070', '2024-03-22', '11:12:16', 'Login', 'User logged -- 10070 -- (Manalo, Ma. Sheila) '),
(65, '10157', '2024-03-22', '11:24:30', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(66, 'admin', '2024-03-22', '11:29:36', 'Employee', 'Update -- 10158 -- Amper -- Spouses Jesinelle'),
(67, 'admin', '2024-03-22', '11:30:09', 'Employee', 'Reset Password -- 10158'),
(68, '10158', '2024-03-22', '11:30:14', 'Login', 'User logged -- 10158 -- (Amper, Spouses Jesinelle) '),
(69, '10158', '2024-03-22', '11:36:16', 'Users', 'Update -- Amper, Jesinelle -- 10158'),
(70, '10158', '2024-03-22', '11:36:24', 'Users', 'Update -- Amper, Jesinelle -- 10158'),
(71, '10158', '2024-03-22', '11:36:53', 'Login', 'User logged -- 10158 -- (Amper, Jesinelle) '),
(72, '10157', '2024-03-22', '11:37:53', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(73, 'admin', '2024-03-26', '07:33:45', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(74, '10157', '2024-03-26', '07:37:01', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(75, '10157', '2024-03-26', '07:58:51', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(76, 'admin', '2024-03-26', '08:56:40', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(77, 'admin', '2024-03-26', '09:03:33', 'Policies', 'Deleted -- Drug Free Policy -- 2024-03-19'),
(78, 'admin', '2024-03-26', '11:20:18', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(79, '10157', '2024-03-26', '13:38:19', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(80, 'admin', '2024-03-26', '13:43:24', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(81, 'admin', '2024-03-26', '14:13:16', 'Policies', 'Add -- 2024 New Uniform -- HRD 2024 UNIFORM -- 2024-03-26'),
(82, 'admin', '2024-03-26', '14:17:53', 'Policies', 'Update -- Drug Free Policy -- ALSC-HRD-014-001 -- 2016-07-01'),
(83, 'admin', '2024-03-27', '08:34:55', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(84, '10157', '2024-03-27', '10:07:28', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(85, 'admin', '2024-03-27', '10:13:00', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(86, '10157', '2024-03-27', '11:16:13', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(87, 'admin', '2024-03-27', '11:17:09', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(88, 'admin', '2024-03-27', '11:31:11', 'Uploads', 'Add -- SAMPLE  -- 2024-03-28'),
(89, 'admin', '2024-03-27', '11:31:20', 'Uploads', 'Add -- aaaaa -- 2024-03-30'),
(90, '10157', '2024-03-27', '11:31:46', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(91, 'admin', '2024-03-27', '12:00:59', 'Policies', 'Deleted -- aaaaa -- 2024-03-30'),
(92, 'admin', '2024-03-27', '13:40:11', 'Uploads', 'Add -- aaaa -- 2024-03-28'),
(93, 'admin', '2024-03-27', '13:49:10', 'Policies', 'Deleted -- SAMPLE  -- 2024-03-28'),
(94, 'admin', '2024-03-27', '13:49:26', 'Uploads', 'Add -- awdawdawd -- 2024-03-06'),
(95, 'admin', '2024-03-29', '09:06:42', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(96, 'admin', '2024-03-29', '09:39:27', 'Policies', 'Deleted -- aaaa -- 2024-03-28'),
(97, 'admin', '2024-03-29', '09:39:47', 'Uploads', 'Add -- SAMPLE LANG TO -- 2024-03-30'),
(98, 'admin', '2024-03-29', '09:41:24', 'Uploads', 'Add -- aefefse -- 2024-03-14'),
(99, 'admin', '2024-03-29', '09:44:46', 'Uploads', 'Add -- fawefawfawf -- 2024-03-30'),
(100, 'admin', '2024-03-29', '09:44:51', 'Policies', 'Deleted -- SAMPLE LANG TO -- 2024-03-30'),
(101, 'admin', '2024-03-29', '09:44:52', 'Policies', 'Deleted -- fawefawfawf -- 2024-03-30'),
(102, 'admin', '2024-03-29', '09:45:07', 'Policies', 'Deleted -- aefefse -- 2024-03-14'),
(103, 'admin', '2024-03-29', '09:45:08', 'Policies', 'Deleted -- awdawdawd -- 2024-03-06'),
(104, 'admin', '2024-03-29', '09:45:10', 'Policies', 'Deleted -- SAMPLE MEMO FROM MEMO PRINT -- 2024-03-02'),
(105, 'admin', '2024-03-29', '09:49:13', 'Uploads', 'Add -- AAAAAAAAAAAAAAAAAAAa -- 2024-03-05'),
(106, 'admin', '2024-03-29', '09:49:31', 'Policies', 'Deleted -- AAAAAAAAAAAAAAAAAAAa -- 2024-03-05'),
(107, 'admin', '2024-03-29', '09:50:10', 'Uploads', 'Add -- dawdawd -- 2024-03-05'),
(108, 'admin', '2024-03-29', '09:54:11', 'Policies', 'Deleted -- dawdawd -- 2024-03-05'),
(109, 'admin', '2024-03-29', '09:54:17', 'Uploads', 'Add -- aaaaaaaaaaaaaaaaaaaaa -- 2024-03-01'),
(110, 'admin', '2024-03-29', '10:22:26', 'Policies', 'Deleted -- aaaaaaaaaaaaaaaaaaaaa -- 2024-03-01'),
(111, 'admin', '2024-03-29', '10:22:48', 'Uploads', 'Add -- Sample memo upload -- 2024-03-01'),
(112, 'admin', '2024-03-29', '11:53:28', 'Policies', 'Deleted -- Sample memo upload -- 2024-03-01'),
(113, 'admin', '2024-03-29', '11:53:31', 'Policies', 'Deleted -- Eidl Fitr 2023 -- 2023-04-17'),
(114, 'admin', '2024-03-29', '11:53:32', 'Policies', 'Deleted -- MID YEAR Performance Review -- 2023-03-02'),
(115, 'admin', '2024-03-29', '11:53:34', 'Policies', 'Deleted -- Summer Outing -- 2023-02-22'),
(116, 'admin', '2024-03-29', '11:53:36', 'Policies', 'Deleted -- ALSC Corporate Kick Off -- 2023-02-01'),
(117, 'admin', '2024-03-29', '11:53:38', 'Policies', 'Deleted -- HR Mandatory KRA & KPI Metrics -- 2023-01-26'),
(118, 'admin', '2024-03-29', '11:53:39', 'Policies', 'Deleted -- Year End Performance Review -- 2023-01-26'),
(119, 'admin', '2024-03-29', '11:53:42', 'Policies', 'Deleted -- KRA & KPI Target -- 2023-01-26'),
(120, 'admin', '2024-03-29', '11:53:44', 'Policies', 'Deleted -- Amendment to Alert Level 1 Operations Guidelines -- 2022-03-16'),
(121, 'admin', '2024-03-29', '11:53:46', 'Policies', 'Deleted -- Health Insurance (HMO) -- 2022-03-03'),
(122, 'admin', '2024-03-29', '11:53:48', 'Policies', 'Deleted -- Amendment to interim Guidelines for Covid 19 -- 2022-02-21'),
(123, 'admin', '2024-03-29', '11:53:49', 'Policies', 'Deleted -- Life and Accident Insurance -- 2021-06-20'),
(124, 'admin', '2024-03-29', '11:53:51', 'Policies', 'Deleted -- Health Insurance -- 2021-06-20'),
(125, 'admin', '2024-03-29', '11:53:53', 'Policies', 'Deleted -- Advisory Discontinuation of SBC Cash Card -- 2021-06-20'),
(126, 'admin', '2024-03-29', '11:53:55', 'Policies', 'Deleted -- GCQ Operations Guideline  -- 2021-06-20'),
(127, 'admin', '2024-03-29', '11:53:57', 'Policies', 'Deleted -- MECQ Guidelines August  -- 2020-08-02'),
(128, 'admin', '2024-03-29', '11:53:58', 'Policies', 'Deleted -- SSS Moratorium on Short Term Loan Payments -- 2020-06-26'),
(129, 'admin', '2024-03-29', '11:54:00', 'Policies', 'Deleted -- DOLE Labor Advisory Exemption from Payment -- 2020-01-25'),
(130, 'admin', '2024-03-29', '11:54:02', 'Policies', 'Deleted -- Reduction in Force Work Schedule & Corresponding Salary Reduction  -- 2020-01-06'),
(131, 'admin', '2024-03-29', '11:54:03', 'Policies', 'Deleted -- Blood Letting Day -- 2019-07-31'),
(132, 'admin', '2024-03-29', '11:54:05', 'Policies', 'Deleted -- Corporate Social Responsibility Tree Planting -- 2019-07-31'),
(133, 'admin', '2024-03-29', '11:54:06', 'Policies', 'Deleted -- 2019 New Model House Site & Orientation -- 2019-04-29'),
(134, 'admin', '2024-03-29', '11:54:08', 'Policies', 'Deleted -- Health and Wellness Program -- 2019-04-29'),
(135, 'admin', '2024-03-30', '11:26:35', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(136, 'admin', '2024-03-30', '11:29:14', 'Uploads', 'Add -- 2nd ALSC Office Olympics_TEAMOPOLY -- 2018-09-20'),
(137, 'admin', '2024-03-30', '11:29:36', 'Uploads', 'Add -- sdasd -- 2024-03-30'),
(138, 'admin', '2024-03-30', '11:29:44', 'Policies', 'Deleted -- sdasd -- 2024-03-30'),
(139, 'admin', '2024-03-30', '11:30:53', 'Uploads', 'Add -- Waste Management and Segregation Awareness Talk -- 2019-08-14'),
(140, 'admin', '2024-04-01', '14:51:41', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(141, 'admin', '2024-04-01', '15:00:14', 'Uploads', 'Add -- March Holiday -- 2024-03-19'),
(142, 'admin', '2024-04-01', '15:04:05', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(143, 'admin', '2024-04-01', '15:04:51', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(144, '10157', '2024-04-01', '15:25:51', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(145, 'admin', '2024-04-01', '15:26:34', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(146, 'admin', '2024-04-01', '15:42:18', 'Uploads', 'Add -- SAMPLE LANG  -- 2017-06-09'),
(147, 'admin', '2024-04-02', '07:45:48', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(148, 'admin', '2024-04-02', '08:27:16', 'Uploads', 'Add -- GHP From April 1, 2024 - March 31, 2025 -- 2024-03-11'),
(149, 'admin', '2024-04-02', '08:28:10', 'Uploads', 'Add -- Life and Accident Insurance From April 1, 2024 - March 31, 2025 -- 2024-03-11'),
(150, 'admin', '2024-04-02', '08:28:58', 'Uploads', 'Add -- HMO Coverage From April 1, 2024 - March 31, 2025 -- 2024-03-04'),
(151, 'admin', '2024-04-02', '08:31:48', 'Uploads', 'Add -- Year End Performance Review -- 2020-01-21'),
(152, 'admin', '2024-04-02', '08:32:43', 'Uploads', 'Add -- 2020_Amendment_ALSC_HRD_011_001_Visitor Policy -- 2020-03-05'),
(153, 'admin', '2024-04-02', '08:33:18', 'Uploads', 'Add -- 2021_2020 Annual Performance Review -- 2021-01-05'),
(154, 'admin', '2024-04-02', '08:34:01', 'Uploads', 'Add -- 2022_ Mid Year Performance Review -- 2021-06-28'),
(155, 'admin', '2024-04-02', '08:34:08', 'Policies', 'Deleted -- 2022_ Mid Year Performance Review -- 2021-06-28'),
(156, '10157', '2024-04-02', '08:44:30', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(157, 'admin', '2024-04-02', '10:33:42', 'Uploads', 'Add -- 2022_2021 Year End Performance Review -- 2022-01-01'),
(158, 'admin', '2024-04-02', '10:33:58', 'Uploads', 'Add -- 2022_Accessing (HMO) Intellicare Services_Intellicare Agora App -- 2023-02-03'),
(159, 'admin', '2024-04-02', '10:34:17', 'Uploads', 'Add -- aaaaaaaaaaaaaaa -- 2024-04-18'),
(160, 'admin', '2024-04-02', '10:38:55', 'Uploads', 'Add -- AAAAAADWadwadawd -- 2025-03-01'),
(161, '10157', '2024-04-02', '14:07:00', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(162, 'admin', '2024-04-02', '14:12:28', 'Policies', 'Deleted -- Waste Management and Segregation Awareness Talk -- 2019-08-14'),
(163, 'admin', '2024-04-02', '14:47:05', 'Employee', 'Update -- 10157 -- Sese -- Edhen Joy'),
(164, '10157', '2024-04-02', '15:34:17', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(165, 'admin', '2024-04-02', '15:52:27', 'Employee', 'Update -- 10158 -- Amper -- Spouses Jesinelle'),
(166, 'admin', '2024-04-02', '16:37:02', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(167, 'admin', '2024-04-03', '08:40:08', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(168, '10157', '2024-04-03', '10:09:02', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(169, 'admin', '2024-04-03', '10:50:11', 'Policies', 'Deleted -- aaaaaaaaaaaaaaa -- 2024-04-18'),
(170, 'admin', '2024-04-03', '10:52:30', 'Memo Upload', 'Add -- AAAAAA -- 2024-04-25'),
(171, 'admin', '2024-04-03', '10:56:14', 'Memo Upload', 'Delete -- AAAAAA -- 2024-04-25'),
(172, 'admin', '2024-04-03', '10:59:15', 'Memo Upload', 'Add -- AWDAWDW -- 2024-04-26'),
(173, 'admin', '2024-04-03', '10:59:21', 'Memo Upload', 'Delete -- AWDAWDW -- 2024-04-26'),
(174, 'admin', '2024-04-03', '11:05:17', 'Memo Upload', 'Delete -- 2022_Accessing (HMO) Intellicare Services_Intellicare Agora App -- 2023-02-03'),
(175, 'admin', '2024-04-03', '11:05:19', 'Memo Upload', 'Delete -- 2022_2021 Year End Performance Review -- 2022-01-01'),
(176, 'admin', '2024-04-03', '11:05:20', 'Memo Upload', 'Delete -- 2021_2020 Annual Performance Review -- 2021-01-05'),
(177, 'admin', '2024-04-03', '11:05:22', 'Memo Upload', 'Delete -- 2020_Amendment_ALSC_HRD_011_001_Visitor Policy -- 2020-03-05'),
(178, 'admin', '2024-04-03', '11:05:23', 'Memo Upload', 'Delete -- Year End Performance Review -- 2020-01-21'),
(179, 'admin', '2024-04-03', '11:05:34', 'Memo Upload', 'Delete -- March Holiday -- 2024-03-19'),
(180, 'admin', '2024-04-03', '11:05:36', 'Memo Upload', 'Delete -- GHP From April 1, 2024 - March 31, 2025 -- 2024-03-11'),
(181, 'admin', '2024-04-03', '11:05:37', 'Memo Upload', 'Delete -- Life and Accident Insurance From April 1, 2024 - March 31, 2025 -- 2024-03-11'),
(182, 'admin', '2024-04-03', '11:05:39', 'Memo Upload', 'Delete -- HMO Coverage From April 1, 2024 - March 31, 2025 -- 2024-03-04'),
(183, 'admin', '2024-04-03', '11:15:09', 'Memo Upload', 'Add -- New Model House Site Tripping & Orientation -- 2019-04-29'),
(184, 'admin', '2024-04-03', '11:17:11', 'Memo Upload', 'Add -- Health and Wellness Program -- 2019-04-30'),
(185, 'admin', '2024-04-03', '11:17:58', 'Memo Upload', 'Add -- Blood Letting Day -- 2019-07-30'),
(186, 'admin', '2024-04-03', '11:18:39', 'Memo Upload', 'Add -- Corporate Social Responsibility Tree Planting -- 2019-07-30'),
(187, 'admin', '2024-04-03', '11:19:30', 'Memo Upload', 'Add -- Office Theme of the Week -- 2019-02-01'),
(188, 'admin', '2024-04-03', '11:21:38', 'Memo Upload', 'Add -- Office Theme of the Week -- 2019-02-01'),
(189, 'admin', '2024-04-03', '11:22:18', 'Memo Upload', 'Delete -- Blood Letting Day -- 2019-07-30'),
(190, 'admin', '2024-04-03', '11:22:20', 'Memo Upload', 'Delete -- Corporate Social Responsibility Tree Planting -- 2019-07-30'),
(191, 'admin', '2024-04-03', '11:22:22', 'Memo Upload', 'Delete -- Health and Wellness Program -- 2019-04-30'),
(192, 'admin', '2024-04-03', '11:22:24', 'Memo Upload', 'Delete -- New Model House Site Tripping & Orientation -- 2019-04-29'),
(193, 'admin', '2024-04-03', '11:24:12', 'Memo Upload', 'Add -- Office Theme of the Week -- 2019-02-01'),
(194, 'admin', '2024-04-03', '11:26:14', 'Memo Upload', 'Add -- Office Theme of the Week -- 2019-02-01'),
(195, 'admin', '2024-04-03', '11:32:21', 'Memo Upload', 'Add -- New Model House Site Tripping & Orientation -- 2019-04-29'),
(196, 'admin', '2024-04-03', '11:32:54', 'Memo Upload', 'Add -- Health and Wellness Program -- 2019-04-30'),
(197, 'admin', '2024-04-03', '11:33:29', 'Memo Upload', 'Add -- Blood Letting Day -- 2019-07-30'),
(198, 'admin', '2024-04-03', '11:34:07', 'Memo Upload', 'Add -- Corporate Social Responsibility Tree Planting -- 2019-07-30'),
(199, 'admin', '2024-04-03', '11:34:48', 'Memo Upload', 'Add -- 25th Year Foundation Celebration -- 2019-03-14'),
(200, 'admin', '2024-04-03', '11:35:57', 'Memo Upload', 'Add -- 3rd Quarter General Assembly Pandesal Party -- 2019-10-07'),
(201, 'admin', '2024-04-03', '11:36:39', 'Memo Upload', 'Add -- Year End Performance Review -- 2019-01-29'),
(202, 'admin', '2024-04-03', '11:37:21', 'Memo Upload', 'Add -- Kick Off and Party -- 2019-11-12'),
(203, 'admin', '2024-04-03', '11:38:25', 'Memo Upload', 'Add -- Anti Flu Vaccination -- 2019-05-21'),
(204, 'admin', '2024-04-03', '11:39:19', 'Memo Upload', 'Add -- APE -- 2019-11-11'),
(205, 'admin', '2024-04-03', '11:40:05', 'Memo Upload', 'Add -- APE Blood Chem -- 2019-03-13'),
(206, 'admin', '2024-04-03', '11:40:56', 'Memo Upload', 'Add -- Employee Awards 2019 -- 2019-11-27'),
(207, 'admin', '2024-04-03', '11:42:34', 'Memo Upload', 'Add -- Employee Property (Housing) Loan Policy -- 2019-01-17'),
(208, 'admin', '2024-04-03', '11:44:39', 'Memo Upload', 'Add -- Employee Sales Referral Program -- 2019-06-11'),
(209, 'admin', '2024-04-03', '11:49:35', 'Memo Upload', 'Add -- MidYear Performance Review -- 2019-06-20'),
(210, 'admin', '2024-04-03', '11:50:28', 'Memo Upload', 'Add -- Waste Management and Segregation Awareness Talk -- 2019-07-30'),
(211, 'admin', '2024-04-03', '11:51:23', 'Memo Upload', 'Add -- 25th Foundation Week Celebration -- 2019-03-01'),
(212, 'admin', '2024-04-03', '11:52:25', 'Memo Upload', 'Add -- Addendum Table of Offenses -- 2019-03-21'),
(213, 'admin', '2024-04-03', '11:52:57', 'Memo Upload', 'Add -- April Holidays -- 2019-03-28'),
(214, 'admin', '2024-04-03', '11:54:31', 'Memo Upload', 'Add -- August Holidays -- 2019-07-31'),
(215, 'admin', '2024-04-03', '11:55:27', 'Memo Upload', 'Add -- Christmas Family Day 2019 -- 2019-12-17'),
(216, 'admin', '2024-04-03', '11:56:11', 'Memo Upload', 'Add -- December Holidays -- 2019-11-25'),
(217, 'admin', '2024-04-03', '11:56:48', 'Memo Upload', 'Add -- Early Dismissal All Saints Day -- 2019-10-29'),
(218, 'admin', '2024-04-03', '11:57:45', 'Memo Upload', 'Add -- Early Dismissal Lent -- 2019-03-16'),
(219, 'admin', '2024-04-03', '11:58:35', 'Memo Upload', 'Add -- 3rd Employee Appreciation Day -- 2019-09-24'),
(220, 'admin', '2024-04-03', '13:13:11', 'Memo Upload', 'Add -- Employees Retirement Plan -- 2019-08-22'),
(221, 'admin', '2024-04-03', '13:14:23', 'Memo Upload', 'Delete -- Employees Retirement Plan -- 2019-08-22'),
(222, 'admin', '2024-04-03', '13:15:02', 'Memo Upload', 'Add -- Employees Retirement Plan -- 2019-08-22'),
(223, 'admin', '2024-04-03', '13:17:04', 'Memo Upload', 'Add -- February Holidays -- 2019-01-30'),
(224, 'admin', '2024-04-03', '13:17:47', 'Memo Upload', 'Add -- Fun at Workdays -- 2019-09-24'),
(225, 'admin', '2024-04-03', '13:28:31', 'Memo Upload', 'Add -- Health Insurance from April 1 2019 - March 31 2020 -- 2019-03-27'),
(226, 'admin', '2024-04-03', '13:29:09', 'Memo Upload', 'Add -- Issuance of Uniform -- 2019-08-02'),
(227, 'admin', '2024-04-03', '13:30:01', 'Memo Upload', 'Add -- June Holidays -- 2019-03-29'),
(228, 'admin', '2024-04-03', '13:30:45', 'Memo Upload', 'Add -- Kainang Pamilya Mahalaga Day -- 2019-09-17'),
(229, 'admin', '2024-04-03', '13:31:35', 'Memo Upload', 'Add -- Life and Accident Insurance -- 2019-03-27'),
(230, 'admin', '2024-04-03', '13:32:40', 'Memo Upload', 'Add -- Office Pantry Etiquette -- 2019-06-25'),
(231, 'admin', '2024-04-03', '13:33:14', 'Memo Upload', 'Add -- Pre All Saints Day Event -- 2019-10-25'),
(232, 'admin', '2024-04-03', '13:33:52', 'Memo Upload', 'Add -- Uniform Fitting Pants -- 2019-05-22'),
(233, 'admin', '2024-04-03', '13:34:18', 'Memo Upload', 'Add -- Uniform Fitting -- 2019-04-16'),
(234, 'admin', '2024-04-03', '13:34:46', 'Memo Upload', 'Add -- Vehicle Sticker Policy -- 2019-04-30'),
(235, 'admin', '2024-04-03', '13:35:38', 'Memo Upload', 'Add -- Wearing of New Set of Uniforms -- 2019-08-07'),
(236, 'admin', '2024-04-03', '13:36:28', 'Memo Upload', 'Add -- 2nd Quarter General Assembly Pandesal Party -- 2019-06-21'),
(237, 'admin', '2024-04-03', '13:37:17', 'Memo Upload', 'Add -- 2nd Employee Appreciation Day -- 2019-07-24'),
(238, 'admin', '2024-04-03', '13:39:14', 'Memo Upload', 'Add -- Work Schedule from March 16-April 14 2020 Relative to Covid19 -- 2020-03-16'),
(239, 'admin', '2024-04-03', '13:39:46', 'Memo Upload', 'Add -- Reduction in Force Work Hours & Corresponding Salary Reduction Salary -- 2019-05-29'),
(240, 'admin', '2024-04-03', '13:40:07', 'Memo Upload', 'Delete -- Reduction in Force Work Hours & Corresponding Salary Reduction Salary -- 2019-05-29'),
(241, 'admin', '2024-04-03', '13:40:32', 'Memo Upload', 'Add -- Reduction in Force Work Hours & Corresponding Salary Reduction Salary -- 2020-05-29'),
(242, 'admin', '2024-04-03', '13:41:04', 'Memo Upload', 'Add -- SSS Moratorium on Short Term Loan Payments -- 2020-04-13'),
(243, 'admin', '2024-04-03', '13:41:34', 'Memo Upload', 'Add -- DOLE Labor Advisory 13-A Exemption from Payment of April 9 10 and 11 2020 -- 2020-04-07'),
(244, 'admin', '2024-04-03', '13:42:21', 'Memo Upload', 'Add -- REVISED Work Schedule from March 16-April 14 2020 Relative to Covid 19 -- 2020-03-19'),
(245, 'admin', '2024-04-03', '13:43:29', 'Memo Upload', 'Add -- Interim Guidelines on Workplace Prevention and Control of Covid 19 -- 2020-05-26'),
(246, 'admin', '2024-04-03', '13:44:09', 'Memo Upload', 'Add -- MECQ Guidelines August 4-18 2020 -- 2020-08-04'),
(247, 'admin', '2024-04-03', '13:44:49', 'Memo Upload', 'Add -- Resumption of Regular 40 Hours Workweek and Relates Salary Readjustment -- 2020-12-15'),
(248, 'admin', '2024-04-03', '13:46:26', 'Memo Upload', 'Add -- Amendment ALSC HRD 011 001 Visitor Policy -- 2020-03-05'),
(249, 'admin', '2024-04-03', '13:52:50', 'Memo Upload', 'Add -- 2020_Anti_Flu Vaccination -- 2020-06-09'),
(250, 'admin', '2024-04-03', '13:53:40', 'Memo Upload', 'Add -- Guidelines to Prevent the Spread of Covid 19 in the Workplace -- 2020-03-04'),
(251, 'admin', '2024-04-03', '13:55:06', 'Memo Upload', 'Add -- Revised Guidelines on Semi Annual Performance Review -- 2020-02-17'),
(252, 'admin', '2024-04-03', '13:58:34', 'Memo Upload', 'Add -- Resumption of Regular 40 Hours Workweek and Relates Salary Readjustment -- 2333-02-01'),
(253, 'admin', '2024-04-03', '14:00:21', 'Memo Upload', 'Delete -- Resumption of Regular 40 Hours Workweek and Relates Salary Readjustment -- 2020-12-15'),
(254, 'admin', '2024-04-03', '14:01:56', 'Memo Upload', 'Add -- Resumption of Regular 40 Hours Workweek and Relates Salary Readjustment -- 2020-02-07'),
(255, 'admin', '2024-04-03', '14:03:43', 'Memo Upload', 'Add -- APE -- 2020-12-07'),
(256, 'admin', '2024-04-03', '14:04:27', 'Memo Upload', 'Add -- Bating Filipino -- 2020-06-30'),
(257, 'admin', '2024-04-03', '14:05:10', 'Memo Upload', 'Add -- Covid19 Prevention Advisory -- 2020-12-25'),
(258, 'admin', '2024-04-03', '14:05:45', 'Memo Upload', 'Add -- Covid19 Updates -- 2020-03-11'),
(259, 'admin', '2024-04-03', '14:07:46', 'Memo Upload', 'Add -- Kainang Pamilya Mahalaga Day -- 2020-09-28'),
(260, 'admin', '2024-04-03', '14:08:18', 'Memo Upload', 'Add -- Safety on the Workplace Seminar -- 2020-03-06'),
(261, 'admin', '2024-04-03', '14:08:53', 'Memo Upload', 'Add -- 2020 Kick Off & Annual Party -- 2020-01-03'),
(262, 'admin', '2024-04-03', '14:09:20', 'Memo Upload', 'Add -- Use of Face Masks in the Office -- 2020-07-21'),
(263, 'admin', '2024-04-03', '14:09:55', 'Memo Upload', 'Add -- Use of Face Shields in the Office -- 2020-08-12'),
(264, 'admin', '2024-04-03', '14:10:58', 'Memo Upload', 'Add -- Antigen Saliva Covid Rapid Test -- 2021-02-02'),
(265, 'admin', '2024-04-03', '14:12:52', 'Memo Upload', 'Add -- ALSC 2021 Corporate Kick-off -- 2021-02-02'),
(266, 'admin', '2024-04-03', '14:13:34', 'Memo Upload', 'Add -- MECQ Operations Guidelines Additional SOPs -- 2021-04-27'),
(267, 'admin', '2024-04-03', '14:14:15', 'Memo Upload', 'Add -- Eidl Fitr -- 2021-05-11'),
(268, 'admin', '2024-04-03', '14:14:51', 'Memo Upload', 'Add -- Anti-Flu-Vaccination -- 2021-05-11'),
(269, 'admin', '2024-04-03', '14:15:58', 'Memo Upload', 'Add -- Covid 19 Vaccination Time Allowance -- 2021-05-18'),
(270, 'admin', '2024-04-03', '14:16:31', 'Memo Upload', 'Add -- Workplace-UV-Disinfection-Protocols -- 2021-05-18'),
(271, 'admin', '2024-04-03', '14:17:50', 'Memo Upload', 'Add -- 2021 Mid Year Performance Review -- 2021-06-22'),
(272, 'admin', '2024-04-03', '14:18:23', 'Memo Upload', 'Add -- Intensified health Protocols amidst GCQ with Heightened Restrictions -- 2021-08-02'),
(273, 'admin', '2024-04-03', '14:19:39', 'Memo Upload', 'Add -- Heightened Health Monitoring Protocols Concerning Delta Variant -- 2021-08-03'),
(274, 'admin', '2024-04-03', '14:25:39', 'Memo Upload', 'Add -- Additional Protocols Concerning Government OB Transactions and Other Meetings -- 2021-08-03'),
(275, 'admin', '2024-04-03', '14:26:12', 'Memo Upload', 'Delete -- Additional Protocols Concerning Government OB Transactions and Other Meetings -- 2021-08-03'),
(276, 'admin', '2024-04-03', '14:26:41', 'Memo Upload', 'Add -- Additional Protocols Concerning Government OB Transactions and Other Meetings -- 2021-08-03'),
(277, 'admin', '2024-04-03', '14:27:39', 'Memo Upload', 'Add -- Additional Protocols amidst Continuing Covid 19 Delta Surge -- 2021-08-24'),
(278, 'admin', '2024-04-03', '14:33:04', 'Memo Upload', 'Add -- 2021 Mid Year Performance Review -- 2021-08-22'),
(279, 'admin', '2024-04-03', '14:35:39', 'Memo Upload', 'Delete -- 2021 Mid Year Performance Review -- 2021-08-22'),
(280, 'admin', '2024-04-03', '14:38:29', 'Memo Upload', 'Add -- GCQ Operations Guidelines October-18-2021-Onwards -- 2021-10-18'),
(281, 'admin', '2024-04-03', '14:39:12', 'Memo Upload', 'Add -- Food Delivery Protocols -- 2021-11-03'),
(282, 'admin', '2024-04-03', '14:39:50', 'Memo Upload', 'Add -- MECQ Operations Guidelines  April 12 2021 -- 2021-04-09'),
(283, 'admin', '2024-04-03', '14:40:28', 'Memo Upload', 'Add -- 2020 Annual Performance Review -- 2021-01-05'),
(284, 'admin', '2024-04-03', '14:41:12', 'Memo Upload', 'Add -- Anti Flu Vaccination_October 2021 -- 2021-10-05'),
(285, 'admin', '2024-04-03', '14:41:42', 'Memo Upload', 'Add -- APE -- 2021-11-18'),
(286, 'admin', '2024-04-03', '14:42:31', 'Memo Upload', 'Add -- In House Construction Promotion Confidential and Proprietary Informartion -- 2021-03-02'),
(287, 'admin', '2024-04-03', '14:44:07', 'Memo Upload', 'Add -- Advisory Discontinuation of SBC Cash Card -- 2021-09-02'),
(288, 'admin', '2024-04-03', '14:44:56', 'Memo Upload', 'Add -- GHP from April 1 2021 March 31, 2022 -- 2021-03-23'),
(289, 'admin', '2024-04-03', '14:45:32', 'Memo Upload', 'Add -- Health Insurance from April 1 2021 March 31 2022 -- 2021-03-23'),
(290, 'admin', '2024-04-03', '14:46:05', 'Memo Upload', 'Add -- Holiday-Eidl Adha -- 2021-07-16'),
(291, 'admin', '2024-04-03', '14:46:39', 'Memo Upload', 'Add -- Life and Accident Insurance from April 1 2021_March 31 2022 -- 2021-03-23'),
(292, 'admin', '2024-04-04', '10:21:22', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(293, 'admin', '2024-04-04', '10:23:13', 'Memo Upload', 'Add -- MECQ Operations Guidelines August 16 2021 Onwards -- 2021-08-31'),
(294, 'admin', '2024-04-04', '10:24:09', 'Memo Upload', 'Add -- Protocols on Face Shields and Eating Meals or Snacks -- 2021-11-16'),
(295, 'admin', '2024-04-04', '10:25:42', 'Memo Upload', 'Add -- Amendment to Interim Guidelines for Covid19(HRD-2020-0318_HRD-2021-023,et.al) -- 2022-02-16'),
(296, 'admin', '2024-04-04', '10:26:40', 'Memo Upload', 'Add -- Health Insurance(HMO) from April 1 2022_March 31 2023 -- 2022-03-01'),
(297, 'admin', '2024-04-04', '10:27:23', 'Memo Upload', 'Add -- January Holidays -- 2022-01-19'),
(298, 'admin', '2024-04-04', '10:27:47', 'Memo Upload', 'Add -- February Holidays -- 2022-01-28'),
(299, 'admin', '2024-04-04', '10:28:38', 'Memo Upload', 'Add -- Amendment to Alert Level 1 Operations Guidelines March 21 2022 Onwards -- 2022-03-16'),
(300, 'admin', '2024-04-04', '10:29:12', 'Memo Upload', 'Add -- April Holidays -- 2022-03-28'),
(301, 'admin', '2024-04-04', '10:30:03', 'Memo Upload', 'Add -- GHP from April 1 2021 March 31, 2022 -- 2022-03-28'),
(302, 'admin', '2024-04-04', '10:30:46', 'Memo Upload', 'Add -- Life and Accident Insurance from April 1 2022_March 31 2023 -- 2022-03-28'),
(303, 'admin', '2024-04-04', '10:31:44', 'Memo Upload', 'Add -- Submission of Timekeeping Forms and other HR Forms -- 2022-03-31'),
(304, 'admin', '2024-04-04', '10:32:56', 'Memo Upload', 'Add -- Accessing (HMO) Intellicare Services Intellicare Agora App -- 2022-03-31'),
(305, 'admin', '2024-04-04', '10:33:23', 'Memo Upload', 'Add -- Anti FLU Vaccination -- 2022-04-18'),
(306, 'admin', '2024-04-04', '10:34:43', 'Memo Upload', 'Add -- May Holidays -- 2022-04-28'),
(307, 'admin', '2024-04-04', '11:19:18', 'Memo Upload', 'Add -- Revised Uniform Policy -- 2022-03-17'),
(308, 'admin', '2024-04-04', '11:25:14', 'Memo Upload', 'Add -- Groundfloor Service Operations -- 2022-06-21'),
(309, 'admin', '2024-04-04', '11:25:49', 'Memo Upload', 'Add -- Mid Year Performance Review -- 2022-06-28'),
(310, 'admin', '2024-04-04', '11:26:26', 'Memo Upload', 'Add -- Biometrics Instructions -- 2022-06-27'),
(311, 'admin', '2024-04-04', '11:29:24', 'Memo Upload', 'Add -- Holiday Eidl-Adha -- 2022-07-07'),
(312, 'admin', '2024-04-04', '11:30:06', 'Memo Upload', 'Add -- August Holidays -- 2022-08-01'),
(313, 'admin', '2024-04-04', '11:33:19', 'Memo Upload', 'Add -- APE Memo Attachment NEW NORMAL APE PROCESS FLOW_LEVEL 1-10082022 -- 2022-10-17'),
(314, 'admin', '2024-04-04', '11:34:14', 'Memo Upload', 'Add -- ALSC 2023 Corporate Kick-Off -- 2022-11-02'),
(315, 'admin', '2024-04-04', '11:40:18', 'Memo Upload', 'Add -- Wearing of Facemask in the Office -- 2022-11-02'),
(316, 'admin', '2024-04-04', '11:41:05', 'Memo Upload', 'Add -- APE Memo Attachment -- 2022-11-10'),
(317, 'admin', '2024-04-04', '11:41:39', 'Memo Upload', 'Add -- Employee Awards 2022 -- 2022-11-10'),
(318, 'admin', '2024-04-04', '11:43:23', 'Memo Upload', 'Add -- ALSC Christmas Family Day 2022 -- 2022-12-16'),
(319, 'admin', '2024-04-04', '11:46:28', 'Memo Upload', 'Add -- ALSC Christmas Family Day 2022 -- 2022-12-23'),
(320, 'admin', '2024-04-04', '11:46:47', 'Memo Upload', 'Delete -- ALSC Christmas Family Day 2022 -- 2022-12-23'),
(321, 'admin', '2024-04-04', '11:47:22', 'Memo Upload', 'Add -- December Holiday December 26 -- 2022-12-23'),
(322, 'admin', '2024-04-04', '11:47:57', 'Memo Upload', 'Add -- 2022_2021 Year End Performance Review -- 2022-01-05'),
(323, 'admin', '2024-04-04', '11:48:33', 'Memo Upload', 'Add -- Additional Biometrics -- 2022-09-29'),
(324, 'admin', '2024-04-04', '11:55:59', 'Memo Upload', 'Add -- Alert Level 1 Operations Guidelines March 1 2022 onwards -- 2022-02-28'),
(325, 'admin', '2024-04-04', '11:56:35', 'Memo Upload', 'Add -- Alert Level 3 Operations Guidelines January 5 2022 onwards -- 2022-01-05'),
(326, 'admin', '2024-04-04', '11:57:04', 'Memo Upload', 'Add -- Corporate Photo Shoot -- 2022-11-28'),
(327, 'admin', '2024-04-04', '11:57:38', 'Memo Upload', 'Add -- December 2022 January 2 2023 Holidays -- 2022-11-28'),
(328, 'admin', '2024-04-04', '11:58:07', 'Memo Upload', 'Add -- Early Dismissal Lenten Season -- 2022-02-11'),
(329, 'admin', '2024-04-04', '11:58:24', 'Memo Upload', 'Delete -- Early Dismissal Lenten Season -- 2022-02-11'),
(330, 'admin', '2024-04-04', '11:58:54', 'Memo Upload', 'Add -- Early Dismissal Lenten Season -- 2022-04-11'),
(331, 'admin', '2024-04-04', '12:00:14', 'Memo Upload', 'Add -- Employee Awards 2021 -- 2022-01-05'),
(332, 'admin', '2024-04-04', '12:00:53', 'Memo Upload', 'Add -- June Holidays -- 2022-06-01'),
(333, 'admin', '2024-04-04', '12:01:24', 'Memo Upload', 'Add -- Kainang Pamilya Mahalaga -- 2022-09-20'),
(334, 'admin', '2024-04-04', '12:01:55', 'Memo Upload', 'Add -- October November Holidays -- 2022-10-18'),
(335, 'admin', '2024-04-04', '12:02:16', 'Memo Upload', 'Add -- September Holiday -- 2022-08-31'),
(336, '10157', '2024-04-04', '13:21:41', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(337, 'admin', '2024-04-04', '13:22:33', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(338, 'admin', '2024-04-04', '13:23:23', 'Memo Upload', 'Add -- 2022 ALSC Corporate Kick Off & Party -- 2022-03-28'),
(339, 'admin', '2024-04-04', '13:25:05', 'Memo Upload', 'Add -- ALSC 2023 Corporate Kick Off -- 2023-01-04'),
(340, 'admin', '2024-04-04', '13:25:42', 'Memo Upload', 'Add -- HR_Mandatory 2023 KRA_KPI Metrics -- 2023-01-26'),
(341, 'admin', '2024-04-04', '13:26:12', 'Memo Upload', 'Add -- 2022 Year End Performance Review -- 2023-01-24'),
(342, 'admin', '2024-04-04', '13:26:50', 'Memo Upload', 'Add -- 2023 KRA and KPI Targets -- 2023-01-25'),
(343, 'admin', '2024-04-04', '13:27:29', 'Memo Upload', 'Add -- Summer Outing 2023 -- 2023-02-21'),
(344, 'admin', '2024-04-04', '13:28:02', 'Memo Upload', 'Add -- Eidl Fitr 2023 -- 2023-04-17'),
(345, 'admin', '2024-04-04', '13:28:40', 'Memo Upload', 'Add -- RE ISSUE Corporate Internet Email and Equipment Policy -- 2023-04-19'),
(346, 'admin', '2024-04-04', '13:29:15', 'Memo Upload', 'Add -- Addendum New Parking Guideline and Reminders -- 2023-05-04'),
(347, 'admin', '2024-04-04', '13:29:48', 'Memo Upload', 'Add -- Holiday in Pulilan -- 2023-05-12'),
(348, 'admin', '2024-04-04', '13:30:24', 'Memo Upload', 'Add -- Anti Flu Vaccination -- 2023-05-18'),
(349, 'admin', '2024-04-04', '13:30:51', 'Memo Upload', 'Add -- Mid Year Pandesal Party -- 2023-07-04'),
(350, 'admin', '2024-04-04', '13:31:21', 'Memo Upload', 'Add -- Mid Year Performance Review -- 2023-07-11'),
(351, 'admin', '2024-04-04', '13:32:04', 'Memo Upload', 'Add -- Lifting to Covid19 Protocols August-1-2023 -- 2023-07-28'),
(352, 'admin', '2024-04-04', '13:32:45', 'Memo Upload', 'Add -- Kainang Pamilya Mahalaga Day -- 2023-09-19'),
(353, 'admin', '2024-04-04', '13:33:10', 'Memo Upload', 'Add -- October Pandesal Party -- 2023-09-18'),
(354, 'admin', '2024-04-04', '13:33:42', 'Memo Upload', 'Add -- January Holiday -- 2023-01-03'),
(355, 'admin', '2024-04-04', '13:34:50', 'Memo Upload', 'Add -- January Holiday Pulilan Foundation Day -- 2023-01-19'),
(356, 'admin', '2024-04-04', '13:35:18', 'Memo Upload', 'Add -- February Holidays -- 2023-01-30'),
(357, 'admin', '2024-04-04', '13:36:08', 'Memo Upload', 'Add -- GHP from April 1 2023 - March 31, 2024 -- 2023-03-27'),
(358, 'admin', '2024-04-04', '13:36:41', 'Memo Upload', 'Add -- HMO Coverage from April 1 2023 - March 31, 2024 -- 2023-03-24'),
(359, 'admin', '2024-04-04', '13:37:21', 'Memo Upload', 'Add -- Life and Accident Insurance from April 1 2023 - March 31, 2024 -- 2023-03-27'),
(360, 'admin', '2024-04-04', '13:37:50', 'Memo Upload', 'Add -- April Holidays -- 2023-03-27'),
(361, 'admin', '2024-04-04', '13:38:28', 'Memo Upload', 'Add -- Dependents HMO Coverage from April 1 2023 - March 31 2024 -- 2023-03-27'),
(362, 'admin', '2024-04-04', '13:38:56', 'Memo Upload', 'Add -- May Holiday -- 2023-04-24'),
(363, 'admin', '2024-04-04', '13:39:25', 'Memo Upload', 'Add -- June Holiday -- 2023-05-29'),
(364, 'admin', '2024-04-04', '13:40:00', 'Memo Upload', 'Add -- Eidl Adha -- 2023-06-14'),
(365, 'admin', '2024-04-04', '13:40:31', 'Memo Upload', 'Add -- August Holidays -- 2023-08-07'),
(366, 'admin', '2024-04-04', '13:40:57', 'Memo Upload', 'Add -- Bulacan Holiday Marcelo H Del Pilar -- 2023-08-22'),
(367, 'admin', '2024-04-04', '13:41:50', 'Memo Upload', 'Add -- October and November Holidays -- 2023-10-11'),
(368, 'admin', '2024-04-04', '13:42:13', 'Memo Upload', 'Add -- Employee Awards 2023 -- 2023-11-06'),
(369, 'admin', '2024-04-04', '13:42:47', 'Memo Upload', 'Add -- APE Nov30 2023 -- 2023-11-20'),
(370, 'admin', '2024-04-04', '13:43:29', 'Memo Upload', 'Add -- Holidays December January 1 2024 -- 2023-12-04'),
(371, 'admin', '2024-04-04', '13:44:01', 'Memo Upload', 'Add -- Asian Land@30 2024 Kick Off and Party -- 2023-12-06'),
(372, 'admin', '2024-04-04', '13:44:30', 'Memo Upload', 'Add -- December Holiday -- 2023-12-13'),
(373, 'admin', '2024-04-04', '13:45:04', 'Memo Upload', 'Add -- MID YEAR Performance Review -- 2023-11-21'),
(374, 'admin', '2024-04-04', '14:06:55', 'Memo Upload', 'Delete -- MID YEAR Performance Review -- 2023-11-21'),
(375, 'admin', '2024-04-04', '14:24:33', 'Memo Upload', 'Add -- AAAA -- 2024-04-18'),
(376, 'admin', '2024-04-04', '14:24:39', 'Memo Upload', 'Delete -- AAAA -- 2024-04-18'),
(377, 'admin', '2024-04-04', '16:05:45', 'Memo Upload', 'Updated -- Asian Land@30 2024 Kick Off and Party ! -- 2023-12-06'),
(378, 'admin', '2024-04-04', '16:05:52', 'Memo Upload', 'Updated -- Asian Land@30 2024 Kick Off and Party -- 2023-12-06'),
(379, 'admin', '2024-04-04', '16:49:35', 'Memo Upload', 'Updated -- December Holiday -- 2023-12-13'),
(380, 'admin', '2024-04-05', '08:16:52', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(381, '10157', '2024-04-05', '08:18:04', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(382, 'admin', '2024-04-08', '08:32:42', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(383, 'admin', '2024-04-08', '10:15:56', 'Memo Upload', 'Add --  -- '),
(384, 'admin', '2024-04-08', '10:19:34', 'Memo Upload', 'Updated -- December Holiday !!! -- 2023-12-13'),
(385, 'admin', '2024-04-08', '10:36:01', 'Memo Upload', 'Updated -- December Holiday -- 2023-12-13'),
(386, 'admin', '2024-04-08', '10:38:57', 'Memo Upload', 'Add -- March Holidays -- 2024-03-14'),
(387, 'admin', '2024-04-08', '10:52:49', 'Memo Upload', 'Updated -- December Holiday !! -- 2023-12-13'),
(388, 'admin', '2024-04-08', '10:57:33', 'Memo Upload', 'Updated -- December Holiday -- 2023-12-13'),
(389, 'admin', '2024-04-08', '11:24:46', 'Memo Upload', 'Updated -- March Holidays. -- 2024-03-14'),
(390, 'admin', '2024-04-08', '11:24:54', 'Memo Upload', 'Updated -- March Holidays -- 2024-03-14'),
(391, '10157', '2024-04-08', '11:26:40', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(392, 'admin', '2024-04-08', '14:09:12', 'Memo Upload', 'Updated -- December Holiday !@!!! -- 2023-12-13'),
(393, 'admin', '2024-04-08', '14:09:20', 'Memo Upload', 'Updated -- December Holiday -- 2023-12-13'),
(394, '10157', '2024-04-08', '14:09:44', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(395, '10157', '2024-04-08', '14:10:42', 'Users', 'Update -- Sese, Edhen Joy -- 10157'),
(396, '10157', '2024-04-08', '14:10:57', 'Users', 'Update -- Sese, Edhen Joy -- 10157'),
(397, '10157', '2024-04-08', '14:11:06', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(398, 'admin', '2024-04-08', '14:14:47', 'Memo Upload', 'Add -- Employee Manual -- 2024-04-10'),
(399, 'admin', '2024-04-08', '14:20:13', 'Memo Upload', 'Updated -- Employee Manual !!!!!!!!!!!!!!! -- 2024-04-10'),
(400, 'admin', '2024-04-08', '14:20:23', 'Memo Upload', 'Updated -- Employee Manual -- 2024-04-10'),
(401, 'admin', '2024-04-08', '14:21:44', 'Memo Upload', 'Add -- August Holidays -- 2019-08-14'),
(402, 'admin', '2024-04-08', '14:26:35', 'Memo Upload', 'Updated -- Employee Manualttft5f -- 2024-04-10'),
(403, 'admin', '2024-04-08', '14:30:48', 'Memo Upload', 'Updated -- Employee Manual -- 2024-04-10'),
(404, '10157', '2024-04-08', '14:31:00', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(405, 'admin', '2024-04-08', '14:50:37', 'Users | Employee', 'Delete -- 10157 -- Sese -- Edhen Joy'),
(406, 'admin', '2024-04-08', '14:50:39', 'Users | Employee', 'Delete -- 10070 -- Manalo -- Ma. Sheila'),
(407, 'admin', '2024-04-08', '14:50:42', 'Users | Employee', 'Delete -- 10158 -- Amper -- Spouses Jesinelle'),
(408, 'admin', '2024-04-08', '14:54:19', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(409, 'admin', '2024-04-08', '14:54:52', 'Employee', 'Add -- awdawd -- awdaw -- dawd'),
(410, 'admin', '2024-04-08', '14:54:59', 'Users | Employee', 'Delete -- awdawd -- awdaw -- dawd'),
(411, '10157', '2024-04-08', '15:25:22', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(412, 'admin', '2024-04-08', '15:27:47', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(413, 'admin', '2024-04-08', '15:27:53', 'Memo Upload', 'Delete -- Employee Manual -- 2024-04-10'),
(414, 'admin', '2024-04-11', '09:30:05', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(415, '10157', '2024-04-11', '09:30:44', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(416, 'admin', '2024-04-11', '09:45:10', 'Policies', 'Update -- 2024 New Uniform sample -- HRD 2024 UNIFORM -- 2024-03-26'),
(417, 'admin', '2024-04-11', '09:45:39', 'Policies', 'Update -- 2024 New Uniform sample -- HRD 2024 UNIFORM -- 2024-03-26'),
(418, 'admin', '2024-04-11', '09:46:00', 'Policies', 'Update -- 2024 New Uniform sample -- HRD 2024 UNIFORM -- 2024-03-26'),
(419, 'admin', '2024-04-11', '10:03:43', 'Policies', 'Update -- 2024 New Uniform sample -- HRD 2024 UNIFORM -- 2024-03-26'),
(420, 'admin', '2024-04-11', '10:37:32', 'Policies', 'Update -- Revised Uniform Policy -- HRD-2022-019 / Rev-000 -- 2022-05-17'),
(421, 'admin', '2024-04-12', '08:09:12', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(422, '10157', '2024-04-12', '11:24:53', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(423, 'admin', '2024-04-15', '08:12:51', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(424, '10157', '2024-04-15', '09:05:22', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(425, 'admin', '2024-04-16', '08:54:21', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(426, '10157', '2024-04-16', '11:06:00', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(427, '10157', '2024-04-17', '09:55:27', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(428, 'admin', '2024-04-17', '09:56:08', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(429, '10157', '2024-04-17', '14:33:06', 'Users', 'Update -- Sese, Edhen Joy -- 10157'),
(430, '10157', '2024-04-17', '14:33:15', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(431, '10157', '2024-04-17', '14:35:24', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(432, '10157', '2024-04-18', '10:34:21', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(433, 'admin', '2024-04-18', '10:50:31', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(434, 'admin', '2024-04-18', '10:52:37', 'Policies', 'Add -- AAAAA -- adawd -- 2024-04-18'),
(435, 'admin', '2024-04-18', '10:52:47', 'Policies', 'Delete -- AAAAA -- adawd'),
(436, 'admin', '2024-04-18', '11:27:55', 'Policies', 'Add -- AAAAA -- adawd -- 2024-04-19'),
(437, 'admin', '2024-04-19', '13:47:58', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(438, 'admin', '2024-04-19', '14:10:27', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(439, '10157', '2024-04-19', '14:12:11', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(440, 'admin', '2024-04-22', '09:35:08', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(441, 'admin', '2024-04-22', '09:52:38', 'Memo Upload', 'Updated -- Holidays December January 1 2024 -- 2023-12-04'),
(442, '10157', '2024-04-22', '13:50:50', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(443, 'admin', '2024-04-22', '14:05:55', 'Memo Upload', 'Add -- AsianLand@30 2024 Kick Off and Party -- 2024-01-03'),
(444, 'admin', '2024-04-22', '14:06:31', 'Memo Upload', 'Add -- January Holiday -- 2024-01-04'),
(445, 'admin', '2024-04-22', '14:07:04', 'Memo Upload', 'Add -- 2024 & 2023 Year End Performance Review -- 2024-01-16'),
(446, 'admin', '2024-04-22', '14:07:53', 'Memo Upload', 'Add -- KRA and KPI Targets -- 2024-01-16'),
(447, 'admin', '2024-04-22', '14:08:47', 'Memo Upload', 'Add -- DEPENDENTS INTELLICARE 2024 -- 2024-02-29'),
(448, 'admin', '2024-04-22', '14:09:27', 'Memo Upload', 'Add -- Finance QRPH Policy -- 2024-03-05'),
(449, 'admin', '2024-04-22', '14:10:39', 'Memo Upload', 'Add -- HMO Coverage from April 1 2024 - March 31 2025 -- 2024-03-04'),
(450, 'admin', '2024-04-22', '14:11:49', 'Memo Upload', 'Add -- Life and Accident Insurance from April 1 2024 - March 31 2025 -- 2024-03-11'),
(451, 'admin', '2024-04-22', '14:12:40', 'Memo Upload', 'Add -- GHP from April 1 2024 - March 31 2025 -- 2024-03-11'),
(452, 'admin', '2024-04-22', '14:13:15', 'Memo Upload', 'Add -- March Holidays -- 2024-03-11'),
(453, 'admin', '2024-04-22', '14:13:56', 'Memo Upload', 'Add -- 3F Door Access -- 2024-04-12'),
(454, 'admin', '2024-04-22', '14:24:15', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(455, 'admin', '2024-04-22', '14:26:32', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(456, 'admin', '2024-04-22', '14:29:16', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(457, '10157', '2024-04-22', '14:29:59', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(458, 'admin', '2024-04-23', '08:56:38', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(459, '10157', '2024-04-23', '08:57:59', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(460, 'admin', '2024-04-24', '10:06:19', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(461, '10157', '2024-04-24', '13:25:48', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(462, 'admin', '2024-04-25', '11:27:36', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(463, '10157', '2024-04-25', '11:28:17', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(464, 'admin', '2024-04-26', '08:36:13', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(465, 'admin', '2024-04-29', '08:26:42', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(466, 'admin', '2024-04-30', '08:29:05', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(467, '10157', '2024-04-30', '16:42:36', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(468, 'admin', '2024-05-03', '09:04:16', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(469, 'admin', '2024-05-06', '13:27:15', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(470, '10157', '2024-05-06', '13:30:05', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(471, 'admin', '2024-05-06', '13:30:30', 'Policies', 'Add -- 3w3fw4f -- w4fw4f -- 2024-05-08'),
(472, 'admin', '2024-05-06', '13:30:57', 'Policies', 'Delete -- 3w3fw4f -- w4fw4f'),
(473, 'admin', '2024-05-06', '13:31:01', 'Policies', 'Delete -- AAAAA -- adawd'),
(474, 'admin', '2024-05-06', '14:11:29', 'Policies', 'Add -- SAMPLE TITLE -- HRD - 2024 -- 2024-05-02'),
(475, 'admin', '2024-05-06', '14:11:43', 'Policies', 'Update -- 2024 New Uniform sample -- HRD 2024 UNIFORM -- 2024-03-26'),
(476, 'admin', '2024-05-08', '08:30:56', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(477, 'admin', '2024-05-09', '08:38:42', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(478, 'admin', '2024-05-09', '08:42:53', 'Policies', 'Update -- SAMPLE TITLE -- HRD - 2024 -- 2024-05-02');
INSERT INTO `logs` (`id`, `c_user`, `c_date`, `c_time`, `c_module`, `c_activity`) VALUES
(479, 'admin', '2024-05-09', '08:53:47', 'Policies', 'Delete -- SAMPLE TITLE -- HRD - 2024'),
(480, 'admin', '2024-05-09', '10:10:40', 'Policies', 'Update -- 2024 New Uniform sample -- HRD 2024 UNIFORM -- 2024-03-26'),
(481, '10157', '2024-05-09', '10:13:26', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(482, 'admin', '2024-05-10', '10:46:43', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(483, '10157', '2024-05-10', '14:17:07', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(484, 'admin', '2024-05-13', '10:00:23', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(485, '10157', '2024-05-13', '10:06:56', 'Login', 'User logged -- 10157 -- (Sese, Edhen Joy) '),
(486, 'edhense', '2024-05-13', '10:25:23', 'Login', 'User logged -- edhense -- (sese, edhen) '),
(487, 'admin', '2024-05-13', '10:27:58', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(488, 'edhense', '2024-05-13', '10:28:39', 'Login', 'User logged -- edhense -- (sese, edhen) '),
(489, 'admin', '2024-05-13', '10:30:57', 'Login', 'User logged -- admin -- (    , Adminstrator) '),
(490, 'admin', '2024-05-13', '10:41:40', 'Employee', 'Add -- 10008 -- Carpio -- John Anthony');

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
(17, 'LIFTING OF COVID-19 RELATED PROTOCOLS', '<p><b>I.BACKGROUND</b></p><p>Proclamation No. 297, Lifting of the State of Public Health Emergency throughout the Philippines due to <span style=\"font-size: 0.875rem;\">Covid19.</span></p><p><span style=\"font-size: 0.875rem;\">On May 8, 2023, the Inter-Agency Task force for the Management of Emerging Infectious Diseases, in </span><span style=\"font-size: 0.875rem;\">its Resolution No. 08 (s.2023), requested the lifting of the State of Public Health Emergency throughout </span><span style=\"font-size: 0.875rem;\">the Philippines.</span></p><p>All agencies are enjoined to ensure that their policies, rules and regulations shall take into consideration <span style=\"font-size: 0.875rem;\">the lifting of the State of Public Health Emergency and to amend existing or promulgate new issuances, </span><span style=\"font-size: 0.875rem;\">as may be appropriate.</span></p><p><b>II. Effective August 1, 2023</b>, The Company shall implement the following:</p><p>     a. Wearing a facemask while inside the office and in service vehicles is no longer mandatory.  <span style=\"font-size: 0.875rem;\">Company will discontinue the supply of face masks for Front liners and OB-based personnel.</span></p><p><b></b>     b. The employee’s temperature will no longer be checked and recorded.</p><p>     c. There will be no more requests for bulk orders of alcohol. Departments may request, instead, as <span style=\"font-size: 0.875rem;\">part of regular office supplies.</span></p><p><span style=\"font-size: 0.875rem;\">     </span>d. In-kind assistance to those who are inflicted with Covid-19 will also be discontinued.</p><p>     e. The additional grace period of 10 minutes allotted for entry procedures will be rescinded. It will <span style=\"font-size: 0.875rem;\">revert to a 5 minute grace period at the beginning of each shift.</span></p><p><span style=\"font-size: 0.875rem;\">     </span>f. No change in the existing fixed route of shuttle services for employees.</p><p>However, we shall remain vigilant and will continue to monitor Covid-19 like symptoms in the workplace. <span style=\"font-size: 0.875rem;\">Employees are expected to continue to be responsible for their health and that of others and refrain </span><span style=\"font-size: 0.875rem;\">from coming to work if they are sick and inform their Supervisor and Human Resources. HR will endorse </span><span style=\"font-size: 0.875rem;\">sick calls to our company physician, Dr. Marvin Lorenzo Gonzales or employee may seek medical </span><span style=\"font-size: 0.875rem;\">attention from their own doctor.</span></p><p>The Management would like to thank you for your usual cooperation and understanding.</p><p></p><p>Stay safe and healthy!</p>', '2023-11-21 14:14:27', '2023-11-21 14:15:09', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ File', 'HRD-2023-023/Rev-000', 'Lifting of COVID-19 Related Protocols'),
(18, 'EMPLOYEE AWARDS 2023', '<p>In recognition to the employee\'s contribution to the company, Asian Land will be giving the <span style=\"font-size: 0.875rem;\">following awards on January 12-13, 2024 during our Kick Off Party at Taal Vista Hotel, Tagaytay </span><span style=\"font-size: 0.875rem;\">City.</span></p><p><b>1. SERVICE AWARDS:</b> cut-off period is from January – December 2023.</p><table class=\"table table-bordered\"><tbody><tr><td>5 years in service<br></td><td>P5,000.00 + plaque<br></td></tr><tr><td>10 years in service<br></td><td>P10,0000.00 + plaque<br></td></tr><tr><td>15 years in service<br></td><td>P15,000.00 + plaque<br></td></tr><tr><td>20 years in service<br></td><td>P20,000.00 + plaque<br></td></tr><tr><td>25 years in service<br></td><td>P25,000.00 + plaque<br></td></tr></tbody></table><p><b>2. EMPLOYEE OF THE YEAR</b></p><p><u>Minimum Employee Eligibility Requirements:</u></p><ul><li> Regular employee</li><li> No NTE / Disciplinary Action for the last 12 months</li><li> Accumulated tardiness on any given month not exceeding 15 minutes</li><li>No habitual Under Time</li><li>No outstanding unliquidated cash advances</li></ul>', '2023-11-21 14:18:47', '2023-12-02 20:01:51', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM /File', 'HRD-2023-029/Rev-000', 'EMPLOYEE AWARDS 2023'),
(19, '2023 MID-YEAR PERFORMANCE REVIEW', '<p>Please be advised that we will be conducting the performance review for the first half of the calendar year covering the period of <b>January to June 2023</b>.</p><p>Guidelines as per previous evaluation exercise remain, as follows.</p><ol><li><b>KRA and KPI</b>, We shall be using the indicators and measures based on 2023 set targets.</li><li><b>Competencies and Rating Scale.</b>&nbsp;Aside from the KRA and KPI\'s, your competencies, divided into Universal (UC) and Major Competencies (MC), to differentiate Rank and File and Supervisor and up requirements, will be evaluated. The weight of each component in the total score is the same as previous year.</li></ol><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', '2023-11-21 14:42:08', '2023-12-02 20:02:21', 'ALL EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM /FILE', 'HRD-2023-022 / Rev-000', '2023 MID-Year Performance Review'),
(26, 'APE 2022 - BLOOD CHEMISTRY', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Our annual APE&nbsp;benefit coverage includes FBS, Uric Acid and Creatinine blood tests.&nbsp;<span style=\"font-size: 0.875rem;\">Unfortunately, these were missed out and were not processed by our service provider during&nbsp;</span><span style=\"font-size: 0.875rem;\">our APE last November 2022. In this regard, we need to have a retake of the blood chem&nbsp;</span><span style=\"font-size: 0.875rem;\">procedure to complete the tests.</span></p><p>The retake is scheduled on <b>January 11, 2023 (Wednesday) from 7:30am – 10:30am only at 4th&nbsp;<span style=\"font-size: 0.875rem;\">floor ALSC Corporate Center.</span></b></p><p>Employees listed in the appending pages are requested for re-extraction and FASTING of 8-10&nbsp;<span style=\"font-size: 0.875rem;\">HOURS IS NEEDED.</span></p><p>Partial APE result copies are available at Compensation &amp; Benefits Section upon request,&nbsp;<span style=\"font-size: 0.875rem;\">otherwise all will be released on January 2023.</span></p><p>For your information and guidance.</p>', '2023-11-29 11:50:30', '2023-11-29 11:51:50', 'ALL ASIAN LAND GROUP EMPLOYEES', 'Human Resources and Admin Department', '0000-00-00 00:00:00', 'MANCOM/ FILE', 'HRD-2022-037/Rev-000', 'APE 2022 BLOOD CHEMISTRY');

-- --------------------------------------------------------

--
-- Table structure for table `offense_list`
--

CREATE TABLE `offense_list` (
  `id` int(30) NOT NULL,
  `rule` text NOT NULL,
  `title` text NOT NULL,
  `section` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `first` text NOT NULL,
  `second` text NOT NULL,
  `third` text NOT NULL,
  `fourth` text NOT NULL,
  `fifth` text NOT NULL,
  `sixth` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies_list`
--

CREATE TABLE `policies_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `refer` text NOT NULL,
  `avatar` text NOT NULL,
  `code` text NOT NULL,
  `date_issuance` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `policies_list`
--

INSERT INTO `policies_list` (`id`, `title`, `status`, `description`, `refer`, `avatar`, `code`, `date_issuance`, `date_updated`) VALUES
(7, 'Drug Free Policy', 1, '<p style=\"text-align: justify; \">&nbsp;</p>', 'ALSC-HRD-014-001', 'admin/policies/uploads/2016_Drug Free Workplace Policy_2024-02-22.pdf', 'DFP', '2016-07-01 00:00:00', '2024-03-26 14:17:53'),
(8, 'Sexual Harassment Policy', 1, '<p style=\"text-align: justify;\"><span style=\"font-size: 14px;\" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" white-space-collapse:=\"\" preserve;\"=\"\"><font color=\"#000000\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sexual harassment of our employees by their colleagues is unlawful and the Company will take appropriate disciplinary action against anyone who is in breach of the regulations. Employees who believe that they have been or are being sexually harassed should inform the offenders that their behavior is unacceptable and unlawful. They can further lodge their complaints to the Human Resources and Admin Department who will investigate thoroughly and confidentially in accordance with the guidelines in handling sexual harassment Department. complaints, a copy is available at the Human Resources and Admin.&nbsp;&nbsp;</font></span><br></p>', 'ALSC-HRD-016-001', 'admin/policies/uploads/2017_SEXUAL HARASSMENT POLICY_2024-02-22.pdf', 'SXHP', '2017-01-01 00:00:00', '2024-02-22 13:50:06'),
(15, 'Software Access Procedure', 1, '<span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The Company will provide software for use by it\'s employees in performing their duties. Employees are strictly forbidden from installing and using illegal software on the Company\'s personal computers nor are they permitted to use the Company personal computers for playing games.</span>', 'ALSC-HRD-2015-001', 'admin/policies/uploads/2015_Corporate Internet_Email & Equipment Policy_2024-02-22.pdf', 'SAP', '2015-03-02 00:00:00', '2024-02-22 13:49:58'),
(16, 'Company Owned Equipment', 1, '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Any device or computer including, but not limited to, desk phones, cell phones, tablets, laptops, desktop computers, and iPads that the Company provides for employee use, should only be used for Company business. The Company owns the devices and the information in these devices. If employee leaves the Company for any reason, the intact on employee\'s last day of work.&nbsp;&nbsp;</p>', 'ALSC-HRD-2015-001', 'admin/policies/uploads/2015_Corporate Internet_Email & Equipment Policy_2024-02-22.pdf', 'COE', '2015-03-02 00:00:00', '2024-02-22 13:51:24'),
(17, 'Internet Use Policy', 1, '<p>Internet use, on Company time, is authorized to conduct Company business only, Under no circumstances may Company owned computers or other electronic equipment, including devices owned by the employee, be used on Company time, to obtain, view or reach any pornographic or otherwise immoral, unethical or non-business-related internet sites. Doing so can lead to disciplinary action up to and including termination of employment.  </p>', 'ALSC-HRD-2015-001', 'admin/policies/uploads/2015_Corporate Internet_Email & Equipment Policy_2024-02-22.pdf', 'IUP', '2015-03-02 00:00:00', '2024-02-22 13:52:19'),
(35, 'Use of Social Media', 1, '<p>Other than use for official company related activities i.e. outreach for recruitment, legitimate marketing and sales activities, undue use of social media during office hours is not allowed. Additionally, employees are prohibited from sharing any confidential or protected information that belongs to or is about the Company. The Company\'s reputation and brand should be protected by all employees. Any employee, who participates in social media, who violates this policy will be dealt with according to the company\'s Code of Discipline.</p>', 'ALSC-HRD-2015-001', 'admin/policies/uploads/2015_Corporate Internet_Email & Equipment Policy_2024-02-22.pdf', 'UOS', '2015-03-02 00:00:00', '2024-02-22 13:52:59'),
(36, 'Email Usage', 1, '<p>Email is to be used for Company business only. Employees are also not to conduct personal business using the Company computer or email. Viewing pornography, or sending pornographic jokes or stories view email, is considered a violation and will result in disciplinary action that  may lead to employment termination.</p>', 'ALSC-HRD-2015-001', 'admin/policies/uploads/2015_Corporate Internet_Email & Equipment Policy_2024-02-22.pdf', 'EUP', '2023-11-29 00:00:00', '2024-02-22 13:53:15'),
(37, 'Visitor Policy', 1, '<p>           All visitors must be registered into the Visitor\'s Logbook which is maintained by the front entrance security personnel. Visitors will be given a Visitors ID. Visitors must wear this ID while inside the premises also as to display that the individual is an authorized visitor.</p><p><span style=\"font-size: 0.875rem;\">Floor Security/Marshalls are assigned to challenge strangers in the building who do not display the visitors ID to determine their authority for access to company facilities. Unauthorized visitors should be escorted courteously but quickly from the workplace or to the lobby</span></p><p><span style=\"font-size: 0.875rem;\">All visitors must be confined to public areas in the building, otherwise, must be accompanied by the employee(s) that they are visiting for the duration of their stay.</span></p><p>             Public areas are as follows:</p><ul><li>   G/F Lobby and Services Counters</li><li>   Documentation and services Counters </li><li>   2/F Lobby, Cashier Counters and Reception Area</li><li>   3/F Sales Reception Area</li></ul><p>              The following are restricted areas which are limited for access for authorized personnel only:</p><ul><li>    Executive Offices</li><li>    Finance Department back offices</li><li>    IT Department</li><li>    All other back offices </li></ul><p>            </p>', 'ALSC-HRD-011-001', 'admin/policies/uploads/2016_Visitor Policy_2024-02-22.pdf', 'VP', '2016-01-01 00:00:00', '2024-02-22 13:54:39'),
(38, 'Training Policy', 1, '<p>            In alignment with organization values of innovation and excellence, employees are encourage to undergo continuous learning. The Company establishes an annual training and Development Plan and Budget. The Training and Development Plan Identifies.</p>', 'ALSC-HRD-018-001', 'admin/policies/uploads/2018_Training & Development Policy_2024-02-22.pdf', 'TP', '2018-08-01 00:00:00', '2024-02-22 13:55:36'),
(145, 'Revised Uniform Policy', 0, '<p>           Ground Floor Frontline staff are required, however, to wear similar or color-coordinated pants at all times \r\nfrom Monday to Thursdays, and color coordinated casual wear on Fridays to maintain uniformity. For \r\nexample, on Mondays – all wear khaki pants, Tuesday – all wear Blue Denim pants, and so on. The schedule \r\nof color coordination will be left to the discretion of the GF Floor Manager and team.\r\n</p><p>ALSC Polo ensemble can still be used on Mondays as an option. Apart from the above, all other guidelines \r\non our previous memo on Wearing of New Uniforms Ref: <a href=\"http://localhost/HR_SYSTEM/admin/policies/uploads/2015_Wearing%20of%20New%20Uniforms_2024-01-21.pdf\" target=\"_blank\">HRD-2015-021</a> will remain in force.</p>', 'HRD-2022-019 / Rev-000', 'admin/policies/uploads/2022_Revised Uniform Policy_May 23, 2022_2024-02-22.pdf', 'WUP', '2022-05-17 00:00:00', '2024-04-11 10:37:32'),
(148, 'Wearing Uniform Policy 2015', 0, '<p>Please be informed that the new set of uniforms should be worn by all employees beginning October 1 20215, Observe the following guidelines for the proper wearing of new uniforms,</p><p><b>GUIDELINES:</b></p><p>1. All four (4) sets of uniforms must be worn from Monday to Thursday.</p><table class=\"table table-bordered\"><tbody><tr><td style=\"text-align: center; \"><b>MONDAY</b></td><td style=\"text-align: center; \"><b>TUESDAY - THURSDAY</b></td><td style=\"text-align: center; \"><b>FRIDAY</b></td></tr><tr><td><p>- ALSC Polo</p><p>- Khaki Pants</p><p>- Closed shoes (BLACK Only)</p></td><td><p>- ALSC collared T-shirt </p><p>-Khaki Pants</p><p>- Closed Shoes (any color)</p><p>- Sneakers (any color; provided clean and presentable)</p></td><td><p>CASUAL WEAR </p><p>- Wear comfortable, near, presentable </p><p>   and tasteful clothing.</p><p>- AVOID Wearing shorts, micro - mini</p><p>skirts, spaghetti strap tops,</p><p>sheer/see trough clothes.</p></td></tr></tbody></table><p><br></p>', 'HRD-2015-021/Rev-000', 'admin/policies/uploads/2015_Wearing of New Uniforms_2024-02-22.pdf', 'WUP', '2015-09-24 00:00:00', '2024-02-22 13:58:16'),
(157, 'Employee Loans Policy', 1, '<p><b>PURPOSE</b></p><p style=\"margin-left: 25px;\">Employee loans will only be granted where there is a serious need or where emergency relief is required due to circumstances, defined as unforeseen and unplanned that requires an employee to secure funds.</p><p style=\"\"><b>SCOPE AND LIMITATIONS</b></p><p style=\"margin-left: 25px;\">This policy applies to all employees of Asian Land Group.</p><p style=\"margin-left: 25px;\">This policy is in compliance with and governed by Bureau of Internal Revenue regulations on dispensation of employee benefits, interest and taxation.</p>', 'ALSC-HRD-013-001', 'admin/policies/uploads/2016_Employee Loans Policy_2024-02-22.pdf', 'ELP', '2016-07-01 00:00:00', '2024-02-22 14:20:47'),
(158, 'Wearing Uniform Policy 2018', 0, '<p>            Please be informed that beginning July 2, 2018, the uniform wearing schedule is hereby amended as follows:</p><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><b>MONDAY - TUESDAY</b></td><td><b>WEDNESDAY - THURSDAY</b></td></tr><tr><td style=\"text-align: left; \"><ul><li>ALSC Polo</li><li>Khaki Pants</li><li>Closed shoes (Black only)                                      </li></ul></td><td style=\"text-align: left; \"><ul><li>ALSC Collared T - shirt</li><li>Khaki Pants</li><li>Closed Shoes (any color)</li><li>Sneakers (any color; provided clean and presentable)</li></ul></td></tr></tbody></table><p>All other guidelines on our previous memos on Wearing of New Uniforms ref : HRD- 2015 - 021 and Wearing of Corporate Attire Ref : HRD-2018-022 will be strictly implemented.</p>', 'HRD-2018-027/Rev-000', 'admin/policies/uploads/2018_Wearing of Uniforms_2024-02-22.pdf', 'WUP', '2018-06-19 00:00:00', '2024-02-22 14:08:42'),
(173, '2024 New Uniform sample', 1, 'SAMPLE SAMPLE', 'HRD 2024 UNIFORM', 'admin/policies/uploads/HR_Mandatory 2023 KRA_KPI Metrics_2024-04-11.pdf', 'WUP', '2024-03-26 00:00:00', '2024-05-09 10:10:40');

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
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `date_issuance` datetime NOT NULL,
  `upload_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `title`, `date_issuance`, `upload_path`) VALUES
(1, 'Office Theme of the Week', '2019-02-01 00:00:00', 'admin/memo/uploads/2019_Office theme of the week_2024-04-03.pdf'),
(2, 'New Model House Site Tripping & Orientation', '2019-04-29 00:00:00', 'admin/memo/uploads/2019_New Model House Site Tripping & Orientation_2024-04-03.pdf'),
(3, 'Health and Wellness Program', '2019-04-30 00:00:00', 'admin/memo/uploads/2019_Health and Wellness Program_2024-04-03.pdf'),
(4, 'Blood Letting Day', '2019-07-30 00:00:00', 'admin/memo/uploads/2019_Blood Letting Day_2024-04-03.pdf'),
(5, 'Corporate Social Responsibility Tree Planting', '2019-07-30 00:00:00', 'admin/memo/uploads/2019_Corporate Social Responsibility_Tree Planting_2024-04-03.pdf'),
(6, '25th Year Foundation Celebration', '2019-03-14 00:00:00', 'admin/memo/uploads/2019_25th Year Foundation Celebration_2024-04-03.pdf'),
(7, '3rd Quarter General Assembly Pandesal Party', '2019-10-07 00:00:00', 'admin/memo/uploads/2019_3rd Quarter General Assembly_Pandesal Party_2024-04-03.pdf'),
(8, 'Year End Performance Review', '2019-01-29 00:00:00', 'admin/memo/uploads/2019_2018 Year End Performance Review_2024-04-03.pdf'),
(9, 'Kick Off and Party', '2019-11-12 00:00:00', 'admin/memo/uploads/2019_2020 Kick Off and Party_2024-04-03.pdf'),
(10, 'Anti Flu Vaccination', '2019-05-21 00:00:00', 'admin/memo/uploads/2019_Anti Flu Vaccination_2024-04-03.pdf'),
(11, 'APE', '2019-11-11 00:00:00', 'admin/memo/uploads/2019_APE_2024-04-03.pdf'),
(12, 'APE Blood Chem', '2019-03-13 00:00:00', 'admin/memo/uploads/2019_APE Blood Chem_2024-04-03.pdf'),
(13, 'Employee Awards 2019', '2019-11-27 00:00:00', 'admin/memo/uploads/2019_Employee Awards 2019_2024-04-03.pdf'),
(14, 'Employee Property (Housing) Loan Policy', '2019-01-17 00:00:00', 'admin/memo/uploads/2019_Employee Property (Housing) Loan Policy_2024-04-03.pdf'),
(15, 'Employee Sales Referral Program', '2019-06-11 00:00:00', 'admin/memo/uploads/2019_Employee Sales Referral Program_2024-04-03.pdf'),
(16, 'MidYear Performance Review', '2019-06-20 00:00:00', 'admin/memo/uploads/2019_2019 MidYear Performance Review_2024-04-03.pdf'),
(17, 'Waste Management and Segregation Awareness Talk', '2019-07-30 00:00:00', 'admin/memo/uploads/2019_ Waste Management and Segregation Awareness Talk_2024-04-03.pdf'),
(18, '25th Foundation Week Celebration', '2019-03-01 00:00:00', 'admin/memo/uploads/2019_25th Foundation Week Celebration_2024-04-03.pdf'),
(19, 'Addendum Table of Offenses', '2019-03-21 00:00:00', 'admin/memo/uploads/2019_Addendum_Table of Offenses_2024-04-03.pdf'),
(20, 'April Holidays', '2019-03-28 00:00:00', 'admin/memo/uploads/2019_April Holidays_2024-04-03.pdf'),
(21, 'August Holidays', '2019-07-31 00:00:00', 'admin/memo/uploads/2019_August Holidays_2024-04-03.pdf'),
(22, 'Christmas Family Day 2019', '2019-12-17 00:00:00', 'admin/memo/uploads/2019_Christmas Family Day 2019_2024-04-03.pdf'),
(23, 'December Holidays', '2019-11-25 00:00:00', 'admin/memo/uploads/2019_December Holidays_2024-04-03.pdf'),
(24, 'Early Dismissal All Saints Day', '2019-10-29 00:00:00', 'admin/memo/uploads/2019_Early Dismissal All Saints Day_2024-04-03.pdf'),
(25, 'Early Dismissal Lent', '2019-03-16 00:00:00', 'admin/memo/uploads/2019_Early Dismissal Lent_2024-04-03.pdf'),
(26, '3rd Employee Appreciation Day', '2019-09-24 00:00:00', 'admin/memo/uploads/2019_3rd Employee Appreciation Day_2024-04-03.pdf'),
(28, 'Employees Retirement Plan', '2019-08-22 00:00:00', 'admin/memo/uploads/2019_Employees Retirement Plan_2024-04-03.pdf'),
(29, 'February Holidays', '2019-01-30 00:00:00', 'admin/memo/uploads/2019_February Holidays_2024-04-03.pdf'),
(30, 'Fun at Workdays', '2019-09-24 00:00:00', 'admin/memo/uploads/2019_Fun at Work Days_2024-04-03.pdf'),
(31, 'Health Insurance from April 1 2019 - March 31 2020', '2019-03-27 00:00:00', 'admin/memo/uploads/2019_Health Insurance from April 1 2019 - March 31 2020_2024-04-03.pdf'),
(32, 'Issuance of Uniform', '2019-08-02 00:00:00', 'admin/memo/uploads/2019_Issuance of Uniform_2024-04-03.pdf'),
(33, 'June Holidays', '2019-03-29 00:00:00', 'admin/memo/uploads/2019_June Holidays_2024-04-03.pdf'),
(34, 'Kainang Pamilya Mahalaga Day', '2019-09-17 00:00:00', 'admin/memo/uploads/2019_Kainang Pamilya Mahalaga Day_2024-04-03.pdf'),
(35, 'Life and Accident Insurance', '2019-03-27 00:00:00', 'admin/memo/uploads/2019_Life and Accident Insurance_2024-04-03.pdf'),
(36, 'Office Pantry Etiquette', '2019-06-25 00:00:00', 'admin/memo/uploads/2019_Office Pantry Etiquette_2024-04-03.pdf'),
(37, 'Pre All Saints Day Event', '2019-10-25 00:00:00', 'admin/memo/uploads/2019_Pre All Saints Day Event_2024-04-03.pdf'),
(38, 'Uniform Fitting Pants', '2019-05-22 00:00:00', 'admin/memo/uploads/2019_Uniform Fitting Pants_2024-04-03.pdf'),
(39, 'Uniform Fitting', '2019-04-16 00:00:00', 'admin/memo/uploads/2019_Uniform Fitting_2024-04-03.pdf'),
(40, 'Vehicle Sticker Policy', '2019-04-30 00:00:00', 'admin/memo/uploads/2019_Vehicle Sticker Policy_2024-04-03.pdf'),
(41, 'Wearing of New Set of Uniforms', '2019-08-07 00:00:00', 'admin/memo/uploads/2019_Wearing of New Set of Uniforms_2024-04-03.pdf'),
(42, '2nd Quarter General Assembly Pandesal Party', '2019-06-21 00:00:00', 'admin/memo/uploads/2019_2nd Quarter General Assembly_Pandesal Party_2024-04-03.pdf'),
(43, '2nd Employee Appreciation Day', '2019-07-24 00:00:00', 'admin/memo/uploads/2019_2nd Employee Appreciation Day_2024-04-03.pdf'),
(44, 'Work Schedule from March 16-April 14 2020 Relative to Covid19', '2020-03-16 00:00:00', 'admin/memo/uploads/2020_Work Schedule from March 16-April 14 2020 Relative to Covid19_2024-04-03.pdf'),
(46, 'Reduction in Force Work Hours & Corresponding Salary Reduction Salary', '2020-05-29 00:00:00', 'admin/memo/uploads/2020_Reduction in Force Work Hours & Corresponding Salary Reduction Salary_2024-04-03.pdf'),
(47, 'SSS Moratorium on Short Term Loan Payments', '2020-04-13 00:00:00', 'admin/memo/uploads/2020_SSS Moratorium on Short Term Loan Payments_2024-04-03.pdf'),
(48, 'DOLE Labor Advisory 13-A Exemption from Payment of April 9 10 and 11 2020', '2020-04-07 00:00:00', 'admin/memo/uploads/2020_DOLE Labor Advisory 13-A Exemption from Payment of April 9 10 and 11 2020_2024-04-03.pdf'),
(49, 'REVISED Work Schedule from March 16-April 14 2020 Relative to Covid 19', '2020-03-19 00:00:00', 'admin/memo/uploads/2020_REVISED Work Schedule from March 16-April 14 2020 Relative to Covid 19_2024-04-03.pdf'),
(50, 'Interim Guidelines on Workplace Prevention and Control of Covid 19', '2020-05-26 00:00:00', 'admin/memo/uploads/2020_Interim Guidelines on Workplace Prevention and Control of Covid 19_2024-04-03.pdf'),
(51, 'MECQ Guidelines August 4-18 2020', '2020-08-04 00:00:00', 'admin/memo/uploads/2020_MECQ Guidelines August 4-18 2020_2024-04-03.pdf'),
(53, 'Amendment ALSC HRD 011 001 Visitor Policy', '2020-03-05 00:00:00', 'admin/memo/uploads/2020_Amendment_ALSC_HRD_011_001_Visitor Policy_2024-04-03.pdf'),
(54, '2020_Anti_Flu Vaccination', '2020-06-09 00:00:00', 'admin/memo/uploads/2020_Anti_Flu Vaccination_2024-04-03.pdf'),
(55, 'Guidelines to Prevent the Spread of Covid 19 in the Workplace', '2020-03-04 00:00:00', 'admin/memo/uploads/2020_Guidelines to Prevent the Spread of Covid 19 in the Workplace_2024-04-03.pdf'),
(56, 'Revised Guidelines on Semi Annual Performance Review', '2020-02-17 00:00:00', 'admin/memo/uploads/2020_Revised Guidelines on Semi Annual Performance Review_2024-04-03.pdf'),
(58, 'Resumption of Regular 40 Hours Workweek and Relates Salary Readjustment', '2020-02-07 00:00:00', 'admin/memo/uploads/2020_Resumption of Regular 40 Hours Workweek and Relates Salary Readjustment_2024-04-03.pdf'),
(59, 'APE', '2020-12-07 00:00:00', 'admin/memo/uploads/2020_APE_2024-04-03.pdf'),
(60, 'Bating Filipino', '2020-06-30 00:00:00', 'admin/memo/uploads/2020_Bating Filipino_2024-04-03.pdf'),
(61, 'Covid19 Prevention Advisory', '2020-12-25 00:00:00', 'admin/memo/uploads/2020_Covid19 Prevention Advisory_2024-04-03.pdf'),
(62, 'Covid19 Updates', '2020-03-11 00:00:00', 'admin/memo/uploads/2020_Covid19 Updates_2024-04-03.pdf'),
(63, 'Kainang Pamilya Mahalaga Day', '2020-09-28 00:00:00', 'admin/memo/uploads/2020_Kainang Pamilya Mahalaga Day_2024-04-03.pdf'),
(64, 'Safety on the Workplace Seminar', '2020-03-06 00:00:00', 'admin/memo/uploads/2020_Safety on the Workplace Seminar_2024-04-03.pdf'),
(65, '2020 Kick Off & Annual Party', '2020-01-03 00:00:00', 'admin/memo/uploads/2020_2020 Kick Off & Annual Party_2024-04-03.pdf'),
(66, 'Use of Face Masks in the Office', '2020-07-21 00:00:00', 'admin/memo/uploads/2020_Use of Face Masks in the Office_2024-04-03.pdf'),
(67, 'Use of Face Shields in the Office', '2020-08-12 00:00:00', 'admin/memo/uploads/2020_Use of Face Shields in the Office_2024-04-03.pdf'),
(68, 'Antigen Saliva Covid Rapid Test', '2021-02-02 00:00:00', 'admin/memo/uploads/2021_Antigen Saliva Covid Rapid Test_2024-04-03.pdf'),
(69, 'ALSC 2021 Corporate Kick-off', '2021-02-02 00:00:00', 'admin/memo/uploads/2021_ALSC 2021 Corporate Kick-off_2024-04-03.pdf'),
(70, 'MECQ Operations Guidelines Additional SOPs', '2021-04-27 00:00:00', 'admin/memo/uploads/2021_MECQ Operations Guidelines Additional SOPs_2024-04-03.pdf'),
(71, 'Eidl Fitr', '2021-05-11 00:00:00', 'admin/memo/uploads/2021_Eidl Fitr_2024-04-03.pdf'),
(72, 'Anti-Flu-Vaccination', '2021-05-11 00:00:00', 'admin/memo/uploads/2021_Anti-Flu-Vaccination_2024-04-03.pdf'),
(73, 'Covid 19 Vaccination Time Allowance', '2021-05-18 00:00:00', 'admin/memo/uploads/2021_Covid 19 Vaccination Time Allowance_2024-04-03.pdf'),
(74, 'Workplace-UV-Disinfection-Protocols', '2021-05-18 00:00:00', 'admin/memo/uploads/2021_Workplace-UV-Disinfection-Protocols_2024-04-03.pdf'),
(75, '2021 Mid Year Performance Review', '2021-06-22 00:00:00', 'admin/memo/uploads/2021_2021 Mid Year Performance Review_2024-04-03.pdf'),
(76, 'Intensified health Protocols amidst GCQ with Heightened Restrictions', '2021-08-02 00:00:00', 'admin/memo/uploads/2021_Intensified health Protocols amidst GCQ with Heightened Restrictions_2024-04-03.pdf'),
(77, 'Heightened Health Monitoring Protocols Concerning Delta Variant', '2021-08-03 00:00:00', 'admin/memo/uploads/2021_Heightened Health Monitoring Protocols Concerning Delta Variant_2024-04-03.pdf'),
(79, 'Additional Protocols Concerning Government OB Transactions and Other Meetings', '2021-08-03 00:00:00', 'admin/memo/uploads/2021_Additional Protocols Concerning Government OB Transactions and Other Meetings_2024-04-03.pdf'),
(80, 'Additional Protocols amidst Continuing Covid 19 Delta Surge', '2021-08-24 00:00:00', 'admin/memo/uploads/2021_Additional Protocols amidst Continuing Covid 19 Delta Surge_2024-04-03.pdf'),
(82, 'GCQ Operations Guidelines October-18-2021-Onwards', '2021-10-18 00:00:00', 'admin/memo/uploads/2021_GCQ Operations Guidelines October-18-2021-Onwards_2024-04-03.pdf'),
(83, 'Food Delivery Protocols', '2021-11-03 00:00:00', 'admin/memo/uploads/2021_Food Delivery Protocols_2024-04-03.pdf'),
(84, 'MECQ Operations Guidelines  April 12 2021', '2021-04-09 00:00:00', 'admin/memo/uploads/2021_MECQ Operations Guidelines  April 12 2021_2024-04-03.pdf'),
(85, '2020 Annual Performance Review', '2021-01-05 00:00:00', 'admin/memo/uploads/2021_2020 Annual Performance Review_2024-04-03.pdf'),
(86, 'Anti Flu Vaccination_October 2021', '2021-10-05 00:00:00', 'admin/memo/uploads/2021_Anti Flu Vaccination_October 2021_2024-04-03.pdf'),
(87, 'APE', '2021-11-18 00:00:00', 'admin/memo/uploads/2021_APE_2024-04-03.pdf'),
(88, 'In House Construction Promotion Confidential and Proprietary Informartion', '2021-03-02 00:00:00', 'admin/memo/uploads/2021_In House Construction Promotion_Confidential and Proprietary Informartion_2024-04-03.pdf'),
(89, 'Advisory Discontinuation of SBC Cash Card', '2021-09-02 00:00:00', 'admin/memo/uploads/2021_Advisory_Discontinuation of SBC Cash Card_2024-04-03.pdf'),
(90, 'GHP from April 1 2021 March 31, 2022', '2021-03-23 00:00:00', 'admin/memo/uploads/2021_GHP from April 1 2021_March 31, 2022_2024-04-03.pdf'),
(91, 'Health Insurance from April 1 2021 March 31 2022', '2021-03-23 00:00:00', 'admin/memo/uploads/2021_Health Insurance from April 1 2021_March 31 2022_2024-04-03.pdf'),
(92, 'Holiday-Eidl Adha', '2021-07-16 00:00:00', 'admin/memo/uploads/2021_Holiday-Eidl Adha_2024-04-03.pdf'),
(93, 'Life and Accident Insurance from April 1 2021_March 31 2022', '2021-03-23 00:00:00', 'admin/memo/uploads/2021_Life and Accident Insurance from April 1 2021_March 31 2022_2024-04-03.pdf'),
(94, 'MECQ Operations Guidelines August 16 2021 Onwards', '2021-08-31 00:00:00', 'admin/memo/uploads/2021_MECQ Operations Guidelines_August 16 2021 Onwards_2024-04-04.pdf'),
(95, 'Protocols on Face Shields and Eating Meals or Snacks', '2021-11-16 00:00:00', 'admin/memo/uploads/2021_Protocols on Face Shields and Eating Meals or Snacks_2024-04-04.pdf'),
(96, 'Amendment to Interim Guidelines for Covid19(HRD-2020-0318_HRD-2021-023,et.al)', '2022-02-16 00:00:00', 'admin/memo/uploads/2022_Amendment to Interim Guidelines for Covid19(HRD-2020-0318_HRD-2021-023,et.al)_2024-04-04.pdf'),
(97, 'Health Insurance(HMO) from April 1 2022_March 31 2023', '2022-03-01 00:00:00', 'admin/memo/uploads/2022_Health Insurance(HMO) from April 1 2022_March 31 2023_2024-04-04.pdf'),
(98, 'January Holidays', '2022-01-19 00:00:00', 'admin/memo/uploads/2022_January Holidays_2024-04-04.pdf'),
(99, 'February Holidays', '2022-01-28 00:00:00', 'admin/memo/uploads/2022_February Holidays_2024-04-04.pdf'),
(100, 'Amendment to Alert Level 1 Operations Guidelines March 21 2022 Onwards', '2022-03-16 00:00:00', 'admin/memo/uploads/2022_Amendment to ALert Level 1 Operations Guidelines_March 21 2022 Onwards_2024-04-04.pdf'),
(101, 'April Holidays', '2022-03-28 00:00:00', 'admin/memo/uploads/2022_April Holidays_2024-04-04.pdf'),
(102, 'GHP from April 1 2021 March 31, 2022', '2022-03-28 00:00:00', 'admin/memo/uploads/2022_GHP from April 1 2022_March 31 2023_2024-04-04.pdf'),
(103, 'Life and Accident Insurance from April 1 2022_March 31 2023', '2022-03-28 00:00:00', 'admin/memo/uploads/2022_Life and Accident Insurance from April 1 2022_March 31 2023_2024-04-04.pdf'),
(104, 'Submission of Timekeeping Forms and other HR Forms', '2022-03-31 00:00:00', 'admin/memo/uploads/2022_Submission of Timekeeping Forms and other HR Forms_2024-04-04.pdf'),
(105, 'Accessing (HMO) Intellicare Services Intellicare Agora App', '2022-03-31 00:00:00', 'admin/memo/uploads/2022_Accessing (HMO) Intellicare Services_Intellicare Agora App_2024-04-04.pdf'),
(106, 'Anti FLU Vaccination', '2022-04-18 00:00:00', 'admin/memo/uploads/2022_Anti FLU Vaccination_2024-04-04.pdf'),
(107, 'May Holidays', '2022-04-28 00:00:00', 'admin/memo/uploads/2022_May Holidays_2024-04-04.pdf'),
(108, 'Revised Uniform Policy', '2022-03-17 00:00:00', 'admin/memo/uploads/2022_Revised Uniform Policy_May 23, 2022_2024-04-04.pdf'),
(109, 'Groundfloor Service Operations', '2022-06-21 00:00:00', 'admin/memo/uploads/2022_Groundfloor Service Operations_June 22, 2022_2024-04-04.pdf'),
(110, 'Mid Year Performance Review', '2022-06-28 00:00:00', 'admin/memo/uploads/2022_ Mid Year Performance Review_2024-04-04.pdf'),
(111, 'Biometrics Instructions', '2022-06-27 00:00:00', 'admin/memo/uploads/2022_Biometrics Instructions_2024-04-04.pdf'),
(112, 'Holiday Eidl-Adha', '2022-07-07 00:00:00', 'admin/memo/uploads/2022_Holiday_Eidl-Adha_2024-04-04.pdf'),
(113, 'August Holidays', '2022-08-01 00:00:00', 'admin/memo/uploads/2022_August-Holidays_2024-04-04.pdf'),
(114, 'APE Memo Attachment NEW NORMAL APE PROCESS FLOW_LEVEL 1-10082022', '2022-10-17 00:00:00', 'admin/memo/uploads/2022_APE Memo_Attachment_NEW NORMAL  APE PROCESS FLOW_LEVEL 1-10082022_2024-04-04.pdf'),
(115, 'ALSC 2023 Corporate Kick-Off', '2022-11-02 00:00:00', 'admin/memo/uploads/2022_ALSC 2023 Corporate Kick-Off_2024-04-04.pdf'),
(116, 'Wearing of Facemask in the Office', '2022-11-02 00:00:00', 'admin/memo/uploads/2022_Wearing of Facemask in the Office_2024-04-04.pdf'),
(117, 'APE Memo Attachment', '2022-11-10 00:00:00', 'admin/memo/uploads/2022_APE Memo_Attachment_2024-04-04.pdf'),
(118, 'Employee Awards 2022', '2022-11-10 00:00:00', 'admin/memo/uploads/2022_Employee Awards 2022_2024-04-04.pdf'),
(119, 'ALSC Christmas Family Day 2022', '2022-12-16 00:00:00', 'admin/memo/uploads/2022_ALSC Christmas Family Day 2022_2024-04-04.pdf'),
(121, 'December Holiday December 26', '2022-12-23 00:00:00', 'admin/memo/uploads/2022_December Holiday_December 26_2024-04-04.pdf'),
(122, '2022_2021 Year End Performance Review', '2022-01-05 00:00:00', 'admin/memo/uploads/2022_2021 Year End Performance Review_2024-04-04.pdf'),
(123, 'Additional Biometrics', '2022-09-29 00:00:00', 'admin/memo/uploads/2022_Additional Biometrics_2024-04-04.pdf'),
(124, 'Alert Level 1 Operations Guidelines March 1 2022 onwards', '2022-02-28 00:00:00', 'admin/memo/uploads/2022_Alert Level 1 Operations Guidelines_March 1 2022 onwards_2024-04-04.pdf'),
(125, 'Alert Level 3 Operations Guidelines January 5 2022 onwards', '2022-01-05 00:00:00', 'admin/memo/uploads/2022_Alert Level 3 Operations Guidelines_January 5 2022 onwards_2024-04-04.pdf'),
(126, 'Corporate Photo Shoot', '2022-11-28 00:00:00', 'admin/memo/uploads/2022_Corporate Photo Shoot_2024-04-04.pdf'),
(127, 'December 2022 January 2 2023 Holidays', '2022-11-28 00:00:00', 'admin/memo/uploads/2022_December 2022_January 2 2023 Holidays_2024-04-04.pdf'),
(129, 'Early Dismissal Lenten Season', '2022-04-11 00:00:00', 'admin/memo/uploads/2022_Early Dismissal_Lenten Season_2024-04-04.pdf'),
(130, 'Employee Awards 2021', '2022-01-05 00:00:00', 'admin/memo/uploads/2022_Employee Awards 2021_2024-04-04.pdf'),
(131, 'June Holidays', '2022-06-01 00:00:00', 'admin/memo/uploads/2022_June Holidays_2024-04-04.pdf'),
(132, 'Kainang Pamilya Mahalaga', '2022-09-20 00:00:00', 'admin/memo/uploads/2022_Kainang Pamilya Mahalaga_2024-04-04.pdf'),
(133, 'October November Holidays', '2022-10-18 00:00:00', 'admin/memo/uploads/2022_October_November Holidays_2024-04-04.pdf'),
(134, 'September Holiday', '2022-08-31 00:00:00', 'admin/memo/uploads/2022_September Holiday_2024-04-04.pdf'),
(135, '2022 ALSC Corporate Kick Off & Party', '2022-03-28 00:00:00', 'admin/memo/uploads/2022_2022 ALSC Corporate Kick Off & Party_2024-04-04.pdf'),
(136, 'ALSC 2023 Corporate Kick Off', '2023-01-04 00:00:00', 'admin/memo/uploads/2023_ALSC 2023 Corporate Kick Off_2024-04-04.pdf'),
(137, 'HR_Mandatory 2023 KRA_KPI Metrics', '2023-01-26 00:00:00', 'admin/memo/uploads/HR_Mandatory 2023 KRA_KPI Metrics_2024-04-04.pdf'),
(138, '2022 Year End Performance Review', '2023-01-24 00:00:00', 'admin/memo/uploads/2023_2022 Year End Performance Review_2024-04-04.pdf'),
(139, '2023 KRA and KPI Targets', '2023-01-25 00:00:00', 'admin/memo/uploads/2023_2023 KRA and KPI Targets_2024-04-04.pdf'),
(140, 'Summer Outing 2023', '2023-02-21 00:00:00', 'admin/memo/uploads/2023_Summer-Outing 2023_2024-04-04.pdf'),
(141, 'Eidl Fitr 2023', '2023-04-17 00:00:00', 'admin/memo/uploads/2023_Eidl Fitr 2023_2024-04-04.pdf'),
(142, 'RE ISSUE Corporate Internet Email and Equipment Policy', '2023-04-19 00:00:00', 'admin/memo/uploads/2023_RE_ISSUE_Corporate Internet_Email and Equipment Policy_2024-04-04.pdf'),
(143, 'Addendum New Parking Guideline and Reminders', '2023-05-04 00:00:00', 'admin/memo/uploads/2023_Addendum_New Parking Guideline and Reminders_2024-04-04.pdf'),
(144, 'Holiday in Pulilan', '2023-05-12 00:00:00', 'admin/memo/uploads/2023_Holiday in Pulilan_2024-04-04.pdf'),
(145, 'Anti Flu Vaccination', '2023-05-18 00:00:00', 'admin/memo/uploads/2023_Anti Flu Vaccination_2024-04-04.pdf'),
(146, 'Mid Year Pandesal Party', '2023-07-04 00:00:00', 'admin/memo/uploads/2023_Mid Year Pandesal Party_2024-04-04.pdf'),
(147, 'Mid Year Performance Review', '2023-07-11 00:00:00', 'admin/memo/uploads/2023_Mid Year Performance Review_2024-04-04.pdf'),
(148, 'Lifting to Covid19 Protocols August-1-2023', '2023-07-28 00:00:00', 'admin/memo/uploads/2023_Lifting-to-Covid19-Protocols_August-1-2023_2024-04-04.pdf'),
(149, 'Kainang Pamilya Mahalaga Day', '2023-09-19 00:00:00', 'admin/memo/uploads/2023_Kainang Pamilya Mahalaga Day_2024-04-04.pdf'),
(150, 'October Pandesal Party', '2023-09-18 00:00:00', 'admin/memo/uploads/2023_October Pandesal Party_2024-04-04.pdf'),
(151, 'January Holiday', '2023-01-03 00:00:00', 'admin/memo/uploads/2023_January Holiday_2024-04-04.pdf'),
(152, 'January Holiday Pulilan Foundation Day', '2023-01-19 00:00:00', 'admin/memo/uploads/2023_January Holiday - Pulilan Foundation Day_2024-04-04.pdf'),
(153, 'February Holidays', '2023-01-30 00:00:00', 'admin/memo/uploads/2023_February Holidays_2024-04-04.pdf'),
(154, 'GHP from April 1 2023 - March 31, 2024', '2023-03-27 00:00:00', 'admin/memo/uploads/2023_GHP from April 1 2023 - March 31, 2024_2024-04-04.pdf'),
(155, 'HMO Coverage from April 1 2023 - March 31, 2024', '2023-03-24 00:00:00', 'admin/memo/uploads/2023_HMO Coverage from April 1 2023 - March 31, 2024_2024-04-04.pdf'),
(156, 'Life and Accident Insurance from April 1 2023 - March 31, 2024', '2023-03-27 00:00:00', 'admin/memo/uploads/2023_Life and Accident Insurance from April 1 2023 - March 31, 2024_2024-04-04.pdf'),
(157, 'April Holidays', '2023-03-27 00:00:00', 'admin/memo/uploads/2023_April Holidays_2024-04-04.pdf'),
(158, 'Dependents HMO Coverage from April 1 2023 - March 31 2024', '2023-03-27 00:00:00', 'admin/memo/uploads/2023_Dependents_HMO Coverage from April 1 2023 - March 31 2024_2024-04-04.pdf'),
(159, 'May Holiday', '2023-04-24 00:00:00', 'admin/memo/uploads/2023_May Holiday_2024-04-04.pdf'),
(160, 'June Holiday', '2023-05-29 00:00:00', 'admin/memo/uploads/2023_June Holiday_2024-04-04.pdf'),
(161, 'Eidl Adha', '2023-06-14 00:00:00', 'admin/memo/uploads/2023_Eidl Adha_2024-04-04.pdf'),
(162, 'August Holidays', '2023-08-07 00:00:00', 'admin/memo/uploads/2023_August Holidays_2024-04-04.pdf'),
(163, 'Bulacan Holiday Marcelo H Del Pilar', '2023-08-22 00:00:00', 'admin/memo/uploads/2023_Bulacan Holiday_Marcelo H Del Pilar_2024-04-04.pdf'),
(164, 'October and November Holidays', '2023-10-11 00:00:00', 'admin/memo/uploads/2023_October and November Holidays_2024-04-04.pdf'),
(165, 'Employee Awards 2023', '2023-11-06 00:00:00', 'admin/memo/uploads/2023_Employee Awards 2023_2024-04-04.pdf'),
(166, 'APE Nov30 2023', '2023-11-20 00:00:00', 'admin/memo/uploads/2023_APE Nov30 2023_2024-04-04.pdf'),
(167, 'Holidays December January 1 2024', '2023-12-04 00:00:00', 'admin/memo/uploads/2023_Holidays_December_January 1 2024_2024-04-04.pdf'),
(168, 'Asian Land@30 2024 Kick Off and Party', '2023-12-06 00:00:00', 'admin/memo/uploads/2023_Asian Land@30_2024 Kick Off and Party_2024-04-04.pdf'),
(169, 'December Holiday', '2023-12-13 00:00:00', 'admin/memo/uploads/2023_December Holiday_2024-04-04.pdf'),
(173, 'March Holidays', '2024-03-14 00:00:00', 'admin/memo/uploads/2024_March Holidays_2024-04-08.pdf'),
(175, 'August Holidays', '2019-08-14 00:00:00', 'admin/memo/uploads/2019_August Holidays_2024-04-08.pdf'),
(176, 'AsianLand@30 2024 Kick Off and Party', '2024-01-03 00:00:00', 'admin/memo/uploads/2024_AsianLand@30_2024 Kick Off and Party_2024-04-22.pdf'),
(177, 'January Holiday', '2024-01-04 00:00:00', 'admin/memo/uploads/2024_January Holiday_2024-04-22.pdf'),
(178, '2024 & 2023 Year End Performance Review', '2024-01-16 00:00:00', 'admin/memo/uploads/2024_2023 Year End Performance Review_2024-04-22.pdf'),
(179, 'KRA and KPI Targets', '2024-01-16 00:00:00', 'admin/memo/uploads/2024_KRA and KPI Targets_2024-04-22.pdf'),
(180, 'DEPENDENTS INTELLICARE 2024', '2024-02-29 00:00:00', 'admin/memo/uploads/MEMO_DEPENDENTS_INTELLICARE-2024_2024-04-22.pdf'),
(181, 'Finance QRPH Policy', '2024-03-05 00:00:00', 'admin/memo/uploads/20240305_Finance - QRPH Policy_2024-04-22.pdf'),
(182, 'HMO Coverage from April 1 2024 - March 31 2025', '2024-03-04 00:00:00', 'admin/memo/uploads/2024_HMO Coverage from April 1 2024_March 31 2025 (1)_2024-04-22.pdf'),
(183, 'Life and Accident Insurance from April 1 2024 - March 31 2025', '2024-03-11 00:00:00', 'admin/memo/uploads/2024_Life and Accident Insurance from April 1 2024_March 31 2025 (1)_2024-04-22.pdf'),
(184, 'GHP from April 1 2024 - March 31 2025', '2024-03-11 00:00:00', 'admin/memo/uploads/2024_GHP from April 1 2024_March 31 2025 (1)_2024-04-22.pdf'),
(185, 'March Holidays', '2024-03-11 00:00:00', 'admin/memo/uploads/2024_March Holidays (1)_2024-04-22.pdf'),
(186, '3F Door Access', '2024-04-12 00:00:00', 'admin/memo/uploads/20240412_3FDoorAccess_memo_2024-04-22.pdf');

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
(1, 'Adminstrator', NULL, '    ', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1700721900_33_user.jpg', NULL, 1, '2021-01-20 14:02:37', '2024-02-29 15:55:38'),
(173, 'Edhen Joy', 'Bagondol', 'Sese', '10157', '0192023a7bbd73250516f069df18b500', 'uploads/1710395580_1709263740_25_user.jpg', NULL, 3, '2024-02-29 15:27:23', '2024-04-17 14:33:06'),
(174, 'Lizeth', NULL, 'Castro', 'lizetca', 'e86fdc2283aff4717103f2d44d0610f7', 'uploads/1709191800_25_user.jpg', NULL, 2, '2024-02-29 15:30:44', '2024-03-05 15:42:39'),
(178, 'sheila', NULL, 'manalo', 'sheilma', 'e86fdc2283aff4717103f2d44d0610f7', 'uploads/1709192640_24_user.jpg', NULL, 1, '2024-02-29 15:44:10', '2024-03-19 15:57:37'),
(183, 'edhen', NULL, 'sese', 'edhense', 'e86fdc2283aff4717103f2d44d0610f7', 'uploads/1709529900_24_user.jpg', NULL, 2, '2024-02-29 16:04:04', '2024-03-05 15:42:20'),
(184, 'Francis', NULL, 'Diaz', 'francisdiaz', '0192023a7bbd73250516f069df18b500', 'uploads/1709263740_25_user.jpg', NULL, 1, '2024-03-01 11:29:07', '2024-03-04 11:10:44'),
(185, 'Jude', NULL, 'Dela Cruz', 'judedel', 'e86fdc2283aff4717103f2d44d0610f7', 'uploads/1709263740_24_user.jpg', NULL, 2, '2024-03-01 11:29:42', '2024-03-05 15:43:02'),
(186, 'Donita Rose', 'Pingol', 'Tantoco', '10147', 'f5c59267dae7d123f54b741a76f28f84', 'uploads/1710395700_1692844860_25_user.jpg', NULL, 3, '2024-03-01 13:57:57', '2024-03-14 13:55:12'),
(187, 'Jude', 'Pangalinan', 'Dela Cruz', '10093', 'ee51fce06e2c58e0cac874de44b57035', 'uploads/1709522400_310082230_527806389353530_3496035450341313581_n.jpg', NULL, 3, '2024-03-01 14:30:16', '2024-03-14 13:47:36'),
(188, 'Beegil', 'Ramirez', 'Manuel', '10178', '728678f9db419eeaa3476663764e1456', 'uploads/1710395700_45_user.jpg', NULL, 3, '2024-03-04 10:21:57', '2024-03-14 13:55:48'),
(189, 'Francis Lorenzo', 'Aguilar', 'Diaz', '20181', '6974909f63282da92162267b49df3b34', 'uploads/189_user.jpg', NULL, 3, '2024-03-04 11:10:14', '2024-03-04 11:10:14'),
(190, 'Juan', 'M.', 'Dela Cruz', '10101', '6dfc35c47756e962ef055d1049f1f8ec', 'uploads/190_user.jpg', NULL, 3, '2024-03-04 13:30:28', '2024-03-04 13:47:29'),
(191, 'Rhea Eliz', NULL, 'Sebastian', 'rheaese', 'e86fdc2283aff4717103f2d44d0610f7', 'uploads/1709535240_24_user.jpg', NULL, 2, '2024-03-04 14:54:51', '2024-03-05 15:42:01'),
(192, 'Eleonor', NULL, 'Cabal', 'eleonca', 'e86fdc2283aff4717103f2d44d0610f7', 'uploads/1709535480_24_user.jpg', NULL, 2, '2024-03-04 14:58:05', '2024-03-05 15:22:52'),
(10072, 'John Anthony', 'ROBLES', 'Carpio', '10008', '670eca4ad5de0e0cfcc60ab3dd008095', NULL, NULL, 3, '2024-05-13 10:41:40', NULL);

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
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memo_list`
--
ALTER TABLE `memo_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offense_list`
--
ALTER TABLE `offense_list`
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
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `memo_list`
--
ALTER TABLE `memo_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `offense_list`
--
ALTER TABLE `offense_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `policies_list`
--
ALTER TABLE `policies_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10073;

--
-- Constraints for dumped tables
--

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
