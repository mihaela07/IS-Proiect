-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2016 at 10:30 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jthr_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userid` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `cellphone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userfunction` varchar(50) DEFAULT NULL,
  `rolelist` varchar(200) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `firstname`, `lastname`, `phone`, `cellphone`, `email`, `userfunction`, `rolelist`, `description`, `password`) VALUES
(1, 'cozmaa', 'alexandru', 'cozma', '12234555564', '56486456864', 'alex@cozma.com', 'administrator', 'admin stuff', 'dnawkdnwaodwa                               ', 'admin'),
(5, 'ghips', 'sabrina', 'ghip', '098765431', '0123456789', 'name@domain.com', 'administrator', 'admin', 'dmawd                            ', 'ghips2016'),
(6, 'bugnei', 'ioana', 'bugner', '7894563210', '0123456987', 'ioana@bugner.com', 'general director', 'directoring', 'does what a director does                            ', 'bugnei2016'),
(7, 'popesi', 'ioan', 'popescu', '0789456123', '0123456789', 'ioan@popescu.com', 'department director', 'boss', 'he is a pain in the ass                             \r\n                                 \r\n                                ', 'popesi2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
