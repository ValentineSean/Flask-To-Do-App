-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2020 at 08:28 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `techvillage`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE IF NOT EXISTS `todo` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `Text` varchar(200) DEFAULT NULL,
  `Complete` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`ID`, `Text`, `Complete`) VALUES
(2, 'Push To Do App on Github', 0),
(4, 'Bulid To Do app', 1),
(3, 'Styling To Do App', 1),
(5, 'Cook rice and meat', 1),
(6, 'Write SIMULATION assignment', 0),
(7, 'Write some Python Code', 1),
(8, 'Write some Python Code', 0),
(9, 'improve techlink prototype', 0),
(10, 'upload my stuff on github', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
