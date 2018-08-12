# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Database: kasper
# Generation Time: 2018-08-12 12:21:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;

INSERT INTO `sales` (`id`, `month`, `provider`, `created_at`, `updated_at`, `amount`)
VALUES
	(26,'1','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',3647),
	(27,'1','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',3382),
	(28,'2','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',13133),
	(29,'2','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',9680),
	(30,'3','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',8064),
	(31,'3','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',2406),
	(32,'4','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',523),
	(33,'4','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',7238),
	(34,'5','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',8127),
	(35,'5','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',87),
	(36,'6','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',8106),
	(37,'6','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',13400),
	(38,'7','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',4770),
	(39,'7','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',6906),
	(40,'8','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',13942),
	(41,'8','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',12096),
	(42,'9','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',8149),
	(43,'9','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',1658),
	(44,'10','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',3909),
	(45,'10','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',2318),
	(46,'11','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',6260),
	(47,'11','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',4001),
	(48,'12','Amazon','2018-08-12 09:29:54','2018-08-12 09:29:54',11149),
	(49,'12','Walmart','2018-08-12 09:29:54','2018-08-12 09:29:54',3064);

/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
