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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `roles_origin` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `roles` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `app_header` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `app_body` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('0','Manager','Manajer','D0','FFF0');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('1','Book Keeper','Pembuku','00','0000');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('2','Treasurer','Bendahara','20','0080');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('30','Purchasing Administrator','Administrator Pembelian','20','0280');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('31','Purchasing Officer','Petugas Pembelian','20','0F70');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('40','Storage Administrator','Administrator Gudang','20','0E20');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('41','Main Storage Officer','Petugas Gudang Utama','20','0620');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('42','Operational Storage Officer','Petugas Gudang Operasional','20','0200');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('43','Storefront Officer','Petugas Etalase','20','0200');
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('50','Sales Administrator','Administrator Penjualan',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('51','Presription Order Officer','Petugas Order Resep',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('52','General Order Officer','Petugas Order Umum',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('53','Data Inspecting Officer','Petugas Pemeriksa Data',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('54','Material Inspecting Officer','Petugas Pemeriksa Barang',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('55','Cashier','Kasir',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('61','Pharmacist','Apoteker',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('62','Pharmacist Assistant','Asisten Apoteker',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('63','Packaging Operator','Operator Pengemasan',NULL,NULL);
INSERT INTO `roles` (`id`, `roles_origin`, `roles`, `app_header`, `app_body`) VALUES ('7','Archivist','Petugas Arsip',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-31 15:45:21
