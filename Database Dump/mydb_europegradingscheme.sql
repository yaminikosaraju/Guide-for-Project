CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `europegradingscheme`
--

DROP TABLE IF EXISTS `europegradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `europegradingscheme` (
  `id` int NOT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(100) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `europegradingscheme`
--

LOCK TABLES `europegradingscheme` WRITE;
/*!40000 ALTER TABLE `europegradingscheme` DISABLE KEYS */;
INSERT INTO `europegradingscheme` VALUES (1,'A','EXCELLENT - outstanding performance with only minor errors','A',NULL,NULL,NULL,NULL),(2,'B','VERY GOOD - above the average standard but with some errors','B+',NULL,NULL,NULL,NULL),(3,'C','GOOD - generally sound work with a number of notable errors','B',NULL,NULL,NULL,NULL),(4,'D','SATISFACTORY- fair but with significant shortcomings','C+',NULL,NULL,NULL,NULL),(5,'E','SUFFICIENT - performance meets the minimum criteria','C',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `europegradingscheme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 23:00:04
