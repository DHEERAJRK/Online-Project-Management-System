-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2016 at 06:16 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onlineprojectmanagementsystem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `admin_id` varchar(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `admin_name`, `password`) VALUES
('1AD001', 'JAWAHAR', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE IF NOT EXISTS `circular` (
  `guide_id` varchar(10) NOT NULL,
  `circular_date` varchar(10) NOT NULL,
  `team_id` varchar(10) NOT NULL,
  `circular_description` varchar(100) NOT NULL,
  KEY `guide_id` (`guide_id`),
  KEY `team_id` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`guide_id`, `circular_date`, `team_id`, `circular_description`) VALUES
('1TIIS001', '08-04-2016', 'CS001', 'Do the databse Management System project well.\r\ngood luck!!!');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `student_id` varchar(10) NOT NULL,
  `comment_no` varchar(10) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL,
  PRIMARY KEY (`comment_no`),
  KEY `comment_no` (`comment_no`),
  KEY `comment_no_2` (`comment_no`),
  KEY `comment_no_3` (`comment_no`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` varchar(10) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `departmenthead_name` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`),
  KEY `department_id` (`department_id`),
  KEY `department_id_2` (`department_id`),
  KEY `department_id_3` (`department_id`),
  KEY `departmenthead_id` (`departmenthead_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `departmenthead_name`) VALUES
('CSE', 'Computer science Engineering', 'Dr.Kavi Mahesh'),
('ISE', 'Information science Engineering', 'Dr.Shylaja SS'),
('ME', 'Mechanical Engineering', 'D Jawahar');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE IF NOT EXISTS `guide` (
  `guide_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `guide_name` varchar(100) NOT NULL,
  `guide_rating` int(5) NOT NULL,
  `guide_mail` varchar(20) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  PRIMARY KEY (`guide_id`),
  KEY `guide_id` (`guide_id`),
  KEY `department_id` (`department_id`),
  KEY `guide_mail` (`guide_mail`),
  KEY `guide_id_2` (`guide_id`),
  KEY `guide_id_3` (`guide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`guide_id`, `password`, `guide_name`, `guide_rating`, `guide_mail`, `department_id`) VALUES
('1TICS001', 'chan', 'Channa Bankapur', 5, 'channa@gmail.com', 'CSE'),
('1TIIS001', 'sin', 'Sindhu', 5, 'sindhu@gmail.com', 'ISE'),
('1TIME001', 'sur', 'Suresh', 4, 'suresh@gmail.com', 'ME');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE IF NOT EXISTS `logindetails` (
  `login_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `login_type` varchar(10) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_id` varchar(10) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`project_id`),
  KEY `project_id` (`project_id`),
  KEY `department_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `technology`, `description`, `department_id`, `status`) VALUES
('PT001', 'FaceRecognition', 'LBPH', 'Find the faces of persons and recognize their faces', 'ISE', 'Completed'),
('PT002', 'WebDesigning', 'HTML', 'Creating pages using html ', 'ISE', 'Completed'),
('PT003', 'database manage', 'database management system', 'Database Management system', 'ISE', 'doing');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_mail` varchar(20) NOT NULL,
  `student_department` varchar(10) NOT NULL,
  `student_batch` varchar(10) NOT NULL,
  `guide_id` varchar(10) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_id` (`student_id`),
  KEY `student_id_2` (`student_id`),
  KEY `student_id_3` (`student_id`),
  KEY `student_id_4` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `password`, `student_name`, `student_mail`, `student_department`, `student_batch`, `guide_id`) VALUES
('1PI14CS001', 'CS001', 'KARTHIK', 'karthik@gmail.com', 'CSE', '2014', '1TICS001'),
('1PI14IS001', 'IS001', 'ANISH', 'anish@gmail.com', 'ISE', '2014', '1TIIS001');

-- --------------------------------------------------------

--
-- Table structure for table `studentteam`
--

CREATE TABLE IF NOT EXISTS `studentteam` (
  `student_id` varchar(10) NOT NULL,
  `team_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentteam`
--

INSERT INTO `studentteam` (`student_id`, `team_id`) VALUES
('1PI14IS001', 'IS001'),
('1PI14IS001', 'CS001');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `team_id` varchar(10) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `teamleader_id` varchar(10) NOT NULL,
  `project_id` varchar(10) NOT NULL,
  PRIMARY KEY (`team_id`),
  KEY `team_id` (`team_id`),
  KEY `team_id_2` (`team_id`),
  KEY `team_id_3` (`team_id`),
  KEY `project_id` (`project_id`),
  KEY `teamleader_id` (`teamleader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `teamleader_id`, `project_id`) VALUES
('CS001', 'Lions', '1PI14CS001', 'PT003');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `circular`
--
ALTER TABLE `circular`
  ADD CONSTRAINT `FK_cicular_guide` FOREIGN KEY (`guide_id`) REFERENCES `guide` (`guide_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_circular_team` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_comment_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `FK_guide_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_project_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `FK_project_team` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_team_student` FOREIGN KEY (`teamleader_id`) REFERENCES `student` (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
