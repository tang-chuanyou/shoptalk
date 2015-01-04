-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: shoptalk
-- ------------------------------------------------------
-- Server version	5.5.40-0+wheezy1

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
-- Table structure for table `t_messages`
--

DROP TABLE IF EXISTS `t_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `owner_user_id` varchar(100) DEFAULT NULL,
  `text` varchar(500) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `creation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `closed_by_user` varchar(100) DEFAULT NULL,
  `closed_by_owner` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_messages`
--

LOCK TABLES `t_messages` WRITE;
/*!40000 ALTER TABLE `t_messages` DISABLE KEYS */;
INSERT INTO `t_messages` VALUES (54,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','dont challenge my program...','','2014-11-15 21:46:05',NULL,''),(55,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','i do have this plant.. do you want','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:52:29',NULL,''),(56,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','and purple water... do you want','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-15 21:55:42',NULL,''),(57,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','and again green plant??','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:57:33',NULL,''),(58,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','do you want what??','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:57:55',NULL,''),(59,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','what ?','','2014-11-15 21:58:03',NULL,''),(61,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','you want this ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:58:51',NULL,''),(63,'yelp::pho-99-vietnamese-restaurant-franklin-park','alyss@qq.com','','hey...anyone here ?','','2014-11-16 02:55:09',NULL,NULL),(65,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','','hey... i want some water','','2014-11-16 22:00:37',NULL,'alyss@qq.com'),(66,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','','.','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-16 22:00:45',NULL,'alyss@qq.com'),(67,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','i want some green plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-16 22:02:52',NULL,'alyss@qq.com'),(68,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','i want banana','','2014-11-18 00:46:22',NULL,'alyss@qq.com'),(69,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','what do you want ?','','2014-11-18 00:46:47',NULL,'alyss@qq.com'),(70,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','alyss@qq.com','what do you want again ?','','2014-11-18 00:47:09',NULL,'alyss@qq.com'),(71,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','alyss@qq.com','is this one good for u ?','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-18 01:02:41',NULL,'alyss@qq.com'),(72,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','and this one ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-18 01:15:06',NULL,'alyss@qq.com'),(73,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','noting i have for u','','2014-11-18 01:15:15',NULL,'alyss@qq.com'),(74,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','no.... i want this water','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-18 01:17:25',NULL,'alyss@qq.com'),(75,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','and this water too','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-18 01:17:38',NULL,'alyss@qq.com'),(76,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','and this flower','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-18 01:17:53',NULL,'alyss@qq.com'),(77,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','','hello..','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-18 12:43:33',NULL,'alyss@qq.com'),(78,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','yes do you want this one ?','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-19 01:10:24',NULL,''),(79,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','wendy, i dont have his for this.. but another one','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-20 02:25:02',NULL,'alyss@qq.com'),(80,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','i want another one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-20 02:39:35',NULL,''),(96,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','how about this one ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-22 01:14:09',NULL,'alyss@qq.com'),(97,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','hello','','2014-11-22 01:18:10',NULL,''),(98,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','hello good morning','','2014-11-22 01:19:19',NULL,'alyss@qq.com'),(99,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','hello','','2014-11-22 01:20:24',NULL,'alyss@qq.com'),(100,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','good morning','','2014-11-22 01:25:52',NULL,'alyss@qq.com'),(101,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','alyss@qq.com','do you want the purple wanter?','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-23 13:09:22',NULL,'alyss@qq.com'),(102,'yelp::pholicious-lawrence-township-2','alyss@qq.com','','hello, i want some jacket..','','2014-11-26 02:44:51','alyss@qq.com',NULL),(103,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','yes. what do you want ?','','2014-11-26 02:47:32',NULL,'alyss@qq.com'),(104,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','this one ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-26 02:47:48',NULL,'alyss@qq.com'),(106,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','yes. i want the water','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-26 18:08:55',NULL,'alyss@qq.com'),(107,'yelp::han-dynasty-philadelphia','wendy-tang@gmail.com','','hey, you have nothing here ?','','2014-11-27 00:13:28',NULL,NULL),(108,'yelp::30-burgers-princeton','alyss@qq.com','','nothing is here ?','','2014-11-27 00:15:47',NULL,NULL),(109,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','','no.. i want som water','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-27 01:23:42',NULL,'alyss@qq.com'),(110,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','i dont have this but another one','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-27 14:09:44',NULL,'alyss@qq.com'),(111,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','do you want some flower ?','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-27 14:10:15',NULL,'alyss@qq.com'),(112,'yelp::vietnam-palace-philadelphia','lingyu-wang@gmail.com','','hello... do you have something here ?','','2014-11-27 17:16:02','lingyu-wang@gmail.com','alyss@qq.com'),(113,'yelp::vietnam-palace-philadelphia','lingyu-wang@gmail.com','','hello... are you good?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-27 17:19:22',NULL,'alyss@qq.com'),(114,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','do you hear me ?','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-27 17:22:34',NULL,'alyss@qq.com'),(121,'yelp::pholicious-lawrence-township-2','alyss@qq.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-11-27 21:57:53','alyss@qq.com',NULL),(123,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','','good morning.. i want some water here lke this','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-27 21:58:50',NULL,''),(124,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','alyss@qq.com','ok c\'mon','','2014-11-27 21:59:28',NULL,''),(125,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-11-27 21:59:34',NULL,'alyss@qq.com'),(127,'yelp::pho-vietnam-new-york','wlingyu@gmail.com','','good morning.. anybody there ?','','2014-11-27 22:08:34',NULL,NULL),(128,'yelp::vietnam-cafe-philadelphia','alyss@qq.com','','anybody here ?','','2014-11-27 22:09:22',NULL,''),(129,'yelp::vietnam-cafe-philadelphia','alyss@qq.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-11-27 22:09:38',NULL,'alyss@qq.com'),(130,'yelp::vietnam-cafe-philadelphia','qs.wang@qq.com','','hello..','','2014-11-27 22:10:33','qs.wang@qq.com',NULL),(131,'yelp::vietnam-cafe-philadelphia','qs.wang@qq.com','','i want some water like this','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-27 22:10:45','qs.wang@qq.com',NULL),(132,'yelp::vietnam-cafe-philadelphia','qs.wang@qq.com','alyss@qq.com','yes... we have it','','2014-11-27 22:11:18','qs.wang@qq.com',NULL),(133,'yelp::vietnam-cafe-philadelphia','qs.wang@qq.com','[system]','talk was closed by qs.wang@qq.com',NULL,'2014-11-27 22:11:55','qs.wang@qq.com',NULL),(134,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i wnt some water... do you have it?','','2014-11-30 14:53:04','chuanyou.tang@gmail.com',NULL),(135,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','like this ','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-30 14:53:12','chuanyou.tang@gmail.com',NULL),(136,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','[system]','talk was closed by chuanyou.tang@gmail.com',NULL,'2014-11-30 15:10:36',NULL,'chuanyou.tang@gmail.com'),(137,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','i wnat a green plant..','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-30 15:11:56',NULL,NULL),(139,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','how about purple water','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-30 15:55:44',NULL,NULL),(140,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','grent plant ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-30 15:56:05',NULL,NULL),(141,'yelp::vietnam-restaurant-philadelphia-2','alyss@qq.com','','what do you have in this store ?','','2014-12-05 01:01:01',NULL,NULL),(142,'yelp::vietnam-restaurant-philadelphia-2','alyss@qq.com','','looks like there is nothing here ?','','2014-12-05 01:01:20',NULL,NULL),(143,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','i want this one ','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-12-09 12:47:20',NULL,''),(144,'shoptalk::Bensalem-Tang\'s Shop-989B9BA092133DDEACFD6FD8BEF64945','chuanyou.tang@gmail.com','','this one looks good ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-12-09 12:47:49',NULL,''),(145,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-12-15 13:14:07',NULL,'alyss@qq.com'),(146,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','hello... do you have some water here ?','','2014-12-15 13:15:26',NULL,NULL),(147,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','chuanyou.tang@gmail.com','[system]','talk was closed by chuanyou.tang@gmail.com',NULL,'2014-12-16 01:16:07',NULL,'chuanyou.tang@gmail.com'),(148,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','chuanyou.tang@gmail.com','','any one here ?','','2014-12-16 01:16:27',NULL,''),(149,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','[system]','talk was closed by chuanyou.tang@gmail.com',NULL,'2014-12-29 13:10:30','chuanyou.tang@gmail.com',NULL),(150,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','chuanyou.tang@gmail.com','[system]','talk was closed by chuanyou.tang@gmail.com',NULL,'2014-12-29 13:11:41',NULL,'chuanyou.tang@gmail.com'),(151,'yelp::vietnam-restaurant-philadelphia-2','chuanyou.tang@gmail.com','','anyone there ?','','2014-12-31 02:11:36',NULL,NULL),(152,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','','hey anybody there ?','','2015-01-01 15:52:14',NULL,NULL),(153,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','chuanyou.tang@gmail.com','yes i am here.','','2015-01-01 15:52:57',NULL,NULL),(154,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','chuanyou.tang@gmail.com','what do you want.','','2015-01-01 15:53:12',NULL,NULL),(155,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','','i want this water','/images/93E6550AC77971306A661EF82E69AEC5.png','2015-01-01 15:53:40',NULL,NULL),(156,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','chuanyou.tang@gmail.com','oh.. yes. it s there.','','2015-01-01 15:54:18',NULL,NULL),(157,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','chuanyou.tang@gmail.com','we have green plant 22','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2015-01-01 15:55:03',NULL,NULL),(158,'shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','alyss@qq.com','','ok.. i want this','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2015-01-01 15:55:46',NULL,NULL),(159,'shoptalk::Bensalem-Franklin Commons Apartments-AF2616FEDC183824D3BEBCA0044762CB','chuanyou.tang@gmail.com','','hello.. do you have one bed apart','','2015-01-01 16:02:42',NULL,NULL),(160,'yelp::vietnam-cafe-philadelphia','qs.wang@qq.com','[system]','talk was closed by qs.wang@qq.com',NULL,'2015-01-03 23:37:25','qs.wang@qq.com',NULL),(161,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','[system]','talk was closed by alyss@qq.com',NULL,'2015-01-03 23:37:25',NULL,'alyss@qq.com'),(162,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','[system]','talk was closed by alyss@qq.com',NULL,'2015-01-03 23:37:25',NULL,'alyss@qq.com');
/*!40000 ALTER TABLE `t_messages` ENABLE KEYS */;
UNLOCK TABLES;

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
  `status` varchar(10) DEFAULT 'applied',
  PRIMARY KEY (`user_id`,`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_shopownership`
--

LOCK TABLES `t_shopownership` WRITE;
/*!40000 ALTER TABLE `t_shopownership` DISABLE KEYS */;
INSERT INTO `t_shopownership` VALUES ('alyss@qq.com','shoptalk::Bensalem-Franklin Commons Apartments-AF2616FEDC183824D3BEBCA0044762CB','shop creation','','approved'),('alyss@qq.com','yelp::vietnam-cafe-philadelphia','this is my shop','/images/93E6550AC77971306A661EF82E69AEC5.png','approved'),('alyss@qq.com','yelp::vietnam-palace-philadelphia','this is my shop 2','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','approved'),('chuanyou.tang@gmail.com','shoptalk::--E27818691AA4D6F161D7F44ED2D85AE3','shop creation','','approved'),('chuanyou.tang@gmail.com','shoptalk::bensalem-tang 1st shop-92518EB18CD8FBC1312C9BA786BD08B9','shop creation','','approved'),('chuanyou.tang@gmail.com','shoptalk::bensalem-tang another shop-E8DAEA866DDF87C842B6E4CFC3FE3A22','shop creation','','approved'),('chuanyou.tang@gmail.com','shoptalk::bensalem-tang\'s 2nd shop-1CE6A877AF4D48572C0959BCFD608D88','shop creation','','approved'),('chuanyou.tang@gmail.com','shoptalk::bensalem-tang\'s 3rd shop-1CE6A877AF4D48572C0959BCFD608D88','shop creation','','approved'),('chuanyou.tang@gmail.com','shoptalk::bensalem-tang\'s shop-52E9DEB14B46DD6AB5D73591D7C4D44E','shop creation','','approved'),('chuanyou.tang@gmail.com','shoptalk::Bensalem-Tang\'s Shop-989B9BA092133DDEACFD6FD8BEF64945','shop creation','','approved'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-philadelphia','','/images/B167885ADCF5F96B38BE738CF7FC1917.png','applied'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-restaurant-telford','yes i am the owner','/images/93E6550AC77971306A661EF82E69AEC5.png','approved');
/*!40000 ALTER TABLE `t_shopownership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_shopproducts`
--

DROP TABLE IF EXISTS `t_shopproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_shopproducts` (
  `shop_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product_key` varchar(100) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  PRIMARY KEY (`shop_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_shopproducts`
--

LOCK TABLES `t_shopproducts` WRITE;
/*!40000 ALTER TABLE `t_shopproducts` DISABLE KEYS */;
INSERT INTO `t_shopproducts` VALUES ('shoptalk::bensalem-tang\'s 3rd shop-1CE6A877AF4D48572C0959BCFD608D88','green flower','$10','/images/D96B9B322B5422EC22C6C3953B0D90CA.png'),('shoptalk::bensalem-tang\'s 3rd shop-1CE6A877AF4D48572C0959BCFD608D88','green leaves','$20','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('shoptalk::bensalem-tang\'s 3rd shop-1CE6A877AF4D48572C0959BCFD608D88','purple water','$20','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('shoptalk::Bensalem-Tang\'s Shop-989B9BA092133DDEACFD6FD8BEF64945','gold falls','$10','/images/93E6550AC77971306A661EF82E69AEC5.png'),('shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','green plant','$20','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-philadelphia','green PLANT','$20','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-philadelphia','green plant 2','$10','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-philadelphia','white falls','$10','/images/CBC62B902DB1452C6FCBB310407E2329.png'),('yelp::vietnam-cafe-philadelphia','white WATER','$10','/images/D96B9B322B5422EC22C6C3953B0D90CA.png'),('yelp::vietnam-cafe-restaurant-telford','green PLANT','$10','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-restaurant-telford','purple WATER','$20','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('yelp::vietnam-cafe-restaurant-telford','small flower','$20','/images/D96B9B322B5422EC22C6C3953B0D90CA.png'),('yelp::vietnam-cafe-restaurant-telford','white water','$10','/images/CBC62B902DB1452C6FCBB310407E2329.png'),('yelp::vietnam-palace-philadelphia','beautiful FLOWER','$12','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-palace-philadelphia','purple Water','$10','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('yelp::vietnam-palace-philadelphia','white Water','$1.02','/images/CBC62B902DB1452C6FCBB310407E2329.png');
/*!40000 ALTER TABLE `t_shopproducts` ENABLE KEYS */;
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
  `phone` varchar(100) DEFAULT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `latitude` float(10,7) DEFAULT NULL,
  `longitude` float(10,7) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `terms` varchar(1000) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_shops`
