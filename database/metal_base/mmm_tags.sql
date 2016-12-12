-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.31 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица metal_base.mmm_tags
DROP TABLE IF EXISTS `mmm_tags`;
CREATE TABLE IF NOT EXISTS `mmm_tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `TAGS` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Теги';

-- Дамп данных таблицы metal_base.mmm_tags: ~17 rows (приблизительно)
DELETE FROM `mmm_tags`;
/*!40000 ALTER TABLE `mmm_tags` DISABLE KEYS */;
INSERT INTO `mmm_tags` (`ID`, `TAG`, `NAME`) VALUES
	(1, 'power', 'Power'),
	(2, 'death', 'Death'),
	(3, 'black', 'Black'),
	(4, 'gothic', 'Gothic'),
	(5, 'avantgarde', 'Avant-garde'),
	(6, 'progressive', 'Progressive'),
	(7, 'thrash', 'Thrash'),
	(8, 'doom', 'Doom'),
	(9, 'atmospheric', 'Atmospheric'),
	(10, 'melodic', 'Melodic'),
	(11, 'groove', 'Groove'),
	(12, 'grind', 'Grind'),
	(13, 'folk', 'Folk'),
	(14, 'pagan', 'Pagan'),
	(15, 'speed', 'Speed'),
	(16, 'industrial', 'Industrial'),
	(17, 'depressive', 'Depressive'),
	(18, 'heavy', 'Heavy'),
	(19, 'modern', 'Modern'),
	(20, 'metalcore', 'Metalcore');
/*!40000 ALTER TABLE `mmm_tags` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
