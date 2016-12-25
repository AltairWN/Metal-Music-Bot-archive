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

-- Дамп данных таблицы metal_base.mmm_bands_tags: ~68 rows (приблизительно)
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
	(37, 2);
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
  `BLACKLIST` enum('Y','N') NOT NULL DEFAULT 'N',
  `LAST_REQUEST` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK` (`LINK`),
  KEY `RUBRIC` (`RUBRIC`),
  CONSTRAINT `RUBRIC` FOREIGN KEY (`RUBRIC`) REFERENCES `mmm_rubric` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='Выпуски';

-- Дамп данных таблицы metal_base.mmm_edition: ~72 rows (приблизительно)
DELETE FROM `mmm_edition`;
/*!40000 ALTER TABLE `mmm_edition` DISABLE KEYS */;
INSERT INTO `mmm_edition` (`ID`, `EDITION_NUM`, `NAME`, `RUBRIC`, `LINK`, `BLACKLIST`, `LAST_REQUEST`) VALUES
	(1, 2, 'MMM - Kiuas', 2, '7DmZwiiF3eM', 'N', '2016-12-25 00:08:41'),
	(2, 4, 'MMM - Великий и Могучий', 2, 'IfgfyMskf68', 'Y', '2016-12-25 00:08:41'),
	(3, 3, 'MMM - Предапокалиптические', 2, 'cZ3aFHSaVhE', 'Y', '2016-12-25 00:08:41'),
	(6, 5, 'MMM - Предапокалиптические ч.2', 2, 'E3X7Vkpq5y8', 'Y', '2016-12-25 00:08:41'),
	(7, 6, 'MMM - Новогодние разоблачения', 2, 'WhRnc-XM69k', 'N', '2016-12-25 00:08:41'),
	(8, 7, 'MMM - Heavy Metal Pirates', 2, 'uKJ7YazWqKI', 'N', '2016-12-25 00:08:41'),
	(9, 8, 'MMM - Чумачечий Бирмингем', 2, 'YAVJ5tkUjLE', 'N', '2016-12-25 00:08:41'),
	(10, 9, 'MMM - Восточный экспресс', 2, 'ampAKRdljFQ', 'N', '2016-12-25 00:08:41'),
	(11, 20, 'MMM - Скарлет', 2, 'UcHY2sUd3H0', 'N', '2016-12-25 00:08:41'),
	(12, 10, 'MMM - Первоапрельский', 2, 'A94iAmUslmI', 'N', '2016-12-25 00:08:41'),
	(13, 11, 'MMM - Франзцузский авангард', 2, 'qMVf3YXRG8Q', 'N', '2016-12-25 00:08:41'),
	(14, 12, 'MMM - Мартовский свежак', 2, '8URGxVgaXEY', 'N', '2016-12-25 00:08:41'),
	(15, 13, 'MMM - Они вернулись', 2, '9Sheo24JHIo', 'N', '2016-12-25 00:08:41'),
	(16, 14, 'MMM - Кленовый лист', 2, 'N14P15z8AR4', 'N', '2016-12-25 00:08:41'),
	(17, 15, 'MMM - Второй фронт', 2, 'PRCpRODeL0c', 'N', '2016-12-25 00:08:41'),
	(18, 16, 'MMM - Дикий Запад', 2, 'V52Nt00JyJ4', 'N', '2016-12-25 00:08:41'),
	(19, 17, 'MMM - Маленькая страна', 2, 'bVLnUNr0wt4', 'N', '2016-12-25 00:08:41'),
	(20, 18, 'MMM - Тяжёлые игры', 2, 'fSiU46KqH4c', 'N', '2016-12-25 00:08:41'),
	(21, 19, 'MMM - Вспомнить всё', 2, 'hGP_1NtBLS0', 'N', '2016-12-25 00:08:41'),
	(22, 21, 'MMM - Трудно прочесть', 2, 'IJUG3WFbLtM', 'N', '2016-12-25 00:08:41'),
	(23, 22, 'MMM - Олдскульный Тагил', 2, 'mIdUZXniDk8', 'N', '2016-12-25 00:08:41'),
	(24, 23, 'MMM - Nattramn', 2, 'XrHQlHr3xOI', 'N', '2016-12-25 00:08:41'),
	(25, 24, 'MMM - Второе пришествие', 2, '62VbIu6Shh4', 'N', '2016-12-25 00:08:41'),
	(26, 25, 'MMM - Братья', 2, 'j9O8xJPTgUc', 'N', '2016-12-25 00:08:41'),
	(27, 26, 'MMM - Железные девы (USA)', 2, 'HkWMcAhEhVU', 'N', '2016-12-25 00:08:41'),
	(28, 27, 'MMM - Метаморфозы', 2, 'rgubABryqPQ', 'N', '2016-12-25 00:08:41'),
	(29, 28, 'MMM - Дела семейные', 2, 'nRHSsvwJ-NQ', 'N', '2016-12-25 00:08:41'),
	(30, 29, 'MMM - Открытия 2014', 2, 'JzRSNVMN5Zo', 'N', '2016-12-25 00:08:41'),
	(31, 30, 'MMM - Ihsahn (Emperor, Peccatum, Thou Shalt Suffer)', 2, 'vXn0XfM6kE0', 'N', '2016-12-25 00:08:41'),
	(32, 31, 'MMM - Радость и печаль', 2, 'dfQ7VJk2IMM', 'N', '2016-12-25 00:08:41'),
	(33, 32, 'MMM - Железные девы (Japan)', 2, 'lgYCuO7lt5I', 'N', '2016-12-25 00:08:41'),
	(34, 33, 'MMM - Концептуальные', 2, 'kGRDGsIifjE', 'N', '2016-12-25 00:08:41'),
	(35, 34, 'MMM - Ностальгия', 2, 'xmIJuk_pYCk', 'N', '2016-12-25 00:08:41'),
	(36, 35, 'MMM - Ниндзя', 2, 'yANpf66tafY', 'N', '2016-12-25 00:08:41'),
	(37, 36, 'MMM - Грайндец или самые необычные вокалисты', 2, 'vRHPRqa0QEI', 'N', '2016-12-25 00:08:41'),
	(38, 37, 'MMM - Норвежские эксперименты', 2, 'YixGpIhZXCQ', 'N', '2016-12-25 00:08:41'),
	(39, 1, 'MMM Live - Digimortal', 5, 'VOlmMB80zt4', 'N', '2016-12-25 00:08:41'),
	(40, NULL, 'Digimortal отвечают на вопросы', 6, '8gTQnozvQWk', 'N', '2016-12-25 00:08:41'),
	(41, NULL, '5 причин для металлиста слушать Лепса', 6, 'pQXmbIQGIQo', 'N', '2016-12-25 00:08:41'),
	(42, 2, 'MMM Live - Dark Lunacy', 5, 'FJc2_QpHs4c', 'N', '2016-12-25 00:08:41'),
	(43, 3, 'MMM Live - Мотомалоярославец', 5, 'C7TYM44sXZk', 'N', '2016-12-25 00:08:41'),
	(44, 4, 'MMM Live - Alestorm', 5, 'r3Lr3RzH3qI', 'N', '2016-12-25 00:08:41'),
	(45, 5, 'MMM Live - Rave The Reqviem', 5, '1WeQ6ITnG5U', 'N', '2016-12-25 00:08:41'),
	(46, 6, 'MMM Live - Carach Angren', 5, 'iIoaUYAfR-o', 'N', '2016-12-25 00:08:41'),
	(47, 1, 'MMM Review - Rave The Reqviem', 3, 'k48anUqw8NU', 'N', '2016-12-25 00:08:41'),
	(48, 2, 'MMM Review - Nidra', 3, '-4I-IxGOy6Q', 'N', '2016-12-25 00:08:41'),
	(50, 3, 'MMM Review - Опричь', 3, 'zpK_-C6aIYI', 'N', '2016-12-25 00:08:41'),
	(51, 4, 'MMM Review - Message to Omega', 3, 'Zk3DyArY4oQ', 'N', '2016-12-25 00:08:41'),
	(53, 5, 'MMM Review - Hagl', 3, 'NcTyxmlpnm4', 'N', '2016-12-25 00:08:41'),
	(54, 6, 'MMM Review - Смута', 3, 'hRHlb3ot7RU', 'N', '2016-12-25 00:08:41'),
	(56, 7, 'MMM Review - Stilverlight', 3, '0Yg2FFOY3S8', 'N', '2016-12-25 00:08:41'),
	(57, 8, 'MMM Review - Летаргия', 3, 'wV_5jwH6vyk', 'N', '2016-12-25 00:08:41'),
	(58, 9, 'MMM Review - Desert', 3, 'SBzUYArfzaA', 'N', '2016-12-25 00:08:41'),
	(59, 10, 'MMM Review - Funeral Oppression', 3, '20q9DeCEKgg', 'N', '2016-12-25 00:08:41'),
	(60, 11, 'MMM Review - Rosa Infra', 3, 'khEhEsdjNvc', 'N', '2016-12-25 00:08:41'),
	(61, 12, 'MMM Review - Helguard', 3, 'HP8pC_keAe4', 'N', '2016-12-25 00:08:41'),
	(62, 13, 'MMM Review - Second To Sun', 3, 'DM7mItdkm-Y', 'N', '2016-12-25 00:08:41'),
	(63, 14, 'MMM Review - My Darkest Fury', 3, 'RZUS4DHUffI', 'N', '2016-12-25 00:08:41'),
	(64, 15, 'MMM Review - Rainwill', 3, 'fPXKUToOX98', 'N', '2016-12-25 00:08:41'),
	(65, 16, 'MMM Review - Hordak', 3, 'gxT_2DtJjbI', 'N', '2016-12-25 00:08:41'),
	(66, 17, 'MMM Review - Conflict', 3, 'SbOrmOIpTfg', 'N', '2016-12-25 00:08:41'),
	(67, 18, 'MMM Review - Distant Sun', 3, '1fJKUJVu36o', 'N', '2016-12-25 00:08:41'),
	(68, 19, 'MMM Review - Age Of Rage', 3, 'LsZtulyLpZc', 'N', '2016-12-25 00:08:41'),
	(69, 20, 'MMM Review - Efpix', 3, 'DKIe3oX4Jaw', 'N', '2016-12-25 00:08:41'),
	(70, 21, 'MMM Review - Atra Hora', 3, 'qx747z3GcXs', 'N', '2016-12-25 00:08:41'),
	(71, 22, 'MMM Review - Immorgon', 3, 'M9_xD6EVEeg', 'N', '2016-12-25 00:08:41'),
	(72, 23, 'MMM Review - Hollow Mirror', 3, 'bd0-7pQ1XO8', 'N', '2016-12-25 00:08:41'),
	(73, 24, 'MMM Review - Аметист', 3, 'Rq2ds1od0x0', 'N', '2016-12-25 00:08:41'),
	(74, 25, 'MMM Review - Starsoup', 3, 'VmIm0HG0NSw', 'N', '2016-12-25 00:08:41'),
	(75, 26, 'MMM Review - Be Under Arms', 3, '6c_tVrkYSeQ', 'N', '2016-12-25 00:08:41'),
	(76, 27, 'MMM Review - Khaos Labyrinth', 3, 'px6M-zOyqrE', 'N', '2016-12-25 00:08:41'),
	(77, 28, 'MMM Review - Поцелуй Бомжа', 3, 'BLgvCRowezI', 'N', '2016-12-25 00:08:41');
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

-- Дамп данных таблицы metal_base.mmm_edition_bands: ~91 rows (приблизительно)
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
	(37, 77),
	(8, 2),
	(39, 6),
	(38, 6),
	(40, 6),
	(41, 8),
	(42, 8),
	(43, 8),
	(45, 9),
	(44, 9),
	(47, 9),
	(46, 9),
	(49, 10),
	(48, 10),
	(50, 10),
	(51, 11),
	(52, 11),
	(54, 12),
	(53, 12),
	(55, 12),
	(58, 13),
	(56, 13),
	(57, 13),
	(59, 14),
	(61, 14),
	(60, 14),
	(62, 15),
	(63, 15),
	(64, 15),
	(65, 16),
	(66, 16),
	(67, 16),
	(68, 17),
	(69, 17),
	(70, 18),
	(71, 18),
	(73, 19),
	(74, 19),
	(72, 19),
	(75, 20),
	(76, 20),
	(77, 20),
	(78, 21),
	(79, 21),
	(80, 21),
	(81, 21),
	(82, 21),
	(84, 22),
	(83, 22),
	(86, 22),
	(87, 22),
	(85, 22),
	(88, 23),
	(89, 23),
	(90, 23);
/*!40000 ALTER TABLE `mmm_edition_bands` ENABLE KEYS */;

-- Дамп структуры для таблица metal_base.mmm_rubric
DROP TABLE IF EXISTS `mmm_rubric`;
CREATE TABLE IF NOT EXISTS `mmm_rubric` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `LINK` varchar(255) DEFAULT NULL COMMENT 'Ссылка на плейлист',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK` (`LINK`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Рубрика';

-- Дамп данных таблицы metal_base.mmm_rubric: ~6 rows (приблизительно)
DELETE FROM `mmm_rubric`;
/*!40000 ALTER TABLE `mmm_rubric` DISABLE KEYS */;
INSERT INTO `mmm_rubric` (`ID`, `CODE`, `NAME`, `LINK`) VALUES
	(1, 'abbath', 'ABBATHurt', NULL),
	(2, 'main', 'Номерной выпуск', 'PLbYduGCPae15pVZGMFtEIlgfXv4NvtvNv'),
	(3, 'review', 'Review', 'PLbYduGCPae17fIkj2dPT0by7kGqGixzi2'),
	(4, 'month', 'MMMonth', 'PLbYduGCPae17LDV9ETw711TMT-gmQdQhF'),
	(5, 'live', 'Интервью', 'PLbYduGCPae14f1dZSGhhp2xADhgXBDaPi'),
	(6, 'other', 'Другие рубрики', NULL);
/*!40000 ALTER TABLE `mmm_rubric` ENABLE KEYS */;

-- Дамп структуры для таблица metal_base.mmm_tags
DROP TABLE IF EXISTS `mmm_tags`;
CREATE TABLE IF NOT EXISTS `mmm_tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAG` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `TAGS` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Теги';

-- Дамп данных таблицы metal_base.mmm_tags: ~20 rows (приблизительно)
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

-- Дамп структуры для таблица metal_base.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` mediumint(255) NOT NULL AUTO_INCREMENT,
  `VK_ID` mediumint(20) NOT NULL,
  `BOT_MODE` enum('Y','N') NOT NULL DEFAULT 'N',
  `UPDATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `VK_ID` (`VK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы metal_base.users: ~0 rows (приблизительно)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
