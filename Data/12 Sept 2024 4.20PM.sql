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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'jugal','jugalsingh23@gmail.com','0918273','12345678A');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itinerary`
--

DROP TABLE IF EXISTS `itinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itinerary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_Id` int DEFAULT NULL,
  `day_number` int DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itinerary`
--

LOCK TABLES `itinerary` WRITE;
/*!40000 ALTER TABLE `itinerary` DISABLE KEYS */;
INSERT INTO `itinerary` VALUES (1,34,1,'Day 1 : LoremIpsum Singapore Day 1 Heading','laksjd alskd alksd lakjsdla jld;aj kdajlj  alskjd a;sd sdfha  alskjdf halskjdf h'),(2,34,1,'Day 2 : LoremIpsum Singapore Day 2 Heading','laksjd alskd alksd lakjsdla jld;aj kdajlj  alskjd a;sd sdfha  alskjdf halskjdf h'),(3,34,2,'Day 2 : LoremIpsum Singapore Day 2 Heading','laksjd alskd alksd lakjsdla jld;aj kdajlj  alskjd a;sd sdfha  alskjdf halskjdf h'),(4,34,3,'Day 3 : LoremIpsum Singapore Day 3 Heading','laksjd alskd alksd lakjsdla jld;aj kdajlj  alskjd a;sd sdfha  alskjdf halskjdf h'),(5,34,4,'Day 4 : LoremIpsum Singapore Day 4 Heading','laksjd alskd alksd lakjsdla jld;aj kdajlj  alskjd a;sd sdfha  alskjdf halskjdf h');
/*!40000 ALTER TABLE `itinerary` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (1,'Alice Johnson','555-1234','alice.johnson@example.com','Vegetarian','/images/idproof_alice.jpg',1,'2024-08-31 10:26:00'),(2,'Bob Smith','555-5678','bob.smith@example.com','No special requirements','/images/idproof_bob.jpg',1,'2024-08-31 10:26:00'),(3,'Charlie Brown','555-8765','charlie.brown@example.com','Gluten-free','/images/idproof_charlie.jpg',2,'2024-08-31 10:26:00'),(4,'Diana Prince','555-4321','diana.prince@example.com','Allergic to nuts','/images/idproof_diana.jpg',2,'2024-08-31 10:26:00'),(5,'Ethan Hunt','555-6789','ethan.hunt@example.com','No special requirements','/images/idproof_ethan.jpg',3,'2024-08-31 10:26:00'),(6,'Fiona Green','555-9876','fiona.green@example.com','Requires wheelchair access','/images/idproof_fiona.jpg',3,'2024-08-31 10:26:00'),(7,'George Clark','555-3456','george.clark@example.com','Vegan','/images/idproof_george.jpg',4,'2024-08-31 10:26:00'),(8,'Hannah Adams','555-6543','hannah.adams@example.com','No special requirements','/images/idproof_hannah.jpg',4,'2024-08-31 10:26:00'),(9,'jugal','123','jugli@gmail.com','veg food only please','/images/1725135053875-118821.jpg',2,'2024-08-31 20:10:53'),(10,'vinayak','129386','vinak@gmail.com','VegONly','/images/1725618684625-IMG_0351.jpg',6,'2024-09-06 10:31:24'),(11,'asda','sd214','sdfs','dfsafsaf','/images/1725954508763-testimage.jpg',34,'2024-09-10 07:49:04'),(12,'Jigar ','123710723','jaojslka','Veg Only','/images/1725954598178-wp8285219.jpg',35,'2024-09-10 07:50:34'),(13,'Jugal Singh','91 9004007897','jugalsingh23@gmail.com','sdfs sdf sdf sdf ','/images/1725956206518-testimage.jpg',34,'2024-09-10 08:17:33'),(14,'Santosh SHetty','91 9004007897','johndoe@gmail.com','Lorem ipsum','/images/1725956580754-115392-digital-art-desert-futuristic-science-fiction-landscape.jpg',35,'2024-09-10 08:23:37'),(15,'Rahul Tiwari','91 900 400 7897','jugalsingh23@gmail.com','Non Veg Only','/images/1725956877352-1339633.png',52,'2024-09-10 08:28:46'),(16,'Jugal Singh','9001980238','vikas@hexagn.in','veg only','/images/1725957000032-testimage.jpg',34,'2024-09-10 08:30:31'),(17,'Test','098023424324','jugalsingh23@gmail.com','lkauhsiudn','/images/1725957461438-testingimageegege.jpg',34,'2024-09-10 08:38:28'),(18,'testting again','102937109237097','jugal@gfmai.com','asda','/images/1725965532314-testimage.jpg',34,'2024-09-10 10:52:53'),(19,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:50:30'),(20,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:52:20'),(21,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:53:01'),(22,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:53:03'),(23,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:53:22'),(24,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:54:03'),(25,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 11:58:02'),(26,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:00:01'),(27,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:00:11'),(28,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:00:30'),(29,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:01:13'),(30,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:01:24'),(31,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:01:33'),(32,'John Doe','+1234567890','johndoe@example.com','Vegetarian meal','/uploads/idproof/johndoe.jpg',101,'2024-09-11 12:01:44'),(33,'Horse','029374027304','asdasd@gmai.com','asfaasg','/images/1726059543257-testimage.jpg',37,'2024-09-11 13:00:33'),(34,'zsdfsdf','23523523235','safasgf@hm.in','sfasfda','/images/1726059701444-testimage.jpg',34,'2024-09-11 13:02:12'),(35,'zsdfsdf','23523523235','safasgf@hm.in','sfasfda','/images/1726059754376-testimage.jpg',34,'2024-09-11 13:03:11'),(36,'qwfasgdsgd','3453453456567','juh@gmail.coimn','alishfl','/images/1726059824394-testimage.jpg',34,'2024-09-11 13:04:16'),(37,'Jugal123123123123123','1283109283','Jugz@gmail.com','slkjdf;l23;nklg','/images/1726120383636-31241-3840x2160-desktop-4k-norway-background-photo.jpg',34,'2024-09-12 05:53:39'),(38,'Latika Singh','10293102318','jasu@gmin.in','laksjdaihi','/images/1726122640726-386859.jpg',34,'2024-09-12 06:31:33'),(39,'asdasd','23423452412','asdfs@hm.in','asdasd','/images/1726123228699-testimage.jpg',34,'2024-09-12 06:41:08'),(40,'Sean','19023180238','jugal@gmail.com','lkansfob','/images/1726125097111-testimage.jpg',49,'2024-09-12 07:12:15'),(41,'olkasjdf','0928374098','kajsfn@gmailc.om','inqasl lkjasn s','/images/1726125432691-wp2324982.jpg',35,'2024-09-12 07:17:48'),(42,'jugal singh','019230234242','jugalsingh23@gmail.com','ajsldjdfgdfg','/images/1726125785641-testimage.jpg',34,'2024-09-12 07:23:54'),(43,'wefwrggr','53454546556','efgdsfg@m.om','sdfgsdfg','/images/1726125859058-testimage.jpg',34,'2024-09-12 07:24:53'),(44,'SADFA FASF','21352525252','jugalsingh23@rediffmail.colm','klajsbf.kajb','/images/1726128723677-testingimageegege.jpg',51,'2024-09-12 08:12:32'),(45,'Sugal Jingh','1092381238','jugl@mgin.in','laksn;doin2r','/images/1726133125216-testimage.jpg',36,'2024-09-12 09:26:07'),(46,'mroe testststst','128y3912636a','adjsbk.dgbj@kgm.com','blsndlgbsjdg','/images/1726133292807-testimage.jpg',34,'2024-09-12 09:28:44'),(47,'KLR ALSKM','1902318239018','jalksjd@mgin.in','aoisj;dlanmsd','/images/1726133404369-115392-digital-art-desert-futuristic-science-fiction-landscape.jpg',40,'2024-09-12 09:30:35'),(48,'Latika Singh','09823471245','osjlfj@gmai.in','lkanslfbog','/images/1726133780829-386859.jpg',37,'2024-09-12 09:36:54'),(49,'TEstingModal','12394867123','JASJfl@gmai.in','a;oksnf;oagf','/images/1726133966948-testimage.jpg',47,'2024-09-12 09:39:54'),(50,'ANothermodaltest','019720934696','jugal@mgial.in','lksnd;sag','/images/1726134044043-wp8285219.jpg',35,'2024-09-12 09:41:12'),(51,'testingsearch','109237198327`','jlksjf@gmail.com','jkbslkjbdf','/images/1726136330458-Historic Islam Middle East Minarets Wallpaper MixHD.jpg',68,'2024-09-12 10:19:41');
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourcategories`
--

DROP TABLE IF EXISTS `tourcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) DEFAULT NULL,
  `bannerpath` varchar(200) DEFAULT NULL,
  `bannerhead` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourcategories`
--

LOCK TABLES `tourcategories` WRITE;
/*!40000 ALTER TABLE `tourcategories` DISABLE KEYS */;
INSERT INTO `tourcategories` VALUES (1,'Japan','/images/japan.png','Discover Japan Tours'),(2,'Singapore','/images/singapore.png','Discover Singapore Tours'),(3,'Italy','/images/italy.png','Discover Italy Tours'),(4,'Australia','/images/australia.png','Discover Australian Tours'),(5,'China','/images/china.png','Discover China Tours'),(6,'Dubai','/images/dubai.png','Discover Dubai Tours'),(7,'Switzerland','/images/switzerland.png','Discover Venice Tours');
/*!40000 ALTER TABLE `tourcategories` ENABLE KEYS */;
UNLOCK TABLES;

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
  `bannerpath` varchar(255) DEFAULT NULL,
  `departdate` varchar(50) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `accommodations` varchar(25) NOT NULL,
  `meals` varchar(25) NOT NULL,
  `firstaid` varchar(25) NOT NULL,
  `description` text,
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
  `price` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (34,'Singapore Adventure','2','Orchard Road','Clarke Quay','/images/singapore2.jpg','15 Dec 2024','3D/3N','Stay Included','Meals Included','First Aid Included','Embark on an adventure through Singapore’s most fascinating spots. From the bustling streets of Orchard Road to the lively Clarke Quay area, this tour offers an immersive experience in the city’s culture and lifestyle. Discover historical neighborhoods, savor local street food, and visit famous attractions. This tour provides a taste of the diverse experiences that make Singapore a world-renowned destination.','2024-09-02 07:33:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 67,000/-'),(35,'Glimpse Of Singapore','2','Marina Bay','Chinatown','/images/singapore3.jpg','1 Feb 2025','2D/3N','Stay Included','Meals Included','First Aid Included','Explore the highlights of Singapore with this dynamic tour. Visit top attractions including the Marina Bay area and the historic Chinatown. Enjoy guided tours of modern marvels and lush green spaces. This tour offers a glimpse into the diverse experiences that Singapore has to offer.','2024-09-02 07:34:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 48,000/-'),(36,'Wonders Of Singapore','2','Marina Bay','Orchard Road','/images/singapore4.jpg','12 Jul 2025','4D/2N','Stay Included','Meals Included','First Aid Included','Discover the vibrant city-state of Singapore on this exciting and comprehensive tour. Begin your adventure in the heart of the city, where you\'ll marvel at the iconic skyline and the futuristic Gardens by the Bay. Explore the bustling streets of Orchard Road, renowned for its luxury shopping and vibrant atmosphere. Journey through Singapore\'s rich cultural tapestry by visiting diverse neighborhoods such as Chinatown, Little India, and Kampong Glam, each offering unique experiences and flavors. Visit the historic Raffles Hotel and take a leisurely stroll along the scenic Singapore River. Enjoy guided tours of the city’s major attractions, including the Singapore Flyer and Sentosa Island. This tour provides a perfect blend of modern marvels, cultural heritage, and culinary delights, offering a comprehensive glimpse into Singapore’s dynamic and multifaceted character. Experience the city’s extraordinary blend of tradition and innovation, ensuring an unforgettable journey through one of Asia’s most dynamic destinations','2024-09-02 07:36:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 102,000/-'),(37,'Highlights of Italy','3','Rome','Florence','/images/italy1.jpg','10 Oct 2024','3D/2N','Stay Included','Meals Included','First Aid Included','Experience the best of Italy in just four days with our Highlights of Italy tour. Begin your journey in Rome, where you’ll explore iconic landmarks such as the Colosseum and the Roman Forum, and take in the artistic treasures of the Vatican Museums. Travel to Florence, the cradle of the Renaissance, and marvel at masterpieces by Michelangelo and Leonardo da Vinci. Stroll through the charming streets of the historic center, visit the impressive Duomo, and enjoy authentic Tuscan cuisine. This tour offers a compact yet immersive experience of Italy’s rich history, art, and culture, providing a memorable snapshot of the country’s greatest highlights in a short and enriching journey','2024-09-02 07:39:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 62,000/-'),(38,'Italian Riviera Escape','3','Milan','Cinque Terre','/images/italy2.jpg','22 Nov 2024','2D/3N','Stay Included','Meals Included','First Aid Included','Discover the stunning landscapes of Italy’s Riviera with our Italian Riviera Escape tour. Start in Milan, Italy’s fashion capital, and explore its vibrant culture and historic landmarks, including the magnificent Duomo and the famed La Scala opera house. Journey to the enchanting Cinque Terre, a collection of picturesque seaside villages perched on rugged cliffs. Hike along scenic trails, enjoy breathtaking views of the Mediterranean, and savor local seafood delicacies. This tour combines the sophistication of Milan with the natural beauty and charm of the Riviera, offering a perfect blend of urban exploration and coastal relaxation','2024-09-02 07:40:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 25,000/-'),(39,'Tuscan Wine and Art Tour','3','Florence','Siena','/images/italy3.jpg','05 Dec 2024','4D/2N','Stay Included','Meals Included','First Aid Included','Embark on a journey through Tuscany’s rich cultural and culinary heritage with our Tuscan Wine and Art Tour. Begin in Florence, the heart of the Renaissance, and explore its art treasures, including works by Botticelli and Michelangelo. Travel through the rolling hills of Tuscany, visiting charming towns like San Gimignano and Siena. Enjoy guided tours of local vineyards, where you’ll sample some of the region’s finest wines and learn about traditional winemaking techniques. Immerse yourself in the art, history, and gastronomy of this renowned Italian region on a tour that offers a deep dive into Tuscany’s essence','2024-09-02 07:40:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 98,000/-'),(40,'Venetian Wonders','3','Venice','Padua','/images/italy4.jpg','30 Oct 2024','3D/3N','Stay Included','Meals Included','First Aid Included','Experience the magic of Venice with our Venetian Wonders tour. Explore the labyrinthine canals and historic buildings of Venice, from the majestic St. Mark’s Basilica to the opulent Doge’s Palace. Take a gondola ride through the serene canals and discover the city’s rich history and vibrant culture. Travel to Padua, home to one of Europe’s oldest universities and beautiful frescoes by Giotto. This tour offers a captivating glimpse into the unique charm of Venice and its surroundings, combining iconic landmarks with charming local experiences','2024-09-02 07:40:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 73,000/-'),(41,'Rome to Amalfi Coast Adventure','3','Rome','Amalfi Coast','/images/italy5.jpg','18 Jan 2025','2D/3N','Stay Included','Meals Included','First Aid Included','Embark on an unforgettable adventure from Rome to the stunning Amalfi Coast. Begin in Rome, exploring ancient ruins and world-renowned museums, and then journey south to the picturesque Amalfi Coast. Experience the breathtaking coastal views, charming seaside towns like Positano and Amalfi, and the dramatic cliffs that define this region. Enjoy local cuisine and relax on the beautiful beaches of the coast. This tour provides a comprehensive look at Italy’s cultural and natural treasures, combining the historical richness of Rome with the scenic beauty of the Amalfi Coast','2024-09-02 07:40:49',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 30,000/-'),(42,'Sydney Highlights','4','Sydney','Blue Mountains','/images/australia1.jpg','20 Oct 2024','4D/2N','Stay Included','Meals Included','First Aid Included','Explore the vibrant city of Sydney on this comprehensive tour. Start with iconic landmarks such as the Sydney Opera House and Sydney Harbour Bridge. Wander through the Royal Botanic Garden and relax on the famous Bondi Beach. Take a day trip to the Blue Mountains, where you can enjoy stunning natural scenery and visit scenic spots like Echo Point and the Three Sisters rock formation. This tour combines the best of Sydney’s urban attractions with the breathtaking beauty of Australia’s natural landscapes','2024-09-02 07:43:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 120,000/-'),(43,'Great Barrier Reef Adventure','4','Cairns','Port Douglas','/images/australia2.jpg','15 Nov 2024','3D/2N','Stay Included','Meals Included','First Aid Included','Dive into the wonders of the Great Barrier Reef with this adventure tour. Begin in Cairns, where you’ll embark on a boat trip to explore the vibrant coral reefs and marine life of the world’s largest reef system. Snorkel or dive among colorful fish and coral formations. Journey to Port Douglas, a charming coastal town with beautiful beaches and lush rainforests. This tour provides an immersive experience in one of Australia’s most renowned natural wonders, combining underwater exploration with relaxation on stunning beaches','2024-09-02 07:43:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 49,000/-'),(44,'Melbourne and Great Ocean Road','4','Melbourne','Great Ocean Road','/images/australia3.jpg','05 Dec 2024','2D/3N','Stay Included','Meals Included','First Aid Included','Discover the cultural and scenic highlights of Victoria with this tour of Melbourne and the Great Ocean Road. Start in Melbourne, exploring its vibrant arts scene, historic laneways, and renowned culinary delights. Take a day trip along the Great Ocean Road, where you’ll see the stunning Twelve Apostles rock formations, dramatic coastal cliffs, and charming seaside towns. This tour offers a mix of urban exploration and natural beauty, providing a comprehensive experience of Victoria’s diverse attractions','2024-09-02 07:43:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 35,000/-'),(45,'Outback Adventure','4','Alice Springs','Uluru','/images/australia4.jpg','25 Jan 2025','4D/2N','Stay Included','Meals Included','First Aid Included','Experience the rugged beauty of Australia’s Outback with this immersive adventure tour. Start in Alice Springs, the gateway to the Red Centre, and explore its cultural and historical attractions. Travel to Uluru, also known as Ayers Rock, and witness its stunning colors at sunrise and sunset. Discover the fascinating geology and indigenous significance of this iconic landmark. Enjoy guided walks and learn about the local flora and fauna. This tour offers a deep dive into the heart of Australia’s unique desert landscape and cultural heritage','2024-09-02 07:43:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 150,000/-'),(46,'Tasmanian Wilderness Experience','4','Hobart','Launceston','/images/australia5.jpg','10 Feb 2025','3D/3N','Stay Included','Meals Included','First Aid Included','Explore the pristine wilderness of Tasmania with this guided tour. Begin in Hobart, where you’ll visit the historic waterfront and the vibrant Salamanca Market. Travel through the stunning landscapes of Cradle Mountain and the lush rainforests of the Tarkine region. Enjoy scenic walks, wildlife spotting, and the natural beauty of Tasmania’s national parks. This tour combines outdoor adventure with opportunities to relax and take in the serene surroundings, providing a comprehensive experience of Tasmania’s breathtaking natural environment','2024-09-02 07:43:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 88,000/-'),(47,'Shanghai City Highlights','5','Shanghai','Suzhou','/images/china1.jpg','20 Oct 2024','2D/3N','Stay Included','Meals Included','First Aid Included','Discover the modern metropolis of Shanghai with this exciting tour. Explore the city’s major attractions, including the Bund, Nanjing Road, and the Shanghai Tower. Experience the vibrant atmosphere of the French Concession and visit the beautiful Yuyuan Garden. Take a day trip to Suzhou, known for its classical Chinese gardens and traditional silk production. This tour provides a perfect blend of Shanghai’s urban sophistication with the cultural charm of Suzhou','2024-09-02 07:44:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 20,000/-'),(48,'Guilin and Yangshuo Adventure','5','Guilin','Yangshuo','/images/china2.jpg','15 Dec 2024','4D/2N','Stay Included','Meals Included','First Aid Included','Embark on a journey through the stunning landscapes of Guilin and Yangshuo with this adventure tour. Explore the picturesque karst mountains and serene Li River, known for its breathtaking scenery. Take a leisurely cruise along the river and enjoy the views of traditional rural landscapes. In Yangshuo, immerse yourself in the local culture with activities such as bike rides through scenic countryside and visits to local markets. This tour offers a unique experience of China’s natural beauty and rural charm','2024-09-02 07:44:31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 135,000/-'),(49,'Hong Kong Highlights','5','Hong Kong','Macau','/images/china3.jpg','25 Oct 2024','3D/2N','Stay Included','Meals Included','First Aid Included','Experience the dynamic city of Hong Kong with this engaging tour. Explore major attractions such as Victoria Peak, the Star Ferry, and the bustling streets of Mong Kok. Discover the cultural diversity and vibrant energy of this international city. Take a ferry ride to Macau, known for its blend of Portuguese and Chinese heritage, and visit historic sites and modern casinos. This tour provides a comprehensive look at Hong Kong’s urban appeal and Macau’s unique charm','2024-09-02 07:44:35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 57,000/-'),(50,'China’s Ancient Capitals','5','Xi\'an','Luoyang','/images/china4.jpg','30 Nov 2024','2D/3N','Stay Included','Meals Included','First Aid Included','Explore China’s ancient capitals with this immersive tour. Begin in Xi\'an, home to the Terracotta Army and the ancient city wall. Travel to Luoyang, one of China’s Four Great Ancient Capitals, and visit the Longmen Grottoes and the White Horse Temple. Discover the rich historical and cultural heritage of these historic cities while enjoying guided tours and local cuisine. This tour offers a deep dive into China’s imperial history and ancient architecture, providing a fascinating journey through time','2024-09-02 07:44:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 39,000/-'),(51,'Desert Safari Experience','6','Dubai','Dubai','/images/dubai1.jpg','15 Dec 2024','4D/2N','Stay Included','Meals Included','First Aid Included','Immerse yourself in the thrilling desert landscape of Dubai with this Desert Safari Experience. Embark on a 4x4 dune bashing adventure across the golden sands, followed by a camel ride and sandboarding. Enjoy a traditional Bedouin-style dinner under the stars, complete with live entertainment such as belly dancing and henna painting. This tour offers an exhilarating blend of adventure and cultural immersion in the heart of the Arabian desert','2024-09-02 07:45:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 105,000/-'),(52,'Dubai and Abu Dhabi Highlights','6','Dubai','Abu Dhabi','/images/dubai2.jpg','10 Nov 2024','3D/3N','Stay Included','Meals Included','First Aid Included','Explore the best of Dubai and Abu Dhabi with this dual-city tour. Start in Dubai, where you’ll visit top attractions such as the Burj Khalifa, Dubai Creek, and the Dubai Mall. Travel to Abu Dhabi to see the stunning Sheikh Zayed Grand Mosque, the opulent Emirates Palace, and the thrilling Ferrari World theme park. This tour combines the modern luxury of Dubai with the cultural grandeur of Abu Dhabi, offering a diverse and enriching experience across the UAE','2024-09-02 07:45:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 72,000/-'),(53,'Dubai’s Cultural Gems','6','Dubai','Dubai','/images/dubai3.jpg','22 Jan 2025','2D/3N','Stay Included','Meals Included','First Aid Included','Discover the rich cultural heritage of Dubai with this insightful tour. Visit the Dubai Museum housed in the historic Al Fahidi Fort and explore the vibrant Dubai souks, including the Gold Souk and Spice Souk. Enjoy a traditional dhow cruise along Dubai Creek and visit the historic Al Bastakiya district to learn about Dubai’s transformation from a small fishing village to a global metropolis. This tour provides an in-depth look at the cultural and historical aspects of Dubai’s fascinating past and present','2024-09-02 07:45:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 23,000/-'),(54,'Dubai Luxury Experience','6','Dubai','Dubai','/images/dubai4.jpg','05 Feb 2025','4D/2N','Stay Included','Meals Included','First Aid Included','Indulge in the ultimate luxury experience in Dubai with this opulent tour. Stay at the world-renowned Burj Al Arab and enjoy exclusive amenities and exceptional service. Visit the extravagant Dubai Mall for a luxury shopping spree and dine at some of Dubai’s most prestigious restaurants. Take a private yacht cruise along Dubai’s stunning coastline and relax at the luxurious beaches of Jumeirah. This tour offers a lavish exploration of Dubai’s high-end attractions and experiences','2024-09-02 07:45:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 180,000/-'),(55,'Swiss Alps Adventure','7','Zurich','Zermatt','/images/switzerland1.jpg','12 Nov 2024','3D/2N','Stay Included','Meals Included','First Aid Included','Embark on an unforgettable journey through the Swiss Alps, starting in the vibrant city of Zurich and ending at the iconic Matterhorn in Zermatt. Enjoy breathtaking mountain views, charming alpine villages, and thrilling outdoor activities.','2024-09-02 07:46:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 50,000/-'),(56,'Lakes and Mountains of Switzerland','7','Geneva','Lucerne','/images/switzerland2.jpg','20 Dec 2024','2D/3N','Stay Included','Meals Included','First Aid Included','Explore the serene beauty of Switzerland’s lakes and mountains. From the cosmopolitan city of Geneva, travel through picturesque landscapes to the charming city of Lucerne, with stops at famous lakes and scenic mountain passes.','2024-09-02 07:46:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 18,000/-'),(57,'The Grand Swiss Panorama','7','Interlaken','St. Moritz\n','/images/switzerland3.jpg','05 Jan 2025','4D/2N','Stay Included','Meals Included','First Aid Included','This tour takes you through the heart of Switzerland’s most iconic landscapes. Start in Interlaken, nestled between two lakes, and wind your way to the luxurious resort town of St. Moritz, with panoramic views of valleys, glaciers, and peaks along the way.','2024-09-02 07:46:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 140,000/-'),(58,'Historic Switzerland Tour','7','Bern','Lugano','/images/switzerland4.jpg','25 Mar 2025','3D/3N','Stay Included','Meals Included','First Aid Included','Discover Switzerland’s rich history and culture. Starting in the medieval city of Bern, travel south to the Italian-speaking region of Lugano. Along the way, visit UNESCO World Heritage sites, historic landmarks, and experience the blend of Swiss and Italian influences.','2024-09-02 07:46:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 85,000/-'),(68,'Explore Japan','1','Tokyo','Kyoto','/images/japan2.jpg','2024-10-01','3D/2N','Stay Included','Meals Included','First Aid Included','A wonderful journey through Tokyo and Kyoto','2024-09-05 11:16:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 75,000/-'),(69,'Discover Japan','1','Osaka','Tokyo','/images/japan3.jpg','2024-11-10','4D/2N','Stay Included','Meals Included','First Aid Included','Experience the vibrant culture of Osaka and Tokyo','2024-09-05 11:16:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 95,000/-'),(70,'Hokkaido Highlights','1','Hokkaido','Tokyo','/images/japan4.jpg','2024-12-15','2D/3N','Stay Included','Meals Included','First Aid Included','Tour of Japan\'s scenic beauty and major attractions','2024-09-05 11:16:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INR 120,000/-'),(72,'Treasures Of Japan','1','Osaka','Kyoto','/images/1725610829465-ilfa9768nfnwt3glp8889b3g2gvx_shutterstock_1653528649.jpg','2 Jan 2025','3D/2N','Stay Included','Meals Included','First Aid Included','Immerse yourself in the cultural treasures of Japan with this comprehensive tour. Visit historical landmarks, ancient shrines, and vibrant markets that offer a window into Japan’s rich heritage. From the sacred temples of Kyoto to the traditional wooden houses of Takayama, experience the deep-rooted traditions and craftsmanship that define Japanese culture. Engage in unique cultural experiences such as sushi-making classes, traditional kimono fittings, and local festival celebrations. This tour provides a deep dive into the heart and soul of Japan’s cultural legacy','2024-09-06 08:20:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `amount` varchar(5) DEFAULT NULL,
  `passenger_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2','card','50',3),(2,'68','chillar','6000',2),(3,'pay_OvrwY2RdH96pso','card','67000',36),(4,'pay_Ow98orykLWS4Fx','card','67000',37),(5,'pay_Ow9mpVsjhoedKD','card','67000',38),(6,'pay_Ow9wzwhBIoyG03','card','67000',39),(7,'pay_OwATqxRAD7c2XT','card','57000',40),(8,'pay_OwAZi8v9oXbbGn','card','48000',41),(9,'pay_OwAg7kc87p8miH','card','67000',42),(10,'pay_OwAh9rqbzLvyLg','card','67000',43),(11,'pay_OwCo2CNiRGhLs9','card','67000',46),(12,'pay_OwCpz0IsBdqPQf','card','73000',47),(13,'pay_OwCwezcxcy2PAl','card','62000',48),(14,'pay_OwCzpqzzDhxR1M','card','20000',49),(15,'pay_OwD1CStLujNBcF','card','48000',50),(16,'pay_OwDfrV4ol4Bxfn','card','75000',51);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jugal','jugalsingh23@gmail.com','9167592222','password','2024-08-31 12:17:03'),(2,'jugal','jugalz@gmai.com','9111','password','2024-08-31 12:29:42'),(5,'jugall','hdf','9167597922','$2b$13$Vba.amcJht5DzqdNcJ1S7e5Zbob4ZSjUurGIum.zF9VsXWEv./S4a','2024-09-02 09:05:06'),(6,'Jugal2','jugalsingh23@gmail.com','929282','$2b$13$uit2.x74hS66c8re42Pto.ckd6pa/uisn96rE3b5DX1J/ujkKAVfi','2024-09-04 09:26:36'),(7,'vinayakkkkk','jugalsingh23@dfgdgmail.com','929282','$2b$13$asah6X4fDX6AS9ZPabkw8eJmcC4rYEyyOBf70LQQ3XrUg4V1sM3Qe','2024-09-04 09:32:29');
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

-- Dump completed on 2024-09-12 16:21:07
