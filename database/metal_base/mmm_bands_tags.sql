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

-- Дамп структуры для таблица metal_base.mmm_bands_tags
DROP TABLE IF EXISTS `mmm_bands_tags`;
CREATE TABLE IF NOT EXISTS `mmm_bands_tags` (
  `BAND` int(11) NOT NULL,
  `TAG` int(11) NOT NULL,
  KEY `FK__tags` (`TAG`),
  KEY `FK_bands_tags_bands` (`BAND`),
  CONSTRAINT `FK__tags` FOREIGN KEY (`TAG`) REFERENCES `mmm_tags` (`ID`),
  CONSTRAINT `FK_bands_tags_bands` FOREIGN KEY (`BAND`) REFERENCES `mmm_bands` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица для связи групп и тегов';

-- Дамп данных таблицы metal_base.mmm_bands_tags: ~8 rows (приблизительно)
DELETE FROM `mmm_bands_tags`;
/*!40000 ALTER TABLE `mmm_bands_tags` DISABLE KEYS */;
INSERT INTO `mmm_bands_tags` (`BAND`, `TAG`) VALUES
	(3, 2),
	(3, 1),
	(4, 4),
	(5, 5),
	(5, 6),
	(1, 6),
	(2, 2),
	(2, 4);
/*!40000 ALTER TABLE `mmm_bands_tags` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
