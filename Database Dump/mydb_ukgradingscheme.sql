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
-- Table structure for table `ukgradingscheme`
--

DROP TABLE IF EXISTS `ukgradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ukgradingscheme` (
  `id` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `degreeClassification` varchar(100) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukgradingscheme`
--

LOCK TABLES `ukgradingscheme` WRITE;
/*!40000 ALTER TABLE `ukgradingscheme` DISABLE KEYS */;
INSERT INTO `ukgradingscheme` VALUES (1,70,100,'First Class Honours','A',NULL,NULL,NULL),(2,65,69,'Second Class Honours, Upper Division','A-',NULL,NULL,NULL),(3,60,64,'Second Class Honours, Upper Division','B+',NULL,NULL,NULL),(4,50,59,'Second Class Honours, Lower Division','B',NULL,NULL,NULL),(5,45,49,'Third Class Honours','C+',NULL,NULL,NULL),(6,40,44,'Pass','C',NULL,NULL,NULL),(7,0,39,'Fail','F',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ukgradingscheme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 23:00:05
