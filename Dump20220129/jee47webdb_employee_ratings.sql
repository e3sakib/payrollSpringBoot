-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: jee47webdb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `employee_ratings`
--

DROP TABLE IF EXISTS `employee_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accepts_criticism_score` int NOT NULL,
  `accepts_mistake_score` int NOT NULL,
  `can_work_without_supervise_score` int NOT NULL,
  `capable_taking_any_decision_score` int NOT NULL,
  `coworkers_treated_respect_score` int NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `equi_soft_handle_score` int NOT NULL,
  `executes_task_score` int NOT NULL,
  `extra_comments` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `high_pressure_siruation_manage_score` int NOT NULL,
  `is_eligible_for_promotion` varchar(255) DEFAULT NULL,
  `is_eligible_for_termination` varchar(255) DEFAULT NULL,
  `job_knoledge_comment` varchar(255) DEFAULT NULL,
  `knoledge_share_with_coworkers_score` int NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `leadership_comment` varchar(255) DEFAULT NULL,
  `motivate_coworkers_to_finish_score` int NOT NULL,
  `regarding_training_score` int NOT NULL,
  `requir_understanding_score` int NOT NULL,
  `ruls_policy_follo_score` int NOT NULL,
  `team_player_score` int NOT NULL,
  `teame_resources_share_score` int NOT NULL,
  `teamwork_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_ratings`
--

LOCK TABLES `employee_ratings` WRITE;
/*!40000 ALTER TABLE `employee_ratings` DISABLE KEYS */;
INSERT INTO `employee_ratings` VALUES (1,0,0,0,0,0,'General Management','',4,0,'','Sakib',0,'yes','no','',4,'Ahammed','',0,3,1,4,0,0,'');
/*!40000 ALTER TABLE `employee_ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-29  8:21:56
