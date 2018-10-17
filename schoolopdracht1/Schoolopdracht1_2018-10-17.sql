# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.37)
# Database: Schoolopdracht1
# Generation Time: 2018-10-17 13:40:31 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Mentoren
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Mentoren`;

CREATE TABLE `Mentoren` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Klas` varchar(11) NOT NULL DEFAULT '',
  `Mentor voornaam` varchar(255) NOT NULL DEFAULT '',
  `Mentor tussenvoegsel` varchar(255) DEFAULT NULL,
  `Mentor achternaam` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Mentoren` WRITE;
/*!40000 ALTER TABLE `Mentoren` DISABLE KEYS */;

INSERT INTO `Mentoren` (`id`, `Klas`, `Mentor voornaam`, `Mentor tussenvoegsel`, `Mentor achternaam`)
VALUES
	(1,'1A','Massimo','van','Halen'),
	(2,'1B','Hymke',NULL,'Raas'),
	(3,'1C','Nout',NULL,'Bourgonje'),
	(4,'2A','Koray',NULL,'Prinsen'),
	(5,'2B','Binc',NULL,'Veltkamp'),
	(6,'2C','Tolga',NULL,'Brons'),
	(7,'3A','Valerie','van der','Walle'),
	(8,'3B','Desirée',NULL,'Krommendijk'),
	(9,'3C','Joey','','Sleurink'),
	(10,'4A','Massimo','van','Halen'),
	(11,'4B','Michelangelo',NULL,'Marks'),
	(12,'4C','Nikai',NULL,'Duiveman'),
	(13,'5A','Desirée',NULL,'Breukelman'),
	(14,'5B','Jacko','van','Straaten'),
	(15,'5C','Mariël','van','Wissen');

/*!40000 ALTER TABLE `Mentoren` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Leerlingen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Leerlingen`;

