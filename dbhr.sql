-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2016 at 05:01 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbhr`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE IF NOT EXISTS `accounting` (
  `acctant` int(11) NOT NULL,
  `name_stat_acc` varchar(128) NOT NULL,
  PRIMARY KEY (`acctant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`acctant`, `name_stat_acc`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `approve_hr`
--

CREATE TABLE IF NOT EXISTS `approve_hr` (
  `hr_approve` int(11) NOT NULL,
  `name_stat` varchar(128) NOT NULL,
  PRIMARY KEY (`hr_approve`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approve_hr`
--

INSERT INTO `approve_hr` (`hr_approve`, `name_stat`) VALUES
(1, 'Pending'),
(2, 'Certified'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `approve_status`
--

CREATE TABLE IF NOT EXISTS `approve_status` (
  `id` int(11) NOT NULL,
  `name_stat` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approve_status`
--

INSERT INTO `approve_status` (`id`, `name_stat`) VALUES
(1, 'Pending'),
(2, 'Approve'),
(3, 'Disapprove');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE IF NOT EXISTS `contract` (
  `id_cont` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cont_date` date NOT NULL,
  `cont_stat` int(2) NOT NULL,
  PRIMARY KEY (`id_cont`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id_cont`, `emp_id`, `start_date`, `end_date`, `cont_date`, `cont_stat`) VALUES
(1, 21, '2016-02-09', '2016-03-09', '2016-02-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE IF NOT EXISTS `dean` (
  `id_dean` int(11) NOT NULL AUTO_INCREMENT,
  `id_dept` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `department` varchar(128) NOT NULL,
  PRIMARY KEY (`id_dean`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`id_dean`, `id_dept`, `emp_id`, `department`) VALUES
(1, 1, 10, 'SECS'),
(2, 5, 8, 'Basic ED');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id_dept` int(11) NOT NULL,
  `depart_name` varchar(128) NOT NULL,
  `emp_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id_dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id_dept`, `depart_name`, `emp_id`) VALUES
(1, 'SECS', '4'),
(2, 'HM', '21'),
(3, 'SMEAS', '10'),
(4, 'SBA', '22'),
(5, 'Basic ED', '9');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(100) NOT NULL AUTO_INCREMENT,
  `id_emp` varchar(128) NOT NULL,
  `emp_fname` varchar(128) NOT NULL,
  `emp_lname` varchar(128) NOT NULL,
  `emp_mname` varchar(128) NOT NULL,
  `emp_bday` varchar(128) NOT NULL,
  `emp_age` int(11) NOT NULL,
  `emp_gen` varchar(128) NOT NULL,
  `emp_add` varchar(128) NOT NULL,
  `emp_stat` varchar(128) NOT NULL,
  `emp_cont` varchar(11) NOT NULL,
  `sss` int(10) NOT NULL,
  `pagibig` int(12) NOT NULL,
  `philhealth` int(12) NOT NULL,
  `tin` varchar(13) NOT NULL,
  `email` varchar(128) NOT NULL,
  `emp_pos` varchar(128) NOT NULL,
  `id_pos` int(11) NOT NULL,
  `id_dept` int(11) NOT NULL,
  `addedby` varchar(128) NOT NULL,
  `emp_date` date NOT NULL,
  `stat` int(2) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `id_emp`, `emp_fname`, `emp_lname`, `emp_mname`, `emp_bday`, `emp_age`, `emp_gen`, `emp_add`, `emp_stat`, `emp_cont`, `sss`, `pagibig`, `philhealth`, `tin`, `email`, `emp_pos`, `id_pos`, `id_dept`, `addedby`, `emp_date`, `stat`) VALUES
(4, '123', 'Frank', 'Muchiri', 'Kim', 'April-7-1994', 182937592, 'male', '543 Langata', 'Married', '2147483647', 1234567890, 12332323, 1543, '123456789012b', 'frankzkhie@gmail.com', 'Program Head', 1, 1, 'Trojan Horse', '2016-01-19', 1),
(8, 'c-110', 'Kanana', 'Mary', 'Doreen', 'July-19-1972', 232389745, 'Female', 'Meru', 'Widow', '09873535343', 94394592, 2948922, 438397, '028-429-4829', 'haha@yahoo.com', 'Program Head', 1, 5, 'Trojan Horse', '2016-02-08', 1),
(9, 'C11-0022', 'Oluch', 'Jaduong', 'Mwach', 'December-12-1993', 12979324, 'Male', 'Kisumu Dala', 'Single', '09498583177', 437657868, 231423235, 12423, '212112112121', 'Kisom@dala.city', 'Staff', 1, 5, 'Hacker man', '2016-02-08', 1),
(10, '1234', 'vincent', 'gallendo', 'gwapo', 'February-1-1971', 542235235, 'Male', '242 Moi avenue', 'Widower', '09878676', 87866700, 8977234, 90324, '08970-786', 'wtw@fun.campus', 'Programmer', 2, 1, 'Hacker Man', '2016-02-08', 1),
(11, '23', 'huddah', 'Monroe', 'Dani', 'March-7-1972', 56437456, 'Female', '323 Kileleshwa', 'Married', '09079666', 66699, 88674, 80909, '0808090', 'huddah@beauty.wee', 'Secretary', 2, 1, 'Joseph John', '2016-02-08', 1),
(21, 'c11-2507', 'Jamaa', 'Ingine', 'Hapo', 'September-25-1993', 212325, 'Male', 'Shimo la Tewa', 'Married', '09219590720', 1234567890, 12332323, 1543, '123456789012b', 'jamaa@windows.os', 'Program Head', 2, 2, 'Joseph John', '2016-02-08', 1),
(22, 'CID 213', 'James', 'Yule', 'Msee', 'February-10-1978', 2324523, 'Male', '363 Rongai', 'Married', '09723452354', 453454, 36346, 34566, '34632', 'jaymo@gone.mo', 'Administrative', 2, 4, ' Joseph John ', '2016-04-13', 1),
(24, 'TOD 123', 'Mr', 'lecturer', 'Mageto', 'February-16-1974', 10000, 'Male', '56465', 'Married', '1234345', 453454, 36346, 34566, '34632', 'me@gma.com', 'Administrative', 2, 2, ' Joseph John ', '2016-04-14', 1),
(25, 'KUD123', 'hope', 'don', 'kan', 'March-11-1989', 2344235, 'Male', '563323', 'Married', '344433', 34254325, 4335436, 345345, '343456', 'kanu@gmail.com', 'Staff', 2, 4, ' Joseph John ', '2016-04-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `executive`
--

CREATE TABLE IF NOT EXISTS `executive` (
  `exe_vp` int(11) NOT NULL,
  `name_stat_exe` varchar(128) NOT NULL,
  PRIMARY KEY (`exe_vp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `executive`
--

INSERT INTO `executive` (`exe_vp`, `name_stat_exe`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE IF NOT EXISTS `finance` (
  `vp_finance` int(11) NOT NULL AUTO_INCREMENT,
  `name_stat_fnce` varchar(128) NOT NULL,
  PRIMARY KEY (`vp_finance`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`vp_finance`, `name_stat_fnce`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `ldays`
--

CREATE TABLE IF NOT EXISTS `ldays` (
  `id_pos` mediumint(10) NOT NULL AUTO_INCREMENT,
  `pos_stat` varchar(20) NOT NULL,
  `adays` int(10) NOT NULL,
  PRIMARY KEY (`id_pos`),
  KEY `posid` (`pos_stat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ldays`
--

INSERT INTO `ldays` (`id_pos`, `pos_stat`, `adays`) VALUES
(1, 'Permanent', 15),
(2, 'Provisionary', 15);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE IF NOT EXISTS `leaves` (
  `leaveid` int(100) NOT NULL AUTO_INCREMENT,
  `emp_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `leavetype` char(100) NOT NULL,
  `edate` date NOT NULL,
  `endate` date NOT NULL,
  `no_days` int(10) NOT NULL,
  `hr_approve` int(5) NOT NULL,
  `prog_head` int(5) NOT NULL,
  `vp_operation` int(5) NOT NULL,
  `exe_vp` int(5) NOT NULL,
  `sl_stat` int(2) NOT NULL,
  PRIMARY KEY (`leaveid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`leaveid`, `emp_id`, `date`, `leavetype`, `edate`, `endate`, `no_days`, `hr_approve`, `prog_head`, `vp_operation`, `exe_vp`, `sl_stat`) VALUES
(1, 4, '2016-02-12', 'Sick Leave', '2016-02-12', '2016-02-16', 4, 1, 1, 1, 1, 0),
(2, 8, '2016-02-13', 'Sick Leave', '2016-02-13', '2016-02-15', 2, 1, 1, 1, 1, 0),
(3, 21, '2016-02-20', 'Sick Leave', '2016-02-19', '2016-02-20', 1, 1, 1, 1, 1, 0),
(4, 23, '2016-04-14', 'Sick Leave', '2016-04-05', '2016-04-13', 8, 1, 1, 1, 1, 0),
(5, 24, '2016-04-14', 'Sick Leave', '2016-04-05', '2016-04-11', 6, 2, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `LEVEL` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `FirstName`, `LastName`, `LEVEL`) VALUES
(1, 'admin', 'admin', 'Joseph', 'John', 1),
(2, 'operation', '123', 'James', 'Hack', 2),
(3, 'executive', '123', 'Hack', 'Man', 3),
(4, 'acc', 'acc', 'Troden', 'Pact', 4),
(5, 'finance', 'finance', 'May', 'Weather', 5),
(6, 'acad', 'acad', 'Trojan', 'Horse', 6);

-- --------------------------------------------------------

--
-- Table structure for table `program_head`
--

CREATE TABLE IF NOT EXISTS `program_head` (
  `prog_head` int(11) NOT NULL,
  `name_stat_prog` varchar(128) NOT NULL,
  PRIMARY KEY (`prog_head`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_head`
--

INSERT INTO `program_head` (`prog_head`, `name_stat_prog`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `travel_ordr`
--

CREATE TABLE IF NOT EXISTS `travel_ordr` (
  `to_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `to_venue` varchar(128) NOT NULL,
  `to_host` varchar(128) NOT NULL,
  `to_activ` varchar(128) NOT NULL,
  `to_etd` date NOT NULL,
  `to_eta` date NOT NULL,
  `to_trans` varchar(128) NOT NULL,
  `to_regis` int(128) NOT NULL,
  `to_bal` int(128) NOT NULL,
  `to_total` int(128) NOT NULL,
  `acctant` int(11) NOT NULL,
  `prog_head` int(11) NOT NULL,
  `vp_finance` int(11) NOT NULL,
  `vp_acad` int(11) NOT NULL,
  `vp_operation` int(11) NOT NULL,
  `exe_vp` int(11) NOT NULL,
  `to_stat` int(2) NOT NULL,
  PRIMARY KEY (`to_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `travel_ordr`
--

INSERT INTO `travel_ordr` (`to_id`, `emp_id`, `date`, `to_venue`, `to_host`, `to_activ`, `to_etd`, `to_eta`, `to_trans`, `to_regis`, `to_bal`, `to_total`, `acctant`, `prog_head`, `vp_finance`, `vp_acad`, `vp_operation`, `exe_vp`, `to_stat`) VALUES
(1, 4, '2016-02-09', 'South City', 'LCC', 'IT Programming', '0000-00-00', '2016-02-11', '10000', 10000, 10000, 30000, 2, 1, 1, 1, 1, 1, 0),
(2, 9, '2016-07-09', 'Dumage City', 'City Government', 'Kalinga', '2016-07-25', '2016-07-29', '3000', 1500, 5000, 9500, 3, 1, 1, 1, 1, 1, 0),
(3, 24, '2016-04-14', 'mombasa', 'top', 'benchmark', '2016-06-12', '2016-04-12', '500', 600, 5000, 6100, 2, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `id`) VALUES
(1, 'admin', '2016-03-28 20:11:29', '2016-04-14 18:53:50', 1),
(2, 'acc', '2016-03-28 20:25:07', '2016-04-14 05:32:34', 4),
(3, 'admin', '2016-03-28 21:01:10', '2016-04-14 18:53:50', 1),
(4, 'acc', '2016-03-28 21:12:15', '2016-04-14 05:32:34', 4),
(5, 'admin', '2016-03-28 21:27:50', '2016-04-14 18:53:50', 1),
(6, 'admin', '2016-03-28 21:32:45', '2016-04-14 18:53:50', 1),
(7, 'acc', '2016-03-28 21:44:55', '2016-04-14 05:32:34', 4),
(8, 'admin', '2016-03-28 22:32:00', '2016-04-14 18:53:50', 1),
(9, 'admin', '2016-03-28 22:41:42', '2016-04-14 18:53:50', 1),
(10, 'acad', '2016-03-28 22:46:47', '2016-04-14 05:59:33', 6),
(11, 'admin', '2016-03-28 22:50:02', '2016-04-14 18:53:50', 1),
(12, 'admin', '2016-03-28 22:52:48', '2016-04-14 18:53:50', 1),
(13, 'admin', '2016-03-28 22:56:11', '2016-04-14 18:53:50', 1),
(14, 'acad', '2016-03-28 23:25:33', '2016-04-14 05:59:33', 6),
(15, 'admin', '2016-03-28 23:30:14', '2016-04-14 18:53:50', 1),
(16, 'acad', '2016-03-28 23:36:15', '2016-04-14 05:59:33', 6),
(17, 'admin', '2016-03-28 23:51:45', '2016-04-14 18:53:50', 1),
(18, 'acad', '2016-03-29 00:10:57', '2016-04-14 05:59:33', 6),
(19, 'executive', '2016-03-29 00:22:54', '2016-04-14 07:34:48', 3),
(20, 'finance', '2016-03-29 01:24:33', '2016-04-14 05:37:58', 5),
(21, 'operation', '2016-03-29 01:54:09', '2016-04-14 05:34:32', 2),
(22, 'executive', '2016-03-29 02:00:05', '2016-04-14 07:34:48', 3),
(23, 'admin', '2016-03-29 02:00:54', '2016-04-14 18:53:50', 1),
(24, 'operation', '2016-03-29 02:07:33', '2016-04-14 05:34:32', 2),
(25, 'admin', '2016-03-29 02:17:16', '2016-04-14 18:53:50', 1),
(26, 'executive', '2016-03-29 02:32:46', '2016-04-14 07:34:48', 3),
(27, 'admin', '2016-03-29 13:01:34', '2016-04-14 18:53:50', 1),
(28, 'executive', '2016-03-29 13:01:58', '2016-04-14 07:34:48', 3),
(29, 'admin', '2016-03-29 13:04:49', '2016-04-14 18:53:50', 1),
(30, 'executive', '2016-03-29 13:05:02', '2016-04-14 07:34:48', 3),
(31, 'admin', '2015-03-29 16:53:59', '2016-04-14 18:53:50', 1),
(32, 'admin', '2015-03-29 17:10:58', '2016-04-14 18:53:50', 1),
(33, 'admin', '2015-03-29 17:24:54', '2016-04-14 18:53:50', 1),
(34, 'acc', '2015-03-29 20:28:45', '2016-04-14 05:32:34', 4),
(35, 'admin', '2015-03-29 20:32:21', '2016-04-14 18:53:50', 1),
(36, 'admin', '2015-03-29 20:33:37', '2016-04-14 18:53:50', 1),
(37, 'admin', '2015-03-29 20:34:49', '2016-04-14 18:53:50', 1),
(38, 'admin', '2015-03-29 20:37:31', '2016-04-14 18:53:50', 1),
(39, 'admin', '2015-03-30 01:38:22', '2016-04-14 18:53:50', 1),
(40, 'acc', '2015-03-30 02:03:57', '2016-04-14 05:32:34', 4),
(41, 'acad', '2015-03-30 02:31:15', '2016-04-14 05:59:33', 6),
(42, 'operation', '2015-03-30 02:32:41', '2016-04-14 05:34:32', 2),
(43, 'finance', '2015-03-30 02:40:58', '2016-04-14 05:37:58', 5),
(44, 'executive', '2015-03-30 02:43:38', '2016-04-14 07:34:48', 3),
(45, 'admin', '2015-02-01 11:01:32', '2016-04-14 18:53:50', 1),
(46, 'Admin', '2015-02-01 11:49:04', '2016-04-14 18:53:50', 1),
(47, 'admin', '2015-02-01 12:22:58', '2016-04-14 18:53:50', 1),
(48, 'admin', '2015-02-01 12:34:44', '2016-04-14 18:53:50', 1),
(49, 'admin', '2015-02-02 09:14:07', '2016-04-14 18:53:50', 1),
(50, 'admin', '2015-02-02 10:32:58', '2016-04-14 18:53:50', 1),
(51, 'admin', '2015-02-02 10:36:51', '2016-04-14 18:53:50', 1),
(52, 'admin', '2015-02-02 10:41:26', '2016-04-14 18:53:50', 1),
(53, 'executive', '2015-02-02 10:45:19', '2016-04-14 07:34:48', 3),
(54, 'admin', '2015-02-02 10:46:31', '2016-04-14 18:53:50', 1),
(55, 'admin', '2015-02-02 11:08:14', '2016-04-14 18:53:50', 1),
(56, 'admin', '2015-02-02 11:17:04', '2016-04-14 18:53:50', 1),
(57, 'finance', '2015-02-02 20:59:17', '2016-04-14 05:37:58', 5),
(58, 'operation', '2015-02-02 21:04:14', '2016-04-14 05:34:32', 2),
(59, 'admin', '2015-02-03 17:37:21', '2016-04-14 18:53:50', 1),
(60, 'operation', '2015-02-03 20:56:34', '2016-04-14 05:34:32', 2),
(61, 'admin', '2015-02-04 03:23:27', '2016-04-14 18:53:50', 1),
(62, 'admin', '2015-02-04 13:31:18', '2016-04-14 18:53:50', 1),
(63, 'admin', '2015-02-04 20:11:24', '2016-04-14 18:53:50', 1),
(64, 'admin', '2015-02-05 10:18:56', '2016-04-14 18:53:50', 1),
(65, 'admin', '2015-02-06 01:06:18', '2016-04-14 18:53:50', 1),
(66, 'admin', '2015-02-06 09:38:55', '2016-04-14 18:53:50', 1),
(67, 'admin', '2015-02-06 15:46:39', '2016-04-14 18:53:50', 1),
(68, 'admin', '2015-02-07 05:06:04', '2016-04-14 18:53:50', 1),
(69, 'admin', '2015-02-07 05:47:58', '2016-04-14 18:53:50', 1),
(70, 'admin', '2015-02-07 19:03:13', '2016-04-14 18:53:50', 1),
(71, 'executive', '2015-02-07 19:18:23', '2016-04-14 07:34:48', 3),
(72, 'admin', '2015-02-07 19:55:10', '2016-04-14 18:53:50', 1),
(73, 'admin', '2015-02-07 22:02:33', '2016-04-14 18:53:50', 1),
(74, 'admin', '2015-02-07 22:05:45', '2016-04-14 18:53:50', 1),
(75, 'admin', '2015-02-08 10:53:59', '2016-04-14 18:53:50', 1),
(76, 'executive', '2015-02-08 11:01:54', '2016-04-14 07:34:48', 3),
(77, 'admin', '2015-02-08 11:11:25', '2016-04-14 18:53:50', 1),
(78, 'admin', '2015-02-08 12:03:57', '2016-04-14 18:53:50', 1),
(79, 'admin', '2015-02-08 13:54:48', '2016-04-14 18:53:50', 1),
(80, 'admin', '2015-02-08 16:25:12', '2016-04-14 18:53:50', 1),
(81, 'acc', '2015-02-08 17:25:28', '2016-04-14 05:32:34', 4),
(82, 'finance', '2015-02-08 18:21:19', '2016-04-14 05:37:58', 5),
(83, 'acc', '2015-02-08 18:26:28', '2016-04-14 05:32:34', 4),
(84, 'admin', '2015-02-08 18:33:39', '2016-04-14 18:53:50', 1),
(85, 'finance', '2015-02-08 18:37:01', '2016-04-14 05:37:58', 5),
(86, 'acc', '2015-02-08 18:37:49', '2016-04-14 05:32:34', 4),
(87, 'finance', '2015-02-08 18:46:12', '2016-04-14 05:37:58', 5),
(88, 'acad', '2015-02-08 19:00:16', '2016-04-14 05:59:33', 6),
(89, 'acad', '2015-02-08 19:25:56', '2016-04-14 05:59:33', 6),
(90, 'executive', '2015-02-08 20:10:59', '2016-04-14 07:34:48', 3),
(91, 'operation', '2015-02-08 20:17:33', '2016-04-14 05:34:32', 2),
(92, 'operation', '2015-02-08 22:23:17', '2016-04-14 05:34:32', 2),
(93, 'admin', '2015-02-09 10:21:24', '2016-04-14 18:53:50', 1),
(94, 'executive', '2015-02-09 10:37:05', '2016-04-14 07:34:48', 3),
(95, 'operation', '2015-02-09 10:45:57', '2016-04-14 05:34:32', 2),
(96, 'executive', '2015-02-09 10:52:33', '2016-04-14 07:34:48', 3),
(97, 'executive', '2015-02-09 10:54:51', '2016-04-14 07:34:48', 3),
(98, 'admin', '2015-02-09 14:30:04', '2016-04-14 18:53:50', 1),
(99, 'admin', '2015-02-09 22:05:25', '2016-04-14 18:53:50', 1),
(100, 'admin', '2015-02-10 03:58:17', '2016-04-14 18:53:50', 1),
(101, 'operation', '2015-02-10 04:00:20', '2016-04-14 05:34:32', 2),
(102, 'executive', '2015-02-10 04:00:54', '2016-04-14 07:34:48', 3),
(103, 'admin', '2015-02-10 08:57:42', '2016-04-14 18:53:50', 1),
(104, 'admin', '2015-02-10 09:07:24', '2016-04-14 18:53:50', 1),
(105, 'admin', '2015-02-10 17:54:15', '2016-04-14 18:53:50', 1),
(106, 'admin', '2015-02-11 08:38:22', '2016-04-14 18:53:50', 1),
(107, 'executive', '2015-02-11 09:34:29', '2016-04-14 07:34:48', 3),
(108, 'operation', '2015-02-11 12:15:58', '2016-04-14 05:34:32', 2),
(109, 'executive', '2015-02-11 12:26:29', '2016-04-14 07:34:48', 3),
(110, 'admin', '2015-02-11 12:38:08', '2016-04-14 18:53:50', 1),
(111, 'admin', '2015-02-12 14:20:27', '2016-04-14 18:53:50', 1),
(112, 'executive', '2015-02-12 14:30:16', '2016-04-14 07:34:48', 3),
(113, 'operation', '2015-02-12 14:31:56', '2016-04-14 05:34:32', 2),
(114, 'executive', '2015-02-12 14:33:23', '2016-04-14 07:34:48', 3),
(115, 'operation', '2015-02-12 14:38:21', '2016-04-14 05:34:32', 2),
(116, 'operation', '2015-02-12 20:20:53', '2016-04-14 05:34:32', 2),
(117, 'executive', '2015-02-12 20:33:56', '2016-04-14 07:34:48', 3),
(118, 'operation', '2015-02-12 21:07:08', '2016-04-14 05:34:32', 2),
(119, 'operation', '2015-02-13 10:09:53', '2016-04-14 05:34:32', 2),
(120, 'admin', '2015-02-13 11:06:43', '2016-04-14 18:53:50', 1),
(121, 'executive', '2015-02-13 11:40:19', '2016-04-14 07:34:48', 3),
(122, 'admin', '2015-02-13 22:44:29', '2016-04-14 18:53:50', 1),
(123, 'admin', '2015-02-14 19:58:59', '2016-04-14 18:53:50', 1),
(124, 'admin', '2015-02-15 09:17:53', '2016-04-14 18:53:50', 1),
(125, 'operation', '2015-02-15 09:18:53', '2016-04-14 05:34:32', 2),
(126, 'executive', '2015-02-15 09:19:21', '2016-04-14 07:34:48', 3),
(127, 'admin', '2015-02-16 13:32:56', '2016-04-14 18:53:50', 1),
(128, 'admin', '2015-02-16 13:39:33', '2016-04-14 18:53:50', 1),
(129, 'admin', '2015-02-16 13:41:33', '2016-04-14 18:53:50', 1),
(130, 'admin', '2015-02-16 13:42:09', '2016-04-14 18:53:50', 1),
(131, 'admin', '2015-02-16 13:46:08', '2016-04-14 18:53:50', 1),
(132, 'admin', '2015-02-16 13:49:24', '2016-04-14 18:53:50', 1),
(133, 'executive', '2015-02-16 13:52:10', '2016-04-14 07:34:48', 3),
(134, 'operation', '2015-02-16 13:53:41', '2016-04-14 05:34:32', 2),
(135, 'admin', '2015-02-16 14:11:37', '2016-04-14 18:53:50', 1),
(136, 'admin', '2015-02-16 14:11:40', '2016-04-14 18:53:50', 1),
(137, 'admin', '2015-02-16 14:12:46', '2016-04-14 18:53:50', 1),
(138, 'operation', '2015-02-17 00:38:27', '2016-04-14 05:34:32', 2),
(139, 'executive', '2015-02-17 01:08:01', '2016-04-14 07:34:48', 3),
(140, 'acc', '2015-02-17 01:20:41', '2016-04-14 05:32:34', 4),
(141, 'admin', '2015-02-17 11:05:51', '2016-04-14 18:53:50', 1),
(142, 'admin', '2015-02-17 11:11:28', '2016-04-14 18:53:50', 1),
(143, 'admin', '2015-02-17 12:01:55', '2016-04-14 18:53:50', 1),
(144, 'admin', '2015-02-17 15:37:14', '2016-04-14 18:53:50', 1),
(145, 'admin', '2015-02-18 12:17:20', '2016-04-14 18:53:50', 1),
(146, 'executive', '2015-02-18 15:15:06', '2016-04-14 07:34:48', 3),
(147, 'admin', '2015-02-19 10:00:02', '2016-04-14 18:53:50', 1),
(148, 'operation', '2015-02-19 17:49:30', '2016-04-14 05:34:32', 2),
(149, 'executive', '2015-02-19 17:49:50', '2016-04-14 07:34:48', 3),
(150, 'operation', '2015-02-19 18:05:23', '2016-04-14 05:34:32', 2),
(151, 'acc', '2015-02-19 18:24:54', '2016-04-14 05:32:34', 4),
(152, 'executive', '2015-02-19 18:25:09', '2016-04-14 07:34:48', 3),
(153, 'finance', '2015-02-19 18:25:56', '2016-04-14 05:37:58', 5),
(154, 'acad', '2015-02-19 18:26:12', '2016-04-14 05:59:33', 6),
(155, 'admin', '2015-02-19 18:34:23', '2016-04-14 18:53:50', 1),
(156, 'admin', '2015-02-19 19:29:41', '2016-04-14 18:53:50', 1),
(157, 'admin', '2015-02-20 08:42:51', '2016-04-14 18:53:50', 1),
(158, 'acc', '2016-07-09 10:54:18', '2016-04-14 05:32:34', 4),
(159, 'admin', '2016-07-09 10:54:52', '2016-04-14 18:53:50', 1),
(160, 'finance', '2016-07-09 11:09:07', '2016-04-14 05:37:58', 5),
(161, 'acad', '2016-07-09 11:09:39', '2016-04-14 05:59:33', 6),
(162, 'operation', '2016-07-09 11:10:14', '2016-04-14 05:34:32', 2),
(163, 'executive', '2016-07-09 11:11:07', '2016-04-14 07:34:48', 3),
(164, 'acc', '2015-02-21 10:46:09', '2016-04-14 05:32:34', 4),
(165, 'admin', '2015-02-21 11:32:13', '2016-04-14 18:53:50', 1),
(166, 'operation', '2015-02-21 11:34:19', '2016-04-14 05:34:32', 2),
(167, 'executive', '2015-02-21 11:34:45', '2016-04-14 07:34:48', 3),
(168, 'admin', '2015-02-22 22:33:29', '2016-04-14 18:53:50', 1),
(169, 'executive', '2015-02-22 23:27:30', '2016-04-14 07:34:48', 3),
(170, 'admin', '2015-02-23 00:09:04', '2016-04-14 18:53:50', 1),
(171, 'admin', '2015-02-24 16:39:57', '2016-04-14 18:53:50', 1),
(172, 'admin', '2015-02-25 13:52:30', '2016-04-14 18:53:50', 1),
(173, 'admin', '2015-02-26 07:46:40', '2016-04-14 18:53:50', 1),
(174, 'admin', '2015-02-26 21:28:40', '2016-04-14 18:53:50', 1),
(175, 'admin', '2016-04-12 04:25:13', '2016-04-14 18:53:50', 1),
(176, 'executive', '2016-04-12 04:28:47', '2016-04-14 07:34:48', 3),
(177, 'finance', '2016-04-12 04:30:28', '2016-04-14 05:37:58', 5),
(178, 'acc', '2016-04-12 04:31:11', '2016-04-14 05:32:34', 4),
(179, 'acad', '2016-04-12 04:32:05', '2016-04-14 05:59:33', 6),
(180, 'admin', '2016-04-12 16:33:33', '2016-04-14 18:53:50', 1),
(181, 'operation', '2016-04-12 16:37:13', '2016-04-14 05:34:32', 2),
(182, 'admin', '2016-04-13 14:09:07', '2016-04-14 18:53:50', 1),
(183, 'acc', '2016-04-13 15:01:12', '2016-04-14 05:32:34', 4),
(184, 'acc', '2016-04-13 15:02:13', '2016-04-14 05:32:34', 4),
(185, 'acad', '2016-04-13 15:36:42', '2016-04-14 05:59:33', 6),
(186, 'acc', '2016-04-13 15:39:38', '2016-04-14 05:32:34', 4),
(187, 'executive', '2016-04-13 15:53:41', '2016-04-14 07:34:48', 3),
(188, 'admin', '2016-04-13 23:14:23', '2016-04-14 18:53:50', 1),
(189, 'acc', '2016-04-13 23:15:03', '2016-04-14 05:32:34', 4),
(190, 'admin', '2016-04-14 02:38:06', '2016-04-14 18:53:50', 1),
(191, 'admin', '2016-04-14 04:35:40', '2016-04-14 18:53:50', 1),
(192, 'admin', '2016-04-14 04:52:37', '2016-04-14 18:53:50', 1),
(193, 'admin', '2016-04-14 05:08:44', '2016-04-14 18:53:50', 1),
(194, 'acc', '2016-04-14 05:32:11', '2016-04-14 05:32:34', 4),
(195, 'executive', '2016-04-14 05:32:42', '2016-04-14 07:34:48', 3),
(196, 'operation', '2016-04-14 05:34:01', '2016-04-14 05:34:32', 2),
(197, 'finance', '2016-04-14 05:34:47', '2016-04-14 05:37:58', 5),
(198, 'acad', '2016-04-14 05:58:58', '2016-04-14 05:59:33', 6),
(199, 'admin', '2016-04-14 06:50:42', '2016-04-14 18:53:50', 1),
(200, 'admin', '2016-04-14 07:27:49', '2016-04-14 18:53:50', 1),
(201, 'admin', '2016-04-14 07:33:53', '2016-04-14 18:53:50', 1),
(202, 'executive', '2016-04-14 07:34:34', '2016-04-14 07:34:48', 3),
(203, 'admin', '2016-04-14 07:36:59', '2016-04-14 18:53:50', 1),
(204, 'executive', '2016-04-14 18:54:07', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vacation_credits`
--

CREATE TABLE IF NOT EXISTS `vacation_credits` (
  `vl_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(100) NOT NULL,
  `credits` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`vl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vacation_credits`
--

INSERT INTO `vacation_credits` (`vl_id`, `emp_id`, `credits`, `date`) VALUES
(11, 4, 15, '2016-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `vacation_log`
--

CREATE TABLE IF NOT EXISTS `vacation_log` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `vdate` date NOT NULL,
  `leavetype` varchar(128) NOT NULL,
  `sdate` date NOT NULL,
  `eddate` date NOT NULL,
  `nodays` int(11) NOT NULL,
  `hr_approve` int(11) NOT NULL,
  `prog_head` int(11) NOT NULL,
  `vp_operation` int(11) NOT NULL,
  `exe_vp` int(11) NOT NULL,
  `vl_stat` int(2) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vacation_log`
--

INSERT INTO `vacation_log` (`v_id`, `emp_id`, `vdate`, `leavetype`, `sdate`, `eddate`, `nodays`, `hr_approve`, `prog_head`, `vp_operation`, `exe_vp`, `vl_stat`) VALUES
(9, 4, '2016-02-21', 'Vacation Leave', '2016-02-20', '2016-02-21', 1, 1, 1, 1, 1, 0),
(10, 21, '2016-02-21', 'Vacation Leave', '2016-02-20', '2016-02-21', 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vp_academic`
--

CREATE TABLE IF NOT EXISTS `vp_academic` (
  `vp_acad` int(11) NOT NULL AUTO_INCREMENT,
  `name_stat_acad` varchar(128) NOT NULL,
  PRIMARY KEY (`vp_acad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vp_academic`
--

INSERT INTO `vp_academic` (`vp_acad`, `name_stat_acad`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Disapproved');

-- --------------------------------------------------------

--
-- Table structure for table `vp_oper`
--

CREATE TABLE IF NOT EXISTS `vp_oper` (
  `vp_operation` int(11) NOT NULL,
  `name_stat_oper` varchar(128) NOT NULL,
  PRIMARY KEY (`vp_operation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vp_oper`
--

INSERT INTO `vp_oper` (`vp_operation`, `name_stat_oper`) VALUES
(1, 'Pending'),
(2, 'Approved with Pay'),
(3, 'Approved without Pay'),
(4, 'Denied'),
(5, 'Approved');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
