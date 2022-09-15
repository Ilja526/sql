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


-- Dumping database structure for izglitibas_iestade_mb
CREATE DATABASE IF NOT EXISTS `izglitibas_iestade_mb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `izglitibas_iestade_mb`;

-- Dumping structure for table izglitibas_iestade_mb.audzekni
CREATE TABLE IF NOT EXISTS `audzekni` (
  `PerKods_ID` char(12) COLLATE ucs2_latvian_ci NOT NULL,
  `Name` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `Surname` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Vecums` int(11) DEFAULT NULL,
  `FK_GroupName_ID` char(20) COLLATE ucs2_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`PerKods_ID`),
  KEY `FK_audzekni_grupas` (`FK_GroupName_ID`),
  CONSTRAINT `FK_audzekni_grupas` FOREIGN KEY (`FK_GroupName_ID`) REFERENCES `grupas` (`GroupName_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.audzekni: ~18 rows (approximately)
/*!40000 ALTER TABLE `audzekni` DISABLE KEYS */;
INSERT INTO `audzekni` (`PerKods_ID`, `Name`, `Surname`, `Number`, `BirthDate`, `Vecums`, `FK_GroupName_ID`) VALUES
	('010205-22708', 'Ričards', 'Calkovskis', 22190360, '2022-09-13', 0, 'D1-1'),
	('060104-25333', 'Armands', 'Zeibs', 28941234, '1999-09-13', 23, 'D1-1'),
	('070104-25333', 'Raivo', 'Perusenko', 22071234, '2000-12-12', 21, 'D1-1'),
	('120104-25333', 'Dainis', 'Alunjans', 23871234, '2004-01-12', 17, 'D4-2'),
	('121204-45454', 'Maris', 'Danne', 25252525, '2004-12-12', 17, 'D1-1'),
	('121212-12121', 'Ilja', 'Rimša', 28646683, '2004-12-20', 17, 'D4-1'),
	('121312-12121', 'Aleksandra', 'Priede', 12123322, '2003-12-20', 17, 'D4-2'),
	('131313-13121', 'Kristpas', 'Berzins', 26123233, '2003-01-12', 18, 'D4-2'),
	('131313-13131', 'Arkadijs', 'Parovozovs', 26123233, '2004-01-12', 18, 'D4-1'),
	('170205-34343', 'Aleksuanrs', 'Goseks', 24242424, '2005-02-17', 17, 'DP2-1'),
	('191204-25123', 'Roberts', 'Alunjans', 26252525, '2004-12-19', 17, 'D4-1'),
	('201204-12121', 'Ilja', 'Jolkins', 28646683, '2004-12-20', 17, 'DP2-1'),
	('210804-21213', 'Leonardo', 'Da Vinci', 21232123, '2004-08-21', 17, 'D1-1'),
	('220105-56565', 'Danils', 'E-studijs', 26262626, '2005-01-22', 17, 'D1-1'),
	('230504-21321', 'Danils', 'Loceks', 29292929, '2004-05-23', 17, 'D4-1'),
	('230604-21323', 'Andis', 'Zavarkins', 21232123, '2004-06-23', 17, 'D1-1'),
	('281204-21213', 'Andrejs', 'Ķirbis', 21232123, '2004-12-28', 17, 'DP2-1'),
	('311204-23232', 'Ralfs', 'Novikovs', 23232323, '2004-12-31', 17, 'DP2-1');
/*!40000 ALTER TABLE `audzekni` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.diploma_vertejumi
CREATE TABLE IF NOT EXISTS `diploma_vertejumi` (
  `DiplomaVertejumi_ID` int(11) NOT NULL,
  `Vertejumi` varchar(3) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `FK_PerKods_ID` char(12) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `FK_Prieksmeta_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`DiplomaVertejumi_ID`),
  KEY `FK_diploma vertejumi_audzekni` (`FK_PerKods_ID`),
  KEY `FK_diploma vertejumi_prieksmeti` (`FK_Prieksmeta_ID`) USING BTREE,
  CONSTRAINT `FK_diploma vertejumi_audzekni` FOREIGN KEY (`FK_PerKods_ID`) REFERENCES `audzekni` (`PerKods_ID`),
  CONSTRAINT `FK_diploma vertejumi_prieksmeti` FOREIGN KEY (`FK_Prieksmeta_ID`) REFERENCES `prieksmeti` (`Prieksmeta_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.diploma_vertejumi: ~24 rows (approximately)
/*!40000 ALTER TABLE `diploma_vertejumi` DISABLE KEYS */;
INSERT INTO `diploma_vertejumi` (`DiplomaVertejumi_ID`, `Vertejumi`, `FK_PerKods_ID`, `FK_Prieksmeta_ID`) VALUES
	(1, '2', '170205-34343', 1),
	(2, '2', '170205-34343', 2),
	(3, 'n/v', '170205-34343', 3),
	(4, '10', '170205-34343', 4),
	(5, '5', '220105-56565', 1),
	(6, '8', '220105-56565', 2),
	(7, '9', '220105-56565', 3),
	(8, '5', '220105-56565', 4),
	(9, 'n/v', '201204-12121', 1),
	(10, '5', '201204-12121', 2),
	(11, '4', '201204-12121', 3),
	(12, '3', '201204-12121', 4),
	(13, '2', '311204-23232', 1),
	(14, '1', '311204-23232', 2),
	(15, '2', '311204-23232', 3),
	(16, '3', '311204-23232', 4),
	(17, '10', '121204-45454', 1),
	(18, '10', '121204-45454', 2),
	(19, '10', '121204-45454', 3),
	(20, '10', '121204-45454', 4),
	(21, '2', '170205-34343', 5),
	(22, '7', '201204-12121', 5),
	(23, 'n/v', '311204-23232', 5),
	(24, '3', '170205-34343', 5);
/*!40000 ALTER TABLE `diploma_vertejumi` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.grupas
CREATE TABLE IF NOT EXISTS `grupas` (
  `GroupName_ID` char(20) COLLATE ucs2_latvian_ci NOT NULL,
  `AudzName` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `AudzSurname` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `FK_ProgKods_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GroupName_ID`),
  KEY `FK_grupas_specialitates` (`FK_ProgKods_ID`),
  CONSTRAINT `FK_grupas_specialitates` FOREIGN KEY (`FK_ProgKods_ID`) REFERENCES `specialitates` (`ProgKods_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.grupas: ~4 rows (approximately)
/*!40000 ALTER TABLE `grupas` DISABLE KEYS */;
INSERT INTO `grupas` (`GroupName_ID`, `AudzName`, `AudzSurname`, `FK_ProgKods_ID`) VALUES
	('D1-1', 'Nikita', 'Loceks', 33483011),
	('D4-1', 'Nikita', 'Zasunko', 33484011),
	('D4-2', 'Aleksandrs', 'Astrosaps', 33483011),
	('DP2-1', 'Valerija', 'Jolkina', 33484011);
/*!40000 ALTER TABLE `grupas` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.macibu plani
CREATE TABLE IF NOT EXISTS `macibu plani` (
  `MacibuPlani_ID` int(11) NOT NULL,
  `Semestris` int(11) DEFAULT NULL,
  `TeorStunduSk` int(11) DEFAULT NULL,
  `PrakStunduSk` int(11) DEFAULT NULL,
  `FK_Skolotaji_ID` int(11) DEFAULT NULL,
  `FK_GroupName_ID` char(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `FK_Prieksmeta_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MacibuPlani_ID`),
  KEY `FK__skolotaji` (`FK_Skolotaji_ID`),
  KEY `FK__grupas` (`FK_GroupName_ID`),
  KEY `FK_macibu plani_prieksmeti` (`FK_Prieksmeta_ID`) USING BTREE,
  CONSTRAINT `FK__grupas` FOREIGN KEY (`FK_GroupName_ID`) REFERENCES `grupas` (`GroupName_ID`),
  CONSTRAINT `FK__skolotaji` FOREIGN KEY (`FK_Skolotaji_ID`) REFERENCES `skolotaji` (`Skolotaji_ID`),
  CONSTRAINT `FK_macibu plani_prieksmeti` FOREIGN KEY (`FK_Prieksmeta_ID`) REFERENCES `prieksmeti` (`Prieksmeta_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.macibu plani: ~7 rows (approximately)
/*!40000 ALTER TABLE `macibu plani` DISABLE KEYS */;
INSERT INTO `macibu plani` (`MacibuPlani_ID`, `Semestris`, `TeorStunduSk`, `PrakStunduSk`, `FK_Skolotaji_ID`, `FK_GroupName_ID`, `FK_Prieksmeta_ID`) VALUES
	(1, 1, 300, 400, 1, 'DP2-1', 1),
	(2, 2, 300, 500, 2, 'DT2-1', 2),
	(3, 2, 350, 200, 3, 'DP2-1', 3),
	(4, 1, 350, 200, 4, 'DT2-1', 4),
	(5, 1, 350, 200, 2, 'DT2-1', 2),
	(6, 1, 120, 15, 3, 'D4-1', 2),
	(7, 2, 200, 20, 4, 'D4-1', 4);
/*!40000 ALTER TABLE `macibu plani` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.metodiskas komisijas
CREATE TABLE IF NOT EXISTS `metodiskas komisijas` (
  `komisija_ID` int(11) NOT NULL,
  `KomisijasName` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`komisija_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.metodiskas komisijas: ~2 rows (approximately)
/*!40000 ALTER TABLE `metodiskas komisijas` DISABLE KEYS */;
INSERT INTO `metodiskas komisijas` (`komisija_ID`, `KomisijasName`) VALUES
	(1, 'Informacijas un komunikacijas tehnologijas'),
	(2, 'Matematika un fizika');
/*!40000 ALTER TABLE `metodiskas komisijas` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.prieksmeti
CREATE TABLE IF NOT EXISTS `prieksmeti` (
  `Prieksmeta_ID` int(11) NOT NULL,
  `PrieksmetaName` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `TeorStunduSk` int(11) DEFAULT NULL,
  `PrakStunduSk` int(11) DEFAULT NULL,
  PRIMARY KEY (`Prieksmeta_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.prieksmeti: ~5 rows (approximately)
/*!40000 ALTER TABLE `prieksmeti` DISABLE KEYS */;
INSERT INTO `prieksmeti` (`Prieksmeta_ID`, `PrieksmetaName`, `TeorStunduSk`, `PrakStunduSk`) VALUES
	(1, 'Fizika', 60, 20),
	(2, 'Matematika', 120, 16),
	(3, 'Informacijas un komunikacijas tehnologijas', 140, 0),
	(4, 'Sistemu programmesana PB2', 160, 20),
	(5, 'Datu bazu programmesana', 142, 0);
/*!40000 ALTER TABLE `prieksmeti` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.skolotaji
CREATE TABLE IF NOT EXISTS `skolotaji` (
  `Skolotaji_ID` int(11) NOT NULL,
  `Name` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `Surname` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `DarbaStaze` int(11) DEFAULT NULL,
  `FK_Komisija_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Skolotaji_ID`),
  KEY `FK_skolotaji_metodiskas komisijas` (`FK_Komisija_ID`),
  CONSTRAINT `FK_skolotaji_metodiskas komisijas` FOREIGN KEY (`FK_Komisija_ID`) REFERENCES `metodiskas komisijas` (`komisija_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.skolotaji: ~7 rows (approximately)
/*!40000 ALTER TABLE `skolotaji` DISABLE KEYS */;
INSERT INTO `skolotaji` (`Skolotaji_ID`, `Name`, `Surname`, `Number`, `DarbaStaze`, `FK_Komisija_ID`) VALUES
	(1, 'Valerija', 'Koka', 22190360, 23, 1),
	(2, 'Emils', 'Dzelis', 23232323, 24, 2),
	(3, 'Sir', 'Bobathan', 24242424, 22, 1),
	(4, 'Grafs', 'Jazz', 25252525, 11, 2),
	(5, 'Elita', 'Bootyvica', 26262626, 2, 2),
	(6, 'Danils', 'Madonis', 23871234, 10, 1),
	(7, 'Marcis', 'Mednis', 24971324, 11, 2);
/*!40000 ALTER TABLE `skolotaji` ENABLE KEYS */;

-- Dumping structure for table izglitibas_iestade_mb.specialitates
CREATE TABLE IF NOT EXISTS `specialitates` (
  `ProgKods_ID` int(11) NOT NULL,
  `ProgName` varchar(50) COLLATE ucs2_latvian_ci DEFAULT NULL,
  PRIMARY KEY (`ProgKods_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_latvian_ci;

-- Dumping data for table izglitibas_iestade_mb.specialitates: ~2 rows (approximately)
/*!40000 ALTER TABLE `specialitates` DISABLE KEYS */;
INSERT INTO `specialitates` (`ProgKods_ID`, `ProgName`) VALUES
	(33483011, 'Datorsistemas, datubazes un datortikli'),
	(33484011, 'Programmssana');
/*!40000 ALTER TABLE `specialitates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