CREATE TABLE `Leerlingen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(255) NOT NULL DEFAULT '',
  `Tussenvoegsel` varchar(255) DEFAULT NULL,
  `Achternaam` varchar(255) NOT NULL DEFAULT '',
  `Mentor` varchar(255) NOT NULL DEFAULT '',
  `Gemiddelde cijfer` float NOT NULL,
  `Klas` varchar(11) NOT NULL DEFAULT '',
  `Jaar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Leerlingen` WRITE;
/*!40000 ALTER TABLE `Leerlingen` DISABLE KEYS */;

INSERT INTO `Leerlingen` (`id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mentor`, `Gemiddelde cijfer`, `Klas`, `Jaar`)
VALUES
	(1,'Dahlia',NULL,'Groen','',0,'1A',1),
	(2,'Hazal',NULL,'Breedveld','',0,'1A',1),
	(3,'Gerke','van','Spijk','',0,'1A',1),
	(4,'Anusha','van','Haren','',0,'1A',1),
	(5,'Yazid',NULL,'Briels','',0,'1A',1),
	(6,'Isa',NULL,'Krabbenborg','',0,'1B',1),
	(7,'Mischa',NULL,'Thelen','',0,'1B',1),
	(8,'Lenno',NULL,'Tempel','',0,'1B',1),
	(9,'Agnetha',NULL,'Potter','',0,'1B',1),
	(10,'Keshia',NULL,'Knoef','',0,'1B',1),
	(11,'Zilan',NULL,'Eussen','',0,'1C',1),
	(12,'Engelbertus',NULL,'Siepel','',0,'1C',1),
	(13,'Yuri',NULL,'Ganpat','',0,'1C',1),
	(14,'Sammy',NULL,'Bulder','',0,'1C',1),
	(15,'Toni','de','Ridder','',0,'1C',1),
	(16,'Mats','van','Zanten','',0,'2A',2),
	(17,'Siena',NULL,'Nootenboom','',0,'2A',2),
	(18,'Mesut',NULL,'Boone','',0,'2A',2),
	(19,'Nyncke',NULL,'Giesbers','',0,'2A',2),
	(20,'Jimme',NULL,'Koks','',0,'2A',2),
	(21,'Loran',NULL,'Kartal','',0,'2B',2),
	(22,'Misty',NULL,'Pierik','',0,'2B',2),
	(23,'Norman',NULL,'Hereijgers','',0,'2B',2),
	(24,'Rudmer',NULL,'Haar','',0,'2B',2),
	(25,'Ylva',NULL,'Overkamp','',0,'2B',2),
	(26,'Silvie','van der','Horst','',0,'2C',2),
	(27,'Kamile',NULL,'Wubben','',0,'2C',2),
	(28,'Igor',NULL,'Merks','',0,'2C',2),
	(29,'Arda',NULL,'Petersen','',0,'2C',2),
	(30,'Goossen','van den','Boogert','',0,'2C',2),
	(31,'Nanne',NULL,'Heuvelman','',0,'3A',3),
	(32,'Annebeth','van','Emmerik','',0,'3A',3),
	(33,'Safiya',NULL,'Broeke','',0,'3A',3),
	(34,'Ouassim',NULL,'Wekema','',0,'3A',3),
	(35,'Matteo',NULL,'Nielen','',0,'3A',3),
	(36,'Maiky',NULL,'Doorn','',0,'3B',3),
	(37,'Jitse',NULL,'Zoontjes','',0,'3B',3),
	(38,'Arnold',NULL,'Bierings','',0,'3B',3),
	(39,'Lydian',NULL,'Camps','',0,'3B',3),
	(40,'Romy',NULL,'Spieker','',0,'3B',3),
	(41,'Mariëlla',NULL,'Hekkert','',0,'3C',3),
	(42,'Ruan',NULL,'Aarts','',0,'3C',3),
	(43,'Glen',NULL,'Geurten','',0,'3C',3),
	(44,'Yaël',NULL,'Lens','',0,'3C',3),
	(45,'Joëy',NULL,'Wolfswinkel','',0,'3C',3),
	(46,'Omaima',NULL,'Poelen','',0,'4A',4),
	(47,'Jorieke',NULL,'Pasterkamp','',0,'4A',4),
	(48,'Miki',NULL,'Steeman','',0,'4A',4),
	(49,'Fouzia',NULL,'Verburg','',0,'4A',4),
	(50,'Samiha',NULL,'Veenhof','',0,'4A',4),
	(51,'Mahdi','van','Harn','',0,'4B',4),
	(52,'Francois',NULL,'Rosmalen','',0,'4B',4),
	(53,'Mattanja',NULL,'Annink','',0,'4B',4),
	(54,'Bertus',NULL,'Hulshof','',0,'4B',4),
	(55,'Jan-Jaap',NULL,'Okhuijsen','',0,'4B',4),
	(56,'Gazi',NULL,'Raats','',0,'4C',4),
	(57,'Greetje','van','Ginneken','',0,'4C',4),
	(58,'Selwin','van','Belkom','',0,'4C',4),
	(59,'Sanae',NULL,'Andriesse','',0,'4C',4),
	(60,'Ganesh',NULL,'Derksen','',0,'4C',4),
	(61,'Harma',NULL,'Harleman','',0,'5A',5),
	(62,'Misja',NULL,'Jansema','',0,'5A',5),
	(63,'Ayah',NULL,'Eertink','',0,'5A',5),
	(64,'Sjon',NULL,'Roosenboom','',0,'5A',5),
	(65,'Nevil',NULL,'Faasen','',0,'5A',5),
	(66,'Jessica',NULL,'Ramadhin','',0,'5B',5),
	(67,'Marisa','van','Zweden','',0,'5B',5),
	(68,'Emese',NULL,'Oprins','',0,'5B',5),
	(69,'Nayomi',NULL,'Waltmans','',0,'5B',5),
	(70,'Omaira',NULL,'Stiekema','',0,'5B',5),
	(71,'Majid','van den ','Blink','',0,'5C',5),
	(72,'Anne-Claire',NULL,'Nanninga','',0,'5C',5),
	(73,'Edina',NULL,'Fox','',0,'5C',5),
	(74,'Brenna',NULL,'Moleman','',0,'5C',5),
	(75,'Hina',NULL,'Gerdes','',0,'5C',5);

/*!40000 ALTER TABLE `Leerlingen` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Leraren
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Leraren`;

