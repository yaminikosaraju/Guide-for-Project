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
-- Table structure for table `gradingschemelist`
--

DROP TABLE IF EXISTS `gradingschemelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradingschemelist` (
  `idgradingschemelist` int NOT NULL,
  `schemName` varchar(100) DEFAULT NULL,
  `gradingSchemeTable` varchar(100) DEFAULT NULL,
  `lowestpassinggradeChar` varchar(45) DEFAULT NULL,
  `lowestpassinggradeNum` int DEFAULT NULL,
  `highestpassinggradeChar` varchar(45) DEFAULT NULL,
  `highestpassinggradeNum` int DEFAULT NULL,
  PRIMARY KEY (`idgradingschemelist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradingschemelist`
--

LOCK TABLES `gradingschemelist` WRITE;
/*!40000 ALTER TABLE `gradingschemelist` DISABLE KEYS */;
INSERT INTO `gradingschemelist` VALUES (1,'Iran Grading scheme','irangradingscheme','D',10,'A',20),(2,'Mun Grading scheme','mungradingscheme',NULL,NULL,NULL,NULL),(3,'India Percentage scheme','indiapercentagescheme',NULL,35,NULL,100),(4,'Bangladesh grading scheme','bangladeshgradescheme','III (Third Division)',35,'I (First Division)',100),(5,'Pakistan grading scheme','pakistangradescheme','III (Third Division)',35,'I (First Division)',100),(6,'Mexico grading scheme','mexicogradingscheme','Regular/Suficiente (Average/Sufficient)',60,'Muy Bien (Very Good)',100),(7,'China grading scheme','chinagradingscheme','Average/Fair',60,'Excellent',100),(8,'Nigeria grading scheme','nigeriagradingscheme','E',40,'A',100),(9,'European grading scheme(ECTS)','europegradingscheme','E',NULL,'A',NULL),(10,'UK grading scheme','ukgradingscheme','Pass',40,'First Class Honours',100),(11,'Turkey grading scheme','turkeygradingscheme','Orta (Average)',5,'Pek iyi (Very Good)',10),(12,'Ghana  grading scheme','ghanagradingscheme','Second Class Honours, Lower Division',NULL,'First Class Honours',NULL);
/*!40000 ALTER TABLE `gradingschemelist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 23:00:06
