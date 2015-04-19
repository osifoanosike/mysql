-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SQLTutorialDB
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Branches`
--

DROP TABLE IF EXISTS `Branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Branches` (
  `bcode` varchar(4) DEFAULT NULL,
  `librarian` varchar(200) DEFAULT NULL,
  `address` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branches`
--

LOCK TABLES `Branches` WRITE;
/*!40000 ALTER TABLE `Branches` DISABLE KEYS */;
INSERT INTO `Branches` VALUES ('B1','John Smith','2 Anglessa Rd'),('B2','Mary Jones','34 Pearse St'),('B3','Francis Owens','Grange X');
/*!40000 ALTER TABLE `Branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeWallets`
--

DROP TABLE IF EXISTS `EmployeeWallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeeWallets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` date NOT NULL,
  `balance` decimal(10,0) DEFAULT '0',
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Employees` (`employee_id`),
  CONSTRAINT `fk_Employees` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeWallets`
--

LOCK TABLES `EmployeeWallets` WRITE;
/*!40000 ALTER TABLE `EmployeeWallets` DISABLE KEYS */;
INSERT INTO `EmployeeWallets` VALUES (1,'0000-00-00',24000,2),(2,'0000-00-00',5500000,3);
/*!40000 ALTER TABLE `EmployeeWallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employees` (
  `EmpID` int(11) NOT NULL AUTO_INCREMENT,
  `Lastname` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Team` varchar(25) DEFAULT NULL,
  `DATE_HIRED` date DEFAULT NULL,
  `Sex` varchar(7) NOT NULL,
  `YearsOfExperience` int(11) DEFAULT NULL,
  `OfficeLocation` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Anosike','Osifo','osifo@dealdey.com','IT','Software development','0000-00-00','',0,NULL,22),(2,'Akinjobi','Emmanuel','e.akinjobi@gmail.com','IT','Infrastructure','0000-00-00','Male',2,NULL,26),(3,'Anosike','Emmanuel','e.aanosie@gmail.com','IT','Infrastructure','0000-00-00','Male',2,NULL,26),(4,'Akinloye','Emmanuel','e.akinloye@gmail.com','IT','Dev','0000-00-00','Male',0,NULL,29);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeesBKUP`
--

DROP TABLE IF EXISTS `EmployeesBKUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeesBKUP` (
  `EmpID` int(11) NOT NULL AUTO_INCREMENT,
  `Lastname` varchar(50) DEFAULT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Team` varchar(25) DEFAULT NULL,
  `DATE_HIRED` date DEFAULT NULL,
  `Sex` varchar(7) NOT NULL,
  `YearsOfExperience` int(11) DEFAULT NULL,
  `OfficeLocation` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeesBKUP`
--

LOCK TABLES `EmployeesBKUP` WRITE;
/*!40000 ALTER TABLE `EmployeesBKUP` DISABLE KEYS */;
INSERT INTO `EmployeesBKUP` VALUES (1,'Anosike','Osifo','osifo@dealdey.com','IT','Software development','0000-00-00','',0,NULL,22),(2,'Akinjobi','Emmanuel','e.akinjobi@gmail.com','IT','Infrastructure','0000-00-00','Male',0,NULL,26),(3,'Anosike','Emmanuel','e.aanosie@gmail.com','IT','Infrastructure','0000-00-00','Male',0,NULL,26),(4,'Akinloye','Emmanuel','e.akinloye@gmail.com','IT','Dev','0000-00-00','Male',0,NULL,29);
/*!40000 ALTER TABLE `EmployeesBKUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Holdings`
--

DROP TABLE IF EXISTS `Holdings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Holdings` (
  `branch` varchar(5) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Holdings`
--

LOCK TABLES `Holdings` WRITE;
/*!40000 ALTER TABLE `Holdings` DISABLE KEYS */;
INSERT INTO `Holdings` VALUES ('B1','Sussanah',3),('B1','How to',2),('B1','A hist',1),('B2','How to',4),('B2','Computers',2),('B3','A hist',1),('B3','Computers',4),('B3','Susannah',3),('B3','The Wife',1);
/*!40000 ALTER TABLE `Holdings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Locations` (
  `lname` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
INSERT INTO `Locations` VALUES ('Lincoln','67454533','Lincoln Place'),('O\'Neils','67436437','Pearse St'),('Old Nag','7023421','Dame St'),('Buttery','7678132','College St');
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `MyView`
--

DROP TABLE IF EXISTS `MyView`;
/*!50001 DROP VIEW IF EXISTS `MyView`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `MyView` (
  `EmpID` tinyint NOT NULL,
  `Lastname` tinyint NOT NULL,
  `Firstname` tinyint NOT NULL,
  `Email` tinyint NOT NULL,
  `Department` tinyint NOT NULL,
  `Team` tinyint NOT NULL,
  `DATE_HIRED` tinyint NOT NULL,
  `Sex` tinyint NOT NULL,
  `YearsOfExperience` tinyint NOT NULL,
  `OfficeLocation` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Sandwiches`
--

DROP TABLE IF EXISTS `Sandwiches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sandwiches` (
  `location` varchar(100) DEFAULT NULL,
  `bread` varchar(50) DEFAULT NULL,
  `filling` varchar(100) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sandwiches`
--

LOCK TABLES `Sandwiches` WRITE;
/*!40000 ALTER TABLE `Sandwiches` DISABLE KEYS */;
INSERT INTO `Sandwiches` VALUES ('Lincoln','Rye','Ham',1),('Lincoln','Rye','Ham',1),('O\'Neils','White','Cheese',1),('O\'Neils','Whole','Ham',1),('Old Nag','Rye','Beef',1),('Buttery','White','Ham',1),('Lincoln','Rye','Beef',1),('Lincoln','White','Ham',1),('Old Nag','Rye','Ham',1),('O\'Neils','White','Turkey',1),('Buttery','White','Cheese',1);
/*!40000 ALTER TABLE `Sandwiches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tastes`
--

DROP TABLE IF EXISTS `Tastes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tastes` (
  `name` varchar(20) DEFAULT NULL,
  `Filling` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tastes`
--

LOCK TABLES `Tastes` WRITE;
/*!40000 ALTER TABLE `Tastes` DISABLE KEYS */;
INSERT INTO `Tastes` VALUES ('Brown','Turkey'),('Brown','Beef'),('Brown','Ham'),('Jones','Cheese'),('Green','Beef'),('Green','Turkey'),('Green','Cheese');
/*!40000 ALTER TABLE `Tastes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Titles`
--

DROP TABLE IF EXISTS `Titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Titles` (
  `title` varchar(150) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Titles`
--

LOCK TABLES `Titles` WRITE;
/*!40000 ALTER TABLE `Titles` DISABLE KEYS */;
INSERT INTO `Titles` VALUES ('Sussanah','Ann Brown','Macmillian'),('How to Fish','Amy Fly','Stop Press'),('A history of Dublin','David little','Wiley'),('Computers','Blaise Pascal','Applewoods'),('The Wife','Ann Brown','Macmillian');
/*!40000 ALTER TABLE `Titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `MyView`
--

/*!50001 DROP TABLE IF EXISTS `MyView`*/;
/*!50001 DROP VIEW IF EXISTS `MyView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `MyView` AS select `Employees`.`EmpID` AS `EmpID`,`Employees`.`Lastname` AS `Lastname`,`Employees`.`Firstname` AS `Firstname`,`Employees`.`Email` AS `Email`,`Employees`.`Department` AS `Department`,`Employees`.`Team` AS `Team`,`Employees`.`DATE_HIRED` AS `DATE_HIRED`,`Employees`.`Sex` AS `Sex`,`Employees`.`YearsOfExperience` AS `YearsOfExperience`,`Employees`.`OfficeLocation` AS `OfficeLocation` from `Employees` */;
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

-- Dump completed on 2015-04-19 12:12:38
