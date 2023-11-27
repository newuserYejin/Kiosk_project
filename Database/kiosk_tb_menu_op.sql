CREATE DATABASE  IF NOT EXISTS `kiosk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kiosk`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kiosk
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_menu_op`
--

DROP TABLE IF EXISTS `tb_menu_op`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu_op` (
  `Menu_Num` int DEFAULT NULL,
  `Op_Num` int DEFAULT NULL,
  KEY `Menu_Num` (`Menu_Num`),
  KEY `Op_Num` (`Op_Num`),
  CONSTRAINT `tb_menu_op_ibfk_1` FOREIGN KEY (`Menu_Num`) REFERENCES `tb_menu` (`Menu_Num`),
  CONSTRAINT `tb_menu_op_ibfk_2` FOREIGN KEY (`Op_Num`) REFERENCES `tb_op` (`Op_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu_op`
--

LOCK TABLES `tb_menu_op` WRITE;
/*!40000 ALTER TABLE `tb_menu_op` DISABLE KEYS */;
INSERT INTO `tb_menu_op` VALUES (101,1),(101,3),(101,5),(101,6),(101,7),(101,8),(101,9),(101,10),(101,11),(101,12),(102,1),(102,3),(102,5),(102,6),(102,7),(102,8),(102,9),(102,10),(102,11),(102,12),(103,2),(103,3),(103,5),(103,6),(103,7),(103,8),(103,9),(103,10),(103,11),(103,12),(104,1),(104,2),(104,3),(104,4),(104,5),(104,6),(104,7),(104,8),(104,9),(104,10),(104,11),(104,12),(105,1),(105,2),(105,3),(105,4),(105,5),(105,6),(105,7),(105,8),(105,9),(105,10),(105,11),(105,12),(106,1),(106,2),(106,3),(106,4),(106,5),(106,6),(106,7),(106,8),(106,9),(106,10),(106,11),(106,12),(107,1),(107,2),(107,3),(107,4),(107,5),(107,6),(107,7),(107,8),(107,9),(107,10),(107,11),(107,12),(108,1),(108,2),(108,3),(108,4),(108,5),(108,6),(108,7),(108,8),(108,9),(108,10),(108,11),(108,12),(109,1),(109,2),(109,3),(109,4),(109,5),(109,6),(109,7),(109,8),(109,9),(109,10),(109,11),(109,12),(110,1),(110,2),(110,3),(110,4),(110,5),(110,6),(110,7),(110,8),(110,9),(110,10),(110,11),(110,12),(111,1),(111,3),(111,4),(111,5),(111,6),(111,7),(111,8),(111,9),(111,10),(111,11),(111,12),(112,2),(112,3),(112,4),(112,5),(112,6),(112,7),(112,8),(112,9),(112,10),(112,11),(112,12),(201,2),(201,3),(201,5),(201,6),(201,7),(201,8),(201,9),(201,10),(201,11),(201,12),(202,1),(202,2),(202,3),(202,5),(202,6),(202,7),(202,8),(202,9),(202,10),(202,11),(202,12),(203,2),(203,3),(203,4),(203,5),(203,6),(203,7),(203,8),(203,9),(203,10),(203,11),(203,12),(204,1),(204,2),(204,3),(204,4),(204,5),(204,6),(204,7),(204,8),(204,9),(204,10),(204,11),(204,12),(205,1),(205,2),(205,3),(205,4),(205,5),(205,6),(205,7),(205,8),(205,9),(205,10),(205,11),(205,12),(206,1),(206,2),(206,3),(206,4),(206,5),(206,6),(206,7),(206,8),(206,9),(206,10),(206,11),(206,12),(207,2),(207,3),(207,4),(207,5),(207,6),(207,7),(207,8),(207,9),(207,10),(207,11),(207,12),(208,2),(208,3),(208,4),(208,5),(208,6),(208,7),(208,8),(208,9),(208,10),(208,11),(208,12),(209,2),(209,3),(209,4),(209,5),(209,6),(209,7),(209,8),(209,9),(209,10),(209,11),(209,12),(210,2),(210,3),(210,4),(210,5),(210,6),(210,7),(210,8),(210,9),(210,10),(210,11),(210,12),(211,2),(211,3),(211,4),(211,5),(211,6),(211,7),(211,8),(211,9),(211,10),(211,11),(211,12),(301,1),(301,2),(301,3),(301,4),(301,5),(301,6),(301,7),(301,8),(301,9),(301,10),(301,11),(301,12),(302,1),(302,2),(302,3),(302,4),(302,5),(302,6),(302,7),(302,8),(302,9),(302,10),(302,11),(302,12),(303,1),(303,2),(303,3),(303,4),(303,5),(303,6),(303,7),(303,8),(303,9),(303,10),(303,11),(303,12),(304,1),(304,3),(304,4),(304,5),(304,6),(304,7),(304,8),(304,9),(304,10),(304,11),(304,12),(305,1),(305,3),(305,4),(305,5),(305,6),(305,7),(305,8),(305,9),(305,10),(305,11),(305,12),(306,1),(306,3),(306,4),(306,5),(306,6),(306,7),(306,8),(306,9),(306,10),(306,11),(306,12),(307,1),(307,3),(307,4),(307,5),(307,6),(307,7),(307,8),(307,9),(307,10),(307,11),(307,12),(308,1),(308,2),(308,3),(308,4),(308,5),(308,6),(308,7),(308,8),(308,9),(308,10),(308,11),(308,12),(309,1),(309,2),(309,3),(309,4),(309,5),(309,6),(309,7),(309,8),(309,9),(309,10),(309,11),(309,12),(310,1),(310,2),(310,3),(310,4),(310,5),(310,6),(310,7),(310,8),(310,9),(310,10),(310,11),(310,12),(311,2),(311,3),(311,4),(311,5),(311,6),(311,7),(311,8),(311,9),(311,10),(311,11),(311,12),(312,2),(312,3),(312,4),(312,5),(312,6),(312,7),(312,8),(312,9),(312,10),(312,11),(312,12),(401,2),(401,3),(401,5),(401,6),(401,7),(401,8),(401,9),(401,10),(401,11),(401,12),(402,2),(402,3),(402,5),(402,6),(402,7),(402,8),(402,9),(402,10),(402,11),(402,12),(403,2),(403,3),(403,5),(403,6),(403,7),(403,8),(403,9),(403,10),(403,11),(403,12),(404,2),(404,3),(404,5),(404,6),(404,7),(404,8),(404,9),(404,10),(404,11),(404,12),(405,2),(405,3),(405,5),(405,6),(405,7),(405,8),(405,9),(405,10),(405,11),(405,12),(406,2),(406,3),(406,5),(406,6),(406,7),(406,8),(406,9),(406,10),(406,11),(406,12),(407,2),(407,3),(407,5),(407,6),(407,7),(407,8),(407,9),(407,10),(407,11),(407,12),(408,2),(408,3),(408,5),(408,6),(408,7),(408,8),(408,9),(408,10),(408,11),(408,12),(409,2),(409,3),(409,5),(409,6),(409,7),(409,8),(409,9),(409,10),(409,11),(409,12),(410,2),(410,3),(410,5),(410,6),(410,7),(410,8),(410,9),(410,10),(410,11),(410,12),(411,2),(411,3),(411,5),(411,6),(411,7),(411,8),(411,9),(411,10),(411,11),(411,12),(305,2),(306,2),(307,2);
/*!40000 ALTER TABLE `tb_menu_op` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 21:29:14