CREATE TABLE `Leraren` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Vak(ken)` varchar(255) NOT NULL DEFAULT '',
  `Voornaam` varchar(255) NOT NULL DEFAULT '',
  `Tussenvoegsel` varchar(255) NOT NULL,
  `Achternaam` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Leraren` WRITE;
/*!40000 ALTER TABLE `Leraren` DISABLE KEYS */;

INSERT INTO `Leraren` (`id`, `Vak(ken)`, `Voornaam`, `Tussenvoegsel`, `Achternaam`)
VALUES
	(1,'Geschiedenis','Massimo','van','Halen'),
	(2,'Aardrijkskunde','Hymke','','Raas'),
	(3,'Maatschappijleer','Nout','','Bourgonje'),
	(4,'Wiskunde','Koray','','Prinsen'),
	(5,'Natuurkunde','Binc','','Veltkamp'),
	(6,'Scheikunde','Tolga','','Brons'),
	(7,'Biologie','Valerie','van der','Walle'),
	(8,'ANW','Desirée','','Krommendijk'),
	(9,'Muziek','Joey','','Sleurink'),
	(10,'CKV','Albertje','','Pelgrim'),
	(11,'Engels','Keziah','','Medendorp'),
	(12,'Frans','Wendeline','','Dumoulin'),
	(13,'Duits','Zohra','van','Leussen'),
	(14,'Nederlands','Klaziena','van','Iwaarden'),
	(15,'Grieks','Yarnick','','Ubaghs');

/*!40000 ALTER TABLE `Leraren` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Lokalen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Lokalen`;

CREATE TABLE `Lokalen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Lokaal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Lokalen` WRITE;
/*!40000 ALTER TABLE `Lokalen` DISABLE KEYS */;

INSERT INTO `Lokalen` (`id`, `Lokaal`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10);

/*!40000 ALTER TABLE `Lokalen` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Klassen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Klassen`;

CREATE TABLE `Klassen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Klas` varchar(11) NOT NULL DEFAULT '',
  `Jaar` int(11) NOT NULL,
  `Mentor voornaam` varchar(255) NOT NULL DEFAULT '',
  `Mentor tussenvoegsel` varchar(255) NOT NULL DEFAULT '',
  `Mentor achternaam` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Klassen` WRITE;
/*!40000 ALTER TABLE `Klassen` DISABLE KEYS */;

INSERT INTO `Klassen` (`id`, `Klas`, `Jaar`, `Mentor voornaam`, `Mentor tussenvoegsel`, `Mentor achternaam`)
VALUES
	(1,'1A',1,'Massimo','van','Halen'),
	(2,'1B',1,'Hymke','','Raas'),
	(3,'1C',1,'Nout','','Bourgonje'),
	(4,'2A',2,'Koray','','Prinsen'),
	(5,'2B',2,'Binc','','Veltkamp'),
	(6,'2C',2,'Tolga ','','Brons'),
	(7,'3A',3,'Valerie','van der','Walle'),
	(8,'3B',3,'Desirée','','Krommendijk'),
	(9,'3C',3,'Joey','','Sleurink'),
	(10,'4A',4,'Massimo','van','Halen'),
	(11,'4B',4,'Michelangelo','','Marks'),
	(12,'4C',4,'Nikai','','Duiveman'),
	(13,'5A',5,'Desirée','','Breukelman'),
	(14,'5B',5,'Jacko','van','Straaten'),
	(15,'5C',5,'Mariël','van','Wissen');

/*!40000 ALTER TABLE `Klassen` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
