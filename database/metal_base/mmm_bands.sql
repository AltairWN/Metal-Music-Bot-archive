-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.31-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица metal_base.mmm_bands
DROP TABLE IF EXISTS `mmm_bands`;
CREATE TABLE IF NOT EXISTS `mmm_bands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAND_NAME` tinytext NOT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `BAND_NAME` (`BAND_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='Группы';

-- Дамп данных таблицы metal_base.mmm_bands: ~37 rows (приблизительно)
DELETE FROM `mmm_bands`;
/*!40000 ALTER TABLE `mmm_bands` DISABLE KEYS */;
INSERT INTO `mmm_bands` (`ID`, `BAND_NAME`, `DESCRIPTION`) VALUES
	(1, 'Haggard', NULL),
	(2, 'Dark Lunacy', NULL),
	(3, 'Kiuas', NULL),
	(4, 'Tracedawn', NULL),
	(5, 'Diablo Swing Orchestra', NULL),
	(6, 'Lunatic Gods', NULL),
	(7, 'Dreamtale', NULL),
	(8, 'Kypck', NULL),
	(9, 'Digimortal', NULL),
	(10, 'Rave The Reqviem', NULL),
	(11, 'Nidra', NULL),
	(12, 'Опричь', NULL),
	(13, 'Message to Omega', NULL),
	(14, 'Hagl', NULL),
	(15, 'Смута', NULL),
	(16, 'Stilverlight', NULL),
	(17, 'Летаргия', NULL),
	(18, 'Desert', NULL),
	(19, 'Funeral Oppression', NULL),
	(20, 'Rosa Infra', NULL),
	(21, 'Helguard', NULL),
	(22, 'Second To Sun', NULL),
	(23, 'My Darkest Fury', NULL),
	(24, 'Rainwill', NULL),
	(25, 'Hordak', NULL),
	(26, 'Conflict', NULL),
	(27, 'Distant Sun', NULL),
	(28, 'Age Of Rage', NULL),
	(29, 'Efpix', NULL),
	(30, 'Atra Hora', NULL),
	(31, 'Immorgon', NULL),
	(32, 'Hollow Mirror', NULL),
	(33, 'Аметист', NULL),
	(34, 'Starsoup', NULL),
	(35, 'Be Under Arms', NULL),
	(36, 'Khaos Labyrinth', NULL),
	(37, 'Поцелуй Бомжа', NULL);
/*!40000 ALTER TABLE `mmm_bands` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
