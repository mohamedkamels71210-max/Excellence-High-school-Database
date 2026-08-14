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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-14 23:40:03
