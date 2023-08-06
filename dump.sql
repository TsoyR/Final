-- MySQL dump 10.13  Distrib 8.0.33, for Linux (aarch64)
--
-- Host: localhost    Database: Friends_of_Man
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.4

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
-- Table structure for table `Animal`
--

DROP TABLE IF EXISTS `Animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Animal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animal_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animal`
--

LOCK TABLES `Animal` WRITE;
/*!40000 ALTER TABLE `Animal` DISABLE KEYS */;
INSERT INTO `Animal` VALUES (1,'вьючные'),(2,'домашние');
/*!40000 ALTER TABLE `Animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camels`
--

DROP TABLE IF EXISTS `Camels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camels` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal_id` int DEFAULT NULL,
  `type_of_load` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `kind_of_animal_id` (`kind_of_animal_id`),
  CONSTRAINT `Camels_ibfk_1` FOREIGN KEY (`kind_of_animal_id`) REFERENCES `Pack_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camels`
--

LOCK TABLES `Camels` WRITE;
/*!40000 ALTER TABLE `Camels` DISABLE KEYS */;
/*!40000 ALTER TABLE `Camels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cats`
--

DROP TABLE IF EXISTS `Cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cats` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `kind_of_animal_id` (`kind_of_animal_id`),
  CONSTRAINT `Cats_ibfk_1` FOREIGN KEY (`kind_of_animal_id`) REFERENCES `Home_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cats`
--

LOCK TABLES `Cats` WRITE;
/*!40000 ALTER TABLE `Cats` DISABLE KEYS */;
INSERT INTO `Cats` VALUES (1,'Мурка','2020-03-01','кис-кис-кис',1),(2,'Буся','2021-01-01','Прыжок',1),(3,'Муся','2022-03-05','Ко мне',1);
/*!40000 ALTER TABLE `Cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dogs`
--

DROP TABLE IF EXISTS `Dogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dogs` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `kind_of_animal_id` (`kind_of_animal_id`),
  CONSTRAINT `Dogs_ibfk_1` FOREIGN KEY (`kind_of_animal_id`) REFERENCES `Home_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dogs`
--

LOCK TABLES `Dogs` WRITE;
/*!40000 ALTER TABLE `Dogs` DISABLE KEYS */;
INSERT INTO `Dogs` VALUES (1,'Билли','2021-03-01','Фас',2),(2,'Декс','2015-01-01','Прыжок',2),(3,'Гуфи','2019-03-05','Место',2);
/*!40000 ALTER TABLE `Dogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Donkeys`
--

DROP TABLE IF EXISTS `Donkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Donkeys` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal_id` int DEFAULT NULL,
  `type_of_load` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `kind_of_animal_id` (`kind_of_animal_id`),
  CONSTRAINT `Donkeys_ibfk_1` FOREIGN KEY (`kind_of_animal_id`) REFERENCES `Pack_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Donkeys`
--

LOCK TABLES `Donkeys` WRITE;
/*!40000 ALTER TABLE `Donkeys` DISABLE KEYS */;
INSERT INTO `Donkeys` VALUES (1,'Моисей','2013-01-02','го-го-го,стоп',2,'пассажирские перевозки'),(2,'Изабель','2015-02-02','го-го-го,стоп',2,'сельхоз.продукты'),(3,'Дора','2011-02-02','стой',2,'грузоперевозки');
/*!40000 ALTER TABLE `Donkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hamsters`
--

DROP TABLE IF EXISTS `Hamsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hamsters` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `kind_of_animal_id` (`kind_of_animal_id`),
  CONSTRAINT `Hamsters_ibfk_1` FOREIGN KEY (`kind_of_animal_id`) REFERENCES `Home_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hamsters`
--

LOCK TABLES `Hamsters` WRITE;
/*!40000 ALTER TABLE `Hamsters` DISABLE KEYS */;
INSERT INTO `Hamsters` VALUES (1,'Мэгги','2021-03-01','стоять',3),(2,'Рапунцель','2015-01-01','прыжок',3),(3,'Лили','2019-03-05','круг',3);
/*!40000 ALTER TABLE `Hamsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Home_animals`
--

DROP TABLE IF EXISTS `Home_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Home_animals` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `kind_of_animal` varchar(30) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `Home_animals_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `Animal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Home_animals`
--

LOCK TABLES `Home_animals` WRITE;
/*!40000 ALTER TABLE `Home_animals` DISABLE KEYS */;
INSERT INTO `Home_animals` VALUES (1,'Кошки',2),(2,'Собаки',2),(3,'Хомяки',2);
/*!40000 ALTER TABLE `Home_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horses`
--

DROP TABLE IF EXISTS `Horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Horses` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal_id` int DEFAULT NULL,
  `type_of_load` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `kind_of_animal_id` (`kind_of_animal_id`),
  CONSTRAINT `Horses_ibfk_1` FOREIGN KEY (`kind_of_animal_id`) REFERENCES `Pack_animals` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horses`
--

LOCK TABLES `Horses` WRITE;
/*!40000 ALTER TABLE `Horses` DISABLE KEYS */;
INSERT INTO `Horses` VALUES (1,'Апполон','2017-01-02','шагом',1,'пассажирские перевозки'),(2,'Галоп','2015-02-02','Но, пошла!',1,'сельхоз.продукты'),(3,'Черныш','2011-02-02','стой',1,'грузоперевозки');
/*!40000 ALTER TABLE `Horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pack_animals`
--

DROP TABLE IF EXISTS `Pack_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pack_animals` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `kind_of_animal` varchar(30) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `Pack_animals_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `Animal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pack_animals`
--

LOCK TABLES `Pack_animals` WRITE;
/*!40000 ALTER TABLE `Pack_animals` DISABLE KEYS */;
INSERT INTO `Pack_animals` VALUES (1,'Лошади',1),(2,'Ослы',1),(3,'Верблюды',1);
/*!40000 ALTER TABLE `Pack_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Young_animal`
--

DROP TABLE IF EXISTS `Young_animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Young_animal` (
  `Name` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `commands` varchar(20) DEFAULT NULL,
  `kind_of_animal` varchar(6) NOT NULL DEFAULT '',
  `Age_in_month` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Young_animal`
--

LOCK TABLES `Young_animal` WRITE;
/*!40000 ALTER TABLE `Young_animal` DISABLE KEYS */;
INSERT INTO `Young_animal` VALUES ('Буся','2021-01-01','Прыжок','Кошки',31),('Муся','2022-03-05','Ко мне','Кошки',17),('Билли','2021-03-01','Фас','Собаки',29),('Мэгги','2021-03-01','стоять','Хомяки',29);
/*!40000 ALTER TABLE `Young_animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-06  8:27:01
