-- MySQL dump 10.13  Distrib 8.0.19, for osx10.14 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (9,'consequatur'),(3,'cumque'),(4,'dignissimos'),(7,'fuga'),(1,'minus'),(10,'rerum'),(2,'sunt'),(5,'sunt'),(8,'voluptatem');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint unsigned NOT NULL,
  `target_user_id` bigint unsigned NOT NULL,
  `status` enum('requested','approved','unfriended','declined') DEFAULT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (5,36,'declined','2020-04-18 14:32:59','2020-04-18 15:06:43'),(7,8,'requested','2020-04-18 14:32:51',NULL),(14,53,'requested','2020-04-18 14:32:38',NULL),(15,45,'requested','2020-04-18 14:33:03',NULL);
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `to_user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`to_user_id`) REFERENCES `profiles` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `body` text,
  `filename` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint unsigned NOT NULL,
  `to_user_id` bigint unsigned NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `messages_from_user_id` (`from_user_id`),
  KEY `messages_to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,3,'Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29'),(2,4,5,'Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.','2020-04-18 15:30:13'),(3,6,7,'Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58'),(4,8,9,'Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25'),(5,10,15,'Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_albums`
--

DROP TABLE IF EXISTS `photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo_albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_albums`
--

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `hometown` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Фамиль',
  `email` varchar(120) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_phone_idx` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Elisa','Borer','dach.joannie@example.com',0),(3,'Alex','Fadel','mozell07@example.com',459),(4,'Monica','Braun','calista.murray@example.org',966664),(5,'Niko','Johns','lesch.herminio@example.com',23),(6,'Breanna','Rice','raynor.jarret@example.com',1),(7,'Alexys','Beer','jaskolski.nicholas@example.net',933),(8,'Jeromy','Little','ustehr@example.com',1),(9,'Wallace','Rosenbaum','clark16@example.com',8343120081),(10,'Zella','Sanford','osimonis@example.net',273666),(11,'Bobbie','McLaughlin','dariana58@example.net',7508826514),(12,'Enola','Streich','stiedemann.herbert@example.org',471849),(13,'Carmel','Nitzsche','fryan@example.org',1),(14,'Easton','Dicki','vlegros@example.com',6097862264),(15,'Aurelia','Roberts','magdalena.orn@example.com',60),(16,'Moises','Bradtke','ashton.koelpin@example.org',53),(17,'Jensen','Trantow','amara83@example.net',1),(18,'Herta','Goldner','kris.libby@example.com',1),(19,'Meaghan','Padberg','qjohns@example.com',5547442882),(20,'Baron','Beahan','koby60@example.com',1),(21,'Nayeli','Krajcik','pattie.jacobson@example.com',375),(22,'Frederic','Kulas','brennon77@example.org',1),(23,'Lane','Littel','rau.reina@example.com',695079),(24,'Obie','Schmeler','kkessler@example.net',2551215182),(25,'Art','Ernser','wstanton@example.net',238),(26,'Ethan','Waelchi','goodwin.gus@example.net',530),(27,'Mathew','Carter','labadie.jayme@example.org',617120),(28,'Salma','Gusikowski','robel.walker@example.org',843),(29,'Zoe','Padberg','enolan@example.com',0),(30,'Elyse','Haley','carleton.howell@example.net',5399366040),(31,'Elisha','Krajcik','lkris@example.org',1),(32,'Polly','Grimes','ebba11@example.org',443192),(33,'Jack','Hermiston','tanya.bergnaum@example.org',873),(34,'Carley','Hoppe','o\'hara.kale@example.net',0),(35,'Betty','Hayes','elody.wyman@example.com',142),(36,'Elian','Hills','adella.nolan@example.com',0),(37,'Elissa','Gleason','jermain.tromp@example.org',1),(38,'Robbie','Kautzer','keshawn.erdman@example.org',649),(39,'Alexandre','Turcotte','marlene.mcglynn@example.com',1),(40,'Liliane','Simonis','wunsch.lia@example.net',420),(41,'Jeff','Fritsch','francis22@example.net',370),(42,'Vivienne','Thompson','nichole63@example.com',0),(43,'Romaine','Dickinson','ryan.kaitlyn@example.com',1),(44,'Brant','Kuhic','gschroeder@example.com',1),(45,'Ahmad','Lakin','ana83@example.net',995),(46,'Leon','Crooks','rosenbaum.joany@example.net',26),(47,'Gilberto','Denesik','napoleon.beatty@example.net',355897),(48,'Camron','Stroman','eichmann.arlo@example.com',528184),(49,'Kellen','Gutkowski','rempel.esther@example.net',0),(50,'Tre','Herman','estel57@example.net',0),(51,'Silas','Heller','ytoy@example.com',386),(52,'Delia','Fisher','toby09@example.com',1914018156),(53,'Marques','Rutherford','dblanda@example.net',0),(54,'Niko','Little','greenholt.claudie@example.org',5650743690),(55,'Janae','Breitenberg','jazmyn.bradtke@example.com',0),(56,'Johnson','Lowe','nelda28@example.net',47),(57,'Estrella','Hartmann','bessie60@example.com',554),(58,'Margie','Schroeder','acollins@example.net',497056),(59,'Hayley','Wuckert','clittle@example.org',76),(60,'Dannie','Sawayn','ebosco@example.com',0),(61,'Conner','Sawayn','lschneider@example.com',0),(62,'Sigmund','Kub','rita02@example.com',83),(63,'Carlotta','Reilly','bryana.weimann@example.org',799559),(64,'Brad','Sanford','titus.marks@example.net',862),(65,'Cortez','Marquardt','alfredo.greenfelder@example.com',763335),(66,'Malcolm','Fay','fbrakus@example.org',535981557),(67,'Frankie','Upton','oharvey@example.net',1),(68,'Tatyana','Stehr','khalvorson@example.net',228151),(69,'Alene','Armstrong','vdoyle@example.net',417691),(70,'Dominic','Pfeffer','ometz@example.com',0),(71,'Eddie','Lind','izaiah.ledner@example.net',607113),(72,'Thelma','Shields','kberge@example.net',6088797702),(73,'Davonte','Hodkiewicz','vrice@example.org',310377),(74,'Lorenza','Stehr','simone90@example.net',90213),(75,'Margaret','Zemlak','jaquelin73@example.org',0),(76,'Jocelyn','Jakubowski','crist.jayce@example.org',737239),(77,'Easton','Jerde','spinka.jameson@example.com',711704),(78,'Sven','Rowe','curt06@example.net',331774),(79,'Zoe','Bradtke','gabrielle.casper@example.com',594),(80,'Milo','Ruecker','electa.dooley@example.org',22),(81,'Jonathon','Stroman','destiney.bednar@example.org',485),(82,'Aiyana','Sauer','qborer@example.com',0),(83,'Kathlyn','Barton','london.dietrich@example.com',0),(84,'Aylin','Paucek','olittel@example.org',820219),(85,'Tyrese','Boyer','bins.mattie@example.net',258),(86,'Estel','Jakubowski','dgulgowski@example.net',926),(87,'Mckenzie','Oberbrunner','stephany.olson@example.net',1),(88,'Carey','Mann','dkozey@example.net',0),(89,'Margarette','Goyette','jacey76@example.com',47),(90,'Beverly','Morissette','neha.cassin@example.org',0),(91,'Armand','Gibson','muller.lora@example.net',0),(92,'Colten','Bernhard','nweissnat@example.com',637531),(93,'Yoshiko','Kuphal','xcormier@example.com',0),(94,'Tremayne','Parisian','mitchell.mack@example.net',8826762712),(95,'Columbus','Lemke','darwin32@example.org',750137),(96,'Ian','Towne','tremayne.reynolds@example.com',5164),(97,'Keshawn','McDermott','wmarquardt@example.net',1),(98,'Kylee','Carter','kylie.runolfsdottir@example.com',20),(99,'Delphia','Schmitt','kautzer.jordan@example.org',332),(100,'Zachary','Anderson','glenna23@example.org',1),(101,'Dean','Satterfield','orin69@example.net',9160120629),(102,'Reuben','Nienow','arlo515@example.org',NULL),(103,'Reuben','Nienow','arlo516@example.org',NULL),(104,'Reuben','Nienow','arlo517@example.org',NULL),(105,'Reuben','Nienow','arlo518@example.org',NULL),(106,'Иван','Диванов','ivan@mail.ru',987654321),(107,'Reuben','Nienow','arlo50102@example.org',9374071116),(200,'Frederik','Upton','terrence.cartwright@example.org',9127498182),(300,'Unique','Windler','rupert55@example.org',9921090703),(400,'Norene','West','rebekah29@example.net',9592139196),(500,'Frederick','Effertz','von.bridget@example.net',9909791725);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_communities` (
  `user_id` bigint unsigned NOT NULL,
  `community_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-18 15:44:00
