-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: traveldb
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tourname` varchar(255) NOT NULL,
  `category` varchar(25) NOT NULL,
  `startpoint` varchar(25) NOT NULL,
  `endpoint` varchar(25) NOT NULL,
  `bannerpath` varchar(255) NOT NULL,
  `departdate` varchar(50) NOT NULL,
  `duration` int NOT NULL,
  `accommodations` varchar(25) NOT NULL,
  `meals` varchar(25) NOT NULL,
  `firstaid` varchar(25) NOT NULL,
  `description` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `day1head` varchar(255) DEFAULT NULL,
  `day1content` varchar(500) DEFAULT NULL,
  `day2head` varchar(255) DEFAULT NULL,
  `day2content` varchar(500) DEFAULT NULL,
  `day3head` varchar(255) DEFAULT NULL,
  `day3content` varchar(500) DEFAULT NULL,
  `day4head` varchar(255) DEFAULT NULL,
  `day4content` varchar(500) DEFAULT NULL,
  `day5head` varchar(255) DEFAULT NULL,
  `day5content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (8,'Cultural Delights','Japan','Tokyo','Kyoto','/images/cultural_delights.jpg','20th Oct 2024',3,'Stay included','Meals included','First aid not included','Immerse yourself in the rich cultural heritage of Japan with visits to ancient temples, bustling markets, and serene gardens.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Desert Safari','United Arab Emirates','Dubai','Abu Dhabi','/images/desert_safari.jpg','5th Nov 2024',2,'Stay not included','Meals not included','First aid included','Embark on a thrilling desert safari across the golden dunes of UAE with opportunities for sandboarding, camel rides, and traditional Bedouin experiences.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Mediterranean Escape','Greece','Athens','Santorini','/images/mediterranean_escape.jpg','10th Dec 2024',5,'Stay included','Meals included','First aid included','Discover the sun-kissed islands of Greece with breathtaking views, crystal-clear waters, and a taste of local cuisine.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Safari Adventure','South Africa','Cape Town','Kruger National Park','/images/safari_adventure.jpg','25th Jan 2025',4,'Stay included','Meals not included','First aid included','Experience the wild side of South Africa on a safari adventure, with opportunities to see the Big Five in their natural habitat.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Northern Lights','Norway','Oslo','Tromsø','/images/northern_lights.jpg','18th Feb 2025',3,'Stay not included','3 times a day','First aid not included','Chase the magical Northern Lights across the arctic skies of Norway, with cozy evenings spent in charming towns.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Rainforest Expedition','Brazil','Manaus','Amazon Rainforest','/images/rainforest_expedition.jpg','2nd Mar 2025',5,'Stay included','Meals included','First aid included','Dive deep into the heart of the Amazon Rainforest, exploring its biodiversity with expert guides and staying in eco-friendly lodges.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Culinary Tour','Italy','Rome','Florence','/images/culinary_tour.jpg','12th Apr 2025',3,'Stay included','3 times a day','First aid not included','Savor the flavors of Italy on a culinary tour that takes you from Rome to Florence, with cooking classes and wine tastings.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Island Hopping','Philippines','Cebu','Palawan','/images/island_hopping.jpg','28th May 2025',4,'Stay not included','Meals included','First aid included','Explore the pristine beaches and crystal-clear waters of the Philippines with an island-hopping adventure from Cebu to Palawan.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Himalayan Trek','Nepal','Kathmandu','Everest Base Camp','/images/himalayan_trek.jpg','5th Jun 2025',5,'Stay included','Meals not included','First aid included','Take on the challenge of trekking to Everest Base Camp with breathtaking views and the adventure of a lifetime in the Himalayas.','2024-09-01 09:15:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Cherry Blossom Tour','Japan','Tokyo','Kyoto','/images/cherry_blossom.jpg','1st Apr 2025',5,'Stay included','3 times a day','First aid included','Experience the breathtaking beauty of Japan\'s cherry blossoms as you journey from Tokyo to Kyoto, visiting iconic gardens and historic temples along the way.','2024-09-01 09:17:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Mount Fuji Adventure','Japan','Tokyo','Mount Fuji','/images/mount_fuji.jpg','15th May 2025',3,'Stay not included','Meals included','First aid not included','Embark on an adventure to the majestic Mount Fuji, with guided hikes, cultural experiences, and stunning views of Japan\'s highest peak.','2024-09-01 09:17:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Traditional Ryokan Experience','Japan','Tokyo','Hakone','/images/ryokan_experience.jpg','20th Jun 2025',4,'Stay included','Meals included','First aid included','Immerse yourself in Japanese culture with a stay at a traditional ryokan in Hakone, enjoying hot springs, kaiseki meals, and serene landscapes.','2024-09-01 09:17:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Modern Tokyo Exploration','Japan','Tokyo','Odaiba','/images/modern_tokyo.jpg','5th Jul 2025',2,'Stay included','Meals not included','First aid included','Discover the futuristic side of Tokyo with visits to cutting-edge architecture, technology centers, and bustling districts like Shibuya and Odaiba.','2024-09-01 09:17:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Cultural Heritage Tour','Japan','Kyoto','Nara','/images/cultural_heritage.jpg','10th Sep 2025',3,'Stay not included','3 times a day','First aid not included','Travel back in time with a cultural heritage tour from Kyoto to Nara, exploring ancient temples, traditional tea ceremonies, and the tranquil beauty of Japanese gardens.','2024-09-01 09:17:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Santorini Sunset Tour','Greece','Athens','Santorini','/images/santorini_sunset.jpg','10th May 2025',4,'Stay included','Meals included','First aid included','Experience the world-famous sunsets of Santorini, with luxurious stays, gourmet dining, and breathtaking views from iconic white-washed villages.','2024-09-01 09:18:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Ancient Wonders of Greece','Greece','Athens','Delphi','/images/ancient_greece.jpg','15th Jun 2025',3,'Stay not included','3 times a day','First aid included','Explore the ancient wonders of Greece on a journey from Athens to Delphi, uncovering the rich history, mythology, and architectural marvels of this historic land.','2024-09-01 09:18:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Greek Island Hopping','Greece','Mykonos','Crete','/images/greek_island_hopping.jpg','25th Jul 2025',5,'Stay included','Meals not included','First aid not included','Hop between the idyllic Greek islands of Mykonos and Crete, enjoying stunning beaches, vibrant nightlife, and local cuisine along the way.','2024-09-01 09:18:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Cretan Adventure','Greece','Heraklion','Chania','/images/cretan_adventure.jpg','5th Aug 2025',4,'Stay included','3 times a day','First aid included','Discover the rugged beauty of Crete with an adventure from Heraklion to Chania, featuring hikes through gorges, visits to ancient ruins, and authentic Cretan experiences.','2024-09-01 09:18:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Peloponnese Road Trip','Greece','Athens','Olympia','/images/peloponnese_road_trip.jpg','15th Sep 2025',3,'Stay not included','Meals included','First aid not included','Set off on a road trip through the Peloponnese region, exploring historic sites like Corinth and Olympia, while enjoying the scenic coastal and mountain views.','2024-09-01 09:18:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Santorini Adventure','Greece','Athens','Santorini','/images/1725184676658-480019.jpg','25th Sep 2024	',5,'Stay included	','3 times a day	','First aid included	','Enjoy a breathtaking 5-day adventure from Athens to Santorini, exploring the stunning Greek islands, historic sites, and enjoying luxurious accommodations.	','2024-09-01 09:57:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-02  8:19:38
