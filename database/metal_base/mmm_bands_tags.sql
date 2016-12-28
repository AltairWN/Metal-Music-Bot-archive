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

-- Дамп данных таблицы metal_base.mmm_bands_tags: ~98 rows (приблизительно)
DELETE FROM `mmm_bands_tags`;
/*!40000 ALTER TABLE `mmm_bands_tags` DISABLE KEYS */;
INSERT INTO `mmm_bands_tags` (`BAND`, `TAG`) VALUES
	(3, 2),
	(3, 1),
	(4, 10),
	(5, 5),
	(5, 6),
	(1, 6),
	(2, 2),
	(2, 10),
	(6, 8),
	(6, 2),
	(6, 3),
	(6, 9),
	(4, 2),
	(7, 10),
	(7, 1),
	(8, 8),
	(9, 16),
	(10, 16),
	(11, 3),
	(11, 8),
	(12, 13),
	(13, 11),
	(14, 14),
	(14, 3),
	(15, 14),
	(16, 1),
	(16, 10),
	(17, 9),
	(17, 2),
	(18, 1),
	(19, 3),
	(19, 17),
	(20, 4),
	(20, 16),
	(21, 13),
	(21, 10),
	(21, 2),
	(22, 11),
	(22, 3),
	(23, 10),
	(23, 2),
	(23, 11),
	(24, 2),
	(24, 10),
	(25, 14),
	(26, 16),
	(27, 1),
	(27, 7),
	(28, 18),
	(29, 16),
	(29, 10),
	(29, 2),
	(30, 3),
	(30, 2),
	(30, 10),
	(31, 2),
	(31, 10),
	(31, 14),
	(31, 10),
	(31, 14),
	(32, 2),
	(32, 10),
	(32, 20),
	(33, 18),
	(34, 6),
	(36, 3),
	(37, 12),
	(37, 2),
	(35, 11),
	(35, 21),
	(38, 14),
	(38, 3),
	(38, 10),
	(38, 2),
	(39, 13),
	(40, 10),
	(40, 2),
	(40, 13),
	(41, 18),
	(41, 1),
	(41, 15),
	(42, 13),
	(42, 1),
	(43, 2),
	(43, 7),
	(44, 3),
	(44, 16),
	(44, 22),
	(45, 2),
	(46, 23),
	(47, 22),
	(47, 24),
	(48, 3),
	(48, 2),
	(49, 6),
	(50, 2),
	(50, 2),
	(50, 6);
/*!40000 ALTER TABLE `mmm_bands_tags` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
