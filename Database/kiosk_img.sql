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
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `img` (
  `Img_num` int NOT NULL,
  `Picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Img_num`),
  CONSTRAINT `menu` FOREIGN KEY (`Img_num`) REFERENCES `tb_menu_e` (`Menu_Num`),
  CONSTRAINT `Menu_Num` FOREIGN KEY (`Img_num`) REFERENCES `tb_menu` (`Menu_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `img`
--

LOCK TABLES `img` WRITE;
/*!40000 ALTER TABLE `img` DISABLE KEYS */;
INSERT INTO `img` VALUES (101,'./image_path/Espresso.png'),(102,'./image_path/Espresso Con panna.png'),(103,'./image_path/Affogato.png'),(104,'./image_path/Caffe Americano.png'),(105,'./image_path/Caffe Einspanner.png'),(106,'./image_path/Caffe Latte.png'),(107,'./image_path/Cappuccino.png'),(108,'./image_path/Caffe Mocha.png'),(109,'./image_path/Vanilla Latte.png'),(110,'./image_path/Caramel Macchiato.png'),(111,'./image_path/Drip Coffee.png'),(112,'./image_path/Cold Brew Coffee.png'),(201,'./image_path/Apricot Juice.png'),(202,'./image_path/BlackSugar Latte.png'),(203,'./image_path/Bluelemon Ade.png'),(204,'./image_path/Chocolate Latte.png'),(205,'./image_path/Coconut Latte.png'),(206,'./image_path/Greentea Latte.png'),(207,'./image_path/Lemon Ade.png'),(208,'./image_path/Mojito Ade.png'),(209,'./image_path/Orange Juice.png'),(210,'./image_path/pineapple Juice.png'),(211,'./image_path/Strawberry Latte.png'),(301,'./image_path/Green Tea.png'),(302,'./image_path/Earl Grey Tea.png'),(303,'./image_path/Milk Tea.png'),(304,'./image_path/Lemon Ginger Tea.png'),(305,'./image_path/Lemon Tea.png'),(306,'./image_path/GrapeFruit Tea.png'),(307,'./image_path/Citron Tea.png'),(308,'./image_path/Korean plum Tea.png'),(309,'./image_path/Chamomile Tea.png'),(310,'./image_path/Peppermint Tea.png'),(311,'./image_path/Lemon Iced Tea.png'),(312,'./image_path/Peach Iced Tea.png'),(401,'./image_path/Abocado Smoothie.png'),(402,'./image_path/Blueberry Smoothie.png'),(403,'./image_path/BlueberryYogurt Smoothie.png'),(404,'./image_path/Chocolate Smoothie.png'),(405,'./image_path/Dragonfruits Smoothie.png'),(406,'./image_path/Kiwi Smoothie.png'),(407,'./image_path/Manggo Smoothie.png'),(408,'./image_path/PlainYogurt Smoothie.png'),(409,'./image_path/Strawberry Smoothie.png'),(410,'./image_path/StrawberryYogurt Smoothie.png'),(411,'./image_path/Vanilla Smoothie.png'),(501,'./image_path/Chocolate Cake.png'),(502,'./image_path/Cheese Cake.png'),(503,'./image_path/Tiramisu.png'),(504,'./image_path/Chocolate Macaroon.png'),(505,'./image_path/StrawBerry Macaroon.png'),(506,'./image_path/Vanilla Macaroon.png'),(507,'./image_path/Chocolate Cookie.png'),(508,'./image_path/White Chocolate Macadamia Cookie.png'),(509,'./image_path/Plain Bagel.png'),(510,'./image_path/Blueberry Bagel.png'),(511,'./image_path/Plain Croiffle.png'),(512,'./image_path/Croque Monsieur.png');
/*!40000 ALTER TABLE `img` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 21:29:15
