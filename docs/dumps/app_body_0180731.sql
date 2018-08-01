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
-- Table structure for table `app_body`
--

DROP TABLE IF EXISTS `app_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_body` (
  `id` varchar(2) CHARACTER SET utf8 NOT NULL,
  `app_origin` varchar(145) CHARACTER SET utf8 DEFAULT NULL,
  `app` varchar(145) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_body`
--

LOCK TABLES `app_body` WRITE;
/*!40000 ALTER TABLE `app_body` DISABLE KEYS */;
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('00','Navigators','Pengarah');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('10','Roles','Tugas Jabatan');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('11','Previledges','Hak Pengoperasian');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('12','User List','Daftar Pengguna');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('20','Suppliers','Pemasok');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('21','Materials','Obat');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('22','Inventory','Persediaan');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('23','Specify the Material Request Candidate','Menetapkan Kandidat Permintaan Material');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('24','Material Request Corrections, Validation and Approval','Koreksi, Validasi dan Persetujuan Permintaan Material');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('25','The Making of Purchase Order','Pembuatan Pesanan Pembelian');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('26','Receipt and Inspection of Purchases','Penerimaan dan Pemeriksaan Pembelian');
INSERT INTO `app_body` (`id`, `app_origin`, `app`) VALUES ('27','Purchasing Return','Retur Pembelian');
/*!40000 ALTER TABLE `app_body` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 15:42:41
