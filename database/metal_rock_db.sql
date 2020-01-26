-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: metal_rock_db
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `al_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `al_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `al_no_songs` tinyint(3) unsigned NOT NULL,
  `al_genre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `al_year` year(4) DEFAULT NULL,
  `al_average_price` tinyint(3) DEFAULT NULL,
  `band_ba_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`al_id`),
  KEY `fk_album_band1_idx` (`band_ba_id`),
  CONSTRAINT `fk_album_band1` FOREIGN KEY (`band_ba_id`) REFERENCES `band` (`ba_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_has_genre`
--

DROP TABLE IF EXISTS `album_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_has_genre` (
  `album_al_id` int(10) unsigned NOT NULL,
  `genre_ge_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`album_al_id`,`genre_ge_id`),
  KEY `fk_album_has_genre_genre1_idx` (`genre_ge_id`),
  KEY `fk_album_has_genre_album1_idx` (`album_al_id`),
  CONSTRAINT `fk_album_has_genre_album1` FOREIGN KEY (`album_al_id`) REFERENCES `album` (`al_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_has_genre_genre1` FOREIGN KEY (`genre_ge_id`) REFERENCES `genre` (`ge_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_has_genre`
--

LOCK TABLES `album_has_genre` WRITE;
/*!40000 ALTER TABLE `album_has_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band`
--

DROP TABLE IF EXISTS `band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band` (
  `ba_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ba_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ba_genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ba_no_members` smallint(3) DEFAULT NULL,
  `ba_number_of_albums` smallint(3) DEFAULT NULL,
  `ba_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ba_year_established` year(4) DEFAULT NULL,
  `ba_year_disbanded` year(4) DEFAULT NULL,
  PRIMARY KEY (`ba_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band`
--

LOCK TABLES `band` WRITE;
/*!40000 ALTER TABLE `band` DISABLE KEYS */;
/*!40000 ALTER TABLE `band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band_has_genre`
--

DROP TABLE IF EXISTS `band_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band_has_genre` (
  `band_ba_id` int(10) unsigned NOT NULL,
  `genre_ge_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`band_ba_id`,`genre_ge_id`),
  KEY `fk_band_has_genre_genre1_idx` (`genre_ge_id`),
  KEY `fk_band_has_genre_band1_idx` (`band_ba_id`),
  CONSTRAINT `fk_band_has_genre_band1` FOREIGN KEY (`band_ba_id`) REFERENCES `band` (`ba_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_band_has_genre_genre1` FOREIGN KEY (`genre_ge_id`) REFERENCES `genre` (`ge_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band_has_genre`
--

LOCK TABLES `band_has_genre` WRITE;
/*!40000 ALTER TABLE `band_has_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `band_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `band_has_musician`
--

DROP TABLE IF EXISTS `band_has_musician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `band_has_musician` (
  `band_ba_id` int(10) unsigned NOT NULL,
  `musician_mu_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`band_ba_id`,`musician_mu_id`),
  KEY `fk_band_has_musician_musician1_idx` (`musician_mu_id`),
  KEY `fk_band_has_musician_band1_idx` (`band_ba_id`),
  CONSTRAINT `fk_band_has_musician_band1` FOREIGN KEY (`band_ba_id`) REFERENCES `band` (`ba_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_band_has_musician_musician1` FOREIGN KEY (`musician_mu_id`) REFERENCES `musician` (`mu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `band_has_musician`
--

LOCK TABLES `band_has_musician` WRITE;
/*!40000 ALTER TABLE `band_has_musician` DISABLE KEYS */;
/*!40000 ALTER TABLE `band_has_musician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `ge_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ge_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument` (
  `in_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `in_manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `in_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `in_year_produced` year(4) DEFAULT NULL,
  `in_average_price` int(11) DEFAULT NULL,
  `in_description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instrument_type_in_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`in_id`),
  KEY `fk_instrument_instrument_type1_idx` (`instrument_type_in_type_id`),
  CONSTRAINT `fk_instrument_instrument_type1` FOREIGN KEY (`instrument_type_in_type_id`) REFERENCES `instrument_type` (`in_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument`
--

LOCK TABLES `instrument` WRITE;
/*!40000 ALTER TABLE `instrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrument_type`
--

DROP TABLE IF EXISTS `instrument_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrument_type` (
  `in_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `in_type_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`in_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrument_type`
--

LOCK TABLES `instrument_type` WRITE;
/*!40000 ALTER TABLE `instrument_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `instrument_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musician`
--

DROP TABLE IF EXISTS `musician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musician` (
  `mu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mu_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mu_last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mu_role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mu_city_origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_country_origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mu_date_of_birth` date DEFAULT NULL,
  `mu_date_of_death` date DEFAULT NULL,
  PRIMARY KEY (`mu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musician`
--

LOCK TABLES `musician` WRITE;
/*!40000 ALTER TABLE `musician` DISABLE KEYS */;
/*!40000 ALTER TABLE `musician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musician_has_instrument`
--

DROP TABLE IF EXISTS `musician_has_instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musician_has_instrument` (
  `musician_mu_id` int(10) unsigned NOT NULL,
  `instrument_in_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`musician_mu_id`,`instrument_in_id`),
  KEY `fk_musician_has_instrument_instrument1_idx` (`instrument_in_id`),
  KEY `fk_musician_has_instrument_musician1_idx` (`musician_mu_id`),
  CONSTRAINT `fk_musician_has_instrument_instrument1` FOREIGN KEY (`instrument_in_id`) REFERENCES `instrument` (`in_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_musician_has_instrument_musician1` FOREIGN KEY (`musician_mu_id`) REFERENCES `musician` (`mu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musician_has_instrument`
--

LOCK TABLES `musician_has_instrument` WRITE;
/*!40000 ALTER TABLE `musician_has_instrument` DISABLE KEYS */;
/*!40000 ALTER TABLE `musician_has_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musician_has_role`
--

DROP TABLE IF EXISTS `musician_has_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musician_has_role` (
  `musician_mu_id` int(10) unsigned NOT NULL,
  `role_ro_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`musician_mu_id`,`role_ro_id`),
  KEY `fk_musician_has_role_role1_idx` (`role_ro_id`),
  KEY `fk_musician_has_role_musician1_idx` (`musician_mu_id`),
  CONSTRAINT `fk_musician_has_role_musician1` FOREIGN KEY (`musician_mu_id`) REFERENCES `musician` (`mu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_musician_has_role_role1` FOREIGN KEY (`role_ro_id`) REFERENCES `role` (`ro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musician_has_role`
--

LOCK TABLES `musician_has_role` WRITE;
/*!40000 ALTER TABLE `musician_has_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `musician_has_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ro_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ro_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `so_id` int(10) unsigned NOT NULL,
  `so_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_number_in_album` tinyint(3) unsigned NOT NULL,
  `so_duration` smallint(4) unsigned NOT NULL,
  `so_link_yt` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_link_lyrics` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_al_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`so_id`),
  KEY `fk_song_album_idx` (`album_al_id`),
  CONSTRAINT `fk_song_album` FOREIGN KEY (`album_al_id`) REFERENCES `album` (`al_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-26 15:11:10
