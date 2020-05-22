CREATE DATABASE  IF NOT EXISTS `restaurants` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurants`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: restaurants
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `available_drivers`
--

DROP TABLE IF EXISTS `available_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `available_drivers` (
  `driver_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `driver_first_name` varchar(45) NOT NULL,
  `driver_last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `restaurant_id_fk_driv_idx` (`restaurant_id`),
  CONSTRAINT `restaurant_id_fk_driv` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_location` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_drivers`
--

LOCK TABLES `available_drivers` WRITE;
/*!40000 ALTER TABLE `available_drivers` DISABLE KEYS */;
INSERT INTO `available_drivers` VALUES (100,7,'Jon','Mcflury'),(101,8,'Jalen','Smith'),(102,9,'Amanda','Jackson'),(103,10,'Courtney','Davis'),(104,11,'Iris','Brown'),(105,12,'Ange','Dickson'),(106,13,'Colombus','Washington'),(107,14,'Noah','White'),(108,15,'Lashun','Bazilio'),(109,16,'Ronald','Perry'),(110,17,'Gloria','Gonzalez'),(111,18,'Paula','Carter'),(112,19,'Victor','Peterson'),(113,20,'Patricia','Powell'),(114,21,'Douglas','Banders'),(115,22,'Fred','Evans'),(116,23,'Jackie','Alexander'),(117,24,'Ashley','Smith'),(118,25,'Ed','Taylor'),(119,26,'Kate','Hanover'),(120,27,'Larry','Wilson'),(121,28,'Terrence','Scott'),(122,29,'Jennifer','Mason'),(123,30,'Kareen','Michaelson'),(124,31,'Harrison','Young'),(200,29,'Levi','Wells'),(201,30,'Adrian','Hubbard'),(202,31,'Molly','Gross'),(203,32,'Earl','Hawkins'),(204,33,'Julian','Jenson');
/*!40000 ALTER TABLE `available_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `board_of_restaurants`
--

DROP TABLE IF EXISTS `board_of_restaurants`;
/*!50001 DROP VIEW IF EXISTS `board_of_restaurants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `board_of_restaurants` AS SELECT 
 1 AS `Restaurant Name`,
 1 AS `Restaurant Address`,
 1 AS `Order Amounts`,
 1 AS `Ratings`,
 1 AS `Supplying Vendor`,
 1 AS `Vendor Location`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer_information`
--

DROP TABLE IF EXISTS `customer_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_information` (
  `customer_id` int NOT NULL,
  `customer_first_name` varchar(45) NOT NULL,
  `customer_last_name` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_information`
--

LOCK TABLES `customer_information` WRITE;
/*!40000 ALTER TABLE `customer_information` DISABLE KEYS */;
INSERT INTO `customer_information` VALUES (1201,'Andrea','Cuomo','(301) 465-4765','andreacuomo@gmail.com'),(1202,'Catherine','Young','(301) 874-7438','young.catherine@icloud.com'),(1203,'Annie','Carter','(301) 674-6297','acarter34@gmail.com'),(1204,'Adeline','Lee','(301) 487-4273','lee.adeline28@verizon.net'),(1205,'Patrice','Smitt','(301) 578-6128','smittpatrice@icloud.com'),(1206,'Emmanual','Cambridge','(240) 283-7591','emmanuel.cambridge@gmail.com'),(1207,'Meredith','Grey','(240) 643-1827','m.grey@gmail.com'),(1208,'Callie','Jacobs','(301) 527-7891','calliejacobs333@icloud.com'),(1306,'Sibyl','Crist','(301) 674-6278','cristlovescats@icloud.com'),(1307,'Ta','Lindley','(301) 487-4274','lindleydesigns@yahoo.com'),(1308,'Hang','Lynn','(301) 578-6190','lynn.hang@gmail.com'),(1309,'Madelyn','Held','(240) 283-7561','heldmadelyn@verizon.net'),(1310,'Irene','Adamson','(240) 643-1837','airene@comcast.net'),(1311,'Wayne','Sandoval','(301) 527-7819','sandovalcooks@hotmail.com'),(1500,'Clark','Pittman','(202) 555-0310','pittman.clark@hotmail.com'),(1501,'Edgar','Long','(202) 567-0491','elong123@hotmail.com'),(1502,'Carl','Mullins','(202) 598-0116','mullinscarl@yahoo.com'),(1503,'Sheila','Lee','(202) 895-0519','sheilalee3799@verizon.net'),(1504,'Phyllis','Barker','(202) 765-0419','phybar@gmail.com'),(1505,'Madeline','Abbott','(202) 321-0295','abbottmadeline.case@aol.com'),(1506,'Antonia','Fields','(202) 074-2015','fields.toni@gmail.com'),(1507,'Raquel','Ortiz','(202) 985-4265','rocky@yahoo.com'),(1600,'Edward','Johnson','(240) 935-2410','edwardjohnson@gmail.com'),(1601,'Ashley','Walker','(301) 920-2410','ashleywalker@gmail.com'),(1602,'David','Tyson','(410) 935-1002','davidtyson@gmail.com'),(1603,'Sonita','Westley','(310) 410-3301','sonitawestley@gmail.com'),(1604,'Andre','Walisson','(240) 121-0101','andrewalisson@gmail.com'),(1605,'Anette','Coroh','(301) 000-2087','anettecoroh@gmail.com'),(1606,'Brian','Hamlin','(240) 302-0002','brianhamlin@gmail.com'),(1607,'Glory','Hopkins','(447) 310-0201','gloryhopkins@gmail.com');
/*!40000 ALTER TABLE `customer_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `partying`
--

DROP TABLE IF EXISTS `partying`;
/*!50001 DROP VIEW IF EXISTS `partying`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `partying` AS SELECT 
 1 AS `Restaurant Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_types` (
  `payment_type_id` smallint NOT NULL,
  `type_name` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_types`
--

LOCK TABLES `payment_types` WRITE;
/*!40000 ALTER TABLE `payment_types` DISABLE KEYS */;
INSERT INTO `payment_types` VALUES (200,'cash'),(201,'credit'),(202,'debit'),(203,'electronic');
/*!40000 ALTER TABLE `payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `payment_vending`
--

DROP TABLE IF EXISTS `payment_vending`;
/*!50001 DROP VIEW IF EXISTS `payment_vending`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_vending` AS SELECT 
 1 AS `Payment Type`,
 1 AS `Occurrences`,
 1 AS `Total amount paid in this type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `review_id` smallint NOT NULL,
  `restaurant_id` int NOT NULL,
  `reviewer_id` int NOT NULL,
  `rating` int unsigned NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `reviewer_id_fk_idx` (`reviewer_id`),
  KEY `restaurant_id_fk_idx` (`restaurant_id`),
  CONSTRAINT `restaurant_id_rev_fk` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_location` (`restaurant_id`),
  CONSTRAINT `reviewer_id_rev_fk` FOREIGN KEY (`reviewer_id`) REFERENCES `reviewers` (`reviewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (212,28,1905,4),(220,8,1905,5),(224,40,1945,5),(229,3,1981,4),(235,31,1923,5),(236,30,1992,4),(237,20,1937,2),(238,31,1994,5),(239,4,1963,5),(241,33,1978,5),(249,37,1922,4),(250,29,1988,4),(265,35,1917,4),(267,39,1984,4),(273,7,1906,4),(275,17,1988,4),(283,27,1906,4),(284,1,1933,4),(288,16,1964,4),(294,6,1982,4),(312,19,1923,3),(314,18,1992,4),(336,32,1905,4),(350,29,1903,4),(351,26,1982,4),(358,5,1949,5),(383,2,1970,4),(397,30,1967,4),(400,34,1924,5),(455,32,1937,4),(456,36,1958,5),(478,33,1903,4),(500,7,1994,4),(503,4,1937,4),(505,25,1922,4),(506,1,1988,5),(516,32,1912,5),(517,12,1964,5),(529,17,1978,4),(530,23,1917,4),(536,11,1945,4),(542,30,1958,4),(543,10,1984,5),(545,15,1905,4),(546,21,1978,2),(554,24,1903,5),(556,5,1903,4),(557,3,1923,4),(562,22,1924,4),(569,9,1912,5),(571,33,1984,4),(583,21,1945,5),(584,24,1958,5),(590,2,1992,4),(591,6,1967,4),(593,14,1906,4),(595,13,1982,4),(598,31,1922,4),(599,8,1905,5);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ratings_and_party_size`
--

DROP TABLE IF EXISTS `ratings_and_party_size`;
/*!50001 DROP VIEW IF EXISTS `ratings_and_party_size`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ratings_and_party_size` AS SELECT 
 1 AS `Restaurant`,
 1 AS `Average rating`,
 1 AS `Average party size`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservation_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `reservation_date` date NOT NULL,
  `reservation_time` time DEFAULT NULL COMMENT 'should be time datatype',
  `party_size` int NOT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `customer_id_fk_idx` (`customer_id`),
  KEY `restaurant_id_fk_idx` (`restaurant_id`),
  CONSTRAINT `customer_id_res_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer_information` (`customer_id`),
  CONSTRAINT `restaurant_id_res_fk` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_location` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1021,17,1500,'2020-01-11','13:30:00',12),(1022,19,1501,'2020-04-23','20:15:00',2),(1023,19,1500,'2020-06-02','12:30:00',6),(1024,20,1503,'2020-06-02','14:15:00',6),(1025,21,1504,'2020-07-10','16:45:00',3),(1026,17,1502,'2020-07-29','19:30:00',2),(1027,23,1506,'2020-03-07','17:00:00',10),(1028,25,1505,'2020-05-03','11:00:00',2),(1230,9,1205,'2020-05-01','12:00:00',4),(1231,11,1203,'2020-06-03','19:15:00',6),(1232,13,1206,'2020-05-10','13:30:00',15),(1233,11,1201,'2020-06-23','20:00:00',2),(1234,12,1208,'2020-07-04','13:00:00',8),(1235,16,1202,'2020-05-16','12:00:00',12),(1236,14,1204,'2020-06-18','19:30:00',4),(1237,15,1207,'2020-07-02','20:00:00',22),(2321,8,1607,'2020-05-08','08:00:00',30),(3321,7,1606,'2020-05-07','10:00:00',35),(4001,29,1306,'2020-06-11','10:45:00',15),(4002,30,1307,'2020-06-21','16:30:00',20),(4006,34,1311,'2020-11-27','12:30:00',2),(4008,31,1308,'2020-09-04','11:15:00',10),(4009,32,1307,'2020-11-08','21:15:00',6),(4010,33,1310,'2020-11-15','22:00:00',8),(4321,1,1600,'2020-05-01','20:00:00',10),(5321,2,1601,'2020-05-02','14:00:00',25),(6321,3,1602,'2020-05-03','12:00:00',30),(7321,4,1603,'2020-05-04','13:00:00',20),(8321,5,1604,'2020-05-05','15:00:00',25),(9321,6,1605,'2020-05-06','16:00:00',15);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_vendor_order`
--

DROP TABLE IF EXISTS `rest_vendor_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_vendor_order` (
  `order_id` smallint NOT NULL,
  `restaurant_id` int NOT NULL,
  `vendor_id` smallint NOT NULL,
  `order_total` int DEFAULT NULL,
  `payment_type_id` smallint NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `vendor_id_fk_idx` (`vendor_id`),
  KEY `restaurant_id_rvo_fk` (`restaurant_id`),
  KEY `payment_type_rvo_fk` (`payment_type_id`),
  CONSTRAINT `payment_type_rvo_fk` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`payment_type_id`),
  CONSTRAINT `restaurant_id_rvo_fk` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_location` (`restaurant_id`),
  CONSTRAINT `vendor_id_rvo_fk` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_vendor_order`
--

LOCK TABLES `rest_vendor_order` WRITE;
/*!40000 ALTER TABLE `rest_vendor_order` DISABLE KEYS */;
INSERT INTO `rest_vendor_order` VALUES (1000,30,1697,9533,203),(1200,31,1696,8871,200),(1300,32,1695,6124,201),(1400,33,1694,8554,202),(1500,34,1693,8331,202),(3021,6,1805,75,200),(3121,1,1800,45,202),(3122,2,1801,100,202),(3131,3,1802,215,202),(3200,7,1806,150,201),(3231,5,1804,50,202),(3233,4,1803,321,201),(3410,8,1807,205,203),(3620,9,1808,185,203),(7067,19,1698,4648,201),(7068,20,1697,4125,200),(7069,21,1696,2122,201),(7070,22,1695,4296,201),(7071,23,1694,578,202),(7072,19,1693,3410,203),(7073,20,1692,330,202),(7074,21,1691,900,203),(9120,30,2010,5000,202),(9121,31,2011,3125,201),(9122,32,2012,420,202),(9123,33,2013,75,202),(9124,34,2014,2320,200),(9125,35,2015,850,202),(9126,36,2016,920,200),(9127,29,2017,200,203);
/*!40000 ALTER TABLE `rest_vendor_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_location`
--

DROP TABLE IF EXISTS `restaurant_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_location` (
  `restaurant_id` int NOT NULL,
  `restaurant_name` varchar(45) NOT NULL,
  `street_address` varchar(50) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `parking_information` varchar(45) NOT NULL,
  `alcohol_available` varchar(45) NOT NULL,
  `smoking_allowed` varchar(45) NOT NULL,
  `dress_code` varchar(45) NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_id_UNIQUE` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_location`
--

LOCK TABLES `restaurant_location` WRITE;
/*!40000 ALTER TABLE `restaurant_location` DISABLE KEYS */;
INSERT INTO `restaurant_location` VALUES (1,'House of Asia','9350 Snowden River Pkwy','Columbia','MD','(410) 381-3844','yes','no','no','no'),(2,'The Walrus Oyster & Ale House','10300 Little Patuxent Pkwy','Columbia','MD','(410) 730-5738','yes','yes','yes','no'),(3,'Chutney Indian Restaurant','9400 Snowden River Pkwy','Columbia','MD','(410) 381-3600','yes','yes','yes','no'),(4,'Stanford Grill','8900 Stanford Blvd.','Columbia','MD','(410) 312-0445','yes','no','no','no'),(5,'Bertucci\'s Italian Restaurant','9081 Snowden River Pkwy','Columbia','MD','(410) 312-4800','yes','no','no','no'),(6,'Pub Dog Pizza & Drafthouse','8865 Stanford Blvd., #101','Columbia','MD','(410) 872-0364','yes','no','no','no'),(7,'Hunan Manor','7091 Deepage Dr.','Columbia','MD','(410) 381-1134','yes','yes','yes','no'),(8,'Sonoma\'s Bar & Grill','7284 Cradlerock Way','Columbia','MD','(410) 381-7220','yes','yes','yes','no'),(9,'Coastal Flats','135 Crown Park Ave.','Gaithersburg','MD','(301) 869-8800','no','yes','no','Dressy'),(10,'Barking Mad Cafe','239 Spectrum Ave.','Gaithersburg','MD','(240) 297-6230','no','yes','no','no'),(11,'Thai House Restaurant','8369 Snouffer School Rd.','Gaithersburg','MD','(301) 963-1800','no','yes','yes','Casual'),(12,'First Watch','802 Muddy Branch Rd.','Gaithersburg','MD','(301) 977-9764','no','yes','yes','no'),(13,'Old Town Pour House','212 Ellington Blvd.','Gaithersburg','MD','(301) 963-6281','no','yes','yes','no'),(14,'Ted\'s Bulletin','220 Ellington Blvd.','Gaithersburg','MD','(301) 990-0600','yes','yes','yes','Casual'),(15,'Uncle Julio\'s','231 Rio Blvd.','Gaithersburg','MD','(240) 632-2150','yes','yes','yes','Casual'),(16,'YardHouse','211 Rio Blvd.','Gaithersburg','MD','(240) 683-8790','no','yes','yes','no'),(17,'The Park at 14th','920 14th St. NW','Washington','D.C.','(202) 550-0300','no','yes','yes','Casual'),(18,'HalfSmoke','651 Florida Ave. NW','Washington','D.C.','(202) 986-2079','no','yes','yes','no'),(19,'Ozio Martini and Cigar Lounge','1813 M St. NW','Washington','D.C.','(202) 822-6000','no','yes','no','casual'),(20,'The Gryphon','1337 Connecticut Ave. NW','Washington','D.C.','(202) 827-8980','yes','yes','no','no'),(21,'Hawthorne','1336 U St. NW','Washington','D.C.','(202) 853-9194','yes','no','no','no'),(22,'El Rey','919 U St. NW','Washington','D.C.','(202) 506-6418','no','yes','no','no'),(23,'Copycat Company','1110 H St. NE','Washington','D.C.','(202) 241-1952','no','yes','yes','no'),(24,'Milk and Honey','1245 H St NE','Washington','D.C.','(202) 396-0038','no','yes','no','no'),(25,'Barrel','613 Pennsylvania Ave. SE','Washington','D.C.','(202) 543-3622','yes','yes','no','no'),(26,'Old Towne Inn','14745 Main St.','Upper Marlboro','MD','(301) 627-1400','yes','yes','no','no'),(27,'Marlboro Grille','14606 Main St.','Upper Marlboro','MD','(301) 627-0480','yes','no','no','no'),(28,'Caribbean Flava','5050 Brown Station Rd.','Upper Marlboro','MD','(301) 574-2003','yes','no','no','no'),(29,'Nipsey\'s Restaurant and Grill','5753 Crain Hwy','Upper Marlboro','MD','(301) 627-1395','yes','yes','no','no'),(30,'Jasper\'s','9640 Lottsford Ct.','Upper Marlboro','MD','(301) 883-9500','yes','yes','no','no'),(31,'Babes Boys Tavern','15903 Marlboro Pike','Upper Marlboro','MD','(301) 627-2012','yes','yes','no','no'),(32,'The Groove Restaurant','600 Bowieville Manor Ln.','Upper Marlboro','MD','(301) 249-2701','yes','yes','no','no'),(33,'Casablanca Cafe','8325 Old Marlboro Pike','Upper Marlboro','MD','(301) 735-5888','yes','no','no','no'),(34,'Pho Thom','7313 Baltimore Ave.','College Park','MD','(240) 582-7530','no','yes','no','no'),(35,'Potomac Pizza','7777 Baltimore Ave., Suite D','College Park','MD','(240) 582-5242','no','no','no','no'),(36,'The Jerk Pit','9078 Baltimore Ave.','College Park','MD','(301) 982-5375','yes','yes','no','no'),(37,'Marathon Deli ','4429 Lehigh Rd.','College Park','MD','(301) 927-6717','yes','yes','no','no'),(38,'Blaze ','7419 Baltimore Ave.','College Park','MD','(301) 392-2324','no','no','no','no'),(39,'Nandos','7400 Baltimore Ave.','College Park','MD','(240) 582-8420','no','yes','no','no'),(40,'Lotsa','4350 Knox Rd.','College Park','MD','(410) 849-4400','yes','no','no','no');
/*!40000 ALTER TABLE `restaurant_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewers`
--

DROP TABLE IF EXISTS `reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewers` (
  `reviewer_id` int NOT NULL AUTO_INCREMENT,
  `reviewer_first_name` varchar(45) NOT NULL,
  `reviewer_last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`reviewer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewers`
--

LOCK TABLES `reviewers` WRITE;
/*!40000 ALTER TABLE `reviewers` DISABLE KEYS */;
INSERT INTO `reviewers` VALUES (1903,'Adelaide','Jeffries'),(1905,'Joshua','Nirha'),(1906,'Ross','Medley'),(1907,'Amy','Wilson'),(1912,'Angel','Morris'),(1917,'Trey','Brown'),(1922,'Christopher','James'),(1923,'Phillip','Page'),(1924,'Justin','Neverson'),(1933,'Tania','Brown'),(1937,'Hope','Giles'),(1945,'Gabrielle','Stewart'),(1949,'Sam','Mendez'),(1958,'Selena','Cyrus'),(1963,'Mark','Spencer'),(1964,'Valerie','Thompson'),(1967,'Carlos','Serrano'),(1970,'Michael','Dickson'),(1978,'Dorothy','Garcia'),(1981,'Cynthia','Rowley'),(1982,'Shawn','Lisbon'),(1984,'Joshua','Kellson'),(1988,'Jana','Allison'),(1992,'Cynthia','Ortega'),(1994,'Sommer','David'),(2000,'Amina','Lampkin'),(2001,'Samya','Epps'),(2002,'George','Mason'),(2003,'Micah','Johnson'),(2004,'McKenna','Hughes');
/*!40000 ALTER TABLE `reviewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stay_at_home`
--

DROP TABLE IF EXISTS `stay_at_home`;
/*!50001 DROP VIEW IF EXISTS `stay_at_home`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stay_at_home` AS SELECT 
 1 AS `Restaurant`,
 1 AS `Number of reservations`,
 1 AS `City`,
 1 AS `State`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `vendor_id` smallint NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `vendor_city` varchar(45) NOT NULL,
  `vendor_state` varchar(45) NOT NULL,
  `category_of_vendor` varchar(45) NOT NULL DEFAULT 'Variety',
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `vendor_id_UNIQUE` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1691,'Contract Furniture Options Inc.','Bethesda','MD','Furniture'),(1692,'JP Restaurant Group Inc.','Washington','D.C.','Variety supplies'),(1693,'Wine and Spirits Wholesalers of America','Washington','D.C.','Alcohol'),(1694,'The Restaurant Store','Baltimore','MD','Variety supplies'),(1695,'Chesapeake Wholesale Inc.','Leonardtown','MD','Cleaning supplies'),(1696,'Restaurant Depot','Capitol Heights','MD','Wholesale food'),(1697,'Jetro/Restaurant Depot','Baltimore','MD','Wholesale food'),(1698,'Atlantic Foodservice Equipment','Beltsvilee','MD','Variety supplies'),(1699,'National Restaurant Equipment and Supply','Laurel','MD','Variety supplies'),(1800,'J&J Meats','Columbia','MD','Meat'),(1801,'coca cola','Laurel','MD','Soft drinks'),(1802,'David fishery','Beltsville','MD','Fish'),(1803,'Brown Liquors','Clinton','MD','Alcohol'),(1804,'farmers market','Largo','MD','Vegetables'),(1805,'nestle','Silver Spring','MD','Breakfast supplies'),(1806,'whang who','Frederick','MD','Spices'),(1807,'clean max','Hagerstown','MD','Cleaning supplies'),(1808,'marty\'s cutlerys','College Park','MD','Cutlery'),(2010,'Cured Desserts','Miami','FL','Breakfast supplies'),(2011,'Speedy Furniture','Baltimore','MD','Furniture'),(2012,'Crisp & Clean','Hagerstown','MD','Cleaning Supplies'),(2013,'Quick Liq','Baltimore','MD','Alcohol'),(2014,'Meat Hub','Cumberland','MD','Wholesale food'),(2015,'All You Can Eat','Denton','MD','Wholesale food'),(2016,'Joe\'s Fish Hub','Baltimore','MD','Seafood'),(2017,'CokeSolutions','Ann Arbor','MD','Drinks'),(2018,'Maryland Butchery','Annapolis','MD','Meat'),(2019,'Wholesale Meats','Baltimore','MD','Meat'),(2020,'Tatchim Dairy','Laurel','MD','Dairy'),(2021,'Organic Drinks','College Park','MD','Soft drinks');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'restaurants'
--

--
-- Final view structure for view `board_of_restaurants`
--

/*!50001 DROP VIEW IF EXISTS `board_of_restaurants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `board_of_restaurants` AS select `restaurant_location`.`restaurant_name` AS `Restaurant Name`,`restaurant_location`.`street_address` AS `Restaurant Address`,`rest_vendor_order`.`order_total` AS `Order Amounts`,`t2`.`rating` AS `Ratings`,`vendors`.`company_name` AS `Supplying Vendor`,concat(`vendors`.`vendor_city`,', ',`vendors`.`vendor_state`) AS `Vendor Location` from (((`restaurant_location` join `rest_vendor_order` on((`restaurant_location`.`restaurant_id` = `rest_vendor_order`.`restaurant_id`))) join `vendors` on((`rest_vendor_order`.`vendor_id` = `vendors`.`vendor_id`))) join (select `restaurant_location`.`restaurant_name` AS `restaurant_name`,`ratings`.`rating` AS `rating` from (`restaurant_location` join `ratings` on((`restaurant_location`.`restaurant_id` = `ratings`.`restaurant_id`)))) `t2` on((`restaurant_location`.`restaurant_name` = `t2`.`restaurant_name`))) where (`restaurant_location`.`state` = 'MD') group by `restaurant_location`.`restaurant_name` with rollup having (`rest_vendor_order`.`order_total` > 100) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `partying`
--

/*!50001 DROP VIEW IF EXISTS `partying`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `partying` AS select `restaurant_location`.`restaurant_name` AS `Restaurant Name` from `restaurant_location` where ((`restaurant_location`.`alcohol_available` = 'yes') and (`restaurant_location`.`smoking_allowed` = 'yes')) order by `restaurant_location`.`restaurant_name` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_vending`
--

/*!50001 DROP VIEW IF EXISTS `payment_vending`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_vending` AS select `payment_types`.`type_name` AS `Payment Type`,count(`rvo`.`payment_type_id`) AS `Occurrences`,sum(`rvo`.`order_total`) AS `Total amount paid in this type` from (`rest_vendor_order` `rvo` join `payment_types` on((`rvo`.`payment_type_id` = `payment_types`.`payment_type_id`))) group by `rvo`.`payment_type_id` order by count(`rvo`.`payment_type_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ratings_and_party_size`
--

/*!50001 DROP VIEW IF EXISTS `ratings_and_party_size`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ratings_and_party_size` AS select `loc`.`restaurant_name` AS `Restaurant`,format(avg(`rate`.`rating`),2) AS `Average rating`,format(avg(`res`.`party_size`),0) AS `Average party size` from ((`ratings` `rate` join `restaurant_location` `loc` on((`rate`.`restaurant_id` = `loc`.`restaurant_id`))) join `reservations` `res` on((`rate`.`restaurant_id` = `res`.`restaurant_id`))) group by `rate`.`restaurant_id` having (avg(`rate`.`rating`) > 3.5) order by avg(`rate`.`rating`) desc,avg(`res`.`party_size`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stay_at_home`
--

/*!50001 DROP VIEW IF EXISTS `stay_at_home`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stay_at_home` AS select `loc`.`restaurant_name` AS `Restaurant`,count(`resv`.`reservation_date`) AS `Number of reservations`,`loc`.`city` AS `City`,`loc`.`state` AS `State` from (`reservations` `resv` join `restaurant_location` `loc` on((`resv`.`restaurant_id` = `loc`.`restaurant_id`))) where (`resv`.`reservation_date` > ((2020 - 3) - 30)) group by `resv`.`restaurant_id` order by count(`resv`.`reservation_date`) desc,`loc`.`restaurant_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-11 20:34:26
