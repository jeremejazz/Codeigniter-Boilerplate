-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2015 at 01:53 AM
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
-- Table structure for table `transaction_summary`
--

CREATE TABLE IF NOT EXISTS `transaction_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `total_qty` float(11,2) NOT NULL,
  `shipping_fee` float(11,2) NOT NULL,
  `total_price` float(11,2) NOT NULL,
  `client_control_num` varchar(255) NOT NULL,
  `client_courier` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `trx_type` int(11) NOT NULL COMMENT '0=active 1=paid 2=ondelivery 3=summary',
  `isdelete` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transaction_summary`
--

