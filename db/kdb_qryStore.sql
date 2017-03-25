-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: kdb
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `qryStore`
--

DROP TABLE IF EXISTS `qryStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qryStore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qry` text NOT NULL,
  `qRslt` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qryStore`
--

LOCK TABLES `qryStore` WRITE;
/*!40000 ALTER TABLE `qryStore` DISABLE KEYS */;
INSERT INTO `qryStore` VALUES (37,'create table admin( id int);','The Number row 0 impacted !','admin'),(38,'insert into admin values(12)','The Number row 1 impacted !','admin'),(39,'select * from admin;','id	\n12	\n','lalitvchau'),(40,'select 8 from dummy;','Table \'userdb.dummy\' doesn\'t exist','vivaan'),(41,'select * from system','Table \'userdb.system\' doesn\'t exist','lalitvchau'),(42,'select * from admin;','id	\n12	\n','lalitvchau'),(43,'insert into admin values(12)','The Number row 1 impacted !','admin'),(44,'select * from admin;','id	\n12	\n12	\n','lalitvchau'),(45,'select * from admin;','id	\n12	\n12	\n','admin'),(46,'select * from admin;','id	\n12	\n12	\n','admin'),(47,'select * from admin;','id	\n12	\n12	\n','aksha'),(48,'insert into admin values(12);','The Number row 1 impacted !','admin'),(49,'insert into admin values(15);','The Number row 1 impacted !','admin'),(50,'select * from admin;','id	\n12	\n12	\n12	\n15	\n','admin'),(51,'select id from admin;','id	\n12	\n12	\n12	\n15	\n','admin');
/*!40000 ALTER TABLE `qryStore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-16  7:12:33
