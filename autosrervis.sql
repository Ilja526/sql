-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for auroservis
DROP DATABASE IF EXISTS `auroservis`;
CREATE DATABASE IF NOT EXISTS `auroservis` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_latvian_ci */;
USE `auroservis`;

-- Dumping structure for table auroservis.mašīnas
DROP TABLE IF EXISTS `mašīnas`;
CREATE TABLE IF NOT EXISTS `mašīnas` (
  `mašīnas reģistrācijas numuru` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `marku` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `modeli` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `izlaiduma gadu` int(11) DEFAULT NULL,
  `īpašnieka vārdu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `remonts` varchar(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  KEY `remonts` (`remonts`),
  CONSTRAINT `FK_mašīnas_remonts` FOREIGN KEY (`remonts`) REFERENCES `remonts` (`remonts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table auroservis.mašīnas: ~2 rows (approximately)
/*!40000 ALTER TABLE `mašīnas` DISABLE KEYS */;
INSERT INTO `mašīnas` (`mašīnas reģistrācijas numuru`, `marku`, `modeli`, `izlaiduma gadu`, `īpašnieka vārdu`, `remonts`) VALUES
	('JH-1158', 'ACURA', 'TS', 2010, 'Dima', NULL),
	('YU-8852', 'BMW', 'NU', 2001, 'Andrejs', '1');
/*!40000 ALTER TABLE `mašīnas` ENABLE KEYS */;

-- Dumping structure for table auroservis.remonta darbi
DROP TABLE IF EXISTS `remonta darbi`;
CREATE TABLE IF NOT EXISTS `remonta darbi` (
  `remonta darbi_id` int(11) NOT NULL AUTO_INCREMENT,
  `darba apraksts` varchar(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `izmantoto rezerves daļu daudzums` int(11) DEFAULT NULL,
  PRIMARY KEY (`remonta darbi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table auroservis.remonta darbi: ~4 rows (approximately)
/*!40000 ALTER TABLE `remonta darbi` DISABLE KEYS */;
INSERT INTO `remonta darbi` (`remonta darbi_id`, `darba apraksts`, `izmantoto rezerves daļu daudzums`) VALUES
	(1, 'dzinējs', 2),
	(2, 'riteņi', 8),
	(3, 'gultiņi', 6),
	(4, 'gasimas', 4);
/*!40000 ALTER TABLE `remonta darbi` ENABLE KEYS */;

-- Dumping structure for table auroservis.remonts
DROP TABLE IF EXISTS `remonts`;
CREATE TABLE IF NOT EXISTS `remonts` (
  `remonts_id` varchar(50) COLLATE utf8_latvian_ci NOT NULL DEFAULT 'AUTO_INCREMENT',
  `akta numuru` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `pieņemšanas datumu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `nodošanas datumu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `izmantoto rezerves daļu kopējo vērtību` int(11) DEFAULT NULL,
  `atalgojuma summu` int(11) DEFAULT NULL,
  `remonta darbi` int(11) DEFAULT NULL,
  PRIMARY KEY (`remonts_id`),
  KEY `remonta darbi` (`remonta darbi`),
  CONSTRAINT `FK_remonts_remonta darbi` FOREIGN KEY (`remonta darbi`) REFERENCES `remonta darbi` (`remonta darbi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table auroservis.remonts: ~2 rows (approximately)
/*!40000 ALTER TABLE `remonts` DISABLE KEYS */;
INSERT INTO `remonts` (`remonts_id`, `akta numuru`, `pieņemšanas datumu`, `nodošanas datumu`, `izmantoto rezerves daļu kopējo vērtību`, `atalgojuma summu`, `remonta darbi`) VALUES
	('1', '10', '10 oktobri', '15 decembri', 5000, 7000, 1),
	('2', '16', '7 maija', '7 junija', 4500, 5350, 4);
/*!40000 ALTER TABLE `remonts` ENABLE KEYS */;

-- Dumping structure for table auroservis.rezerves daļas
DROP TABLE IF EXISTS `rezerves daļas`;
CREATE TABLE IF NOT EXISTS `rezerves daļas` (
  `rezerves daļas_id` int(11) NOT NULL AUTO_INCREMENT,
  `nosaukums` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `cena par vienību` int(11) DEFAULT NULL,
  `pieejamo rezerves daļu daudzums` int(11) DEFAULT NULL,
  `remonta darbi` int(11) DEFAULT NULL,
  PRIMARY KEY (`rezerves daļas_id`),
  KEY `remonta darbi` (`remonta darbi`),
  CONSTRAINT `FK_rezerves daļas_remonta darbi` FOREIGN KEY (`remonta darbi`) REFERENCES `remonta darbi` (`remonta darbi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table auroservis.rezerves daļas: ~3 rows (approximately)
/*!40000 ALTER TABLE `rezerves daļas` DISABLE KEYS */;
INSERT INTO `rezerves daļas` (`rezerves daļas_id`, `nosaukums`, `cena par vienību`, `pieejamo rezerves daļu daudzums`, `remonta darbi`) VALUES
	(1, 'signalizācijas uzstādīšana', 1000, 3, 4),
	(2, 'riepu montāža', 500, 4, 1),
	(3, 'bremžu sistēmas remonts', 1500, 2, 3);
/*!40000 ALTER TABLE `rezerves daļas` ENABLE KEYS */;

-- Dumping structure for table auroservis.sadaļas
DROP TABLE IF EXISTS `sadaļas`;
CREATE TABLE IF NOT EXISTS `sadaļas` (
  `rezerves daļu sadaļas nosaukumu` varchar(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `rezerves daļas` int(11) DEFAULT NULL,
  KEY `rezerves daļas` (`rezerves daļas`),
  CONSTRAINT `FK_sadaļas_rezerves daļas` FOREIGN KEY (`rezerves daļas`) REFERENCES `rezerves daļas` (`rezerves daļas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table auroservis.sadaļas: ~3 rows (approximately)
/*!40000 ALTER TABLE `sadaļas` DISABLE KEYS */;
INSERT INTO `sadaļas` (`rezerves daļu sadaļas nosaukumu`, `rezerves daļas`) VALUES
	('signalizācijas uzstādīšana', 1),
	('riepu montāža', 2),
	('bremžu sistēmas remonts', 3);
/*!40000 ALTER TABLE `sadaļas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
