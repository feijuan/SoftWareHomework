-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: softhome
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) NOT NULL,
  `collect_time` varchar(20) NOT NULL,
  `data` varchar(50) NOT NULL,
  `data_type` varchar(20) NOT NULL,
  PRIMARY KEY (`data_id`),
  KEY `sensor_id_idx` (`sensor_id`),
  CONSTRAINT `sensor_id` FOREIGN KEY (`sensor_id`) REFERENCES `sensor` (`sensor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,1,'2017-11-03 16:12:14','24.1','1'),(2,2,'2017-11-03 16:12:14','48.7','2'),(3,3,'2017-11-03 16:12:14','712','3'),(4,4,'2017-11-03 16:12:14','219.3','4'),(5,5,'2017-11-03 16:12:14','23','1'),(6,6,'2017-11-03 16:12:14','45.2','2'),(7,7,'2017-11-03 16:12:14','553','3'),(8,8,'2017-11-03 16:12:14','206.3','4'),(9,9,'2017-11-03 16:12:14','17.8','1'),(10,10,'2017-11-03 16:12:14','50.1','2'),(11,11,'2017-11-03 16:12:14','682.8','3'),(12,12,'2017-11-03 16:12:14','176.7','4');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `home_id` varchar(20) NOT NULL,
  `home_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`home_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES ('12345','我的家'),('370782199511282618',NULL),('370782199511282619',NULL);
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `idcard` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `owner_flag` int(11) NOT NULL,
  `home_id` varchar(20) DEFAULT NULL,
  `telphone` int(20) NOT NULL,
  PRIMARY KEY (`idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('\"123456\"','\"ddddd\"','\"çå¤§é¤\"',0,'\"123456\"',123456),('1234567','ddddd','李四',0,'123456',12345);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_id` varchar(20) NOT NULL,
  `room_type` int(11) NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `home_id_idx` (`home_id`),
  CONSTRAINT `room_home` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (2,'370782199511282618',1),(3,'370782199511282618',2),(4,'370782199511282618',3),(5,'370782199511282618',4);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor` (
  `sensor_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `sensor_type` varchar(20) NOT NULL,
  `buid_time` varchar(20) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `home_id` varchar(20) NOT NULL,
  PRIMARY KEY (`sensor_id`),
  KEY `romm_id_idx` (`room_id`),
  KEY `home_id_idx` (`home_id`),
  CONSTRAINT `sensor_home` FOREIGN KEY (`home_id`) REFERENCES `home` (`home_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sensor_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,2,'1','9:20','eee','370782199511282619'),(2,2,'2','9:20','eee','370782199511282619'),(3,2,'3','9:20','eee','370782199511282619'),(4,2,'4','9:20','eee','370782199511282619'),(5,3,'1','9:20','eee','370782199511282619'),(6,3,'2','9:20','eee','370782199511282619'),(7,3,'3','9:20','eee','370782199511282619'),(8,3,'4','9:20','eee','370782199511282619'),(9,4,'1','9:20','eee','370782199511282619'),(10,4,'2','9:20','eee','370782199511282619'),(11,4,'3','9:20','eee','370782199511282619'),(12,4,'4','9:20','eee','370782199511282619');
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sh_admin`
--

DROP TABLE IF EXISTS `sh_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sh_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12346 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sh_admin`
--

LOCK TABLES `sh_admin` WRITE;
/*!40000 ALTER TABLE `sh_admin` DISABLE KEYS */;
INSERT INTO `sh_admin` VALUES (12345,'张三','12345','18829502025');
/*!40000 ALTER TABLE `sh_admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-04 15:38:56
