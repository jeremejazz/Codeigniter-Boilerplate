-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 20, 2015 at 11:52 AM
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
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salutation` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `isactivated` int(11) NOT NULL DEFAULT '0' COMMENT '0=unactivated 1= activated',
  `activation_code` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `activation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `image_path` text NOT NULL,
  `image_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `salutation`, `firstname`, `lastname`, `middlename`, `isactivated`, `activation_code`, `address`, `city`, `zip_code`, `phone_number`, `activation_date`, `gender`, `email`, `image_path`, `image_name`) VALUES
(3, 'chii12', '1234', '', 'rj', 'moris', '', 1, '', '018 transwell st, zapote 9, bacoor, cavite', '', '', '', '2015-01-04 16:17:51', 'M', 'rolandjay.jtech@gmail.com', 'C:\\xampp\\htdocs\\vbp\\assets\\profile_pic/1420582709.jpg', '1420582709.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `announce_promo_list`
--

CREATE TABLE IF NOT EXISTS `announce_promo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_announce` varchar(255) NOT NULL,
  `trx_type` int(11) NOT NULL COMMENT '0=announcement 1=promo',
  `subj` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `announce_by` varchar(255) NOT NULL,
  `isdelete` int(11) NOT NULL COMMENT '0=active 1=deleted',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `announce_promo_list`
--

INSERT INTO `announce_promo_list` (`id`, `date_announce`, `trx_type`, `subj`, `message`, `announce_by`, `isdelete`, `date_created`) VALUES
(1, '01/06/2015', 0, 'New Books', 'Dear Clients we have new books to choose from...', 'admin', 0, '2015-01-06 13:46:08'),
(2, '01/07/2015', 1, 'PSHR on sale', 'The famous book of Marcelo Santos III, Para sa Hopeless Romantic is now 10% sale.', 'admin', 0, '2015-01-06 14:38:57'),
(7, '', 0, 'NEW BOOKS', 'More new books has arrived, check on our website!', 'admin', 0, '2015-01-06 15:53:18');

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
  `promo_disc` float(11,2) NOT NULL,
  `format` varchar(255) NOT NULL,
  `sell_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `description`, `author`, `price`, `status`, `qty`, `date_created`, `published`, `image_path`, `image_name`, `isdelete`, `category`, `isbnew`, `ispromo`, `promo_disc`, `format`, `sell_count`) VALUES
