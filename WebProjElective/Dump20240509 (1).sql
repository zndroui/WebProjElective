-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: studentmanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `idcourse` int NOT NULL,
  `coursename` varchar(45) DEFAULT NULL,
  `coursecode` varchar(45) DEFAULT NULL,
  `coursesubject` varchar(45) DEFAULT NULL,
  `coursesched` varchar(45) DEFAULT NULL,
  `coursetime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcourse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseni`
--

DROP TABLE IF EXISTS `courseni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseni` (
  `coursecode` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `lecture` int NOT NULL,
  `laboratory` int NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`coursecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseni`
--

LOCK TABLES `courseni` WRITE;
/*!40000 ALTER TABLE `courseni` DISABLE KEYS */;
INSERT INTO `courseni` VALUES (3545,'Elective 2',3,3,'Database management');
/*!40000 ALTER TABLE `courseni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_code` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `credit_hours` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (101,'Introduction to Programming','This course introduces basic programming concepts.',3),(102,'Database Fundamentals','This course covers basic database concepts and SQL.',3),(103,'Web Development Basics','This course covers HTML, CSS, and JavaScript basics.',3),(104,'Data Structures and Algorithms','This course covers advanced data structures and algorithms.',4),(105,'Object-Oriented Programming','This course covers object-oriented programming principles.',3),(106,'Database Design','This course covers advanced database design and normalization.',3),(107,'Web Application Development','This course covers server-side programming and web frameworks.',4),(108,'Software Engineering','This course covers software development methodologies and best practices.',3),(109,'Mobile App Development','This course covers mobile app development for iOS and Android.',4),(110,'Computer Networks','This course covers networking concepts and protocols.',3),(111,'Operating Systems','This course covers operating system concepts and principles.',3),(112,'Cybersecurity Fundamentals','This course covers cybersecurity principles and practices.',3);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `iddepartment` int NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `enrollment_id` int NOT NULL,
  `enrollment_date` date DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL,
  `grade` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `idinstructor` int NOT NULL AUTO_INCREMENT,
  `lname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `suffix` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinstructor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `instructor_id` int NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `suffix` varchar(45) NOT NULL,
  `stadd` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `bdate` date NOT NULL,
  `pnum` int NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (1,'fsa','af','afs','zc','dsgfds','sdfsd','sdfsd','2222-03-01',31421,'dsfxzc');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `semester_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cpnumber` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'oncenes','judy','fuecocillo','',22,'2001-08-12','nakatira sa puso mo','female',143244,NULL),(2,'oncenes','judy','fuecocillo','',22,'2001-08-12','nakatira sa puso mo','female',143244,NULL),(3,'nonchalant','oa','assumers',NULL,23,'1976-12-07','nang ewan ka bigla','female',143,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_data`
--

DROP TABLE IF EXISTS `student_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_data` (
  `studentid` int NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthdate` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `coursename` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `yearlevel` varchar(50) DEFAULT NULL,
  `cpnumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_data`
--

LOCK TABLES `student_data` WRITE;
/*!40000 ALTER TABLE `student_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentni`
--

DROP TABLE IF EXISTS `studentni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentni` (
  `id_stud` int unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `suffix` varchar(45) NOT NULL,
  `streetadd` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `bdate` date NOT NULL,
  `gender` varchar(45) NOT NULL,
  `pnumber` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `ylevel` varchar(45) NOT NULL,
  `degree` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stud`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentni`
--

LOCK TABLES `studentni` WRITE;
/*!40000 ALTER TABLE `studentni` DISABLE KEYS */;
INSERT INTO `studentni` VALUES (1,'dgfdh','hdfh','dfhdfh','dfhdfh','ahjmghmfhd','cbcf','fdjdfh','2024-05-14','Male',978970,'djcgfnc','1st Year','BSCPe'),(2,'asf','asf','asf','vxzv','dsbcv','nvbmnbsdv','szxvbdfxb','2001-02-23','Male',8786978,'gjhfdbfb','2nd Year','BSCPe'),(3,'gnvcb ','gbcvx','bvc ','ngbv ','gbvc ','ngvbc ','cx gfdvcx','3333-03-23','Male',0,'dsxfds','1st Year','BSCPe'),(4,'sfd','sdf','sd','sdf','sfd','dfs','fd','1231-03-22','Male',32423,'sddfsd2','1st Year','BSCPe');
/*!40000 ALTER TABLE `studentni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel_number` varchar(20) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'John Smith','123 Main St, CityA','555-1234','2000-01-01'),(2,'Jane Doe','456 Elm St, CityB','555-5678','2001-02-02'),(3,'Michael Johnson','789 Oak St, CityC','555-9101','2002-03-03'),(4,'Sarah Williams','321 Maple St, CityD','555-2468','2003-04-04'),(5,'David Brown','654 Birch St, CityE','555-3690','2004-05-05'),(6,'Jennifer Taylor','987 Cedar St, CityF','555-4827','2005-06-06'),(7,'James Wilson','741 Pine St, CityG','555-6051','2006-07-07'),(8,'Jessica Martinez','852 Oak St, CityH','555-7283','2007-08-08'),(9,'Robert Anderson','963 Elm St, CityI','555-8416','2008-09-09'),(10,'Elizabeth Garcia','147 Maple St, CityJ','555-9649','2009-10-10'),(11,'William Hernandez','258 Birch St, CityK','555-0872','2010-11-11'),(12,'Maria Lopez','369 Cedar St, CityL','555-1095','2011-12-12'),(13,'Charles Gonzales','753 Pine St, CityM','555-1218','2012-01-13'),(14,'Amanda Wilson','864 Oak St, CityN','555-1341','2013-02-14'),(15,'Daniel Rodriguez','975 Elm St, CityO','555-1464','2014-03-15'),(16,'Melissa Martinez','246 Maple St, CityP','555-1587','2015-04-16'),(17,'Christopher Gonzalez','135 Cedar St, CityQ','555-1710','2016-05-17'),(18,'Ashley Miller','642 Birch St, CityR','555-1833','2017-06-18'),(19,'Jessica Hernandez','753 Pine St, CityS','555-1956','2018-07-19'),(20,'Matthew Perez','864 Oak St, CityT','555-2079','2019-08-20'),(21,'Kimberly Taylor','975 Elm St, CityU','555-2202','2020-09-21'),(22,'Joshua Lewis','147 Maple St, CityV','555-2325','2021-10-22'),(23,'Sarah Garcia','258 Birch St, CityW','555-2448','2022-11-23'),(24,'Michael Brown','369 Cedar St, CityX','555-2571','2023-12-24'),(25,'Samantha Rodriguez','753 Pine St, CityY','555-2694','2024-01-25'),(26,'Joseph Martinez','864 Oak St, CityZ','555-2817','2025-02-26'),(27,'Lauren Wilson','975 Elm St, CityA1','555-2940','2026-03-27'),(28,'Andrew Hernandez','246 Maple St, CityB1','555-3063','2027-04-28'),(29,'Emily Anderson','135 Cedar St, CityC1','555-3186','2028-05-29'),(30,'Justin Gonzalez','642 Birch St, CityD1','555-3309','2029-06-30'),(31,'Rachel Miller','753 Pine St, CityE1','555-3432','2030-07-31'),(32,'Kevin Perez','864 Oak St, CityF1','555-3555','2031-08-01'),(33,'Megan Taylor','975 Elm St, CityG1','555-3678','2032-09-02'),(34,'Brandon Lewis','147 Maple St, CityH1','555-3801','2033-10-03'),(35,'Stephanie Garcia','258 Birch St, CityI1','555-3924','2034-11-04'),(36,'Jacob Brown','369 Cedar St, CityJ1','555-4047','2035-12-05'),(37,'Hannah Rodriguez','753 Pine St, CityK1','555-4170','2036-01-06'),(38,'Nicole Martinez','864 Oak St, CityL1','555-4293','2037-02-07'),(39,'Tyler Wilson','975 Elm St, CityM1','555-4416','2038-03-08'),(40,'Kayla Hernandez','246 Maple St, CityN1','555-4539','2039-04-09'),(41,'Ethan Anderson','135 Cedar St, CityO1','555-4662','2040-05-10'),(42,'Olivia Gonzalez','642 Birch St, CityP1','555-4785','2041-06-11'),(43,'Aiden Miller','753 Pine St, CityQ1','555-4908','2042-07-12'),(44,'Madison Perez','864 Oak St, CityR1','555-5031','2043-08-13'),(45,'Alexis Taylor','975 Elm St, CityS1','555-5154','2044-09-14'),(46,'Gabriel Lewis','147 Maple St, CityT1','555-5277','2045-10-15'),(47,'Isabella Garcia','258 Birch St, CityU1','555-5400','2046-11-16'),(48,'Zoe Brown','369 Cedar St, CityV1','555-5523','2047-12-17'),(49,'Jackson Rodriguez','753 Pine St, CityW1','555-5646','2048-01-18'),(50,'Natalie Martinez','864 Oak St, CityX1','555-5769','2049-02-19');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenttableni`
--

DROP TABLE IF EXISTS `studenttableni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenttableni` (
  `idstudenttableni` int NOT NULL AUTO_INCREMENT,
  `studentname` varchar(45) NOT NULL,
  PRIMARY KEY (`idstudenttableni`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenttableni`
--

LOCK TABLES `studenttableni` WRITE;
/*!40000 ALTER TABLE `studenttableni` DISABLE KEYS */;
INSERT INTO `studenttableni` VALUES (1,'ghgf'),(2,'ghgf'),(3,'gfh'),(4,'hfh'),(5,'whatdahelll'),(6,'itsfreakingworkingna'),(7,'itsfreakingworkingna'),(8,'itsfreakingworkingna'),(9,'hellooooo'),(10,'hjjkll'),(11,'safghsfdgrefgjhdgsfax'),(12,'judyyy'),(13,'asfsaf'),(14,'sgrgsdh'),(15,'shdfgsaffds'),(16,'laufey'),(17,'beabadoobee');
/*!40000 ALTER TABLE `studenttableni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yearlevel`
--

DROP TABLE IF EXISTS `yearlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yearlevel` (
  `idyearlevel` int NOT NULL AUTO_INCREMENT,
  `yearlevel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idyearlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yearlevel`
--

LOCK TABLES `yearlevel` WRITE;
/*!40000 ALTER TABLE `yearlevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `yearlevel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-09 10:53:41
