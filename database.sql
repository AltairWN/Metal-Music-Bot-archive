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

-- Дамп структуры для таблица metal_base.mmm_bands
DROP TABLE IF EXISTS `mmm_bands`;
CREATE TABLE IF NOT EXISTS `mmm_bands` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAND_NAME` tinytext NOT NULL,
  `DESCRIPTION` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Группы';

-- Дамп данных таблицы metal_base.mmm_bands: ~9 rows (приблизительно)
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
	(9, 'Digimortal', NULL);
/*!40000 ALTER TABLE `mmm_bands` ENABLE KEYS */;


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


-- Дамп структуры для таблица metal_base.mmm_country
DROP TABLE IF EXISTS `mmm_country`;
CREATE TABLE IF NOT EXISTS `mmm_country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` char(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Страны';

-- Дамп данных таблицы metal_base.mmm_country: ~0 rows (приблизительно)
DELETE FROM `mmm_country`;
/*!40000 ALTER TABLE `mmm_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmm_country` ENABLE KEYS */;


-- Дамп структуры для таблица metal_base.mmm_edition
DROP TABLE IF EXISTS `mmm_edition`;
CREATE TABLE IF NOT EXISTS `mmm_edition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EDITION_NUM` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `RUBRIC` int(11) NOT NULL,
  `LINK` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK` (`LINK`),
  KEY `RUBRIC` (`RUBRIC`),
  CONSTRAINT `RUBRIC` FOREIGN KEY (`RUBRIC`) REFERENCES `mmm_rubric` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Выпуски';

-- Дамп данных таблицы metal_base.mmm_edition: ~36 rows (приблизительно)
DELETE FROM `mmm_edition`;
/*!40000 ALTER TABLE `mmm_edition` DISABLE KEYS */;
INSERT INTO `mmm_edition` (`ID`, `EDITION_NUM`, `NAME`, `RUBRIC`, `LINK`) VALUES
	(1, 2, 'MMM - Kiuas', 2, '7DmZwiiF3eM'),
	(2, 4, 'MMM - Великий и Могучий', 2, 'IfgfyMskf68'),
	(3, 3, 'MMM - Предапокалиптические', 2, 'cZ3aFHSaVhE'),
	(6, 5, 'MMM - Предапокалиптические ч.2', 2, 'E3X7Vkpq5y8'),
	(7, 6, 'MMM - Новогодние разоблачения', 2, 'WhRnc-XM69k'),
	(8, 7, 'MMM - Heavy Metal Pirates', 2, 'uKJ7YazWqKI'),
	(9, 8, 'MMM - Чумачечий Бирмингем', 2, 'YAVJ5tkUjLE'),
	(10, 9, 'MMM - Восточный экспресс', 2, 'ampAKRdljFQ'),
	(11, 20, 'MMM - Скарлет', 2, 'UcHY2sUd3H0'),
	(12, 10, 'MMM - Первоапрельский', 2, 'A94iAmUslmI'),
	(13, 11, 'MMM - Франзцузский авангард', 2, 'qMVf3YXRG8Q'),
	(14, 12, 'MMM - Мартовский свежак', 2, '8URGxVgaXEY'),
	(15, 13, 'MMM - Они вернулись', 2, '9Sheo24JHIo'),
	(16, 14, 'MMM - Кленовый лист', 2, 'N14P15z8AR4'),
	(17, 15, 'MMM - Второй фронт', 2, 'PRCpRODeL0c'),
	(18, 16, 'MMM - Дикий Заказ', 2, 'V52Nt00JyJ4'),
	(19, 17, 'MMM - Маленькая страна', 2, 'bVLnUNr0wt4'),
	(20, 18, 'MMM - Тяжёлые игры', 2, 'fSiU46KqH4c'),
	(21, 19, 'MMM - Вспомнить всё', 2, 'hGP_1NtBLS0'),
	(22, 21, 'MMM - Трудно прочесть', 2, 'IJUG3WFbLtM'),
	(23, 22, 'MMM - Олдскульный Тагил', 2, 'mIdUZXniDk8'),
	(24, 23, 'MMM - Nattramn', 2, 'XrHQlHr3xOI'),
	(25, 24, 'MMM - Второе пришествие', 2, '62VbIu6Shh4'),
	(26, 25, 'MMM - Братья', 2, 'j9O8xJPTgUc'),
	(27, 26, 'MMM - Железные девы (USA)', 2, 'HkWMcAhEhVU'),
	(28, 27, 'MMM - Метаморфозы', 2, 'rgubABryqPQ'),
	(29, 28, 'MMM - Дела семейные', 2, 'nRHSsvwJ-NQ'),
	(30, 29, 'MMM - Открытия 2014', 2, 'JzRSNVMN5Zo'),
	(31, 30, 'MMM - Ihsahn (Emperor, Peccatum, Thou Shalt Suffer)', 2, 'vXn0XfM6kE0'),
	(32, 31, 'MMM - Радость и печаль', 2, 'dfQ7VJk2IMM'),
	(33, 32, 'MMM - Железные девы (Japan)', 2, 'lgYCuO7lt5I'),
	(34, 33, 'MMM - Концептуальные', 2, 'kGRDGsIifjE'),
	(35, 34, 'MMM - Ностальгия', 2, 'xmIJuk_pYCk'),
	(36, 35, 'MMM - Ниндзя', 2, 'yANpf66tafY'),
	(37, 36, 'MMM - Грайндец или самые необычные вокалисты', 2, 'vRHPRqa0QEI'),
	(38, 37, 'MMM - Норвежские эксперименты', 2, 'YixGpIhZXCQ'),
	(39, 1, 'MMM Live - Digimortal', 5, 'VOlmMB80zt4'),
	(40, NULL, 'Digimortal отвечают на вопросы', 6, '8gTQnozvQWk'),
	(41, NULL, '5 причин для металлиста слушать Лепса', 6, 'pQXmbIQGIQo'),
	(42, 2, 'MMM Live - Dark Lunacy', 5, 'FJc2_QpHs4c'),
	(43, 3, 'MMM Live - Мотомалоярославец', 5, 'C7TYM44sXZk'),
	(44, 4, 'MMM Live - Alestorm', 5, 'r3Lr3RzH3qI'),
	(45, 5, 'MMM Live - Rave The Reqviem', 5, '1WeQ6ITnG5U'),
	(46, 6, 'MMM Live - Carach Angren', 5, 'iIoaUYAfR-o');
