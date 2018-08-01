CREATE DATABASE  IF NOT EXISTS `widuran` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `widuran`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: widuran
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `cc` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `bank_acc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_place` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `photo` longblob,
  `signature` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `account`, `password`, `position`, `cc`, `bank_acc`, `birth_place`, `birth_date`, `gender`, `photo`, `signature`) VALUES ('ENG','Enggar Hermani','43711ec4cd0434a2364b4572b687e3cef3cae88dd51db7564bcd1b5092f02d57','43711ec4cd0434a2364b4572b687e3cef3cae88dd51db7564bcd1b5092f02d57','2','1234567890123456','12345678901234','Bogor','1970-10-15',1,NULL,NULL),('LAN','Lani Husadawati','9d8d7dcb8f6d4d71ffc8277e4a8a4326c93da239cace375d47c4a35830b3e88b','9d8d7dcb8f6d4d71ffc8277e4a8a4326c93da239cace375d47c4a35830b3e88b','30','1234567890123456','12345678901234','Solo','1986-08-17',0,NULL,NULL),('WHR','Wongso Hermanto','c85ad879e6f75b0b4b51de83450e5530bfd3fab85cc67418d2251f134f0ef92c','c85ad879e6f75b0b4b51de83450e5530bfd3fab85cc67418d2251f134f0ef92c','0','1234567890123456','12345678901234','Solo','1970-10-15',1,NULL,NULL),('YUS','Yusnita Sri Sundari','8d1677d9647c71255a9093881d0dec82880737a818690d32e342610d5ecaeb9b','8d1677d9647c71255a9093881d0dec82880737a818690d32e342610d5ecaeb9b','31','1234567890123456','12345678901234','Sukoharjo','1990-04-28',0,NULL,NULL);
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

-- Dump completed on 2018-08-02  2:06:34
