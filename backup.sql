-- MySQL dump 10.13  Distrib 8.0.41, for macos14.7 (x86_64)
--
-- Host: localhost    Database: db_lesson
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'営業','2025-04-01 02:52:41','2025-04-01 02:52:41'),(2,'開発','2025-04-01 02:52:41','2025-04-01 02:52:41'),(3,'経理','2025-04-01 02:52:41','2025-04-01 02:52:41'),(4,'人事','2025-04-01 02:52:41','2025-04-01 02:52:41'),(5,'情報システム','2025-04-01 02:52:41','2025-04-01 02:52:41');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `person_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `department_id` int(10) unsigned DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL COMMENT '1が男、2が女',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (27,'田中ゆうこ','tanaka@beyond-works.co.jp',1,25,2,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(28,'福田だいすけ','fukuda@beyond-works.co.jp',1,42,1,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(29,'豊島はなこ','toyoshima@beyond-works.co.jp',1,34,2,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(30,'早坂てつお','hayasaka@beyond-works.co.jp',2,61,1,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(31,'木村しゅん','kimura@beyond-works.co.jp',2,26,1,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(32,'三浦さやか','miura@beyond-works.co.jp',2,29,2,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(33,'大谷まこと','otani@beyond-works.co.jp',2,37,1,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(34,'村上なおみ','murakami@beyond-works.co.jp',3,31,2,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(35,'石田ゆうた','ishida@beyond-works.co.jp',4,38,1,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(36,'斉藤まりこ','saito@beyond-works.co.jp',5,27,2,'2025-04-04 05:57:46','2025-04-04 05:57:46'),(52,'鈴木たかし','suzuki@beyond-works.co.jp',1,20,1,'2025-04-04 06:51:26','2025-04-04 07:13:28'),(53,'中田ゆうこ','nakata@beyond-works.co.jp',2,25,2,'2025-04-04 06:51:26','2025-04-04 07:13:28'),(54,'福島だいすけ','fukushima@beyond-works.co.jp',3,42,1,'2025-04-04 06:51:26','2025-04-04 07:13:28'),(55,'田島はなこ','tajima@beyond-works.co.jp',4,34,2,'2025-04-04 06:51:26','2025-04-04 07:13:28'),(56,'不思議沢みちこ',NULL,5,NULL,NULL,'2025-04-04 06:51:26','2025-04-04 07:13:28');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (11,27,'クライアントとの打ち合わせを実施しました。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(12,28,'資料作成と会議準備に追われた一日でした。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(13,29,'バグ修正に集中し、無事にリリースできました。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(14,30,'後輩のサポートを行い、教育の大切さを実感。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(15,31,'定期メンテナンスを実施し、システムは安定。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(16,32,'新しいフレームワークの学習を開始しました。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(17,33,'社内ツールの改善点を提案し、好評を得た。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(18,34,'会計処理の見直し作業で効率化を図りました。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(19,35,'人事評価制度の説明会に参加しました。','2025-04-04 06:43:51','2025-04-04 06:43:51'),(20,36,'セキュリティ研修を受けて意識が高まりました。','2025-04-04 06:43:51','2025-04-04 06:43:51');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-08 15:04:01
