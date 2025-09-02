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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,'2025-09-02 08:47:35',1,'2025-09-02 08:47:35',1,1),(2,'2025-09-02 08:54:40',0,NULL,2,1),(3,'2025-09-02 08:54:40',1,'2025-09-02 08:54:40',3,3),(4,'2025-09-02 08:54:40',1,'2025-09-02 08:54:40',3,8),(5,'2025-09-02 08:54:40',1,'2025-09-02 08:54:40',9,8),(6,'2025-09-02 08:54:40',0,NULL,19,8),(7,'2025-09-02 08:54:40',1,'2025-09-02 08:54:40',6,4),(8,'2025-09-02 08:54:40',0,NULL,2,1),(9,'2025-09-02 08:54:40',0,NULL,6,9),(10,'2025-09-02 08:54:40',1,'2025-09-02 08:54:40',4,10),(11,'2025-09-02 08:58:05',0,NULL,2,1),(12,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',20,9),(13,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',12,6),(14,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',11,6),(15,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',14,8),(16,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',18,8),(17,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',7,8),(18,'2025-09-02 08:58:05',1,'2025-09-02 08:58:05',5,8),(19,'2025-09-02 08:58:05',0,NULL,15,8),(20,'2025-09-02 08:58:05',0,NULL,6,7),(21,'2025-09-02 09:02:06',0,NULL,2,1),(22,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',20,9),(23,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',16,10),(24,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',4,3),(25,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',12,5),(26,'2025-09-02 09:02:06',0,NULL,13,7),(27,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',14,10),(28,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',3,10),(29,'2025-09-02 09:02:06',1,'2025-09-02 09:02:06',12,6),(30,'2025-09-02 09:03:01',1,'2025-09-02 09:03:01',20,9),(31,'2025-09-02 09:03:01',0,NULL,2,1),(40,'2025-09-02 09:04:55',1,'2025-09-02 09:04:55',1,6),(41,'2025-09-02 09:04:55',1,'2025-09-02 09:04:55',1,3),(42,'2025-09-02 09:04:55',1,'2025-09-02 09:04:55',1,7),(43,'2025-09-02 09:04:55',1,'2025-09-02 09:04:55',1,5),(44,'2025-09-02 09:04:55',1,'2025-09-02 09:04:55',1,10),(45,'2025-09-02 09:05:46',0,NULL,2,1),(46,'2025-09-02 09:11:09',0,NULL,8,6),(47,'2025-09-02 09:11:30',1,'2025-09-02 09:11:30',9,4),(48,'2025-09-02 09:12:00',1,'2025-09-02 09:12:00',10,10),(49,'2025-09-02 09:12:49',1,'2025-09-02 09:12:49',16,7),(50,'2025-09-02 09:13:55',1,'2025-09-02 09:13:55',17,7),(51,'2025-09-02 09:23:48',0,NULL,2,1),(52,'2025-09-02 09:32:08',1,'2025-09-02 09:32:08',5,5),(53,'2025-09-02 09:32:08',0,NULL,2,1),(54,'2025-09-02 09:32:08',0,NULL,12,3),(55,'2025-09-02 09:32:08',1,'2025-09-02 09:32:08',4,7),(56,'2025-09-02 09:32:08',0,NULL,17,3),(57,'2025-09-02 09:32:08',1,'2025-09-02 09:32:08',20,10),(58,'2025-09-02 09:32:08',1,'2025-09-02 09:32:08',14,5),(59,'2025-09-02 09:32:08',1,'2025-09-02 09:32:08',7,7),(60,'2025-09-02 09:35:50',0,NULL,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,5,'GG EZ',1,1),(2,2,'Ma femme me manque, Tails. Elle me manque beaucoup. Je serais de retour.',20,9),(3,4,'R.I.P. Michel.',18,8),(4,3,'R.I.P. Michel.',7,8),(5,5,'Yeah! Michel est mort! Youhou!',14,8),(6,1,'Je suis mort.',15,8),(7,2,'Mon cul. AHAHAHAH!',11,6),(8,1,'Alors en fait, c\'est pas un cheval, c\'est un chien.',6,7),(9,3,'!→↓↑↑↓↓←→←→BA♪↕',3,10),(10,4,'Mais ils le sont.',12,3);
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

-- Dump completed on 2025-09-02 11:47:05
