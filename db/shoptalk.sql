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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_messages`
--

LOCK TABLES `t_messages` WRITE;
/*!40000 ALTER TABLE `t_messages` DISABLE KEYS */;
INSERT INTO `t_messages` VALUES (4,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','hi there ?','','2014-11-10 13:28:42',NULL,NULL),(5,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','this product ?','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-10 13:28:53',NULL,NULL),(6,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','i have some beautiful flower... do you want?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-11 01:39:05',NULL,NULL),(7,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','again.','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-11 01:39:40',NULL,NULL),(8,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i want the purple WATER','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-11 02:03:03',NULL,''),(9,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','no...i dont sell it any more... do you want this ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-11 02:05:04',NULL,''),(11,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','i want the white one...','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-13 03:47:49',NULL,''),(12,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','how about the white falls','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 01:54:22',NULL,''),(13,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','no i want anoter one..','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-14 01:55:22',NULL,''),(14,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and one ','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 01:57:39',NULL,''),(15,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','another ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:01:41',NULL,''),(16,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','yes i have thi one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:06:18',NULL,''),(17,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and another one?','','2014-11-14 02:10:38',NULL,''),(18,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','this one ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:18:27',NULL,''),(19,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','this one ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:22:57',NULL,''),(20,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and this one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:27:05',NULL,''),(21,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and last one ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:27:49',NULL,''),(22,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','last one','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:28:40',NULL,''),(23,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','last one again','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-14 02:31:00',NULL,''),(24,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','first one ?','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:31:09',NULL,''),(25,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','wanna try this one','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:31:48',NULL,''),(26,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','i like this question item','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 02:32:11',NULL,NULL),(27,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','green one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:39:57',NULL,''),(28,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','again ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:40:06',NULL,''),(29,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','white one ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 12:40:14',NULL,''),(30,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','big one','','2014-11-14 12:40:25',NULL,NULL),(31,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','flower','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:40:56',NULL,NULL),(32,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','big question','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 12:41:16',NULL,NULL),(33,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','hello','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 12:45:06',NULL,NULL),(34,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','good','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 12:45:43',NULL,NULL),(35,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 12:47:38',NULL,''),(36,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','how about this one ?','','2014-11-14 12:49:27',NULL,NULL),(37,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','it is good ?','','2014-11-14 12:49:35',NULL,NULL),(38,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','or not?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:49:48',NULL,NULL),(39,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello again','','2014-11-14 12:51:36',NULL,''),(40,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 12:52:44',NULL,''),(41,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 12:58:59',NULL,''),(42,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','green plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 13:02:09',NULL,''),(43,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','this one ?','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 13:02:27',NULL,''),(44,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 13:02:36',NULL,''),(45,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:02:45',NULL,''),(46,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:06:22',NULL,''),(47,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hll','','2014-11-14 13:08:08',NULL,''),(48,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:08:23',NULL,''),(49,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','good morning','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 13:13:28',NULL,''),(50,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:14:06',NULL,''),(51,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','good morning everyone?','','2014-11-14 13:18:56',NULL,''),(52,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i want this falls','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-15 21:40:38',NULL,''),(53,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and a plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:40:54',NULL,''),(54,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','dont challenge my program...','','2014-11-15 21:46:05',NULL,NULL),(55,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','i do have this plant.. do you want','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:52:29',NULL,NULL),(56,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','and purple water... do you want','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-15 21:55:42',NULL,NULL),(57,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','and again green plant??','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:57:33',NULL,NULL),(58,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','do you want what??','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:57:55',NULL,NULL),(59,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','what ?','','2014-11-15 21:58:03',NULL,NULL),(60,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i want this white FALLS','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-15 21:58:33',NULL,''),(61,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','you want this ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:58:51',NULL,NULL),(62,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','and ?','','2014-11-15 21:59:50',NULL,''),(63,'yelp::pho-99-vietnamese-restaurant-franklin-park','alyss@qq.com','','hey...anyone here ?','','2014-11-16 02:55:09',NULL,NULL),(65,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','','hey... i want some water','','2014-11-16 22:00:37',NULL,'alyss@qq.com'),(66,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','','.','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-16 22:00:45',NULL,'alyss@qq.com'),(67,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','i want some green plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-16 22:02:52',NULL,'alyss@qq.com'),(68,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','i want banana','','2014-11-18 00:46:22',NULL,'alyss@qq.com'),(69,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','what do you want ?','','2014-11-18 00:46:47',NULL,'alyss@qq.com'),(70,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','alyss@qq.com','what do you want again ?','','2014-11-18 00:47:09',NULL,'alyss@qq.com'),(71,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','alyss@qq.com','is this one good for u ?','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-18 01:02:41',NULL,'alyss@qq.com'),(72,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','and this one ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-18 01:15:06',NULL,'alyss@qq.com'),(73,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','noting i have for u','','2014-11-18 01:15:15',NULL,'alyss@qq.com'),(74,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','no.... i want this water','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-18 01:17:25',NULL,'alyss@qq.com'),(75,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','and this water too','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-18 01:17:38',NULL,'alyss@qq.com'),(76,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','and this flower','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-18 01:17:53',NULL,'alyss@qq.com'),(77,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','','hello..','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-18 12:43:33',NULL,'alyss@qq.com'),(78,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','yes do you want this one ?','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-19 01:10:24',NULL,NULL),(79,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','wendy, i dont have his for this.. but another one','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-20 02:25:02',NULL,'alyss@qq.com'),(80,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','i want another one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-20 02:39:35',NULL,NULL),(90,'yelp::vietnam-cafe-restaurant-telford','wlingyu@gmail.com','','i dont like this one','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-20 13:26:20',NULL,NULL),(91,'yelp::vietnam-cafe-restaurant-telford','wlingyu@gmail.com','','it is kind of ungly','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-20 13:26:31',NULL,NULL),(96,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','how about this one ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-22 01:14:09',NULL,'alyss@qq.com'),(97,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','hello','','2014-11-22 01:18:10',NULL,NULL),(98,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','hello good morning','','2014-11-22 01:19:19',NULL,'alyss@qq.com'),(99,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','hello','','2014-11-22 01:20:24',NULL,'alyss@qq.com'),(100,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','alyss@qq.com','good morning','','2014-11-22 01:25:52',NULL,'alyss@qq.com'),(101,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','alyss@qq.com','do you want the purple wanter?','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-23 13:09:22',NULL,'alyss@qq.com'),(102,'yelp::pholicious-lawrence-township-2','alyss@qq.com','','hello, i want some jacket..','','2014-11-26 02:44:51','alyss@qq.com',NULL),(103,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','yes. what do you want ?','','2014-11-26 02:47:32',NULL,'alyss@qq.com'),(104,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','this one ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-26 02:47:48',NULL,'alyss@qq.com'),(105,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','white water ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-26 14:01:52',NULL,NULL),(106,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','yes. i want the water','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-26 18:08:55',NULL,'alyss@qq.com'),(107,'yelp::han-dynasty-philadelphia','wendy-tang@gmail.com','','hey, you have nothing here ?','','2014-11-27 00:13:28',NULL,NULL),(108,'yelp::30-burgers-princeton','alyss@qq.com','','nothing is here ?','','2014-11-27 00:15:47',NULL,NULL),(109,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','','no.. i want som water','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-27 01:23:42',NULL,'alyss@qq.com'),(110,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','i dont have this but another one','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-27 14:09:44',NULL,'alyss@qq.com'),(111,'yelp::vietnam-cafe-philadelphia','cy.tang@qq.com','alyss@qq.com','do you want some flower ?','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-27 14:10:15',NULL,'alyss@qq.com'),(112,'yelp::vietnam-palace-philadelphia','lingyu-wang@gmail.com','','hello... do you have something here ?','','2014-11-27 17:16:02','lingyu-wang@gmail.com','alyss@qq.com'),(113,'yelp::vietnam-palace-philadelphia','lingyu-wang@gmail.com','','hello... are you good?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-27 17:19:22',NULL,'alyss@qq.com'),(114,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','do you hear me ?','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-27 17:22:34',NULL,'alyss@qq.com'),(121,'yelp::pholicious-lawrence-township-2','alyss@qq.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-11-27 21:57:53','alyss@qq.com',NULL),(122,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-11-27 21:58:09',NULL,'alyss@qq.com'),(123,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','','good morning.. i want some water here lke this','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-27 21:58:50',NULL,''),(124,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','alyss@qq.com','ok c\'mon','','2014-11-27 21:59:28',NULL,''),(125,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','[system]','talk was closed by alyss@qq.com',NULL,'2014-11-27 21:59:34',NULL,'alyss@qq.com');
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
INSERT INTO `t_shopownership` VALUES ('alyss@qq.com','yelp::vietnam-cafe-philadelphia','this is my shop','/images/93E6550AC77971306A661EF82E69AEC5.png','approved'),('alyss@qq.com','yelp::vietnam-palace-philadelphia','this is my shop 2','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','approved'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-restaurant-telford','yes i am the owner','/images/93E6550AC77971306A661EF82E69AEC5.png','approved');
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
INSERT INTO `t_shopproducts` VALUES ('yelp::vietnam-cafe-philadelphia','beautiful FLOWER','$20','/images/D96B9B322B5422EC22C6C3953B0D90CA.png'),('yelp::vietnam-cafe-philadelphia','dirt WATER','$10','/images/93E6550AC77971306A661EF82E69AEC5.png'),('yelp::vietnam-cafe-philadelphia','green PLANT','$20','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-philadelphia','purple water','$12','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('yelp::vietnam-cafe-philadelphia','white Water','$1.1','/images/CBC62B902DB1452C6FCBB310407E2329.png'),('yelp::vietnam-cafe-restaurant-telford','green PLANT','$10','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-restaurant-telford','purple WATER','$20','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('yelp::vietnam-palace-philadelphia','beautiful FLOWER','$12','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-palace-philadelphia','purple Water','$10','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('yelp::vietnam-palace-philadelphia','white Water','$1.02','/images/CBC62B902DB1452C6FCBB310407E2329.png');
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
INSERT INTO `t_shops` VALUES ('yelp::30-burgers-princeton','30 Burgers','124 Nassau St, Princeton, NJ 08542','6094977570','http://s3-media2.fl.yelpcdn.com/bphoto/_Z-wXMgnfLASbOzjITZPgA/ms.jpg','It\'s a small store, but the burgers are delicious and the staff is super friendly. \n***If you are a Princeton student with a valid student ID then you get a...'),('yelp::han-dynasty-philadelphia','Han Dynasty','123 Chestnut St, Philadelphia, PA 19106','2159221888','http://s3-media4.fl.yelpcdn.com/bphoto/rpq-NWPdTQAi0fQM_TSS7w/ms.jpg','I happened upon this place by happenstance trying to kill time before meeting up with friends.  Their food and cocktails are simply amazing. Be sure to...'),('yelp::pho-99-vietnamese-restaurant-franklin-park','Pho 99 Vietnamese Restaurant','3151 State Rt 27,Unit k, Franklin Park, NJ 08823','7328211828','http://s3-media3.fl.yelpcdn.com/bphoto/hUrhSX8Ib_TOh_3PlXSwVA/ms.jpg','Came to this place because we were craving pho and there\'s not a real Vietnamese restaurant in Princeton. I was pleasantly surprised by the atmosphere of...'),('yelp::pho-vietnam-new-york','Pho Vietnam','87 Chrystie St, New York, NY 10002','2127750999','http://s3-media4.fl.yelpcdn.com/bphoto/KSyqF9tTrVOsqI9kNbeJ6w/ms.jpg','k legit best pho/vietnamese food in nyc hands down.\n\nEVERYONE GOING THROUGH YELP REVIEWS LATE AT NIGHT TO FIND THE BEST PHO IN MANHATTAN... YOU CAN STOP...'),('yelp::pholicious-lawrence-township-2','Pholicious','Quaker Bridge Mall,150 Quakerbridge Mall, Lawrence Township, NJ 08648','6097166268','http://s3-media1.fl.yelpcdn.com/bphoto/XAQQnxvKZMXNkC-5bLSVCw/ms.jpg','Great Pho for what it is. Is it the best ever? No. Is it convenient and close to home? Yes.  If you are looking for the quality you can get at a sit down...'),('yelp::smashburger-lawrence-twp-2','Smashburger','3321 Route 1, Lawrence TWP, NJ 08648','6095801846','http://s3-media1.fl.yelpcdn.com/bphoto/5NLlZZtCEafz-RNzCOHuyQ/ms.jpg','Today was grand opening free burger\nPlace was Clean and brand new \n\nTasty burger little salty but juicy and better then mc Donald\'s or bk  they have honest...'),('yelp::vietnam-cafe-philadelphia','Vietnam Cafe','816 S 47th St, Philadelphia, PA 19143','2157290260','http://s3-media4.fl.yelpcdn.com/bphoto/QeLK5-0UxVahDKn9jzrPeg/ms.jpg','I had never tasted \"real\" Vietnamese food prior to coming here, so my expectations and excitement were through the roof. \n\nThings seemed to be off to a very...'),('yelp::vietnam-cafe-restaurant-telford','Vietnam Cafe Restaurant','179 Penn Ave, Telford, PA 18969','2157233335','http://s3-media1.fl.yelpcdn.com/bphoto/4Ek3Pi6zujif9ialMFbsRA/ms.jpg','Stopped here on my way to a concert. Wow! So glad I did. \n\nVery friendly and efficient service. This will be one of my favorite restaurants when coming out...'),('yelp::vietnam-palace-philadelphia','Vietnam Palace','222 N 11th St, Philadelphia, PA 19107','2155929596','http://s3-media2.fl.yelpcdn.com/bphoto/vzeVcFXHXqmWpElHDXjYug/ms.jpg','I learned that Vietnam Palace is under new ownership so we ventured over last Friday night for dinner. We were all very impressed with the food, it was...'),('yelp::vietnam-restaurant-philadelphia-2','Vietnam Restaurant','221 N 11th St, Philadelphia, PA 19107','2155921163','http://s3-media4.fl.yelpcdn.com/bphoto/M6Qk5KoZLzWBp5shaGqh4w/ms.jpg','I came to Vietnam with my colleagues one evening after a long day at a client site. I had heard good things about Vietnam so I \"strongly\" suggested that we...');
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
INSERT INTO `t_userfavorites` VALUES ('alyss@qq.com','yelp::30-burgers-princeton'),('alyss@qq.com','yelp::bobbys-burger-palace-princeton'),('alyss@qq.com','yelp::pholicious-lawrence-township-2'),('alyss@qq.com','yelp::vietnam-cafe-philadelphia'),('alyss@qq.com','yelp::vietnam-cafe-restaurant-telford'),('alyss@qq.com','yelp::vietnam-palace-philadelphia'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-philadelphia'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-restaurant-telford'),('cy.tang@qq.com','yelp::30-burgers-princeton'),('cy.tang@qq.com','yelp::pholicious-lawrence-township-2'),('cy.tang@qq.com','yelp::smashburger-lawrence-twp-2'),('cy.tang@qq.com','yelp::vietnam-cafe-philadelphia'),('cy.tang@qq.com','yelp::vietnam-cafe-restaurant-telford'),('cy.tang@qq.com','yelp::vietnam-palace-philadelphia'),('lingyu-wang@gmail.com','yelp::vietnam-cafe-philadelphia'),('lingyu-wang@gmail.com','yelp::vietnam-cafe-restaurant-telford'),('lingyu-wang@gmail.com','yelp::vietnam-palace-philadelphia'),('qs.wang@qq.com','yelp::vietnam-cafe-philadelphia'),('wendy-tang@gmail.com','yelp::han-dynasty-philadelphia'),('wendy-tang@gmail.com','yelp::vietnam-cafe-philadelphia'),('wlingyu@gmail.com','yelp::pho-vietnam-new-york'),('wlingyu@gmail.com','yelp::vietnam-cafe-philadelphia'),('wlingyu@gmail.com','yelp::vietnam-cafe-restaurant-telford');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-27 22:02:13
