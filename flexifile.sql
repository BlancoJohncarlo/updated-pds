-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2023 at 05:47 PM
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
-- Database: `flexifile`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_semester_tb`
--

CREATE TABLE `academic_semester_tb` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_file_tb`
--

CREATE TABLE `attachment_file_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `folder_path` varchar(250) NOT NULL,
  `time_stamp` date NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `document_type` varchar(250) NOT NULL,
  `other_specification` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attachment_file_tb`
--

INSERT INTO `attachment_file_tb` (`id`, `userid`, `filename`, `folder_path`, `time_stamp`, `fullname`, `title`, `document_type`, `other_specification`) VALUES
(4, 5, 'D1-FLEXIFILE-FINAL-UPDATED-V3.docx', 'uploads/D1-FLEXIFILE-FINAL-UPDATED-V3.docx', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(5, 5, 'ELECTIVE 2_ UNIT 1_MODULE.docx', 'uploads/ELECTIVE 2_ UNIT 1_MODULE.docx', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(13, 5, 'JAWILI_4D_ACTIVITY_1.docx', 'uploads/JAWILI_4D_ACTIVITY_1.docx', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(15, 5, 'D1-FLEXIFILE-FINAL-UPDATED-V3.docx', 'uploads/D1-FLEXIFILE-FINAL-UPDATED-V3.docx', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(22, 5, 'D1-FLEXIFILE-FINAL-UPDATED-V3.docx', '../uploads/D1-FLEXIFILE-FINAL-UPDATED-V3.docx', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(23, 5, '4.-Faculty.pdf', '../uploads/4.-Faculty.pdf', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(24, 5, 'read me.docx', '../uploads/read me.docx', '2023-09-20', 'Naruto Namikaze Uzumaki', 'manual', 'education', 'test'),
(25, 0, 'JAWILI_4D_ACTIVITY_1.docx', '../uploads/JAWILI_4D_ACTIVITY_1.docx', '0000-00-00', '', '', '', ''),
(26, 9, '', '', '2023-09-20', 'rimuru tempest', 'manual', 'education', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `civil_service_tb`
--

CREATE TABLE `civil_service_tb` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `career` varchar(250) NOT NULL,
  `rating` varchar(250) NOT NULL,
  `examination` varchar(250) NOT NULL,
  `place` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  `validity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `civil_service_tb`
--

INSERT INTO `civil_service_tb` (`id`, `userid`, `career`, `rating`, `examination`, `place`, `number`, `validity`) VALUES
(122, 21, 'LICENSURE EXAMINATION FOR TEACHERS', '0.828', '03/20/2017', 'LUCENA CITY', '14667826', '06/16/2027');

-- --------------------------------------------------------

--
-- Table structure for table `education_tb`
--

CREATE TABLE `education_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `level` varchar(250) NOT NULL,
  `schoolName` varchar(250) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `fromDate` text NOT NULL,
  `toDate` text NOT NULL,
  `units` varchar(250) NOT NULL,
  `graduated` varchar(250) NOT NULL,
  `honors` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_tb`
--

INSERT INTO `education_tb` (`id`, `userid`, `level`, `schoolName`, `degree`, `fromDate`, `toDate`, `units`, `graduated`, `honors`) VALUES
(241, 21, 'ELEMENTARY', 'MOGPOG CENTARL SCHOOL', 'ELEMENTARY', '2000', '2006', 'N/A', '2006', 'N/A'),
(242, 21, 'SECONDARY', 'MARINDUQUE NATIONAL HIGH SCHOOL', 'ACADEMY', '2006', '2010', 'N/A', '2010', 'N/A'),
(243, 21, 'VOCATIONAL/TRADE COURSE', 'ADVANCE TECHNICAL TRAINING CENTER', 'COMPUTER TECHNOLOGY', '2017', '2017', 'N/A', '2017', '2nd Honor'),
(244, 21, 'COLLEGE', 'MARINDUQUE STATE COLLEGE', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '2010', '2014', 'N/A', '2014', 'N/A'),
(245, 21, 'COLLEGE', 'MARINDUQUE STATE COLLEGE', 'CERTIFICATE IN TEACHERS PROFESSIONAL EDUCATION', '2014', '2015', '22 UNITS EARNED', 'N/A', 'N/A'),
(246, 21, 'GRADUATE STUDIES', 'MARINDUQUE STATE COLLEGE', 'MASTER IN EDUCATION - MAJOR IN EDUCATIONAL MANAGEMENT', '2015', '2016', '9 UNITS EARNED', 'N/A', 'N/A'),
(247, 21, 'GRADUATE STUDIES', 'MARINDUQUE STATE COLLEGE', 'MASTER IN INFORMATION TECHNOLOGY', '2022', '2023', '15 UNITS EARNED', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `family_background_tb`
--

CREATE TABLE `family_background_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `spouse_surname` varchar(250) NOT NULL,
  `spouse_firstname` varchar(250) NOT NULL,
  `spouse_midname` varchar(250) NOT NULL,
  `occupation` varchar(250) NOT NULL,
  `employer` varchar(250) NOT NULL,
  `business_address` varchar(250) NOT NULL,
  `telephone_no` varchar(250) NOT NULL,
  `spouse_extension` varchar(250) NOT NULL,
  `father_surname` varchar(250) NOT NULL,
  `father_firstname` varchar(250) NOT NULL,
  `father_midname` varchar(250) NOT NULL,
  `father_extension` varchar(250) NOT NULL,
  `mother_surname` varchar(250) NOT NULL,
  `mother_firstname` varchar(250) NOT NULL,
  `mother_midname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_background_tb`
--

INSERT INTO `family_background_tb` (`id`, `userid`, `spouse_surname`, `spouse_firstname`, `spouse_midname`, `occupation`, `employer`, `business_address`, `telephone_no`, `spouse_extension`, `father_surname`, `father_firstname`, `father_midname`, `father_extension`, `mother_surname`, `mother_firstname`, `mother_midname`) VALUES
(114, 21, '', '', '', '', 'N/A', '', '', 'NAME EXTENSION (JR., SR)', 'CRUZ', 'ROEL', 'JIMENA', 'NAME EXTENSION (JR., SR)', 'DELA', 'CONCHITA', 'JALOS');

-- --------------------------------------------------------

--
-- Table structure for table `family_children_tb`
--

CREATE TABLE `family_children_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `childname` varchar(250) NOT NULL,
  `childbirth` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_children_tb`
--

INSERT INTO `family_children_tb` (`id`, `userid`, `childname`, `childbirth`) VALUES
(204, 21, 'Carlo', '37413'),
(205, 21, 'carlito', '37778'),
(206, 21, 'ange', '38144');

-- --------------------------------------------------------

--
-- Table structure for table `notification_tb`
--

CREATE TABLE `notification_tb` (
  `id` int(100) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `faculty_type` varchar(250) NOT NULL,
  `date_upload` date NOT NULL,
  `updated_part` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_tb`
--

INSERT INTO `notification_tb` (`id`, `fullname`, `faculty_type`, `date_upload`, `updated_part`) VALUES
(1, 'carlo blanco', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(2, 'carlo blanco', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(3, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(4, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(5, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(6, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(7, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(8, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(9, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(10, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(11, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(12, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(13, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(14, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(15, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(16, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(17, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(18, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(19, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(20, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(21, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(22, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(23, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(24, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(25, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(26, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(27, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(28, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(29, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(30, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(31, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(32, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(33, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(34, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(35, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(36, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(37, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(38, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(39, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(40, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(41, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(42, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(43, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(44, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet'),
(45, 'carlo', 'ITE Faculty/GE faculty', '2023-09-26', 'uploaded his/her Personal Data sheet');

-- --------------------------------------------------------

--
-- Table structure for table `other_info_tb`
--

CREATE TABLE `other_info_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `skills_hobbies` varchar(250) NOT NULL,
  `recognition` varchar(250) NOT NULL,
  `association` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_info_tb`
--

INSERT INTO `other_info_tb` (`id`, `userid`, `skills_hobbies`, `recognition`, `association`) VALUES
(42, 21, 'COMPUTER LITERATE', 'N/A', 'ROTARACT CLUB OF MARINDUQUE NORTH - MARINDUQUE STATE COLLEGE CHAPTER'),
(43, 21, 'COMPUTER LITERATE', 'N/A', 'ROTARACT CLUB OF MARINDUQUE NORTH - MARINDUQUE STATE COLLEGE CHAPTER'),
(44, 21, 'COMPUTER LITERATE', 'N/A', 'ROTARACT CLUB OF MARINDUQUE NORTH - MARINDUQUE STATE COLLEGE CHAPTER'),
(45, 21, 'COMPUTER LITERATE', 'N/A', 'ROTARACT CLUB OF MARINDUQUE NORTH - MARINDUQUE STATE COLLEGE CHAPTER'),
(46, 21, 'COMPUTER LITERATE', 'N/A', 'a'),
(47, 21, 'BASIC TROUBLESHOOTING', 'first runner up', 'SAVE MOTHER EARTH MOVEMENT (SAVE ME MOVEMNENT)'),
(48, 21, 'DANCING', 'champion', 'PHILIPPINES - LEAD - PROJECT CHAMP'),
(49, 21, 'DRAWING', 'champiom', 'MARINDUQUE YOUTH VOLUNTERS CORPS'),
(50, 21, 'DESKTOP PUBLISHING', 'first runner up', 'MARINDUQUE NATIONAL HIGH SCHOOL EMPLOYEE ASSOCIATION'),
(51, 21, 'COMPUTER LITERATE', 'N/A', 'a'),
(52, 21, 'BASIC TROUBLESHOOTING', 'first runner up', 'SAVE MOTHER EARTH MOVEMENT (SAVE ME MOVEMNENT)'),
(53, 21, 'DANCING', 'champion', 'PHILIPPINES - LEAD - PROJECT CHAMP'),
(54, 21, 'DRAWING', 'champiom', 'MARINDUQUE YOUTH VOLUNTERS CORPS'),
(55, 21, 'DESKTOP PUBLISHING', 'first runner up', 'MARINDUQUE NATIONAL HIGH SCHOOL EMPLOYEE ASSOCIATION');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info_tb`
--

CREATE TABLE `personal_info_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `midname` varchar(250) NOT NULL,
  `extension` varchar(250) NOT NULL,
  `birthday` varchar(250) NOT NULL,
  `birthplace` varchar(250) NOT NULL,
  `sex` varchar(250) NOT NULL,
  `civil_status` varchar(250) NOT NULL,
  `height` float NOT NULL,
  `weight` int(11) NOT NULL,
  `bloodtype` varchar(250) NOT NULL,
  `gsis` varchar(250) NOT NULL,
  `pagibig` varchar(250) NOT NULL,
  `philhealth` varchar(250) NOT NULL,
  `sss` varchar(250) NOT NULL,
  `tin` varchar(250) NOT NULL,
  `agency_no` varchar(250) NOT NULL,
  `citizenship` varchar(250) NOT NULL,
  `residential_house_no` varchar(250) NOT NULL,
  `residential_street` varchar(250) NOT NULL,
  `residential_subdivision` varchar(250) NOT NULL,
  `residential_barangay` varchar(250) NOT NULL,
  `residential_municipality` varchar(250) NOT NULL,
  `residential_province` varchar(250) NOT NULL,
  `residential_zipcode` int(20) NOT NULL,
  `permanent_house_no` varchar(250) NOT NULL,
  `permanent_street` varchar(250) NOT NULL,
  `permanent_subdivision` varchar(250) NOT NULL,
  `permanent_barangay` varchar(250) NOT NULL,
  `permanent_municipality` varchar(250) NOT NULL,
  `permanent_province` varchar(250) NOT NULL,
  `permanent_zipcode` int(20) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobileNo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info_tb`
--

INSERT INTO `personal_info_tb` (`id`, `userid`, `firstname`, `surname`, `midname`, `extension`, `birthday`, `birthplace`, `sex`, `civil_status`, `height`, `weight`, `bloodtype`, `gsis`, `pagibig`, `philhealth`, `sss`, `tin`, `agency_no`, `citizenship`, `residential_house_no`, `residential_street`, `residential_subdivision`, `residential_barangay`, `residential_municipality`, `residential_province`, `residential_zipcode`, `permanent_house_no`, `permanent_street`, `permanent_subdivision`, `permanent_barangay`, `permanent_municipality`, `permanent_province`, `permanent_zipcode`, `telephone`, `email`, `mobileNo`) VALUES
(120, 21, 'Cruz', 'Juan', 'Dela', 'NAME EXTENSION (JR., SR)  N/A            ', '=DATE(1996,7,26)', 'BOAC, MARINDUQUE', '', '', 1.52, 45, 'A', '2005005789', '1245-7355-2215', '09-000094895-3', 'N/A', '328-971-218-0000', '6013112', '', 'N/A', 'N/A', 'N/A', 'GITNANG BAYAN', 'MOGPOG', 'MARINDUQUE', 4900, 'N/A', 'N/A', 'N/A', 'GITNANG BAYAN', 'MOGPOG', 'MARINDUQUE', 4901, 'N/A', '09194864365', 'kevinjasmin15@gmail.com/kevinjasmin15@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `training_programs_tb`
--

CREATE TABLE `training_programs_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `title` text NOT NULL,
  `training_from_date` text NOT NULL,
  `training_to_date` text NOT NULL,
  `duration` varchar(250) NOT NULL,
  `type` text NOT NULL,
  `sponsor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training_programs_tb`
--

INSERT INTO `training_programs_tb` (`id`, `userid`, `title`, `training_from_date`, `training_to_date`, `duration`, `type`, `sponsor`) VALUES
(789, 21, '2021 IN-SERVICE TRAINING', '03/15/2021', '03/19/2021', '40', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(790, 21, '2020 IN-SERVICE TRAINING', '44179', '44183', '40', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(791, 21, 'LEARNING DELIVERY MODALITIES COURSE (LMD 2)', '44081', '44085', '40', 'TECHNICAL', 'DEPARTMENT OF EDUCATION DIVISION OF MARINDUQUE'),
(792, 21, 'ECHO ORIENTATION ON MOST ESSENTIAL LEARNING COMPETENCIES (MELCs), LEARNING MODALITIES AND KNOWLEDGE SOURCE', '07/01/2020', '07/01/2020', '8', 'FOUNDATION', 'MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL DEPARTMENT'),
(793, 21, 'OFFICE 365 EMPOWERMENT TRAINING - WORKSHOPS FOR SENIOR HIGH SCHOOL TEACHERS', '10/22/2019', '10/25/2019', '32', 'TECHNICAL', 'MICROSOFT PHILIPPINES - DEPARTMENT OF EDUCATION'),
(794, 21, 'DIVISION REORIENTATION ON RESULTS-BASED MANAGEMENT SYSTEM (RPMS)- PHILIPPINE PROFESSIONAL STANDARDS FOR TEACHERS (PPST) FOR SY 2019-2020', '09/17/2019', '09/18/2019', '16', 'FOUNDATION', 'DEPARTMENT OF EDUCATION DIVISION OF MARINDUQUE'),
(795, 21, 'BASIC LIFE SUPPORT TRAINING', '08/03/2019', '08/03/2019', '8', 'TECHNICAL', 'DEPARTMENT OF HEALTH'),
(796, 21, 'TUDLO: &#34;PALIHAN SA WIKA, PANITIKAN AT ARALING PANGKULTURA SA MARINDUQUE&#34;', '04/10/2019', '04/12/2019', '24', 'TECHNICAL', 'NATIONAL COMISSION FOR CULTURE AND THE ARTS/ DEPARTMENT OF EDUCATION'),
(797, 21, '2018 IN-SERVICE TRAINING', '43395', '43399', '36', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(798, 21, 'SCHOOL-BASED TRAINING ON RESULTS-BASED PERFORMANCE MANAGEMENT SYSTEM (RPMS) FOR TEACHERS', '43371', '43372', '16', 'FOUNDATION', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(799, 21, 'TECHNICAL VOCATIONAL LIVELIHOOD CULMINATING ACTIVITY', '43355', '43355', '8', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(800, 21, 'SCHOOL TRAINING OF CAREER ADVOCATES FOR THE GRADE 12 CAREER GUIDANCE PROGRAM IMPLEMENTATION', '06/22/2018', '06/23/2018', '16', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(801, 21, '2017 SEMESTRAL SCHOOL INSET', '43031', '43035', '40', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(802, 21, 'SHOP TALK: PRODUCT DEVELOPMENT THROUGH CREATIVITY AND INNOVATION', '43033', '43035', '16', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(803, 21, 'LECTURE ON LESSON PLANNING', '43031', '43031', '8', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(804, 21, 'WALKTHROUGH OF THE MODULES OF THE CAREER GUIDANCE PROGRAM FOR GRADE 11', '43014', '43014', '8', 'TECHNICAL', 'DEPARTMENT OF EDUCATION'),
(805, 21, '2016 SEMESTRAL SCHOOL INSET', '42667', '42669', '40', 'TECHNICAL', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(806, 21, '&#34;BRING HOME A LIBRARY&#34; PROGRAM THRU BOOK CARAVAN', '42637', '42637', '8', 'FOUNDATION', 'MARINDUQUE NATIONAL HIGH SCHOOL'),
(807, 21, 'REGIONAL MASS TRAINING OF GRADE 11 TEACHERS ON COMMON TOPICS (BATCH 2)', '42555', '42558', '32', 'TECHNICAL', 'DEPARTMENT OF EDUCATION REGION IV MIMAROPA'),
(808, 21, 'SENIOR HIGH SCHOOL (SHS) MASS TRAINING OF TEACHERS (MTOT) ON THE TVL TRACK', '42523', '42529', '56', 'TECHNICAL', 'DEPARTMENT OF EDUCATION REGION IV MIMAROPA'),
(809, 21, '4TH RESEARCH FORUM', '42445', '42445', '8', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE - SCHOOL OF INFORMATION AND COMPUTING SCIENCES'),
(810, 21, 'FACULTY CONFERENCE', '42389', '42389', '8', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE'),
(811, 21, 'COMPUTER SYSTEMS SERVICING NC II', '42324', '42324', '320', 'TECHNICAL', 'TECHNICAL EDUCATIONAL AND SKILLS DEVELOPMENT AUTHORITY'),
(812, 21, '1ST MARINDUQUE SCIENCE AND TECHNOLOGY CONFERENCE', '42306', '42307', '16', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE - RESEARCH AND EXTENSION DEPARTMENT'),
(813, 21, '5TH STIRDC REGIONAL RESEARCH DEVELOPMENT AND EXTENSION CONFERENCE', '42281', '42283', '24', 'TECHNICAL', 'SOUTHERN TAGALOG ISLAND RESEARCH AND DEVELOPMENT CONSURTIUM'),
(814, 21, 'SEMINAR ON INFORMATION TECHNOLOGY AND SPORTS DEVELOPMENT', '42271', '42271', '8', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE - SCHOOL OF INFORMATION AND COMPUTING SCIENCES'),
(815, 21, 'BASIC WORDPRESS SEMINAR - WORKSHOP', '42210', '42210', '8', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE - SCHOOL OF INFORMATION AND COMPUTING SCIENCES'),
(816, 21, '3RD SICS RESEARCH FORUM', '42087', '42087', '8', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE - SCHOOL OF INFORMATION AND COMPUTING SCIENCES'),
(817, 21, 'SICS RESEARCH AND EXTENSION SEMINAR WORKSHOP', '42074', '42074', '8', 'TECHNICAL', 'MARINDUQUE STATE COLLEGE - SCHOOL OF INFORMATION AND COMPUTING SCIENCES');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `id` int(100) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `role` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`id`, `fullname`, `email`, `password`, `role`, `type`) VALUES
(14, 'carlo blanco', 'blanco@gmail.com', '$2y$10$ldJpdGmX4hXNz5s5FKJZTODd/ZWok.JqMFQPyZC8DDPwRE7qrQ0xS', 'faculty member', 'ITE Faculty'),
(15, 'naruto uzumaki', 'naruto@gmail.com', '$2y$10$x5q2EY/xRLa3lN7aXPLS8OMohurxO2UggpyBq7QSX23sin.tUFILq', 'program head', 'GE Faculty'),
(16, 'rimiru tempest', 'rimuru@gmail.com', '$2y$10$pPPURH2bCONexm8MtUuFQ.3NBGAYmxGpLyQKO2BYV2KBIExPS9GEu', 'dean', 'ITE Faculty'),
(19, 'sasuke uchiha', 'sasuke@gmail.com', '$2y$10$I9rsO2VtVKdbGBxwijSwI.9NSfRPVpcycBniGN6iim42cVOURskBi', 'task force leader', 'ITE Faculty'),
(21, 'carlo', 'carlo@gmail.com', '$2y$10$9b8qYy/Z2DqSglx2Kmg5DeR.PS8FWH66wgc9OKbjRImVs1NcWJEtG', 'faculty member', 'ITE Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `voluntary_work_tb`
--

CREATE TABLE `voluntary_work_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `organization` varchar(250) NOT NULL,
  `from_date` varchar(250) NOT NULL,
  `to_date` varchar(250) NOT NULL,
  `hours` varchar(250) NOT NULL,
  `position` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voluntary_work_tb`
--

INSERT INTO `voluntary_work_tb` (`id`, `userid`, `organization`, `from_date`, `to_date`, `hours`, `position`) VALUES
(118, 21, 'ROTARACT CLUB OF MARINDUQUE NORTH - MARINDUQUE STATE COLLEGE CHAPTER', '=DATE(2013,6,6)', '=DATE(2014,6,23)', '680', 'PRESIDENT'),
(119, 21, 'SAVE MOTHER EARTH MOVEMENT (SAVE ME MOVEMNENT)', '=DATE(2012,6,6)', '=DATE(2014,6,24)', '1360', 'VICE - PRESIDENT'),
(120, 21, 'PHILIPPINES - LEAD - PROJECT CHAMP', '=DATE(2012,6,6)', '=DATE(2013,6,8)', '680', 'COORDINATOR - MARINDUQUE CHAPTER');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience_tb`
--

CREATE TABLE `work_experience_tb` (
  `id` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `work_from_date` varchar(250) NOT NULL,
  `work_to_date` varchar(250) NOT NULL,
  `position_title` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `salary` varchar(250) NOT NULL,
  `paygrade` varchar(250) NOT NULL,
  `appointment` varchar(250) NOT NULL,
  `gov_service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_experience_tb`
--

INSERT INTO `work_experience_tb` (`id`, `userid`, `work_from_date`, `work_to_date`, `position_title`, `department`, `salary`, `paygrade`, `appointment`, `gov_service`) VALUES
(480, 21, '=DATE(2023,1,1)', 'PRESENT', 'INSTRUCTOR 1', 'MARINDUQUE STATE COLLEGE', 'P29,165', '12-1', 'REGULAR', 'YES'),
(481, 21, '=DATE(2022,7,18)', '12/31/2022', 'INSTRUCTOR 1', 'MARINDUQUE STATE COLLEGE', 'P27,608', '12-1', 'REGULAR', 'YES'),
(482, 21, '44562', '07/17/2022', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P25,723', '11-2', 'REGULAR', 'YES'),
(483, 21, '44197', '44561', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P24,161', '11-2', 'REGULAR', 'YES'),
(484, 21, '43831', '44196', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P22,600', '11-2', 'REGULAR', 'YES'),
(485, 21, '43612', '43830', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P21,038', '11-2', 'REGULAR', 'YES'),
(486, 21, '43466', '43611', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P20,754', '11-1', 'REGULAR', 'YES'),
(487, 21, '43101', '12/31/2018', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P20,179', '11-1', 'REGULAR', 'YES'),
(488, 21, '42754', '12/31/2017', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P19,620', '11-1', 'REGULAR', 'YES'),
(489, 21, '42517', '42753', 'SECONDARY SCHOOL TEACHER 1', 'DEPARTMENT OF EDUCATION MARINDUQUE NATIONAL HIGH SCHOOL - SENIOR HIGH SCHOOL', 'P19,120', '11-1', 'TEMPORARY', 'YES'),
(490, 21, '42156', '42459', 'BASIC EDUCATION TEACHER', 'MARINDUQUE STATE COLLEGE/SCHOOL OF SECONDARY TEACHER EDUCATION - LABORATORY HIGH SCHOOL', 'P13,660', 'N/A', 'CONTRACT SERVICE', 'NO'),
(491, 21, '42156', '42293', 'COLLEGE LECTURER', 'MARINDUQUE STATE COLLEGE/SCHOOL OF INFORMATION AND COMPUTING SCIENCES', 'P13,660', 'N/A', 'CONTRACT SERVICE', 'NO'),
(492, 21, '41946', '42090', 'COLLEGE LECTURER', 'MARINDUQUE STATE COLLEGE/SCHOOL OF INFORMATION AND COMPUTING SCIENCES', 'P13,660', 'N/A', 'CONTRACT SERVICE', 'NO'),
(493, 21, '41799', '41929', 'COLLEGE LECTURER', 'MARINDUQUE STATE COLLEGE/SCHOOL OF INFORMATION AND COMPUTING SCIENCES', 'P13,660', 'N/A', 'CONTRACT SERVICE', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_semester_tb`
--
ALTER TABLE `academic_semester_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachment_file_tb`
--
ALTER TABLE `attachment_file_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil_service_tb`
--
ALTER TABLE `civil_service_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_tb`
--
ALTER TABLE `education_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_background_tb`
--
ALTER TABLE `family_background_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_children_tb`
--
ALTER TABLE `family_children_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_tb`
--
ALTER TABLE `notification_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_info_tb`
--
ALTER TABLE `other_info_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_info_tb`
--
ALTER TABLE `personal_info_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_programs_tb`
--
ALTER TABLE `training_programs_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voluntary_work_tb`
--
ALTER TABLE `voluntary_work_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_experience_tb`
--
ALTER TABLE `work_experience_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_semester_tb`
--
ALTER TABLE `academic_semester_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civil_service_tb`
--
ALTER TABLE `civil_service_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `education_tb`
--
ALTER TABLE `education_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `family_background_tb`
--
ALTER TABLE `family_background_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `family_children_tb`
--
ALTER TABLE `family_children_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `notification_tb`
--
ALTER TABLE `notification_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `other_info_tb`
--
ALTER TABLE `other_info_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_info_tb`
--
ALTER TABLE `personal_info_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `training_programs_tb`
--
ALTER TABLE `training_programs_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `voluntary_work_tb`
--
ALTER TABLE `voluntary_work_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `work_experience_tb`
--
ALTER TABLE `work_experience_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
