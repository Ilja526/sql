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


-- Dumping database structure for kompanijs
CREATE DATABASE IF NOT EXISTS `kompanijs` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_latvian_ci */;
USE `kompanijs`;

-- Dumping structure for table kompanijs.darba uzdevumi
CREATE TABLE IF NOT EXISTS `darba uzdevumi` (
  `darba uzdevumi_id` char(50) COLLATE utf8_latvian_ci NOT NULL DEFAULT 'AUTO_INCREMENT',
  `veiktā darba apraksts` varchar(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  ` atlīdzība` int(11) DEFAULT NULL,
  PRIMARY KEY (`darba uzdevumi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table kompanijs.darba uzdevumi: ~2 rows (approximately)
/*!40000 ALTER TABLE `darba uzdevumi` DISABLE KEYS */;
INSERT INTO `darba uzdevumi` (`darba uzdevumi_id`, `veiktā darba apraksts`, ` atlīdzība`) VALUES
	('1', 'kamēr notiek būvniecība', 150000),
	('2', 'vācot resursus', 200000);
/*!40000 ALTER TABLE `darba uzdevumi` ENABLE KEYS */;

-- Dumping structure for table kompanijs.darbinieki
CREATE TABLE IF NOT EXISTS `darbinieki` (
  `darbinieki_id` int(11) NOT NULL AUTO_INCREMENT,
  `vārds` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `uzvārds` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `tālruņa numurs` int(11) DEFAULT NULL,
  `kvalitātes novērtējums 10 ballu skalā` int(11) DEFAULT NULL,
  PRIMARY KEY (`darbinieki_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table kompanijs.darbinieki: ~5 rows (approximately)
/*!40000 ALTER TABLE `darbinieki` DISABLE KEYS */;
INSERT INTO `darbinieki` (`darbinieki_id`, `vārds`, `uzvārds`, `tālruņa numurs`, `kvalitātes novērtējums 10 ballu skalā`) VALUES
	(1, 'Roberts', 'Apsītis', 21349768, 7),
	(2, 'Gustavs', 'Čukste', 37941269, 8),
	(3, 'Daniels', 'Broks', 94135687, 6),
	(4, 'Olivers', 'Balode', 81394267, 5),
	(5, 'Marks', 'Freimanis', 64135761, 9);
/*!40000 ALTER TABLE `darbinieki` ENABLE KEYS */;

-- Dumping structure for table kompanijs.nodaļas
CREATE TABLE IF NOT EXISTS `nodaļas` (
  `nodoļas_id` int(11) NOT NULL AUTO_INCREMENT,
  `nodaļas nosaukumu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `vadītāja vārdu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `uzvārdu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`nodoļas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table kompanijs.nodaļas: ~2 rows (approximately)
/*!40000 ALTER TABLE `nodaļas` DISABLE KEYS */;
INSERT INTO `nodaļas` (`nodoļas_id`, `nodaļas nosaukumu`, `vadītāja vārdu`, `uzvārdu`) VALUES
	(1, 'būvniecība majas', 'Toms', 'Cērps'),
	(2, 'izstrāde elektrostacijas', 'Ralfs', 'Dāboliņš');
/*!40000 ALTER TABLE `nodaļas` ENABLE KEYS */;

-- Dumping structure for table kompanijs.projekti
CREATE TABLE IF NOT EXISTS `projekti` (
  `projekti` int(11) NOT NULL AUTO_INCREMENT,
  `identifikators` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `uzsākšanas datums` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `ilgums (dienās)` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  `nodošanas datums` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`projekti`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table kompanijs.projekti: ~2 rows (approximately)
/*!40000 ALTER TABLE `projekti` DISABLE KEYS */;
INSERT INTO `projekti` (`projekti`, `identifikators`, `uzsākšanas datums`, `ilgums (dienās)`, `nodošanas datums`) VALUES
	(1, '25', '28 septembris', '100', '17 decembri'),
	(2, '38', '15 marts', '50', '20 junijs');
/*!40000 ALTER TABLE `projekti` ENABLE KEYS */;

-- Dumping structure for table kompanijs.stadijas
CREATE TABLE IF NOT EXISTS `stadijas` (
  `stadijas` int(11) NOT NULL AUTO_INCREMENT,
  `projektu realizācijas stadijas nosaukumu` char(50) COLLATE utf8_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`stadijas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_latvian_ci;

-- Dumping data for table kompanijs.stadijas: ~3 rows (approximately)
/*!40000 ALTER TABLE `stadijas` DISABLE KEYS */;
INSERT INTO `stadijas` (`stadijas`, `projektu realizācijas stadijas nosaukumu`) VALUES
	(1, 'izstrāde'),
	(2, 'būvniecība'),
	(3, 'saskaņošana');
/*!40000 ALTER TABLE `stadijas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
