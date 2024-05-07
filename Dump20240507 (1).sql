CREATE DATABASE  IF NOT EXISTS `assetlifecycle` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assetlifecycle`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: assetlifecycle
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset` (
  `asset_ID` int NOT NULL AUTO_INCREMENT,
  `asset_name` varchar(50) DEFAULT NULL,
  `category_ID` int DEFAULT NULL,
  `purchased_date` date DEFAULT NULL,
  `status` enum('In use','In maintenance','Retired') DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`asset_ID`),
  KEY `category_ID` (`category_ID`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `asset_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `asset_category` (`category_ID`),
  CONSTRAINT `asset_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_ID`),
  CONSTRAINT `asset_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (1,'Dell Laptop',2,'2023-01-15','In use',1,1),(2,'HP Printer',2,'2023-02-20','In use',1,2),(3,'Microsoft Office Suite',1,'2023-01-15','In use',3,3),(4,'Samsung Monitor',2,'2023-03-10','In use',2,2),(5,'Adobe Creative Cloud Suite',1,'2023-03-10','In use',4,4),(6,'Epson Scanner',2,'2023-04-15','In maintenance',3,3),(7,'Apple iPad',2,'2023-06-10','In use',5,5),(8,'Windows 10 Pro',1,'2023-05-20','In use',1,1),(9,'HP Laptop',2,'2023-05-25','Retired',6,6);
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_assignment`
--

DROP TABLE IF EXISTS `asset_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_assignment` (
  `assignment_ID` int NOT NULL AUTO_INCREMENT,
  `asset_ID` int DEFAULT NULL,
  `employee_ID` int DEFAULT NULL,
  `assignment_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`assignment_ID`),
  KEY `asset_ID` (`asset_ID`),
  KEY `employee_ID` (`employee_ID`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `asset_assignment_ibfk_1` FOREIGN KEY (`asset_ID`) REFERENCES `asset` (`asset_ID`),
  CONSTRAINT `asset_assignment_ibfk_2` FOREIGN KEY (`employee_ID`) REFERENCES `employees` (`employee_ID`),
  CONSTRAINT `asset_assignment_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_ID`),
  CONSTRAINT `asset_assignment_ibfk_4` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_assignment`
--

LOCK TABLES `asset_assignment` WRITE;
/*!40000 ALTER TABLE `asset_assignment` DISABLE KEYS */;
INSERT INTO `asset_assignment` VALUES (1,1,1,'2023-01-15',NULL,1,1),(2,2,2,'2023-02-20',NULL,1,1),(3,3,3,'2023-03-10',NULL,2,2),(4,4,4,'2023-04-15',NULL,3,3),(5,5,5,'2023-05-20',NULL,4,4),(6,6,6,'2023-06-10',NULL,5,5),(7,9,4,'2023-05-27','2023-10-29',6,6);
/*!40000 ALTER TABLE `asset_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_category`
--

DROP TABLE IF EXISTS `asset_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_category` (
  `category_ID` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_category`
--

LOCK TABLES `asset_category` WRITE;
/*!40000 ALTER TABLE `asset_category` DISABLE KEYS */;
INSERT INTO `asset_category` VALUES (1,'Software'),(2,'Hardware');
/*!40000 ALTER TABLE `asset_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_ID` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`department_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'IT'),(2,'Sales'),(3,'Finance'),(4,'Human Resource'),(5,'Learning and Development'),(6,'Operations');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disposal`
--

DROP TABLE IF EXISTS `disposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disposal` (
  `disposal_ID` int NOT NULL AUTO_INCREMENT,
  `asset_ID` int DEFAULT NULL,
  `disposal_date` date DEFAULT NULL,
  `disposal_method` varchar(50) DEFAULT NULL,
  `reason` text,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`disposal_ID`),
  KEY `asset_ID` (`asset_ID`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `disposal_ibfk_1` FOREIGN KEY (`asset_ID`) REFERENCES `asset` (`asset_ID`),
  CONSTRAINT `disposal_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_ID`),
  CONSTRAINT `disposal_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disposal`
--

LOCK TABLES `disposal` WRITE;
/*!40000 ALTER TABLE `disposal` DISABLE KEYS */;
INSERT INTO `disposal` VALUES (1,9,'2023-11-10','Sold','No longer needed',2,2);
/*!40000 ALTER TABLE `disposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_ID` int NOT NULL AUTO_INCREMENT,
  `emp_firstname` varchar(20) DEFAULT NULL,
  `emp_lastname` varchar(20) DEFAULT NULL,
  `department_ID` int DEFAULT NULL,
  `role_ID` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  PRIMARY KEY (`employee_ID`),
  KEY `department_ID` (`department_ID`),
  KEY `role_ID` (`role_ID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_ID`) REFERENCES `departments` (`department_ID`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`role_ID`) REFERENCES `job_role` (`role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John','Doe',1,1,'john.doe@example.com',1234567890),(2,'Jane','Smith',2,5,'jane.smith@example.com',9876543210),(3,'Alice','Johnson',4,3,'alice.johnson@example.com',1231231234),(4,'Michael','Brown',6,2,'michael.brown@example.com',5551234567),(5,'Emily','Taylor',1,6,'emily.taylor@example.com',5559876543),(6,'Chris','Wilson',5,3,'chris.wilson@example.com',5552223333);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_role`
--

DROP TABLE IF EXISTS `job_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_role` (
  `role_ID` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_role`
--

LOCK TABLES `job_role` WRITE;
/*!40000 ALTER TABLE `job_role` DISABLE KEYS */;
INSERT INTO `job_role` VALUES (1,'Manager'),(2,'Junior Engineer'),(3,'Senior Engineer'),(4,'Business Analyst'),(5,'Administrator'),(6,'Quality Analyst');
/*!40000 ALTER TABLE `job_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `maintenance_ID` int NOT NULL AUTO_INCREMENT,
  `asset_ID` int DEFAULT NULL,
  `maintenance_date` date DEFAULT NULL,
  `description` text,
  `maintenance_cost` decimal(10,2) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`maintenance_ID`),
  KEY `asset_ID` (`asset_ID`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`asset_ID`) REFERENCES `asset` (`asset_ID`),
  CONSTRAINT `maintenance_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_ID`),
  CONSTRAINT `maintenance_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,1,'2023-05-07','Replaced laptop battery',3500.00,3,3),(2,6,'2023-08-16','Calibrated scanner sensors',1000.00,2,2),(3,9,'2023-07-13','Performed system cleanup and optimization',2000.50,3,3);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 15:20:23
