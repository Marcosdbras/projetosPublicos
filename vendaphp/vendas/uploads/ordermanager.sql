-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2013 at 11:36 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ordermanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `name`, `about`) VALUES
(1, 'admin@oms.com', '1234', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `account_balance` longtext COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `store` longtext COLLATE utf8_unicode_ci NOT NULL,
  `group` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `client` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order` longtext COLLATE utf8_unicode_ci NOT NULL,
  `total_amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `main_amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` longtext COLLATE utf8_unicode_ci NOT NULL,
  `shipping_cost` longtext COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tax_amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=211 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'login', 'login'),
(2, 'account_type', 'account type'),
(3, 'admin', 'admin'),
(4, 'client', 'client'),
(5, 'email', 'email'),
(6, 'password', 'password'),
(7, 'forgot_password ?', 'forgot password ?'),
(8, 'reset_password', 'reset password'),
(9, 'teacher', 'teacher'),
(10, 'student', 'student'),
(11, 'parent', 'parent'),
(12, 'reset', 'reset'),
(13, 'admin_dashboard', 'admin dashboard'),
(14, 'account', 'account'),
(15, 'profile', 'profile'),
(16, 'change_password', 'change password'),
(17, 'logout', 'logout'),
(18, 'panel', 'panel'),
(19, 'dashboard_help', 'dashboard help'),
(20, 'dashboard', 'dashboard'),
(21, 'bed_ward_help', 'bed ward help'),
(22, 'clients', 'clients'),
(23, 'group_details', 'group details'),
(24, 'group', 'group'),
(25, 'client_details', 'client details'),
(26, 'all_clients', 'all clients'),
(27, 'products', 'products'),
(28, 'category_details', 'category details'),
(29, 'category', 'category'),
(30, 'type_details', 'type details'),
(31, 'type', 'type'),
(32, 'product_details', 'product details'),
(33, 'product', 'product'),
(34, 'orders', 'orders'),
(35, 'order_details', 'order details'),
(36, 'all_orders', 'all orders'),
(37, 'invoice_details', 'invoice details'),
(38, 'all_invoices', 'all invoices'),
(39, 'transaction_details', 'transaction details'),
(40, 'transaction', 'transaction'),
(41, 'message_details', 'message details'),
(42, 'message', 'message'),
(43, 'system_settings', 'system settings'),
(44, 'profile_help', 'profile help'),
(45, 'manage_category', 'manage category'),
(46, 'manage_client', 'manage client'),
(47, 'manage_group', 'manage group'),
(48, 'manage_invoice', 'manage invoice'),
(49, 'manage_message', 'manage message'),
(50, 'manage_order', 'manage order'),
(51, 'manage_product', 'manage product'),
(52, 'manage_transaction', 'manage transaction'),
(53, 'manage_type', 'manage type'),
(54, 'settings', 'settings'),
(55, 'system_name', 'system name'),
(56, 'save', 'save'),
(57, 'system_title', 'system title'),
(58, 'address', 'address'),
(59, 'phone', 'phone'),
(60, 'system_email', 'system email'),
(61, 'settings_updated', 'settings updated'),
(62, 'manage_profile', 'manage profile'),
(63, 'update_profile', 'update profile'),
(64, 'new_password', 'new password'),
(65, 'confirm_new_password', 'confirm new password'),
(66, 'update_password', 'update password'),
(67, 'group_list', 'group list'),
(68, 'add_group', 'add group'),
(69, 'name', 'name'),
(70, 'about', 'about'),
(71, 'options', 'options'),
(72, 'edit', 'edit'),
(73, 'delete', 'delete'),
(74, 'edit_group', 'edit group'),
(75, 'client_list', 'client list'),
(76, 'add_client', 'add client'),
(77, 'creation_date', 'creation date'),
(78, 'account_balance', 'account balance'),
(79, 'confirm password', 'confirm password'),
(80, 'store', 'store'),
(81, 'select a group', 'select a group'),
(82, 'edit_client', 'edit client'),
(83, 'category_list', 'category list'),
(84, 'add_category', 'add category'),
(85, 'edit_category', 'edit category'),
(86, 'type_list', 'type list'),
(87, 'add_type', 'add type'),
(88, 'product_list', 'product list'),
(89, 'add_product', 'add product'),
(90, 'available quantity', 'available quantity'),
(91, 'price_per_unit', 'price per unit'),
(92, 'select a category', 'select a category'),
(93, 'select a type', 'select a type'),
(94, 'description', 'description'),
(95, 'intial quantity', 'intial quantity'),
(96, 'quantity_unit', 'quantity unit'),
(97, 'price_per_unit ($)', 'price per unit ($)'),
(98, 'quantity', 'quantity'),
(99, 'price', 'price'),
(100, 'detail', 'detail'),
(101, 'edit_product', 'edit product'),
(102, 'order_list', 'order list'),
(103, 'add_order', 'add order'),
(104, 'order', 'order'),
(105, 'rate', 'rate'),
(106, 'total_price', 'total price'),
(107, 'date', 'date'),
(108, 'status', 'status'),
(109, 'select a Client', 'select a Client'),
(110, 'select a product', 'select a product'),
(111, 'total_price ($)', 'total price ($)'),
(112, 'pending', 'pending'),
(113, 'approved', 'approved'),
(114, 'cancelled', 'cancelled'),
(115, 'select a client', 'select a client'),
(116, 'edit_order', 'edit order'),
(117, 'transaction_list', 'transaction list'),
(118, 'add_transaction', 'add transaction'),
(119, 'summery', 'summery'),
(120, 'amount', 'amount'),
(121, 'view', 'view'),
(122, 'expense', 'expense'),
(123, 'income', 'income'),
(124, 'total income', 'total income'),
(125, 'total expense', 'total expense'),
(126, 'balance', 'balance'),
(127, 'invoice_list', 'invoice list'),
(128, 'add_invoice', 'add invoice'),
(129, 'invoice', 'invoice'),
(130, 'invoice title', 'invoice title'),
(131, 'order details', 'order details'),
(132, 'note', 'note'),
(133, 'view invoice', 'view invoice'),
(134, 'Invoice title', 'Invoice title'),
(135, 'select a client', 'select a client'),
(136, 'select an approved order', 'select an approved order'),
(137, 'unpaid', 'unpaid'),
(138, 'paid', 'paid'),
(139, 'Invoice title', 'Invoice title'),
(140, 'select a client', 'select a client'),
(141, 'Invoice title', 'Invoice title'),
(142, 'select a client', 'select a client'),
(143, 'payment_to', 'payment to'),
(144, 'bill_to', 'bill to'),
(145, 'invoice_title', 'invoice title'),
(146, 'invoice_id', 'invoice id'),
(147, 'select a client', 'select a client'),
(148, 'edit_invoice', 'edit invoice'),
(149, 'select a client', 'select a client'),
(150, 'select a client', 'select a client'),
(151, 'select a client', 'select a client'),
(152, 'select a client', 'select a client'),
(153, 'select a client', 'select a client'),
(154, 'select a client', 'select a client'),
(155, 'Invoice title', 'Invoice title'),
(156, 'select a client', 'select a client'),
(157, 'select a client', 'select a client'),
(158, 'select a client', 'select a client'),
(159, 'select a client', 'select a client'),
(160, 'Invoice title', 'Invoice title'),
(161, 'select a client', 'select a client'),
(162, 'select a client', 'select a client'),
(163, 'edit_transaction', 'edit transaction'),
(164, 'message_list', 'message list'),
(165, 'add_message', 'add message'),
(166, 'sender', 'sender'),
(167, 'receiver', 'receiver'),
(168, 'subject', 'subject'),
(169, 'time', 'time'),
(170, 'you', 'you'),
(171, 'reply', 'reply'),
(172, 'to', 'to'),
(173, 'select a receiver', 'select a receiver'),
(174, 'body', 'body'),
(175, 'sender_type', 'sender type'),
(176, 'receiver_type', 'receiver type'),
(177, 'edit_message', 'edit message'),
(178, 'reply_message', 'reply message'),
(179, 'Invoice title', 'Invoice title'),
(180, 'select a client', 'select a client'),
(181, 'summary', 'summary'),
(182, 'Invoice title', 'Invoice title'),
(183, 'select a client', 'select a client'),
(184, 'client_dashboard', 'client dashboard'),
(185, 'product category', 'product category'),
(186, 'pay', 'pay'),
(187, 'account_updated', 'account updated'),
(188, 'manage_language', 'manage language'),
(189, 'phrase_list', 'phrase list'),
(190, 'add_phrase', 'add phrase'),
(191, 'add_language', 'add language'),
(192, 'language', 'language'),
(193, 'option', 'option'),
(194, 'edit_phrase', 'edit phrase'),
(195, 'phrase', 'phrase'),
(196, 'update_phrase', 'update phrase'),
(197, 'Invoice title', 'Invoice title'),
(198, 'select a client', 'select a client'),
(199, 'Invoice title', 'Invoice title'),
(200, 'select a client', 'select a client'),
(201, 'Invoice title', 'Invoice title'),
(202, 'select a client', 'select a client'),
(203, 'select a client', 'select a client'),
(204, 'select a client', 'select a client'),
(205, 'Invoice title', 'Invoice title'),
(206, 'select a client', 'select a client'),
(207, 'Invoice title', 'Invoice title'),
(208, 'select a client', 'select a client'),
(209, 'select a client', 'select a client'),
(210, 'delete_language', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `receiver` longtext COLLATE utf8_unicode_ci NOT NULL,
  `receiver_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `time` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `client` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quantity` longtext COLLATE utf8_unicode_ci NOT NULL,
  `total_price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `rate` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quantity` longtext COLLATE utf8_unicode_ci NOT NULL,
  `quantity_unit` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Bijoy Order Management System'),
(2, 'system_title', 'Bijoy Order Management System'),
(3, 'address', ''),
(4, 'phone', ''),
(6, 'system_email', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order` longtext COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` longtext COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
