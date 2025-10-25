-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: krayin_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `additional` json DEFAULT NULL,
  `schedule_from` datetime DEFAULT NULL,
  `schedule_to` datetime DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_foreign` (`user_id`),
  CONSTRAINT `activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (20,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-06 13:12:27','2025-10-06 13:12:27',NULL),(21,'Updated Name','system',NULL,'{\"new\": {\"label\": \"JEE Full Year Program 2025\", \"value\": \"JEE Full Year Program 2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-06 13:12:27','2025-10-06 13:12:27',NULL),(22,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Complete 1-year preparation with live + recorded lectures, test series, and mentoring\", \"value\": \"Complete 1-year preparation with live + recorded lectures, test series, and mentoring\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,2,'2025-10-06 13:12:27','2025-10-06 13:12:27',NULL),(23,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"JEE-FT-2025\", \"value\": \"JEE-FT-2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,2,'2025-10-06 13:12:27','2025-10-06 13:12:27',NULL),(24,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1000, \"value\": 1000}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,2,'2025-10-06 13:12:27','2025-10-06 13:12:27',NULL),(25,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹85,000.00\", \"value\": 85000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,2,'2025-10-06 13:12:27','2025-10-06 13:12:27',NULL),(26,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"JEE\", \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-06 16:43:11','2025-10-06 16:43:11',NULL),(27,'Updated Mode of Delivery','system',NULL,'{\"new\": {\"label\": \"Online\", \"value\": 4}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Mode of Delivery\"}',NULL,NULL,1,1,'2025-10-06 16:43:11','2025-10-06 16:43:11',NULL),(28,'Updated Duration','system',NULL,'{\"new\": {\"label\": \"3\", \"value\": 7}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Duration\"}',NULL,NULL,1,1,'2025-10-06 16:43:11','2025-10-06 16:43:11',NULL),(29,'Updated Difficulty Level','system',NULL,'{\"new\": {\"label\": \"Beginner\", \"value\": 10}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Difficulty Level\"}',NULL,NULL,1,1,'2025-10-06 16:43:11','2025-10-06 16:43:11',NULL),(30,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-06 16:46:00','2025-10-06 16:46:00',NULL),(31,'Updated Name','system',NULL,'{\"new\": {\"label\": \"ADG\", \"value\": \"ADG\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-06 16:46:00','2025-10-06 16:46:00',NULL),(32,'Updated Emails','system',NULL,'{\"new\": {\"label\": \"abcd@xyz.com (work)\", \"value\": [{\"label\": \"work\", \"value\": \"abcd@xyz.com\"}]}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Emails\"}',NULL,NULL,1,1,'2025-10-06 16:46:00','2025-10-06 16:46:00',NULL),(33,'Updated Contact Numbers','system',NULL,'{\"new\": {\"label\": \" (work)\", \"value\": [{\"label\": \"work\", \"value\": \"\"}]}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Contact Numbers\"}',NULL,NULL,1,1,'2025-10-06 16:46:00','2025-10-06 16:46:00',NULL),(40,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(41,'Updated Name','system',NULL,'{\"new\": {\"label\": \"JEE Crash Course 2025\", \"value\": \"JEE Crash Course 2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(42,'Updated Description','system',NULL,'{\"new\": {\"label\": \"JEE Crash Course 2025\", \"value\": \"JEE Crash Course 2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(43,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"JEE-CR-2025\", \"value\": \"JEE-CR-2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(44,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 150, \"value\": 150}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(45,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹25,000.00\", \"value\": 25000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(46,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"JEE\", \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(47,'Updated Mode of Delivery','system',NULL,'{\"new\": {\"label\": \"Online\", \"value\": 4}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Mode of Delivery\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(48,'Updated Duration','system',NULL,'{\"new\": {\"label\": \"3\", \"value\": 7}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Duration\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(49,'Updated Difficulty Level','system',NULL,'{\"new\": {\"label\": \"Intermediate\", \"value\": 11}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Difficulty Level\"}',NULL,NULL,1,1,'2025-10-06 17:12:23','2025-10-06 17:12:23',NULL),(64,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(65,'Updated Name','system',NULL,'{\"new\": {\"label\": \"JEE Test Series 2025\", \"value\": \"JEE Test Series 2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(66,'Updated Description','system',NULL,'{\"new\": {\"label\": \"20 full-length online mock tests with analytics and ranking\", \"value\": \"20 full-length online mock tests with analytics and ranking\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(67,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"JEE-TST-2025\", \"value\": \"JEE-TST-2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(68,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 500, \"value\": 500}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(69,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹12,000.00\", \"value\": 12000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(70,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"JEE\", \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(71,'Updated Mode of Delivery','system',NULL,'{\"new\": {\"label\": \"Online\", \"value\": 5}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Mode of Delivery\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(72,'Updated Duration','system',NULL,'{\"new\": {\"label\": \"3\", \"value\": 7}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Duration\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(73,'Updated Difficulty Level','system',NULL,'{\"new\": {\"label\": \"Advanced\", \"value\": 12}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Difficulty Level\"}',NULL,NULL,1,1,'2025-10-06 18:06:41','2025-10-06 18:06:41',NULL),(74,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(75,'Updated Name','system',NULL,'{\"new\": {\"label\": \"NEET Full Year Program 2025\", \"value\": \"NEET Full Year Program 2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(76,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Comprehensive NEET preparation course with concept videos, live mentoring & tests\", \"value\": \"Comprehensive NEET preparation course with concept videos, live mentoring & tests\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(77,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"NEET-FT-2025\", \"value\": \"NEET-FT-2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(78,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 100, \"value\": 100}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(79,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹75,000.00\", \"value\": 75000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(80,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"NEET\", \"value\": 2}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(81,'Updated Mode of Delivery','system',NULL,'{\"new\": {\"label\": \"Hybrid\", \"value\": 6}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Mode of Delivery\"}',NULL,NULL,1,1,'2025-10-06 18:11:04','2025-10-06 18:11:04',NULL),(82,'Updated Duration','system',NULL,'{\"new\": {\"label\": \"12\", \"value\": 9}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Duration\"}',NULL,NULL,1,1,'2025-10-06 18:11:05','2025-10-06 18:11:05',NULL),(83,'Updated Difficulty Level','system',NULL,'{\"new\": {\"label\": \"Advanced\", \"value\": 12}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Difficulty Level\"}',NULL,NULL,1,1,'2025-10-06 18:11:05','2025-10-06 18:11:05',NULL),(84,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-06 18:12:30','2025-10-06 18:12:30',NULL),(85,'Updated Name','system',NULL,'{\"new\": {\"label\": \"All Exams Personalized Improvement Suite\", \"value\": \"All Exams Personalized Improvement Suite\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-06 18:12:30','2025-10-06 18:12:30',NULL),(86,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Unified PIM access for JEE + NEET students with dynamic learning paths\", \"value\": \"Unified PIM access for JEE + NEET students with dynamic learning paths\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-06 18:12:30','2025-10-06 18:12:30',NULL),(87,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PIM-ALL-01\", \"value\": \"PIM-ALL-01\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(88,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 100, \"value\": 100}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(89,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹30,000.00\", \"value\": 30000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(90,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"PIM\", \"value\": 3}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(91,'Updated Mode of Delivery','system',NULL,'{\"new\": {\"label\": \"Offline\", \"value\": 5}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Mode of Delivery\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(92,'Updated Duration','system',NULL,'{\"new\": {\"label\": \"12\", \"value\": 9}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Duration\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(93,'Updated Difficulty Level','system',NULL,'{\"new\": {\"label\": \"Intermediate\", \"value\": 11}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Difficulty Level\"}',NULL,NULL,1,1,'2025-10-06 18:12:31','2025-10-06 18:12:31',NULL),(94,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(95,'Updated Name','system',NULL,'{\"new\": {\"label\": \"NEET Test Series 2025\", \"value\": \"NEET Test Series 2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(96,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Online mock tests + detailed solutions\", \"value\": \"Online mock tests + detailed solutions\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(97,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"NEET-TST-2025\", \"value\": \"NEET-TST-2025\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(98,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 500, \"value\": 500}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(99,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹10,000.00\", \"value\": 10000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(100,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"NEET\", \"value\": 2}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(101,'Updated Mode of Delivery','system',NULL,'{\"new\": {\"label\": \"Hybrid\", \"value\": 6}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Mode of Delivery\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(102,'Updated Duration','system',NULL,'{\"new\": {\"label\": \"3\", \"value\": 7}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Duration\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(103,'Updated Difficulty Level','system',NULL,'{\"new\": {\"label\": \"Beginner\", \"value\": 10}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Difficulty Level\"}',NULL,NULL,1,1,'2025-10-06 18:13:47','2025-10-06 18:13:47',NULL),(219,'Updated SouthIndia','system',NULL,'{\"new\": {\"label\": \"Explore Kerala\", \"value\": 15}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SouthIndia\"}',NULL,NULL,1,2,'2025-10-10 18:36:50','2025-10-10 18:36:50',NULL),(407,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-24 11:37:00','2025-10-24 11:37:00',NULL),(408,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Rohit Bal\", \"value\": \"Rohit Bal\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-24 11:37:00','2025-10-24 11:37:00',NULL),(409,'Updated Emails','system',NULL,'{\"new\": {\"label\": \"rohit.bal@abcd.com (work)\", \"value\": [{\"label\": \"work\", \"value\": \"rohit.bal@abcd.com\"}]}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Emails\"}',NULL,NULL,1,2,'2025-10-24 11:37:00','2025-10-24 11:37:00',NULL),(410,'Updated Contact Numbers','system',NULL,'{\"new\": {\"label\": \"99999999 (work)\", \"value\": [{\"label\": \"work\", \"value\": \"99999999\"}]}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Contact Numbers\"}',NULL,NULL,1,2,'2025-10-24 11:37:00','2025-10-24 11:37:00',NULL),(411,'Updated Job Title','system',NULL,'{\"new\": {\"label\": \"Sales Head\", \"value\": \"Sales Head\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Job Title\"}',NULL,NULL,1,2,'2025-10-24 11:37:00','2025-10-24 11:37:00',NULL),(412,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(413,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Alto\", \"value\": \"Maruti Alto\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(414,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Maruti Alto: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating V\", \"value\": \"Maruti Alto: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating V\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(415,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PC-RT-1756514-82-V-001\", \"value\": \"PC-RT-1756514-82-V-001\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(416,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(417,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹10,000.00\", \"value\": 10000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(418,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Alto\", \"value\": 28}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,2,'2025-10-24 11:44:33','2025-10-24 11:44:33',NULL),(419,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(420,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Swift\", \"value\": \"Maruti Swift\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(421,'Updated Description','system',NULL,'{\"new\": {\"label\": \"For Maruti Swift: Passenger Car Radial tyre, Size 185/65R15, Load Index 88, Speed Rating V\", \"value\": \"For Maruti Swift: Passenger Car Radial tyre, Size 185/65R15, Load Index 88, Speed Rating V\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(422,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PC-RT-1856515-88-V-002\", \"value\": \"PC-RT-1856515-88-V-002\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(423,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(424,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹12,000.00\", \"value\": 12000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(425,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Swift\", \"value\": 29}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,2,'2025-10-24 11:45:17','2025-10-24 11:45:17',NULL),(426,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(427,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Baleno\", \"value\": \"Maruti Baleno\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(428,'Updated Description','system',NULL,'{\"new\": {\"label\": \"For Maruti Baleno: Passenger Car Radial tyre, Size 195/65R15, Load Index 91, Speed Rating H\", \"value\": \"For Maruti Baleno: Passenger Car Radial tyre, Size 195/65R15, Load Index 91, Speed Rating H\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(429,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PC-RT-1956515-91-H-003\", \"value\": \"PC-RT-1956515-91-H-003\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(430,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(431,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹15,000.00\", \"value\": 15000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(432,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Baleno\", \"value\": 30}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,2,'2025-10-24 11:46:00','2025-10-24 11:46:00',NULL),(433,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(434,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Dzire\", \"value\": \"Maruti Dzire\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(435,'Updated Description','system',NULL,'{\"new\": {\"label\": \"For Maruti Dzire: Passenger Car Radial tyre, Size 205/55R16, Load Index 91, Speed Rating H\", \"value\": \"For Maruti Dzire: Passenger Car Radial tyre, Size 205/55R16, Load Index 91, Speed Rating H\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(436,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PC-RT-2055516-91-H-004\", \"value\": \"PC-RT-2055516-91-H-004\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(437,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(438,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹18,000.00\", \"value\": 18000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(439,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Dzire\", \"value\": 31}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,2,'2025-10-24 11:46:41','2025-10-24 11:46:41',NULL),(440,'Created','system',NULL,NULL,NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(441,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Wagon R\", \"value\": \"Maruti Wagon R\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(442,'Updated Description','system',NULL,'{\"new\": {\"label\": \"For Maruti Wagon R: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating T\", \"value\": \"For Maruti Wagon R: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating T\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(443,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PC-RT-1756514-82-T-005\", \"value\": \"PC-RT-1756514-82-T-005\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(444,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(445,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹20,000.00\", \"value\": 20000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(446,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Wagon R\", \"value\": 32}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,2,'2025-10-24 11:48:10','2025-10-24 11:48:10',NULL),(447,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(448,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Swift\", \"value\": \"Maruti Swift\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(449,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Headlight (HL), Passenger Car (PC), Maruti Swift, Left Hand Side (LHS), LED type, SKU 001\", \"value\": \"Headlight (HL), Passenger Car (PC), Maruti Swift, Left Hand Side (LHS), LED type, SKU 001\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(450,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"HL-PC-SWIFT-LHS-LED-001\", \"value\": \"HL-PC-SWIFT-LHS-LED-001\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(451,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(452,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹5,000.00\", \"value\": 5000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(453,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Swift\", \"value\": 29}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-24 15:24:51','2025-10-24 15:24:51',NULL),(454,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(455,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Dzire\", \"value\": \"Maruti Dzire\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(456,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Headlight (HL), Passenger Car (PC), Maruti Dzire, Right Hand Side (RHS), Halogen (HAL) type, SKU 002\", \"value\": \"Headlight (HL), Passenger Car (PC), Maruti Dzire, Right Hand Side (RHS), Halogen (HAL) type, SKU 002\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(457,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"HL-PC-DZIRE-RHS-HAL-002\", \"value\": \"HL-PC-DZIRE-RHS-HAL-002\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(458,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 2, \"value\": 2}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(459,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹20,000.00\", \"value\": 20000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(460,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Dzire\", \"value\": 31}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-24 15:26:16','2025-10-24 15:26:16',NULL),(461,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:27:21','2025-10-24 15:27:21',NULL),(462,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Wagon R\", \"value\": \"Maruti Wagon R\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:27:21','2025-10-24 15:27:21',NULL),(463,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Headlight (HL), Passenger Car (PC), Maruti Wagon R, Left Hand Side (LHS), Halogen (HAL) type, SKU 003\", \"value\": \"Headlight (HL), Passenger Car (PC), Maruti Wagon R, Left Hand Side (LHS), Halogen (HAL) type, SKU 003\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:27:21','2025-10-24 15:27:21',NULL),(464,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"HL-PC-WAGONR-LHS-HAL-003\", \"value\": \"HL-PC-WAGONR-LHS-HAL-003\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:27:22','2025-10-24 15:27:22',NULL),(465,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 2, \"value\": 2}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:27:22','2025-10-24 15:27:22',NULL),(466,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹16,000.00\", \"value\": 16000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:27:22','2025-10-24 15:27:22',NULL),(467,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Wagon R\", \"value\": 32}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-24 15:27:22','2025-10-24 15:27:22',NULL),(468,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(469,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Alto\", \"value\": \"Maruti Alto\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(470,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Headlight (HL), Passenger Car (PC), Maruti Alto, Right Hand Side (RHS), Halogen (HAL) type, SKU 004\", \"value\": \"Headlight (HL), Passenger Car (PC), Maruti Alto, Right Hand Side (RHS), Halogen (HAL) type, SKU 004\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(471,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"HL-PC-ALTO-RHS-HAL-004\", \"value\": \"HL-PC-ALTO-RHS-HAL-004\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(472,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 2, \"value\": 2}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(473,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹10,000.00\", \"value\": 10000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(474,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Alto\", \"value\": 28}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-24 15:28:14','2025-10-24 15:28:14',NULL),(475,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:30:20','2025-10-24 15:30:20',NULL),(476,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Baleno\", \"value\": \"Maruti Baleno\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:30:20','2025-10-24 15:30:20',NULL),(477,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Headlight (HL), Passenger Car (PC), Maruti Baleno, Left Hand Side (LHS), LED type, SKU 005\", \"value\": \"Headlight (HL), Passenger Car (PC), Maruti Baleno, Left Hand Side (LHS), LED type, SKU 005\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:30:20','2025-10-24 15:30:20',NULL),(478,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"HL-PC-BALENO-LHS-LED-005\", \"value\": \"HL-PC-BALENO-LHS-LED-005\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:30:20','2025-10-24 15:30:20',NULL),(479,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 2, \"value\": 2}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:30:20','2025-10-24 15:30:20',NULL),(480,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹25,000.00\", \"value\": 25000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:30:20','2025-10-24 15:30:20',NULL),(481,'Updated Warranty','system',NULL,'{\"new\": {\"label\": \"12 months\", \"value\": 34}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Warranty\"}',NULL,NULL,1,1,'2025-10-24 15:37:49','2025-10-24 15:37:49',NULL),(482,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:48:57','2025-10-24 15:48:57',NULL),(483,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Alto\", \"value\": \"Maruti Alto\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:48:57','2025-10-24 15:48:57',NULL),(484,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Paint (PA), Maruti Alto (MRLT), Arctic White (ARW), Solid paint (SOL), SKU 001\", \"value\": \"Paint (PA), Maruti Alto (MRLT), Arctic White (ARW), Solid paint (SOL), SKU 001\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:48:57','2025-10-24 15:48:57',NULL),(485,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PA-MRLT-ARW-SOL-001\", \"value\": \"PA-MRLT-ARW-SOL-001\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:48:57','2025-10-24 15:48:57',NULL),(486,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:48:57','2025-10-24 15:48:57',NULL),(487,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹50,000.00\", \"value\": 50000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:48:57','2025-10-24 15:48:57',NULL),(488,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:50:20','2025-10-24 15:50:20',NULL),(489,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Swift\", \"value\": \"Maruti Swift\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:50:20','2025-10-24 15:50:20',NULL),(490,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Paint (PA), Maruti Swift (MRSW), Sizzling Red Metallic (SRM), Metallic paint (MET), SKU 002\", \"value\": \"Paint (PA), Maruti Swift (MRSW), Sizzling Red Metallic (SRM), Metallic paint (MET), SKU 002\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:50:20','2025-10-24 15:50:20',NULL),(491,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PA-MRSW-SRM-MET-002\", \"value\": \"PA-MRSW-SRM-MET-002\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:50:20','2025-10-24 15:50:20',NULL),(492,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:50:20','2025-10-24 15:50:20',NULL),(493,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹50,000.00\", \"value\": 50000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:50:20','2025-10-24 15:50:20',NULL),(494,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(495,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Baleno\", \"value\": \"Maruti Baleno\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(496,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Paint (PA), Maruti Baleno (MRBL), Pearl Snow White (PSW), Pearl paint (PER), SKU 003\", \"value\": \"Paint (PA), Maruti Baleno (MRBL), Pearl Snow White (PSW), Pearl paint (PER), SKU 003\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(497,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PA-MRBL-PSW-PER-003\", \"value\": \"PA-MRBL-PSW-PER-003\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(498,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(499,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹40,000.00\", \"value\": 40000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(500,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Baleno\", \"value\": 30}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-24 15:51:20','2025-10-24 15:51:20',NULL),(501,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:52:02','2025-10-24 15:52:02',NULL),(502,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Dzire\", \"value\": \"Maruti Dzire\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:52:02','2025-10-24 15:52:02',NULL),(503,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Paint (PA), Maruti Dzire (MRDZ), Opulent Red (OPR), Solid paint (SOL), SKU 004\", \"value\": \"Paint (PA), Maruti Dzire (MRDZ), Opulent Red (OPR), Solid paint (SOL), SKU 004\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:52:02','2025-10-24 15:52:02',NULL),(504,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PA-MRDZ-OPR-SOL-004\", \"value\": \"PA-MRDZ-OPR-SOL-004\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:52:02','2025-10-24 15:52:02',NULL),(505,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:52:02','2025-10-24 15:52:02',NULL),(506,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹40,000.00\", \"value\": 40000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:52:02','2025-10-24 15:52:02',NULL),(507,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(508,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Maruti Wagon R\", \"value\": \"Maruti Wagon R\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(509,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Paint (PA), Maruti Wagon R (MRWR), Luster Blue (LTB), Metallic paint (MET), SKU 005\", \"value\": \"Paint (PA), Maruti Wagon R (MRWR), Luster Blue (LTB), Metallic paint (MET), SKU 005\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(510,'Updated SKU','system',NULL,'{\"new\": {\"label\": \"PA-MRWR-LTB-MET-005\", \"value\": \"PA-MRWR-LTB-MET-005\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"SKU\"}',NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(511,'Updated Quantity','system',NULL,'{\"new\": {\"label\": 1, \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Quantity\"}',NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(512,'Updated Price','system',NULL,'{\"new\": {\"label\": \"₹50,000.00\", \"value\": 50000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Price\"}',NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(513,'Updated Tag Name','system',NULL,'{\"new\": {\"label\": \"Maruti Wagon R\", \"value\": 32}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Tag Name\"}',NULL,NULL,1,1,'2025-10-24 15:54:06','2025-10-24 15:54:06',NULL),(514,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(515,'Updated Name','system',NULL,'{\"new\": {\"label\": \"Vina Kapur\", \"value\": \"Vina Kapur\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Name\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(516,'Updated Emails','system',NULL,'{\"new\": {\"label\": \"vina@abcd.com (work)\", \"value\": [{\"label\": \"work\", \"value\": \"vina@abcd.com\"}]}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Emails\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(517,'Updated Contact Numbers','system',NULL,'{\"new\": {\"label\": \"8888888 (work)\", \"value\": [{\"label\": \"work\", \"value\": \"8888888\"}]}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Contact Numbers\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(518,'Created','system',NULL,NULL,NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(519,'Updated Title','system',NULL,'{\"new\": {\"label\": \"Swift LED Headlight Replacement – Fast Delivery (LHS)\", \"value\": \"Swift LED Headlight Replacement – Fast Delivery (LHS)\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Title\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(520,'Updated Description','system',NULL,'{\"new\": {\"label\": \"Customer requests urgent replacement of left-side LED headlight for a Maruti Swift. Emphasizes need for fast delivery and OEM quality. Seeks installation support as well.\", \"value\": \"Customer requests urgent replacement of left-side LED headlight for a Maruti Swift. Emphasizes need for fast delivery and OEM quality. Seeks installation support as well.\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Description\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(521,'Updated Lead Value','system',NULL,'{\"new\": {\"label\": \"₹5,000.00\", \"value\": 5000}, \"old\": {\"label\": \"₹0.00\", \"value\": null}, \"attribute\": \"Lead Value\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(522,'Updated Source','system',NULL,'{\"new\": {\"label\": \"Email\", \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Source\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(523,'Updated Type','system',NULL,'{\"new\": {\"label\": \"New Business\", \"value\": 1}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Type\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(524,'Updated Sales Owner','system',NULL,'{\"new\": {\"label\": \"Sales Representative-Head light\", \"value\": 20}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Sales Owner\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(525,'Updated Expected Close Date','system',NULL,'{\"new\": {\"label\": \"Tue Oct 28, 2025\", \"value\": \"2025-10-28\"}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Expected Close Date\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(526,'Updated Pipeline','system',NULL,'{\"new\": {\"label\": \"xyz\", \"value\": 8}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Pipeline\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL),(527,'Updated Stage','system',NULL,'{\"new\": {\"label\": \"New\", \"value\": 44}, \"old\": {\"label\": null, \"value\": null}, \"attribute\": \"Stage\"}',NULL,NULL,1,1,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_files`
--

DROP TABLE IF EXISTS `activity_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_files_activity_id_foreign` (`activity_id`),
  CONSTRAINT `activity_files_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_files`
--

LOCK TABLES `activity_files` WRITE;
/*!40000 ALTER TABLE `activity_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_participants`
--

DROP TABLE IF EXISTS `activity_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_participants` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `person_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_participants_activity_id_foreign` (`activity_id`),
  KEY `activity_participants_user_id_foreign` (`user_id`),
  KEY `activity_participants_person_id_foreign` (`person_id`),
  CONSTRAINT `activity_participants_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `activity_participants_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `activity_participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_participants`
--

LOCK TABLES `activity_participants` WRITE;
/*!40000 ALTER TABLE `activity_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_options`
--

DROP TABLE IF EXISTS `attribute_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `attribute_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_options_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_options`
--

LOCK TABLES `attribute_options` WRITE;
/*!40000 ALTER TABLE `attribute_options` DISABLE KEYS */;
INSERT INTO `attribute_options` VALUES (1,'JEE',0,61),(2,'NEET',1,61),(3,'PIM',2,61),(4,'Online',0,62),(5,'Offline',1,62),(6,'Hybrid',2,62),(10,'Beginner',1,64),(11,'Intermediate',2,64),(12,'Advanced',3,64),(28,'Maruti Alto',8,61),(29,'Maruti Swift',9,61),(30,'Maruti Baleno',10,61),(31,'Maruti Dzire',11,61),(32,'Maruti Wagon R',12,61),(33,'24 months',1,71),(34,'12 months',2,71);
/*!40000 ALTER TABLE `attribute_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'leads',
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` json DEFAULT NULL,
  `entity_id` int unsigned NOT NULL,
  `attribute_id` int unsigned NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_type_attribute_value_index_unique` (`entity_type`,`entity_id`,`attribute_id`),
  UNIQUE KEY `attribute_values_unique_id_unique` (`unique_id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_values`
--

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (14,'products','JEE Full Year Program 2025',NULL,NULL,NULL,NULL,NULL,NULL,1,37,NULL),(15,'products','Complete 1-year preparation with live + recorded lectures, test series, and mentoring',NULL,NULL,NULL,NULL,NULL,NULL,1,38,NULL),(16,'products','JEE-FT-2025',NULL,NULL,NULL,NULL,NULL,NULL,1,39,NULL),(17,'products','1000',NULL,NULL,NULL,NULL,NULL,NULL,1,40,NULL),(18,'products',NULL,NULL,NULL,85000,NULL,NULL,NULL,1,41,NULL),(19,'products',NULL,NULL,1,NULL,NULL,NULL,NULL,1,61,NULL),(20,'products',NULL,NULL,4,NULL,NULL,NULL,NULL,1,62,NULL),(22,'products',NULL,NULL,10,NULL,NULL,NULL,NULL,1,64,NULL),(23,'persons','ADG',NULL,NULL,NULL,NULL,NULL,NULL,2,28,NULL),(24,'persons',NULL,NULL,NULL,NULL,NULL,NULL,'[{\"label\": \"work\", \"value\": \"abcd@xyz.com\"}]',2,29,NULL),(25,'persons',NULL,NULL,NULL,NULL,NULL,NULL,'[{\"label\": \"work\", \"value\": \"\"}]',2,30,NULL),(33,'products','JEE Crash Course 2025',NULL,NULL,NULL,NULL,NULL,NULL,2,37,NULL),(34,'products','JEE Crash Course 2025',NULL,NULL,NULL,NULL,NULL,NULL,2,38,NULL),(35,'products','JEE-CR-2025',NULL,NULL,NULL,NULL,NULL,NULL,2,39,NULL),(36,'products','150',NULL,NULL,NULL,NULL,NULL,NULL,2,40,NULL),(37,'products',NULL,NULL,NULL,25000,NULL,NULL,NULL,2,41,NULL),(38,'products',NULL,NULL,1,NULL,NULL,NULL,NULL,2,61,NULL),(39,'products',NULL,NULL,4,NULL,NULL,NULL,NULL,2,62,NULL),(41,'products',NULL,NULL,11,NULL,NULL,NULL,NULL,2,64,NULL),(42,'quotes',NULL,NULL,3,NULL,NULL,NULL,NULL,1,42,NULL),(43,'quotes','Last min JEE',NULL,NULL,NULL,NULL,NULL,NULL,1,43,NULL),(44,'quotes','',NULL,NULL,NULL,NULL,NULL,NULL,1,44,NULL),(45,'quotes',NULL,NULL,NULL,NULL,NULL,NULL,'{\"city\": \"Kolkata\", \"state\": \"WB\", \"address\": \"bb\", \"country\": \"IN\", \"postcode\": \"700084\"}',1,45,NULL),(46,'quotes',NULL,NULL,NULL,NULL,NULL,NULL,'{\"city\": \"KOlkata\", \"state\": \"WB\", \"address\": \"Rosetta New Town, Kolkata \\r\\nKolkata - 700156 \\r\\n( Under Constriction )\", \"country\": \"IN\", \"postcode\": \"\"}',1,46,NULL),(47,'quotes',NULL,NULL,NULL,0,NULL,NULL,NULL,1,48,NULL),(48,'quotes',NULL,NULL,NULL,0,NULL,NULL,NULL,1,49,NULL),(49,'quotes',NULL,NULL,NULL,0,NULL,NULL,NULL,1,50,NULL),(50,'quotes',NULL,NULL,NULL,110000,NULL,NULL,NULL,1,51,NULL),(51,'quotes',NULL,NULL,NULL,110000,NULL,NULL,NULL,1,52,NULL),(52,'quotes',NULL,NULL,NULL,NULL,NULL,'2025-10-06',NULL,1,53,NULL),(53,'quotes',NULL,NULL,2,NULL,NULL,NULL,NULL,1,54,NULL),(63,'products','JEE Test Series 2025',NULL,NULL,NULL,NULL,NULL,NULL,3,37,NULL),(64,'products','20 full-length online mock tests with analytics and ranking',NULL,NULL,NULL,NULL,NULL,NULL,3,38,NULL),(65,'products','JEE-TST-2025',NULL,NULL,NULL,NULL,NULL,NULL,3,39,NULL),(66,'products','500',NULL,NULL,NULL,NULL,NULL,NULL,3,40,NULL),(67,'products',NULL,NULL,NULL,12000,NULL,NULL,NULL,3,41,NULL),(68,'products',NULL,NULL,1,NULL,NULL,NULL,NULL,3,61,NULL),(69,'products',NULL,NULL,5,NULL,NULL,NULL,NULL,3,62,NULL),(71,'products',NULL,NULL,12,NULL,NULL,NULL,NULL,3,64,NULL),(72,'products','NEET Full Year Program 2025',NULL,NULL,NULL,NULL,NULL,NULL,4,37,NULL),(73,'products','Comprehensive NEET preparation course with concept videos, live mentoring & tests',NULL,NULL,NULL,NULL,NULL,NULL,4,38,NULL),(74,'products','NEET-FT-2025',NULL,NULL,NULL,NULL,NULL,NULL,4,39,NULL),(75,'products','100',NULL,NULL,NULL,NULL,NULL,NULL,4,40,NULL),(76,'products',NULL,NULL,NULL,75000,NULL,NULL,NULL,4,41,NULL),(77,'products',NULL,NULL,2,NULL,NULL,NULL,NULL,4,61,NULL),(78,'products',NULL,NULL,6,NULL,NULL,NULL,NULL,4,62,NULL),(80,'products',NULL,NULL,12,NULL,NULL,NULL,NULL,4,64,NULL),(81,'products','All Exams Personalized Improvement Suite',NULL,NULL,NULL,NULL,NULL,NULL,5,37,NULL),(82,'products','Unified PIM access for JEE + NEET students with dynamic learning paths',NULL,NULL,NULL,NULL,NULL,NULL,5,38,NULL),(83,'products','PIM-ALL-01',NULL,NULL,NULL,NULL,NULL,NULL,5,39,NULL),(84,'products','100',NULL,NULL,NULL,NULL,NULL,NULL,5,40,NULL),(85,'products',NULL,NULL,NULL,30000,NULL,NULL,NULL,5,41,NULL),(86,'products',NULL,NULL,3,NULL,NULL,NULL,NULL,5,61,NULL),(87,'products',NULL,NULL,5,NULL,NULL,NULL,NULL,5,62,NULL),(89,'products',NULL,NULL,11,NULL,NULL,NULL,NULL,5,64,NULL),(90,'products','NEET Test Series 2025',NULL,NULL,NULL,NULL,NULL,NULL,6,37,NULL),(91,'products','Online mock tests + detailed solutions',NULL,NULL,NULL,NULL,NULL,NULL,6,38,NULL),(92,'products','NEET-TST-2025',NULL,NULL,NULL,NULL,NULL,NULL,6,39,NULL),(93,'products','500',NULL,NULL,NULL,NULL,NULL,NULL,6,40,NULL),(94,'products',NULL,NULL,NULL,10000,NULL,NULL,NULL,6,41,NULL),(95,'products',NULL,NULL,2,NULL,NULL,NULL,NULL,6,61,NULL),(96,'products',NULL,NULL,6,NULL,NULL,NULL,NULL,6,62,NULL),(98,'products',NULL,NULL,10,NULL,NULL,NULL,NULL,6,64,NULL),(370,'persons','Rohit Bal',NULL,NULL,NULL,NULL,NULL,NULL,14,28,NULL),(371,'persons',NULL,NULL,NULL,NULL,NULL,NULL,'[{\"label\": \"work\", \"value\": \"rohit.bal@abcd.com\"}]',14,29,NULL),(372,'persons',NULL,NULL,NULL,NULL,NULL,NULL,'[{\"label\": \"work\", \"value\": \"99999999\"}]',14,30,NULL),(373,'persons','Sales Head',NULL,NULL,NULL,NULL,NULL,NULL,14,31,NULL),(374,'persons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,32,NULL),(375,'persons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,14,33,NULL),(376,'products','Maruti Alto',NULL,NULL,NULL,NULL,NULL,NULL,17,37,NULL),(377,'products','Maruti Alto: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating V',NULL,NULL,NULL,NULL,NULL,NULL,17,38,NULL),(378,'products','PC-RT-1756514-82-V-001',NULL,NULL,NULL,NULL,NULL,NULL,17,39,NULL),(379,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,17,40,NULL),(380,'products',NULL,NULL,NULL,10000,NULL,NULL,NULL,17,41,NULL),(381,'products',NULL,NULL,28,NULL,NULL,NULL,NULL,17,61,NULL),(382,'products','Maruti Swift',NULL,NULL,NULL,NULL,NULL,NULL,18,37,NULL),(383,'products','For Maruti Swift: Passenger Car Radial tyre, Size 185/65R15, Load Index 88, Speed Rating V',NULL,NULL,NULL,NULL,NULL,NULL,18,38,NULL),(384,'products','PC-RT-1856515-88-V-002',NULL,NULL,NULL,NULL,NULL,NULL,18,39,NULL),(385,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,18,40,NULL),(386,'products',NULL,NULL,NULL,12000,NULL,NULL,NULL,18,41,NULL),(387,'products',NULL,NULL,29,NULL,NULL,NULL,NULL,18,61,NULL),(388,'products','Maruti Baleno',NULL,NULL,NULL,NULL,NULL,NULL,19,37,NULL),(389,'products','For Maruti Baleno: Passenger Car Radial tyre, Size 195/65R15, Load Index 91, Speed Rating H',NULL,NULL,NULL,NULL,NULL,NULL,19,38,NULL),(390,'products','PC-RT-1956515-91-H-003',NULL,NULL,NULL,NULL,NULL,NULL,19,39,NULL),(391,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,19,40,NULL),(392,'products',NULL,NULL,NULL,15000,NULL,NULL,NULL,19,41,NULL),(393,'products',NULL,NULL,30,NULL,NULL,NULL,NULL,19,61,NULL),(394,'products','Maruti Dzire',NULL,NULL,NULL,NULL,NULL,NULL,20,37,NULL),(395,'products','For Maruti Dzire: Passenger Car Radial tyre, Size 205/55R16, Load Index 91, Speed Rating H',NULL,NULL,NULL,NULL,NULL,NULL,20,38,NULL),(396,'products','PC-RT-2055516-91-H-004',NULL,NULL,NULL,NULL,NULL,NULL,20,39,NULL),(397,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,20,40,NULL),(398,'products',NULL,NULL,NULL,18000,NULL,NULL,NULL,20,41,NULL),(399,'products',NULL,NULL,31,NULL,NULL,NULL,NULL,20,61,NULL),(400,'products','Maruti Wagon R',NULL,NULL,NULL,NULL,NULL,NULL,21,37,NULL),(401,'products','For Maruti Wagon R: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating T',NULL,NULL,NULL,NULL,NULL,NULL,21,38,NULL),(402,'products','PC-RT-1756514-82-T-005',NULL,NULL,NULL,NULL,NULL,NULL,21,39,NULL),(403,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,21,40,NULL),(404,'products',NULL,NULL,NULL,20000,NULL,NULL,NULL,21,41,NULL),(405,'products',NULL,NULL,32,NULL,NULL,NULL,NULL,21,61,NULL),(406,'products','Maruti Swift',NULL,NULL,NULL,NULL,NULL,NULL,22,37,NULL),(407,'products','Headlight (HL), Passenger Car (PC), Maruti Swift, Left Hand Side (LHS), LED type, SKU 001',NULL,NULL,NULL,NULL,NULL,NULL,22,38,NULL),(408,'products','HL-PC-SWIFT-LHS-LED-001',NULL,NULL,NULL,NULL,NULL,NULL,22,39,NULL),(409,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,22,40,NULL),(410,'products',NULL,NULL,NULL,5000,NULL,NULL,NULL,22,41,NULL),(411,'products',NULL,NULL,29,NULL,NULL,NULL,NULL,22,61,NULL),(412,'products','Maruti Dzire',NULL,NULL,NULL,NULL,NULL,NULL,23,37,NULL),(413,'products','Headlight (HL), Passenger Car (PC), Maruti Dzire, Right Hand Side (RHS), Halogen (HAL) type, SKU 002',NULL,NULL,NULL,NULL,NULL,NULL,23,38,NULL),(414,'products','HL-PC-DZIRE-RHS-HAL-002',NULL,NULL,NULL,NULL,NULL,NULL,23,39,NULL),(415,'products','2',NULL,NULL,NULL,NULL,NULL,NULL,23,40,NULL),(416,'products',NULL,NULL,NULL,20000,NULL,NULL,NULL,23,41,NULL),(417,'products',NULL,NULL,31,NULL,NULL,NULL,NULL,23,61,NULL),(418,'products','Maruti Wagon R',NULL,NULL,NULL,NULL,NULL,NULL,24,37,NULL),(419,'products','Headlight (HL), Passenger Car (PC), Maruti Wagon R, Left Hand Side (LHS), Halogen (HAL) type, SKU 003',NULL,NULL,NULL,NULL,NULL,NULL,24,38,NULL),(420,'products','HL-PC-WAGONR-LHS-HAL-003',NULL,NULL,NULL,NULL,NULL,NULL,24,39,NULL),(421,'products','2',NULL,NULL,NULL,NULL,NULL,NULL,24,40,NULL),(422,'products',NULL,NULL,NULL,16000,NULL,NULL,NULL,24,41,NULL),(423,'products',NULL,NULL,32,NULL,NULL,NULL,NULL,24,61,NULL),(424,'products','Maruti Alto',NULL,NULL,NULL,NULL,NULL,NULL,25,37,NULL),(425,'products','Headlight (HL), Passenger Car (PC), Maruti Alto, Right Hand Side (RHS), Halogen (HAL) type, SKU 004',NULL,NULL,NULL,NULL,NULL,NULL,25,38,NULL),(426,'products','HL-PC-ALTO-RHS-HAL-004',NULL,NULL,NULL,NULL,NULL,NULL,25,39,NULL),(427,'products','2',NULL,NULL,NULL,NULL,NULL,NULL,25,40,NULL),(428,'products',NULL,NULL,NULL,10000,NULL,NULL,NULL,25,41,NULL),(429,'products',NULL,NULL,28,NULL,NULL,NULL,NULL,25,61,NULL),(430,'products','Maruti Baleno',NULL,NULL,NULL,NULL,NULL,NULL,26,37,NULL),(431,'products','Headlight (HL), Passenger Car (PC), Maruti Baleno, Left Hand Side (LHS), LED type, SKU 005',NULL,NULL,NULL,NULL,NULL,NULL,26,38,NULL),(432,'products','HL-PC-BALENO-LHS-LED-005',NULL,NULL,NULL,NULL,NULL,NULL,26,39,NULL),(433,'products','2',NULL,NULL,NULL,NULL,NULL,NULL,26,40,NULL),(434,'products',NULL,NULL,NULL,25000,NULL,NULL,NULL,26,41,NULL),(435,'products',NULL,NULL,34,NULL,NULL,NULL,NULL,26,71,NULL),(436,'products','Maruti Alto',NULL,NULL,NULL,NULL,NULL,NULL,27,37,NULL),(437,'products','Paint (PA), Maruti Alto (MRLT), Arctic White (ARW), Solid paint (SOL), SKU 001',NULL,NULL,NULL,NULL,NULL,NULL,27,38,NULL),(438,'products','PA-MRLT-ARW-SOL-001',NULL,NULL,NULL,NULL,NULL,NULL,27,39,NULL),(439,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,27,40,NULL),(440,'products',NULL,NULL,NULL,50000,NULL,NULL,NULL,27,41,NULL),(441,'products','Maruti Swift',NULL,NULL,NULL,NULL,NULL,NULL,28,37,NULL),(442,'products','Paint (PA), Maruti Swift (MRSW), Sizzling Red Metallic (SRM), Metallic paint (MET), SKU 002',NULL,NULL,NULL,NULL,NULL,NULL,28,38,NULL),(443,'products','PA-MRSW-SRM-MET-002',NULL,NULL,NULL,NULL,NULL,NULL,28,39,NULL),(444,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,28,40,NULL),(445,'products',NULL,NULL,NULL,50000,NULL,NULL,NULL,28,41,NULL),(446,'products','Maruti Baleno',NULL,NULL,NULL,NULL,NULL,NULL,29,37,NULL),(447,'products','Paint (PA), Maruti Baleno (MRBL), Pearl Snow White (PSW), Pearl paint (PER), SKU 003',NULL,NULL,NULL,NULL,NULL,NULL,29,38,NULL),(448,'products','PA-MRBL-PSW-PER-003',NULL,NULL,NULL,NULL,NULL,NULL,29,39,NULL),(449,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,29,40,NULL),(450,'products',NULL,NULL,NULL,40000,NULL,NULL,NULL,29,41,NULL),(451,'products',NULL,NULL,30,NULL,NULL,NULL,NULL,29,61,NULL),(452,'products','Maruti Dzire',NULL,NULL,NULL,NULL,NULL,NULL,30,37,NULL),(453,'products','Paint (PA), Maruti Dzire (MRDZ), Opulent Red (OPR), Solid paint (SOL), SKU 004',NULL,NULL,NULL,NULL,NULL,NULL,30,38,NULL),(454,'products','PA-MRDZ-OPR-SOL-004',NULL,NULL,NULL,NULL,NULL,NULL,30,39,NULL),(455,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,30,40,NULL),(456,'products',NULL,NULL,NULL,40000,NULL,NULL,NULL,30,41,NULL),(457,'products','Maruti Wagon R',NULL,NULL,NULL,NULL,NULL,NULL,31,37,NULL),(458,'products','Paint (PA), Maruti Wagon R (MRWR), Luster Blue (LTB), Metallic paint (MET), SKU 005',NULL,NULL,NULL,NULL,NULL,NULL,31,38,NULL),(459,'products','PA-MRWR-LTB-MET-005',NULL,NULL,NULL,NULL,NULL,NULL,31,39,NULL),(460,'products','1',NULL,NULL,NULL,NULL,NULL,NULL,31,40,NULL),(461,'products',NULL,NULL,NULL,50000,NULL,NULL,NULL,31,41,NULL),(462,'products',NULL,NULL,32,NULL,NULL,NULL,NULL,31,61,NULL),(463,'persons','Vina Kapur',NULL,NULL,NULL,NULL,NULL,NULL,15,28,NULL),(464,'persons',NULL,NULL,NULL,NULL,NULL,NULL,'[{\"label\": \"work\", \"value\": \"vina@abcd.com\"}]',15,29,NULL),(465,'persons',NULL,NULL,NULL,NULL,NULL,NULL,'[{\"label\": \"work\", \"value\": \"8888888\"}]',15,30,NULL),(466,'persons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,15,33,NULL),(467,'leads','Swift LED Headlight Replacement – Fast Delivery (LHS)',NULL,NULL,NULL,NULL,NULL,NULL,18,19,NULL),(468,'leads','Customer requests urgent replacement of left-side LED headlight for a Maruti Swift. Emphasizes need for fast delivery and OEM quality. Seeks installation support as well.',NULL,NULL,NULL,NULL,NULL,NULL,18,20,NULL),(469,'leads',NULL,NULL,NULL,5000,NULL,NULL,NULL,18,21,NULL),(470,'leads',NULL,NULL,1,NULL,NULL,NULL,NULL,18,22,NULL),(471,'leads',NULL,NULL,1,NULL,NULL,NULL,NULL,18,23,NULL),(472,'leads',NULL,NULL,20,NULL,NULL,NULL,NULL,18,24,NULL),(473,'leads',NULL,NULL,NULL,NULL,NULL,'2025-10-28',NULL,18,25,NULL),(474,'leads',NULL,NULL,8,NULL,NULL,NULL,NULL,18,26,NULL),(475,'leads',NULL,NULL,44,NULL,NULL,NULL,NULL,18,27,NULL);
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lookup_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int DEFAULT NULL,
  `validation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `quick_add` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_code_entity_type_unique` (`code`,`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (19,'title','Title','text',NULL,'leads',1,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(20,'description','Description','textarea',NULL,'leads',2,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(21,'lead_value','Lead Value','price',NULL,'leads',3,'decimal',1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(22,'lead_source_id','Source','select','lead_sources','leads',4,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(23,'lead_type_id','Type','select','lead_types','leads',5,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(24,'user_id','Sales Owner','select','users','leads',7,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(25,'expected_close_date','Expected Close Date','date',NULL,'leads',8,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(26,'lead_pipeline_id','Pipeline','lookup','lead_pipelines','leads',9,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(27,'lead_pipeline_stage_id','Stage','lookup','lead_pipeline_stages','leads',10,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(28,'name','Name','text',NULL,'persons',1,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(29,'emails','Emails','email',NULL,'persons',2,NULL,1,1,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(30,'contact_numbers','Contact Numbers','phone',NULL,'persons',3,'numeric',0,1,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(31,'job_title','Job Title','text',NULL,'persons',4,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(32,'user_id','Sales Owner','lookup','users','persons',5,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(33,'organization_id','Organization','lookup','organizations','persons',6,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(34,'name','Name','text',NULL,'organizations',1,NULL,1,1,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(35,'address','Address','address',NULL,'organizations',2,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(36,'user_id','Sales Owner','lookup','users','organizations',3,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(37,'name','Name','text',NULL,'products',1,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(38,'description','Description','textarea',NULL,'products',2,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(39,'sku','SKU','text',NULL,'products',3,NULL,1,1,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(40,'quantity','Quantity','text',NULL,'products',4,'numeric',1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(41,'price','Price','price',NULL,'products',5,'decimal',1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(42,'user_id','Sales Owner','select','users','quotes',1,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(43,'subject','Subject','text',NULL,'quotes',2,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(44,'description','Description','textarea',NULL,'quotes',3,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(45,'billing_address','Billing Address','address',NULL,'quotes',4,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(46,'shipping_address','Shipping Address','address',NULL,'quotes',5,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(47,'discount_percent','Discount Percent','text',NULL,'quotes',6,'decimal',0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(48,'discount_amount','Discount Amount','price',NULL,'quotes',7,'decimal',0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(49,'tax_amount','Tax Amount','price',NULL,'quotes',8,'decimal',0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(50,'adjustment_amount','Adjustment Amount','price',NULL,'quotes',9,'decimal',0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(51,'sub_total','Sub Total','price',NULL,'quotes',10,'decimal',1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(52,'grand_total','Grand Total','price',NULL,'quotes',11,'decimal',1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(53,'expired_at','Expired At','date',NULL,'quotes',12,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(54,'person_id','Person','lookup','persons','quotes',13,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(55,'name','Name','text',NULL,'warehouses',1,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(56,'description','Description','textarea',NULL,'warehouses',2,NULL,0,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(57,'contact_name','Contact Name','text',NULL,'warehouses',3,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(58,'contact_emails','Contact Emails','email',NULL,'warehouses',4,NULL,1,1,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(59,'contact_numbers','Contact Numbers','phone',NULL,'warehouses',5,'numeric',0,1,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(60,'contact_address','Contact Address','address',NULL,'warehouses',6,NULL,1,0,1,0,'2025-10-05 09:18:56','2025-10-05 09:18:56'),(61,'tag_name','Tag Name','select',NULL,'products',NULL,NULL,0,0,1,1,'2025-10-06 13:34:59','2025-10-24 11:43:19'),(62,'mode_of_delivery','Mode of Delivery','select',NULL,'products',NULL,NULL,0,0,1,1,'2025-10-06 13:36:54','2025-10-13 20:22:21'),(64,'difficulty_level','Difficulty Level','select',NULL,'products',NULL,NULL,0,0,1,1,'2025-10-06 13:39:42','2025-10-06 13:39:42'),(71,'Warranty','Warranty','select',NULL,'products',NULL,NULL,0,0,1,1,'2025-10-24 15:37:30','2025-10-24 15:37:30');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_config`
--

DROP TABLE IF EXISTS `core_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_config`
--

LOCK TABLES `core_config` WRITE;
/*!40000 ALTER TABLE `core_config` DISABLE KEYS */;
INSERT INTO `core_config` VALUES (1,'general.general.locale_settings.locale','en','2025-10-06 17:01:37','2025-10-06 17:01:37'),(2,'general.general.admin_logo.logo_image','configuration/Hb5nV7XvFDKkw4jz4rEy6MMtQjcaQLZjAxYnAQ3v.jpg','2025-10-06 17:01:37','2025-10-06 17:01:37'),(3,'general.settings.menu.mail.mail','Mail','2025-10-08 19:10:40','2025-10-08 19:10:40'),(4,'general.settings.menu.mail.inbox','Inbox','2025-10-08 19:10:40','2025-10-08 19:10:40'),(5,'general.settings.menu.mail.draft','Draft','2025-10-08 19:10:40','2025-10-08 19:10:40'),(6,'general.settings.menu.mail.outbox','Outbox','2025-10-08 19:10:40','2025-10-08 19:10:40'),(7,'general.settings.menu.mail.sent','Sent','2025-10-08 19:10:40','2025-10-08 19:10:40'),(8,'general.settings.menu.mail.trash','Trash','2025-10-08 19:10:40','2025-10-08 19:10:40'),(9,'general.settings.menu.contacts.contacts','Contacts','2025-10-08 19:10:40','2025-10-08 19:10:40'),(10,'general.settings.menu.contacts.persons','Persons','2025-10-08 19:10:40','2025-10-08 19:10:40'),(11,'general.settings.menu.contacts.organizations','Organizations','2025-10-08 19:10:40','2025-10-08 19:10:40'),(12,'general.settings.footer.label','<p>Powered&nbsp;by <span style=\"color: rgb(14, 144, 217);\"><a href=\"https://agenticone.com\" target=\"_blank\" rel=\"noopener\">agenticone</a></span>.</p>','2025-10-08 19:10:40','2025-10-08 19:10:40'),(13,'general.settings.menu.dashboard','Dashboard','2025-10-08 19:10:40','2025-10-08 19:10:40'),(14,'general.settings.menu.leads','Leads','2025-10-08 19:10:40','2025-10-08 19:10:40'),(15,'general.settings.menu.quotes','Quotes','2025-10-08 19:10:40','2025-10-08 19:10:40'),(16,'general.settings.menu.activities','Activities','2025-10-08 19:10:40','2025-10-08 19:10:40'),(17,'general.settings.menu.products','Products','2025-10-08 19:10:40','2025-10-08 19:10:40'),(18,'general.settings.menu.settings','Settings','2025-10-08 19:10:40','2025-10-08 19:10:40'),(19,'general.settings.menu.configuration','Configuration','2025-10-08 19:10:40','2025-10-08 19:10:40'),(20,'general.settings.menu_color.brand_color','#0e90d9','2025-10-08 19:10:40','2025-10-08 19:10:40');
/*!40000 ALTER TABLE `core_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan'),(2,'AX','Åland Islands'),(3,'AL','Albania'),(4,'DZ','Algeria'),(5,'AS','American Samoa'),(6,'AD','Andorra'),(7,'AO','Angola'),(8,'AI','Anguilla'),(9,'AQ','Antarctica'),(10,'AG','Antigua & Barbuda'),(11,'AR','Argentina'),(12,'AM','Armenia'),(13,'AW','Aruba'),(14,'AC','Ascension Island'),(15,'AU','Australia'),(16,'AT','Austria'),(17,'AZ','Azerbaijan'),(18,'BS','Bahamas'),(19,'BH','Bahrain'),(20,'BD','Bangladesh'),(21,'BB','Barbados'),(22,'BY','Belarus'),(23,'BE','Belgium'),(24,'BZ','Belize'),(25,'BJ','Benin'),(26,'BM','Bermuda'),(27,'BT','Bhutan'),(28,'BO','Bolivia'),(29,'BA','Bosnia & Herzegovina'),(30,'BW','Botswana'),(31,'BR','Brazil'),(32,'IO','British Indian Ocean Territory'),(33,'VG','British Virgin Islands'),(34,'BN','Brunei'),(35,'BG','Bulgaria'),(36,'BF','Burkina Faso'),(37,'BI','Burundi'),(38,'KH','Cambodia'),(39,'CM','Cameroon'),(40,'CA','Canada'),(41,'IC','Canary Islands'),(42,'CV','Cape Verde'),(43,'BQ','Caribbean Netherlands'),(44,'KY','Cayman Islands'),(45,'CF','Central African Republic'),(46,'EA','Ceuta & Melilla'),(47,'TD','Chad'),(48,'CL','Chile'),(49,'CN','China'),(50,'CX','Christmas Island'),(51,'CC','Cocos (Keeling) Islands'),(52,'CO','Colombia'),(53,'KM','Comoros'),(54,'CG','Congo - Brazzaville'),(55,'CD','Congo - Kinshasa'),(56,'CK','Cook Islands'),(57,'CR','Costa Rica'),(58,'CI','Côte d’Ivoire'),(59,'HR','Croatia'),(60,'CU','Cuba'),(61,'CW','Curaçao'),(62,'CY','Cyprus'),(63,'CZ','Czechia'),(64,'DK','Denmark'),(65,'DG','Diego Garcia'),(66,'DJ','Djibouti'),(67,'DM','Dominica'),(68,'DO','Dominican Republic'),(69,'EC','Ecuador'),(70,'EG','Egypt'),(71,'SV','El Salvador'),(72,'GQ','Equatorial Guinea'),(73,'ER','Eritrea'),(74,'EE','Estonia'),(75,'ET','Ethiopia'),(76,'EZ','Eurozone'),(77,'FK','Falkland Islands'),(78,'FO','Faroe Islands'),(79,'FJ','Fiji'),(80,'FI','Finland'),(81,'FR','France'),(82,'GF','French Guiana'),(83,'PF','French Polynesia'),(84,'TF','French Southern Territories'),(85,'GA','Gabon'),(86,'GM','Gambia'),(87,'GE','Georgia'),(88,'DE','Germany'),(89,'GH','Ghana'),(90,'GI','Gibraltar'),(91,'GR','Greece'),(92,'GL','Greenland'),(93,'GD','Grenada'),(94,'GP','Guadeloupe'),(95,'GU','Guam'),(96,'GT','Guatemala'),(97,'GG','Guernsey'),(98,'GN','Guinea'),(99,'GW','Guinea-Bissau'),(100,'GY','Guyana'),(101,'HT','Haiti'),(102,'HN','Honduras'),(103,'HK','Hong Kong SAR China'),(104,'HU','Hungary'),(105,'IS','Iceland'),(106,'IN','India'),(107,'ID','Indonesia'),(108,'IR','Iran'),(109,'IQ','Iraq'),(110,'IE','Ireland'),(111,'IM','Isle of Man'),(112,'IL','Israel'),(113,'IT','Italy'),(114,'JM','Jamaica'),(115,'JP','Japan'),(116,'JE','Jersey'),(117,'JO','Jordan'),(118,'KZ','Kazakhstan'),(119,'KE','Kenya'),(120,'KI','Kiribati'),(121,'XK','Kosovo'),(122,'KW','Kuwait'),(123,'KG','Kyrgyzstan'),(124,'LA','Laos'),(125,'LV','Latvia'),(126,'LB','Lebanon'),(127,'LS','Lesotho'),(128,'LR','Liberia'),(129,'LY','Libya'),(130,'LI','Liechtenstein'),(131,'LT','Lithuania'),(132,'LU','Luxembourg'),(133,'MO','Macau SAR China'),(134,'MK','Macedonia'),(135,'MG','Madagascar'),(136,'MW','Malawi'),(137,'MY','Malaysia'),(138,'MV','Maldives'),(139,'ML','Mali'),(140,'MT','Malta'),(141,'MH','Marshall Islands'),(142,'MQ','Martinique'),(143,'MR','Mauritania'),(144,'MU','Mauritius'),(145,'YT','Mayotte'),(146,'MX','Mexico'),(147,'FM','Micronesia'),(148,'MD','Moldova'),(149,'MC','Monaco'),(150,'MN','Mongolia'),(151,'ME','Montenegro'),(152,'MS','Montserrat'),(153,'MA','Morocco'),(154,'MZ','Mozambique'),(155,'MM','Myanmar (Burma)'),(156,'NA','Namibia'),(157,'NR','Nauru'),(158,'NP','Nepal'),(159,'NL','Netherlands'),(160,'NC','New Caledonia'),(161,'NZ','New Zealand'),(162,'NI','Nicaragua'),(163,'NE','Niger'),(164,'NG','Nigeria'),(165,'NU','Niue'),(166,'NF','Norfolk Island'),(167,'KP','North Korea'),(168,'MP','Northern Mariana Islands'),(169,'NO','Norway'),(170,'OM','Oman'),(171,'PK','Pakistan'),(172,'PW','Palau'),(173,'PS','Palestinian Territories'),(174,'PA','Panama'),(175,'PG','Papua New Guinea'),(176,'PY','Paraguay'),(177,'PE','Peru'),(178,'PH','Philippines'),(179,'PN','Pitcairn Islands'),(180,'PL','Poland'),(181,'PT','Portugal'),(182,'PR','Puerto Rico'),(183,'QA','Qatar'),(184,'RE','Réunion'),(185,'RO','Romania'),(186,'RU','Russia'),(187,'RW','Rwanda'),(188,'WS','Samoa'),(189,'SM','San Marino'),(190,'ST','São Tomé & Príncipe'),(191,'SA','Saudi Arabia'),(192,'SN','Senegal'),(193,'RS','Serbia'),(194,'SC','Seychelles'),(195,'SL','Sierra Leone'),(196,'SG','Singapore'),(197,'SX','Sint Maarten'),(198,'SK','Slovakia'),(199,'SI','Slovenia'),(200,'SB','Solomon Islands'),(201,'SO','Somalia'),(202,'ZA','South Africa'),(203,'GS','South Georgia & South Sandwich Islands'),(204,'KR','South Korea'),(205,'SS','South Sudan'),(206,'ES','Spain'),(207,'LK','Sri Lanka'),(208,'BL','St. Barthélemy'),(209,'SH','St. Helena'),(210,'KN','St. Kitts & Nevis'),(211,'LC','St. Lucia'),(212,'MF','St. Martin'),(213,'PM','St. Pierre & Miquelon'),(214,'VC','St. Vincent & Grenadines'),(215,'SD','Sudan'),(216,'SR','Suriname'),(217,'SJ','Svalbard & Jan Mayen'),(218,'SZ','Swaziland'),(219,'SE','Sweden'),(220,'CH','Switzerland'),(221,'SY','Syria'),(222,'TW','Taiwan'),(223,'TJ','Tajikistan'),(224,'TZ','Tanzania'),(225,'TH','Thailand'),(226,'TL','Timor-Leste'),(227,'TG','Togo'),(228,'TK','Tokelau'),(229,'TO','Tonga'),(230,'TT','Trinidad & Tobago'),(231,'TA','Tristan da Cunha'),(232,'TN','Tunisia'),(233,'TR','Turkey'),(234,'TM','Turkmenistan'),(235,'TC','Turks & Caicos Islands'),(236,'TV','Tuvalu'),(237,'UM','U.S. Outlying Islands'),(238,'VI','U.S. Virgin Islands'),(239,'UG','Uganda'),(240,'UA','Ukraine'),(241,'AE','United Arab Emirates'),(242,'GB','United Kingdom'),(243,'UN','United Nations'),(244,'US','United States'),(245,'UY','Uruguay'),(246,'UZ','Uzbekistan'),(247,'VU','Vanuatu'),(248,'VA','Vatican City'),(249,'VE','Venezuela'),(250,'VN','Vietnam'),(251,'WF','Wallis & Futuna'),(252,'EH','Western Sahara'),(253,'YE','Yemen'),(254,'ZM','Zambia'),(255,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_states`
--

DROP TABLE IF EXISTS `country_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_states_country_id_foreign` (`country_id`),
  CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_states`
--

LOCK TABLES `country_states` WRITE;
/*!40000 ALTER TABLE `country_states` DISABLE KEYS */;
INSERT INTO `country_states` VALUES (1,'US','AL','Alabama',244),(2,'US','AK','Alaska',244),(3,'US','AS','American Samoa',244),(4,'US','AZ','Arizona',244),(5,'US','AR','Arkansas',244),(6,'US','AE','Armed Forces Africa',244),(7,'US','AA','Armed Forces Americas',244),(8,'US','AE','Armed Forces Canada',244),(9,'US','AE','Armed Forces Europe',244),(10,'US','AE','Armed Forces Middle East',244),(11,'US','AP','Armed Forces Pacific',244),(12,'US','CA','California',244),(13,'US','CO','Colorado',244),(14,'US','CT','Connecticut',244),(15,'US','DE','Delaware',244),(16,'US','DC','District of Columbia',244),(17,'US','FM','Federated States Of Micronesia',244),(18,'US','FL','Florida',244),(19,'US','GA','Georgia',244),(20,'US','GU','Guam',244),(21,'US','HI','Hawaii',244),(22,'US','ID','Idaho',244),(23,'US','IL','Illinois',244),(24,'US','IN','Indiana',244),(25,'US','IA','Iowa',244),(26,'US','KS','Kansas',244),(27,'US','KY','Kentucky',244),(28,'US','LA','Louisiana',244),(29,'US','ME','Maine',244),(30,'US','MH','Marshall Islands',244),(31,'US','MD','Maryland',244),(32,'US','MA','Massachusetts',244),(33,'US','MI','Michigan',244),(34,'US','MN','Minnesota',244),(35,'US','MS','Mississippi',244),(36,'US','MO','Missouri',244),(37,'US','MT','Montana',244),(38,'US','NE','Nebraska',244),(39,'US','NV','Nevada',244),(40,'US','NH','New Hampshire',244),(41,'US','NJ','New Jersey',244),(42,'US','NM','New Mexico',244),(43,'US','NY','New York',244),(44,'US','NC','North Carolina',244),(45,'US','ND','North Dakota',244),(46,'US','MP','Northern Mariana Islands',244),(47,'US','OH','Ohio',244),(48,'US','OK','Oklahoma',244),(49,'US','OR','Oregon',244),(50,'US','PW','Palau',244),(51,'US','PA','Pennsylvania',244),(52,'US','PR','Puerto Rico',244),(53,'US','RI','Rhode Island',244),(54,'US','SC','South Carolina',244),(55,'US','SD','South Dakota',244),(56,'US','TN','Tennessee',244),(57,'US','TX','Texas',244),(58,'US','UT','Utah',244),(59,'US','VT','Vermont',244),(60,'US','VI','Virgin Islands',244),(61,'US','VA','Virginia',244),(62,'US','WA','Washington',244),(63,'US','WV','West Virginia',244),(64,'US','WI','Wisconsin',244),(65,'US','WY','Wyoming',244),(66,'CA','AB','Alberta',40),(67,'CA','BC','British Columbia',40),(68,'CA','MB','Manitoba',40),(69,'CA','NL','Newfoundland and Labrador',40),(70,'CA','NB','New Brunswick',40),(71,'CA','NS','Nova Scotia',40),(72,'CA','NT','Northwest Territories',40),(73,'CA','NU','Nunavut',40),(74,'CA','ON','Ontario',40),(75,'CA','PE','Prince Edward Island',40),(76,'CA','QC','Quebec',40),(77,'CA','SK','Saskatchewan',40),(78,'CA','YT','Yukon Territory',40),(79,'DE','NDS','Niedersachsen',88),(80,'DE','BAW','Baden-Württemberg',88),(81,'DE','BAY','Bayern',88),(82,'DE','BER','Berlin',88),(83,'DE','BRG','Brandenburg',88),(84,'DE','BRE','Bremen',88),(85,'DE','HAM','Hamburg',88),(86,'DE','HES','Hessen',88),(87,'DE','MEC','Mecklenburg-Vorpommern',88),(88,'DE','NRW','Nordrhein-Westfalen',88),(89,'DE','RHE','Rheinland-Pfalz',88),(90,'DE','SAR','Saarland',88),(91,'DE','SAS','Sachsen',88),(92,'DE','SAC','Sachsen-Anhalt',88),(93,'DE','SCN','Schleswig-Holstein',88),(94,'DE','THE','Thüringen',88),(95,'AT','WI','Wien',16),(96,'AT','NO','Niederösterreich',16),(97,'AT','OO','Oberösterreich',16),(98,'AT','SB','Salzburg',16),(99,'AT','KN','Kärnten',16),(100,'AT','ST','Steiermark',16),(101,'AT','TI','Tirol',16),(102,'AT','BL','Burgenland',16),(103,'AT','VB','Vorarlberg',16),(104,'CH','AG','Aargau',220),(105,'CH','AI','Appenzell Innerrhoden',220),(106,'CH','AR','Appenzell Ausserrhoden',220),(107,'CH','BE','Bern',220),(108,'CH','BL','Basel-Landschaft',220),(109,'CH','BS','Basel-Stadt',220),(110,'CH','FR','Freiburg',220),(111,'CH','GE','Genf',220),(112,'CH','GL','Glarus',220),(113,'CH','GR','Graubünden',220),(114,'CH','JU','Jura',220),(115,'CH','LU','Luzern',220),(116,'CH','NE','Neuenburg',220),(117,'CH','NW','Nidwalden',220),(118,'CH','OW','Obwalden',220),(119,'CH','SG','St. Gallen',220),(120,'CH','SH','Schaffhausen',220),(121,'CH','SO','Solothurn',220),(122,'CH','SZ','Schwyz',220),(123,'CH','TG','Thurgau',220),(124,'CH','TI','Tessin',220),(125,'CH','UR','Uri',220),(126,'CH','VD','Waadt',220),(127,'CH','VS','Wallis',220),(128,'CH','ZG','Zug',220),(129,'CH','ZH','Zürich',220),(130,'ES','A Coruсa','A Coruña',206),(131,'ES','Alava','Alava',206),(132,'ES','Albacete','Albacete',206),(133,'ES','Alicante','Alicante',206),(134,'ES','Almeria','Almeria',206),(135,'ES','Asturias','Asturias',206),(136,'ES','Avila','Avila',206),(137,'ES','Badajoz','Badajoz',206),(138,'ES','Baleares','Baleares',206),(139,'ES','Barcelona','Barcelona',206),(140,'ES','Burgos','Burgos',206),(141,'ES','Caceres','Caceres',206),(142,'ES','Cadiz','Cadiz',206),(143,'ES','Cantabria','Cantabria',206),(144,'ES','Castellon','Castellon',206),(145,'ES','Ceuta','Ceuta',206),(146,'ES','Ciudad Real','Ciudad Real',206),(147,'ES','Cordoba','Cordoba',206),(148,'ES','Cuenca','Cuenca',206),(149,'ES','Girona','Girona',206),(150,'ES','Granada','Granada',206),(151,'ES','Guadalajara','Guadalajara',206),(152,'ES','Guipuzcoa','Guipuzcoa',206),(153,'ES','Huelva','Huelva',206),(154,'ES','Huesca','Huesca',206),(155,'ES','Jaen','Jaen',206),(156,'ES','La Rioja','La Rioja',206),(157,'ES','Las Palmas','Las Palmas',206),(158,'ES','Leon','Leon',206),(159,'ES','Lleida','Lleida',206),(160,'ES','Lugo','Lugo',206),(161,'ES','Madrid','Madrid',206),(162,'ES','Malaga','Malaga',206),(163,'ES','Melilla','Melilla',206),(164,'ES','Murcia','Murcia',206),(165,'ES','Navarra','Navarra',206),(166,'ES','Ourense','Ourense',206),(167,'ES','Palencia','Palencia',206),(168,'ES','Pontevedra','Pontevedra',206),(169,'ES','Salamanca','Salamanca',206),(170,'ES','Santa Cruz de Tenerife','Santa Cruz de Tenerife',206),(171,'ES','Segovia','Segovia',206),(172,'ES','Sevilla','Sevilla',206),(173,'ES','Soria','Soria',206),(174,'ES','Tarragona','Tarragona',206),(175,'ES','Teruel','Teruel',206),(176,'ES','Toledo','Toledo',206),(177,'ES','Valencia','Valencia',206),(178,'ES','Valladolid','Valladolid',206),(179,'ES','Vizcaya','Vizcaya',206),(180,'ES','Zamora','Zamora',206),(181,'ES','Zaragoza','Zaragoza',206),(182,'FR','1','Ain',81),(183,'FR','2','Aisne',81),(184,'FR','3','Allier',81),(185,'FR','4','Alpes-de-Haute-Provence',81),(186,'FR','5','Hautes-Alpes',81),(187,'FR','6','Alpes-Maritimes',81),(188,'FR','7','Ardèche',81),(189,'FR','8','Ardennes',81),(190,'FR','9','Ariège',81),(191,'FR','10','Aube',81),(192,'FR','11','Aude',81),(193,'FR','12','Aveyron',81),(194,'FR','13','Bouches-du-Rhône',81),(195,'FR','14','Calvados',81),(196,'FR','15','Cantal',81),(197,'FR','16','Charente',81),(198,'FR','17','Charente-Maritime',81),(199,'FR','18','Cher',81),(200,'FR','19','Corrèze',81),(201,'FR','2A','Corse-du-Sud',81),(202,'FR','2B','Haute-Corse',81),(203,'FR','21','Côte-d\'Or',81),(204,'FR','22','Côtes-d\'Armor',81),(205,'FR','23','Creuse',81),(206,'FR','24','Dordogne',81),(207,'FR','25','Doubs',81),(208,'FR','26','Drôme',81),(209,'FR','27','Eure',81),(210,'FR','28','Eure-et-Loir',81),(211,'FR','29','Finistère',81),(212,'FR','30','Gard',81),(213,'FR','31','Haute-Garonne',81),(214,'FR','32','Gers',81),(215,'FR','33','Gironde',81),(216,'FR','34','Hérault',81),(217,'FR','35','Ille-et-Vilaine',81),(218,'FR','36','Indre',81),(219,'FR','37','Indre-et-Loire',81),(220,'FR','38','Isère',81),(221,'FR','39','Jura',81),(222,'FR','40','Landes',81),(223,'FR','41','Loir-et-Cher',81),(224,'FR','42','Loire',81),(225,'FR','43','Haute-Loire',81),(226,'FR','44','Loire-Atlantique',81),(227,'FR','45','Loiret',81),(228,'FR','46','Lot',81),(229,'FR','47','Lot-et-Garonne',81),(230,'FR','48','Lozère',81),(231,'FR','49','Maine-et-Loire',81),(232,'FR','50','Manche',81),(233,'FR','51','Marne',81),(234,'FR','52','Haute-Marne',81),(235,'FR','53','Mayenne',81),(236,'FR','54','Meurthe-et-Moselle',81),(237,'FR','55','Meuse',81),(238,'FR','56','Morbihan',81),(239,'FR','57','Moselle',81),(240,'FR','58','Nièvre',81),(241,'FR','59','Nord',81),(242,'FR','60','Oise',81),(243,'FR','61','Orne',81),(244,'FR','62','Pas-de-Calais',81),(245,'FR','63','Puy-de-Dôme',81),(246,'FR','64','Pyrénées-Atlantiques',81),(247,'FR','65','Hautes-Pyrénées',81),(248,'FR','66','Pyrénées-Orientales',81),(249,'FR','67','Bas-Rhin',81),(250,'FR','68','Haut-Rhin',81),(251,'FR','69','Rhône',81),(252,'FR','70','Haute-Saône',81),(253,'FR','71','Saône-et-Loire',81),(254,'FR','72','Sarthe',81),(255,'FR','73','Savoie',81),(256,'FR','74','Haute-Savoie',81),(257,'FR','75','Paris',81),(258,'FR','76','Seine-Maritime',81),(259,'FR','77','Seine-et-Marne',81),(260,'FR','78','Yvelines',81),(261,'FR','79','Deux-Sèvres',81),(262,'FR','80','Somme',81),(263,'FR','81','Tarn',81),(264,'FR','82','Tarn-et-Garonne',81),(265,'FR','83','Var',81),(266,'FR','84','Vaucluse',81),(267,'FR','85','Vendée',81),(268,'FR','86','Vienne',81),(269,'FR','87','Haute-Vienne',81),(270,'FR','88','Vosges',81),(271,'FR','89','Yonne',81),(272,'FR','90','Territoire-de-Belfort',81),(273,'FR','91','Essonne',81),(274,'FR','92','Hauts-de-Seine',81),(275,'FR','93','Seine-Saint-Denis',81),(276,'FR','94','Val-de-Marne',81),(277,'FR','95','Val-d\'Oise',81),(278,'RO','AB','Alba',185),(279,'RO','AR','Arad',185),(280,'RO','AG','Argeş',185),(281,'RO','BC','Bacău',185),(282,'RO','BH','Bihor',185),(283,'RO','BN','Bistriţa-Năsăud',185),(284,'RO','BT','Botoşani',185),(285,'RO','BV','Braşov',185),(286,'RO','BR','Brăila',185),(287,'RO','B','Bucureşti',185),(288,'RO','BZ','Buzău',185),(289,'RO','CS','Caraş-Severin',185),(290,'RO','CL','Călăraşi',185),(291,'RO','CJ','Cluj',185),(292,'RO','CT','Constanţa',185),(293,'RO','CV','Covasna',185),(294,'RO','DB','Dâmboviţa',185),(295,'RO','DJ','Dolj',185),(296,'RO','GL','Galaţi',185),(297,'RO','GR','Giurgiu',185),(298,'RO','GJ','Gorj',185),(299,'RO','HR','Harghita',185),(300,'RO','HD','Hunedoara',185),(301,'RO','IL','Ialomiţa',185),(302,'RO','IS','Iaşi',185),(303,'RO','IF','Ilfov',185),(304,'RO','MM','Maramureş',185),(305,'RO','MH','Mehedinţi',185),(306,'RO','MS','Mureş',185),(307,'RO','NT','Neamţ',185),(308,'RO','OT','Olt',185),(309,'RO','PH','Prahova',185),(310,'RO','SM','Satu-Mare',185),(311,'RO','SJ','Sălaj',185),(312,'RO','SB','Sibiu',185),(313,'RO','SV','Suceava',185),(314,'RO','TR','Teleorman',185),(315,'RO','TM','Timiş',185),(316,'RO','TL','Tulcea',185),(317,'RO','VS','Vaslui',185),(318,'RO','VL','Vâlcea',185),(319,'RO','VN','Vrancea',185),(320,'FI','Lappi','Lappi',80),(321,'FI','Pohjois-Pohjanmaa','Pohjois-Pohjanmaa',80),(322,'FI','Kainuu','Kainuu',80),(323,'FI','Pohjois-Karjala','Pohjois-Karjala',80),(324,'FI','Pohjois-Savo','Pohjois-Savo',80),(325,'FI','Etelä-Savo','Etelä-Savo',80),(326,'FI','Etelä-Pohjanmaa','Etelä-Pohjanmaa',80),(327,'FI','Pohjanmaa','Pohjanmaa',80),(328,'FI','Pirkanmaa','Pirkanmaa',80),(329,'FI','Satakunta','Satakunta',80),(330,'FI','Keski-Pohjanmaa','Keski-Pohjanmaa',80),(331,'FI','Keski-Suomi','Keski-Suomi',80),(332,'FI','Varsinais-Suomi','Varsinais-Suomi',80),(333,'FI','Etelä-Karjala','Etelä-Karjala',80),(334,'FI','Päijät-Häme','Päijät-Häme',80),(335,'FI','Kanta-Häme','Kanta-Häme',80),(336,'FI','Uusimaa','Uusimaa',80),(337,'FI','Itä-Uusimaa','Itä-Uusimaa',80),(338,'FI','Kymenlaakso','Kymenlaakso',80),(339,'FI','Ahvenanmaa','Ahvenanmaa',80),(340,'EE','EE-37','Harjumaa',74),(341,'EE','EE-39','Hiiumaa',74),(342,'EE','EE-44','Ida-Virumaa',74),(343,'EE','EE-49','Jõgevamaa',74),(344,'EE','EE-51','Järvamaa',74),(345,'EE','EE-57','Läänemaa',74),(346,'EE','EE-59','Lääne-Virumaa',74),(347,'EE','EE-65','Põlvamaa',74),(348,'EE','EE-67','Pärnumaa',74),(349,'EE','EE-70','Raplamaa',74),(350,'EE','EE-74','Saaremaa',74),(351,'EE','EE-78','Tartumaa',74),(352,'EE','EE-82','Valgamaa',74),(353,'EE','EE-84','Viljandimaa',74),(354,'EE','EE-86','Võrumaa',74),(355,'LV','LV-DGV','Daugavpils',125),(356,'LV','LV-JEL','Jelgava',125),(357,'LV','Jēkabpils','Jēkabpils',125),(358,'LV','LV-JUR','Jūrmala',125),(359,'LV','LV-LPX','Liepāja',125),(360,'LV','LV-LE','Liepājas novads',125),(361,'LV','LV-REZ','Rēzekne',125),(362,'LV','LV-RIX','Rīga',125),(363,'LV','LV-RI','Rīgas novads',125),(364,'LV','Valmiera','Valmiera',125),(365,'LV','LV-VEN','Ventspils',125),(366,'LV','Aglonas novads','Aglonas novads',125),(367,'LV','LV-AI','Aizkraukles novads',125),(368,'LV','Aizputes novads','Aizputes novads',125),(369,'LV','Aknīstes novads','Aknīstes novads',125),(370,'LV','Alojas novads','Alojas novads',125),(371,'LV','Alsungas novads','Alsungas novads',125),(372,'LV','LV-AL','Alūksnes novads',125),(373,'LV','Amatas novads','Amatas novads',125),(374,'LV','Apes novads','Apes novads',125),(375,'LV','Auces novads','Auces novads',125),(376,'LV','Babītes novads','Babītes novads',125),(377,'LV','Baldones novads','Baldones novads',125),(378,'LV','Baltinavas novads','Baltinavas novads',125),(379,'LV','LV-BL','Balvu novads',125),(380,'LV','LV-BU','Bauskas novads',125),(381,'LV','Beverīnas novads','Beverīnas novads',125),(382,'LV','Brocēnu novads','Brocēnu novads',125),(383,'LV','Burtnieku novads','Burtnieku novads',125),(384,'LV','Carnikavas novads','Carnikavas novads',125),(385,'LV','Cesvaines novads','Cesvaines novads',125),(386,'LV','Ciblas novads','Ciblas novads',125),(387,'LV','LV-CE','Cēsu novads',125),(388,'LV','Dagdas novads','Dagdas novads',125),(389,'LV','LV-DA','Daugavpils novads',125),(390,'LV','LV-DO','Dobeles novads',125),(391,'LV','Dundagas novads','Dundagas novads',125),(392,'LV','Durbes novads','Durbes novads',125),(393,'LV','Engures novads','Engures novads',125),(394,'LV','Garkalnes novads','Garkalnes novads',125),(395,'LV','Grobiņas novads','Grobiņas novads',125),(396,'LV','LV-GU','Gulbenes novads',125),(397,'LV','Iecavas novads','Iecavas novads',125),(398,'LV','Ikšķiles novads','Ikšķiles novads',125),(399,'LV','Ilūkstes novads','Ilūkstes novads',125),(400,'LV','Inčukalna novads','Inčukalna novads',125),(401,'LV','Jaunjelgavas novads','Jaunjelgavas novads',125),(402,'LV','Jaunpiebalgas novads','Jaunpiebalgas novads',125),(403,'LV','Jaunpils novads','Jaunpils novads',125),(404,'LV','LV-JL','Jelgavas novads',125),(405,'LV','LV-JK','Jēkabpils novads',125),(406,'LV','Kandavas novads','Kandavas novads',125),(407,'LV','Kokneses novads','Kokneses novads',125),(408,'LV','Krimuldas novads','Krimuldas novads',125),(409,'LV','Krustpils novads','Krustpils novads',125),(410,'LV','LV-KR','Krāslavas novads',125),(411,'LV','LV-KU','Kuldīgas novads',125),(412,'LV','Kārsavas novads','Kārsavas novads',125),(413,'LV','Lielvārdes novads','Lielvārdes novads',125),(414,'LV','LV-LM','Limbažu novads',125),(415,'LV','Lubānas novads','Lubānas novads',125),(416,'LV','LV-LU','Ludzas novads',125),(417,'LV','Līgatnes novads','Līgatnes novads',125),(418,'LV','Līvānu novads','Līvānu novads',125),(419,'LV','LV-MA','Madonas novads',125),(420,'LV','Mazsalacas novads','Mazsalacas novads',125),(421,'LV','Mālpils novads','Mālpils novads',125),(422,'LV','Mārupes novads','Mārupes novads',125),(423,'LV','Naukšēnu novads','Naukšēnu novads',125),(424,'LV','Neretas novads','Neretas novads',125),(425,'LV','Nīcas novads','Nīcas novads',125),(426,'LV','LV-OG','Ogres novads',125),(427,'LV','Olaines novads','Olaines novads',125),(428,'LV','Ozolnieku novads','Ozolnieku novads',125),(429,'LV','LV-PR','Preiļu novads',125),(430,'LV','Priekules novads','Priekules novads',125),(431,'LV','Priekuļu novads','Priekuļu novads',125),(432,'LV','Pārgaujas novads','Pārgaujas novads',125),(433,'LV','Pāvilostas novads','Pāvilostas novads',125),(434,'LV','Pļaviņu novads','Pļaviņu novads',125),(435,'LV','Raunas novads','Raunas novads',125),(436,'LV','Riebiņu novads','Riebiņu novads',125),(437,'LV','Rojas novads','Rojas novads',125),(438,'LV','Ropažu novads','Ropažu novads',125),(439,'LV','Rucavas novads','Rucavas novads',125),(440,'LV','Rugāju novads','Rugāju novads',125),(441,'LV','Rundāles novads','Rundāles novads',125),(442,'LV','LV-RE','Rēzeknes novads',125),(443,'LV','Rūjienas novads','Rūjienas novads',125),(444,'LV','Salacgrīvas novads','Salacgrīvas novads',125),(445,'LV','Salas novads','Salas novads',125),(446,'LV','Salaspils novads','Salaspils novads',125),(447,'LV','LV-SA','Saldus novads',125),(448,'LV','Saulkrastu novads','Saulkrastu novads',125),(449,'LV','Siguldas novads','Siguldas novads',125),(450,'LV','Skrundas novads','Skrundas novads',125),(451,'LV','Skrīveru novads','Skrīveru novads',125),(452,'LV','Smiltenes novads','Smiltenes novads',125),(453,'LV','Stopiņu novads','Stopiņu novads',125),(454,'LV','Strenču novads','Strenču novads',125),(455,'LV','Sējas novads','Sējas novads',125),(456,'LV','LV-TA','Talsu novads',125),(457,'LV','LV-TU','Tukuma novads',125),(458,'LV','Tērvetes novads','Tērvetes novads',125),(459,'LV','Vaiņodes novads','Vaiņodes novads',125),(460,'LV','LV-VK','Valkas novads',125),(461,'LV','LV-VM','Valmieras novads',125),(462,'LV','Varakļānu novads','Varakļānu novads',125),(463,'LV','Vecpiebalgas novads','Vecpiebalgas novads',125),(464,'LV','Vecumnieku novads','Vecumnieku novads',125),(465,'LV','LV-VE','Ventspils novads',125),(466,'LV','Viesītes novads','Viesītes novads',125),(467,'LV','Viļakas novads','Viļakas novads',125),(468,'LV','Viļānu novads','Viļānu novads',125),(469,'LV','Vārkavas novads','Vārkavas novads',125),(470,'LV','Zilupes novads','Zilupes novads',125),(471,'LV','Ādažu novads','Ādažu novads',125),(472,'LV','Ērgļu novads','Ērgļu novads',125),(473,'LV','Ķeguma novads','Ķeguma novads',125),(474,'LV','Ķekavas novads','Ķekavas novads',125),(475,'LT','LT-AL','Alytaus Apskritis',131),(476,'LT','LT-KU','Kauno Apskritis',131),(477,'LT','LT-KL','Klaipėdos Apskritis',131),(478,'LT','LT-MR','Marijampolės Apskritis',131),(479,'LT','LT-PN','Panevėžio Apskritis',131),(480,'LT','LT-SA','Šiaulių Apskritis',131),(481,'LT','LT-TA','Tauragės Apskritis',131),(482,'LT','LT-TE','Telšių Apskritis',131),(483,'LT','LT-UT','Utenos Apskritis',131),(484,'LT','LT-VL','Vilniaus Apskritis',131),(485,'BR','AC','Acre',31),(486,'BR','AL','Alagoas',31),(487,'BR','AP','Amapá',31),(488,'BR','AM','Amazonas',31),(489,'BR','BA','Bahia',31),(490,'BR','CE','Ceará',31),(491,'BR','ES','Espírito Santo',31),(492,'BR','GO','Goiás',31),(493,'BR','MA','Maranhão',31),(494,'BR','MT','Mato Grosso',31),(495,'BR','MS','Mato Grosso do Sul',31),(496,'BR','MG','Minas Gerais',31),(497,'BR','PA','Pará',31),(498,'BR','PB','Paraíba',31),(499,'BR','PR','Paraná',31),(500,'BR','PE','Pernambuco',31),(501,'BR','PI','Piauí',31),(502,'BR','RJ','Rio de Janeiro',31),(503,'BR','RN','Rio Grande do Norte',31),(504,'BR','RS','Rio Grande do Sul',31),(505,'BR','RO','Rondônia',31),(506,'BR','RR','Roraima',31),(507,'BR','SC','Santa Catarina',31),(508,'BR','SP','São Paulo',31),(509,'BR','SE','Sergipe',31),(510,'BR','TO','Tocantins',31),(511,'BR','DF','Distrito Federal',31),(512,'HR','HR-01','Zagrebačka županija',59),(513,'HR','HR-02','Krapinsko-zagorska županija',59),(514,'HR','HR-03','Sisačko-moslavačka županija',59),(515,'HR','HR-04','Karlovačka županija',59),(516,'HR','HR-05','Varaždinska županija',59),(517,'HR','HR-06','Koprivničko-križevačka županija',59),(518,'HR','HR-07','Bjelovarsko-bilogorska županija',59),(519,'HR','HR-08','Primorsko-goranska županija',59),(520,'HR','HR-09','Ličko-senjska županija',59),(521,'HR','HR-10','Virovitičko-podravska županija',59),(522,'HR','HR-11','Požeško-slavonska županija',59),(523,'HR','HR-12','Brodsko-posavska županija',59),(524,'HR','HR-13','Zadarska županija',59),(525,'HR','HR-14','Osječko-baranjska županija',59),(526,'HR','HR-15','Šibensko-kninska županija',59),(527,'HR','HR-16','Vukovarsko-srijemska županija',59),(528,'HR','HR-17','Splitsko-dalmatinska županija',59),(529,'HR','HR-18','Istarska županija',59),(530,'HR','HR-19','Dubrovačko-neretvanska županija',59),(531,'HR','HR-20','Međimurska županija',59),(532,'HR','HR-21','Grad Zagreb',59),(533,'IN','AN','Andaman and Nicobar Islands',106),(534,'IN','AP','Andhra Pradesh',106),(535,'IN','AR','Arunachal Pradesh',106),(536,'IN','AS','Assam',106),(537,'IN','BR','Bihar',106),(538,'IN','CH','Chandigarh',106),(539,'IN','CT','Chhattisgarh',106),(540,'IN','DN','Dadra and Nagar Haveli',106),(541,'IN','DD','Daman and Diu',106),(542,'IN','DL','Delhi',106),(543,'IN','GA','Goa',106),(544,'IN','GJ','Gujarat',106),(545,'IN','HR','Haryana',106),(546,'IN','HP','Himachal Pradesh',106),(547,'IN','JK','Jammu and Kashmir',106),(548,'IN','JH','Jharkhand',106),(549,'IN','KA','Karnataka',106),(550,'IN','KL','Kerala',106),(551,'IN','LD','Lakshadweep',106),(552,'IN','MP','Madhya Pradesh',106),(553,'IN','MH','Maharashtra',106),(554,'IN','MN','Manipur',106),(555,'IN','ML','Meghalaya',106),(556,'IN','MZ','Mizoram',106),(557,'IN','NL','Nagaland',106),(558,'IN','OR','Odisha',106),(559,'IN','PY','Puducherry',106),(560,'IN','PB','Punjab',106),(561,'IN','RJ','Rajasthan',106),(562,'IN','SK','Sikkim',106),(563,'IN','TN','Tamil Nadu',106),(564,'IN','TG','Telangana',106),(565,'IN','TR','Tripura',106),(566,'IN','UP','Uttar Pradesh',106),(567,'IN','UT','Uttarakhand',106),(568,'IN','WB','West Bengal',106);
/*!40000 ALTER TABLE `country_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datagrid_saved_filters`
--

DROP TABLE IF EXISTS `datagrid_saved_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datagrid_saved_filters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datagrid_saved_filters`
--

LOCK TABLES `datagrid_saved_filters` WRITE;
/*!40000 ALTER TABLE `datagrid_saved_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `datagrid_saved_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_attachments`
--

DROP TABLE IF EXISTS `email_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_attachments_email_id_foreign` (`email_id`),
  CONSTRAINT `email_attachments_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_attachments`
--

LOCK TABLES `email_attachments` WRITE;
/*!40000 ALTER TABLE `email_attachments` DISABLE KEYS */;
INSERT INTO `email_attachments` VALUES (1,'2.png','emails/3/2.png',24979,'image/png',NULL,3,'2025-10-17 19:01:16','2025-10-17 19:01:16');
/*!40000 ALTER TABLE `email_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_tags`
--

DROP TABLE IF EXISTS `email_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_tags` (
  `tag_id` int unsigned NOT NULL,
  `email_id` int unsigned NOT NULL,
  KEY `email_tags_tag_id_foreign` (`tag_id`),
  KEY `email_tags_email_id_foreign` (`email_id`),
  CONSTRAINT `email_tags_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `email_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_tags`
--

LOCK TABLES `email_tags` WRITE;
/*!40000 ALTER TABLE `email_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_templates_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'Activity created','Activity created: {%activities.title%}','<p style=\"font-size: 16px; color: #5e5e5e;\">You have a new activity, please find the details bellow:</p>\n                                <p><strong style=\"font-size: 16px;\">Details</strong></p>\n                                <table style=\"height: 97px; width: 952px;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Title</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.title%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Type</td>\n                                                <td style=\"width: 770.047px; font-size: 16px;\">{%activities.type%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Date</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.schedule_from%} to&nbsp;{%activities.schedule_to%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px; vertical-align: text-top;\">Participants</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.participants%}</td>\n                                        </tr>\n                                    </tbody>\n                                </table>','2025-10-05 09:18:56','2025-10-05 09:18:56'),(2,'Activity modified','Activity modified: {%activities.title%}','<p style=\"font-size: 16px; color: #5e5e5e;\">You have a new activity modified, please find the details bellow:</p>\n                                <p><strong style=\"font-size: 16px;\">Details</strong></p>\n                                <table style=\"height: 97px; width: 952px;\">\n                                    <tbody>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Title</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.title%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Type</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.type%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px;\">Date</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.schedule_from%} to&nbsp;{%activities.schedule_to%}</td>\n                                        </tr>\n                                        <tr>\n                                            <td style=\"width: 116.953px; color: #546e7a; font-size: 16px; vertical-align: text-top;\">Participants</td>\n                                            <td style=\"width: 770.047px; font-size: 16px;\">{%activities.participants%}</td>\n                                        </tr>\n                                    </tbody>\n                                </table>','2025-10-05 09:18:56','2025-10-05 09:18:56');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `folders` json DEFAULT NULL,
  `from` json DEFAULT NULL,
  `sender` json DEFAULT NULL,
  `reply_to` json DEFAULT NULL,
  `cc` json DEFAULT NULL,
  `bcc` json DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_ids` json DEFAULT NULL,
  `person_id` int unsigned DEFAULT NULL,
  `lead_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_message_id_unique` (`message_id`),
  UNIQUE KEY `emails_unique_id_unique` (`unique_id`),
  KEY `emails_person_id_foreign` (`person_id`),
  KEY `emails_lead_id_foreign` (`lead_id`),
  KEY `emails_parent_id_foreign` (`parent_id`),
  CONSTRAINT `emails_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE SET NULL,
  CONSTRAINT `emails_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `emails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `emails_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'TEST MAIL','web','admin',NULL,'<p>TESTING</p>',0,'[\"sent\"]','\"tech@agenticone.in\"',NULL,'[\"saneax@gmail.com\"]',NULL,NULL,'1759947027@agenticone.in','1759947027@agenticone.in','[\"1759947027@agenticone.in\"]',NULL,NULL,'2025-10-08 23:40:27','2025-10-08 23:40:33',NULL),(2,'Quotation For Meghalaya 3N/4D','web','admin',NULL,'Hi Sir,\r\n\r\nPlease detail quotation as below.\r\n\r\nIf you are opting for Air cost will be 15000 @3750 per head . Via train it will be 10000 @2500 per head.\r\n\r\nFor 4 PAX cost will be 40,000\r\nPlease pay 50% by 18th of current month for booking initiation.\r\nThanks ,',0,'[\"sent\"]','\"tech@agenticone.in\"',NULL,'[\"rakesh@ymail.in\"]',NULL,NULL,'1760603450@agenticone.in','1760603450@agenticone.in','[\"1760603450@agenticone.in\"]',NULL,NULL,'2025-10-16 14:00:50','2025-10-16 14:00:56',NULL),(3,'Meghala3N/4d','web','admin',NULL,'please find the quote',0,'[\"sent\"]','\"tech@agenticone.in\"',NULL,'[\"susmini2019@gmail.com\"]',NULL,NULL,'1760707876@agenticone.in','1760707876@agenticone.in','[\"1760707876@agenticone.in\"]',NULL,NULL,'2025-10-17 19:01:16','2025-10-17 19:01:22',NULL);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin-group','administrators','2025-10-05 09:33:09','2025-10-05 09:33:09'),(2,'sales-group-head','sales group','2025-10-05 10:54:27','2025-10-05 10:54:27'),(5,'Sales-Domestic','Handling Of Domestic Tours','2025-10-11 18:47:35','2025-10-11 18:47:35'),(6,'Sales-Team-International','Manages Outbound Travel Packages','2025-10-11 18:48:25','2025-10-11 18:48:25'),(7,'Seven Sisters','North-East Packages','2025-10-17 19:28:12','2025-10-17 19:28:12');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_batches`
--

DROP TABLE IF EXISTS `import_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_batches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `data` json NOT NULL,
  `summary` json DEFAULT NULL,
  `import_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `import_batches_import_id_foreign` (`import_id`),
  CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_batches`
--

LOCK TABLES `import_batches` WRITE;
/*!40000 ALTER TABLE `import_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imports` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation_strategy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_errors` int NOT NULL DEFAULT '0',
  `processed_rows_count` int NOT NULL DEFAULT '0',
  `invalid_rows_count` int NOT NULL DEFAULT '0',
  `errors_count` int NOT NULL DEFAULT '0',
  `errors` json DEFAULT NULL,
  `field_separator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` json DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
INSERT INTO `imports` VALUES (1,'validated',1,'products','append','stop-on-errors',10,0,0,2,'[\"Required columns not found: sku.\", \"Invalid column names: \\\"SKU\\\", \\\"Name\\\", \\\"Price\\\", \\\"In Stock\\\", \\\"Allocated\\\", \\\"On Hand\\\", \\\"Tag Name\\\", \\\"Description\\\".\"]',',','imports/1759750744-AgenticONE_Products_JEE_NEET_PIM.csv',NULL,NULL,NULL,NULL,'2025-10-06 17:09:04','2025-10-06 17:09:08');
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_activities`
--

DROP TABLE IF EXISTS `lead_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_activities` (
  `activity_id` int unsigned NOT NULL,
  `lead_id` int unsigned NOT NULL,
  KEY `lead_activities_activity_id_foreign` (`activity_id`),
  KEY `lead_activities_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_activities_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_activities`
--

LOCK TABLES `lead_activities` WRITE;
/*!40000 ALTER TABLE `lead_activities` DISABLE KEYS */;
INSERT INTO `lead_activities` VALUES (518,18),(519,18),(520,18),(521,18),(522,18),(523,18),(524,18),(525,18),(526,18),(527,18);
/*!40000 ALTER TABLE `lead_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_pipeline_stages`
--

DROP TABLE IF EXISTS `lead_pipeline_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_pipeline_stages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `lead_pipeline_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_pipeline_stages_code_lead_pipeline_id_unique` (`code`,`lead_pipeline_id`),
  UNIQUE KEY `lead_pipeline_stages_name_lead_pipeline_id_unique` (`name`,`lead_pipeline_id`),
  KEY `lead_pipeline_stages_lead_pipeline_id_foreign` (`lead_pipeline_id`),
  CONSTRAINT `lead_pipeline_stages_lead_pipeline_id_foreign` FOREIGN KEY (`lead_pipeline_id`) REFERENCES `lead_pipelines` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_pipeline_stages`
--

LOCK TABLES `lead_pipeline_stages` WRITE;
/*!40000 ALTER TABLE `lead_pipeline_stages` DISABLE KEYS */;
INSERT INTO `lead_pipeline_stages` VALUES (7,'new','New',10,1,2),(8,'contacted','Contacted',25,2,2),(9,'qualified','Qualified',40,3,2),(10,'demo-trial','Demo / Trial',60,4,2),(11,'proposal-fee-discussion','Proposal / Fee Discussion',80,5,2),(12,'won','Won',100,6,2),(13,'lost','Lost',0,7,2),(44,'new','New',100,1,8),(45,'inprogress','inprogress',100,2,8),(46,'won','Won',100,3,8),(47,'lost','Lost',0,4,8);
/*!40000 ALTER TABLE `lead_pipeline_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_pipelines`
--

DROP TABLE IF EXISTS `lead_pipelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_pipelines` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `rotten_days` int NOT NULL DEFAULT '30',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lead_pipelines_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_pipelines`
--

LOCK TABLES `lead_pipelines` WRITE;
/*!40000 ALTER TABLE `lead_pipelines` DISABLE KEYS */;
INSERT INTO `lead_pipelines` VALUES (2,'JEE Admission Pipeline',0,34,'2025-10-06 13:55:14','2025-10-24 17:12:47'),(8,'Maruti Car service',1,30,'2025-10-13 20:33:41','2025-10-24 17:12:47');
/*!40000 ALTER TABLE `lead_pipelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_products`
--

DROP TABLE IF EXISTS `lead_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT NULL,
  `lead_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_products_lead_id_foreign` (`lead_id`),
  KEY `lead_products_product_id_foreign` (`product_id`),
  CONSTRAINT `lead_products_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_products`
--

LOCK TABLES `lead_products` WRITE;
/*!40000 ALTER TABLE `lead_products` DISABLE KEYS */;
INSERT INTO `lead_products` VALUES (9,1,50000.0000,50000.0000,18,27,'2025-10-24 17:11:31','2025-10-24 17:11:31');
/*!40000 ALTER TABLE `lead_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_quotes`
--

DROP TABLE IF EXISTS `lead_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_quotes` (
  `quote_id` int unsigned NOT NULL,
  `lead_id` int unsigned NOT NULL,
  KEY `lead_quotes_quote_id_foreign` (`quote_id`),
  KEY `lead_quotes_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_quotes_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_quotes_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_quotes`
--

LOCK TABLES `lead_quotes` WRITE;
/*!40000 ALTER TABLE `lead_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_sources`
--

DROP TABLE IF EXISTS `lead_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_sources` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_sources`
--

LOCK TABLES `lead_sources` WRITE;
/*!40000 ALTER TABLE `lead_sources` DISABLE KEYS */;
INSERT INTO `lead_sources` VALUES (1,'Email','2025-10-05 09:18:56','2025-10-05 09:18:56'),(2,'Web','2025-10-05 09:18:56','2025-10-05 09:18:56'),(3,'Web Form','2025-10-05 09:18:56','2025-10-05 09:18:56'),(4,'Phone','2025-10-05 09:18:56','2025-10-05 09:18:56'),(5,'Direct','2025-10-05 09:18:56','2025-10-05 09:18:56'),(6,'WhatsApp','2025-10-06 16:48:50','2025-10-06 16:48:50'),(7,'Other','2025-10-10 16:08:10','2025-10-10 16:08:10');
/*!40000 ALTER TABLE `lead_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_stages`
--

DROP TABLE IF EXISTS `lead_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_stages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_stages`
--

LOCK TABLES `lead_stages` WRITE;
/*!40000 ALTER TABLE `lead_stages` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_tags`
--

DROP TABLE IF EXISTS `lead_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_tags` (
  `tag_id` int unsigned NOT NULL,
  `lead_id` int unsigned NOT NULL,
  KEY `lead_tags_tag_id_foreign` (`tag_id`),
  KEY `lead_tags_lead_id_foreign` (`lead_id`),
  CONSTRAINT `lead_tags_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lead_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_tags`
--

LOCK TABLES `lead_tags` WRITE;
/*!40000 ALTER TABLE `lead_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_types`
--

DROP TABLE IF EXISTS `lead_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lead_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_types`
--

LOCK TABLES `lead_types` WRITE;
/*!40000 ALTER TABLE `lead_types` DISABLE KEYS */;
INSERT INTO `lead_types` VALUES (1,'New Business','2025-10-05 09:18:56','2025-10-05 09:18:56'),(2,'Existing Business','2025-10-05 09:18:56','2025-10-05 09:18:56'),(3,'Start UP Business','2025-10-10 16:11:18','2025-10-10 16:11:18'),(4,'IT Business','2025-10-10 16:11:56','2025-10-10 16:11:56');
/*!40000 ALTER TABLE `lead_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `lead_value` decimal(12,4) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lost_reason` text COLLATE utf8mb4_unicode_ci,
  `closed_at` datetime DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `person_id` int unsigned DEFAULT NULL,
  `lead_source_id` int unsigned DEFAULT NULL,
  `lead_type_id` int unsigned DEFAULT NULL,
  `lead_pipeline_id` int unsigned DEFAULT NULL,
  `lead_pipeline_stage_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expected_close_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leads_lead_pipeline_id_foreign` (`lead_pipeline_id`),
  KEY `leads_lead_pipeline_stage_id_foreign` (`lead_pipeline_stage_id`),
  KEY `leads_user_id_foreign` (`user_id`),
  KEY `leads_person_id_foreign` (`person_id`),
  KEY `leads_lead_source_id_foreign` (`lead_source_id`),
  KEY `leads_lead_type_id_foreign` (`lead_type_id`),
  CONSTRAINT `leads_lead_pipeline_id_foreign` FOREIGN KEY (`lead_pipeline_id`) REFERENCES `lead_pipelines` (`id`) ON DELETE CASCADE,
  CONSTRAINT `leads_lead_pipeline_stage_id_foreign` FOREIGN KEY (`lead_pipeline_stage_id`) REFERENCES `lead_pipeline_stages` (`id`) ON DELETE SET NULL,
  CONSTRAINT `leads_lead_source_id_foreign` FOREIGN KEY (`lead_source_id`) REFERENCES `lead_sources` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `leads_lead_type_id_foreign` FOREIGN KEY (`lead_type_id`) REFERENCES `lead_types` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `leads_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `leads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (18,'Swift LED Headlight Replacement – Fast Delivery (LHS)','Customer requests urgent replacement of left-side LED headlight for a Maruti Swift. Emphasizes need for fast delivery and OEM quality. Seeks installation support as well.',5000.0000,1,NULL,NULL,20,15,1,1,8,44,'2025-10-24 17:11:31','2025-10-24 17:11:31','2025-10-28');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketing_campaigns`
--

DROP TABLE IF EXISTS `marketing_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_campaigns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spooling` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marketing_template_id` int unsigned DEFAULT NULL,
  `marketing_event_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`),
  CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `email_templates` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing_campaigns`
--

LOCK TABLES `marketing_campaigns` WRITE;
/*!40000 ALTER TABLE `marketing_campaigns` DISABLE KEYS */;
INSERT INTO `marketing_campaigns` VALUES (1,'Know More On JEE','Last min JEE',1,'','',NULL,1,1,'2025-10-06 17:07:46','2025-10-06 17:07:46'),(2,'Holy Places Yatra','Exploring Gangotri',1,'','',NULL,1,2,'2025-10-10 16:25:09','2025-10-10 16:25:09');
/*!40000 ALTER TABLE `marketing_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketing_events`
--

DROP TABLE IF EXISTS `marketing_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing_events`
--

LOCK TABLES `marketing_events` WRITE;
/*!40000 ALTER TABLE `marketing_events` DISABLE KEYS */;
INSERT INTO `marketing_events` VALUES (1,'JEE Hybrid Event','Hybrid Event','2025-10-30','2025-10-06 17:06:01','2025-10-06 17:06:01'),(2,'Gangotri Yatra','Zoom Call with all PAX heading for Zoom Call with all PAX heading for','2025-10-19','2025-10-10 16:23:12','2025-10-10 16:23:12');
/*!40000 ALTER TABLE `marketing_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_08_19_000000_create_failed_jobs_table',1),(2,'2019_12_14_000001_create_personal_access_tokens_table',1),(3,'2021_03_12_060658_create_core_config_table',1),(4,'2021_03_12_074578_create_groups_table',1),(5,'2021_03_12_074597_create_roles_table',1),(6,'2021_03_12_074857_create_users_table',1),(7,'2021_03_12_074867_create_user_groups_table',1),(8,'2021_03_12_074957_create_user_password_resets_table',1),(9,'2021_04_02_080709_create_attributes_table',1),(10,'2021_04_02_080837_create_attribute_options_table',1),(11,'2021_04_06_122751_create_attribute_values_table',1),(12,'2021_04_09_051326_create_organizations_table',1),(13,'2021_04_09_065617_create_persons_table',1),(14,'2021_04_09_065617_create_products_table',1),(15,'2021_04_12_173232_create_countries_table',1),(16,'2021_04_12_173344_create_country_states_table',1),(17,'2021_04_21_172825_create_lead_sources_table',1),(18,'2021_04_21_172847_create_lead_types_table',1),(19,'2021_04_22_153258_create_lead_stages_table',1),(20,'2021_04_22_155706_create_lead_pipelines_table',1),(21,'2021_04_22_155838_create_lead_pipeline_stages_table',1),(22,'2021_04_22_164215_create_leads_table',1),(23,'2021_04_22_171805_create_lead_products_table',1),(24,'2021_05_12_150329_create_activities_table',1),(25,'2021_05_12_150329_create_lead_activities_table',1),(26,'2021_05_15_151855_create_activity_files_table',1),(27,'2021_05_20_141230_create_tags_table',1),(28,'2021_05_20_141240_create_lead_tags_table',1),(29,'2021_05_24_075618_create_emails_table',1),(30,'2021_05_25_072700_create_email_attachments_table',1),(31,'2021_06_07_162808_add_lead_view_permission_column_in_users_table',1),(32,'2021_07_01_230345_create_quotes_table',1),(33,'2021_07_01_231317_create_quote_items_table',1),(34,'2021_07_02_201822_create_lead_quotes_table',1),(35,'2021_07_28_142453_create_activity_participants_table',1),(36,'2021_08_26_133538_create_workflows_table',1),(37,'2021_09_03_172713_create_email_templates_table',1),(38,'2021_09_22_194103_add_unique_index_to_name_in_organizations_table',1),(39,'2021_09_22_194622_add_unique_index_to_name_in_groups_table',1),(40,'2021_09_23_221138_add_column_expected_close_date_in_leads_table',1),(41,'2021_09_30_135857_add_column_rotten_days_in_lead_pipelines_table',1),(42,'2021_09_30_154222_alter_lead_pipeline_stages_table',1),(43,'2021_09_30_161722_alter_leads_table',1),(44,'2021_09_30_183825_change_user_id_to_nullable_in_leads_table',1),(45,'2021_10_02_170105_insert_expected_closed_date_column_in_attributes_table',1),(46,'2021_11_11_180804_change_lead_pipeline_stage_id_constraint_in_leads_table',1),(47,'2021_11_12_171510_add_image_column_in_users_table',1),(48,'2021_11_17_190943_add_location_column_in_activities_table',1),(49,'2021_12_14_213049_create_web_forms_table',1),(50,'2021_12_14_214923_create_web_form_attributes_table',1),(51,'2024_01_11_154640_create_imports_table',1),(52,'2024_01_11_154741_create_import_batches_table',1),(53,'2024_05_10_152848_create_saved_filters_table',1),(54,'2024_06_21_160707_create_warehouses_table',1),(55,'2024_06_21_160735_create_warehouse_locations_table',1),(56,'2024_06_24_174241_insert_warehouse_attributes_in_attributes_table',1),(57,'2024_06_28_154009_create_product_inventories_table',1),(58,'2024_07_24_150821_create_webhooks_table',1),(59,'2024_07_31_092951_add_job_title_in_persons_table',1),(60,'2024_07_31_093603_add_organization_sales_owner_attribute_in_attributes_table',1),(61,'2024_07_31_093605_add_person_job_title_attribute_in_attributes_table',1),(62,'2024_07_31_093605_add_person_sales_owner_attribute_in_attributes_table',1),(63,'2024_08_06_145943_create_person_tags_table',1),(64,'2024_08_06_161212_create_person_activities_table',1),(65,'2024_08_10_100329_create_warehouse_activities_table',1),(66,'2024_08_10_100340_create_warehouse_tags_table',1),(67,'2024_08_10_150329_create_product_activities_table',1),(68,'2024_08_10_150340_create_product_tags_table',1),(69,'2024_08_14_102116_add_user_id_column_in_persons_table',1),(70,'2024_08_14_102136_add_user_id_column_in_organizations_table',1),(71,'2024_08_21_153011_add_leads_stage_and_pipeline_attributes',1),(72,'2024_08_27_091619_create_email_tags_table',1),(73,'2024_09_06_065808_alter_product_inventories_table',1),(74,'2024_09_09_094040_create_job_batches_table',1),(75,'2024_09_09_094042_create_jobs_table',1),(76,'2024_09_09_112201_add_unique_id_to_person_table',1),(77,'2024_10_29_044744_create_marketing_events_table',1),(78,'2024_11_04_122500_create_marketing_campaigns_table',1),(79,'2024_11_29_120302_modify_foreign_keys_in_leads_table',1),(80,'2025_01_17_151632_alter_activities_table',1),(81,'2025_01_29_133500_update_text_column_type_in_core_config_table',1),(82,'2025_03_19_132236_update_organization_id_column_in_persons_table',1),(83,'2025_07_01_133612_alter_lead_pipelines_table',1),(84,'2025_07_02_191710_alter_attribute_values_table',1),(85,'2025_07_09_133553_alter_email_templates_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `organizations_name_unique` (`name`),
  KEY `organizations_user_id_foreign` (`user_id`),
  CONSTRAINT `organizations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_activities`
--

DROP TABLE IF EXISTS `person_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_activities` (
  `activity_id` int unsigned NOT NULL,
  `person_id` int unsigned NOT NULL,
  KEY `person_activities_activity_id_foreign` (`activity_id`),
  KEY `person_activities_person_id_foreign` (`person_id`),
  CONSTRAINT `person_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `person_activities_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_activities`
--

LOCK TABLES `person_activities` WRITE;
/*!40000 ALTER TABLE `person_activities` DISABLE KEYS */;
INSERT INTO `person_activities` VALUES (30,2),(31,2),(32,2),(33,2),(407,14),(408,14),(409,14),(410,14),(411,14),(514,15),(515,15),(516,15),(517,15);
/*!40000 ALTER TABLE `person_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_tags`
--

DROP TABLE IF EXISTS `person_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_tags` (
  `tag_id` int unsigned NOT NULL,
  `person_id` int unsigned NOT NULL,
  KEY `person_tags_tag_id_foreign` (`tag_id`),
  KEY `person_tags_person_id_foreign` (`person_id`),
  CONSTRAINT `person_tags_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `person_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_tags`
--

LOCK TABLES `person_tags` WRITE;
/*!40000 ALTER TABLE `person_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` json NOT NULL,
  `contact_numbers` json DEFAULT NULL,
  `organization_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persons_unique_id_unique` (`unique_id`),
  KEY `persons_user_id_foreign` (`user_id`),
  KEY `persons_organization_id_foreign` (`organization_id`),
  CONSTRAINT `persons_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`) ON DELETE SET NULL,
  CONSTRAINT `persons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (2,'ADG','[{\"label\": \"work\", \"value\": \"abcd@xyz.com\"}]','[{\"label\": \"work\", \"value\": \"\"}]',NULL,'2025-10-06 16:46:00','2025-10-06 16:46:00',NULL,NULL,'abcd@xyz.com|'),(14,'Rohit Bal','[{\"label\": \"work\", \"value\": \"rohit.bal@abcd.com\"}]','[{\"label\": \"work\", \"value\": \"99999999\"}]',NULL,'2025-10-24 11:37:00','2025-10-24 11:37:00','Sales Head',NULL,'rohit.bal@abcd.com|99999999'),(15,'Vina Kapur','[{\"label\": \"work\", \"value\": \"vina@abcd.com\"}]','[{\"label\": \"work\", \"value\": \"8888888\"}]',NULL,'2025-10-24 17:11:31','2025-10-24 17:11:31',NULL,NULL,'vina@abcd.com|8888888');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_activities`
--

DROP TABLE IF EXISTS `product_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_activities` (
  `activity_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  KEY `product_activities_activity_id_foreign` (`activity_id`),
  KEY `product_activities_product_id_foreign` (`product_id`),
  CONSTRAINT `product_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_activities_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_activities`
--

LOCK TABLES `product_activities` WRITE;
/*!40000 ALTER TABLE `product_activities` DISABLE KEYS */;
INSERT INTO `product_activities` VALUES (20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,4),(75,4),(76,4),(77,4),(78,4),(79,4),(80,4),(81,4),(82,4),(83,4),(84,5),(85,5),(86,5),(87,5),(88,5),(89,5),(90,5),(91,5),(92,5),(93,5),(94,6),(95,6),(96,6),(97,6),(98,6),(99,6),(100,6),(101,6),(102,6),(103,6),(219,6),(412,17),(413,17),(414,17),(415,17),(416,17),(417,17),(418,17),(419,18),(420,18),(421,18),(422,18),(423,18),(424,18),(425,18),(426,19),(427,19),(428,19),(429,19),(430,19),(431,19),(432,19),(433,20),(434,20),(435,20),(436,20),(437,20),(438,20),(439,20),(440,21),(441,21),(442,21),(443,21),(444,21),(445,21),(446,21),(447,22),(448,22),(449,22),(450,22),(451,22),(452,22),(453,22),(454,23),(455,23),(456,23),(457,23),(458,23),(459,23),(460,23),(461,24),(462,24),(463,24),(464,24),(465,24),(466,24),(467,24),(468,25),(469,25),(470,25),(471,25),(472,25),(473,25),(474,25),(475,26),(476,26),(477,26),(478,26),(479,26),(480,26),(481,26),(482,27),(483,27),(484,27),(485,27),(486,27),(487,27),(488,28),(489,28),(490,28),(491,28),(492,28),(493,28),(494,29),(495,29),(496,29),(497,29),(498,29),(499,29),(500,29),(501,30),(502,30),(503,30),(504,30),(505,30),(506,30),(507,31),(508,31),(509,31),(510,31),(511,31),(512,31),(513,31);
/*!40000 ALTER TABLE `product_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventories`
--

DROP TABLE IF EXISTS `product_inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_inventories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `in_stock` int NOT NULL DEFAULT '0',
  `allocated` int NOT NULL DEFAULT '0',
  `product_id` int unsigned NOT NULL,
  `warehouse_id` int unsigned DEFAULT NULL,
  `warehouse_location_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_inventories_product_id_foreign` (`product_id`),
  KEY `product_inventories_warehouse_id_foreign` (`warehouse_id`),
  KEY `product_inventories_warehouse_location_id_foreign` (`warehouse_location_id`),
  CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_inventories_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_inventories_warehouse_location_id_foreign` FOREIGN KEY (`warehouse_location_id`) REFERENCES `warehouse_locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventories`
--

LOCK TABLES `product_inventories` WRITE;
/*!40000 ALTER TABLE `product_inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `tag_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  KEY `product_tags_tag_id_foreign` (`tag_id`),
  KEY `product_tags_product_id_foreign` (`product_id`),
  CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(12,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sku_unique` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'JEE-FT-2025','JEE Full Year Program 2025','Complete 1-year preparation with live + recorded lectures, test series, and mentoring',1000,85000.0000,'2025-10-06 13:12:27','2025-10-06 13:12:27'),(2,'JEE-CR-2025','JEE Crash Course 2025','JEE Crash Course 2025',150,25000.0000,'2025-10-06 17:12:23','2025-10-06 17:12:23'),(3,'JEE-TST-2025','JEE Test Series 2025','20 full-length online mock tests with analytics and ranking',500,12000.0000,'2025-10-06 18:06:41','2025-10-06 18:06:41'),(4,'NEET-FT-2025','NEET Full Year Program 2025','Comprehensive NEET preparation course with concept videos, live mentoring & tests',100,75000.0000,'2025-10-06 18:11:04','2025-10-06 18:11:04'),(5,'PIM-ALL-01','All Exams Personalized Improvement Suite','Unified PIM access for JEE + NEET students with dynamic learning paths',100,30000.0000,'2025-10-06 18:12:30','2025-10-06 18:12:30'),(6,'NEET-TST-2025','NEET Test Series 2025','Online mock tests + detailed solutions',500,10000.0000,'2025-10-06 18:13:47','2025-10-06 18:13:47'),(17,'PC-RT-1756514-82-V-001','Maruti Alto','Maruti Alto: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating V',1,10000.0000,'2025-10-24 11:44:33','2025-10-24 11:44:33'),(18,'PC-RT-1856515-88-V-002','Maruti Swift','For Maruti Swift: Passenger Car Radial tyre, Size 185/65R15, Load Index 88, Speed Rating V',1,12000.0000,'2025-10-24 11:45:17','2025-10-24 11:45:17'),(19,'PC-RT-1956515-91-H-003','Maruti Baleno','For Maruti Baleno: Passenger Car Radial tyre, Size 195/65R15, Load Index 91, Speed Rating H',1,15000.0000,'2025-10-24 11:46:00','2025-10-24 11:46:00'),(20,'PC-RT-2055516-91-H-004','Maruti Dzire','For Maruti Dzire: Passenger Car Radial tyre, Size 205/55R16, Load Index 91, Speed Rating H',1,18000.0000,'2025-10-24 11:46:41','2025-10-24 11:46:41'),(21,'PC-RT-1756514-82-T-005','Maruti Wagon R','For Maruti Wagon R: Passenger Car Radial tyre, Size 175/65R14, Load Index 82, Speed Rating T',1,20000.0000,'2025-10-24 11:48:10','2025-10-24 11:48:10'),(22,'HL-PC-SWIFT-LHS-LED-001','Maruti Swift','Headlight (HL), Passenger Car (PC), Maruti Swift, Left Hand Side (LHS), LED type, SKU 001',1,5000.0000,'2025-10-24 15:24:51','2025-10-24 15:24:51'),(23,'HL-PC-DZIRE-RHS-HAL-002','Maruti Dzire','Headlight (HL), Passenger Car (PC), Maruti Dzire, Right Hand Side (RHS), Halogen (HAL) type, SKU 002',2,20000.0000,'2025-10-24 15:26:16','2025-10-24 15:26:16'),(24,'HL-PC-WAGONR-LHS-HAL-003','Maruti Wagon R','Headlight (HL), Passenger Car (PC), Maruti Wagon R, Left Hand Side (LHS), Halogen (HAL) type, SKU 003',2,16000.0000,'2025-10-24 15:27:21','2025-10-24 15:27:21'),(25,'HL-PC-ALTO-RHS-HAL-004','Maruti Alto','Headlight (HL), Passenger Car (PC), Maruti Alto, Right Hand Side (RHS), Halogen (HAL) type, SKU 004',2,10000.0000,'2025-10-24 15:28:14','2025-10-24 15:28:14'),(26,'HL-PC-BALENO-LHS-LED-005','Maruti Baleno','Headlight (HL), Passenger Car (PC), Maruti Baleno, Left Hand Side (LHS), LED type, SKU 005',2,25000.0000,'2025-10-24 15:30:20','2025-10-24 15:30:20'),(27,'PA-MRLT-ARW-SOL-001','Maruti Alto','Paint (PA), Maruti Alto (MRLT), Arctic White (ARW), Solid paint (SOL), SKU 001',1,50000.0000,'2025-10-24 15:48:57','2025-10-24 15:48:57'),(28,'PA-MRSW-SRM-MET-002','Maruti Swift','Paint (PA), Maruti Swift (MRSW), Sizzling Red Metallic (SRM), Metallic paint (MET), SKU 002',1,50000.0000,'2025-10-24 15:50:20','2025-10-24 15:50:20'),(29,'PA-MRBL-PSW-PER-003','Maruti Baleno','Paint (PA), Maruti Baleno (MRBL), Pearl Snow White (PSW), Pearl paint (PER), SKU 003',1,40000.0000,'2025-10-24 15:51:20','2025-10-24 15:51:20'),(30,'PA-MRDZ-OPR-SOL-004','Maruti Dzire','Paint (PA), Maruti Dzire (MRDZ), Opulent Red (OPR), Solid paint (SOL), SKU 004',1,40000.0000,'2025-10-24 15:52:02','2025-10-24 15:52:02'),(31,'PA-MRWR-LTB-MET-005','Maruti Wagon R','Paint (PA), Maruti Wagon R (MRWR), Luster Blue (LTB), Metallic paint (MET), SKU 005',1,50000.0000,'2025-10-24 15:54:06','2025-10-24 15:54:06');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_items`
--

DROP TABLE IF EXISTS `quote_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `product_id` int unsigned NOT NULL,
  `quote_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_items_quote_id_foreign` (`quote_id`),
  CONSTRAINT `quote_items_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_items`
--

LOCK TABLES `quote_items` WRITE;
/*!40000 ALTER TABLE `quote_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` json DEFAULT NULL,
  `shipping_address` json DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT NULL,
  `tax_amount` decimal(12,4) DEFAULT NULL,
  `adjustment_amount` decimal(12,4) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `person_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotes_person_id_foreign` (`person_id`),
  KEY `quotes_user_id_foreign` (`user_id`),
  CONSTRAINT `quotes_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `quotes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','Administrator Role','all',NULL,NULL,NULL),(2,'admin-role','admin roles','custom','[\"dashboard\", \"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"leads.delete\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"quotes.delete\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"activities\", \"activities.create\", \"activities.edit\", \"activities.delete\", \"contacts\", \"contacts.persons\", \"contacts.persons.create\", \"contacts.persons.edit\", \"contacts.persons.delete\", \"contacts.persons.view\", \"contacts.organizations\", \"contacts.organizations.create\", \"contacts.organizations.edit\", \"contacts.organizations.delete\", \"products\", \"products.create\", \"products.edit\", \"products.delete\", \"products.view\", \"settings\", \"settings.user\", \"settings.user.groups\", \"settings.user.groups.create\", \"settings.user.groups.edit\", \"settings.user.groups.delete\", \"settings.user.roles\", \"settings.user.roles.create\", \"settings.user.roles.edit\", \"settings.user.roles.delete\", \"settings.user.users\", \"settings.user.users.create\", \"settings.user.users.edit\", \"settings.user.users.delete\", \"settings.lead\", \"settings.lead.pipelines\", \"settings.lead.pipelines.create\", \"settings.lead.pipelines.edit\", \"settings.lead.pipelines.delete\", \"settings.lead.sources\", \"settings.lead.sources.create\", \"settings.lead.sources.edit\", \"settings.lead.sources.delete\", \"settings.lead.types\", \"settings.lead.types.create\", \"settings.lead.types.edit\", \"settings.lead.types.delete\", \"settings.automation\", \"settings.automation.attributes\", \"settings.automation.attributes.create\", \"settings.automation.attributes.edit\", \"settings.automation.attributes.delete\", \"settings.automation.webhooks\", \"settings.automation.webhooks.create\", \"settings.automation.webhooks.edit\", \"settings.automation.webhooks.delete\", \"settings.automation.workflows\", \"settings.automation.workflows.create\", \"settings.automation.workflows.edit\", \"settings.automation.workflows.delete\", \"settings.automation.events\", \"settings.automation.events.create\", \"settings.automation.events.edit\", \"settings.automation.events.delete\", \"settings.automation.campaigns\", \"settings.automation.campaigns.create\", \"settings.automation.campaigns.edit\", \"settings.automation.campaigns.delete\", \"settings.automation.email_templates\", \"settings.automation.email_templates.create\", \"settings.automation.email_templates.edit\", \"settings.automation.email_templates.delete\", \"settings.other_settings\", \"settings.other_settings.web_forms\", \"settings.other_settings.web_forms.view\", \"settings.other_settings.web_forms.create\", \"settings.other_settings.web_forms.edit\", \"settings.other_settings.web_forms.delete\", \"settings.other_settings.tags\", \"settings.other_settings.tags.create\", \"settings.other_settings.tags.edit\", \"settings.other_settings.tags.delete\", \"settings.data_transfer\", \"settings.data_transfer.imports\", \"settings.data_transfer.imports.create\", \"settings.data_transfer.imports.edit\", \"settings.data_transfer.imports.delete\", \"settings.data_transfer.imports.import\"]','2025-10-05 09:34:15','2025-10-05 09:34:15'),(3,'sales-role','saless role perms','custom','[\"dashboard\", \"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"activities\", \"activities.create\", \"activities.edit\", \"contacts\", \"contacts.persons\", \"contacts.persons.create\", \"contacts.persons.edit\", \"contacts.persons.view\", \"contacts.organizations\", \"contacts.organizations.create\", \"contacts.organizations.edit\", \"products\", \"products.create\", \"products.edit\", \"products.view\", \"settings\", \"settings.user\", \"settings.user.users\", \"settings.user.users.create\", \"settings.lead\", \"settings.lead.pipelines\", \"settings.lead.pipelines.create\", \"settings.lead.pipelines.edit\", \"settings.lead.sources\", \"settings.lead.sources.create\", \"settings.lead.sources.edit\", \"settings.lead.types\", \"settings.lead.types.create\", \"settings.lead.types.edit\", \"settings.automation\", \"settings.automation.attributes\", \"settings.automation.attributes.create\", \"settings.automation.attributes.edit\", \"settings.automation.webhooks\", \"settings.automation.webhooks.create\", \"settings.automation.webhooks.edit\", \"settings.automation.workflows\", \"settings.automation.workflows.create\", \"settings.automation.workflows.edit\", \"settings.automation.events\", \"settings.automation.events.create\", \"settings.automation.events.edit\", \"settings.automation.campaigns\", \"settings.automation.campaigns.create\", \"settings.automation.campaigns.edit\", \"settings.automation.email_templates\", \"settings.automation.email_templates.create\", \"settings.automation.email_templates.edit\", \"settings.other_settings\", \"settings.other_settings.web_forms\", \"settings.other_settings.web_forms.view\", \"settings.other_settings.web_forms.create\", \"settings.other_settings.web_forms.edit\", \"settings.other_settings.tags\", \"settings.other_settings.tags.create\", \"settings.other_settings.tags.edit\"]','2025-10-05 10:57:10','2025-10-05 10:57:10'),(4,'Student Counselor','Frontline staff who call and follow up with leads . \r\n\r\nManage Leads assigned, update status, add activities','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"leads.delete\", \"settings\", \"settings.lead\", \"settings.lead.pipelines\", \"settings.lead.pipelines.create\", \"settings.lead.pipelines.edit\", \"settings.lead.pipelines.delete\", \"settings.lead.sources\", \"settings.lead.sources.create\", \"settings.lead.sources.edit\", \"settings.lead.sources.delete\", \"settings.lead.types\", \"settings.lead.types.create\", \"settings.lead.types.edit\", \"settings.lead.types.delete\"]','2025-10-06 17:44:56','2025-10-06 17:44:56'),(5,'Marketing Executive','Handles campaign leads, imports data, manages webforms\r\nCreate Webforms, import/export leads, assign to counselors','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"leads.delete\", \"settings\", \"settings.automation\", \"settings.automation.workflows\", \"settings.automation.workflows.create\", \"settings.automation.workflows.edit\", \"settings.automation.workflows.delete\", \"settings.other_settings\", \"settings.other_settings.web_forms\", \"settings.other_settings.web_forms.view\", \"settings.other_settings.web_forms.create\", \"settings.other_settings.web_forms.edit\", \"settings.other_settings.web_forms.delete\", \"settings.data_transfer\", \"settings.data_transfer.imports\", \"settings.data_transfer.imports.create\", \"settings.data_transfer.imports.edit\", \"settings.data_transfer.imports.delete\", \"settings.data_transfer.imports.import\"]','2025-10-06 17:49:05','2025-10-06 17:49:05'),(6,'Academic Mentor','Engages enrolled students (post-conversion)\r\nAccess Contacts, add support notes, track engagement','custom','[\"settings\", \"settings.automation\", \"settings.automation.events\", \"settings.automation.events.create\", \"settings.automation.events.edit\", \"settings.automation.events.delete\", \"settings.automation.campaigns\", \"settings.automation.campaigns.create\", \"settings.automation.campaigns.edit\", \"settings.automation.campaigns.delete\", \"settings.automation.email_templates\", \"settings.automation.email_templates.create\", \"settings.automation.email_templates.edit\", \"settings.automation.email_templates.delete\"]','2025-10-06 17:53:03','2025-10-06 17:53:03'),(15,'QuoteSales','Quotation sharing with Leads received','custom','[\"dashboard\", \"leads\", \"leads.view\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"quotes.delete\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.create\", \"products.edit\", \"products.delete\", \"products.view\", \"settings\", \"settings.lead\", \"settings.lead.pipelines\"]','2025-10-08 14:13:31','2025-10-18 15:56:38'),(22,'CRM Manager-Skoda Car','Full access to manage SKU data like Tyre, Headl ights, Paints and workflows','all','[]','2025-10-19 08:04:06','2025-10-23 22:08:37'),(29,'Sales Representative-Tyre','Tracks leads, engages with prospects, closes orders, and updates CRM with SKU sales for specific products','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"quotes.delete\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.view\"]','2025-10-23 21:13:52','2025-10-23 22:26:08'),(32,'Inventory Manager','Manages SKU cataloging, stock monitoring, warehouse coordination, and supply tracking for all SKU types','custom','[\"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.create\", \"products.edit\", \"products.delete\", \"products.view\"]','2025-10-23 21:39:17','2025-10-23 22:11:42'),(35,'Procurement-Officer','Handles supplier relationships, negotiates purchasing terms, and ensures stock levels for automotive SKUs','custom','[\"leads\", \"leads.create\", \"leads.view\", \"quotes\", \"quotes.edit\", \"quotes.delete\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.create\", \"products.edit\", \"products.delete\", \"products.view\"]','2025-10-23 21:45:11','2025-10-23 22:12:40'),(36,'Customer Support','Addresses post-sales queries, handles complaints, records customer feedback specific to SKUs in the CRM','custom','[\"leads\", \"leads.view\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.create\", \"products.edit\", \"products.view\"]','2025-10-23 21:48:02','2025-10-23 22:09:37'),(37,'Marketing Specialist-Tyre','Designs SKU-specific campaigns and gathers market feedback for each product line (e.g., headlight promotions, tyre campaigns)','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"settings\", \"settings.automation\", \"settings.automation.events\", \"settings.automation.events.create\", \"settings.automation.events.edit\", \"settings.automation.events.delete\", \"settings.automation.campaigns\", \"settings.automation.campaigns.create\", \"settings.automation.campaigns.edit\", \"settings.automation.campaigns.delete\"]','2025-10-23 22:17:29','2025-10-23 22:32:09'),(38,'Service Coordinator','Schedules warranty work, manages maintenance/service calls for SKUs, and updates CRM with service histories','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\"]','2025-10-23 22:18:27','2025-10-23 22:18:27'),(39,'Data Analyst','Reviews sales, inventory, and customer data for SKU trends and process optimization within the CRM','custom','[\"dashboard\", \"products\", \"products.create\", \"products.edit\", \"products.view\"]','2025-10-23 22:19:14','2025-10-23 22:19:14'),(40,'Sales Representative-Paint','Tracks leads, engages with prospects, closes orders, and updates CRM with SKU sales for specific products','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\"]','2025-10-23 22:26:47','2025-10-23 22:26:47'),(41,'Sales Representative-Headlight','Tracks leads, engages with prospects, closes orders, and updates CRM with SKU sales for specific products','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\"]','2025-10-23 22:27:30','2025-10-23 22:27:30'),(42,'Marketing Specialist-Paint','Designs SKU-specific campaigns and gathers market feedback for each product line (e.g., headlight promotions, tyre campaigns)','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.create\", \"products.edit\", \"products.delete\", \"products.view\", \"settings\", \"settings.automation\", \"settings.automation.events\", \"settings.automation.events.create\", \"settings.automation.events.edit\", \"settings.automation.events.delete\", \"settings.automation.campaigns\", \"settings.automation.campaigns.create\", \"settings.automation.campaigns.edit\", \"settings.automation.campaigns.delete\"]','2025-10-23 22:34:37','2025-10-23 22:35:04'),(43,'Marketing Specialist-HeadLight','Designs SKU-specific campaigns and gathers market feedback for each product line (e.g., headlight promotions, tyre campaigns)','custom','[\"leads\", \"leads.create\", \"leads.view\", \"leads.edit\", \"quotes\", \"quotes.create\", \"quotes.edit\", \"quotes.print\", \"mail\", \"mail.inbox\", \"mail.draft\", \"mail.outbox\", \"mail.sent\", \"mail.trash\", \"mail.compose\", \"mail.view\", \"mail.edit\", \"mail.delete\", \"products\", \"products.create\", \"products.edit\", \"products.delete\", \"products.view\", \"settings\", \"settings.automation\", \"settings.automation.events\", \"settings.automation.events.create\", \"settings.automation.events.edit\", \"settings.automation.events.delete\", \"settings.automation.campaigns\", \"settings.automation.campaigns.create\", \"settings.automation.campaigns.edit\", \"settings.automation.campaigns.delete\"]','2025-10-23 22:36:11','2025-10-23 22:36:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_user_id_foreign` (`user_id`),
  CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'JEE',NULL,1,'2025-10-06 17:23:55','2025-10-06 17:23:55'),(2,'PIM',NULL,1,'2025-10-06 17:24:10','2025-10-06 17:24:10'),(3,'NEET',NULL,1,'2025-10-06 17:24:21','2025-10-06 17:24:21'),(4,'Add-on',NULL,1,'2025-10-06 17:24:39','2025-10-06 17:24:39');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `group_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  KEY `user_groups_group_id_foreign` (`group_id`),
  KEY `user_groups_user_id_foreign` (`user_id`),
  CONSTRAINT `user_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_password_resets`
--

DROP TABLE IF EXISTS `user_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `user_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_password_resets`
--

LOCK TABLES `user_password_resets` WRITE;
/*!40000 ALTER TABLE `user_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `view_permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'global',
  `role_id` int unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','tech@agenticone.in','$2y$10$VPPhcu35VcrzBaZbk2oTFuLNWww/ial0uHz5liWxe5VoG39mFsXQS',1,'global',1,NULL,'2025-10-05 09:18:56','2025-10-05 09:18:56',NULL),(2,'admin-user','xyz@agenticone.in','$2y$10$/QRLkZzQXINFKPzkqj965uUuMvxpMsYKnQoaKddpLX7cMIHdiPpvS',1,'global',2,NULL,'2025-10-05 09:35:05','2025-10-05 09:35:05',NULL),(5,'quoteuser','quoteuser@agenticone.in','$2y$10$xi9Hbiuyte7sfI11pX7KE.94dyEJ4CRrCc5qXG3qChS7mT8ZaDHbW',1,'individual',15,NULL,'2025-10-08 14:16:12','2025-10-18 15:42:36','admins/5/i0Ss62qEhKjHqm1xHxZaCzbjoMFKIflTkw3ezgP0.jpg'),(9,'System Administrator','sysadmin@agenticone.in','$2y$10$gyG4TCw94Vl4OoD/F9p5O.wusiVRNEPOEj6SGYySYKt9dkoYC0Eau',1,'global',22,NULL,'2025-10-19 08:24:08','2025-10-19 08:24:08',NULL),(16,'CRM Manager','crm.manager@agenticone.in','$2y$10$rjLmhwy82tKc5wYZzGpSjubIm57wsE8TpskDKDBcGQNGNFMkZ5VqC',1,'global',22,NULL,'2025-10-23 22:23:18','2025-10-23 22:23:18',NULL),(17,'Inventory Manager','inventory.manager@agenticone.in','$2y$10$64C/1vuCJIw.qm9MPPHYFePpItowx2DS7cElZ0JLui4bukGaVT2RW',1,'global',32,NULL,'2025-10-23 22:24:14','2025-10-23 22:24:14',NULL),(18,'Sales Representative-Tyre','sales.tyre@agenticone.in','$2y$10$DF/SKOWJUYZZYlZDim7xuOwkSs.1iio3Q6ViNCmrFs1MIRDvLpx9q',1,'global',29,NULL,'2025-10-23 22:28:39','2025-10-23 22:28:53',NULL),(19,'Sales Representative-Paint','sales.paint@agenticone.in','$2y$10$786EBkF0djfKFKFmLj/xFOyyajFdquV8JwIhHrnJ2WOIzivGN7AMy',1,'global',40,NULL,'2025-10-23 22:29:48','2025-10-23 22:29:48',NULL),(20,'Sales Representative-Head light','sales.headlight@agenticone.in','$2y$10$0c0o4v.7mJreUXBqL3Y3QenQQf.hPTHZC0xX9Vm1K47O1MxuofdS6',1,'global',41,NULL,'2025-10-23 22:30:31','2025-10-23 22:30:31',NULL),(21,'Marketing Specialist-Tyre','marketing.tyre@agenticone.in','$2y$10$1Cif8AEYziPwvJaWCBxJo.EycfU6YlNmWhNyFSH2FCgJNE5KBuQQW',1,'global',37,NULL,'2025-10-23 22:33:35','2025-10-23 22:33:35',NULL),(22,'Service Coordinator','Service.coordinator@agenticone.in','$2y$10$B8ZQzavBdYP8VSwnQ59zmOwoj4jUk0ON1E/wNTAiiRD.Zk1RNhkha',1,'global',38,NULL,'2025-10-23 22:43:27','2025-10-23 22:43:27',NULL),(23,'Data Analyst','analyst@agenticone.in','$2y$10$UdpntnmVcKHPoDKLD4eZvOJBZGdlHBw5rRdzimSCMBKluSnmkw9dS',1,'global',39,NULL,'2025-10-23 22:44:18','2025-10-23 22:44:18',NULL),(24,'Procurement Officer','procurement@agenticone.in','$2y$10$MzMyDhSh9OwiqBGBSeM39.3kJYsGlbMJDC9gWnpjvbkW5qIIQ0v3m',1,'global',35,NULL,'2025-10-23 22:44:59','2025-10-23 22:44:59',NULL),(25,'Customer Support Executive','support@agenticone.in','$2y$10$VV7ct5X16fPb0cuFvKDfR.uqhJxRBOub5rWsdv42jNoB0roHNJCvG',1,'global',36,NULL,'2025-10-23 22:52:59','2025-10-23 22:52:59',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_activities`
--

DROP TABLE IF EXISTS `warehouse_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_activities` (
  `activity_id` int unsigned NOT NULL,
  `warehouse_id` int unsigned NOT NULL,
  KEY `warehouse_activities_activity_id_foreign` (`activity_id`),
  KEY `warehouse_activities_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `warehouse_activities_activity_id_foreign` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_activities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_activities`
--

LOCK TABLES `warehouse_activities` WRITE;
/*!40000 ALTER TABLE `warehouse_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_locations`
--

DROP TABLE IF EXISTS `warehouse_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_locations_warehouse_id_name_unique` (`warehouse_id`,`name`),
  CONSTRAINT `warehouse_locations_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_locations`
--

LOCK TABLES `warehouse_locations` WRITE;
/*!40000 ALTER TABLE `warehouse_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_tags`
--

DROP TABLE IF EXISTS `warehouse_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_tags` (
  `tag_id` int unsigned NOT NULL,
  `warehouse_id` int unsigned NOT NULL,
  KEY `warehouse_tags_tag_id_foreign` (`tag_id`),
  KEY `warehouse_tags_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `warehouse_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `warehouse_tags_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_tags`
--

LOCK TABLES `warehouse_tags` WRITE;
/*!40000 ALTER TABLE `warehouse_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_emails` json NOT NULL,
  `contact_numbers` json NOT NULL,
  `contact_address` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_form_attributes`
--

DROP TABLE IF EXISTS `web_form_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_form_attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int DEFAULT NULL,
  `attribute_id` int unsigned NOT NULL,
  `web_form_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_form_attributes_attribute_id_foreign` (`attribute_id`),
  KEY `web_form_attributes_web_form_id_foreign` (`web_form_id`),
  CONSTRAINT `web_form_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `web_form_attributes_web_form_id_foreign` FOREIGN KEY (`web_form_id`) REFERENCES `web_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_form_attributes`
--

LOCK TABLES `web_form_attributes` WRITE;
/*!40000 ALTER TABLE `web_form_attributes` DISABLE KEYS */;
INSERT INTO `web_form_attributes` VALUES (1,'Name','',1,0,NULL,28,1),(2,'Emails','',1,0,NULL,29,1),(3,'Contact Numbers','',0,0,NULL,30,1),(4,'Stage','',1,0,NULL,27,1),(5,'Type','',1,0,NULL,23,1),(6,'Products','',1,0,NULL,21,1),(7,'Swagata','',1,0,NULL,28,2),(8,'sales@agenticone.in','',1,0,NULL,29,2),(9,'8888888888','',1,0,NULL,30,2);
/*!40000 ALTER TABLE `web_form_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_forms`
--

DROP TABLE IF EXISTS `web_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_forms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `form_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `submit_button_label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_success_action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_success_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_lead` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_submit_button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_label_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_forms_form_id_unique` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_forms`
--

LOCK TABLES `web_forms` WRITE;
/*!40000 ALTER TABLE `web_forms` DISABLE KEYS */;
INSERT INTO `web_forms` VALUES (1,'onk1yahotlLxp8loZLxyD77Fg6vdgC4Sxug1m6kwHOsTrW4BVE','JEE Admission Form','JEE Admission Inquiry Form','Enroll','message','Welcome to JEE Admission',1,'#F7F8F9','#FFFFFF','#263238','#0E90D9','#546E7A','2025-10-06 14:01:34','2025-10-06 16:45:10'),(2,'cE1qEuZMduqF1oV96497XEiKBnELCxspM1staBym0ln4eKhYvb','Explore Delhi','New Delhi City Tour','New Delhi','message','MyYatra.Com-NorthIndia Tours',1,'#f6f7f9','#FFFFFF','#263238','#0E90D9','#546E7A','2025-10-10 16:49:30','2025-10-10 16:49:30');
/*!40000 ALTER TABLE `web_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_params` json DEFAULT NULL,
  `headers` json DEFAULT NULL,
  `payload_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raw_payload_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workflows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'and',
  `conditions` json DEFAULT NULL,
  `actions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,'Emails to participants after activity creation','Emails to participants after activity creation','activities','activity.create.after','and','[{\"value\": [\"call\", \"meeting\", \"lunch\"], \"operator\": \"{}\", \"attribute\": \"type\", \"attribute_type\": \"multiselect\"}]','[{\"id\": \"send_email_to_participants\", \"value\": \"1\"}]','2025-10-05 09:18:56','2025-10-05 09:18:56'),(2,'Emails to participants after activity updation','Emails to participants after activity updation','activities','activity.update.after','and','[{\"value\": [\"call\", \"meeting\", \"lunch\"], \"operator\": \"{}\", \"attribute\": \"type\", \"attribute_type\": \"multiselect\"}]','[{\"id\": \"send_email_to_participants\", \"value\": \"2\"}]','2025-10-05 09:18:56','2025-10-05 09:18:56');
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-25  9:30:25
