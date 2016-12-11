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
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
