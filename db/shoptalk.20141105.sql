-- MySQL dump 10.13  Distrib 5.5.40, for Linux (x86_64)
--
-- Host: localhost    Database: shoptalk
-- ------------------------------------------------------
-- Server version	5.5.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_shopownership`
--

DROP TABLE IF EXISTS `t_shopownership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_shopownership` (
  `user_id` varchar(100) NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_shopownership`
--

LOCK TABLES `t_shopownership` WRITE;
/*!40000 ALTER TABLE `t_shopownership` DISABLE KEYS */;
INSERT INTO `t_shopownership` VALUES ('alyss@qq.com','yelp::vietnam-cafe-philadelphia','this is my shop','/images/93E6550AC77971306A661EF82E69AEC5.png');
/*!40000 ALTER TABLE `t_shopownership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_shops`
--

DROP TABLE IF EXISTS `t_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_shops` (
  `shop_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_shops`
--

LOCK TABLES `t_shops` WRITE;
/*!40000 ALTER TABLE `t_shops` DISABLE KEYS */;
INSERT INTO `t_shops` VALUES ('yelp::allstar-pizza-bensalem','Allstar Pizza','2345 Street Rd, Bensalem, PA 19020','2156337898','http://s3-media4.fl.yelpcdn.com/bphoto/7PW8Q_d104O2SMEyPBoHgQ/ms.jpg','there cheesesteaks and cheesesteak pizza are amazing. and they have a great lunch special also for the cheesesteaks with fries for like 6 bucks'),('yelp::hong-kong-star-noodle-house-bensalem','Hong Kong Star Noodle House','2852 Street Rd, Bensalem, PA 19020','2675235523','http://s3-media3.fl.yelpcdn.com/bphoto/SsLTO5DdkMKk0adJYOPBTA/ms.jpg',NULL),('yelp::misto-diner-bensalem-2','Misto Diner','5413 Neshaminy Blvd, Bensalem, PA 19020','2157506311','http://s3-media3.fl.yelpcdn.com/bphoto/uGmnLmTHWSf1xxGhD7daKw/ms.jpg',NULL),('yelp::old-friends-pizza-bensalem','Old Friends Pizza','3665 Hulmeville Rd, Bensalem, PA 19020','2156388082','http://s3-media1.fl.yelpcdn.com/bphoto/ii-BDRv3_iqqsMmLP5KQ-g/ms.jpg','Well, it has been about 2 years since my last review of this place. I just wish I could give it six stars instead. By now we have sampled about three...'),('yelp::stefanos-ii-brick-oven-pizzeria-bensalem','Stefano\'s II Brick Oven Pizzeria','3855 Hulmeville Rd, Bensalem, PA 19020','2152444383',NULL,'We moved in down the street and fell in love with this place! Seriously, the rolls are made in house and part of what make their cheesesteaks and hoagies...'),('yelp::vietnam-cafe-philadelphia','Vietnam Cafe','816 S 47th St, Philadelphia, PA 19143','2157290260','http://s3-media4.fl.yelpcdn.com/bphoto/QeLK5-0UxVahDKn9jzrPeg/ms.jpg',NULL),('yelp::vietnam-palace-philadelphia','Vietnam Palace','222 N 11th St, Philadelphia, PA 19107','2155929596','http://s3-media2.fl.yelpcdn.com/bphoto/vzeVcFXHXqmWpElHDXjYug/ms.jpg',NULL),('yelp::vincenzos-pizza-bensalem','Vincenzo\'s Pizza','1646 Bridgewater Rd, Bensalem, PA 19020','2152440270','http://s3-media3.fl.yelpcdn.com/bphoto/30kbKAuLgeMeA-WFM55XZw/ms.jpg','very similar to all the other pizza parlors in the area, Vincenzo\'s has the standard menu. What makes Vincenzo shine to me is there amazing TWO American...');
/*!40000 ALTER TABLE `t_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_userfavorites`
--

DROP TABLE IF EXISTS `t_userfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_userfavorites` (
  `user_id` varchar(100) NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_userfavorites`
--

LOCK TABLES `t_userfavorites` WRITE;
/*!40000 ALTER TABLE `t_userfavorites` DISABLE KEYS */;
INSERT INTO `t_userfavorites` VALUES ('alyss@qq.com','yelp::vietnam-cafe-philadelphia'),('alyss@qq.com','yelp::vietnam-palace-philadelphia');
/*!40000 ALTER TABLE `t_userfavorites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-06  0:48:30
