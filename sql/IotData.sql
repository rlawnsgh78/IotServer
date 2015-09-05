-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: subwaydb
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `conveniencestores`
--

DROP TABLE IF EXISTS `conveniencestores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conveniencestores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `ConvenienceStoreName` varchar(255) DEFAULT NULL,
  `ConvenienceStoreLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conveniencestores`
--

LOCK TABLES `conveniencestores` WRITE;
/*!40000 ALTER TABLE `conveniencestores` DISABLE KEYS */;
/*!40000 ALTER TABLE `conveniencestores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subwaystationexit`
--

DROP TABLE IF EXISTS `subwaystationexit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subwaystationexit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `SubwayStationExitName` varchar(255) DEFAULT NULL,
  `SubwayStationExitLocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subwaystationexit`
--

LOCK TABLES `subwaystationexit` WRITE;
/*!40000 ALTER TABLE `subwaystationexit` DISABLE KEYS */;
INSERT INTO `subwaystationexit` VALUES (1,'철선','1','2c865124'),(2,'철선','2','2c865188'),(3,'철선','3','2c8651ec'),(4,'철선','4','2c865250');
/*!40000 ALTER TABLE `subwaystationexit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subwaystationmain`
--

DROP TABLE IF EXISTS `subwaystationmain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subwaystationmain` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) NOT NULL,
  `MapData` varbinary(5000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subwaystationmain`
--

LOCK TABLES `subwaystationmain` WRITE;
/*!40000 ALTER TABLE `subwaystationmain` DISABLE KEYS */;
INSERT INTO `subwaystationmain` VALUES (1,'수원',NULL);
/*!40000 ALTER TABLE `subwaystationmain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subwaytime`
--

DROP TABLE IF EXISTS `subwaytime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subwaytime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `SubwayNo` varchar(255) DEFAULT NULL,
  `StartTime` varchar(255) DEFAULT NULL,
  `EndTiem` varchar(255) DEFAULT NULL,
  `NeededTiem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subwaytime`
--

LOCK TABLES `subwaytime` WRITE;
/*!40000 ALTER TABLE `subwaytime` DISABLE KEYS */;
/*!40000 ALTER TABLE `subwaytime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toilets`
--

DROP TABLE IF EXISTS `toilets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toilets` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) NOT NULL,
  `Toilet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toilets`
--

LOCK TABLES `toilets` WRITE;
/*!40000 ALTER TABLE `toilets` DISABLE KEYS */;
INSERT INTO `toilets` VALUES (1,'수원','1');
/*!40000 ALTER TABLE `toilets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashcans`
--

DROP TABLE IF EXISTS `trashcans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashcans` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `SubwayStationName` varchar(255) DEFAULT NULL,
  `TrashCan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashcans`
--

LOCK TABLES `trashcans` WRITE;
/*!40000 ALTER TABLE `trashcans` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashcans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdata`
--

DROP TABLE IF EXISTS `webdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WebData` varchar(255) DEFAULT NULL,
  `Version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdata`
--

LOCK TABLES `webdata` WRITE;
/*!40000 ALTER TABLE `webdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-06  3:42:55
