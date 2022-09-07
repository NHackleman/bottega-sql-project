CREATE DATABASE  IF NOT EXISTS `sql_project_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sql_project_schema`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_project_schema
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_number` int NOT NULL,
  `grades_courses_id` int DEFAULT NULL,
  `grades_professors_id` int DEFAULT NULL,
  `grades_students_id` int DEFAULT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  KEY `grades_professors_id_idx` (`grades_professors_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_professors_id` FOREIGN KEY (`grades_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,55,1,9,26),(2,86,2,10,7),(3,44,4,3,6),(4,53,3,10,1),(5,64,5,6,21),(6,94,2,4,12),(7,40,5,3,26),(8,67,4,9,13),(9,70,2,6,5),(10,45,5,7,9),(11,69,3,6,24),(12,58,2,2,9),(13,93,3,1,20),(14,45,3,2,5),(15,63,3,3,19),(16,68,3,10,11),(17,90,1,4,8),(18,53,2,10,27),(19,66,3,6,26),(20,88,3,7,26),(21,64,3,2,5),(22,66,4,4,16),(23,73,1,4,30),(24,99,5,8,1),(25,90,1,8,15),(26,59,1,5,1),(27,87,5,9,19),(28,80,3,4,5),(29,86,3,9,25),(30,78,4,6,18),(31,62,1,3,4),(32,88,3,7,9),(33,77,1,2,3),(34,100,4,7,8),(35,47,5,1,15),(36,61,2,7,2),(37,61,4,3,3),(38,91,5,1,20),(39,97,5,4,4),(40,79,5,5,15),(41,48,2,10,29),(42,94,3,4,24),(43,98,3,5,20);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-06 20:29:40
