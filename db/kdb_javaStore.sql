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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `javaStore`
--

LOCK TABLES `javaStore` WRITE;
/*!40000 ALTER TABLE `javaStore` DISABLE KEYS */;
INSERT INTO `javaStore` VALUES (12,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        int num=12;\r\n                                System.out.println(num);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        int num=12;\r\n                                System.out.println(num);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>12','admin'),(13,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        Demo dm = new Demo();\r\n                                dm.msg();\r\n			}\r\n}\r\n//Write your class or Code here\r\nclass Demo{\r\n       public void msg(){\r\n               System.out.println(\"My Demo\");\r\n       }\r\n}					','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        Demo dm = new Demo();\r\n                                dm.msg();\r\n			}\r\n}\r\n//Write your class or Code here\r\nclass Demo{\r\n       public void msg(){\r\n               System.out.println(\"My Demo\");\r\n       }\r\n}					<br>Execution Result =<br><br>My Demo','admin'),(14,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =','lalitvchau'),(15,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =','vivaan'),(16,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       Systemm.out.println(8);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       Systemm.out.println(8);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Compiletation Error =<br>Main.java:4: error: package Systemm does not exist','lalitvchau'),(17,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       System.out.println(234);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       System.out.println(234);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>234','admin'),(18,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =','lalitvchau'),(19,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			      System.out.println(\"lalit\");\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			      System.out.println(\"lalit\");\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>lalit','admin'),(20,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       System.out.println(\"nadeem\");\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       System.out.println(\"nadeem\");\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>nadeem','admin'),(21,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       int a=10;\r\n                               System.out.println(a+a);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			       int a=10;\r\n                               System.out.println(a+a);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>20','aksha'),(22,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        int a=10*10;\r\n                                System.out.println(\"Mul : â??+a);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        int a=10*10;\r\n                                System.out.println(\"Mul : â??+a);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Compiletation Error =<br>Main.java:5: error: unclosed string literal','admin'),(23,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        int a=10*10; \r\n                               System.out.println(\"Mul : \"+a);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        int a=10*10; \r\n                               System.out.println(\"Mul : \"+a);\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Execution Result =<br><br>Mul : 100','admin'),(24,'public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        Mahesh m =new Mahesh();\r\n			}\r\n}\r\n//Write your class or Code here\r\n						','<p style=\"text-align:left;\">Querry : public class Main{\r\n			public static void main(String[] args){\r\n			         //call your class or Code here\r\n			        Mahesh m =new Mahesh();\r\n			}\r\n}\r\n//Write your class or Code here\r\n						<br>Compiletation Error =<br>Main.java:4: error: cannot find symbol','admin');
/*!40000 ALTER TABLE `javaStore` ENABLE KEYS */;
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
