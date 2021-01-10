-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `applicationid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `program` varchar(45) DEFAULT NULL,
  `intakeYear` varchar(45) DEFAULT NULL,
  `intakeTerm` varchar(45) DEFAULT NULL,
  `EPTName` varchar(45) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `route` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`applicationid`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (67,1,'Master of Science','2021',NULL,'IELTS','Computer Science','Thesis'),(68,1,'Master of Science','2021',NULL,'IELTS','Computer Science','Thesis'),(69,1,'Master of Science','2021','Winter','IELTS','Computer Science','Work Term'),(70,1,'Master of Science','2021','Winter','IELTS','Computer Science','Work Term'),(71,1,'Master of Science',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bangladeshgradescheme`
--

DROP TABLE IF EXISTS `bangladeshgradescheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bangladeshgradescheme` (
  `id` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangladeshgradescheme`
--

LOCK TABLES `bangladeshgradescheme` WRITE;
/*!40000 ALTER TABLE `bangladeshgradescheme` DISABLE KEYS */;
INSERT INTO `bangladeshgradescheme` VALUES (1,60,100,1,1,'A',NULL,NULL),(2,55,59,2,2,'B+',NULL,NULL),(3,50,54,2,2,'B',NULL,NULL),(4,43,49,3,3,'C',NULL,NULL),(5,35,42,3,3,'C+',NULL,NULL),(6,0,34,NULL,NULL,'F',NULL,NULL);
/*!40000 ALTER TABLE `bangladeshgradescheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chinagradingscheme`
--

DROP TABLE IF EXISTS `chinagradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinagradingscheme` (
  `id` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinagradingscheme`
--

LOCK TABLES `chinagradingscheme` WRITE;
/*!40000 ALTER TABLE `chinagradingscheme` DISABLE KEYS */;
INSERT INTO `chinagradingscheme` VALUES (1,85,100,5,5,'Excellent','A',NULL),(2,75,84,4,4,'Good','B',NULL),(3,60,74,3,3,'Average/Fair','C',NULL),(4,0,59,2,2,'Fail','F',NULL);
/*!40000 ALTER TABLE `chinagradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `idcourse` int NOT NULL AUTO_INCREMENT,
  `transcriptid` int DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `coursedept` varchar(45) DEFAULT NULL,
  `courseID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcourse`),
  KEY `transcriptfk_idx` (`transcriptid`),
  CONSTRAINT `transcriptfk` FOREIGN KEY (`transcriptid`) REFERENCES `transcript` (`idtranscript`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (100,50,'Web Programming','69','CS','123'),(101,50,'Database','73','CS','34'),(102,51,'Web Programming','67','Computer Science','CS2001'),(103,51,'Data Structures','85','Computer Science','CS2003'),(104,52,'Web Programming','67','Computer Science','CS2001'),(105,52,'Data Structures','85','Computer Science','CS2003'),(106,53,'Uni Name','79','Uni Name','1222'),(107,53,'1222','65','Uni Name',''),(108,53,'','80','',''),(109,54,'Uni Name','79','Uni Name','1222'),(110,54,'1222','65','Uni Name',''),(111,54,'','80','',''),(112,55,'Uni Name','79','Uni Name','1222'),(113,55,'1222','65','Uni Name',''),(114,55,'','80','',''),(115,55,NULL,NULL,NULL,NULL),(116,55,'','55','',''),(117,56,'Uni Name','79','Uni Name','1222'),(118,56,'1222','65','Uni Name',''),(119,56,'','80','',''),(120,56,NULL,NULL,NULL,NULL),(121,56,'','55','',''),(122,57,NULL,'80',NULL,NULL),(123,57,'','76','',''),(124,57,'','55','',''),(125,58,NULL,'80',NULL,NULL),(126,58,'','76','',''),(127,58,'','55','',''),(128,59,NULL,'80',NULL,NULL),(129,59,'','76','',''),(130,59,'','55','',''),(131,60,NULL,'80',NULL,NULL),(132,60,'','76','',''),(133,60,'','55','',''),(134,61,NULL,'80',NULL,NULL),(135,61,'','76','',''),(136,61,'','55','',''),(137,62,NULL,'80',NULL,NULL),(138,62,'','76','',''),(139,62,'','55','',''),(140,63,NULL,'80',NULL,NULL),(141,63,'','76','',''),(142,63,'','55','',''),(143,64,NULL,'80',NULL,NULL),(144,64,'','76','',''),(145,64,'','55','','');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (55,68,'LPU',NULL,'Andorra',1222,'2020-10-09','2020-12-09',123,'link1',4,3,'link2','Bachelor\'s','Computer Science'),(56,69,'Memorial University',NULL,'Canada',300,'2021-01-05','2021-01-13',30,'https://www.4icu.org/reviews/549.htm',302,25,'https://www.4icu.org/reviews/549.htm','Bachelor\'s','Computer Science'),(57,70,'Memorial University',NULL,'Canada',300,'2021-01-05','2021-01-13',30,'https://www.4icu.org/reviews/549.htm',302,25,'https://www.4icu.org/reviews/549.htm','Bachelor\'s','Computer Science'),(58,71,'1222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,72,'1222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,73,'1222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,74,'1222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ept`
--

DROP TABLE IF EXISTS `ept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ept` (
  `idIEpt` int NOT NULL AUTO_INCREMENT,
  `applicationid` int DEFAULT NULL,
  `EPTlisten` decimal(10,0) DEFAULT NULL,
  `EPTread` decimal(10,0) DEFAULT NULL,
  `EPTwriting` decimal(10,0) DEFAULT NULL,
  `EPToverall` decimal(10,0) DEFAULT NULL,
  `EPTspeak` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idIEpt`),
  KEY `applicationid_idx` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ept`
--

LOCK TABLES `ept` WRITE;
/*!40000 ALTER TABLE `ept` DISABLE KEYS */;
INSERT INTO `ept` VALUES (1,68,4,5,7,8,6),(2,69,6,9,7,8,8),(3,70,6,9,7,8,8),(4,71,NULL,NULL,NULL,NULL,NULL),(5,72,NULL,NULL,NULL,NULL,NULL),(6,73,NULL,NULL,NULL,NULL,NULL),(7,74,NULL,NULL,NULL,NULL,NULL),(8,75,NULL,NULL,NULL,NULL,NULL),(9,76,NULL,NULL,NULL,NULL,NULL),(10,77,NULL,NULL,NULL,NULL,NULL),(11,78,NULL,NULL,NULL,NULL,NULL),(12,79,NULL,NULL,NULL,NULL,NULL),(13,80,NULL,NULL,NULL,NULL,NULL),(14,81,NULL,NULL,NULL,NULL,NULL),(15,82,NULL,NULL,NULL,NULL,NULL),(16,71,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ept` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `generaltest`
--

DROP TABLE IF EXISTS `generaltest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generaltest` (
  `idgeneralTest` int NOT NULL,
  `score1` varchar(45) DEFAULT NULL,
  `score2` varchar(45) DEFAULT NULL,
  `score3` varchar(45) DEFAULT NULL,
  `score4` varchar(45) DEFAULT NULL,
  `applicationid` int DEFAULT NULL,
  PRIMARY KEY (`idgeneralTest`),
  KEY `applicationid_idx` (`applicationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generaltest`
--

LOCK TABLES `generaltest` WRITE;
/*!40000 ALTER TABLE `generaltest` DISABLE KEYS */;
/*!40000 ALTER TABLE `generaltest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghanagradingscheme`
--

DROP TABLE IF EXISTS `ghanagradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ghanagradingscheme` (
  `id` int NOT NULL,
  `degreeClassification` varchar(100) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghanagradingscheme`
--

LOCK TABLES `ghanagradingscheme` WRITE;
/*!40000 ALTER TABLE `ghanagradingscheme` DISABLE KEYS */;
INSERT INTO `ghanagradingscheme` VALUES (1,'First Class Honours','A',NULL,NULL,NULL,NULL,NULL),(2,'Second Class Honours, Upper Division','A-',NULL,NULL,NULL,NULL,NULL),(3,'Second Class Honours, Lower Division','B',NULL,NULL,NULL,NULL,NULL),(4,'Pass','C',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ghanagradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `gradofficer`
--

DROP TABLE IF EXISTS `gradofficer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradofficer` (
  `uid` int NOT NULL,
  `program` varchar(45) DEFAULT NULL,
  `intakeYear` int DEFAULT NULL,
  `intakeSemester` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradofficer`
--

LOCK TABLES `gradofficer` WRITE;
/*!40000 ALTER TABLE `gradofficer` DISABLE KEYS */;
/*!40000 ALTER TABLE `gradofficer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradrequests`
--

DROP TABLE IF EXISTS `gradrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gradrequests` (
  `idgradRequests` int NOT NULL AUTO_INCREMENT,
  `requestType` varchar(45) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgradRequests`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gradrequests`
--

LOCK TABLES `gradrequests` WRITE;
/*!40000 ALTER TABLE `gradrequests` DISABLE KEYS */;
INSERT INTO `gradrequests` VALUES (6,'Grading scheme',1,'yamini kosaraju','Please add a grading scheme by Srilanka','ykosaraju@mun.ca');
/*!40000 ALTER TABLE `gradrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grescore`
--

DROP TABLE IF EXISTS `grescore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grescore` (
  `idGreScore` int NOT NULL AUTO_INCREMENT,
  `applicationid` int DEFAULT NULL,
  `GreScore` int DEFAULT NULL,
  `analyticalWriting` int DEFAULT NULL,
  `quantitative` int DEFAULT NULL,
  `verbalReasoning` int DEFAULT NULL,
  PRIMARY KEY (`idGreScore`),
  KEY `applicationid_idx` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grescore`
--

LOCK TABLES `grescore` WRITE;
/*!40000 ALTER TABLE `grescore` DISABLE KEYS */;
INSERT INTO `grescore` VALUES (1,68,300,302,303,301),(2,69,301,303,304,302),(3,70,301,303,304,302),(4,71,NULL,NULL,NULL,NULL),(5,72,NULL,NULL,NULL,NULL),(6,73,NULL,NULL,NULL,NULL),(7,74,NULL,NULL,NULL,NULL),(8,75,NULL,NULL,NULL,NULL),(9,76,NULL,NULL,NULL,NULL),(10,77,NULL,NULL,NULL,NULL),(11,78,NULL,NULL,NULL,NULL),(12,79,NULL,NULL,NULL,NULL),(13,80,NULL,NULL,NULL,NULL),(14,81,NULL,NULL,NULL,NULL),(15,82,NULL,NULL,NULL,NULL),(16,71,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `grescore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indiapercentagescheme`
--

DROP TABLE IF EXISTS `indiapercentagescheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indiapercentagescheme` (
  `id` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `scale2_min` varchar(45) DEFAULT NULL,
  `scale2_max` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indiapercentagescheme`
--

LOCK TABLES `indiapercentagescheme` WRITE;
/*!40000 ALTER TABLE `indiapercentagescheme` DISABLE KEYS */;
INSERT INTO `indiapercentagescheme` VALUES (1,70,100,'A',NULL,NULL,NULL,NULL),(2,50,69,'B',NULL,NULL,NULL,NULL),(3,35,49,'C',NULL,NULL,NULL,NULL),(4,0,32,'F',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `indiapercentagescheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `irangradingscheme`
--

DROP TABLE IF EXISTS `irangradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irangradingscheme` (
  `idgradingschemes` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  PRIMARY KEY (`idgradingschemes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irangradingscheme`
--

LOCK TABLES `irangradingscheme` WRITE;
/*!40000 ALTER TABLE `irangradingscheme` DISABLE KEYS */;
INSERT INTO `irangradingscheme` VALUES (1,16,20,'A','4','A',NULL,NULL),(2,14,15,'B','3','B',NULL,NULL),(3,12,13,'C','2','C',NULL,NULL),(4,10,11,'D','1','D',NULL,NULL),(5,0,9,'F','0','F',NULL,NULL);
/*!40000 ALTER TABLE `irangradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mexicogradingscheme`
--

DROP TABLE IF EXISTS `mexicogradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mexicogradingscheme` (
  `id` int NOT NULL,
  `scale1_min` decimal(3,0) DEFAULT NULL,
  `scale1_max` decimal(3,0) DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mexicogradingscheme`
--

LOCK TABLES `mexicogradingscheme` WRITE;
/*!40000 ALTER TABLE `mexicogradingscheme` DISABLE KEYS */;
INSERT INTO `mexicogradingscheme` VALUES (1,9,10,90,100,'Muy Bien (Very Good)','A',NULL),(2,8,9,80,89,'Bien (Good)','B',NULL),(3,6,8,60,79,'Regular/Suficiente (Average/Sufficient)','C',NULL),(4,0,6,0,59,'Reprobado/No Suficiente (Fail/Not Sufficient)','F',NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mexicogradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mungradingscheme`
--

DROP TABLE IF EXISTS `mungradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mungradingscheme` (
  `idmungradingscheme` int NOT NULL,
  `lettergrade` varchar(45) DEFAULT NULL,
  `numericgrade_min` int DEFAULT NULL,
  `numericgrade_max` int DEFAULT NULL,
  `pointspercredit` int DEFAULT NULL,
  `mungradingschemecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmungradingscheme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mungradingscheme`
--

LOCK TABLES `mungradingscheme` WRITE;
/*!40000 ALTER TABLE `mungradingscheme` DISABLE KEYS */;
INSERT INTO `mungradingscheme` VALUES (1,'A',80,100,4,NULL),(2,'B',65,79,3,NULL),(3,'C',55,64,2,NULL),(4,'D',50,54,1,NULL),(5,'F',0,49,0,NULL),(7,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mungradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nigeriagradingscheme`
--

DROP TABLE IF EXISTS `nigeriagradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nigeriagradingscheme` (
  `id` int NOT NULL,
  `scale1_min` varchar(45) DEFAULT NULL,
  `scale1_max` varchar(45) DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nigeriagradingscheme`
--

LOCK TABLES `nigeriagradingscheme` WRITE;
/*!40000 ALTER TABLE `nigeriagradingscheme` DISABLE KEYS */;
/*!40000 ALTER TABLE `nigeriagradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pakistangradescheme`
--

DROP TABLE IF EXISTS `pakistangradescheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pakistangradescheme` (
  `id` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  `gradeDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pakistangradescheme`
--

LOCK TABLES `pakistangradescheme` WRITE;
/*!40000 ALTER TABLE `pakistangradescheme` DISABLE KEYS */;
INSERT INTO `pakistangradescheme` VALUES (1,60,100,1,1,'A',NULL,NULL),(2,55,59,2,2,'B+',NULL,NULL),(3,50,54,2,2,'B',NULL,NULL),(4,43,49,3,3,'C',NULL,NULL),(5,35,42,3,3,'C+',NULL,NULL),(6,0,34,NULL,NULL,'F',NULL,NULL);
/*!40000 ALTER TABLE `pakistangradescheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `idscores` int NOT NULL AUTO_INCREMENT,
  `applicationid` int DEFAULT NULL,
  `score1` int DEFAULT NULL,
  `score2` varchar(45) DEFAULT NULL,
  `score3` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `intake` varchar(45) DEFAULT NULL,
  `userName` varchar(60) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idscores`),
  KEY `applicationid_idx` (`applicationid`),
  KEY `uid_idx` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transcript`
--

DROP TABLE IF EXISTS `transcript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transcript` (
  `idtranscript` int NOT NULL AUTO_INCREMENT,
  `idDegree` int DEFAULT NULL,
  `universityName` varchar(150) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `gradeType` varchar(100) DEFAULT NULL,
  `averageGrade` varchar(45) DEFAULT NULL,
  `averageClassGrade` varchar(45) DEFAULT NULL,
  `academicStanding` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtranscript`),
  KEY `idDegree_idx` (`idDegree`),
  CONSTRAINT `idDegree` FOREIGN KEY (`idDegree`) REFERENCES `degree` (`idDegree`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcript`
--

LOCK TABLES `transcript` WRITE;
/*!40000 ALTER TABLE `transcript` DISABLE KEYS */;
INSERT INTO `transcript` VALUES (50,55,'transcript UNi',NULL,'pakistangradescheme','79','67','pas'),(51,56,'Memorial uni',NULL,'indiapercentagescheme','79','65','Clear'),(52,57,'Memorial uni',NULL,'indiapercentagescheme','79','65','Clear'),(53,70,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `transcript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turkeygradingscheme`
--

DROP TABLE IF EXISTS `turkeygradingscheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turkeygradingscheme` (
  `id` int NOT NULL,
  `scale1_min` int DEFAULT NULL,
  `scale1_max` int DEFAULT NULL,
  `gradeDescription` varchar(100) DEFAULT NULL,
  `USEquivalent` varchar(45) DEFAULT NULL,
  `scale2_min` int DEFAULT NULL,
  `scale2_max` int DEFAULT NULL,
  `degreeClassification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turkeygradingscheme`
--

LOCK TABLES `turkeygradingscheme` WRITE;
/*!40000 ALTER TABLE `turkeygradingscheme` DISABLE KEYS */;
INSERT INTO `turkeygradingscheme` VALUES (1,9,10,'Pek iyi (Very Good)','A',NULL,NULL,NULL),(2,7,8,'Iyi (Good)','B',NULL,NULL,NULL),(3,5,6,'Orta (Average)','C',NULL,NULL,NULL),(4,1,4,'Noksan/Pek Noksan (Fail)','F',NULL,NULL,NULL);
/*!40000 ALTER TABLE `turkeygradingscheme` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `uniranking`
--

DROP TABLE IF EXISTS `uniranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uniranking` (
  `iduniRanking` int NOT NULL,
  `idDegree` int NOT NULL,
  `worldranking` int DEFAULT NULL,
  `countryranking` int DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduniRanking`,`idDegree`),
  KEY `degreeid_idx` (`idDegree`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniranking`
--

LOCK TABLES `uniranking` WRITE;
/*!40000 ALTER TABLE `uniranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `uniranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `password` varchar(300) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(45) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `studentID` int DEFAULT NULL,
  `accountStatus` int DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ykosaraju@mun.ca','1TMVvqCM7FDSWR/K87MtxdKJzcbBa36L7YyOP3zqo04=','2020-01-29 15:07:00',NULL,'student','yamini','kosaraju',2018922,0),(2,'admin@mun.ca','mdP9D6j+EV71mDtUcsyVqI8nkKb6ifh4XaWvvntUi7o=','2020-01-29 15:07:00',NULL,'admin','Admin','MUN',NULL,0),(3,'yaminikosaraju14@gmail.com','bkkcAogqw247yqrE0VHUsnkxNdRIKt8iextzDN2QtG0=','2021-01-04 00:27:18',NULL,'student','yamini','kosaraju',NULL,0),(4,'yaminikosaraju11@gmail.com','1TMVvqCM7FDSWR/K87MtxdKJzcbBa36L7YyOP3zqo04=','2021-01-04 00:30:56',NULL,'student','yamini','kosaraju',123,0),(5,'yaminikosaraju4@gmail.com','1TMVvqCM7FDSWR/K87MtxdKJzcbBa36L7YyOP3zqo04=','2021-01-04 00:36:43',NULL,'student','yamini','kosaraju',34444,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work`
--

DROP TABLE IF EXISTS `work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work` (
  `idwork` int NOT NULL AUTO_INCREMENT,
  `applicationid` int DEFAULT NULL,
  `field` varchar(40) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `monthsofExperince` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `startDate` varchar(45) DEFAULT NULL,
  `endDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idwork`),
  KEY `applicationid_idx` (`applicationid`),
  CONSTRAINT `applicationIdd` FOREIGN KEY (`applicationid`) REFERENCES `application` (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work`
--

LOCK TABLES `work` WRITE;
/*!40000 ALTER TABLE `work` DISABLE KEYS */;
INSERT INTO `work` VALUES (70,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `work` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07  5:06:44
