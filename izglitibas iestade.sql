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


-- Dumping database structure for izglītības iestāde
DROP DATABASE IF EXISTS `izglītības iestāde`;
CREATE DATABASE IF NOT EXISTS `izglītības iestāde` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `izglītības iestāde`;

-- Dumping structure for table izglītības iestāde.audzēkņi
DROP TABLE IF EXISTS `audzēkņi`;
CREATE TABLE IF NOT EXISTS `audzēkņi` (
  `audzēkņi_id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `personas kodu` char(50) DEFAULT NULL,
  `vārdu` char(50) DEFAULT NULL,
  `uzvārdu` char(50) DEFAULT NULL,
  `tālruņa numuru` char(50) DEFAULT NULL,
  `dzimšanas dienu` char(50) DEFAULT NULL,
  `vecumu` char(50) DEFAULT NULL,
  `grupas` char(50) DEFAULT NULL,
  PRIMARY KEY (`audzēkņi_id`),
  KEY `FK_audzēkņi_grupas` (`grupas`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.diploma vērtējumi
DROP TABLE IF EXISTS `diploma vērtējumi`;
CREATE TABLE IF NOT EXISTS `diploma vērtējumi` (
  `diploma vērtējumi_id` int(11) NOT NULL AUTO_INCREMENT,
  `vērtējums` int(11) DEFAULT NULL,
  `audzēkņi` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `priekšmeti` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  PRIMARY KEY (`diploma vērtējumi_id`),
  KEY `audzēkņi` (`audzēkņi`),
  KEY `priekšmeti` (`priekšmeti`),
  CONSTRAINT `` FOREIGN KEY (`priekšmeti`) REFERENCES `priekšmeti` (`priekšmeti_id`),
  CONSTRAINT `FK_diploma vērtējumi_audzēkņi` FOREIGN KEY (`audzēkņi`) REFERENCES `audzēkņi` (`audzēkņi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.grupas
DROP TABLE IF EXISTS `grupas`;
CREATE TABLE IF NOT EXISTS `grupas` (
  `grupas_id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `nosaukums` char(50) DEFAULT NULL,
  `audzinātājas vārds` char(50) DEFAULT NULL,
  `uzvārds` char(50) DEFAULT NULL,
  `specialitātes` char(50) DEFAULT NULL,
  PRIMARY KEY (`grupas_id`),
  KEY `FK_grupas_specialitātes` (`specialitātes`),
  CONSTRAINT `FK_grupas_specialitātes` FOREIGN KEY (`specialitātes`) REFERENCES `specialitātes` (`specialitātes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.metodiskās komisijas
DROP TABLE IF EXISTS `metodiskās komisijas`;
CREATE TABLE IF NOT EXISTS `metodiskās komisijas` (
  `metodiskās komisijas_id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `metodiskās komisijas nosaukumu` char(50) DEFAULT NULL,
  PRIMARY KEY (`metodiskās komisijas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.mācību plāni
DROP TABLE IF EXISTS `mācību plāni`;
CREATE TABLE IF NOT EXISTS `mācību plāni` (
  `mācību plāni_id` char(50) NOT NULL DEFAULT '',
  `semestris` int(11) DEFAULT NULL,
  `teorētisko stundu skaits` int(11) DEFAULT NULL,
  `praktisko nodarbību stundu skaits` int(11) DEFAULT NULL,
  `priekšmeti` char(50) DEFAULT NULL,
  `grupa` char(50) DEFAULT NULL,
  `skolotāji` char(50) DEFAULT NULL,
  PRIMARY KEY (`mācību plāni_id`),
  KEY `priekšmeti_grupa_skolotāji` (`priekšmeti`) USING BTREE,
  KEY `FK_mācību plāni_grupas` (`grupa`),
  KEY `FK_mācību plāni_skolotāji` (`skolotāji`),
  CONSTRAINT `FK_mācību plāni_grupas` FOREIGN KEY (`grupa`) REFERENCES `grupas` (`grupas_id`),
  CONSTRAINT `FK_mācību plāni_priekšmeti` FOREIGN KEY (`priekšmeti`) REFERENCES `priekšmeti` (`priekšmeti_id`),
  CONSTRAINT `FK_mācību plāni_skolotāji` FOREIGN KEY (`skolotāji`) REFERENCES `skolotāji` (`skolotāji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.priekšmeti
DROP TABLE IF EXISTS `priekšmeti`;
CREATE TABLE IF NOT EXISTS `priekšmeti` (
  `priekšmeti_id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `nosaukums` char(50) DEFAULT NULL,
  `kopējais teorētisko stundu skaits` int(11) DEFAULT NULL,
  `kopējais praktisko nodarbību skaits` int(11) DEFAULT NULL,
  PRIMARY KEY (`priekšmeti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.skolotāji
DROP TABLE IF EXISTS `skolotāji`;
CREATE TABLE IF NOT EXISTS `skolotāji` (
  `skolotāji_id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `vārdu` char(50) DEFAULT NULL,
  `uzvārdu` char(50) DEFAULT NULL,
  `tālruņa numuru` int(11) DEFAULT NULL,
  `darba stāžu` char(50) DEFAULT NULL,
  `metodiskās komisijas` char(50) DEFAULT NULL,
  PRIMARY KEY (`skolotāji_id`),
  KEY `metodiskās komisijas` (`metodiskās komisijas`),
  CONSTRAINT `FK_skolotāji_metodiskās komisijas` FOREIGN KEY (`metodiskās komisijas`) REFERENCES `metodiskās komisijas` (`metodiskās komisijas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table izglītības iestāde.specialitātes
DROP TABLE IF EXISTS `specialitātes`;
CREATE TABLE IF NOT EXISTS `specialitātes` (
  `specialitātes_id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `programmas kodu` char(50) DEFAULT NULL,
  `programmu nosaukumu` char(50) DEFAULT NULL,
  PRIMARY KEY (`specialitātes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
