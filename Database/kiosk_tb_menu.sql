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
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu` (
  `Menu_Num` int NOT NULL,
  `Menu_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Menu_Explan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tag` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Menu_Num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (101,'에스프레소','2500','곱게 간 원두에 고온 고압으로 소량의 물을 투과하여 만드는 커피, 대부분의 커피는 에스프레소를 바탕으로 만들어진다','#에스프레소'),(102,'에스프레소 콘파냐','3000','에스프레소에 휘핑크림을 1 : 1로 섞은 후 그 위에 휘핑크림을 올려 만든 커피','#에스프레소 #휘핑크림'),(103,'아포카토','4000','바닐라 맛의 아이스크림에 에스프레소를 얹어내어 먹는 달달하면서도 쌉쌀한 커피의 한 종류','#에스프레소'),(104,'카페 아메리카노','3000','에스프레소에 물을 희석하여 만든 커피, 한국인에게 인기가 가장 많은 메뉴','#아메리카노'),(105,'카페 아인슈페너','5000','카페 아메리카노 위에 휘핑크림을 얹은 커피의 한 종류 비엔나커피라고도 불린다','#아메리카노 #휘핑크림'),(106,'카페 라떼','4000','에스프레소에 스팀으로 데운 우유를 넣은 커피의 한 종류, 부드럽고 쌉쌀한 커피','#에스프레소 #우유'),(107,'카푸치노','4000','에스프레소에 우유를 섞은 후 그 위에 우유 거품을 올려 만든 커피, 카페 라떼보다 커피 보연의 맛은 더 진하다','#에스프레소 #우유 #우유 거품'),(108,'카페 모카','4500','에스프레소에 우유와 초콜릿 시럽 또는 소스를 넣어 만드는 달콤한 커피','#에스프레소 #우유 #초콜릿 시럽 #휘핑크림'),(109,'바닐라 라떼','4500','카페 라테에 바닐라 시럽을 넣어 커피의 쓴맛과 바닐라 시럽의 향미가 느껴지는 커피','#에스프레소 #우유 #바닐라 시럽'),(110,'캐러멜 마끼아또','4500','스팀 우유에 에스프레소를 부어 만드는 커피, 처음에는 커피의 진한 맛과 이후 우유의 부드러운 맛이 캐러멜의 달콤함이 모두 가진 커피','#에스프레소 #우유 #캐러멜 시럽'),(111,'드립 커피','3500','분쇄한 원두를, 거름망을 이용하여 냉수를 통과시켜 천천히 내리는 커피','#드립'),(112,'콜드 브루 커피','3800','분쇄한 원두를, 거름망을 이용하여 온수를 통과시켜 천천히 내리는 커피','#콜드 브루'),(201,'살구 주스','4200','당도 높은 살구를 사용해서 만든 주스','#살구 #주스'),(202,'흑당라떼','3300','진한 흑당과 부드러운 우유의 만남으로 만들어지는 음료','#흑당 #우유 #주스'),(203,'블루레몬 에이드','3800','레몬에 청량함에 달달함을 더 더한 톡쏘는 음료','#블루레몬 #달달 #에이드 #탄산'),(204,'초코 라떼','3700','진한 초콜릿과 부드러운 우유의 만남이 인상적인 음료','#초코 #우유 #달달함'),(205,'코코넛 라떼','3700','달콤한 코코넛과 커피의 만남이 기대되는 음료','#코코넛 #우유 #커피'),(206,'녹차라떼','3700','녹차와 우유가 더해져 부드러운 고급스러움을 맛볼 수 있는 음료','#녹차 #우유'),(207,'레몬에이드','3800','레몬 향이 퍼지며 상큼하고 톡 쏘는 음료','#레몬 #상큼 #에이드 #탄산'),(208,'라임에이드','3800','상큼한 라임향기가 퍼지는 상큼 달달한 음료','#라임 #상큼 #에이드 #탄산'),(209,'오렌지 주스','4200','신선한 오렌지를 착즙한 오렌지 주스','#오렌지 #신선한 #착즙 #주스'),(210,'파인애플 주스','4200','파인애플을 착즙하여 맛과 향을 더한 주스 ','#파인애플 #착즙 #주스'),(211,'딸기 라떼','3800','달콤한 딸기 과육과 함께 즐기는 음료','#딸기 #과육 #우유'),(301,'녹차','3500','어린 녹차잎으로 우려 떫지 않고 고소한 녹차','#녹차'),(302,'얼그레이','2500','찻잎을 발효하여 만든 홍차에 베르가모트 오일을 첨가하여 만든 차','#얼그레이 #홍차 #베르가모트 오일'),(303,'밀크티','4000','우유에 홍차의 향긋함을 더한 부드러운 밀크티','#홍차 #우유'),(304,'레몬 생강차','3800','생강 특유의 맛을 레몬과 꿀로 잡아주어 상큼 달콤하게 즐기는 차','#레몬 #생강'),(305,'레몬차','3500','레몬 청이 들어가 상큼하게 즐기는 과일 차','#레몬'),(306,'자몽차','3500','자몽 청이 들어가 상큼 달콤하게 즐기는 과일 차','#자몽'),(307,'유자차','3500','유자 청이 들어가 향긋하게 즐기는 과일 차','#유자'),(308,'매실차','3000','신맛과 단맛이 어우러진 달콤한 매실청에 물을 넣어 만든 차','#매실'),(309,'캐모마일','2500','불안함과 불면증에 도움을 주는 캐모마일로 우려낸 향기로운 허브차','#캐모마일 #허브'),(310,'페퍼민트','2500','소화를 돕고 호흡 완화에 효과가 있는 페퍼민트로 우려낸 향기로운 허브차','#페퍼민트 #허브'),(311,'레몬 아이스티','2800','새콤한 레몬에 얼음 가득 넣어 만든 시원한 차','#레몬 #아이스티'),(312,'복숭아 아이스티','2800','달콤한 복숭아에 얼음 가득 넣어 만든 시원한 차','#복숭아 #아이스티'),(401,'아보카도 스무디','4400','잘 익은 아보카도를 사용해 부드러운 맛이 특징인 스무디','#아보카도 #얼음 #스무디'),(402,'블루베리 스무디','3800','새콤달콤한 맛이 매력적인 블루베리를 살리며 부드러움이 추가된 스무디','#블루베리 #새콤달콤 #얼음 #스무디'),(403,'베리 요거트 스무디','3900','블루베리와 요거트가 함께하는 달콤한 스무디','#블루베리 #요거트 #달콤 #스무디'),(404,'초코 스무디','3700','부드러운 초콜릿의 맛이 인상적인 스무디','#초코 #달달 #스무디'),(405,'용과 스무디','4400','은은한 단맛이 매력적인 용과의 맛을 느낄 수 잇는 스무디','#용과 #은은한 #스무디'),(406,'키위 스무디','4200','잘 익은 키위의 달몬함이 어울리는 스무디','#키위 #달달한 #얼음 #스무디'),(407,'망고 스무디','3900','달콤한 망고의 과육을 갈아 만든 스무디','#망고 #과육 #얼음 #스무디'),(408,'요거트 스무디','3900','요거트 그 자체의 맞을 즐길 수 있는 스무디','#요거트 #얼음 #스무디'),(409,'딸기 스무디','3800','딸기 본연의 맛을 살리며 얼음리 같이 씹히는 스무디','#딸기 #과육 #얼음 #스무디'),(410,'딸기 요거트 스무디','3900','딸기와 요거트가 함꼐해 부드럽고 달콤한 스무디','#딸기 #요거트 #얼음 #스무디'),(411,'바닐라 스무디','3800','바닐라의 부드러운 맛을 느낄 수 있고 모두에게 부담없는 음료','#바닐라 #부드러운 #스무디'),(501,'초코 케이크','4500','초콜릿 본연의 맛을 느낄 수 있는 달달한 케이크','#초코'),(502,'치즈 케이크','4500','진한 치즈의 맛을 부드럽게 느낄 수 있는 케이크','#치즈'),(503,'티라미수','5500','부드러운 크림치즈와 쌉싸름한 코코아 파우더의 조합이 잘 어울리는 케이크','#크림치즈 #코코아 파우더'),(504,'초코 마카롱','2500','초콜릿의 달달함을 느낄 수 있는 마카롱','#초코 크림 #바삭 #쫀득'),(505,'딸기 마카롱','2500','딸기의 상큼 달콤함을 느낄 수 있는 마카롱','#딸리 쨈 #바삭 #쫀득'),(506,'바닐라 마카롱','2500','진한 바닐라 향을 느낄 수 있는 마카롱','#바닐라 크림 #바삭 #쫀득'),(507,'초코 쿠기','1500','초코칩의 진한 맛을 느낄 수 있는 촉촉한 쿠키','#초코칩'),(508,'마카다미아 쿠키','1500','고소한 마카다미아와 화이트 초콜릿을 넣어 달달하게 즐기는 촉촉한 쿠키','#화이트 초코 #마카다미아'),(509,'플레인 베이글','2700','식사 대용으로 가능한 담백하고 쫄깃한 베이글','#식사 대용'),(510,'블루베리 베이글','3000','식사 대용으로 가능한 블루베리 향이 가득 퍼지는 베이글','#블루베리 #식사 대용'),(511,'크로플','3500','버터 풍미가 가득한 크루아상을 바삭하게 눌러 구운 빵','#크루아상 #메이플 시럽 #슈가파우더'),(512,'크로크무슈','4500','식빵 사이에 체다 치즈, 햄, 옥수수 등을 넣어 식사 대용으로 가능한 샌드위치','#햄 #치즈 #옥수수 #식사 대용');
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
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
