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
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sText` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (57,'There can be a lot of usage of java this keyword. In java, this is a reference variable that refers to the current object.\r\n\r\nUsage of java this keyword\r\n\r\nHere is given the 6 usage of java this keyword.\r\n\r\nthis can be used to refer current class instance variable.\r\nthis can be used to invoke current class method (implicitly)\r\nthis() can be used to invoke current class constructor.\r\nthis can be passed as an argument in the method call.\r\nthis can be passed as argument in the constructor call.\r\nthis can be used to return the current class instance from the method.','admin'),(58,'In the previous chapters, you have learned to retrieve (and update) database data, using SQL.\r\n\r\nWhen SQL is used to display data on a web page, it is common to let web users input their own search values.\r\n\r\nSince SQL statements are text only, it is easy, with a little piece of computer code, to dynamically change SQL statements to provide the user with selected data:\r\n\r\nServer Code\r\ntxtUserId = getRequestString(\"UserId\");\r\ntxtSQL = \"SELECT * FROM Users WHERE UserId = \" + txtUserId;','admin'),(59,'Hello ! Welcome to My KnowledgeBook','lalitvchau'),(60,'The SQL SELECT TOP Clause\r\nThe SELECT TOP clause is used to specify the number of records to return.\r\n\r\nThe SELECT TOP clause can be very useful on large tables with thousands of records. Returning a large number of records can impact on performance.\r\n\r\nNote: Not all database systems support the SELECT TOP clause.\r\n\r\nSQL Server / MS Access Syntax\r\nSELECT TOP number|percent column_name(s)\r\nFROM table_name;','vivaan'),(61,'If a class have an entity reference, it is known as Aggregation. Aggregation represents HAS-A relationship.\r\n\r\nConsider a situation, Employee object contains many informations such as id, name, emailId etc. It contains one more object named address, which contains its own informations such as city, state, country, zipcode etc. as given below.\r\n\r\nclass Employee{  \r\nint id;  \r\nString name;  \r\nAddress address;//Address is a class  \r\n...  \r\n}  ','lalitvchau'),(62,'The final keyword in java is used to restrict the user. The java final keyword can be used in many context. Final can be:\r\n\r\nvariable\r\nmethod\r\nclass\r\nThe final keyword can be applied with the variables, a final variable that have no value it is called blank final variable or uninitialized final variable. It can be initialized in the constructor only. The blank final variable can be static also which will be initialized in the static block only. We will have detailed learning of these. Let\'s first learn the basics of final keyword.','vivaan'),(63,'The IN Operator\r\nThe IN operator allows you to specify multiple values in a WHERE clause.\r\n\r\nSQL IN Syntax\r\nSELECT column_name(s)\r\nFROM table_name\r\nWHERE column_name IN (value1,value2,...);\r\nDemo Database\r\nIn this tutorial we will use the well-known Northwind sample database.\r\n\r\nBelow is a selection from the \"Customers\" table:','admin'),(64,'The IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...); Demo Database In this tutorial we will use the well-known Northwind sample database. Below is a selection from the \"Customers\" table:','admin'),(65,'The IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...); Demo Database In this tutorial we will use the well-known Northwind sample database. Below is a selection from the \"Customers\" table:','vivaan'),(66,'Thanks For share knowledge','lalitvchau'),(67,'he IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_','lalitvchau'),(68,'Hello ! Welcome to My KnowledgeBook','lalitvchau'),(69,'Hey Man !','admin'),(70,'I am Aksh','aksha'),(71,'Mahesh is fool.. ','admin');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
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
