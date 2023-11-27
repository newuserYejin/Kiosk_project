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
-- Table structure for table `tb_menu_allegy_e`
--

DROP TABLE IF EXISTS `tb_menu_allegy_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu_allegy_e` (
  `Menu_Num` int DEFAULT NULL,
  `Allegy_Num` int DEFAULT NULL,
  KEY `Menu_Num` (`Menu_Num`),
  KEY `Allegy_Num` (`Allegy_Num`),
  CONSTRAINT `tb_menu_allegy_e_ibfk_1` FOREIGN KEY (`Menu_Num`) REFERENCES `tb_menu_e` (`Menu_Num`),
  CONSTRAINT `tb_menu_allegy_e_ibfk_2` FOREIGN KEY (`Allegy_Num`) REFERENCES `tb_allegy_e` (`Allegy_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu_allegy_e`
--

LOCK TABLES `tb_menu_allegy_e` WRITE;
/*!40000 ALTER TABLE `tb_menu_allegy_e` DISABLE KEYS */;
INSERT INTO `tb_menu_allegy_e` VALUES (102,2),(102,5),(103,1),(103,2),(105,2),(105,5),(106,2),(106,5),(107,2),(108,2),(108,5),(109,2),(109,5),(110,2),(110,5),(202,2),(202,13),(204,2),(205,2),(205,5),(206,2),(303,2),(304,13),(311,5),(312,11),(403,2),(408,2),(410,2),(501,1),(501,2),(501,5),(501,6),(501,13),(502,1),(502,2),(502,5),(502,6),(502,13),(503,1),(503,2),(503,5),(503,6),(503,10),(503,13),(504,1),(504,2),(504,5),(504,6),(505,6),(506,2),(506,6),(507,1),(507,2),(507,5),(507,6),(507,13),(508,1),(508,2),(508,5),(508,6),(508,13),(509,2),(509,5),(509,6),(510,2),(510,5),(510,6),(511,2),(511,5),(511,6),(512,1),(512,2),(512,5),(512,6),(512,10);
/*!40000 ALTER TABLE `tb_menu_allegy_e` ENABLE KEYS */;
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
