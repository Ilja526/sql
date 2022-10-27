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


-- Dumping database structure for hotel
CREATE DATABASE IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hotel`;

-- Dumping structure for table hotel.forgot password?
CREATE TABLE IF NOT EXISTS `forgot password?` (
  `Forgot password_ID` int(11) NOT NULL,
  `E-pasts vai personals datums` char(50) DEFAULT NULL,
  `New password` char(50) DEFAULT NULL,
  `Have an account?` int(11) DEFAULT NULL,
  PRIMARY KEY (`Forgot password_ID`),
  KEY `Have an account?` (`Have an account?`),
  CONSTRAINT `FK_forgot password?_login` FOREIGN KEY (`Have an account?`) REFERENCES `login` (`Login_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hotel.login
CREATE TABLE IF NOT EXISTS `login` (
  `Login_ID` int(11) NOT NULL,
  `Username` char(50) DEFAULT NULL,
  `Password` char(50) DEFAULT NULL,
  `Login` int(11) DEFAULT NULL,
  `Forgot password?` int(11) NOT NULL,
  `Registre new account` int(11) DEFAULT NULL,
  PRIMARY KEY (`Login_ID`),
  KEY `Forgot password?` (`Forgot password?`),
  KEY `Registre new account` (`Registre new account`),
  CONSTRAINT `FK_login_forgot password?` FOREIGN KEY (`Forgot password?`) REFERENCES `forgot password?` (`Forgot password_ID`),
  CONSTRAINT `FK_login_registracija` FOREIGN KEY (`Registre new account`) REFERENCES `registracija` (`Registracija_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hotel.registracija
CREATE TABLE IF NOT EXISTS `registracija` (
  `Registracija_ID` int(11) NOT NULL,
  `Name` char(50) DEFAULT NULL,
  `Surname` char(50) DEFAULT NULL,
  `Vecums` char(50) DEFAULT NULL,
  `E-pasts vai personals datums` char(50) DEFAULT NULL,
  `Telephons` char(50) DEFAULT NULL,
  `Password` char(50) DEFAULT NULL,
  PRIMARY KEY (`Registracija_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hotel.rezervācijas_apstiprinājums
CREATE TABLE IF NOT EXISTS `rezervācijas_apstiprinājums` (
  `Name` char(50) NOT NULL,
  `E-pasts vai personas dati` char(50) DEFAULT NULL,
  `Ierašanās datums` date DEFAULT NULL,
  `Izlidošanas datums` date DEFAULT NULL,
  `Cilvēku skaits` int(11) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
