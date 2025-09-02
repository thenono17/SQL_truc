CREATE DATABASE  IF NOT EXISTS `sql_truc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sql_truc`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_truc
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Comment ouvrir une porte','Essentiel',999999999),(2,'Comment calculer 1 + 1','Dev',3),(3,'Il faut pas prendre les gens pour des cons mais il faut pas oublier qu\'ils le sont','Marketing',499),(4,'Utiliser un polaroid quand on a accès à un smartphone','Photo...',297),(5,'Faire une base de donnée sql qui put pas du cul en 3 étapes','Dev',123),(6,'Différentier un hibou et une corde','Essentiel',420),(7,'Comment faire rire même si vous êtes pas drôle','Marketing',6000),(8,'Réaliser un sacrifice humain pour appaiser l\'esprit de l\'ordinateur','Dev',666),(9,'A l\'aide, j\'ai accidentellement rogné ma femme de la photo de famille','Photo...',72),(10,'Communiquer avec des petits homme verts pour percer sur Facebook','Marketing',98);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enrolled_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `completed` tinyint NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enrollments_users_idx` (`user_id`),
  KEY `fk_enrollments_courses1_idx` (`course_id`),
  CONSTRAINT `fk_enrollments_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `fk_enrollments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `comment` tinytext,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_reviews_users1_idx` (`user_id`),
  KEY `fk_reviews_courses1_idx` (`course_id`),
  CONSTRAINT `fk_reviews_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  CONSTRAINT `fk_reviews_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jean-Paul-Patric','jppdu42@wanadoo.fr','2025-09-02 07:55:14'),(2,'Gerard','gege12345@free.fr','2025-09-02 08:02:31'),(3,'Robert','robertolerigolo@yahoo.com','2025-09-02 08:02:31'),(4,'Geraldine','gege123456@free.fr','2025-09-02 08:02:31'),(5,'Cebastien','cebastienavecunc@orange.fr','2025-09-02 08:02:31'),(6,'Paul','michel54@yahoo.com','2025-09-02 08:02:31'),(7,'Michel','paul54@yahoo.com','2025-09-02 08:02:31'),(8,'Fabien','nunu6137@wanadoo.fr','2025-09-02 08:02:31'),(9,'Paul','levraimichel54@yahoo.com','2025-09-02 08:02:31'),(10,'Robert','robert.robert@wanadoo.fr','2025-09-02 08:02:31'),(11,'Fabio','fabulousfabio@gmail.com','2025-09-02 08:21:53'),(12,'Loic','lolololo@yahoo.fr','2025-09-02 08:21:53'),(13,'Katherine','catherineavecunk@gmail.com','2025-09-02 08:21:53'),(14,'Jean-Jacqueline','jjacqueline@free.fr','2025-09-02 08:21:53'),(15,'Michel','michoudu62@free.fr','2025-09-02 08:21:53'),(16,'Michelle','michoudu63@yahou.fr','2025-09-02 08:21:53'),(17,'Michelline','michoudu64@wanadoo.fr','2025-09-02 08:21:53'),(18,'Michel','michoudu62wastaken@gmail.com','2025-09-02 08:21:53'),(19,'Rodrigo','si123456789@gmail.com','2025-09-02 08:21:53'),(20,'Jean-Pierre','ultimebafouille2@gmail.com','2025-09-02 08:21:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 10:41:32