--

LOCK TABLES `t_shops` WRITE;
/*!40000 ALTER TABLE `t_shops` DISABLE KEYS */;
INSERT INTO `t_shops` VALUES ('shoptalk::Bensalem-Franklin Commons Apartments-AF2616FEDC183824D3BEBCA0044762CB','Franklin Commons Apartments','2156398400','/images/93E6550AC77971306A661EF82E69AEC5.png',40.1013985,-74.9344025,'1400 Cardinal Drive','Bensalem','PA','19020','USA','apartments, franklin commons',''),('shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945','Tang\'s shop','2158084990','/images/FCFD9C749D958E5320C265C3BE2C1F21.png',40.0997009,-74.9328995,'1716 Robin Dr.','Bensalem','PA','19020','USA','tang, water',''),('yelp::vietnam-cafe-philadelphia','Vietnam Cafe','2157290272','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png',39.9481773,-75.2168884,'816 S 47th St','Philadelphia','PA','19143','US','',''),('yelp::vietnam-cafe-restaurant-telford','Vietnam Cafe Restaurant','2157233335','http://s3-media1.fl.yelpcdn.com/bphoto/4Ek3Pi6zujif9ialMFbsRA/ms.jpg',40.3235283,-75.3304977,'179 Penn Ave','Telford','PA','18969','US','',''),('yelp::vietnam-palace-philadelphia','Vietnam Palace','2155929596','http://s3-media2.fl.yelpcdn.com/bphoto/vzeVcFXHXqmWpElHDXjYug/ms.jpg',39.9562950,-75.1574936,'222 N 11th St','Philadelphia','PA','19107','US','',''),('yelp::vietnam-restaurant-philadelphia-2','Vietnam Restaurant','2155921163','http://s3-media4.fl.yelpcdn.com/bphoto/M6Qk5KoZLzWBp5shaGqh4w/ms.jpg',39.9563332,-75.1572113,'221 N 11th St','Philadelphia','PA','19107','US','','');
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
INSERT INTO `t_userfavorites` VALUES ('alyss@qq.com','shoptalk::Bensalem-Franklin Commons Apartments-AF2616FEDC183824D3BEBCA0044762CB'),('alyss@qq.com','shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945'),('alyss@qq.com','yelp::vietnam-cafe-philadelphia'),('alyss@qq.com','yelp::vietnam-cafe-restaurant-telford'),('alyss@qq.com','yelp::vietnam-palace-philadelphia'),('chuanyou.tang@gmail.com','shoptalk::Bensalem-Franklin Commons Apartments-AF2616FEDC183824D3BEBCA0044762CB'),('chuanyou.tang@gmail.com','shoptalk::Bensalem-Tang\'s shop-989B9BA092133DDEACFD6FD8BEF64945'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-philadelphia'),('chuanyou.tang@gmail.com','yelp::vietnam-palace-philadelphia'),('chuanyou.tang@gmail.com','yelp::vietnam-restaurant-philadelphia-2');
/*!40000 ALTER TABLE `t_userfavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `user_id` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(10) DEFAULT 'active',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES ('alyss@qq.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('chuanyou.tang@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('cy.tang@qq.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('lingyu-wang@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('qs.wang@qq.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('wendy-tang@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('wlingyu@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shoptalk'
--
/*!50003 DROP PROCEDURE IF EXISTS `p_shopsbydist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`tang`@`localhost` PROCEDURE `p_shopsbydist`(IN mylat float, IN mylon float, IN dist int)
BEGIN

declare lon1 float; 
declare lon2 float;
declare lat1 float; 
declare lat2 float;


set lon1 = mylon-dist/abs(cos(radians(mylat))*69);
set lon2 = mylon+dist/abs(cos(radians(mylat))*69);
set lat1 = mylat-(dist/69); 
set lat2 = mylat+(dist/69);



SELECT s.*,3956 * 2 * ASIN(SQRT( POWER(SIN((s.latitude -mylat) * pi()/180 / 2), 2) +COS(s.latitude * pi()/180) * COS(s.latitude * pi()/180) *POWER(SIN((s.longitude -mylon) * pi()/180 / 2), 2) )) as distance 
FROM t_shops s
WHERE s.longitude between lon1 and lon2 
and s.latitude between lat1 and lat2 
having distance < dist ORDER BY Distance limit 10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-04  0:04:38
