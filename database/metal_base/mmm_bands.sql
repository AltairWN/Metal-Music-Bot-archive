-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.34-log - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица metal_base.mmm_bands
DROP TABLE IF EXISTS `mmm_bands`;
CREATE TABLE IF NOT EXISTS `mmm_bands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAND_NAME` tinytext NOT NULL,
  `ALIAS` tinytext,
  `DESCRIPTION` text,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `BAND_NAME` (`BAND_NAME`),
  FULLTEXT KEY `ALIAS` (`ALIAS`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='Группы';

-- Дамп данных таблицы metal_base.mmm_bands: ~90 rows (приблизительно)
DELETE FROM `mmm_bands`;
/*!40000 ALTER TABLE `mmm_bands` DISABLE KEYS */;
INSERT INTO `mmm_bands` (`ID`, `BAND_NAME`, `ALIAS`, `DESCRIPTION`) VALUES
	(1, 'Haggard', NULL, NULL),
	(2, 'Dark Lunacy', NULL, NULL),
	(3, 'Kiuas', NULL, NULL),
	(4, 'Tracedawn', NULL, NULL),
	(5, 'Diablo Swing Orchestra', NULL, NULL),
	(6, 'Lunatic Gods', NULL, NULL),
	(7, 'Dreamtale', NULL, NULL),
	(8, 'Kypck', NULL, NULL),
	(9, 'Digimortal', NULL, NULL),
	(10, 'Rave The Reqviem', NULL, NULL),
	(11, 'Nidra', NULL, NULL),
	(12, 'Опричь', NULL, NULL),
	(13, 'Message to Omega', NULL, NULL),
	(14, 'Hagl', NULL, NULL),
	(15, 'Смута', NULL, NULL),
	(16, 'Stilverlight', NULL, NULL),
	(17, 'Летаргия', NULL, NULL),
	(18, 'Desert', NULL, NULL),
	(19, 'Funeral Oppression', NULL, NULL),
	(20, 'Rosa Infra', NULL, NULL),
	(21, 'Helguard', NULL, NULL),
	(22, 'Second To Sun', NULL, NULL),
	(23, 'My Darkest Fury', NULL, NULL),
	(24, 'Rainwill', NULL, NULL),
	(25, 'Hordak', NULL, NULL),
	(26, 'Conflict', NULL, NULL),
	(27, 'Distant Sun', NULL, NULL),
	(28, 'Age Of Rage', NULL, NULL),
	(29, 'Efpix', NULL, NULL),
	(30, 'Atra Hora', NULL, NULL),
	(31, 'Immorgon', NULL, NULL),
	(32, 'Hollow Mirror', NULL, NULL),
	(33, 'Аметист', NULL, NULL),
	(34, 'Starsoup', NULL, NULL),
	(35, 'Be Under Arms', NULL, NULL),
	(36, 'Khaos Labyrinth', NULL, NULL),
	(37, 'Поцелуй Бомжа', NULL, NULL),
	(38, 'Varg', NULL, NULL),
	(39, 'Trollfest', NULL, NULL),
	(40, 'Eluveitie', NULL, NULL),
	(41, 'Running Wild', NULL, NULL),
	(42, 'Alestorm', NULL, NULL),
	(43, 'Swashbuckle', NULL, 'Совместить'),
	(44, 'Anaal Nathrakh', NULL, NULL),
	(45, 'Benediction', NULL, NULL),
	(46, 'Professor Fate', NULL, NULL),
	(47, 'Mistress', NULL, NULL),
	(48, 'Melechesh', NULL, NULL),
	(49, 'Myrath', NULL, NULL),
	(50, 'Orphaned Land', NULL, NULL),
	(51, 'Scarlet Embrace', NULL, NULL),
	(52, 'Scarleth', NULL, NULL),
	(53, 'X-Fusion', NULL, NULL),
	(54, 'Noisuf-X', NULL, NULL),
	(55, 'Infected Mushroom', NULL, NULL),
	(56, 'Akphaezya', NULL, NULL),
	(57, 'Pryapisme', NULL, NULL),
	(58, 'Carnival In Coal', NULL, NULL),
	(59, 'Wolfchant', NULL, NULL),
	(60, 'Finntroll', NULL, NULL),
	(61, 'October Falls', NULL, NULL),
	(62, 'Amaranthe', NULL, NULL),
	(63, 'Mutiny Within', NULL, NULL),
	(64, 'Shade Empire', NULL, NULL),
	(65, 'The Agonist', NULL, NULL),
	(66, 'Unexpect', NULL, NULL),
	(67, 'Into Eternity', NULL, NULL),
	(68, 'One Man Army and the Undead Quartet', NULL, NULL),
	(69, 'The Crown', NULL, NULL),
	(70, 'Redwest', NULL, NULL),
	(71, 'Dezperadoz', NULL, NULL),
	(72, 'Nothnegal', NULL, NULL),
	(73, 'Persefone', NULL, NULL),
	(74, 'Godkiller', NULL, NULL),
	(75, 'Machinae Supremacy', NULL, NULL),
	(76, 'The Black Mages', NULL, NULL),
	(77, 'Powerglove', NULL, NULL),
	(78, 'Omnium Gatherum', NULL, NULL),
	(79, 'Neaera', NULL, NULL),
	(80, 'Kataklysm', NULL, NULL),
	(81, 'Hypocrisy', NULL, NULL),
	(82, 'Falkenbach', NULL, NULL),
	(83, 'Iwresledabearonce', NULL, NULL),
	(84, 'Paracoccidioidomicosisproctitissarcomucosis', NULL, NULL),
	(85, 'Whourkr', NULL, NULL),
	(86, 'Igorrr', NULL, NULL),
	(87, 'Öxxö xööx', NULL, NULL),
	(88, 'Insane Reality', NULL, NULL),
	(89, 'Александрия', NULL, NULL),
	(90, 'Panopticon Death', NULL, NULL);
/*!40000 ALTER TABLE `mmm_bands` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
