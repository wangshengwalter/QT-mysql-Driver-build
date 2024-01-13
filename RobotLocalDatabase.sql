-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: RobotLocalDatabase
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `AreaPointpairAllocate`
--

DROP TABLE IF EXISTS `AreaPointpairAllocate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `AreaPointpairAllocate` (
  `TaskLoc` varchar(50) NOT NULL,
  `AreaNo` varchar(32) NOT NULL,
  `AreaName` varchar(20) NOT NULL,
  `PointPairNo` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPointpairAllocate`
--

LOCK TABLES `AreaPointpairAllocate` WRITE;
/*!40000 ALTER TABLE `AreaPointpairAllocate` DISABLE KEYS */;
INSERT INTO `AreaPointpairAllocate` VALUES ('办公室部分','b3603858ff3e7130372caeaec8329c6c','area1','6f4e1b8004324b5aae696b5188b80298'),('办公室部分','b3603858ff3e7130372caeaec8329c6c','area1','ee7b09613ad9ad498dab59291f1b58d3'),('办公室test','bd1c54a6727a0e301ef7caa8b176d518','area1','536e3f43640a74d00767f0098dcd2661'),('办公室test','bd1c54a6727a0e301ef7caa8b176d518','area1','69a9209a73352f04af1295dc88ff7f2d');
/*!40000 ALTER TABLE `AreaPointpairAllocate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `AreaNo` varchar(32) NOT NULL,
  `AreaName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AreaPoints` varchar(200) NOT NULL,
  `TaskLoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`AreaNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES ('b3603858ff3e7130372caeaec8329c6c','area1','279 181,364 182,362 297,277 296,','办公室部分'),('bd1c54a6727a0e301ef7caa8b176d518','area1','251 216,478 221,473 425,246 420,','办公室test');
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LastTempTask`
--

DROP TABLE IF EXISTS `LastTempTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `LastTempTask` (
  `id` int NOT NULL,
  `PointPairNo` varchar(32) NOT NULL,
  `Finish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LastTempTask`
--

LOCK TABLES `LastTempTask` WRITE;
/*!40000 ALTER TABLE `LastTempTask` DISABLE KEYS */;
INSERT INTO `LastTempTask` VALUES (0,'69a9209a73352f04af1295dc88ff7f2d',0),(1,'536e3f43640a74d00767f0098dcd2661',0);
/*!40000 ALTER TABLE `LastTempTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PeriodTaskPeriod`
--

DROP TABLE IF EXISTS `PeriodTaskPeriod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `PeriodTaskPeriod` (
  `TaskNo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskName` varchar(20) NOT NULL,
  `TaskPeriod` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PeriodTaskPeriod`
--

LOCK TABLES `PeriodTaskPeriod` WRITE;
/*!40000 ALTER TABLE `PeriodTaskPeriod` DISABLE KEYS */;
/*!40000 ALTER TABLE `PeriodTaskPeriod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PeriodTasks`
--

DROP TABLE IF EXISTS `PeriodTasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `PeriodTasks` (
  `TaskNo` varchar(32) NOT NULL,
  `TaskName` varchar(20) NOT NULL,
  `TaskModel` int NOT NULL,
  `TaskLoc` varchar(20) NOT NULL,
  `TaskTime` time NOT NULL,
  PRIMARY KEY (`TaskNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PeriodTasks`
--

LOCK TABLES `PeriodTasks` WRITE;
/*!40000 ALTER TABLE `PeriodTasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `PeriodTasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PeriodTasksArea`
--

DROP TABLE IF EXISTS `PeriodTasksArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `PeriodTasksArea` (
  `TaskNo` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskAreas` varchar(32) NOT NULL,
  `TaskAreaName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PeriodTasksArea`
--

LOCK TABLES `PeriodTasksArea` WRITE;
/*!40000 ALTER TABLE `PeriodTasksArea` DISABLE KEYS */;
/*!40000 ALTER TABLE `PeriodTasksArea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PointPair`
--

DROP TABLE IF EXISTS `PointPair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `PointPair` (
  `PointPairNo` varchar(32) NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `TaskLoc` varchar(20) NOT NULL,
  PRIMARY KEY (`PointPairNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PointPair`
--

LOCK TABLES `PointPair` WRITE;
/*!40000 ALTER TABLE `PointPair` DISABLE KEYS */;
INSERT INTO `PointPair` VALUES ('536e3f43640a74d00767f0098dcd2661','364 345','321 346','办公室test'),('69a9209a73352f04af1295dc88ff7f2d','363 382','322 382','办公室test'),('6f4e1b8004324b5aae696b5188b80298','302 254','333 254','办公室部分'),('ee7b09613ad9ad498dab59291f1b58d3','306 221','334 221','办公室部分');
/*!40000 ALTER TABLE `PointPair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TemporaryTasks`
--

DROP TABLE IF EXISTS `TemporaryTasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `TemporaryTasks` (
  `TaskNo` varchar(32) NOT NULL,
  `TaskName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskModel` int NOT NULL,
  `TaskLoc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ExecuteTime` datetime NOT NULL,
  PRIMARY KEY (`TaskNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TemporaryTasks`
--

LOCK TABLES `TemporaryTasks` WRITE;
/*!40000 ALTER TABLE `TemporaryTasks` DISABLE KEYS */;
INSERT INTO `TemporaryTasks` VALUES ('0b24ce611412c98cf4aecbf5b7855028','test task',1,'办公室test','2023-04-19 14:57:33'),('1dfac5f83010737c3170dcf1778e998a','test task',1,'办公室test','2023-04-19 13:14:59'),('1ee51dc7415ad297b988bc46741137e4','test task',1,'办公室test','2023-04-19 10:43:41'),('2b374bf689f49d9ae9e0e1b0ae16833f','test task',1,'办公室test','2023-04-19 13:18:37'),('3e33599b425eae6e2157f41fbdc422b4','test task',1,'办公室test','2023-04-19 14:57:41'),('3ffb04e97b8998305f742a8ad592b03b','test task',1,'办公室test','2023-04-19 13:44:38'),('48da04036737fa6f1cd3216dad11f373','test task',1,'办公室test','2023-04-19 14:57:36'),('7a3036036974219a6d25751899b6688a','test task',1,'办公室test','2023-04-19 14:57:38'),('8248eb2f92495f4b7fd09b8d4fc6ee37','test task',1,'办公室test','2023-04-19 13:35:51'),('8e836d40d1bcab3a38f4255627068cab','test task',1,'办公室test','2023-04-18 16:46:38'),('a2eda77b11c8bdda12fd318e02940104','test task',1,'办公室test','2023-04-19 15:35:25'),('bec01af5a569c45856f38deeb9017a45','test task',1,'办公室test','2023-04-19 13:33:40'),('c9e31e1e28c9170ca71088a651e0342e','test task',1,'办公室test','2023-04-19 13:19:14'),('cad8d4ee1f30c73a356fc227fbacf14a','test task',1,'办公室test','2023-04-19 15:04:44'),('d59fa43609bcfc11f5a325c96baaa05d','test task',1,'办公室test','2023-04-19 13:10:07');
/*!40000 ALTER TABLE `TemporaryTasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TemporaryTasksArea`
--

DROP TABLE IF EXISTS `TemporaryTasksArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `TemporaryTasksArea` (
  `TaskNo` varchar(32) NOT NULL,
  `TaskName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskAreas` varchar(32) NOT NULL,
  `TaskAreaName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TemporaryTasksArea`
--

LOCK TABLES `TemporaryTasksArea` WRITE;
/*!40000 ALTER TABLE `TemporaryTasksArea` DISABLE KEYS */;
INSERT INTO `TemporaryTasksArea` VALUES ('8e836d40d1bcab3a38f4255627068cab','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('1ee51dc7415ad297b988bc46741137e4','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('d59fa43609bcfc11f5a325c96baaa05d','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('1dfac5f83010737c3170dcf1778e998a','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('2b374bf689f49d9ae9e0e1b0ae16833f','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('c9e31e1e28c9170ca71088a651e0342e','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('bec01af5a569c45856f38deeb9017a45','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('8248eb2f92495f4b7fd09b8d4fc6ee37','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('3ffb04e97b8998305f742a8ad592b03b','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('0b24ce611412c98cf4aecbf5b7855028','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('48da04036737fa6f1cd3216dad11f373','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('7a3036036974219a6d25751899b6688a','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('3e33599b425eae6e2157f41fbdc422b4','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('cad8d4ee1f30c73a356fc227fbacf14a','test task','bd1c54a6727a0e301ef7caa8b176d518','area1'),('a2eda77b11c8bdda12fd318e02940104','test task','bd1c54a6727a0e301ef7caa8b176d518','area1');
/*!40000 ALTER TABLE `TemporaryTasksArea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usrtable`
--

DROP TABLE IF EXISTS `usrtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `usrtable` (
  `UserNo` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(12) NOT NULL,
  `UserPassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UserID` varchar(12) NOT NULL,
  PRIMARY KEY (`UserNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usrtable`
--

LOCK TABLES `usrtable` WRITE;
/*!40000 ALTER TABLE `usrtable` DISABLE KEYS */;
INSERT INTO `usrtable` VALUES (1,'shengwang','00f0605a55533285993d5b6d43ca9998','admin'),(2,'admin','21232f297a57a5a743894a0e4a801fc3','admin');
/*!40000 ALTER TABLE `usrtable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19 16:51:54
