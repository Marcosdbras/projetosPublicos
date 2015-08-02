-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2013 at 04:54 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `email` longtext collate utf8_unicode_ci NOT NULL,
  `password` longtext collate utf8_unicode_ci NOT NULL,
  `level` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`) VALUES
(1, 'Mr. Admin', 'admin@ekattor.com', '1234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `author` longtext collate utf8_unicode_ci NOT NULL,
  `class_id` longtext collate utf8_unicode_ci NOT NULL,
  `status` longtext collate utf8_unicode_ci NOT NULL,
  `price` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `book`
--


-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `name_numeric` longtext collate utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY  (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `class`
--


-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

DROP TABLE IF EXISTS `class_routine`;
CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL auto_increment,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `day` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`class_routine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `class_routine`
--




-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `number_of_room` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`dormitory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dormitory`
--


-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL auto_increment,
  `task` longtext collate utf8_unicode_ci NOT NULL,
  `subject` longtext collate utf8_unicode_ci NOT NULL,
  `body` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`email_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `email_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `date` longtext collate utf8_unicode_ci NOT NULL,
  `comment` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `exam`
--


-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `grade_point` longtext collate utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `grade`
--


-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) NOT NULL,
  `title` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext collate utf8_unicode_ci NOT NULL,
  `payment_method` longtext collate utf8_unicode_ci NOT NULL,
  `payment_details` longtext collate utf8_unicode_ci NOT NULL,
  `status` longtext collate utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  PRIMARY KEY  (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `invoice`
--


-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL auto_increment,
  `phrase` longtext collate utf8_unicode_ci NOT NULL,
  `english` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`phrase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=214 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'login', ''),
(2, 'account_type', ''),
(3, 'admin', ''),
(4, 'teacher', ''),
(5, 'student', ''),
(6, 'parent', ''),
(7, 'email', ''),
(8, 'password', ''),
(9, 'forgot_password ?', ''),
(10, 'reset_password', ''),
(11, 'reset', ''),
(12, 'admin_dashboard', ''),
(13, 'account', ''),
(14, 'profile', ''),
(15, 'change_password', ''),
(16, 'logout', ''),
(17, 'panel', ''),
(18, 'dashboard_help', ''),
(19, 'dashboard', ''),
(20, 'student_help', ''),
(21, 'teacher_help', ''),
(22, 'subject_help', ''),
(23, 'subject', ''),
(24, 'class_help', ''),
(25, 'class', ''),
(26, 'exam_help', ''),
(27, 'exam', ''),
(28, 'marks_help', ''),
(29, 'marks-attendance', ''),
(30, 'grade_help', ''),
(31, 'exam-grade', ''),
(32, 'class_routine_help', ''),
(33, 'class_routine', ''),
(34, 'invoice_help', ''),
(35, 'payment', ''),
(36, 'book_help', ''),
(37, 'library', ''),
(38, 'transport_help', ''),
(39, 'transport', ''),
(40, 'dormitory_help', ''),
(41, 'dormitory', ''),
(42, 'noticeboard_help', ''),
(43, 'noticeboard-event', ''),
(44, 'bed_ward_help', ''),
(45, 'settings', ''),
(46, 'system_settings', ''),
(47, 'manage_language', ''),
(48, 'backup_restore', ''),
(49, 'profile_help', ''),
(50, 'manage_student', ''),
(51, 'manage_teacher', ''),
(52, 'noticeboard', ''),
(53, 'language', ''),
(54, 'backup', ''),
(55, 'calendar_schedule', ''),
(56, 'select_a_class', ''),
(57, 'student_list', ''),
(58, 'add_student', ''),
(59, 'roll', ''),
(60, 'photo', ''),
(61, 'student_name', ''),
(62, 'address', ''),
(63, 'options', ''),
(64, 'marksheet', ''),
(65, 'id_card', ''),
(66, 'edit', ''),
(67, 'delete', ''),
(68, 'personal_profile', ''),
(69, 'academic_result', ''),
(70, 'name', ''),
(71, 'birthday', ''),
(72, 'sex', ''),
(73, 'male', ''),
(74, 'female', ''),
(75, 'religion', ''),
(76, 'blood_group', ''),
(77, 'phone', ''),
(78, 'father_name', ''),
(79, 'mother_name', ''),
(80, 'edit_student', ''),
(81, 'teacher_list', ''),
(82, 'add_teacher', ''),
(83, 'teacher_name', ''),
(84, 'edit_teacher', ''),
(85, 'manage_parent', ''),
(86, 'parent_list', ''),
(87, 'parent_name', ''),
(88, 'relation_with_student', ''),
(89, 'parent_email', ''),
(90, 'parent_phone', ''),
(91, 'parrent_address', ''),
(92, 'parrent_occupation', ''),
(93, 'add', ''),
(94, 'parent_of', ''),
(95, 'profession', ''),
(96, 'edit_parent', ''),
(97, 'add_parent', ''),
(98, 'manage_subject', ''),
(99, 'subject_list', ''),
(100, 'add_subject', ''),
(101, 'subject_name', ''),
(102, 'edit_subject', ''),
(103, 'manage_class', ''),
(104, 'class_list', ''),
(105, 'add_class', ''),
(106, 'class_name', ''),
(107, 'numeric_name', ''),
(108, 'name_numeric', ''),
(109, 'edit_class', ''),
(110, 'manage_exam', ''),
(111, 'exam_list', ''),
(112, 'add_exam', ''),
(113, 'exam_name', ''),
(114, 'date', ''),
(115, 'comment', ''),
(116, 'edit_exam', ''),
(117, 'manage_exam_marks', ''),
(118, 'manage_marks', ''),
(119, 'select_exam', ''),
(120, 'select_class', ''),
(121, 'select_subject', ''),
(122, 'select_an_exam', ''),
(123, 'mark_obtained', ''),
(124, 'attendance', ''),
(125, 'manage_grade', ''),
(126, 'grade_list', ''),
(127, 'add_grade', ''),
(128, 'grade_name', ''),
(129, 'grade_point', ''),
(130, 'mark_from', ''),
(131, 'mark_upto', ''),
(132, 'edit_grade', ''),
(133, 'manage_class_routine', ''),
(134, 'class_routine_list', ''),
(135, 'add_class_routine', ''),
(136, 'day', ''),
(137, 'starting_time', ''),
(138, 'ending_time', ''),
(139, 'edit_class_routine', ''),
(140, 'manage_invoice/payment', ''),
(141, 'invoice/payment_list', ''),
(142, 'add_invoice/payment', ''),
(143, 'title', ''),
(144, 'description', ''),
(145, 'amount', ''),
(146, 'status', ''),
(147, 'view_invoice', ''),
(148, 'paid', ''),
(149, 'unpaid', ''),
(150, 'add_invoice', ''),
(151, 'payment_to', ''),
(152, 'bill_to', ''),
(153, 'invoice_title', ''),
(154, 'invoice_id', ''),
(155, 'edit_invoice', ''),
(156, 'manage_library_books', ''),
(157, 'book_list', ''),
(158, 'add_book', ''),
(159, 'book_name', ''),
(160, 'author', ''),
(161, 'price', ''),
(162, 'available', ''),
(163, 'unavailable', ''),
(164, 'edit_book', ''),
(165, 'manage_transport', ''),
(166, 'transport_list', ''),
(167, 'add_transport', ''),
(168, 'route_name', ''),
(169, 'number_of_vehicle', ''),
(170, 'route_fare', ''),
(171, 'edit_transport', ''),
(172, 'manage_dormitory', ''),
(173, 'dormitory_list', ''),
(174, 'add_dormitory', ''),
(175, 'dormitory_name', ''),
(176, 'number_of_room', ''),
(177, 'manage_noticeboard', ''),
(178, 'noticeboard_list', ''),
(179, 'add_noticeboard', ''),
(180, 'notice', ''),
(181, 'add_notice', ''),
(182, 'edit_noticeboard', ''),
(183, 'system_name', ''),
(184, 'save', ''),
(185, 'system_title', ''),
(186, 'paypal_email', ''),
(187, 'currency', ''),
(188, 'phrase_list', ''),
(189, 'add_phrase', ''),
(190, 'add_language', ''),
(191, 'phrase', ''),
(192, 'manage_backup_restore', ''),
(193, 'restore', ''),
(194, 'mark', ''),
(195, 'grade', ''),
(196, 'invoice', ''),
(197, 'book', ''),
(198, 'all', ''),
(199, 'upload_&_restore_from_backup', ''),
(200, 'manage_profile', ''),
(201, 'update_profile', ''),
(202, 'new_password', ''),
(203, 'confirm_new_password', ''),
(204, 'update_password', ''),
(205, 'teacher_dashboard', ''),
(206, 'backup_restore_help', ''),
(207, 'student_dashboard', ''),
(208, 'parent_dashboard', ''),
(209, 'view_marks', ''),
(210, 'delete_language', ''),
(211, 'settings_updated', ''),
(212, 'update_phrase', ''),
(213, 'login_failed', '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL default '0',
  `mark_total` int(11) NOT NULL default '100',
  `attendance` int(11) NOT NULL default '0',
  `comment` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`mark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mark`
--


-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

DROP TABLE IF EXISTS `noticeboard`;
CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL auto_increment,
  `notice_title` longtext collate utf8_unicode_ci NOT NULL,
  `notice` longtext collate utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `noticeboard`
--


-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `email` longtext collate utf8_unicode_ci NOT NULL,
  `password` longtext collate utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext collate utf8_unicode_ci NOT NULL,
  `phone` longtext collate utf8_unicode_ci NOT NULL,
  `address` longtext collate utf8_unicode_ci NOT NULL,
  `profession` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `parent`
--


-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL auto_increment,
  `payment_type` longtext collate utf8_unicode_ci NOT NULL,
  `transaction_id` longtext collate utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY  (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `payment`
--


-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL auto_increment,
  `type` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  `description` longtext character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Ekattor School Management System Pro'),
(2, 'system_title', 'Ekattor School'),
(3, 'address', 'Dhaka, Bangladesh'),
(4, 'phone', '+8012654159'),
(5, 'paypal_email', 'payment@school.com'),
(6, 'currency', 'usd'),
(7, 'system_email', 'school@ekattor.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `birthday` longtext collate utf8_unicode_ci NOT NULL,
  `sex` longtext collate utf8_unicode_ci NOT NULL,
  `religion` longtext collate utf8_unicode_ci NOT NULL,
  `blood_group` longtext collate utf8_unicode_ci NOT NULL,
  `address` longtext collate utf8_unicode_ci NOT NULL,
  `phone` longtext collate utf8_unicode_ci NOT NULL,
  `email` longtext collate utf8_unicode_ci NOT NULL,
  `password` longtext collate utf8_unicode_ci NOT NULL,
  `father_name` longtext collate utf8_unicode_ci NOT NULL,
  `mother_name` longtext collate utf8_unicode_ci NOT NULL,
  `class_id` longtext collate utf8_unicode_ci NOT NULL,
  `roll` longtext collate utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `student`
--


-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) default NULL,
  PRIMARY KEY  (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `subject`
--


-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL auto_increment,
  `name` longtext collate utf8_unicode_ci NOT NULL,
  `birthday` longtext collate utf8_unicode_ci NOT NULL,
  `sex` longtext collate utf8_unicode_ci NOT NULL,
  `religion` longtext collate utf8_unicode_ci NOT NULL,
  `blood_group` longtext collate utf8_unicode_ci NOT NULL,
  `address` longtext collate utf8_unicode_ci NOT NULL,
  `phone` longtext collate utf8_unicode_ci NOT NULL,
  `email` longtext collate utf8_unicode_ci NOT NULL,
  `password` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `teacher`
--


-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL auto_increment,
  `route_name` longtext collate utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext collate utf8_unicode_ci NOT NULL,
  `description` longtext collate utf8_unicode_ci NOT NULL,
  `route_fare` longtext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`transport_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transport`
--

