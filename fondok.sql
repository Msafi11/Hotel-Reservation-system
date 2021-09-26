CREATE DATABASE  IF NOT EXISTS `fondok` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fondok`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fondok
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(40) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('safix','12345','Mahmoud Hamdy ','Mha9669@icloud.com',21,'0112119878',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel`
--

DROP TABLE IF EXISTS `cancel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancel` (
  `RID` int NOT NULL,
  `customerUsername` varchar(45) NOT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel`
--

LOCK TABLES `cancel` WRITE;
/*!40000 ALTER TABLE `cancel` DISABLE KEYS */;
INSERT INTO `cancel` VALUES (8,'Mama'),(9,'Mama');
/*!40000 ALTER TABLE `cancel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerUsername` varchar(45) NOT NULL,
  `customerName` varchar(45) NOT NULL,
  `customerEmail` varchar(45) NOT NULL,
  `customerAge` int NOT NULL,
  `customerPass` varchar(45) NOT NULL,
  `customerMobile` varchar(45) NOT NULL,
  `customerPhoto` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`customerUsername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('','sd','a@com',4,'6WID0tixKf','444',NULL),('aaaa','aaaa','safix11@icloud.com',19,'hHOkIcKx','+11156353309',NULL),('AhmedX','AhmedSafi','safy162002@gmail.com',19,'OmAEFmYj6S','01121165294',NULL),('d','kakaq','kakaq',30,'kakaq','k',NULL),('dd','hh','@',20,'bgbg','njnhn','\"C:\\Users\\Safix\\Documents\\NetBeansProjects\\IAProject\\web\\images\\avatar2.png\"'),('fady','Fady','safix11@icloud.com',19,'jDCrzvXb','5454',NULL),('fdfd','dsd`','mody111safi@gmail.com',5454,'DDZyoXgA','0114545',NULL),('frfr','dsds','mody111safi@gmail.com',19,'6ka0uK3F','+11156353309',NULL),('IFaheem','IbrahimFaheem','i.faheem@hotmail.com',27,'lyG6FmTHeB','+201004077301',NULL),('ii','MOHAMED SAFI','MOSAFI@gmail.com',21,'ii','0114526454','\"https://gif-avatars.com/img/150x150/heath-ledger.gif\"'),('kosmenomar','kosom_omar','safix11@icloud.com',19,'d1YfRajZ','011211653241',NULL),('Mama','mama','mama',45,'mama','0113635245',NULL),('MazenX','Mazen','mazenbassem1010@gmail.com',21,'comHEu4C','01142241906',NULL),('papa','dsd','dsds',10,'dsd','sds',NULL),('safix','moko','safix11@icloud.com',21,'LOZHAtG1','01125632487',NULL),('safixo','safix','safix11@icloud.com',21,'3nndtEZXUo','+11156353309',NULL),('sds','dsd','dsds',10,'dsd','sds',NULL),('seka','k','k',20,'kk','0122',NULL),('toto','pop','safix11@icloud.com',21,'CS63rp4L','+11156353309',NULL),('wenshX','mahmoud','Mha9669@icloud.com',21,'8L8rMkztzW','11111111111111',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelName` varchar(50) NOT NULL,
  `country` varchar(45) NOT NULL,
  `rating` int NOT NULL,
  `availability` varchar(45) NOT NULL,
  `ePrice` int NOT NULL,
  `rooms` int DEFAULT NULL,
  `roomtype` varchar(45) NOT NULL,
  `roomfacilities` varchar(150) NOT NULL,
  `location` varchar(1000) DEFAULT NULL,
  `distfromcity` varchar(45) NOT NULL,
  PRIMARY KEY (`hotelName`),
  UNIQUE KEY `hotelName_UNIQUE` (`hotelName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('Aston Maui Kaanapali Villas','Hawaii',5,'Yes',300,2,'HIGH','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3726.4598727252414!2d-156.6935369854222!3d20.93403949638185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x79552b49843a1ad9%3A0xd6c3ce714456c5a2!2sMaui%20Kaanapali%20Villas!5e0!3m2!1sen!2seg!4v1610224159639!5m2!1sen!2seg\"','FAR'),('Blue Beach Club','Dahab',2,'NO',375,8,'LOW','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3506.2638063797617!2d34.517583314510624!3d28.501709696741898!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15ab4b2589246905%3A0x1e99eda14d9e122e!2sBlue%20Beach%20Club!5e0!3m2!1sen!2seg!4v1610291576762!5m2!1sen!2seg\"','CLOSE'),('Dahab Paradise','Dahab',3,'No',375,9,'HIGH','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3505.6000735186085!2d34.51009111451115!3d28.52167779584159!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15ab4acd84552931%3A0xc31bf1541a0f03e0!2sDahab%20Paradise!5e0!3m2!1sen!2seg!4v1610290712747!5m2!1sen!2seg\"','CLOSE'),('Gina Motel Dahab','Dahab',4,'Yes',255,7,'HIGH','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3506.528275360422!2d34.51272131451044!3d28.493749697100714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15ab4b9c891eb671%3A0x5ee071b32a1ad5c7!2sGina%20Motel!5e0!3m2!1sen!2seg!4v1610291220957!5m2!1sen!2seg\"','FAR'),('Hyatt Regency Maui Resort & Spa','Hawaii',4,'No',250,2,'HIGH','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3726.9838108166286!2d-156.69436074985398!3d20.912970985992793!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x79552b6b82cf7fb7%3A0x8b4f6cc2ff2fcb8e!2sHyatt%20Regency%20Maui%20Resort%20And%20Spa!5e0!3m2!1sen!2seg!4v1610285994908!5m2!1sen!2seg\"','FAR'),('Nesima Resort','Dahab',4,'Yes',600,3,'HIGH','WIFI','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3506.587316459492!2d34.514080214718156!3d28.491972397180277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15ab4b36c24e6e1b%3A0x13be6b947abd2b0a!2sNesima%20Resort!5e0!3m2!1sen!2seg!4v1610290201565!5m2!1sen!2seg\"','CLOSE'),('Queen Kapiolani Hotel','Hawaii',3,'Yes',350,2,'HIGH','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3717.99008930007!2d-157.82323804984696!3d21.271859885797824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c00727a0a860889%3A0x805bd7fdf15ebe49!2sQueen%20Kapi%CA%BBolani%20Hotel%20Waik%C4%ABk%C4%AB%20Beach!5e0!3m2!1sen!2seg!4v1610288592351!5m2!1sen!2seg\"','FAR'),('Sheraton Waikiki','Hawaii',1,'No',400,2,'HIGH','SMOKE&#128684;WIFI&#128246;PRIVATE WC&#128701;TV&#128250;','\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3717.8463455542674!2d-157.8325566854169!3d21.277548984614985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c007274feadf149%3A0xb17666851812b3e!2sSheraton%20Waikiki!5e0!3m2!1sen!2seg!4v1610288897326!5m2!1sen!2seg\"','CLOSE');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteldata`
--

DROP TABLE IF EXISTS `hoteldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteldata` (
  `HotelName` varchar(200) NOT NULL,
  `Mobile` varchar(45) NOT NULL,
  `facilities` varchar(1000) NOT NULL,
  `location` varchar(200) NOT NULL,
  `branches` varchar(400) NOT NULL,
  PRIMARY KEY (`HotelName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteldata`
--

LOCK TABLES `hoteldata` WRITE;
/*!40000 ALTER TABLE `hoteldata` DISABLE KEYS */;
INSERT INTO `hoteldata` VALUES ('Aston Maui Kaanapali Villas','01121165294','WIFI-PHONE-IPAD','GIZA','MEETOKBA-IMBABA'),('Blue Beach Club','0115625478','WIFI','CAIRO','GIZa'),('Dahab Paradise','0224545','NO WIFI','ZMALEK','HADBA'),('Gina Motel Dahab','01156353309','WIFIWIFI','HENA','HENAK'),('Hyatt Regency Maui Resort & Spa','4545454','HIGH WIFI','CAIRO','GIZA');
/*!40000 ALTER TABLE `hoteldata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelphotos`
--

DROP TABLE IF EXISTS `hotelphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelphotos` (
  `HotelName` varchar(100) NOT NULL,
  `Img` varchar(100) NOT NULL,
  `ImgID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ImgID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelphotos`
--

LOCK TABLES `hotelphotos` WRITE;
/*!40000 ALTER TABLE `hotelphotos` DISABLE KEYS */;
INSERT INTO `hotelphotos` VALUES ('Blue Beach Club','bb1.jpg',1),('Blue Beach Club','bb2.jpg',2),('Blue Beach Club','bb3.jpg',3),('Blue Beach Club','bb4.jpg',4),('Gina Motel Dahab','hdbawyyyyyyyyyyyyyyyyyyyyyyyy.JPG',5),('Gina Motel Dahab','hdbawyyyyyyyyyyyyyyyyyyyyyyyy.JPG',6),('Gina Motel Dahab','hdbawyyyyyyyyyyyyyyyyyyyyyyyy.JPG',7),('Gina Motel Dahab','hdbawyyyyyyyyyyyyyyyyyyyyyyyy.JPG',8),('Hyatt Regency Maui Resort & Spa','hyatt1.jpg',9),('Hyatt Regency Maui Resort & Spa','hyatt2.jpg',10),('Hyatt Regency Maui Resort & Spa','hyatt3.jpg',11),('Hyatt Regency Maui Resort & Spa','hyatt4.jpg',12),('Aston Maui Kaanapali Villas','MauiImg1.jpg',13),('Aston Maui Kaanapali Villas','MauiImg2.jpg',14),('Aston Maui Kaanapali Villas','MauiImg3.jpg',15),('Aston Maui Kaanapali Villas','MauiImg4.jpg',16),('Nesima Resort','N1.jpg',17),('Nesima Resort','N2.jpg',18),('Nesima Resort','N3.jpg',19),('Nesima Resort','N4.jpg',20),('Dahab Paradise','P1.jpg',21),('Dahab Paradise','P2.jpg',22),('Dahab Paradise','P3.jpg',23),('Dahab Paradise','P4.jpg',24),('Queen Kapiolani Hotel','Q1.jpg',25),('Queen Kapiolani Hotel','Q2.jpg',26),('Queen Kapiolani Hotel','Q3.jpg',27),('Queen Kapiolani Hotel','Q4.jpg',28),('Sheraton Waikiki','SH1.jpg',29),('Sheraton Waikiki','SH2.jpg',30),('Sheraton Waikiki','SH3.jpg',31),('Sheraton Waikiki','SH4.jpg',32);
/*!40000 ALTER TABLE `hotelphotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `hotelName` varchar(200) NOT NULL,
  `customerUsername` varchar(200) NOT NULL,
  `stars` int NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `ratingid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ratingid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES ('Blue Beach Club','Mama',3,'GAMEDDD',1),('Dahab Paradise','Mama',5,'sss',2),('Nesima Resort','Mama',2,'YARAP YNGAH',3),('Queen Kapiolani Hotel','Mama',5,'dsd',4),('Queen Kapiolani Hotel','Baba',3,'sds',5),('nana','kaka',4,'uuuuu',6),('Hyatt Regency Maui Resort & Spa','Mama',4,'WOW',7);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservationID` int NOT NULL AUTO_INCREMENT,
  `customerUsername` varchar(45) NOT NULL,
  `hotelName` varchar(200) NOT NULL,
  `reservationDate` date NOT NULL,
  `CheckIn` date NOT NULL,
  `CheckOut` date NOT NULL,
  `typee` varchar(45) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`reservationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (10,'Mama','Dahab Paradise','2021-01-15','2021-01-15','2021-01-30','pending');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15 22:02:55
