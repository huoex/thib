/*
SQLyog Ultimate v8.53 
MySQL - 5.5.20 : Database - hibernate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hibernate` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hibernate`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `emp_id` int(11) unsigned NOT NULL,
  `address_line1` varchar(50) NOT NULL DEFAULT '',
  `zipcode` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `emp_fk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`emp_id`,`address_line1`,`zipcode`,`city`) values (1,'Albany Dr','95129','San Jose'),(2,'Arques Ave','95051','Santa Clara'),(3,'BTM 1st Stage','560100','Bangalore'),(4,'City Centre','100100','New Delhi');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `emp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(20) NOT NULL,
  `emp_salary` double(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`emp_id`,`emp_name`,`emp_salary`) values (1,'Pankaj',100),(2,'David',200),(3,'Lisa',300),(4,'Jack',400),(5,'lili',500);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
