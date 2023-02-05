-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: khanacademy
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `AcademicData`
--

DROP TABLE IF EXISTS `AcademicData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AcademicData` (
  `adLearnerID` bigint NOT NULL,
  `MasteryPoint` int DEFAULT NULL,
  `Lesson` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `TimeUsed` time DEFAULT NULL,
  `Scores` int DEFAULT NULL,
  PRIMARY KEY (`adLearnerID`),
  CONSTRAINT `fkadlid` FOREIGN KEY (`adLearnerID`) REFERENCES `Learner` (`LearnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AcademicData`
--

LOCK TABLES `AcademicData` WRITE;
/*!40000 ALTER TABLE `AcademicData` DISABLE KEYS */;
INSERT INTO `AcademicData` VALUES (532232443,16800,'PreAlgebra','01:00:12',21),(532265211,3000,'College Chemistry','10:09:00',47),(532265484,9000,'Chemistry Library','00:15:25',59),(532265843,23400,'Personal Finance','12:08:00',41),(532273212,7900,'Algebra ','00:45:33',39),(532274353,5000,'Calculus 1 ','00:19:27',66),(532275143,70000,'SAT','00:23:53',74),(532275144,2000,'Geometry','01:23:12',30),(532275243,1450,'US History','12:09:00',11),(532275343,3267,'Kindergarden','00:45:23',63),(532275357,15009,'SAT Math Geometry','00:56:11',58),(532275636,1700,'Integrated Math 1','00:10:00',29),(532275844,10000,'MCAT','00:10:00',1),(532275957,6700,'Grammar','00:15:00',77),(532276004,18000,'Biology','00:17:34',54),(532276095,16999,'AP Chemistry','00:05:23',7),(532276097,9874,'AP Math','00:07:23',12),(532276123,65400,'Algebra 2','01:12:34',20),(532276124,4350,'Statistics','01:59:01',73),(532276163,5350,'World History','03:00:00',3),(532276244,3000,'College Physics 1','00:05:00',36),(532276277,8549,'Trigonometry','00:10:23',19),(532276376,4500,'AP Biology','00:15:34',15),(532276432,6432,'College Calculus BC','00:23:14',84),(532276506,16554,'SAT','00:10:23',18),(532276663,45099,'Digital SAT','00:06:02',76),(532276700,3409,'AP Physics','00:17:23',89),(532276809,83229,'High School Statistics','00:43:23',28),(532276879,6579,'Geometry','00:44:53',45),(532277854,3099,'Middle School Biology','00:19:34',88);
/*!40000 ALTER TABLE `AcademicData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Activity`
--

DROP TABLE IF EXISTS `Activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Activity` (
  `ActivityID` bigint NOT NULL,
  `ActivityType` varchar(50) NOT NULL,
  `Scores` bigint DEFAULT NULL,
  `TimeUsed` time DEFAULT NULL,
  `aCourseID` bigint NOT NULL,
  PRIMARY KEY (`ActivityID`),
  KEY `fkactcid` (`aCourseID`),
  CONSTRAINT `fkactcid` FOREIGN KEY (`aCourseID`) REFERENCES `Course` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Activity`
--

LOCK TABLES `Activity` WRITE;
/*!40000 ALTER TABLE `Activity` DISABLE KEYS */;
INSERT INTO `Activity` VALUES (121256,'A',76,'00:42:04',509659237),(122312,'Q',41,'00:15:34',553476680),(122378,'Q',41,'00:15:34',508236778),(125215,'A',33,'00:09:10',502782444),(125233,'Q',6,'00:45:23',508236778),(125254,'A',5,'00:12:23',509659237),(125262,'A',33,'00:15:00',512578958),(125267,'Q',56,'01:00:12',502782444),(126434,'Q',53,'00:17:23',502782444),(126444,'Q',53,'00:17:23',553476680),(126641,'Q',32,'01:12:34',509659237),(126699,'Q',32,'01:12:34',509659237),(148231,'Q',75,'00:19:34',553476680),(178434,'A',14,'00:10:00',512578958),(178457,'Q',6,'00:56:11',501260293),(223754,'A',56,'01:05:00',508236778),(226666,'A',8,'00:08:00',508236778),(226677,'Q',9,'00:17:34',501260293),(239031,'A',22,'00:10:23',508236778),(239036,'A',22,'00:10:23',501260293),(257937,'A',7,'00:23:14',509659237),(264290,'A',23,'00:05:23',501260293),(264712,'A',6,'00:15:00',512578958),(264726,'A',24,'00:42:04',502782444),(267834,'A',22,'00:10:01',509659237),(267896,'A',46,'00:09:04',502782444),(283443,'Q',16,'00:45:23',553476680),(283489,'Q',16,'00:45:23',502782444),(287900,'Q',22,'00:43:23',508236778),(287911,'Q',22,'00:43:23',508236778),(287915,'Q',3,'02:00:12',502723699),(321566,'A',12,'01:00:12',502782444),(321574,'A',11,'03:00:00',502782444),(321678,'A',24,'00:10:23',508236778),(324513,'Q',56,'00:05:23',509659237),(324560,'Q',56,'00:05:23',502782444),(326234,'A',6,'00:45:33',502782444),(326263,'A',7,'00:15:23',502782444),(326673,'A',70,'00:09:00',502723699),(326684,'Q',8,'00:44:53',509659237),(347754,'Q',45,'00:17:34',553476680),(353409,'Q',4,'01:12:34',508236778),(353436,'A',76,'00:15:00',512578958),(353442,'Q',28,'01:59:01',553476680),(353472,'Q',28,'01:59:01',509659237),(353811,'A',11,'00:10:00',512578958),(353865,'Q',233,'00:07:23',501260293),(368008,'A',6,'00:17:23',509659237),(512347,'A',89,'00:11:03',509659237),(512785,'A',16,'00:09:00',502782444),(533411,'Q',2,'00:44:53',553476680),(533442,'Q',2,'00:44:53',502782444),(536746,'Q',1,'01:59:01',508236778),(689478,'A',7,'00:15:34',501260293),(933211,'Q',21,'00:06:02',508236778),(933244,'A',9,'00:08:00',502723699),(933283,'Q',21,'00:06:02',509659237),(935612,'Q',4,'00:56:11',509659237),(935692,'Q',4,'00:56:11',502782444),(3216789,'A',24,'00:10:23',508236778);
/*!40000 ALTER TABLE `Activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assignments`
--

DROP TABLE IF EXISTS `Assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assignments` (
  `AssignDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `aActivityID` bigint NOT NULL,
  PRIMARY KEY (`aActivityID`),
  CONSTRAINT `fkaactid` FOREIGN KEY (`aActivityID`) REFERENCES `Activity` (`ActivityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assignments`
--

LOCK TABLES `Assignments` WRITE;
/*!40000 ALTER TABLE `Assignments` DISABLE KEYS */;
INSERT INTO `Assignments` VALUES ('2022-11-03 12:04:00','2022-11-29 12:00:00',121256),('2022-11-03 12:04:00','2022-12-03 12:00:00',125215),('2022-11-03 12:04:00','2022-11-29 12:00:00',125254),('2022-11-01 15:04:00','2023-01-05 00:00:00',125262),('2022-11-01 12:04:00','2022-11-30 00:00:00',178434),('2022-11-01 17:04:00','2022-12-03 00:00:00',223754),('2022-10-29 12:04:00','2022-12-03 12:00:00',226666),('2022-10-29 17:04:00','2022-12-03 12:00:00',239031),('2022-10-29 17:04:00','2022-12-03 00:00:00',239036),('2022-10-29 17:04:00','2022-11-29 12:00:00',257937),('2022-10-28 18:04:00','2023-01-05 00:00:00',264290),('2022-10-28 20:31:24','2022-11-30 00:00:00',264712),('2022-10-25 13:34:12','2023-01-05 00:00:00',264726),('2022-10-25 12:04:00','2022-12-03 00:00:00',267834),('2022-10-28 18:04:00','2022-12-03 00:00:00',267896),('2022-10-28 20:31:24','2022-12-03 00:00:00',287915),('2022-10-25 13:34:12','2022-11-29 12:00:00',321566),('2022-09-25 12:04:00','2022-11-30 00:00:00',321574),('2022-11-03 12:04:00','2022-12-03 00:00:00',321678),('2022-10-28 18:04:00','2022-12-03 00:00:00',326234),('2022-10-28 20:31:24','2022-12-03 00:00:00',326263),('2022-10-25 13:34:12','2022-12-03 00:00:00',326673),('2022-11-03 12:04:00','2022-11-29 12:00:00',353436),('2022-10-28 18:04:00','2022-11-29 12:00:00',353811),('2022-10-28 20:31:24','2022-11-30 00:00:00',368008),('2022-10-25 13:34:12','2022-11-30 00:00:00',512347),('2022-11-03 12:04:00','2022-11-29 12:00:00',512785),('2022-10-28 18:04:00','2022-12-03 00:00:00',689478),('2022-10-28 20:31:24','2022-12-03 00:00:00',933244),('2022-10-25 13:34:12','2022-12-03 00:00:00',3216789);
/*!40000 ALTER TABLE `Assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Child`
--

DROP TABLE IF EXISTS `Child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Child` (
  `ChildID` bigint NOT NULL,
  PRIMARY KEY (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Child`
--

LOCK TABLES `Child` WRITE;
/*!40000 ALTER TABLE `Child` DISABLE KEYS */;
INSERT INTO `Child` VALUES (532274122),(532274212),(532274265),(532274387),(532274454),(532274536),(532274652),(532274712),(532274823),(532274901);
/*!40000 ALTER TABLE `Child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class`
--

DROP TABLE IF EXISTS `Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Class` (
  `classTeacherID` bigint NOT NULL,
  `ClassCode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`classTeacherID`),
  CONSTRAINT `fkclasstid` FOREIGN KEY (`classTeacherID`) REFERENCES `Teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class`
--

LOCK TABLES `Class` WRITE;
/*!40000 ALTER TABLE `Class` DISABLE KEYS */;
INSERT INTO `Class` VALUES (125508994,'akco303'),(324601025,'chem108'),(532275243,'amech012'),(532275365,'biol208'),(532275482,'neor809'),(580742776,'hume202'),(668093219,'dena316'),(671357639,'econ480'),(679271419,'waka249'),(828513094,'dtea101');
/*!40000 ALTER TABLE `Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `cLearnerID` bigint NOT NULL,
  `CourseID` bigint NOT NULL,
  `aRegionID` bigint NOT NULL,
  `Lesson` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`cLearnerID`,`CourseID`),
  UNIQUE KEY `cLearnerID` (`cLearnerID`),
  UNIQUE KEY `CourseID` (`CourseID`),
  KEY `fkrid` (`aRegionID`),
  CONSTRAINT `fkclid` FOREIGN KEY (`cLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fkrid` FOREIGN KEY (`aRegionID`) REFERENCES `khanACA` (`RegionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (532265211,553476680,11152,'EnglishForSurviv52'),(532265843,502723699,12792,'IslandSurvi21'),(532275143,502782344,12502,'DesignMasterClass02'),(532275144,508924455,12307,'FitnessForBeginner01'),(532275243,528610728,47680,'HCI02'),(532275636,502782444,50782,'TheDesignMaster06'),(532275844,508236778,38674,'MechEngPrincipal02'),(532275957,501260293,29705,'ArchDesignIV'),(532276163,509659237,36904,'ConstuctionMana101'),(532276244,512578958,74328,'WhyIstillLive05');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donate`
--

DROP TABLE IF EXISTS `Donate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donate` (
  `dUserID` bigint NOT NULL,
  `dLearnerID` bigint NOT NULL,
  `paypal` int DEFAULT NULL,
  `creditcard` bigint DEFAULT NULL,
  `banktransfer` bigint DEFAULT NULL,
  `onetime` bigint DEFAULT NULL,
  `recur` bigint DEFAULT NULL,
  PRIMARY KEY (`dUserID`,`dLearnerID`),
  KEY `fkdlid` (`dLearnerID`),
  CONSTRAINT `fkdlid` FOREIGN KEY (`dLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fkduid` FOREIGN KEY (`dUserID`) REFERENCES `User` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donate`
--

LOCK TABLES `Donate` WRITE;
/*!40000 ALTER TABLE `Donate` DISABLE KEYS */;
INSERT INTO `Donate` VALUES (5322749,532275143,125712579,370409073863776,784247584,10,0),(5322751,532275144,356930250,377088113803225,724540764,23,0),(5322757,532275636,467046707,348033654312182,773217784,12,0),(5322761,532275844,467476220,373735172356370,764126664,32,10),(5322763,532275957,356956965,346436132798413,111555956,23,0),(5322765,532276163,345683569,374922790833092,113097159,10,12),(5322768,532275243,368256914,349532190713075,111287570,0,50),(5322769,532265211,356853568,345725616940496,864427990,5,20),(5322773,532265843,563568954,372403751948510,123556677,1,5),(5322774,532276244,582459812,346935472600246,256287570,1,10);
/*!40000 ALTER TABLE `Donate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khanACA`
--

DROP TABLE IF EXISTS `khanACA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khanACA` (
  `RegionID` bigint NOT NULL,
  `RegionName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`RegionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khanACA`
--

LOCK TABLES `khanACA` WRITE;
/*!40000 ALTER TABLE `khanACA` DISABLE KEYS */;
INSERT INTO `khanACA` VALUES (11152,'Germany'),(12307,'Estonia'),(12502,'Algeria'),(12792,'Kuwait'),(29705,'Finland'),(36904,'Sweden'),(38674,'Senegal'),(47680,'Ukraine'),(50782,'France'),(74328,'Jordan');
/*!40000 ALTER TABLE `khanACA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Learner`
--

DROP TABLE IF EXISTS `Learner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Learner` (
  `LearnerID` bigint NOT NULL,
  PRIMARY KEY (`LearnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Learner`
--

LOCK TABLES `Learner` WRITE;
/*!40000 ALTER TABLE `Learner` DISABLE KEYS */;
INSERT INTO `Learner` VALUES (532232443),(532265211),(532265484),(532265843),(532273212),(532274353),(532275143),(532275144),(532275243),(532275343),(532275357),(532275636),(532275844),(532275957),(532276004),(532276095),(532276097),(532276123),(532276124),(532276163),(532276244),(532276277),(532276376),(532276432),(532276506),(532276663),(532276700),(532276809),(532276879),(532277854);
/*!40000 ALTER TABLE `Learner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Learner_Choose_Teacher`
--

DROP TABLE IF EXISTS `Learner_Choose_Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Learner_Choose_Teacher` (
  `chooseTeacherID` bigint NOT NULL,
  `chooseLearnerID` bigint NOT NULL,
  PRIMARY KEY (`chooseTeacherID`,`chooseLearnerID`),
  KEY `fklctlid` (`chooseLearnerID`),
  CONSTRAINT `fklctlid` FOREIGN KEY (`chooseLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fklcttid` FOREIGN KEY (`chooseTeacherID`) REFERENCES `Teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Learner_Choose_Teacher`
--

LOCK TABLES `Learner_Choose_Teacher` WRITE;
/*!40000 ALTER TABLE `Learner_Choose_Teacher` DISABLE KEYS */;
INSERT INTO `Learner_Choose_Teacher` VALUES (679271419,532265211),(125508994,532265843),(532275243,532275143),(668093219,532275144),(671357639,532275243),(580742776,532275636),(828513094,532275844),(532275365,532275957),(324601025,532276163),(532275482,532276244);
/*!40000 ALTER TABLE `Learner_Choose_Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Learner_Enroll_Course`
--

DROP TABLE IF EXISTS `Learner_Enroll_Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Learner_Enroll_Course` (
  `lecLearnerID` bigint NOT NULL,
  `lecCourseID` bigint NOT NULL,
  PRIMARY KEY (`lecLearnerID`,`lecCourseID`),
  KEY `fkleccid` (`lecCourseID`),
  CONSTRAINT `fkleccid` FOREIGN KEY (`lecCourseID`) REFERENCES `Course` (`CourseID`),
  CONSTRAINT `fkleclid` FOREIGN KEY (`lecLearnerID`) REFERENCES `Learner` (`LearnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Learner_Enroll_Course`
--

LOCK TABLES `Learner_Enroll_Course` WRITE;
/*!40000 ALTER TABLE `Learner_Enroll_Course` DISABLE KEYS */;
INSERT INTO `Learner_Enroll_Course` VALUES (532275957,501260293),(532265843,502723699),(532275143,502782344),(532275636,502782344),(532275844,508236778),(532275144,508924455),(532276163,509659237),(532276244,512578958),(532275243,528610728),(532265211,553476680);
/*!40000 ALTER TABLE `Learner_Enroll_Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Learner_Retake`
--

DROP TABLE IF EXISTS `Learner_Retake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Learner_Retake` (
  `reActivityID` bigint NOT NULL,
  `reLearnerID` bigint NOT NULL,
  PRIMARY KEY (`reActivityID`,`reLearnerID`),
  KEY `fklrlid` (`reLearnerID`),
  CONSTRAINT `fklraid` FOREIGN KEY (`reActivityID`) REFERENCES `Activity` (`ActivityID`),
  CONSTRAINT `fklrlid` FOREIGN KEY (`reLearnerID`) REFERENCES `Learner` (`LearnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Learner_Retake`
--

LOCK TABLES `Learner_Retake` WRITE;
/*!40000 ALTER TABLE `Learner_Retake` DISABLE KEYS */;
INSERT INTO `Learner_Retake` VALUES (239031,532265211),(239036,532265843),(121256,532275143),(125215,532275144),(226666,532275243),(125254,532275636),(125262,532275844),(178434,532275957),(223754,532276163),(257937,532276244);
/*!40000 ALTER TABLE `Learner_Retake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parent`
--

DROP TABLE IF EXISTS `Parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parent` (
  `ParentID` bigint NOT NULL,
  PRIMARY KEY (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parent`
--

LOCK TABLES `Parent` WRITE;
/*!40000 ALTER TABLE `Parent` DISABLE KEYS */;
INSERT INTO `Parent` VALUES (532275400),(532275562),(532275611),(532275622),(532275676),(532275732),(532276054),(532276598),(532278438),(532278554);
/*!40000 ALTER TABLE `Parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parent_Add_Child`
--

DROP TABLE IF EXISTS `Parent_Add_Child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parent_Add_Child` (
  `pacLearnerID` bigint NOT NULL,
  `pacChildID` bigint NOT NULL,
  `pacParentID` bigint NOT NULL,
  PRIMARY KEY (`pacLearnerID`,`pacChildID`,`pacParentID`),
  KEY `fkpaccid` (`pacChildID`),
  KEY `fkpacpid` (`pacParentID`),
  CONSTRAINT `fkpaccid` FOREIGN KEY (`pacChildID`) REFERENCES `Child` (`ChildID`),
  CONSTRAINT `fkpaclid` FOREIGN KEY (`pacLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fkpacpid` FOREIGN KEY (`pacParentID`) REFERENCES `Parent` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parent_Add_Child`
--

LOCK TABLES `Parent_Add_Child` WRITE;
/*!40000 ALTER TABLE `Parent_Add_Child` DISABLE KEYS */;
INSERT INTO `Parent_Add_Child` VALUES (532276163,532274122,532275400),(532265843,532274212,532275611),(532275636,532274265,532275676),(532275243,532274387,532276598),(532265211,532274454,532275622),(532275844,532274536,532278554),(532276244,532274652,532275562),(532275143,532274712,532276054),(532275144,532274823,532275732),(532275957,532274901,532278438);
/*!40000 ALTER TABLE `Parent_Add_Child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parent_Child_List`
--

DROP TABLE IF EXISTS `Parent_Child_List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parent_Child_List` (
  `clParentID` bigint NOT NULL,
  `ChildList` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`clParentID`,`ChildList`),
  CONSTRAINT `fkclparid` FOREIGN KEY (`clParentID`) REFERENCES `Parent` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parent_Child_List`
--

LOCK TABLES `Parent_Child_List` WRITE;
/*!40000 ALTER TABLE `Parent_Child_List` DISABLE KEYS */;
INSERT INTO `Parent_Child_List` VALUES (532275400,'532274122'),(532275562,'532274652'),(532275611,'532274712'),(532275622,'532274454'),(532275676,'532274265'),(532275732,'532274823'),(532276054,'532274712'),(532276598,'532274387'),(532278438,'532274901'),(532278554,'532274536');
/*!40000 ALTER TABLE `Parent_Child_List` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profile`
--

DROP TABLE IF EXISTS `Profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Profile` (
  `proUserID` bigint NOT NULL,
  `proLearnerID` bigint NOT NULL,
  PRIMARY KEY (`proUserID`,`proLearnerID`),
  KEY `fkplid` (`proLearnerID`),
  CONSTRAINT `fkplid` FOREIGN KEY (`proLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fkpuid` FOREIGN KEY (`proUserID`) REFERENCES `User` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profile`
--

LOCK TABLES `Profile` WRITE;
/*!40000 ALTER TABLE `Profile` DISABLE KEYS */;
INSERT INTO `Profile` VALUES (5322755,532265211),(5322756,532265843),(5322748,532275143),(5322749,532275144),(5322754,532275243),(5322750,532275636),(5322751,532275844),(5322752,532275957),(5322753,532276163),(5322757,532276244);
/*!40000 ALTER TABLE `Profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quizes`
--

DROP TABLE IF EXISTS `Quizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quizes` (
  `Hint` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Timelimit` time DEFAULT NULL,
  `qActivityID` bigint NOT NULL,
  PRIMARY KEY (`qActivityID`),
  CONSTRAINT `fkqactid` FOREIGN KEY (`qActivityID`) REFERENCES `Activity` (`ActivityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quizes`
--

LOCK TABLES `Quizes` WRITE;
/*!40000 ALTER TABLE `Quizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `stuTeacherID` bigint NOT NULL,
  `stuLearnerID` bigint NOT NULL,
  PRIMARY KEY (`stuTeacherID`,`stuLearnerID`),
  KEY `fkstulid` (`stuLearnerID`),
  CONSTRAINT `fkstulid` FOREIGN KEY (`stuLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fkstutid` FOREIGN KEY (`stuTeacherID`) REFERENCES `Teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (679271419,532265211),(125508994,532265843),(532275243,532275143),(668093219,532275144),(671357639,532275243),(580742776,532275636),(828513094,532275844),(532275365,532275957),(324601025,532276163),(532275482,532276244);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_Join_Class`
--

DROP TABLE IF EXISTS `Student_Join_Class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Join_Class` (
  `st_tid` bigint NOT NULL,
  `st_lid` bigint NOT NULL,
  `class_tid` bigint NOT NULL,
  PRIMARY KEY (`st_tid`,`st_lid`,`class_tid`),
  KEY `fksjclid` (`st_lid`),
  KEY `fksjcctid` (`class_tid`),
  CONSTRAINT `fksjcctid` FOREIGN KEY (`class_tid`) REFERENCES `Class` (`classTeacherID`),
  CONSTRAINT `fksjclid` FOREIGN KEY (`st_lid`) REFERENCES `Student` (`stuLearnerID`),
  CONSTRAINT `fksjctid` FOREIGN KEY (`st_tid`) REFERENCES `Student` (`stuTeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_Join_Class`
--

LOCK TABLES `Student_Join_Class` WRITE;
/*!40000 ALTER TABLE `Student_Join_Class` DISABLE KEYS */;
INSERT INTO `Student_Join_Class` VALUES (679271419,532265211,679271419),(125508994,532265843,125508994),(668093219,532275144,668093219),(532275243,532275243,532275243),(671357639,532275243,671357639),(580742776,532275636,580742776),(532275365,532275957,532275365),(324601025,532276163,324601025),(532275482,532276244,532275482);
/*!40000 ALTER TABLE `Student_Join_Class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `TeacherID` bigint NOT NULL,
  `ExperiencedYear` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tLearnerID` bigint NOT NULL,
  PRIMARY KEY (`TeacherID`),
  KEY `fklid` (`tLearnerID`),
  CONSTRAINT `fklid` FOREIGN KEY (`tLearnerID`) REFERENCES `Learner` (`LearnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES (125508994,'14',532265843),(324601025,'4',532276163),(532275243,'3',532275143),(532275365,'2',532275957),(532275482,'5',532276244),(580742776,'15',532275636),(668093219,'23',532275144),(671357639,'5',532275243),(679271419,'2',532265211),(828513094,'2',532275844);
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher_Add_Learner`
--

DROP TABLE IF EXISTS `Teacher_Add_Learner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher_Add_Learner` (
  `talTeacherID` bigint NOT NULL,
  `talLearnerID` bigint NOT NULL,
  `talSTTID` bigint NOT NULL,
  `talSTLID` bigint NOT NULL,
  PRIMARY KEY (`talTeacherID`,`talLearnerID`,`talSTTID`,`talSTLID`),
  KEY `fktallid` (`talLearnerID`),
  KEY `fktalsttid` (`talSTTID`),
  KEY `fktalstlid` (`talSTLID`),
  CONSTRAINT `fktallid` FOREIGN KEY (`talLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fktalstlid` FOREIGN KEY (`talSTLID`) REFERENCES `Student` (`stuLearnerID`),
  CONSTRAINT `fktalsttid` FOREIGN KEY (`talSTTID`) REFERENCES `Student` (`stuTeacherID`),
  CONSTRAINT `fktaltid` FOREIGN KEY (`talTeacherID`) REFERENCES `Teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher_Add_Learner`
--

LOCK TABLES `Teacher_Add_Learner` WRITE;
/*!40000 ALTER TABLE `Teacher_Add_Learner` DISABLE KEYS */;
INSERT INTO `Teacher_Add_Learner` VALUES (679271419,532265211,679271419,532265843),(532275243,532275143,532275243,532275143),(668093219,532275144,668093219,532275144),(671357639,532275243,671357639,532275243),(580742776,532275636,580742776,532275636),(828513094,532275844,828513094,532275844),(532275365,532275957,532275365,532275957),(324601025,532276163,324601025,532276163),(532275482,532276244,532275482,532276244);
/*!40000 ALTER TABLE `Teacher_Add_Learner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher_ClassTaught`
--

DROP TABLE IF EXISTS `Teacher_ClassTaught`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher_ClassTaught` (
  `classTaughtTeacherID` bigint NOT NULL,
  `ClassTaught` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`classTaughtTeacherID`,`ClassTaught`),
  CONSTRAINT `fkclassttid` FOREIGN KEY (`classTaughtTeacherID`) REFERENCES `Teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher_ClassTaught`
--

LOCK TABLES `Teacher_ClassTaught` WRITE;
/*!40000 ALTER TABLE `Teacher_ClassTaught` DISABLE KEYS */;
INSERT INTO `Teacher_ClassTaught` VALUES (125508994,'akco303'),(324601025,'chem108'),(532275243,'amech012'),(532275365,'biol208'),(532275482,'neor809'),(580742776,'hume202'),(668093219,'dena316'),(671357639,'econ480'),(679271419,'waka249'),(828513094,'dtea101');
/*!40000 ALTER TABLE `Teacher_ClassTaught` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher_Parent_HaveAccess`
--

DROP TABLE IF EXISTS `Teacher_Parent_HaveAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher_Parent_HaveAccess` (
  `tphTeacherID` bigint NOT NULL,
  `tphParentID` bigint NOT NULL,
  `tphADL_id` bigint NOT NULL,
  PRIMARY KEY (`tphTeacherID`,`tphParentID`,`tphADL_id`),
  KEY `fktphpid` (`tphParentID`),
  KEY `fktphadlid` (`tphADL_id`),
  CONSTRAINT `fktphadlid` FOREIGN KEY (`tphADL_id`) REFERENCES `academicdata` (`adLearnerID`),
  CONSTRAINT `fktphpid` FOREIGN KEY (`tphParentID`) REFERENCES `Parent` (`ParentID`),
  CONSTRAINT `fktphtid` FOREIGN KEY (`tphTeacherID`) REFERENCES `Teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher_Parent_HaveAccess`
--

LOCK TABLES `Teacher_Parent_HaveAccess` WRITE;
/*!40000 ALTER TABLE `Teacher_Parent_HaveAccess` DISABLE KEYS */;
INSERT INTO `Teacher_Parent_HaveAccess` VALUES (324601025,532275400,532276163),(532275482,532275562,532276244),(125508994,532275611,532265843),(679271419,532275622,532265211),(580742776,532275676,532275636),(668093219,532275732,532275144),(532275243,532276054,532275143),(671357639,532276598,532275243),(828513094,532278438,532275957);
/*!40000 ALTER TABLE `Teacher_Parent_HaveAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `userID` bigint NOT NULL,
  `phoneNO` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fullname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nationalID` bigint DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `DateJoined` date DEFAULT NULL,
  `Facebook` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AppleID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `GoogleAcc` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (5322748,'834545544','Sonam Dorji',1010100423,'Pathum Thani','2021-05-24','facebook.com/Sonam.Dorji','thebeardisbetter@gmail.com','thebeardisbetter@gmail.com','thebeardisbetter@gmail.com'),(5322749,'625375532','Rajindu Yasojith',2363752210,'Colombo','2021-05-25','facebook.com/rajindu.yasojith','rajin.hydra@gmail.com','rajin.hydra@icloud.com','rajin.hydra@gmail.com'),(5322750,'629636612','Rohan Rai',4289437622,'Katmandu','2021-05-25','facebook.com/rai.rohan','rohan_rexx@icloud.com','reaxxrohan@gmail.com','reaxxorohan@gmail.com'),(5322751,'97517891339','Ugyen Phuntsho',1025387354,'Bumthang','2021-05-25','facebook.com/ugyen.phuntsho','ugyen_phuntsho2002@gmail.com','ugyen_phuntsho2002@gmail.com','akaup2002@gmail.com'),(5322752,'864536654','Phurirat Chakreeyarat',6914366538,'Bangkok','2021-05-26','facebook.com/phurirat','phurirat333@icloud.com','phurirat@gmail.com','phurirat@gmail.com'),(5322753,'919433244','Chusan Rompo',3765589330,'Chiang Mai','2021-05-26','facebook.com/Chusan.rompo','rompochusan@gmail.com','rompochusan@gmail.com','rompochusan@gmail.com'),(5322754,'959869457','Nathitiek Rochananil',6916044829,'Pathum Thani','2021-05-27','facebook.com/channatro','channnatro@icloud.com','natrochhan@gmail.com','natrochan@gmail.com'),(5322755,'918160492283','Arjun Kumar',4374005678,'New Delhi','2021-05-27','facebook.com/kumar.raja','kumar_raja@gmail.com','kumar_raja@gmail.com','kumar_raja@gmail.com'),(5322756,'913766289402','Prem Thakur',4367490038,'Assam','2021-05-27','facebook.com/prem.thakur','prem_thakur@gmail.com','prem_thakur@gmail.com','thakurprem97@gmail.com'),(5322757,'97517635520','Kuenley Wangchuk',1010487224,'Trongsa','2021-05-28','facebook.com/kuenley.wangchuk','yelneuk.w@icloud.co','yelneuk@gmail.com','yelneunk2001@gmail.com'),(5322758,'7155553890','James Smith Jr',5788300298,'Texas','2021-05-28','facebook.com/smith.jr','imsmithjr@icloud.com','	imsmithjr@gmail.com','imsmithjr@gmail.com'),(5322759,'2038654007','Robert Wayne',5680035210,'Florida','2021-05-29','facebook.com/robert.wayne','batmanson66@icloud.com','batmanson@gmail.com','	batmanson@gmail.com'),(5322760,'947126468','Himasara Waranjana',2357400483,'Colombo','2021-05-29','facebook.com/himasara','boyhimasara@icloud.com	','itsyourboyhima@gmail.com','itsyourboyhima@gmail.com'),(5322761,'983214324','Beenom Raika',2016044745,'Pokhara','2021-05-29','facebook.com/raika.beenom','coldveinskage@icloud.com','raikage666@gmail.com','raikage666@gmail.com'),(5322762,'2029182132','Lesor Manuttikul',6735347382,'Buriram','2020-04-10','facebook.com/lesor45','lesor45@hotmail.com','lesorlove45@gmail.com	','lesor45@hotmail.com'),(5322763,'813444342','Osborn O\'Brien',5167621961,'Ohio','2012-04-06','facebook.com/osbornbaby','osbornisthebest@yahoo.com','osbornisawesome@gmail.com','osbornisthebest@yahoo.com'),(5322764,'988424234','Harry Stylish',3506346406,'Khon Kaen','2015-05-08','facebook.com/HarryStylish','	imHarryStyles@icloud.com','ImHarryStyles@gmail.com	','ImHarryStyles@hotmail.com'),(5322765,'7521599033','Sahasawat Lawetkitti',9509067633,'Korat','2020-08-07','facebook.com/Sahahsawat','sahasawatL@icloud.com','sahasawatL@gmail.com','	sahasawatL@yahoo.com'),(5322766,'7700142904','Mason Resmann',1492689701,'Newcastle','2020-03-09','facebook.com/MasonResman','mason_resman@gmail.com','mason_resman@gmail.com','mason_resman@hotmail.com'),(5322767,'5309675160','Okon Chokma',4741368684,'Liverpool','2022-05-11','facebook.com/OkonChokma','	Okon_Chokma@gmail.com','Okon_Chokma@gmail.com','Okon_Chokma@hotmail.com'),(5322768,'2255453741','John Cane',8014521666,'Utah','2020-12-03','facebook.com/JohnCane','	JohnCane@gmail.com','JohnCane@gmail.com','JohnCane@hotmail.com'),(5322769,'4094419778','Samantha Taylor',3325980383,'New York','2017-12-30','facebook.com/SamanthaTaylor','SamanthaApple@icloud.com','	SamanthaTaylorFTW@gmail.com	','SamanthaTaylorFTW@hotmail.com'),(5322770,'5056760972','Juridth Jay Calvin',1867661152,'Maine','2020-03-14','facebook.com/JuridthCalvin','CalvinJay@gmail.com','	CalvinJay@gmail.com	','CalvinJay@yahoo.com'),(5322771,'149904050','George Maddison',8069624738,'Massachusets','2020-03-15','facebook.com/GeorgeMaddison','GeorgeMadison@gmail.com','JayCalivin@gmail.com','GeorgeMadison@gmail.com'),(5322772,'671503277','Gawinta Rawinji',3512826401,'Chiang Rai','2020-03-16','facebook.com/GawinthaRawinji','GawinthaRaw@icloud.com','GawinthaRaw@gmail.com','GawinthaRaw@hotmail.com'),(5322773,'149904050','Edward Fury',6767624456,'Nakhon Panom','2022-03-17','facebook.com/EdwardFury	','EdFurry@icloud.com','EdFurry@gmail.com','EdFurry@yahoo.com'),(5322774,'7099012350','Jake Smith',9762682068,'Hokaido','2022-07-27','facebook.com/JakeSmith','	JakeSmith@icloud.com','	JakeSmith@gmail.com	','JakeSmith@hotmail.com'),(5322775,'9092271082','Curtis Liu',7526365628,'Tokyo','2018-07-25','facebook.com/CurtisLiu','CurtisLiu@gmail.com','CurtisLiu@gmail.com','CurtisLiu@yahoo.com'),(5322776,'17400745554','Ethan Little',9416061682,'Beijing','2018-01-14','facebook.com/EthanLittle','Ethan_L@icloud.com','Ethan_L@gmail.com','Ethan_L@hotmail.com'),(5322777,'3888458026','William Arnold',5467383829,'Argentina','2016-04-21','facebook.com/WilliamArnold','WilliamArnold@gmail.com','WilliamArnold@gmail.com','WilliamArnold@yahoo.com');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Register`
--

DROP TABLE IF EXISTS `User_Register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Register` (
  `urLearnerID` bigint NOT NULL,
  `urUserID` bigint NOT NULL,
  `urTeacherID` bigint NOT NULL,
  `urParentID` bigint NOT NULL,
  PRIMARY KEY (`urLearnerID`,`urUserID`,`urTeacherID`,`urParentID`),
  KEY `fkurUid` (`urUserID`),
  KEY `fkurTid` (`urTeacherID`),
  KEY `fkurPid` (`urParentID`),
  CONSTRAINT `fkurLid` FOREIGN KEY (`urLearnerID`) REFERENCES `Learner` (`LearnerID`),
  CONSTRAINT `fkurPid` FOREIGN KEY (`urParentID`) REFERENCES `Parent` (`ParentID`),
  CONSTRAINT `fkurTid` FOREIGN KEY (`urTeacherID`) REFERENCES `Teacher` (`TeacherID`),
  CONSTRAINT `fkurUid` FOREIGN KEY (`urUserID`) REFERENCES `User` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Register`
--

LOCK TABLES `User_Register` WRITE;
/*!40000 ALTER TABLE `User_Register` DISABLE KEYS */;
INSERT INTO `User_Register` VALUES (532275143,5322748,532275243,532276054),(532275144,5322749,668093219,532275732),(532275636,5322750,580742776,532275676),(532275844,5322751,828513094,532278554),(532275957,5322752,532275365,532278438),(532276163,5322753,324601025,532275400),(532275243,5322754,671357639,532276598),(532265211,5322755,679271419,532275622),(532265843,5322756,125508994,532275611),(532276244,5322757,532275482,532275562);
/*!40000 ALTER TABLE `User_Register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 21:06:24
