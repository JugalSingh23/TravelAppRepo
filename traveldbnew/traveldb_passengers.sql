-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: traveldb
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers` (
  `passid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `special_reqs` varchar(255) DEFAULT NULL,
  `idproof` varchar(255) DEFAULT NULL,
  `tour_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`passid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (1,'Alice Johnson','555-1234','alice.johnson@example.com','Vegetarian','/images/idproof_alice.jpg',1,'2024-08-31 10:26:00'),(2,'Bob Smith','555-5678','bob.smith@example.com','No special requirements','/images/idproof_bob.jpg',1,'2024-08-31 10:26:00'),(3,'Charlie Brown','555-8765','charlie.brown@example.com','Gluten-free','/images/idproof_charlie.jpg',2,'2024-08-31 10:26:00'),(4,'Diana Prince','555-4321','diana.prince@example.com','Allergic to nuts','/images/idproof_diana.jpg',2,'2024-08-31 10:26:00'),(5,'Ethan Hunt','555-6789','ethan.hunt@example.com','No special requirements','/images/idproof_ethan.jpg',3,'2024-08-31 10:26:00'),(6,'Fiona Green','555-9876','fiona.green@example.com','Requires wheelchair access','/images/idproof_fiona.jpg',3,'2024-08-31 10:26:00'),(7,'George Clark','555-3456','george.clark@example.com','Vegan','/images/idproof_george.jpg',4,'2024-08-31 10:26:00'),(8,'Hannah Adams','555-6543','hannah.adams@example.com','No special requirements','/images/idproof_hannah.jpg',4,'2024-08-31 10:26:00'),(9,'jugal','123','jugli@gmail.com','veg food only please','/images/1725135053875-118821.jpg',2,'2024-08-31 20:10:53');
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02 16:33:40