(1, '9999999999999        ', 'Bakit hindi ka crush ng crush mo?        ', 'Bakit hindi ka crush ng crush mo? Ang aklat na ito ay kailangan mo sa buhay pagkatapos mong matugunan ang food, clothing, security at iba pang nasa pinaka-ibaba ng Maslow''s Hierarchy of Needs. Bago ka umibig, at para maabot ang self-actualization, magbasa-basa ka muna. Thank you.\r\n\r\n"Walang gamot sa katangahan. Prevention lang -- wag umibig <3" -Ramon Bautista', 'ramon bautista        ', 120.00, 1, 93, '2014-12-31 18:23:28', 'NBS 2014        ', '.../vbp/assets/book_covers/1420021408.jpg', '1420021408.jpg', 0, 'SELF-HELP', 0, 0, 0.12, 'TP', 10),
(2, '7575757575775  ', 'Para sa Hopeless Romantic  ', 'Lahat ng tao ay may kanya-kanyang love story. Mga kwentong tayo mismo ang nagmimistulang manunulat. Mga sariling lovelife na nais nating magkaroon ng happy ending.\r\n\r\nAng unang nobelang ito ni Marcelo Santos III ay tungkol sa limang taong nakikipagsapalaran sa mundo ng pag-ibig -- isang umaasang babalikan, isang naghahangad na mahalin, isang natatakot umibig muli, isang nagsusumikap na makalimot at isang nag-aasam ng maligayang pag-iibigan.\r\n\r\nAng nobelang para sa mga taong iniwan at ipinagpalit, para sa mga taong naging panakip butas, para sa mga nangangarap na mahalin, para sa umaasang babalikan, para sa naghahangad ng happy ending at para sa mga Hopeless Romantic. ', 'Marcelo Santos III  ', 120.00, 0, 126, '2014-12-31 18:29:45', 'NBS 2014  ', '.../vbp/assets/book_covers/1420021785.jpg', '1420021785.jpg', 0, 'SELF-HELP', 0, 0, 0.00, 'TP', 116),
(3, '8485751654897', 'Diary ng Panget 4', 'Ito na ang ika-apat at huling libro ng Diary ng Panget series. Nagsimula sa pagkadapa ni Eya sa may Corridor at sa pagtawa sa kanya ng antipatikong si Cross Sandford na naging amo niya, napunta sa walang katapusang bangayan hanggang ang inis sa isa''t isa ay unti-unting nauwi sa isang damdamin na parehas nilang hindi maipaliwanag. Ano nga kaya itong namumuong damdamin nila para sa isa''t isa? Pag-ibig kaya o gutom lang? Seryoso ba si Cross sa pagtatapat niya bigla ng damdamin niya o nauntog lang niya ang ulo niya nang malakas sa pader? Kung tila mga pusa''t asong ito ay papasok sa isang relasyon, ano kaya ang mangyayari? Magkakagulo kaya? Parati pa rin kaya silang mag-aaway? O ito na ang oras na magmamahalan na talaga sila at kikiligin na tayong mga mambabasa? Pero teka, paano kung may umepal? Silang dalawa na nga lang, magulo na, paano pa kaya kung may dadagdag na mas magpapagulo pa? ', 'HaveYouSeenThisGirL ', 150.00, 0, 13, '2015-01-04 18:19:21', 'Published September 2013 by PSICOM Publishing Inc.', '.../vbp/assets/book_covers/1420366761.jpg', '1420366761.jpg', 0, 'FICTION', 0, 0, 0.10, 'TP', 8),
(4, '9789710573653', 'Diary ng Panget', 'Mahirap at panget si Girl tapos magnet siya ng mga poging mayayaman na boys? YES! Cliché? YES! So what makes this book special? This story has made a lot of people online laugh, as in hagalpak talaga with matching headbang pa! This is Eya''s diary, a girl who believes she''s ugly and will meet Cross Sandford, the most annoying nilalang ever. Samahan natin si Eya sa nakakaloka niyang adventure sa Willford Academy! A Cinderella story with a twist katatawanan! A story na pwedeng-pwede sa mga kabataan at pati na rin sa lagpas kabataan, para sa kababaihan, kalalakihan, binabae, o pusong lalaki. A very funny and kakilig story.', ' HaveYouSeenThisGirL ', 120.00, 0, 10, '2015-01-04 18:25:41', 'Published May 2013 by PSICOM Publishing, Inc.', '.../vbp/assets/book_covers/1420367141.jpg', '1420367141.jpg', 0, 'FICTION', 0, 0, 0.10, 'TP', 0),
(6, '4806518075273', 'Diary ng Panget 2 ', 'Another series made by  HaveYouSeenThisGirL.', 'HaveYouSeenThisGirL', 130.00, 0, 100, '2015-01-11 04:26:33', 'VIVA PSICOM', 'C:\\xampp\\htdocs\\vbp\\assets\\book_covers/1420921593.jpg', '1420921593.jpg', 0, 'FICTION', 1, 1, 0.12, 'HB', 0),
(7, '4806518075327', 'Diary ng Panget 3', 'The 3rd part of the famous book of HaveYouSeenThisGirL diary ng panget.', 'HaveYouSeenThisGirL', 120.00, 0, 30, '2015-01-11 04:31:47', 'VIVA PSICOM', 'C:\\xampp\\htdocs\\vbp\\assets\\book_covers/1420921907.jpg', '1420921907.jpg', 0, 'FICTION', 1, 0, 0.12, 'HB', 40);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'AGRICULTURE'),
(2, 'ARCHITECTURE'),
(3, 'ART'),
(4, 'BIOGRAPHY & MEMOIR'),
(5, 'BUSINESS'),
(6, 'CHILDREN''S FICTION'),
(7, 'CHILDREN''S NON-FICTION'),
(8, 'COOKING, FOOD & WINE'),
(9, 'CRAFTS & HOBBIES'),
(10, 'FAMILY & PARENTING'),
(11, 'FICTION'),
(12, 'FUN & GAMES'),
(13, 'GARDENING'),
(14, 'HEALTH, MIND, & BODY'),
(15, 'HISTORY'),
(16, 'HOME REFERENCE / HOW-TO'),
(17, 'HUMOR'),
(18, 'MEDICAL'),
(20, 'MUSIC'),
(21, 'PERFORMING ARTS'),
(22, 'PETS'),
(23, 'PHILOSOPHY'),
(24, 'PHOTOGRAPHY'),
(25, 'REFERENCE'),
(26, 'RELIGION'),
(27, 'SELF-HELP'),
(28, 'SOCIAL SCIENCE'),
(29, 'SPORTS & RECREATION'),
(30, 'TRANSPORTATION'),
(31, 'TRAVEL');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `date_created`) VALUES
(1, '', '', '', '', '2014-12-29 21:59:03'),
(2, '', '', '', '', '2014-12-29 21:59:11'),
(3, 'rj', '123@123.com', '123123123', '123123', '2014-12-29 22:07:58'),
(4, '123123', '123@123.com', '123123', '123123', '2014-12-29 22:08:35'),
(5, 'sample', 'sample@sample.com', 'website', 'this is a sample email', '2014-12-30 18:56:54'),
(6, '123', '123@yahoo.com', '123', '123', '2014-12-30 18:59:30'),
(7, '123333', '333@yahoo.com', '3433', '333', '2014-12-30 19:01:18'),
(8, '', '', '', '', '2014-12-30 19:04:49'),
(9, 'sample', 'sample@sample.com', 'sample', 'this is a test email', '2014-12-30 19:10:30'),
(10, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:12:05'),
(11, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:14:50'),
(12, 'sample', 'sample@sample.com', 'sample', 'this is a test email', '2014-12-30 19:15:15'),
(13, 'somerandompeople', 'sample@sample.com', 'sample', 'this is a sample', '2014-12-30 19:16:00'),
(14, 'rjsm', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:17:24'),
(15, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:18:33'),
(16, '11', '111@123.com', 'sample', 'sample', '2014-12-30 19:19:37'),
(17, '', '', '', '', '2014-12-30 19:19:48'),
(18, '', '', '', '', '2014-12-30 19:21:06'),
(19, '', '', '', '', '2014-12-30 19:21:36'),
(20, '', '', '', '', '2014-12-30 19:22:01'),
(21, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:24:31'),
(22, '', '', '', '', '2014-12-30 19:25:24'),
(23, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:25:55'),
(24, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:31:46'),
(25, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:32:14'),
(26, 'sample', 'sample@sample.com', 'sample', 'samplesssss', '2014-12-30 19:38:00'),
(27, 'sample', 'sample@sample.com', 'sample', 'samplesssss', '2014-12-30 19:38:33'),
(28, '', '', '', '', '2014-12-30 19:38:52'),
(29, '', '', '', '', '2014-12-30 19:45:32'),
(30, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:45:46'),
(31, 'sample', 'sample@sample.com', 'sample', 'sample', '2014-12-30 19:47:17'),
(32, '123', '123@yahoo.com', '1', '1', '2014-12-30 19:49:19'),
(33, '12312', '123@yahoo.com', '12', '12', '2014-12-30 19:56:56'),
(34, '123', '123@123.com', 'sample', 'sample', '2014-12-30 20:02:14'),
(35, '123', '123@123.com', 'sample', 'sample', '2014-12-30 20:06:20'),
(36, '123', 'sample@sample.com', 'sample', 'sample', '2014-12-30 20:06:38'),
(37, '', '', '', '', '2014-12-30 20:12:35'),
(38, '123', '123@123.com', '123123', '1111', '2014-12-30 20:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_id`
--

CREATE TABLE IF NOT EXISTS `order_id` (
  `id` int(12) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'For Order ID Generation',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='For Order ID Generation' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `order_id`
--


-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `trx_type` int(11) NOT NULL COMMENT '0=active order 1=on delivery  2=delivered order 3= returned order',
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float(11,2) NOT NULL,
  `subtotal` float(11,2) NOT NULL,
  `vat` float(11,2) NOT NULL,
  `disc` float(11,2) NOT NULL,
  `g_total` float(11,2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_promo` int(11) NOT NULL COMMENT '0= not in promo 1= in promo',
  `courier` varchar(255) NOT NULL,
  `track_num` varchar(255) NOT NULL,
  `shipping_fee` float(11,2) NOT NULL,
  `delivery_sched` varchar(255) NOT NULL,
  `isdelete` int(11) NOT NULL COMMENT '0=not deleted 1=deleted',
  `ispaid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `book_id`, `user_id`, `trx_type`, `user_name`, `user_email`, `book_title`, `remarks`, `qty`, `price`, `subtotal`, `vat`, `disc`, `g_total`, `date_created`, `is_promo`, `courier`, `track_num`, `shipping_fee`, `delivery_sched`, `isdelete`, `ispaid`) VALUES
(2, 'ORD1234', 1, '3', 0, 'chii12', 'rolandjay.jtech@gmail.com', 'Bakit hindi ka crush ng crush mo? ', '', 2, 120.00, 240.00, 28.80, 24.00, 244.80, '2015-01-16 17:58:22', 0, '', '', 100.00, '', 0, 0),
(3, 'ORD1235', 2, '3', 0, 'chii12', 'rolandjay.jtech@gmail.com', 'Para sa Hopeless Romantic', '111', 2, 120.00, 240.00, 0.00, 0.00, 0.00, '2015-01-20 13:14:01', 0, '', '', 0.00, '', 0, 0),
(4, 'ORD1235', 3, '3', 0, 'chii12', 'rolandjay.jtech@gmail.com', 'Diary ng Panget 4', '1', 1, 150.00, 150.00, 0.00, 0.00, 0.00, '2015-01-20 13:14:01', 0, '', '', 0.00, '', 0, 0);

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
(2, 'ORD1235', 3, 'chii12', 'rolandjay.jtech@gmail.com', '09159999555', 3, 390.00, 46.80, 100.00, 536.80, '15435434351', '153.438573', '2go', 'delivered', 4, 0, '2015-01-19 13:08:24');
