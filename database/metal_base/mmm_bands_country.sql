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

-- Дамп структуры для таблица metal_base.mmm_bands_country
DROP TABLE IF EXISTS `mmm_bands_country`;
CREATE TABLE IF NOT EXISTS `mmm_bands_country` (
  `BAND` int(11) NOT NULL,
  `COUNTRY` int(11) NOT NULL,
  KEY `FK_mmm_bands_country_mmm_bands` (`BAND`),
  KEY `FK_mmm_bands_country_mmm_country` (`COUNTRY`),
  CONSTRAINT `FK_mmm_bands_country_mmm_bands` FOREIGN KEY (`BAND`) REFERENCES `mmm_bands` (`ID`),
  CONSTRAINT `FK_mmm_bands_country_mmm_country` FOREIGN KEY (`COUNTRY`) REFERENCES `mmm_country` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица связи между группами и странами';

-- Дамп данных таблицы metal_base.mmm_bands_country: ~0 rows (приблизительно)
DELETE FROM `mmm_bands_country`;
/*!40000 ALTER TABLE `mmm_bands_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmm_bands_country` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
