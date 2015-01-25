-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2015 at 10:14 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vanilla`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` float(11,2) NOT NULL,
  `status` int(11) NOT NULL COMMENT 'status 0 available 1 not available',
  `qty` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `published` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `isdelete` int(11) NOT NULL DEFAULT '0' COMMENT '0 not delete 1 delete',
  `category` varchar(255) NOT NULL,
  `isbnew` int(11) NOT NULL COMMENT '0=brand new; 1=used book',
  `ispromo` int(11) NOT NULL COMMENT '0=nonpromo 1=promo',
  `format` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `description`, `author`, `price`, `status`, `qty`, `date_created`, `published`, `image_path`, `image_name`, `isdelete`, `category`, `isbnew`, `ispromo`, `format`) VALUES
(1, '9999999999999    ', 'Bakit hindi ka crush ng crush mo?    ', 'Bakit hindi ka crush ng crush mo? Ang aklat na ito ay kailangan mo sa buhay pagkatapos mong matugunan ang food, clothing, security at iba pang nasa pinaka-ibaba ng Maslow''s Hierarchy of Needs. Bago ka umibig, at para maabot ang self-actualization, magbasa-basa ka muna. Thank you.\r\n\r\n"Walang gamot sa katangahan. Prevention lang -- wag umibig <3" -Ramon Bautista', 'ramon bautista    ', 120.00, 0, 100, '2014-12-31 18:23:28', 'NBS 2014    ', '.../vbp/assets/book_covers/1420021408.jpg', '1420021408.jpg', 0, 'SELF-HELP', 0, 0, ''),
(2, '7575757575775 ', 'Para sa Hopeless Romantic ', 'Lahat ng tao ay may kanya-kanyang love story. Mga kwentong tayo mismo ang nagmimistulang manunulat. Mga sariling lovelife na nais nating magkaroon ng happy ending.\r\n\r\nAng unang nobelang ito ni Marcelo Santos III ay tungkol sa limang taong nakikipagsapalaran sa mundo ng pag-ibig -- isang umaasang babalikan, isang naghahangad na mahalin, isang natatakot umibig muli, isang nagsusumikap na makalimot at isang nag-aasam ng maligayang pag-iibigan.\r\n\r\nAng nobelang para sa mga taong iniwan at ipinagpalit, para sa mga taong naging panakip butas, para sa mga nangangarap na mahalin, para sa umaasang babalikan, para sa naghahangad ng happy ending at para sa mga Hopeless Romantic. ', 'Marcelo Santos III ', 120.00, 1, 120, '2014-12-31 18:29:45', 'NBS 2014 ', '.../vbp/assets/book_covers/1420021785.jpg', '1420021785.jpg', 0, 'SELF-HELP', 0, 0, '');
