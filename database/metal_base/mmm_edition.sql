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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='Выпуски';

-- Дамп данных таблицы metal_base.mmm_edition: ~72 rows (приблизительно)
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
	(46, 6, 'MMM Live - Carach Angren', 5, 'iIoaUYAfR-o'),
	(47, 1, 'MMM Review - Rave The Reqviem', 3, 'k48anUqw8NU'),
	(48, 2, 'MMM Review - Nidra', 3, '-4I-IxGOy6Q'),
	(50, 3, 'MMM Review - Опричь', 3, 'zpK_-C6aIYI'),
	(51, 4, 'MMM Review - Message to Omega', 3, 'Zk3DyArY4oQ'),
	(53, 5, 'MMM Review - Hagl', 3, 'NcTyxmlpnm4'),
	(54, 6, 'MMM Review - Смута', 3, 'hRHlb3ot7RU'),
	(56, 7, 'MMM Review - Stilverlight', 3, '0Yg2FFOY3S8'),
	(57, 8, 'MMM Review - Летаргия', 3, 'wV_5jwH6vyk'),
	(58, 9, 'MMM Review - Desert', 3, 'SBzUYArfzaA'),
	(59, 10, 'MMM Review - Funeral Oppression', 3, '20q9DeCEKgg'),
	(60, 11, 'MMM Review - Rosa Infra', 3, 'khEhEsdjNvc'),
	(61, 12, 'MMM Review - Helguard', 3, 'HP8pC_keAe4'),
	(62, 13, 'MMM Review - Second To Sun', 3, 'DM7mItdkm-Y'),
	(63, 14, 'MMM Review - My Darkest Fury', 3, 'RZUS4DHUffI'),
	(64, 15, 'MMM Review - Rainwill', 3, 'fPXKUToOX98'),
	(65, 16, 'MMM Review - Hordak', 3, 'gxT_2DtJjbI'),
	(66, 17, 'MMM Review - Conflict', 3, 'SbOrmOIpTfg'),
	(67, 18, 'MMM Review - Distant Sun', 3, '1fJKUJVu36o'),
	(68, 19, 'MMM Review - Age Of Rage', 3, 'LsZtulyLpZc'),
	(69, 20, 'MMM Review - Efpix', 3, 'DKIe3oX4Jaw'),
	(70, 21, 'MMM Review - Atra Hora', 3, 'qx747z3GcXs'),
	(71, 22, 'MMM Review - Immorgon', 3, 'M9_xD6EVEeg'),
	(72, 23, 'MMM Review - Hollow Mirror', 3, 'bd0-7pQ1XO8'),
	(73, 24, 'MMM Review - Аметист', 3, 'Rq2ds1od0x0'),
	(74, 25, 'MMM Review - Starsoup', 3, 'VmIm0HG0NSw'),
	(75, 26, 'MMM Review - Be Under Arms', 3, '6c_tVrkYSeQ'),
	(76, 27, 'MMM Review - Khaos Labyrinth', 3, 'px6M-zOyqrE'),
	(77, 28, 'MMM Review - Поцелуй Бомжа', 3, 'BLgvCRowezI');
/*!40000 ALTER TABLE `mmm_edition` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
