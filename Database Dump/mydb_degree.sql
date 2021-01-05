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
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree` (
  `idDegree` int NOT NULL AUTO_INCREMENT,
  `applicationid` int NOT NULL,
  `universityName` varchar(100) DEFAULT NULL,
  `overallGrade` varchar(45) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `uniRankWorld` int DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `uniRankCountry` int DEFAULT NULL,
  `uniRankLink` varchar(100) DEFAULT NULL,
  `otherRankWorld` int DEFAULT NULL,
  `otherRankCountry` int DEFAULT NULL,
  `otherRankLink` varchar(100) DEFAULT NULL,
  `degreeLevel` varchar(45) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDegree`),
  KEY `applicationid_idx` (`applicationid`),
  CONSTRAINT `applicationid` FOREIGN KEY (`applicationid`) REFERENCES `application` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (55,68,'LPU',NULL,'Andorra',1222,'2020-10-09','2020-12-09',123,'link1',4,3,'link2','Bachelor\'s','Computer Science'),(56,69,'Memorial University',NULL,'Canada',300,'2021-01-05','2021-01-13',30,'https://www.4icu.org/reviews/549.htm',302,25,'https://www.4icu.org/reviews/549.htm','Bachelor\'s','Computer Science'),(57,70,'Memorial University',NULL,'Canada',300,'2021-01-05','2021-01-13',30,'https://www.4icu.org/reviews/549.htm',302,25,'https://www.4icu.org/reviews/549.htm','Bachelor\'s','Computer Science');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
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
