-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2019 at 01:16 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emailsend_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account_master`
--

CREATE TABLE `admin_account_master` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `address` text NOT NULL,
  `addedby` varchar(200) NOT NULL,
  `add_datetime` varchar(200) NOT NULL,
  `status` enum('A','D') NOT NULL,
  `display_order` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_account_master`
--

INSERT INTO `admin_account_master` (`admin_id`, `firstname`, `lastname`, `email`, `password`, `contact_no`, `address`, `addedby`, `add_datetime`, `status`, `display_order`, `image`) VALUES
(2, 'admin', 'app', 'ashok@ask2new.com', '21232f297a57a5a743894a0e4a801fc3', 121212123, 'pune', 'ashok@ask2new.com', '2015-07-21 14:15:43', 'D', 0, ''),
(3, 'admin', 'app', 'amit.d', '21232f297a57a5a743894a0e4a801fc3', 121212123, 'pune', 'ashok@ask2new.com', '2015-07-21 14:15:43', 'D', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus_lists`
--

CREATE TABLE `contactus_lists` (
  `empl_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `user_message` varchar(500) NOT NULL,
  `add_datetime` varchar(50) NOT NULL,
  `status` enum('Yes','No') NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus_lists`
--

INSERT INTO `contactus_lists` (`empl_id`, `full_name`, `email`, `phone_number`, `user_message`, `add_datetime`, `status`) VALUES
(1, 'Amit Dubale', 'amit.dubale10@gmail.com', '940395494', 'hiiiiiiiiiiii', '2019-02-04 17:41:48', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `logs_master`
--

CREATE TABLE `logs_master` (
  `id` int(11) NOT NULL,
  `login_user` varchar(1000) NOT NULL,
  `login_datetime` varchar(1000) NOT NULL,
  `task` varchar(1000) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `remote_addr` varchar(1000) NOT NULL,
  `request_uri` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_master`
--

INSERT INTO `logs_master` (`id`, `login_user`, `login_datetime`, `task`, `file`, `remote_addr`, `request_uri`) VALUES
(1, 'ashok@ask2new.com', '2016-03-15 12:49:37', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(2, 'ashok@ask2new.com', '2016-03-15 12:56:04', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(3, 'ashok@ask2new.com', '2016-03-17 07:53:47', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(4, 'ashok@ask2new.com', '2016-03-17 07:54:19', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(5, 'ashok@ask2new.com', '2016-03-31 08:47:16', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(6, 'ashok@ask2new.com', '2016-03-31 13:04:00', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(7, 'ashok@ask2new.com', '2016-04-02 07:37:24', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(8, 'ashok@ask2new.com', '2016-04-07 08:28:25', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(9, 'ashok@ask2new.com', '2016-04-07 12:33:13', 'Add categories', 'asdasd', '::1', '/nikhilappadmin/addcategory.php'),
(10, 'ashok@ask2new.com', '2016-04-07 12:34:25', 'Update categories', 'asdasddsfdsf', '::1', '/nikhilappadmin/addcategory.php?id=1'),
(11, 'ashok@ask2new.com', '2016-04-07 12:35:02', 'categories Delete', '1', '::1', '/nikhilappadmin/addcategory.php?del=1'),
(12, 'ashok@ask2new.com', '2016-04-07 12:36:39', 'Add categories', 'sadasd', '::1', '/nikhilappadmin/addcategory.php'),
(13, 'ashok@ask2new.com', '2016-04-07 12:36:51', 'categories Delete', '2', '::1', '/nikhilappadmin/addcategory.php?del=2'),
(14, 'ashok@ask2new.com', '2016-04-07 14:30:03', 'categories Delete', '2', '::1', '/nikhilappadmin/addcategory.php?del=2'),
(15, 'ashok@ask2new.com', '2016-04-07 14:33:58', 'categories Delete', '2', '::1', '/nikhilappadmin/addcategory.php?del=2'),
(16, 'ashok@ask2new.com', '2016-04-07 14:34:35', 'categories Delete', '2', '::1', '/nikhilappadmin/addcategory.php?del=2'),
(17, 'ashok@ask2new.com', '2016-04-07 14:35:09', 'Add categories', 'fdzfsd dfg fd', '::1', '/nikhilappadmin/addcategory.php'),
(18, 'ashok@ask2new.com', '2016-04-07 14:35:57', 'Update categories', 'fdzfsd dfg fd', '::1', '/nikhilappadmin/addcategory.php?id=3'),
(19, 'ashok@ask2new.com', '2016-04-07 11:07:49', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(20, 'ashok@ask2new.com', '2016-04-09 05:30:49', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(21, 'ashok@ask2new.com', '2016-04-09 09:13:09', 'Add categories', 'fsdgsfdgdfg', '::1', '/nikhilappadmin/addcategory.php'),
(22, 'ashok@ask2new.com', '2016-04-09 09:13:21', 'Add categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addcategory.php'),
(23, 'ashok@ask2new.com', '2016-04-09 09:14:35', 'Add type_id', 'dfgdfgdgd', '::1', '/nikhilappadmin/addtype.php'),
(24, 'ashok@ask2new.com', '2016-04-09 09:14:44', 'Add type_id', 'dfgdfg', '::1', '/nikhilappadmin/addtype.php'),
(25, 'ashok@ask2new.com', '2016-04-09 09:15:53', 'Update type_id', 'dfgdfg dgjdfmgd f', '::1', '/nikhilappadmin/addtype.php?id=2'),
(26, 'ashok@ask2new.com', '2016-04-09 09:16:08', 'type Delete', '2', '::1', '/nikhilappadmin/addtype.php?del=2'),
(27, 'ashok@ask2new.com', '2016-04-09 09:16:42', 'type Delete', '2', '::1', '/nikhilappadmin/addtype.php?del=2'),
(28, 'ashok@ask2new.com', '2016-04-10 15:45:00', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(29, 'ashok@ask2new.com', '2016-04-10 18:16:26', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(30, 'ashok@ask2new.com', '2016-04-10 21:49:19', 'Add type_id', 'jkhio', '::1', '/nikhilappadmin/addtype.php'),
(31, 'ashok@ask2new.com', '2016-04-10 21:49:37', 'Update type_id', 'jkhio', '::1', '/nikhilappadmin/addtype.php?id=2'),
(32, 'ashok@ask2new.com', '2016-04-10 21:50:04', 'Update categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addcategory.php?id=5'),
(33, 'ashok@ask2new.com', '2016-04-10 21:52:30', 'Update type_id', 'jkhio', '::1', '/nikhilappadmin/addtype.php?id=2'),
(34, 'ashok@ask2new.com', '2016-04-10 21:52:47', 'Update categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addcategory.php?id=5'),
(35, 'ashok@ask2new.com', '2016-04-10 22:11:56', 'Add categories', 'fhgmjhg,j,', '::1', '/nikhilappadmin/addsubcategory.php'),
(36, 'ashok@ask2new.com', '2016-04-10 22:13:19', 'Add categories', ',hj,khk.h.lk.', '::1', '/nikhilappadmin/addsubcategory.php'),
(37, 'ashok@ask2new.com', '2016-04-10 22:13:31', 'Add categories', 'xfcgvbnm,', '::1', '/nikhilappadmin/addsubcategory.php'),
(38, 'ashok@ask2new.com', '2016-04-10 22:13:44', 'Update Sub categories', 'xfcgvbnm,gj', '::1', '/nikhilappadmin/addsubcategory.php?id=2'),
(39, 'ashok@ask2new.com', '2016-04-10 22:13:55', 'subcategory_master Delete', '2', '::1', '/nikhilappadmin/addsubcategory.php?del=2'),
(40, 'ashok@ask2new.com', '2016-04-10 22:46:53', 'Add categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addcountry.php'),
(41, 'ashok@ask2new.com', '2016-04-10 22:47:50', 'Add categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addcountry.php'),
(42, 'ashok@ask2new.com', '2016-04-10 22:48:26', 'Update categories', 'df', '::1', '/nikhilappadmin/addcountry.php?id=1'),
(43, 'ashok@ask2new.com', '2016-04-11 10:21:42', 'Add state_master', 'sadasd', '::1', '/nikhilappadmin/addstate.php'),
(44, 'ashok@ask2new.com', '2016-04-11 10:24:44', 'Add state_master', 'sefdg', '::1', '/nikhilappadmin/addstate.php'),
(45, 'ashok@ask2new.com', '2016-04-11 10:25:01', 'Add state_master', 'fgdfgdfg', '::1', '/nikhilappadmin/addstate.php'),
(46, 'ashok@ask2new.com', '2016-04-11 10:27:59', 'Add categories', 'dfgjl.', '::1', '/nikhilappadmin/addsubcategory.php'),
(47, 'ashok@ask2new.com', '2016-04-11 10:35:20', 'Update  state_id', 'fgdfgdfg', '::1', '/nikhilappadmin/addstate.php?id=2'),
(48, 'ashok@ask2new.com', '2016-04-11 10:35:57', 'Update  state_id', 'fgdfgdfg dfdsf', '::1', '/nikhilappadmin/addstate.php?id=2'),
(49, 'ashok@ask2new.com', '2016-04-11 10:46:52', 'Add city_master', 'fsdfsdf', '::1', '/nikhilappadmin/addcity.php'),
(50, 'ashok@ask2new.com', '2016-04-11 10:47:48', 'Add city_master', 'sadasd', '::1', '/nikhilappadmin/addcity.php'),
(51, 'rahulrvarma22@gmail.com', '2016-04-11 11:44:11', 'Add city_master', 'dsfsdf', '::1', '/nikhilappadmin/addarea.php'),
(52, 'rahulrvarma22@gmail.com', '2016-04-11 11:45:26', 'Update  city_id', 'dsfsdfdfgdg', '::1', '/nikhilappadmin/addcity.php?id=2'),
(53, 'rahulrvarma22@gmail.com', '2016-04-11 11:45:42', 'Add city_master', 'gfcbcvbvcb', '::1', '/nikhilappadmin/addcity.php'),
(54, 'rahulrvarma22@gmail.com', '2016-04-11 12:11:12', 'Add city_master', 'cxvsfdsf', '::1', '/nikhilappadmin/addarea.php'),
(55, 'rahulrvarma22@gmail.com', '2016-04-11 12:21:09', 'Update  area', 'fjfhjg', '::1', '/nikhilappadmin/addarea.php?id=1'),
(56, 'rahulrvarma22@gmail.com', '2016-04-11 12:26:05', 'Update  area', 'fjfhjgfjgh', '::1', '/nikhilappadmin/addarea.php?id=1'),
(57, 'ashok@ask2new.com', '2016-04-12 16:23:50', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(58, 'ashok@ask2new.com', '2016-04-21 18:25:08', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(59, 'ashok@ask2new.com', '2016-05-02 08:35:45', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(60, 'ashok@ask2new.com', '2016-05-02 11:04:01', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(61, 'ashok@ask2new.com', '2016-05-02 18:38:11', 'Add city_master', 'ffffffffffffffff', '::1', '/nikhilappadmin/addcity.php'),
(62, 'ashok@ask2new.com', '2016-05-02 15:47:27', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(63, 'ashok@ask2new.com', '2016-05-02 23:32:38', 'Add area', 'sddsfdsf', '::1', '/nikhilappadmin/addarea.php'),
(64, 'ashok@ask2new.com', '2016-05-03 07:30:47', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(65, 'ashok@ask2new.com', '2016-05-03 15:06:49', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(66, 'ashok@ask2new.com', '2016-05-09 19:46:15', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(67, 'ashok@ask2new.com', '2016-05-09 23:16:42', 'Add categories', 'fghhfghfgh', '::1', '/nikhilappadmin/addsubcategory.php'),
(68, 'ashok@ask2new.com', '2016-05-11 12:23:51', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(69, 'ashok@ask2new.com', '2016-05-11 13:05:56', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(70, 'ashok@ask2new.com', '2016-05-13 15:23:57', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(71, 'ashok@ask2new.com', '2016-05-14 06:31:37', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(72, 'ashok@ask2new.com', '2016-05-14 07:33:04', 'Forget Password', '', '::1', '/nikhilappadmin/index.php'),
(73, 'ashok@ask2new.com', '2016-05-14 07:39:01', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(74, 'ashok@ask2new.com', '2016-05-14 11:23:54', 'Update Admin Account Password', '2', '::1', '/nikhilappadmin/update_password.php'),
(75, 'ashok@ask2new.com', '2016-05-14 11:24:19', 'Update Admin Account Password', '2', '::1', '/nikhilappadmin/update_password.php'),
(76, 'ashok@ask2new.com', '2016-06-01 20:49:24', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(77, 'ashok@ask2new.com', '2016-06-07 19:13:48', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(78, 'ashok@ask2new.com', '2016-06-09 06:47:12', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(79, 'ashok@ask2new.com', '2016-06-09 14:19:41', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(80, 'ashok@ask2new.com', '2016-06-09 17:55:48', 'Add categories', 'tv', '::1', '/nikhilappadmin/addcategory.php'),
(81, 'ashok@ask2new.com', '2016-06-09 17:56:09', 'Add categories', 'led', '::1', '/nikhilappadmin/addsubcategory.php'),
(82, 'ashok@ask2new.com', '2016-06-09 17:56:23', 'Add categories', 'lcd', '::1', '/nikhilappadmin/addsubcategory.php'),
(83, 'ashok@ask2new.com', '2016-06-10 07:15:42', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(84, 'ashok@ask2new.com', '2016-06-12 17:46:30', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(85, 'ashok@ask2new.com', '2016-09-07 10:57:00', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(86, 'ashok@ask2new.com', '2016-09-07 15:56:02', 'Update services_id', 'test', '::1', '/nikhilappadmin/editservices.php?id=4'),
(87, 'ashok@ask2new.com', '2016-09-07 15:56:19', 'Update services_id', 'Seva', '::1', '/nikhilappadmin/editservices.php?id=1'),
(88, 'ashok@ask2new.com', '2016-09-07 15:56:44', 'Update services_id', '4E', '::1', '/nikhilappadmin/editservices.php?id=2'),
(89, 'ashok@ask2new.com', '2016-09-07 15:57:50', 'Update services_id', 'test1', '::1', '/nikhilappadmin/editservices.php?id=3'),
(90, 'ashok@ask2new.com', '2016-09-07 15:57:59', 'Update services_id', 'test', '::1', '/nikhilappadmin/editservices.php?id=4'),
(91, 'ashok@ask2new.com', '2016-09-07 18:17:25', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(92, 'ashok@ask2new.com', '2016-09-07 19:55:41', 'Add sub_services_name', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addsubservices.php'),
(93, 'ashok@ask2new.com', '2016-09-07 19:56:06', 'Update Sub categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addsubservices.php?id=1'),
(94, 'ashok@ask2new.com', '2016-09-07 20:15:25', 'Add categories', 'sadasd', '::1', '/nikhilappadmin/addsubcategory.php'),
(95, 'ashok@ask2new.com', '2016-09-07 20:15:45', 'Add categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addsubcategory.php'),
(96, 'ashok@ask2new.com', '2016-09-12 13:01:31', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(97, 'ashok@ask2new.com', '2016-09-13 09:21:03', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(98, 'ashok@ask2new.com', '2016-09-13 10:15:46', 'Add Image', '', '::1', '/nikhilappadmin/addimages.php'),
(99, 'ashok@ask2new.com', '2016-09-13 10:22:09', 'Add Image', '', '::1', '/nikhilappadmin/addimages.php'),
(100, 'ashok@ask2new.com', '2016-09-13 10:22:59', 'img_id Delete', '2', '::1', '/nikhilappadmin/addimages.php?del=2'),
(101, 'ashok@ask2new.com', '2016-09-13 10:23:05', 'img_id Delete', '1', '::1', '/nikhilappadmin/addimages.php?del=1'),
(102, 'ashok@ask2new.com', '2016-09-13 10:23:18', 'Add Image', '', '::1', '/nikhilappadmin/addimages.php'),
(103, 'ashok@ask2new.com', '2016-09-13 10:28:34', 'Update  Image', '', '::1', '/nikhilappadmin/addimages.php?id=3'),
(104, 'ashok@ask2new.com', '2016-09-13 10:29:12', 'Update  Image', '', '::1', '/nikhilappadmin/addimages.php?id=3'),
(105, 'ashok@ask2new.com', '2016-09-13 11:24:58', 'Update  Image', '', '::1', '/nikhilappadmin/addimages.php?id=3'),
(106, 'ashok@ask2new.com', '2016-09-13 11:26:33', 'Update  Image', '', '::1', '/nikhilappadmin/addimages.php?id=3'),
(107, 'ashok@ask2new.com', '2016-09-13 11:27:16', 'Add Image', '', '::1', '/nikhilappadmin/addimages.php'),
(108, 'ashok@ask2new.com', '2016-09-13 11:30:50', 'Update Sub categories', 'dfgtrrwewewqe', '::1', '/nikhilappadmin/addsubservices.php?id=1'),
(109, 'ashok@ask2new.com', '2016-09-13 11:34:29', 'Add sub_services_name', 'gfgfh', '::1', '/nikhilappadmin/addsubservices.php'),
(110, 'ashok@ask2new.com', '2016-09-24 20:03:12', 'Login', '', '::1', '/nikhilappadmin/index.php'),
(111, 'ashok@ask2new.com', '2016-09-26 13:15:36', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(112, 'ashok@ask2new.com', '2016-09-26 13:19:34', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(113, 'ashok@ask2new.com', '2016-10-21 16:03:27', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(114, 'ashok@ask2new.com', '2016-10-22 14:39:20', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(115, 'ashok@ask2new.com', '2016-10-22 14:49:59', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addimages.php?id=4'),
(116, 'ashok@ask2new.com', '2016-10-22 14:50:18', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addimages.php'),
(117, 'ashok@ask2new.com', '2016-10-22 14:50:32', 'img_id Delete', '3', '::1', '/priankasahani.com/webadmin/addimages.php?del=3'),
(118, 'ashok@ask2new.com', '2016-10-22 15:07:56', 'categories regi id', '1', '::1', '/priankasahani.com/webadmin/bridelist.php?del=1'),
(119, 'ashok@ask2new.com', '2016-10-22 15:08:39', 'categories regi id', '1', '::1', '/priankasahani.com/webadmin/registerlist.php?del=1'),
(120, 'ashok@ask2new.com', '2016-10-22 15:11:04', 'img_id Delete', '4', '::1', '/priankasahani.com/webadmin/addimages.php?del=4'),
(121, 'ashok@ask2new.com', '2016-10-22 18:47:19', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollections.php?id=5'),
(122, 'ashok@ask2new.com', '2016-10-22 18:47:34', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollections.php'),
(123, 'ashok@ask2new.com', '2016-10-22 18:48:24', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollections.php'),
(124, 'ashok@ask2new.com', '2016-10-22 19:08:43', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(125, 'ashok@ask2new.com', '2016-10-22 19:12:15', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php?id=1'),
(126, 'ashok@ask2new.com', '2016-10-22 19:12:29', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php?id=1'),
(127, 'ashok@ask2new.com', '2016-10-23 05:46:44', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(128, 'ashok@ask2new.com', '2016-10-23 05:52:59', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addimages.php?id=6'),
(129, 'ashok@ask2new.com', '2016-10-23 05:57:01', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollections.php?id=5'),
(130, 'ashok@ask2new.com', '2016-10-23 06:00:47', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(131, 'ashok@ask2new.com', '2016-10-23 06:01:52', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(132, 'ashok@ask2new.com', '2016-10-24 06:02:13', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(133, 'ashok@ask2new.com', '2016-10-24 06:03:43', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(134, 'ashok@ask2new.com', '2016-10-24 06:04:04', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(135, 'ashok@ask2new.com', '2016-10-24 06:04:58', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php?id=3'),
(136, 'ashok@ask2new.com', '2016-10-24 06:05:23', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php?id=1'),
(137, 'ashok@ask2new.com', '2016-10-24 06:05:41', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php?id=2'),
(138, 'ashok@ask2new.com', '2016-10-26 19:46:17', 'Login', '', '::1', '/priankasahani.com/webadmin/index.php'),
(139, 'ashok@ask2new.com', '2016-10-26 19:48:50', 'img_id Delete', '6', '::1', '/priankasahani.com/webadmin/addcollections.php?del=6'),
(140, 'ashok@ask2new.com', '2016-10-26 19:49:10', 'img_id Delete', '5', '::1', '/priankasahani.com/webadmin/addcollections.php?del=5'),
(141, 'ashok@ask2new.com', '2016-10-26 19:52:17', 'Update  Image', '', '::1', '/priankasahani.com/webadmin/addimages.php?id=6'),
(142, 'ashok@ask2new.com', '2016-10-26 19:54:14', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollections.php'),
(143, 'ashok@ask2new.com', '2016-10-26 19:55:35', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(144, 'ashok@ask2new.com', '2016-10-26 19:55:50', 'Add Image', '', '::1', '/priankasahani.com/webadmin/addcollectionsimages.php'),
(145, 'ashok@ask2new.com', '2016-11-11 17:24:33', 'img_id Delete', '6', '::1', '/leva/levaadmin/addimages.php?del=6'),
(146, 'ashok@ask2new.com', '2016-11-11 17:24:54', 'Update  Image', '', '::1', '/leva/levaadmin/addimages.php?id=5'),
(147, 'ashok@ask2new.com', '2016-11-11 17:29:52', 'Add Image', '', '::1', '/leva/levaadmin/addactivity.php'),
(148, 'ashok@ask2new.com', '2016-11-11 17:30:10', 'Update  Image', '', '::1', '/leva/levaadmin/addactivity.php?id=8'),
(149, 'ashok@ask2new.com', '2016-11-11 17:30:19', 'img_id Delete', '7', '::1', '/leva/levaadmin/addactivity.php?del=7'),
(150, 'ashok@ask2new.com', '2016-11-11 17:36:01', 'Add Image', '', '::1', '/leva/levaadmin/addactivityimages.php'),
(151, 'ashok@ask2new.com', '2016-11-11 17:36:34', 'Update  Image', '', '::1', '/leva/levaadmin/addactivityimages.php?id=8'),
(152, 'ashok@ask2new.com', '2016-11-11 17:37:52', 'Add Image', '', '::1', '/leva/levaadmin/addactivityimages.php'),
(153, 'ashok@ask2new.com', '2016-11-11 17:38:10', 'img_id Delete', '8', '::1', '/leva/levaadmin/addactivityimages.php?del=8'),
(154, 'ashok@ask2new.com', '2016-11-11 18:13:40', 'Update  Image', 'asd', '::1', '/leva/levaadmin/addyear.php?id=1'),
(155, 'ashok@ask2new.com', '2016-11-11 18:13:56', 'Add Image', 'dsfdsf', '::1', '/leva/levaadmin/addyear.php'),
(156, 'ashok@ask2new.com', '2016-11-11 18:14:13', 'Update  Image', 'dsfdsf dsfsdf', '::1', '/leva/levaadmin/addyear.php?id=2'),
(157, 'ashok@ask2new.com', '2016-11-11 18:14:21', 'img_id Delete', '2', '::1', '/leva/levaadmin/addyear.php?del=2'),
(158, 'ashok@ask2new.com', '2016-11-11 18:29:55', 'Add Image', '', '::1', '/leva/levaadmin/addmemberinfo.php'),
(159, 'ashok@ask2new.com', '2016-11-11 18:31:58', 'Add Image', '', '::1', '/leva/levaadmin/addmemberinfo.php'),
(160, 'ashok@ask2new.com', '2016-11-11 18:32:47', 'Update  Image', 'sdfsdf', '::1', '/leva/levaadmin/addmemberinfo.php?id=2'),
(161, 'ashok@ask2new.com', '2016-11-11 18:32:59', 'Update  Image', 'werewr', '::1', '/leva/levaadmin/addmemberinfo.php?id=1'),
(162, 'ashok@ask2new.com', '2016-11-12 08:31:42', 'Login', '', '::1', '/leva/levaadmin/index.php'),
(163, 'ashok@ask2new.com', '2016-11-12 08:32:04', 'img_id Delete', '1', '::1', '/leva/levaadmin/addyear.php?del=1'),
(164, 'ashok@ask2new.com', '2016-11-12 08:33:16', 'Add Image', 'LPPA Member 2016-17', '::1', '/leva/levaadmin/addyear.php'),
(165, 'ashok@ask2new.com', '2016-11-12 08:36:55', 'Add Image', '', '::1', '/leva/levaadmin/addmemberinfo.php'),
(166, 'ashok@ask2new.com', '2016-11-12 08:37:05', 'Update  Image', 'Attarde Prabhakar Sukha', '::1', '/leva/levaadmin/addmemberinfo.php?id=3'),
(167, 'ashok@ask2new.com', '2016-11-12 09:01:21', 'Add Image', '', '::1', '/leva/levaadmin/addmemberinfo.php'),
(168, 'ashok@ask2new.com', '2016-11-12 11:03:18', 'Add Image', '', '::1', '/leva/levaadmin/addimages.php'),
(169, 'ashok@ask2new.com', '2016-11-12 11:25:46', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(170, 'ashok@ask2new.com', '2016-11-12 11:26:35', 'Update  Image', 'sdfdsf', '::1', '/leva/levaadmin/addimageadd.php?id=1'),
(171, 'ashok@ask2new.com', '2016-11-12 11:26:45', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(172, 'ashok@ask2new.com', '2016-11-13 15:43:51', 'Login', '', '::1', '/leva/levaadmin/index.php'),
(173, 'ashok@ask2new.com', '2016-11-13 15:44:18', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(174, 'ashok@ask2new.com', '2016-11-13 15:44:31', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(175, 'ashok@ask2new.com', '2016-11-13 15:44:42', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(176, 'ashok@ask2new.com', '2016-11-13 15:45:00', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(177, 'ashok@ask2new.com', '2016-11-13 15:45:13', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(178, 'ashok@ask2new.com', '2016-11-13 15:50:05', 'Add Image', '', '::1', '/leva/levaadmin/addimageadd.php'),
(179, 'ashok@ask2new.com', '2016-12-05 05:55:28', 'Login', '', '::1', '/leva/levaadmin/index.php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account_master`
--
ALTER TABLE `admin_account_master`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contactus_lists`
--
ALTER TABLE `contactus_lists`
  ADD PRIMARY KEY (`empl_id`);

--
-- Indexes for table `logs_master`
--
ALTER TABLE `logs_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account_master`
--
ALTER TABLE `admin_account_master`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contactus_lists`
--
ALTER TABLE `contactus_lists`
  MODIFY `empl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs_master`
--
ALTER TABLE `logs_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
