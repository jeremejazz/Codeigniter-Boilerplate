/*
SQLyog Ultimate v11.5 (64 bit)
MySQL - 5.6.20 : Database - vanilla2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vanilla2` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
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
  `name` varchar(230) DEFAULT NULL,
  `phone_number` varchar(230) DEFAULT NULL,
  `address` varchar(230) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`order_id`,`book_id`,`user_id`,`trx_type`,`user_name`,`user_email`,`book_title`,`remarks`,`qty`,`price`,`subtotal`,`vat`,`disc`,`g_total`,`date_created`,`is_promo`,`courier`,`track_num`,`shipping_fee`,`delivery_sched`,`isdelete`,`ispaid`,`name`,`phone_number`,`address`) values (2,'ORD1234',1,'3',0,'chii12','rolandjay.jtech@gmail.com','Bakit hindi ka crush ng crush mo? ','',2,240.00,240.00,28.80,24.00,244.80,'2015-01-16 17:58:22',0,'','',100.00,'',0,0,NULL,NULL,NULL),(3,'ORD0002',4,'3',0,'chii12','rolandjay.jtech@gmail.com','Diary ng Panget','',2,120.00,240.00,0.12,0.00,268.80,'2015-01-17 17:01:53',0,'','',100.00,'',0,0,'rj moris','','018 transwell st, zapote 9, bacoor, cavite');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
