-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2016 at 10:13 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jthr_admin`
--
CREATE DATABASE IF NOT EXISTS `jthr_admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jthr_admin`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `cellphone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userfunction` varchar(50) DEFAULT NULL,
  `rolelist` varchar(200) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `firstname`, `lastname`, `phone`, `cellphone`, `email`, `userfunction`, `rolelist`, `description`, `password`) VALUES
(1, 'cozmaa', 'alexandru', 'cozma', '0788994422', '0733665522', 'alex@cozma.com', 'viewer', 'admin stuff', 'add user, edit user, remove user', 'cozmaa2016'),
(5, 'ghips', 'sabrina', 'ghip', '0734778899', '0123456789', 'sabrina@domain.com', 'administrator', 'admin', 'add user, edit user, remove user', 'ghips2016'),
(6, 'bugnei', 'ioana', 'bugner', '7894563210', '0123456789', 'ioana@bugner.com', 'viewer', 'directoring', 'does what a director does', 'bugnei2016'),
(7, 'popesi', 'ioan', 'popescu', '0789456123', '0123456789', 'ioan@popescu.com', 'viewer', 'boss', 'he is a pain in the ass', 'popesi2016'),
(8, 'gheorv', 'vasile', 'gheorghe', '0123456789', '0123456789', 'vasi@gheo.com', 'h.r. director', 'neah', 'desc', 'gheorv2016'),
(14, 'vasilp', 'pop', 'vasile', '12345678923', '12345678911', 'n@v.com', 'viewer', 'viewer', 'viewer', 'vasilp2016');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
