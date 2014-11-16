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
  `from_user_id` varchar(100) DEFAULT NULL,
  `text` varchar(500) NOT NULL,
  `image_url` varchar(100) DEFAULT NULL,
  `creation_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_messages`
--

LOCK TABLES `t_messages` WRITE;
/*!40000 ALTER TABLE `t_messages` DISABLE KEYS */;
INSERT INTO `t_messages` VALUES (4,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','hi there ?','','2014-11-10 13:28:42'),(5,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','this product ?','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-10 13:28:53'),(6,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','i have some beautiful flower... do you want?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-11 01:39:05'),(7,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','again.','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-11 01:39:40'),(8,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i want the purple WATER','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-11 02:03:03'),(9,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','no...i dont sell it any more... do you want this ?','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-11 02:05:04'),(10,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','','good morning.. i want to buy this falls water..','','2014-11-13 01:18:34'),(11,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','i want the white one...','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-13 03:47:49'),(12,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','how about the white falls','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 01:54:22'),(13,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','no i want anoter one..','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-14 01:55:22'),(14,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and one ','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 01:57:39'),(15,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','another ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:01:41'),(16,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','yes i have thi one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:06:18'),(17,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and another one?','','2014-11-14 02:10:38'),(18,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','this one ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:18:27'),(19,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','this one ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:22:57'),(20,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and this one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:27:05'),(21,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and last one ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 02:27:49'),(22,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','last one','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:28:40'),(23,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','last one again','/images/CBC62B902DB1452C6FCBB310407E2329.png','2014-11-14 02:31:00'),(24,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','first one ?','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:31:09'),(25,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','wanna try this one','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 02:31:48'),(26,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','i like this question item','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 02:32:11'),(27,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','green one','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:39:57'),(28,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','again ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:40:06'),(29,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','white one ','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 12:40:14'),(30,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','big one','','2014-11-14 12:40:25'),(31,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','flower','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:40:56'),(32,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','big question','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 12:41:16'),(33,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','hello','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 12:45:06'),(34,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','good','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-14 12:45:43'),(35,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 12:47:38'),(36,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','how about this one ?','','2014-11-14 12:49:27'),(37,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','it is good ?','','2014-11-14 12:49:35'),(38,'yelp::vietnam-palace-philadelphia','chuanyou.tang@gmail.com','','or not?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 12:49:48'),(39,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello again','','2014-11-14 12:51:36'),(40,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 12:52:44'),(41,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 12:58:59'),(42,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','green plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 13:02:09'),(43,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','this one ?','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 13:02:27'),(44,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-14 13:02:36'),(45,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:02:45'),(46,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:06:22'),(47,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hll','','2014-11-14 13:08:08'),(48,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:08:23'),(49,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','good morning','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-14 13:13:28'),(50,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','hello','','2014-11-14 13:14:06'),(51,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','good morning everyone?','','2014-11-14 13:18:56'),(52,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i want this falls','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-15 21:40:38'),(53,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','and a plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:40:54'),(54,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','','dont challenge my program...','','2014-11-15 21:46:05'),(55,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','i do have this plant.. do you want','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:52:29'),(56,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','and purple water... do you want','/images/FCFD9C749D958E5320C265C3BE2C1F21.png','2014-11-15 21:55:42'),(57,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','and again green plant??','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:57:33'),(58,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','do you want what??','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:57:55'),(59,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','what ?','','2014-11-15 21:58:03'),(60,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','','i want this white FALLS','/images/93E6550AC77971306A661EF82E69AEC5.png','2014-11-15 21:58:33'),(61,'yelp::vietnam-cafe-restaurant-telford','alyss@qq.com','chuanyou.tang@gmail.com','you want this ?','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-15 21:58:51'),(62,'yelp::vietnam-cafe-philadelphia','chuanyou.tang@gmail.com','alyss@qq.com','and ?','','2014-11-15 21:59:50'),(63,'yelp::pho-99-vietnamese-restaurant-franklin-park','alyss@qq.com','','hey...anyone here ?','','2014-11-16 02:55:09'),(64,'yelp::vietnam-cafe-philadelphia','wlingyu@gmail.com','alyss@qq.com','i wana this big question','/images/C3558989961E5704ACD10F4996B80C27.png','2014-11-16 13:23:03'),(65,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','','hey... i want some water','','2014-11-16 22:00:37'),(66,'yelp::vietnam-cafe-philadelphia','lingyu-wang@gmail.com','','.','/images/D96B9B322B5422EC22C6C3953B0D90CA.png','2014-11-16 22:00:45'),(67,'yelp::vietnam-cafe-philadelphia','wendy-tang@gmail.com','','i want some green plant','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png','2014-11-16 22:02:52');
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
INSERT INTO `t_shopproducts` VALUES ('yelp::vietnam-cafe-philadelphia','beautiful FLOWER','$20','/images/D96B9B322B5422EC22C6C3953B0D90CA.png'),('yelp::vietnam-cafe-philadelphia','green PLANT','$20','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-philadelphia','little FLOWER','$11','/images/D96B9B322B5422EC22C6C3953B0D90CA.png'),('yelp::vietnam-cafe-philadelphia','white FALLS','$10','/images/93E6550AC77971306A661EF82E69AEC5.png'),('yelp::vietnam-cafe-philadelphia','white Water','$1.1','/images/CBC62B902DB1452C6FCBB310407E2329.png'),('yelp::vietnam-cafe-philadelphia','white WATERS','$24','/images/CBC62B902DB1452C6FCBB310407E2329.png'),('yelp::vietnam-cafe-restaurant-telford','green PLANT','$10','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-cafe-restaurant-telford','purple WATER','$20','/images/FCFD9C749D958E5320C265C3BE2C1F21.png'),('yelp::vietnam-palace-philadelphia','beautiful FLOWER','$12','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-palace-philadelphia','big QUESTION','$.01','/images/C3558989961E5704ACD10F4996B80C27.png'),('yelp::vietnam-palace-philadelphia','green PLANT','$22.01','/images/121F6EC8713BFD3A7C6143FB2A0F5D4D.png'),('yelp::vietnam-palace-philadelphia','small question','$10','/images/C3558989961E5704ACD10F4996B80C27.png'),('yelp::vietnam-palace-philadelphia','white Water','$1.02','/images/CBC62B902DB1452C6FCBB310407E2329.png');
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
INSERT INTO `t_shops` VALUES ('yelp::pho-99-vietnamese-restaurant-franklin-park','Pho 99 Vietnamese Restaurant','3151 State Rt 27,Unit k, Franklin Park, NJ 08823','7328211828','http://s3-media3.fl.yelpcdn.com/bphoto/hUrhSX8Ib_TOh_3PlXSwVA/ms.jpg','Came to this place because we were craving pho and there\'s not a real Vietnamese restaurant in Princeton. I was pleasantly surprised by the atmosphere of...'),('yelp::pholicious-lawrence-township-2','Pholicious','Quaker Bridge Mall,150 Quakerbridge Mall, Lawrence Township, NJ 08648','6097166268','http://s3-media1.fl.yelpcdn.com/bphoto/XAQQnxvKZMXNkC-5bLSVCw/ms.jpg','Great Pho for what it is. Is it the best ever? No. Is it convenient and close to home? Yes.  If you are looking for the quality you can get at a sit down...'),('yelp::vietnam-cafe-philadelphia','Vietnam Cafe','816 S 47th St, Philadelphia, PA 19143','2157290260','http://s3-media4.fl.yelpcdn.com/bphoto/QeLK5-0UxVahDKn9jzrPeg/ms.jpg','I had never tasted \"real\" Vietnamese food prior to coming here, so my expectations and excitement were through the roof. \n\nThings seemed to be off to a very...'),('yelp::vietnam-cafe-restaurant-telford','Vietnam Cafe Restaurant','179 Penn Ave, Telford, PA 18969','2157233335','http://s3-media1.fl.yelpcdn.com/bphoto/4Ek3Pi6zujif9ialMFbsRA/ms.jpg','Stopped here on my way to a concert. Wow! So glad I did. \n\nVery friendly and efficient service. This will be one of my favorite restaurants when coming out...'),('yelp::vietnam-palace-philadelphia','Vietnam Palace','222 N 11th St, Philadelphia, PA 19107','2155929596','http://s3-media2.fl.yelpcdn.com/bphoto/vzeVcFXHXqmWpElHDXjYug/ms.jpg','I learned that Vietnam Palace is under new ownership so we ventured over last Friday night for dinner. We were all very impressed with the food, it was...');
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
INSERT INTO `t_userfavorites` VALUES ('alyss@qq.com','yelp::30-burgers-princeton'),('alyss@qq.com','yelp::bobbys-burger-palace-princeton'),('alyss@qq.com','yelp::pholicious-lawrence-township-2'),('alyss@qq.com','yelp::vietnam-cafe-philadelphia'),('alyss@qq.com','yelp::vietnam-cafe-restaurant-telford'),('alyss@qq.com','yelp::vietnam-palace-philadelphia'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-philadelphia'),('chuanyou.tang@gmail.com','yelp::vietnam-cafe-restaurant-telford'),('lingyu-wang@gmail.com','yelp::vietnam-cafe-philadelphia'),('lingyu-wang@gmail.com','yelp::vietnam-cafe-restaurant-telford'),('lingyu-wang@gmail.com','yelp::vietnam-palace-philadelphia'),('wendy-tang@gmail.com','yelp::vietnam-cafe-philadelphia'),('wlingyu@gmail.com','yelp::vietnam-cafe-philadelphia');
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
INSERT INTO `t_users` VALUES ('alyss@qq.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('chuanyou.tang@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('lingyu-wang@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active'),('wendy-tang@gmail.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','active');
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

-- Dump completed on 2014-11-16 22:07:32
