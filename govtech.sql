-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2020 at 05:07 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

CREATE Database IF NOT EXISTS govtech;
use govtech;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `govtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
CREATE TABLE IF NOT EXISTS `relationship` (
  `teacher` varchar(128) NOT NULL,
  `student` varchar(128) NOT NULL,
  KEY `FK1_teacher` (`teacher`),
  KEY `FK2_student` (`student`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`teacher`, `student`) VALUES
('konteacher1@gmail.com', 'student1@gmail.com'),
('konteacher1@gmail.com', 'student2@gmail.com'),
('konteacher1@gmail.com', 'student3@gmail.com'),
('konteacher2@gmail.com', 'student3@gmail.com'),
('konteacher5@gmail.com', 'student4@gmail.com'),
('konteacher5@gmail.com', 'student3@gmail.com'),
('konteacher2@gmail.com', 'student4@gmail.com'),
('konteacher2@gmail.com', 'student5@gmail.com'),
('konteacher3@gmail.com', 'student4@gmail.com'),
('konteacher3@gmail.com', 'student3@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `email` varchar(128) NOT NULL,
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`email`, `suspended`) VALUES
('student1@gmail.com', 1),
('student2@gmail.com', 0),
('student3@gmail.com', 0),
('student4@gmail.com', 0),
('student5@gmail.com', 0),
('student6@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`email`) VALUES
('konteacher1@gmail.com'),
('konteacher2@gmail.com'),
('konteacher3@gmail.com'),
('konteacher4@gmail.com'),
('konteacher5@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `relationship`
--
ALTER TABLE `relationship`
  ADD CONSTRAINT `FK1_teacher` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`email`),
  ADD CONSTRAINT `FK2_student` FOREIGN KEY (`student`) REFERENCES `student` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
