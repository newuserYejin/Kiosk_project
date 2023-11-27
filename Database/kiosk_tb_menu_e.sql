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
-- Table structure for table `tb_menu_e`
--

DROP TABLE IF EXISTS `tb_menu_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu_e` (
  `Menu_Num` int NOT NULL,
  `Menu_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Menu_Explan` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tag` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Menu_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu_e`
--

LOCK TABLES `tb_menu_e` WRITE;
/*!40000 ALTER TABLE `tb_menu_e` DISABLE KEYS */;
INSERT INTO `tb_menu_e` VALUES (101,'Espresso','2500','Espresso is coffee uses high pressure to brew finely ground beans with a small amount of hot water.','#Espresso'),(102,'Espresso Con panna','3000','Coffee made by mixing espresso with whipped cream in a 1:1 ratio and topping it with whipped cream.','#Espresso #Whipped cream'),(103,'Affogato','4000','A type of sweet yet bitter coffee made by topping vanilla-flavored ice cream with espresso.','#Espresso'),(104,'Caffe Americano','3000','Coffee made by diluting espresso with water, the most popular menu among Koreans','#Americano'),(105,'Caffe Einspanner','5000','It is also called Vienna coffee, a type of coffee made with whipped cream on top of Cafe Americano.','#Americano #Whipped cream'),(106,'Caffe Latte','4000','A type of coffee made by mixing espresso with steamed milk, a mild, bitter coffee','#Espresso #Milk'),(107,'Cappuccino','4000','Cappuccino is a strong coffee mixed with milk and topped with milk foam, bolder than a café latte.','#Espresso #Milk #Milk foam'),(108,'Caffe Mocha','4500','Sweet coffee made by adding milk and chocolate syrup or sauce to espresso','#Espresso #Milk #Chocolate syrup #Whipped cream'),(109,'Vanilla Latte','4500','Coffee with the bitter taste of coffee and the flavor of vanilla syrup by adding vanilla syrup to cafe latte','#Espresso #Milk #Vanila syrup'),(110,'Caramel Macchiato','4500','Caramel macchiato is made by combining espresso with steamed milk and sweet caramel.','#Espresso #Milk #Caramel syrup'),(111,'Drip Coffee','3500','Coffee brewed slowly by passing ground coffee beans through cold water through a strainer.','#Drip'),(112,'Cold Brew Coffee','3800','Coffee that is brewed slowly by passing ground coffee beans through hot water through a strainer.','#Cold Brew'),(201,'Apricot Juice','4200','Juice made from high-sugar apricots','#Apricots #Juice'),(202,'BlackSugar Latte','3300','A drink made from the combination of strong black sugar and soft milk','#Black Sugar #Milk #Juice'),(203,'Bluelemon Ade','3800','A refreshing and sweet bluelemon drink','#Bluelemon #Sweet #Ade #Carbonic acid'),(204,'Chocolate Latte','3700','An impressive drink with strong chocolate and soft milk','#Chocolate #Milk #Sweet'),(205,'Coconut Latte','3700','A drink that is expected to meet sweet coconut and coffee','#Coconunt #Milk #Coffee'),(206,'Greentea Latte','3700','A drink that adds green tea and milk to give you a soft, luxurious taste','#GreenTea #Milk'),(207,'Lemon Ade','3800','A refreshing and pungent drink with a scent of lemon','#Lemon #Refreshig #Ade #Carbonic acid'),(208,'Mojito Ade','3800','A refreshing sweet drink with a refreshing lime scent','#Lime #Refreshig #Ade #Carbonic acid'),(209,'Orange Juice','4200','Orange juice with fresh orange juice','#Orange #Fresh #Juicy #Juice'),(210,'pineapple Juice','4200','A juice that adds flavor and aroma to pineapple juice','#pineapple #Juicy #Juice'),(211,'Strawberry Latte','3800','Drink with sweet strawberry pulp','#Strawberry #Pulp #Milk'),(301,'Green Tea','3500','With young green tea leaves, it\'s savory and not surprising','#Green Tea'),(302,'Earl Grey Tea','2500','Tea made by adding bergamot oil to black tea made by fermenting tea leaves','#Earl Grey #Black tea'),(303,'Milk Tea','4000','A soft milk tea that adds the aroma of black tea to milk','#Black Tea #Milk'),(304,'Lemon Ginger Tea','3800','Tea with lemon and honey to enjoy the unique taste of ginger','#Lemon #Ginger'),(305,'Lemon Tea','3500','Fresh fruit tea with lemon extract','#Lemon'),(306,'GrapeFruit Tea','3500','Fruit tea with grapefruit syrup','#GrapeFruit'),(307,'Citron Tea','3500','Fruit tea with citron syrup','#Citron'),(308,'Korean plum Tea','3000','A tea made by adding water to sweet korean plum extract that combines sourness and sweetness.','#Korean plum'),(309,'Chamomile Tea','2500','A fragrant herbal tea brewed with chamomile that helps with anxiety and insomnia','#Chamomile #Herb'),(310,'Peppermint Tea','2500','A fragrant herbal tea brewed with peppermint that aids digestion and eases breathing.','#Peppermint #Herb '),(311,'Lemon Iced Tea','2800','Refreshing tea made with sour lemon and ice','#Lemon #Iced tea'),(312,'Peach Iced Tea','2800','Refreshing tea made with sweet peaches filled with ice','#Peach #Iced tea'),(401,'Abocado Smoothie','4400','A smoothie with a soft taste using ripe avocados','#Abocado #Ice #Smootie'),(402,'Blueberry Smoothie','3800','Blueberry smoothie with a sweet and sour taste','#Blueberry #Sweet  #Sour #Smootie'),(403,'BlueberryYogurt Smoothie','3900','BlueberrySweet smoothie with yogurt','#Blueberry #Yogurt #Sweet #Smootie'),(404,'Chocolate Smoothie','3700','A smoothie with an impressive soft chocolate flavor','#Chocolate #Sweet  #Smootie'),(405,'Dragonfruits Smoothie','4400','It\'s a smoothie with a soft sweet taste and a dragon fruit flavor','#DragonFuit #Ice #Smootie'),(406,'Kiwi Smoothie','4200','Smoothies that match the sweetness of ripe kiwis','#Kiwi #Sweet  #Ice #Smootie'),(407,'Manggo Smoothie','3900','A smoothie made by grinding sweet mango pulp','#Mango #Pulp #Ice #Smootie'),(408,'PlainYogurt Smoothie','3900','It\'s a smoothie that you can enjoy to enjoy','#Yogurt #Ice #Smootie'),(409,'Strawberry Smoothie','3800','Smoothie with the original strawberry flavor','#Strawberry #Pulp #Ice #Smootie'),(410,'StrawberryYogurt Smoothie','3900','Soft and sweet smoothie with strawberries and yogurt','#Strawberry #Yogurt #Ice #Smootie'),(411,'Vanilla Smoothie','3800','You can taste the soft taste of vanilla and it\'s not too much for everyone','#Vanilla #Soft #Smootie'),(501,'Chocolate Cake','4500','It\'s a sweet cake where you can taste the original flavor of chocolate','#Chocolate'),(502,'Cheese Cake','4500','A cake that makes the rich cheese taste soft','#Cheese'),(503,'Tiramisu','5500','A cake that goes well with soft cream cheese and bitter cocoa powder','#Cream Cheese #Cocoa Powder'),(504,'Chocolate Macaroon','2500','Macaroons that can feel the sweetness of chocolate','#Chocolate Cream #Crispy'),(505,'StrawBerry Macaroon','2500','Macarons that can feel the freshness and sweetness of strawberries','#Strawberry Jam #Crispy'),(506,'Vanilla Macaroon','2500','Macaroon with a strong vanilla scent','#Vanilla Cream #Crispy'),(507,'Chocolate Cookie','1500','Moisturizing cookies that give you the rich taste of chocolate chips','#Chocolate Chip'),(508,'Macadamia Cookie','1500','Moisturizing cookies with savory macadamia and white chocolate','#White Chocolate #Macadamia'),(509,'Plain Bagel','2700','A light and chewy bagel that can be used as a meal replacement','#Substitute For Meal'),(510,'Blueberry Bagel','3000','A bagel filled with the scent of blueberries that can be used as a meal replacement','#Blueberry #Substitute For Meal'),(511,'Plain Croiffle','3500','Bread baked crispy with a croissant full of butter flavor','#Croissant #Maple Syrup'),(512,'Croque Monsieur','4500','A sandwich with cheddar cheese, ham, corn, etc. between breads that can be used as a substitute for meals','#Ham #Cheese #Corn #Substitute For Meal');
/*!40000 ALTER TABLE `tb_menu_e` ENABLE KEYS */;
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