/*!40000 ALTER TABLE `mmm_edition` ENABLE KEYS */;


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

-- Дамп данных таблицы metal_base.mmm_edition_bands: ~6 rows (приблизительно)
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
	(9, 39);
/*!40000 ALTER TABLE `mmm_edition_bands` ENABLE KEYS */;


-- Дамп структуры для таблица metal_base.mmm_rubric
DROP TABLE IF EXISTS `mmm_rubric`;
CREATE TABLE IF NOT EXISTS `mmm_rubric` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` char(50) NOT NULL,
  `NAME` char(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Рубрика';

-- Дамп данных таблицы metal_base.mmm_rubric: ~6 rows (приблизительно)
DELETE FROM `mmm_rubric`;
/*!40000 ALTER TABLE `mmm_rubric` DISABLE KEYS */;
INSERT INTO `mmm_rubric` (`ID`, `CODE`, `NAME`) VALUES
	(1, 'abbath', 'ABBATHurt'),
	(2, 'main', 'Номерной выпуск'),
	(3, 'review', 'Review'),
	(4, 'month', 'MMMonth'),
	(5, 'interview', 'Интервью'),
	(6, 'other', 'Другие рубрики');
/*!40000 ALTER TABLE `mmm_rubric` ENABLE KEYS */;


-- Дамп структуры для таблица metal_base.mmm_tags
DROP TABLE IF EXISTS `mmm_tags`;
CREATE TABLE IF NOT EXISTS `mmm_tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG` char(255) NOT NULL,
  `NAME` char(255) NOT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `TAGS` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Теги';

-- Дамп данных таблицы metal_base.mmm_tags: ~6 rows (приблизительно)
DELETE FROM `mmm_tags`;
/*!40000 ALTER TABLE `mmm_tags` DISABLE KEYS */;
INSERT INTO `mmm_tags` (`ID`, `TAG`, `NAME`) VALUES
	(1, 'power', 'Power'),
	(2, 'death', 'Death'),
	(3, 'black', 'Black'),
	(4, 'mdm', 'Melodic Death Metal'),
	(5, 'avantgarde', 'Avant-garde'),
	(6, 'progressive', 'Progressive'),
	(7, 'thrash', 'Thrash');
/*!40000 ALTER TABLE `mmm_tags` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
