-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 20, 2015 at 05:36 AM
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
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cp_num` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` float(11,2) NOT NULL,
  `vat` float(11,2) NOT NULL,
  `shipping_fee` float(11,2) NOT NULL,
  `total_price` float(11,2) NOT NULL,
  `client_control_num` varchar(255) NOT NULL,
  `admin_control_num` varchar(255) NOT NULL,
  `courier` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `trx_type` int(11) NOT NULL COMMENT '0=active 1=paid 2=ondelivery 3=summary 4=void',
  `isdelete` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `transaction_summary`
--

INSERT INTO `transaction_summary` (`id`, `order_id`, `user_id`, `client_name`, `email`, `cp_num`, `qty`, `sub_total`, `vat`, `shipping_fee`, `total_price`, `client_control_num`, `admin_control_num`, `courier`, `remarks`, `trx_type`, `isdelete`, `date_created`) VALUES
(1, 'ORD1234', 3, 'chii12', 'rolandjay.jtech@gmail.com', '09159999555', 2, 240.00, 28.80, 100.00, 368.80, 'xxxzxczxc123123', '15754187435', '2go', 'transaction complete ', 3, 0, '2015-01-16 00:00:00'),
(2, 'ORD1235', 3, 'chii12', 'rolandjay.jtech@gmail.com', '09159999555', 3, 390.00, 46.80, 100.00, 536.80, '', '', '', 'new order', 0, 0, '2015-01-19 13:08:24');
