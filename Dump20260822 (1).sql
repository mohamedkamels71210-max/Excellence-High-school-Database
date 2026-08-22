-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: excellenthighschool
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `struggling_students`
--

DROP TABLE IF EXISTS `struggling_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `struggling_students` (
  `id` int NOT NULL DEFAULT '0',
  `Students_name` varchar(100) NOT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `ENROLLMENT_DATE` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `academic_level` int DEFAULT NULL,
  `track` varchar(20) DEFAULT NULL,
  `gpa` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struggling_students`
--

LOCK TABLES `struggling_students` WRITE;
/*!40000 ALTER TABLE `struggling_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `struggling_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Students_name` varchar(100) NOT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `ENROLLMENT_DATE` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `academic_level` int DEFAULT NULL,
  `track` varchar(20) DEFAULT NULL,
  `gpa` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_Students_name` (`Students_name`),
  CONSTRAINT `students_chk_1` CHECK ((`Gender` in (_utf8mb4'M',_utf8mb4'F'))),
  CONSTRAINT `students_chk_2` CHECK ((`academic_level` between 1 and 6)),
  CONSTRAINT `students_chk_3` CHECK ((`track` in (_utf8mb4'scientific',_utf8mb4'literary'))),
  CONSTRAINT `students_chk_4` CHECK ((`gpa` between 0 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Ahmed Ali','2006-05-12','M','2022-09-01','ahmed.ali@email.com',1,'scientific',88.50),(2,'Sara Mahmoud','2005-08-22','F','2021-09-01','sara.mahmoud@email.com',3,'literary',92.00),(3,'Mohamed Youssef','2006-01-15','M','2022-09-01','mohamed.youssef@email.com',2,'scientific',75.30),(4,'Fatima Khaled','2004-11-30','F','2020-09-01','fatima.khaled@email.com',5,'scientific',96.40),(5,'Omar Hassan','2005-03-10','M','2021-09-01','omar.hassan@email.com',4,'literary',81.20),(6,'Maryam Abdullah','2006-07-19','F','2022-09-01','maryam.abdullah@email.com',1,'scientific',89.00),(7,'Khaled Ibrahim','2004-04-05','M','2020-09-01','khaled.ibrahim@email.com',6,'scientific',90.10),(8,'Noura Saeed','2005-09-14','F','2021-09-01','noura.saeed@email.com',3,'literary',85.60),(9,'Abdulaziz Fahad','2006-12-01','M','2022-09-01','abdulaziz.fahad@email.com',2,'scientific',78.00),(10,'Reem Sulaiman','2005-02-28','F','2021-09-01','reem.sulaiman@email.com',4,'scientific',94.50),(11,'Youssef Ahmed','2006-06-18','M','2022-09-01','youssef.ahmed@email.com',1,'literary',70.00),(12,'Shahad Hussain','2004-10-10','F','2020-09-01','shahad.hussain@email.com',5,'scientific',98.20),(13,'Hamza Mustafa','2005-01-05','M','2021-09-01','hamza.mustafa@email.com',3,'scientific',83.40),(14,'Mona Jamal','2006-03-25','F','2022-09-01','mona.jamal@email.com',2,'literary',88.00),(15,'Faisal Tariq','2004-07-08','M','2020-09-01','faisal.tariq@email.com',6,'scientific',91.50),(16,'Hoda Adel','2005-11-12','F','2021-09-01','hoda.adel@email.com',4,'literary',86.90),(17,'Bader Sultan','2006-08-30','M','2022-09-01','bader.sultan@email.com',1,'scientific',79.20),(18,'Lina Salah','2004-05-14','F','2020-09-01','lina.salah@email.com',6,'scientific',95.00),(19,'Tariq Ziad','2005-12-20','M','2021-09-01','tariq.ziad@email.com',3,'literary',74.50),(20,'Asmaa Rashid','2006-04-02','F','2022-09-01','asmaa.rashid@email.com',2,'scientific',87.30),(21,'Saud Nasser','2004-09-17','M','2020-09-01','saud.nasser@email.com',5,'literary',82.00),(22,'Dana Saleh','2005-06-21','F','2021-09-01','dana.saleh@email.com',4,'scientific',93.10),(23,'Waleed Majed','2006-10-09','M','2022-09-01','waleed.majed@email.com',1,'literary',69.80),(24,'Joud Mazen','2004-02-11','F','2020-09-01','joud.mazen@email.com',6,'scientific',97.50),(25,'Ziad Hisham','2005-07-04','M','2021-09-01','ziad.hisham@email.com',3,'scientific',84.00),(26,'Arwa Nabeel','2006-11-23','F','2022-09-01','arwa.nabeel@email.com',2,'literary',90.00),(27,'Rakan Sami','2004-08-15','M','2020-09-01','rakan.sami@email.com',5,'scientific',88.90),(28,'Haneen Emad','2005-03-31','F','2021-09-01','haneen.emad@email.com',4,'literary',85.00),(29,'Salman Wael','2006-01-28','M','2022-09-01','salman.wael@email.com',1,'scientific',76.40),(30,'Nujood Otaibi','2004-12-05','F','2020-09-01','nujood.otaibi@email.com',6,'scientific',99.10);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_subjects`
--

DROP TABLE IF EXISTS `students_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_subjects` (
  `students_id` int NOT NULL,
  `subjects_ID` int NOT NULL,
  PRIMARY KEY (`students_id`,`subjects_ID`),
  KEY `subjects_ID` (`subjects_ID`),
  CONSTRAINT `students_subjects_ibfk_1` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`),
  CONSTRAINT `students_subjects_ibfk_2` FOREIGN KEY (`subjects_ID`) REFERENCES `subjects` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_subjects`
--

LOCK TABLES `students_subjects` WRITE;
/*!40000 ALTER TABLE `students_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SUBJECTS_name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Mathematics'),(2,'Physics'),(3,'Chemistry'),(4,'Arabic Language'),(5,'English Language'),(6,'History');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TEACHERS_name` varchar(100) NOT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `office_number` varchar(20) DEFAULT NULL,
  `subjects_ID` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `subjects_ID` (`subjects_ID`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`subjects_ID`) REFERENCES `subjects` (`ID`),
  CONSTRAINT `teachers_chk_1` CHECK ((`Gender` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Ahmed Al-Mansour','1980-03-15','M','ahmed.mansour@school.com','A-101',NULL),(2,'Mona Al-Zahrani','1985-07-22','F','mona.zahrani@school.com','B-102',NULL),(3,'Khaled Al-Qahtani','1978-11-05','M','khaled.qahtani@school.com','A-103',NULL),(4,'Wafaa Al-Shammari','1990-01-30','F','wafaa.shammari@school.com','C-101',NULL),(5,'Saud Al-Harbi','1982-09-18','M','saud.harbi@school.com','A-104',NULL),(6,'Hind Al-Ghamdi','1988-04-12','F','hind.ghamdi@school.com','B-103',NULL),(7,'Mohamed Al-Dosari','1975-06-25','M','mohamed.dosari@school.com','A-105',NULL),(8,'Reem Al-Mutairi','1992-08-08','F','reem.mutairi@school.com','C-102',NULL),(9,'Abdulrahman Al-Shehri','1983-12-14','M','abdulrahman.shehri@school.com','B-101',NULL),(10,'Sara Al-Otaibi','1987-02-20','F','sara.otaibi@school.com','C-103',NULL);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teachers_info`
--

DROP TABLE IF EXISTS `teachers_info`;
/*!50001 DROP VIEW IF EXISTS `teachers_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teachers_info` AS SELECT 
 1 AS `TEACHERS_name`,
 1 AS `office_number`,
 1 AS `SUBJECTS_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `teachers_students`
--

DROP TABLE IF EXISTS `teachers_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers_students` (
  `teachers_id` int NOT NULL,
  `students_id` int NOT NULL,
  PRIMARY KEY (`teachers_id`,`students_id`),
  KEY `students_id` (`students_id`),
  CONSTRAINT `teachers_students_ibfk_1` FOREIGN KEY (`teachers_id`) REFERENCES `teachers` (`id`),
  CONSTRAINT `teachers_students_ibfk_2` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_students`
--

LOCK TABLES `teachers_students` WRITE;
/*!40000 ALTER TABLE `teachers_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `teachers_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_students`
--

DROP TABLE IF EXISTS `top_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_students` (
  `id` int NOT NULL DEFAULT '0',
  `Students_name` varchar(100) NOT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `ENROLLMENT_DATE` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `academic_level` int DEFAULT NULL,
  `track` varchar(20) DEFAULT NULL,
  `gpa` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_students`
--

LOCK TABLES `top_students` WRITE;
/*!40000 ALTER TABLE `top_students` DISABLE KEYS */;
INSERT INTO `top_students` VALUES (2,'Sara Mahmoud','2005-08-22','F','2021-09-01','sara.mahmoud@email.com',3,'literary',92.00),(4,'Fatima Khaled','2004-11-30','F','2020-09-01','fatima.khaled@email.com',5,'scientific',96.40),(7,'Khaled Ibrahim','2004-04-05','M','2020-09-01','khaled.ibrahim@email.com',6,'scientific',90.10),(10,'Reem Sulaiman','2005-02-28','F','2021-09-01','reem.sulaiman@email.com',4,'scientific',94.50),(12,'Shahad Hussain','2004-10-10','F','2020-09-01','shahad.hussain@email.com',5,'scientific',98.20),(15,'Faisal Tariq','2004-07-08','M','2020-09-01','faisal.tariq@email.com',6,'scientific',91.50),(18,'Lina Salah','2004-05-14','F','2020-09-01','lina.salah@email.com',6,'scientific',95.00),(22,'Dana Saleh','2005-06-21','F','2021-09-01','dana.saleh@email.com',4,'scientific',93.10),(24,'Joud Mazen','2004-02-11','F','2020-09-01','joud.mazen@email.com',6,'scientific',97.50),(30,'Nujood Otaibi','2004-12-05','F','2020-09-01','nujood.otaibi@email.com',6,'scientific',99.10);
/*!40000 ALTER TABLE `top_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'excellenthighschool'
--
/*!50003 DROP PROCEDURE IF EXISTS `students_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `students_info`()
begin 
  select 
  s.Students_name,
  sub.SUBJECTS_name 
  from students s
  join students_subjects ss on s.ID = ss. students_id
  join subjects sub on ss. subjects_ID = sub.ID ;
  end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `teachers_info`
--

/*!50001 DROP VIEW IF EXISTS `teachers_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teachers_info` AS select `t`.`TEACHERS_name` AS `TEACHERS_name`,`t`.`office_number` AS `office_number`,`sub`.`SUBJECTS_name` AS `SUBJECTS_name` from (`teachers` `t` join `subjects` `sub` on((`t`.`subjects_ID` = `sub`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-22 22:30:41
