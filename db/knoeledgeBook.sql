-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: localhost    Database: kdb
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
-- Table structure for table `javaStore`
--

DROP TABLE IF EXISTS `javaStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `javaStore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qry` text,
  `rslt` text,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `javaStore`
--

LOCK TABLES `javaStore` WRITE;
/*!40000 ALTER TABLE `javaStore` DISABLE KEYS */;
INSERT INTO `javaStore` VALUES (1,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			   System.out.println(\"Sum =\"+(10+10));\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			   System.out.println(\"Sum =\"+(10+10));\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>Sum =20','admin'),(2,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =','admin'),(3,'class M{\r\n   public int m=10;\r\n}\r\npublic class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			      M obj = new M();\r\nSystem.out.println(obj.m);\r\n                             \r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : class M{\r\n   public int m=10;\r\n}\r\npublic class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			      M obj = new M();\r\nSystem.out.println(obj.m);\r\n                             \r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>10','admin'),(4,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =','admin');
/*!40000 ALTER TABLE `javaStore` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qryStore`
--

LOCK TABLES `qryStore` WRITE;
/*!40000 ALTER TABLE `qryStore` DISABLE KEYS */;
INSERT INTO `qryStore` VALUES (37,'create table admin( id int);','The Number row 0 impacted !','admin'),(38,'insert into admin values(12)','The Number row 1 impacted !','admin'),(39,'select * from admin;','id	\n12	\n','lalitvchau'),(40,'select 8 from dummy;','Table \'userdb.dummy\' doesn\'t exist','vivaan'),(41,'select * from system','Table \'userdb.system\' doesn\'t exist','lalitvchau'),(42,'select * from admin;','id	\n12	\n','lalitvchau'),(43,'insert into admin values(12)','The Number row 1 impacted !','admin'),(44,'select * from admin;','id	\n12	\n12	\n','lalitvchau'),(45,'select * from admin;','id	\n12	\n12	\n','admin'),(46,'select * from admin;','id	\n12	\n12	\n','admin'),(47,'select * from admin;','id	\n12	\n12	\n','aksha'),(48,'insert into admin values(12);','The Number row 1 impacted !','admin'),(49,'insert into admin values(15);','The Number row 1 impacted !','admin'),(50,'select * from admin;','id	\n12	\n12	\n12	\n15	\n','admin'),(51,'select id from admin;','id	\n12	\n12	\n12	\n15	\n','admin'),(52,'select id from admin;','id	\n12	\n12	\n12	\n15	\n','admin'),(53,'create table student(name varchar(20),address varchar(10));','The Number row 0 impacted !','aksh'),(54,'desc student;','Field	Type	Null	Key	Default	Extra	\nname	varchar(20)	YES		null		\naddress	varchar(10)	YES		null		\n','aksh'),(55,'desc student;','Field	Type	Null	Key	Default	Extra	\nname	varchar(20)	YES		null		\naddress	varchar(10)	YES		null		\n','aksh'),(56,'desc student;','Field	Type	Null	Key	Default	Extra	\nname	varchar(20)	YES		null		\naddress	varchar(10)	YES		null		\n','aksh'),(57,'create table student(id int, name archer(50),degree varchar(20));','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'archer(50),degree varchar(20))\' at line 1','admin'),(58,'create table student(id int, name varchar(50),degree varchar(20));','Table \'student\' already exists','admin'),(59,'desc student;','Field	Type	Null	Key	Default	Extra	\nname	varchar(20)	YES		null		\naddress	varchar(10)	YES		null		\n','admin'),(60,'insert into student values(\'ram\',\'Bangaloreâ??);','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'BangaloreÃ¢??)\' at line 1','admin'),(61,'insert into student values(\'ram\',â??Bangalor\');','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'??Bangalor\')\' at line 1','admin'),(62,'insert into student values(\'ram\',\'Bangalor\');','The Number row 1 impacted !','admin'),(63,'insert into student values(\'ram\',\'Bangalor\'),values(\'Aram\',\'Bangalor\'),values(\'Tram\',\'Bangalor\');','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'values(\'Aram\',\'Bangalor\'),values(\'Tram\',\'Bangalor\')\' at line 1','admin'),(64,'insert into student values(\'ram\',\'Bangalor\'),(\'Aram\',\'Bangalor\'),(\'Tram\',\'Bangalor\');','The Number row 3 impacted !','admin'),(65,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(66,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','heena'),(67,'create database lk;','The Number row 1 impacted !','heena'),(68,'select database kdb;','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'kdb\' at line 1','heena'),(69,'use database kdb;','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'database kdb\' at line 1','heena'),(70,'use kdb;','The Number row 0 impacted !','heena'),(71,'select * from users;','Table \'userdb.users\' doesn\'t exist','heena'),(72,'select * from kdb.users;','username	name	gender	password	city	\nadmin	KnowledgeBook	male	admin	Bangalore	\naksh	Akshatha	female	aksh	bangalore	\naksha	Akshatha R	female	java4aksh	City	\naksha06	aksh	female	aksha06	City	\ndipak	Deepak Kumar	male	dipak	City	\nheena	Heenakshi Parmar	female	heena	Bangalore	\nknowledgeBook	KnowledgeBook	male	knowledgeBook	City	\nRam	Ram	male	ram	City	\nvivaan	Vivaan Choudhary	male	vivaan	Bangalore	\n','heena'),(73,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(74,'\"application/vnd.ms-excel\"','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\"application/vnd.ms-excel\"\' at line 1','admin'),(75,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(76,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(77,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(78,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(79,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(80,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(81,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(82,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(83,'select * from student;','name	address	\nram	Bangalor	\nram	Bangalor	\nAram	Bangalor	\nTram	Bangalor	\n','admin'),(84,'se','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'se\' at line 1','admin'),(85,'sf','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'sf\' at line 1','admin'),(86,'gfgf','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'gfgf\' at line 1','admin'),(87,'h','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'h\' at line 1','admin'),(88,'df','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'df\' at line 1','admin'),(89,'fed','You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'fed\' at line 1','admin');
/*!40000 ALTER TABLE `qryStore` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (57,'There can be a lot of usage of java this keyword. In java, this is a reference variable that refers to the current object.\r\n\r\nUsage of java this keyword\r\n\r\nHere is given the 6 usage of java this keyword.\r\n\r\nthis can be used to refer current class instance variable.\r\nthis can be used to invoke current class method (implicitly)\r\nthis() can be used to invoke current class constructor.\r\nthis can be passed as an argument in the method call.\r\nthis can be passed as argument in the constructor call.\r\nthis can be used to return the current class instance from the method.','admin'),(58,'In the previous chapters, you have learned to retrieve (and update) database data, using SQL.\r\n\r\nWhen SQL is used to display data on a web page, it is common to let web users input their own search values.\r\n\r\nSince SQL statements are text only, it is easy, with a little piece of computer code, to dynamically change SQL statements to provide the user with selected data:\r\n\r\nServer Code\r\ntxtUserId = getRequestString(\"UserId\");\r\ntxtSQL = \"SELECT * FROM Users WHERE UserId = \" + txtUserId;','admin'),(59,'Hello ! Welcome to My KnowledgeBook','lalitvchau'),(60,'The SQL SELECT TOP Clause\r\nThe SELECT TOP clause is used to specify the number of records to return.\r\n\r\nThe SELECT TOP clause can be very useful on large tables with thousands of records. Returning a large number of records can impact on performance.\r\n\r\nNote: Not all database systems support the SELECT TOP clause.\r\n\r\nSQL Server / MS Access Syntax\r\nSELECT TOP number|percent column_name(s)\r\nFROM table_name;','vivaan'),(61,'If a class have an entity reference, it is known as Aggregation. Aggregation represents HAS-A relationship.\r\n\r\nConsider a situation, Employee object contains many informations such as id, name, emailId etc. It contains one more object named address, which contains its own informations such as city, state, country, zipcode etc. as given below.\r\n\r\nclass Employee{  \r\nint id;  \r\nString name;  \r\nAddress address;//Address is a class  \r\n...  \r\n}  ','lalitvchau'),(62,'The final keyword in java is used to restrict the user. The java final keyword can be used in many context. Final can be:\r\n\r\nvariable\r\nmethod\r\nclass\r\nThe final keyword can be applied with the variables, a final variable that have no value it is called blank final variable or uninitialized final variable. It can be initialized in the constructor only. The blank final variable can be static also which will be initialized in the static block only. We will have detailed learning of these. Let\'s first learn the basics of final keyword.','vivaan'),(63,'The IN Operator\r\nThe IN operator allows you to specify multiple values in a WHERE clause.\r\n\r\nSQL IN Syntax\r\nSELECT column_name(s)\r\nFROM table_name\r\nWHERE column_name IN (value1,value2,...);\r\nDemo Database\r\nIn this tutorial we will use the well-known Northwind sample database.\r\n\r\nBelow is a selection from the \"Customers\" table:','admin'),(64,'The IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...); Demo Database In this tutorial we will use the well-known Northwind sample database. Below is a selection from the \"Customers\" table:','admin'),(65,'The IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...); Demo Database In this tutorial we will use the well-known Northwind sample database. Below is a selection from the \"Customers\" table:','vivaan'),(66,'Thanks For share knowledge','lalitvchau'),(67,'he IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_','lalitvchau'),(68,'Hello ! Welcome to My KnowledgeBook','lalitvchau'),(69,'Hey Man !','admin'),(70,'I am Aksh','aksha'),(71,'Mahesh is fool.. ','admin'),(72,'lalit','admin'),(73,'how to execute c program','aksh'),(74,'The IN Operator The IN operator allows you to specify multiple values in a WHERE clause. SQL IN Syntax SELECT column_name(s) FROM table_name WHERE column_name IN (value1,value2,...); Demo Database In this tutorial we will use the well-known Northwind sample database. Below is a selection from the \"Customers\" table:','aksh'),(75,'connect','admin'),(76,'AP University Alliance is a global program with more than 2900 member institutions in over 100 countries that aims to shape the future of higher education. The program exposes students and faculty to the latest SAP technologies and enables universities and vocational schools to integrate SAP software into their teaching by partnering to build technology skills.','admin'),(77,'I know java.','admin'),(78,'do u kniw =','aksh'),(79,'The NoSQL is a databse new language','aksh'),(80,'I am lalit','admin');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `password` varchar(50) NOT NULL,
  `city` varchar(45) DEFAULT 'City',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('07lalitvchau@gmail.com','Lalit V\'chau','male','java4lalit','City'),('admin','KnowledgeBook','male','admin','Bangalore'),('aksh','Akshatha','female','aksh','bangalore'),('aksha','Akshatha R','female','java4aksh','City'),('aksha06','aksh','female','aksha06','City'),('dipak','Deepak Kumar','male','dipak','City'),('heena','Heenakshi Parmar','female','heena','Bangalore'),('knowledgeBook','KnowledgeBook','male','knowledgeBook','City'),('Ram','Ram','male','ram','City'),('vivaan','Vivaan Choudhary','male','vivaan','Bangalore');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-23 14:51:06
