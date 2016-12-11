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

-- Дамп структуры для таблица metal_base.mmm_edition_bands
DROP TABLE IF EXISTS `mmm_edition_bands`;
CREATE TABLE IF NOT EXISTS `mmm_edition_bands` (
  `BAND` int(11) NOT NULL,
  `EDITION` int(11) NOT NULL,
  KEY `BAND` (`BAND`),
  KEY `TAG` (`EDITION`),
  CONSTRAINT `FK_edition_bands_bands` FOREIGN KEY (`BAND`) REFERENCES `mmm_bands` (`ID`),
  CONSTRAINT `FK_edition_bands_tags` FOREIGN KEY (`EDITION`) REFERENCES `mmm_edition` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица для связи между группами и выпусками';

-- Дамп данных таблицы metal_base.mmm_edition_bands: ~37 rows (приблизительно)
DELETE FROM `mmm_edition_bands`;
/*!40000 ALTER TABLE `mmm_edition_bands` DISABLE KEYS */;
INSERT INTO `mmm_edition_bands` (`BAND`, `EDITION`) VALUES
	(3, 1),
	(5, 3),
	(6, 3),
	(4, 3),
	(1, 2),
	(2, 2),
	(9, 40),
	(9, 39),
	(10, 45),
	(10, 47),
	(12, 50),
	(11, 48),
	(13, 51),
	(14, 53),
	(15, 54),
	(16, 56),
	(17, 57),
	(18, 58),
	(19, 59),
	(20, 60),
	(21, 61),
	(22, 62),
	(23, 63),
	(24, 64),
	(25, 65),
	(26, 66),
	(27, 67),
	(28, 68),
	(29, 69),
	(30, 70),
	(31, 71),
	(32, 72),
	(33, 73),
	(34, 74),
	(35, 75),
	(36, 76),
	(37, 77);
/*!40000 ALTER TABLE `mmm_edition_bands` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
