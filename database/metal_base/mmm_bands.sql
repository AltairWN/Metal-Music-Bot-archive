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
  `BAND_NAME` text NOT NULL,
  `ALIAS` tinytext,
  `DESCRIPTION` text,
  `ACTIVE` enum('Y','N') NOT NULL DEFAULT 'Y',
  `COMMENTS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BAND_NAME` (`BAND_NAME`(255)),
  FULLTEXT KEY `ALIAS` (`ALIAS`,`BAND_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='Группы';

-- Дамп данных таблицы metal_base.mmm_bands: ~168 rows (приблизительно)
DELETE FROM `mmm_bands`;
/*!40000 ALTER TABLE `mmm_bands` DISABLE KEYS */;
INSERT INTO `mmm_bands` (`ID`, `BAND_NAME`, `ALIAS`, `DESCRIPTION`, `ACTIVE`, `COMMENTS`) VALUES
	(1, 'Haggard', NULL, NULL, 'Y', NULL),
	(2, 'Dark Lunacy', NULL, NULL, 'Y', NULL),
	(3, 'Kiuas', NULL, NULL, 'Y', NULL),
	(4, 'Tracedawn', NULL, NULL, 'Y', NULL),
	(5, 'Diablo Swing Orchestra', NULL, NULL, 'Y', NULL),
	(6, 'Lunatic Gods', NULL, NULL, 'Y', NULL),
	(7, 'Dreamtale', NULL, NULL, 'Y', NULL),
	(8, 'Kypck', NULL, NULL, 'Y', NULL),
	(9, 'Digimortal', NULL, NULL, 'Y', NULL),
	(10, 'Rave The Reqviem', NULL, NULL, 'Y', NULL),
	(11, 'Nidra', NULL, NULL, 'Y', NULL),
	(12, 'Опричь', NULL, NULL, 'Y', NULL),
	(13, 'Message to Omega', NULL, NULL, 'Y', NULL),
	(14, 'Hagl', NULL, NULL, 'Y', NULL),
	(15, 'Смута', NULL, NULL, 'Y', NULL),
	(16, 'Stilverlight', NULL, NULL, 'Y', NULL),
	(17, 'Летаргия', NULL, NULL, 'Y', NULL),
	(18, 'Desert', NULL, NULL, 'Y', NULL),
	(19, 'Funeral Oppression', NULL, NULL, 'Y', NULL),
	(20, 'Rosa Infra', NULL, NULL, 'Y', NULL),
	(21, 'Helguard', NULL, NULL, 'Y', NULL),
	(22, 'Second To Sun', NULL, NULL, 'Y', NULL),
	(23, 'My Darkest Fury', NULL, NULL, 'Y', NULL),
	(24, 'Rainwill', NULL, NULL, 'Y', NULL),
	(25, 'Hordak', NULL, NULL, 'Y', NULL),
	(26, 'Conflict', NULL, NULL, 'Y', NULL),
	(27, 'Distant Sun', NULL, NULL, 'Y', NULL),
	(28, 'Age Of Rage', NULL, NULL, 'Y', NULL),
	(29, 'Efpix', NULL, NULL, 'Y', NULL),
	(30, 'Atra Hora', NULL, NULL, 'Y', NULL),
	(31, 'Immorgon', NULL, NULL, 'Y', NULL),
	(32, 'Hollow Mirror', NULL, NULL, 'Y', NULL),
	(33, 'Аметист', NULL, NULL, 'Y', NULL),
	(34, 'Starsoup', NULL, NULL, 'Y', NULL),
	(35, 'Be Under Arms', NULL, NULL, 'Y', NULL),
	(36, 'Khaos Labyrinth', NULL, NULL, 'Y', NULL),
	(37, 'Поцелуй Бомжа', NULL, NULL, 'Y', NULL),
	(38, 'Varg', NULL, NULL, 'Y', NULL),
	(39, 'Trollfest', NULL, NULL, 'Y', NULL),
	(40, 'Eluveitie', NULL, NULL, 'Y', NULL),
	(41, 'Running Wild', NULL, NULL, 'Y', NULL),
	(42, 'Alestorm', NULL, NULL, 'Y', NULL),
	(43, 'Swashbuckle', NULL, NULL, 'Y', 'Совместить'),
	(44, 'Anaal Nathrakh', NULL, NULL, 'Y', NULL),
	(45, 'Benediction', NULL, NULL, 'Y', NULL),
	(46, 'Professor Fate', NULL, NULL, 'Y', NULL),
	(47, 'Mistress', NULL, NULL, 'Y', NULL),
	(48, 'Melechesh', NULL, NULL, 'Y', 'Тег Middle Eastern Folk Metal'),
	(49, 'Myrath', NULL, NULL, 'Y', 'Progressive Metal with Middle Eastern Folk Influences'),
	(50, 'Orphaned Land', NULL, NULL, 'Y', 'Middle Eastern Folk'),
	(51, 'Scarlet Embrace', NULL, NULL, 'Y', NULL),
	(52, 'Scarleth', NULL, NULL, 'Y', NULL),
	(53, 'X-Fusion', NULL, NULL, 'Y', NULL),
	(54, 'Noisuf-X', NULL, NULL, 'Y', NULL),
	(55, 'Infected Mushroom', NULL, NULL, 'Y', NULL),
	(56, 'Akphaezya', NULL, NULL, 'Y', NULL),
	(57, 'Pryapisme', NULL, NULL, 'Y', NULL),
	(58, 'Carnival In Coal', NULL, NULL, 'Y', NULL),
	(59, 'Wolfchant', NULL, NULL, 'Y', NULL),
	(60, 'Finntroll', NULL, NULL, 'Y', NULL),
	(61, 'October Falls', NULL, NULL, 'Y', NULL),
	(62, 'Amaranthe', NULL, NULL, 'Y', NULL),
	(63, 'Mutiny Within', NULL, NULL, 'Y', NULL),
	(64, 'Shade Empire', NULL, NULL, 'Y', NULL),
	(65, 'The Agonist', NULL, NULL, 'Y', NULL),
	(66, 'Unexpect', NULL, NULL, 'Y', NULL),
	(67, 'Into Eternity', NULL, NULL, 'Y', NULL),
	(68, 'One Man Army and the Undead Quartet', NULL, NULL, 'Y', NULL),
	(69, 'The Crown', NULL, NULL, 'Y', NULL),
	(70, 'Redwest', NULL, NULL, 'Y', NULL),
	(71, 'Dezperadoz', NULL, NULL, 'Y', NULL),
	(72, 'Nothnegal', NULL, NULL, 'Y', NULL),
	(73, 'Persefone', NULL, NULL, 'Y', NULL),
	(74, 'Godkiller', NULL, NULL, 'Y', NULL),
	(75, 'Machinae Supremacy', NULL, NULL, 'Y', NULL),
	(76, 'The Black Mages', NULL, NULL, 'Y', NULL),
	(77, 'Powerglove', NULL, NULL, 'Y', NULL),
	(78, 'Omnium Gatherum', NULL, NULL, 'Y', NULL),
	(79, 'Neaera', NULL, NULL, 'Y', NULL),
	(80, 'Kataklysm', NULL, NULL, 'Y', NULL),
	(81, 'Hypocrisy', NULL, NULL, 'Y', NULL),
	(82, 'Falkenbach', NULL, NULL, 'Y', NULL),
	(83, 'Iwresledabearonce', NULL, NULL, 'Y', NULL),
	(84, 'Paracoccidioidomicosisproctitissarcomucosis', NULL, NULL, 'Y', NULL),
	(85, 'Whourkr', NULL, NULL, 'Y', NULL),
	(86, 'Igorrr', NULL, NULL, 'Y', NULL),
	(87, 'Öxxö xööx', NULL, NULL, 'Y', NULL),
	(88, 'Insane Reality', NULL, NULL, 'Y', NULL),
	(89, 'Александрия', NULL, NULL, 'Y', NULL),
	(90, 'Panopticon Death', NULL, NULL, 'Y', NULL),
	(91, 'Silencer', NULL, NULL, 'Y', NULL),
	(92, 'Diagnose: Lebensgefahr', NULL, NULL, 'Y', NULL),
	(93, 'Persuader', NULL, NULL, 'Y', NULL),
	(94, 'Ramchat', NULL, NULL, 'Y', NULL),
	(95, '6:33 & Arno Strobl', NULL, NULL, 'Y', NULL),
	(96, 'We All Die', NULL, NULL, 'Y', NULL),
	(97, 'Septicflesh', NULL, NULL, 'Y', NULL),
	(98, 'Decapitated', NULL, NULL, 'Y', NULL),
	(99, 'Gojira', NULL, NULL, 'Y', NULL),
	(100, 'Butcher Babies', NULL, NULL, 'Y', NULL),
	(101, 'Luna Mortis', NULL, NULL, 'Y', NULL),
	(102, 'Walls of Jericho', NULL, NULL, 'Y', NULL),
	(103, 'Stolen Babies', NULL, NULL, 'Y', NULL),
	(104, 'In This Moment', NULL, NULL, 'Y', NULL),
	(105, 'Synodik', NULL, NULL, 'Y', NULL),
	(106, 'Illidiance', NULL, NULL, 'Y', NULL),
	(107, 'Kroda', NULL, NULL, 'Y', NULL),
	(108, 'Semargl', NULL, NULL, 'Y', NULL),
	(109, 'Liquid Graveyard', NULL, NULL, 'Y', NULL),
	(110, 'Unsun', NULL, NULL, 'Y', NULL),
	(111, 'Kandia', NULL, NULL, 'Y', NULL),
	(112, 'Mechina', NULL, NULL, 'Y', NULL),
	(113, 'Words of Farewell', NULL, NULL, 'Y', NULL),
	(114, 'Allegaeon', NULL, NULL, 'Y', NULL),
	(115, 'Xerath', NULL, NULL, 'Y', NULL),
	(116, 'Mors Principium Est', NULL, NULL, 'Y', NULL),
	(117, 'Emperor', NULL, NULL, 'Y', NULL),
	(118, 'Peccatum', NULL, NULL, 'Y', NULL),
	(119, 'Thou Shalt Suffer', NULL, NULL, 'Y', NULL),
	(120, 'Ensiferum', NULL, NULL, 'Y', NULL),
	(121, 'Василий Шугалей', NULL, NULL, 'Y', NULL),
	(122, 'Барабанда', NULL, NULL, 'Y', NULL),
	(123, 'Blood Stain Child', NULL, NULL, 'Y', NULL),
	(124, 'Dazzle Vision', NULL, NULL, 'Y', NULL),
	(125, 'Sigh', NULL, NULL, 'Y', NULL),
	(126, 'Xecsnoin', NULL, NULL, 'Y', NULL),
	(127, 'Babymetal', NULL, NULL, 'Y', NULL),
	(128, 'Carach Angren', NULL, NULL, 'Y', NULL),
	(129, 'I Wish You Were Here', NULL, NULL, 'Y', NULL),
	(130, 'Nightwish', NULL, NULL, 'Y', NULL),
	(131, 'Maladie', NULL, NULL, 'Y', NULL),
	(132, 'Shining', NULL, NULL, 'Y', NULL),
	(133, 'Lustre', NULL, NULL, 'Y', NULL),
	(134, 'Ages', NULL, NULL, 'Y', NULL),
	(135, 'Korpiklaani', NULL, NULL, 'Y', NULL),
	(136, 'Kamelot', NULL, NULL, 'Y', NULL),
	(137, 'Nocturnal Depression', NULL, NULL, 'Y', NULL),
	(138, 'Psychonaut 4', NULL, NULL, 'Y', NULL),
	(139, 'Lindemann', NULL, NULL, 'Y', NULL),
	(140, 'Nekrogoblikon', NULL, NULL, 'Y', NULL),
	(141, 'Disarmonia Mundi', NULL, NULL, 'Y', NULL),
	(142, 'Lamb of God', NULL, NULL, 'Y', NULL),
	(143, 'Symphony X', NULL, NULL, 'Y', NULL),
	(144, 'Powerwolf', NULL, NULL, 'Y', NULL),
	(145, 'Disturbed', NULL, NULL, 'Y', NULL),
	(146, 'Bullet For My Valentine', NULL, NULL, 'Y', NULL),
	(147, 'Fear Factory', NULL, NULL, 'Y', NULL),
	(148, 'Wolfheart', NULL, NULL, 'Y', NULL),
	(149, 'Soilwork', NULL, NULL, 'Y', NULL),
	(150, 'Thousand Eyes', NULL, NULL, 'Y', NULL),
	(151, 'Slugdge', NULL, NULL, 'Y', NULL),
	(152, 'Diablo', NULL, NULL, 'Y', NULL),
	(153, 'Seventh Wonder', NULL, NULL, 'Y', NULL),
	(154, 'Devin Townsend', NULL, NULL, 'Y', 'Добавить алиас'),
	(155, 'Hin Onde', NULL, NULL, 'N', NULL),
	(156, 'Batterfly Temple', NULL, NULL, 'Y', NULL),
	(157, 'Темнозорь', NULL, NULL, 'Y', NULL),
	(158, 'Elvenking', NULL, NULL, 'Y', NULL),
	(159, 'Whispered', NULL, NULL, 'Y', NULL),
	(160, 'Shaolin Death Squad', NULL, NULL, 'Y', NULL),
	(161, 'Twelve Foot Ninja', NULL, NULL, 'Y', NULL),
	(162, 'Hatebeak', NULL, NULL, 'Y', NULL),
	(163, 'Caninus', NULL, NULL, 'N', NULL),
	(164, 'Grindmother', NULL, NULL, 'Y', NULL),
	(165, 'Sockweb', NULL, NULL, 'N', NULL),
	(166, 'Solefald', NULL, NULL, 'Y', NULL),
	(167, 'Leprous', NULL, NULL, 'Y', NULL),
	(168, 'Vulture Industries', NULL, NULL, 'Y', NULL);
/*!40000 ALTER TABLE `mmm_bands` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
