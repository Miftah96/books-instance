-- MySQL dump 10.13  Distrib 8.1.0, for macos13 (arm64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` bigint NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `published` date DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (5,'Resiliensi : Bagaimana Bangkit dari Kesulitan & Tumbuh dalam Tantangan','M. Taufiq Amir','Indonesia','Indonesia','Self Improvement','Kompas Penerbit Buku','2021-12-09','PDF',240,'978-623-346-222-8'),(52,'Resiliensi : Bagaimana Bangkit dari Kesulitan & Tumbuh dalam Tantangan','M. Taufiq Amir','Indonesia','Indonesia','Self Improvement','Kompas Penerbit Buku','2021-12-09','PDF',242,'6024223307'),(53,'Atomic Habits','James Clear','Indonesia','Indonesia','Self Improvement','Gramedia Pustaka Utama','2019-12-09','Hard Copy',341,'978-602-06-3317-6'),(102,'Resiliensi : Bagaimana Bangkit dari Kesulitan & Tumbuh dalam Tantangan','M. Taufiq Amir','Indonesia','Bahasa Indonesia','Self Improvement','Kompas Penerbit Buku','2021-12-09','PDF',240,'978-623-346-222-8'),(103,'Resiliensi : Bagaimana Bangkit dari Kesulitan & Tumbuh dalam Tantangan','M. Taufiq Amir','Indonesia','Indonesia','Self Improvement','Kompas Penerbit Buku','2021-12-09','PDF',240,'978-623-346-222-8'),(152,'Semua manusia bersaudara','Mahatma Gandhi, Kustiniyati Mochtar, Mochtar Lubis','Indonesia','Indonesia','Self Improvement','Yayasan Obor Indonesia','2016-12-09','Hard Copy',239,'978-979-461-017-6');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_seq`
--

DROP TABLE IF EXISTS `books_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_seq`
--

LOCK TABLES `books_seq` WRITE;
/*!40000 ALTER TABLE `books_seq` DISABLE KEYS */;
INSERT INTO `books_seq` VALUES (251);
/*!40000 ALTER TABLE `books_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials_seq`
--

DROP TABLE IF EXISTS `tutorials_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials_seq`
--

LOCK TABLES `tutorials_seq` WRITE;
/*!40000 ALTER TABLE `tutorials_seq` DISABLE KEYS */;
INSERT INTO `tutorials_seq` VALUES (1);
/*!40000 ALTER TABLE `tutorials_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'library'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-08 11:54:45
