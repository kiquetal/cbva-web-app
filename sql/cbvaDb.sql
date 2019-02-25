-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cbvaDb
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `firefighter`
--

DROP TABLE IF EXISTS `firefighter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firefighter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ba` int(11) NOT NULL,
  `swore_date` date DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ba` (`ba`),
  KEY `person_id` (`person_id`),
  KEY `rank_id` (`rank_id`),
  CONSTRAINT `firefighter_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `firefighter_ibfk_2` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firefighter`
--

LOCK TABLES `firefighter` WRITE;
/*!40000 ALTER TABLE `firefighter` DISABLE KEYS */;
INSERT INTO `firefighter` VALUES (513,1,NULL,1,NULL,2,1),(514,2,NULL,2,NULL,3,1),(515,3,NULL,3,NULL,3,1),(516,4,NULL,4,NULL,3,1),(517,5,NULL,5,NULL,4,1),(518,6,NULL,6,NULL,3,1),(519,7,NULL,7,NULL,3,1),(520,8,NULL,8,NULL,3,1),(521,9,NULL,9,NULL,3,1),(522,11,NULL,10,NULL,6,1),(523,12,NULL,11,NULL,3,1),(524,13,NULL,12,NULL,6,1),(525,14,NULL,13,NULL,3,1),(526,15,NULL,14,NULL,3,1),(527,16,NULL,15,NULL,7,1),(528,17,NULL,16,NULL,3,1),(529,18,NULL,17,NULL,2,1),(530,19,NULL,18,NULL,3,1),(531,20,NULL,19,NULL,4,1),(532,21,NULL,20,NULL,3,1),(533,22,NULL,21,NULL,3,1),(534,23,NULL,22,NULL,4,1),(535,24,NULL,23,NULL,4,1),(536,25,NULL,24,NULL,3,1),(537,26,NULL,25,NULL,3,1),(538,27,NULL,26,NULL,4,1),(539,28,NULL,27,NULL,6,1),(540,29,NULL,28,NULL,3,1),(541,30,NULL,29,NULL,4,1),(542,31,NULL,30,NULL,3,1),(543,32,NULL,31,NULL,3,1),(544,33,NULL,32,NULL,3,1),(545,34,NULL,33,NULL,3,1),(546,35,NULL,34,NULL,3,1),(547,36,NULL,35,NULL,3,1),(548,37,NULL,36,NULL,3,1),(549,38,NULL,37,NULL,2,1),(550,39,NULL,38,NULL,3,1),(551,40,NULL,39,NULL,3,1),(552,41,NULL,40,NULL,8,1),(553,42,NULL,41,NULL,3,1),(554,43,NULL,42,NULL,6,1),(555,44,NULL,43,NULL,3,1),(556,45,NULL,44,NULL,3,1),(557,46,NULL,45,NULL,3,1),(558,47,NULL,46,NULL,3,1),(559,48,NULL,47,NULL,6,1),(560,49,NULL,48,NULL,3,1),(561,50,NULL,49,NULL,3,1),(562,51,NULL,50,NULL,3,1),(563,52,NULL,51,NULL,3,1),(564,53,NULL,52,NULL,3,1),(565,54,NULL,53,NULL,7,1),(566,55,NULL,54,NULL,7,1),(567,56,NULL,55,NULL,3,1),(568,57,NULL,56,NULL,9,1),(569,58,NULL,57,NULL,7,1),(570,59,NULL,58,NULL,6,1),(571,60,NULL,59,NULL,8,1),(572,61,NULL,60,NULL,3,1),(573,62,NULL,61,NULL,3,1),(574,63,NULL,62,NULL,3,1),(575,64,NULL,63,NULL,2,1),(576,65,NULL,64,NULL,2,1),(577,66,NULL,65,NULL,3,1),(578,67,NULL,66,NULL,8,1),(579,68,NULL,67,NULL,3,1),(580,69,NULL,68,NULL,3,1),(581,70,NULL,69,NULL,3,1),(582,71,NULL,70,NULL,3,1),(583,72,NULL,71,NULL,3,1),(584,73,NULL,72,NULL,6,1),(585,74,NULL,73,NULL,7,1),(586,75,NULL,74,NULL,2,1),(587,77,NULL,76,NULL,3,1),(588,78,NULL,77,NULL,10,1),(589,79,NULL,78,NULL,8,1),(590,80,NULL,79,NULL,9,1),(591,81,NULL,80,NULL,3,1),(592,82,NULL,81,NULL,3,1),(593,83,NULL,82,NULL,3,1),(594,84,NULL,83,NULL,3,1),(595,85,NULL,84,NULL,3,1),(596,86,NULL,85,NULL,8,1),(597,87,NULL,86,NULL,3,1),(598,88,NULL,87,NULL,6,1),(599,89,NULL,88,NULL,2,1),(600,90,NULL,89,NULL,6,1),(601,91,NULL,90,NULL,3,1),(602,92,NULL,91,NULL,3,1),(603,93,NULL,92,NULL,8,1),(604,94,NULL,93,NULL,3,1),(605,95,NULL,94,NULL,3,1),(606,96,NULL,95,NULL,3,1),(607,97,NULL,96,NULL,3,1),(608,98,NULL,97,NULL,3,1),(609,99,NULL,98,NULL,3,1),(610,100,NULL,99,NULL,3,1),(611,101,NULL,100,NULL,3,1),(612,102,NULL,101,NULL,3,1),(613,103,NULL,102,NULL,3,1),(614,104,NULL,103,NULL,8,1),(615,105,NULL,104,NULL,3,1),(616,106,NULL,105,NULL,2,1),(617,107,NULL,106,NULL,3,1),(618,108,NULL,107,NULL,10,1),(619,109,NULL,108,NULL,3,1),(620,110,NULL,109,NULL,3,1),(621,111,NULL,110,NULL,3,1),(622,112,NULL,111,NULL,10,1),(623,113,NULL,112,NULL,3,1),(624,114,NULL,113,NULL,3,1),(625,115,NULL,114,NULL,3,1),(626,116,NULL,115,NULL,7,1),(627,117,NULL,116,NULL,8,1),(628,118,NULL,117,NULL,3,1),(629,119,NULL,118,NULL,3,1),(630,120,NULL,119,NULL,7,1),(631,121,NULL,120,NULL,3,1),(632,122,NULL,121,NULL,3,1),(633,123,NULL,122,NULL,3,1),(634,124,NULL,123,NULL,3,1),(635,125,NULL,124,NULL,8,1),(636,126,NULL,125,NULL,3,1),(637,127,NULL,126,NULL,3,1),(638,128,NULL,127,NULL,3,1),(639,129,NULL,128,NULL,10,1),(640,130,NULL,129,NULL,3,1),(641,131,NULL,130,NULL,3,1),(642,132,NULL,131,NULL,3,1),(643,133,NULL,132,NULL,3,1),(644,134,NULL,133,NULL,3,1),(645,135,NULL,134,NULL,3,1),(646,136,NULL,135,NULL,3,1),(647,137,NULL,136,NULL,3,1),(648,138,NULL,137,NULL,3,1),(649,139,NULL,138,NULL,3,1),(650,140,NULL,139,NULL,8,1),(651,141,NULL,140,NULL,8,1),(652,142,NULL,141,NULL,3,1),(653,143,NULL,142,NULL,8,1),(654,144,NULL,143,NULL,3,1),(655,145,NULL,144,NULL,11,1),(656,146,NULL,145,NULL,3,1),(657,147,NULL,146,NULL,3,1),(658,148,NULL,147,NULL,3,1),(659,149,NULL,148,NULL,7,1),(660,150,NULL,149,NULL,7,1),(661,151,NULL,150,NULL,3,1),(662,152,NULL,151,NULL,6,1),(663,153,NULL,152,NULL,3,1),(664,154,NULL,153,NULL,3,1),(665,155,NULL,154,NULL,3,1),(666,156,NULL,155,NULL,7,1),(667,157,NULL,156,NULL,6,1),(668,158,NULL,157,NULL,3,1),(669,159,NULL,158,NULL,3,1),(670,160,NULL,159,NULL,3,1),(671,161,NULL,160,NULL,8,1),(672,162,NULL,161,NULL,3,1),(673,163,NULL,162,NULL,3,1),(674,164,NULL,163,NULL,3,1),(675,165,NULL,164,NULL,3,1),(676,166,NULL,165,NULL,3,1),(677,167,NULL,166,NULL,3,1),(678,168,NULL,167,NULL,3,1),(679,169,NULL,168,NULL,8,1),(680,170,NULL,169,NULL,3,1),(681,171,NULL,170,NULL,3,1),(682,172,NULL,171,NULL,3,1),(683,173,NULL,172,NULL,3,1),(684,174,NULL,173,NULL,8,1),(685,175,NULL,174,NULL,8,1),(686,176,NULL,175,NULL,3,1),(687,177,NULL,176,NULL,3,1),(688,178,NULL,177,NULL,3,1),(689,179,NULL,178,NULL,3,1),(690,180,NULL,179,NULL,3,1),(691,181,NULL,180,NULL,6,1),(692,182,NULL,181,NULL,3,1),(693,183,NULL,182,NULL,3,1),(694,184,NULL,183,NULL,3,1),(695,185,NULL,184,NULL,6,1),(696,186,NULL,185,NULL,3,1),(697,187,NULL,186,NULL,3,1),(698,188,NULL,187,NULL,3,1),(699,189,NULL,188,NULL,10,1),(700,190,NULL,189,NULL,3,1),(701,191,NULL,190,NULL,12,1),(702,192,NULL,191,NULL,3,1),(703,193,NULL,192,NULL,8,1),(704,194,NULL,193,NULL,3,1),(705,195,NULL,194,NULL,3,1),(706,196,NULL,195,NULL,3,1),(707,197,NULL,196,NULL,3,1),(708,198,NULL,197,NULL,3,1),(709,199,NULL,198,NULL,7,1),(710,200,NULL,199,NULL,3,1),(711,201,NULL,200,NULL,3,1),(712,202,NULL,201,NULL,3,1),(713,203,NULL,202,NULL,8,1),(714,204,NULL,203,NULL,3,1),(715,205,NULL,204,NULL,6,1),(716,206,NULL,205,NULL,3,1),(717,207,NULL,206,NULL,6,1),(718,208,NULL,207,NULL,3,1),(719,209,NULL,208,NULL,3,1),(720,210,NULL,209,NULL,8,1),(721,211,NULL,210,NULL,3,1),(722,212,NULL,211,NULL,3,1),(723,213,NULL,212,NULL,3,1),(724,214,NULL,213,NULL,8,1),(725,215,NULL,214,NULL,3,1),(726,216,NULL,215,NULL,6,1),(727,217,NULL,216,NULL,8,1),(728,218,NULL,217,NULL,8,1),(729,219,NULL,218,NULL,8,1),(730,220,NULL,219,NULL,8,1),(731,221,NULL,220,NULL,8,1),(732,222,NULL,221,NULL,3,1),(733,223,NULL,222,NULL,3,1),(734,224,NULL,223,NULL,3,1),(735,225,NULL,224,NULL,6,1),(736,226,NULL,225,NULL,3,1),(737,227,NULL,226,NULL,8,1),(738,228,NULL,227,NULL,3,1),(739,229,NULL,228,NULL,3,1),(740,230,NULL,229,NULL,3,1),(741,231,NULL,230,NULL,8,1),(742,232,NULL,231,NULL,3,1),(743,233,NULL,232,NULL,3,1),(744,234,NULL,233,NULL,3,1),(745,235,NULL,234,NULL,8,1),(746,236,NULL,235,NULL,3,1),(747,237,NULL,236,NULL,3,1),(748,238,NULL,237,NULL,6,1),(749,239,NULL,238,NULL,7,1),(750,240,NULL,239,NULL,7,1),(751,241,NULL,240,NULL,8,1),(752,242,NULL,241,NULL,3,1),(753,243,NULL,242,NULL,3,1),(754,244,NULL,243,NULL,7,1),(755,245,NULL,244,NULL,3,1),(756,246,NULL,245,NULL,6,1),(757,247,NULL,246,NULL,3,1),(758,248,NULL,247,NULL,3,1),(759,249,NULL,248,NULL,8,1),(760,250,NULL,249,NULL,3,1),(761,251,NULL,250,NULL,3,1),(762,252,NULL,251,NULL,6,1),(763,253,NULL,252,NULL,8,1),(764,254,NULL,253,NULL,8,1),(765,255,NULL,254,NULL,8,1),(766,256,NULL,255,NULL,3,1),(767,257,NULL,256,NULL,3,1),(768,258,NULL,257,NULL,3,1),(769,259,NULL,258,NULL,3,1),(770,260,NULL,259,NULL,8,1),(771,261,NULL,260,NULL,13,1),(772,262,NULL,261,NULL,6,1),(773,263,NULL,262,NULL,3,1),(774,264,NULL,263,NULL,6,1),(775,265,NULL,264,NULL,3,1),(776,266,NULL,265,NULL,8,1),(777,267,NULL,266,NULL,3,1),(778,268,NULL,267,NULL,8,1),(779,269,NULL,268,NULL,6,1),(780,270,NULL,269,NULL,8,1),(781,271,NULL,270,NULL,6,1),(782,272,NULL,271,NULL,3,1),(783,273,NULL,272,NULL,3,1),(784,274,NULL,273,NULL,3,1),(785,275,NULL,274,NULL,8,1),(786,276,NULL,275,NULL,3,1),(787,277,NULL,276,NULL,3,1),(788,278,NULL,277,NULL,3,1),(789,279,NULL,278,NULL,3,1),(790,280,NULL,279,NULL,8,1),(791,281,NULL,280,NULL,3,1),(792,282,NULL,281,NULL,3,1),(793,283,NULL,282,NULL,3,1),(794,284,NULL,283,NULL,7,1),(795,285,NULL,284,NULL,3,1),(796,286,NULL,285,NULL,3,1),(797,287,NULL,286,NULL,3,1),(798,288,NULL,287,NULL,8,1),(799,289,NULL,288,NULL,8,1),(800,290,NULL,289,NULL,6,1),(801,291,NULL,290,NULL,3,1),(802,292,NULL,291,NULL,3,1),(803,293,NULL,292,NULL,3,1),(804,294,NULL,293,NULL,3,1),(805,295,NULL,294,NULL,3,1),(806,296,NULL,295,NULL,3,1),(807,297,NULL,296,NULL,3,1),(808,298,NULL,297,NULL,3,1),(809,299,NULL,298,NULL,8,1),(810,300,NULL,299,NULL,8,1),(811,301,NULL,300,NULL,3,1),(812,302,NULL,301,NULL,13,1),(813,303,NULL,302,NULL,13,1),(814,304,NULL,303,NULL,3,1),(815,305,NULL,304,NULL,3,1),(816,306,NULL,305,NULL,3,1),(817,307,NULL,306,NULL,8,1),(818,308,NULL,307,NULL,8,1),(819,309,NULL,308,NULL,8,1),(820,310,NULL,309,NULL,8,1),(821,311,NULL,310,NULL,3,1),(822,312,NULL,311,NULL,3,1),(823,313,NULL,312,NULL,8,1),(824,314,NULL,313,NULL,3,1),(825,315,NULL,314,NULL,8,1),(826,316,NULL,315,NULL,8,1),(827,317,NULL,316,NULL,3,1),(828,318,NULL,317,NULL,8,1),(829,319,NULL,318,NULL,7,1),(830,320,NULL,319,NULL,3,1),(831,321,NULL,320,NULL,3,1),(832,322,NULL,321,NULL,3,1),(833,323,NULL,322,NULL,3,1),(834,324,NULL,323,NULL,3,1),(835,325,NULL,324,NULL,3,1),(836,326,NULL,325,NULL,3,1),(837,327,NULL,326,NULL,8,1),(838,328,NULL,327,NULL,3,1),(839,329,NULL,328,NULL,3,1),(840,330,NULL,329,NULL,3,1),(841,331,NULL,330,NULL,3,1),(842,332,NULL,331,NULL,3,1),(843,333,NULL,332,NULL,3,1),(844,334,NULL,333,NULL,8,1),(845,335,NULL,334,NULL,3,1),(846,336,NULL,335,NULL,3,1),(847,337,NULL,336,NULL,3,1),(848,338,NULL,337,NULL,8,1),(849,339,NULL,338,NULL,3,1),(850,340,NULL,339,NULL,8,1),(851,341,NULL,340,NULL,8,1),(852,342,NULL,341,NULL,6,1),(853,343,NULL,342,NULL,3,1),(854,344,NULL,343,NULL,3,1),(855,345,NULL,344,NULL,3,1),(856,346,NULL,345,NULL,8,1),(857,347,NULL,346,NULL,8,1),(858,348,NULL,347,NULL,3,1),(859,349,NULL,348,NULL,8,1),(860,350,NULL,349,NULL,13,1),(861,351,NULL,350,NULL,8,1),(862,352,NULL,351,NULL,13,1),(863,353,NULL,352,NULL,8,1),(864,354,NULL,353,NULL,8,1),(865,355,NULL,354,NULL,3,1),(866,356,NULL,355,NULL,3,1),(867,357,NULL,356,NULL,8,1),(868,358,NULL,357,NULL,3,1),(869,359,NULL,358,NULL,8,1),(870,360,NULL,359,NULL,8,1),(871,361,NULL,360,NULL,8,1),(872,362,NULL,361,NULL,8,1),(873,363,NULL,362,NULL,8,1),(874,364,NULL,363,NULL,8,1),(875,365,NULL,364,NULL,8,1),(876,366,NULL,365,NULL,8,1),(877,367,NULL,366,NULL,8,1),(878,368,NULL,367,NULL,8,1),(879,369,NULL,368,NULL,8,1),(880,370,NULL,369,NULL,8,1),(881,371,NULL,370,NULL,8,1),(882,372,NULL,371,NULL,8,1),(883,373,NULL,372,NULL,8,1),(884,374,NULL,373,NULL,8,1),(885,375,NULL,374,NULL,8,1),(886,376,NULL,375,NULL,8,1),(887,377,NULL,376,NULL,8,1),(888,378,NULL,377,NULL,8,1),(889,379,NULL,378,NULL,8,1),(890,380,NULL,379,NULL,8,1),(891,381,NULL,380,NULL,8,1),(892,382,NULL,381,NULL,8,1),(893,383,NULL,382,NULL,8,1),(894,384,NULL,383,NULL,8,1),(895,385,NULL,384,NULL,8,1),(896,386,NULL,385,NULL,8,1),(897,387,NULL,386,NULL,8,1),(898,388,NULL,387,NULL,8,1),(899,389,NULL,388,NULL,8,1),(900,390,NULL,389,NULL,8,1),(901,391,NULL,390,NULL,8,1),(902,392,NULL,391,NULL,3,1),(903,393,NULL,392,NULL,3,1),(904,394,NULL,393,NULL,3,1),(905,395,NULL,394,NULL,3,1),(906,396,NULL,395,NULL,3,1),(907,397,NULL,396,NULL,3,1),(908,398,NULL,397,NULL,3,1),(909,399,NULL,398,NULL,3,1),(910,400,NULL,399,NULL,3,1),(911,401,NULL,400,NULL,3,1),(912,402,NULL,401,NULL,8,1),(913,403,NULL,402,NULL,8,1),(914,404,NULL,403,NULL,8,1),(915,405,NULL,404,NULL,8,1),(916,406,NULL,405,NULL,8,1),(917,407,NULL,406,NULL,8,1),(918,408,NULL,407,NULL,8,1),(919,409,NULL,408,NULL,8,1),(920,410,NULL,409,NULL,8,1),(921,411,NULL,410,NULL,8,1),(922,412,NULL,411,NULL,8,1),(923,413,NULL,412,NULL,8,1),(924,414,NULL,413,NULL,8,1),(925,415,NULL,414,NULL,3,1),(926,416,NULL,415,NULL,3,1),(927,417,NULL,416,NULL,3,1),(928,418,NULL,417,NULL,3,1),(929,419,NULL,418,NULL,3,1),(930,420,NULL,419,NULL,3,1),(931,421,NULL,420,NULL,3,1),(932,422,NULL,421,NULL,3,1),(933,423,NULL,422,NULL,3,1),(934,424,NULL,423,NULL,3,1),(935,425,NULL,424,NULL,3,1),(936,426,NULL,425,NULL,3,1),(937,427,NULL,426,NULL,3,1),(938,428,NULL,427,NULL,3,1),(939,429,NULL,428,NULL,3,1),(940,430,NULL,429,NULL,3,1),(941,431,NULL,430,NULL,3,1),(942,432,NULL,431,NULL,3,1),(943,433,NULL,432,NULL,3,1),(944,434,NULL,433,NULL,3,1),(945,435,NULL,434,NULL,3,1),(946,436,NULL,435,NULL,3,1);
/*!40000 ALTER TABLE `firefighter` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admincbva`@`localhost`*/ /*!50003 TRIGGER firefighter_trigger_fields before UPDATE ON firefighter
  FOR EACH ROW
  BEGIN
          SET @fecha=curdate();
          SET NEW.update_date=@fecha;
  end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admincbva`@`localhost`*/ /*!50003 TRIGGER firefighter_trigger_audit AFTER UPDATE ON firefighter
  FOR EACH ROW
  BEGIN
      if NEW.rank_id <> OLD.rank_id  THEN
        INSERT into firefighter_audit(firefighter_id,message,update_date)  VALUES (OLD.id,concat("Change: rank [old]=",OLD.rank_id,",[new rank]= ",NEW.rank_id),now());
      end if;
    if NEW.active <> OLD.active  THEN
      INSERT into firefighter_audit(firefighter_id,message,update_date) VALUES (OLD.id,concat("Change: status [old]=",OLD.active,",[new status]= ",NEW.active),now());
    end if;
  end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `firefighter_audit`
--

DROP TABLE IF EXISTS `firefighter_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firefighter_audit` (
  `firefighter_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `firefighter_id` (`firefighter_id`),
  CONSTRAINT `firefighter_audit_ibfk_1` FOREIGN KEY (`firefighter_id`) REFERENCES `firefighter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firefighter_audit`
--

LOCK TABLES `firefighter_audit` WRITE;
/*!40000 ALTER TABLE `firefighter_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `firefighter_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `cin` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Pedro Jaime Logan Keene',''),(2,'Tomas Florentin',''),(3,'Amado Adolfo Sanabria Flecha',''),(4,'Juan Carlos Gamba Sosa',''),(5,'Alberto Chamorro',''),(6,'Victor Manuel Sanabria Flecha',''),(7,'Luis Pellegrini',''),(8,'Carlos Sanabria Flecha',''),(9,'Juvencio Toñanez',''),(10,'Luis Fernando Heisecke',''),(11,'Jose Caceres',''),(12,'Pierre Alvaro Florentin Diaz',''),(13,'Raul De los Santos Abraham Fernandez ',''),(14,'Liz Gini',''),(15,'Enrique Renfelt',''),(16,'Rolland Hillar',''),(17,'Ermes Raul Villa Caceres',''),(18,'Mario Barrientos',''),(19,'Alberto Gustavo Gomez Arevalos',''),(20,'Fernando Javier Alderete Insfran',''),(21,'Victor Hugo Liuzzi Encina','1,091,002'),(22,'Luis Fernando Garcia Britez',''),(23,'Cesar Daniel Adorno Jacquet',''),(24,'Augusto Ruben Rodas Varela',''),(25,'Eduardo Andres Sanabria Duarte',''),(26,'Marcos Lezcano Sachelaridi','1,795,298'),(27,'Jacinto Riera',''),(28,'Natalia Torres',''),(29,'Uber Antonio Vera','3,542,540'),(30,'Pedro Benitez',''),(31,'Julio Acosta',''),(32,'Fidel Villalba',''),(33,'Juan Jara',''),(34,'Calixto Echeverria',''),(35,'Serafin Antonio Roche Pereira',''),(36,'Diana Romero',''),(37,'Marcos Ramon Torres Ortiz','1,365,318'),(38,'Jorgelina Chaparro Martinez',''),(39,'Ysaac Pedro De Carvalho Vallejos',''),(40,'Luis Alberto Benitez Garcia',''),(41,'Alfredo Muñoz',''),(42,'Aldo Hermosilla',''),(43,'Graciela Alcoba de Cabrera ',''),(44,'Heriberto Ceferino Candia',''),(45,'Carlos Herder Olguin Romero',''),(46,'Hernan Gustavo Olmedo Armengol',''),(47,'Victor Arnaldo Perineti Gonzalez',''),(48,'Veronica Liliana Guanes Ferreira',''),(49,'Maria Lorena Gonzalez Pereira',''),(50,'Sergio Pastor Gimenez Arias',''),(51,'Marta Beatriz Estigarribia Ruiz Diaz',''),(52,'Eduardo Ramon Lugo Ledesma',''),(53,'Alex Adorno ',''),(54,'Nelcy Beatriz Quevedo Allende',''),(55,'Aquiles Leon',''),(56,'Carlos David Britez Montiel',''),(57,'Juan Pablo Gomez Lacentre',''),(58,'Felix Guerrero',''),(59,'Christian Lisandro Dupland Amarilla ',''),(60,'Dirce Magdalena Yegros Aldama',''),(61,'Cynthia Natalia Gonzalez Duarte',''),(62,'Ruben Antonio Centurion Medina',''),(63,'Erik Cattebeke Gonzalez',''),(64,'Abel Argentino Ledesma Gómez',''),(65,'Oscar Jose Pino (h) ',''),(66,'Francisco Javier R. Gomez Samaniego','1,845,836'),(67,'Gloria Anahi Zaldivar Leon ',''),(68,'Claudia Andrea Salazar Zilich',''),(69,'Claudia Carolina Barua Leguizamon ',''),(70,'Horacio Jose Gonzalez Pereira',''),(71,'Sheila Martinez',''),(72,'Pablo Cabral',''),(73,'Santiago Raul Vazquez Gonzalez',''),(74,'Mariano Cattebeke Blaires',''),(75,'Luis Alberto Medina Ortiz','423,535'),(76,'Federico Ramon Garcia Britez',''),(77,'Angel Gabriel Gill Barreto','804,779'),(78,'Carlos Alberto Caballero','3,983,015'),(79,'Eris Dario Cabrera Nuñez (+)',''),(80,'Ruben Antonio Garcete Ferrari',''),(81,'Marcos David Reyes',''),(82,'Juan Esteban Florentin Diaz',''),(83,'Carla Ivana Hernandez Vega',''),(84,'Maria de Lujan Mongelos Gimenez',''),(85,'Walter Suarez',''),(86,'Arturo Santiago Nuñez Orue',''),(87,'Israel Elias Rodrigo Noldin',''),(88,'Alcides Ariel Ferreira','2,387,913'),(89,'Pedro Antonio Rejala Duarte',''),(90,'Jorge Luis Borja',''),(91,'Eduardo David Cabrera Nuñez',''),(92,'Fredy Alberto Garcia Aquino',''),(93,'Hilda Acosta de Ledesma',''),(94,'Catterine Cattebeke',''),(95,'Liz Colman',''),(96,'Narciso Fleitas',''),(97,'Fulvia Pereira de Gonzalez',''),(98,'Carlos Alberto Medina Ortiz',''),(99,'Carlos Samaniego Ruiz Diaz',''),(100,'Edgar Manuel Faria Ferreira',''),(101,'Rossana Maria Alcaraz Orrego',''),(102,'Luis Fernando Fleitas Esteche',''),(103,'Diego Francisco Moreira Telvez','4,814,491'),(104,'Osmar Ramon Moreno Cespedes',''),(105,'Nilsa Marlene Chavez Delgado',''),(106,'Sara Rosa Elizabeth Diaz',''),(107,'Sylvia Haydée Gimenez Scala',''),(108,'Marcos Herminio Galeano Flores ',''),(109,'Nelida Ma. De los Angeles Caballero M.',''),(110,'Pablo Reinero Galeano Sanabria ',''),(111,'Naida Susana Meza Riquelme','3,789,939'),(112,'Abel Mancuello ',''),(113,'Sonia Mancuello ',''),(114,'Ricardo Saldivar ',''),(115,'Romina Morinigo ',''),(116,'Jorge Luis Rodriguez Ayala',''),(117,'Josefina Concepcion Noguera Hermosa',''),(118,'Sergio Gomez Lacentre',''),(119,'Gabriela Isabel Arce Dolz',''),(120,'Fatima Alfonso',''),(121,'Fernando Rene Paez Meza',''),(122,'Marie Florentin (+)',''),(123,'Francisco Antonio Meza',''),(124,'Claudio David Cabañas Orue','3,475,021'),(125,'Raquel Hermosa','1,454,683'),(126,'Fernando Florentin Diaz',''),(127,'Francisco Javier Uzabal Escurra',''),(128,'Santiago Alberto Ledesma Benegas','2,430,714'),(129,'Adolfo Enmanuel Alvarez',''),(130,'Victor Raul Franco Rodas',''),(131,'David Cena',''),(132,'Guillermo Adrian Cairet Dietrich',''),(133,'Lilian Vera',''),(134,'Fernando Saggia ',''),(135,'Diego Garcia',''),(136,'Tania Villagra',''),(137,'Rosalba Yuki Akita Canela',''),(138,'Gustavo David Paiva Acosta',''),(139,'Edgar Britez Ayala','1,951,057'),(140,'Pablo Daniel Arevalos Nessi',''),(141,'Hector Fabian Britez Ayala',''),(142,'Denis Condoretty','2,330,622'),(143,'Esteban Espinoza',''),(144,'Humberto Fabian Vera Martinez',''),(145,'Isabel Palacios',''),(146,'Marcos Cristian Villamayor Huerta',''),(147,'Rosalia Saggia',''),(148,'Julio Gonzalez',''),(149,'Luis Miguel Ruiz Diaz Ayala',''),(150,'Osvaldo Sanabria',''),(151,'Ruth Noemi Servin Lavin ',''),(152,'Juliana Concepcion Garcia',''),(153,'Alfonso Aguilar',''),(154,'Augusto Lugo ',''),(155,'Jose Maria Mieres',''),(156,'Gerardo Ramon Melgarejo ',''),(157,'Cristian Melgarejo ',''),(158,'Ana Elizabeth Britez Ayala',''),(159,'Eduardo Demestri',''),(160,'Alfredo Crispin Da Rosa Miranda','2,084,664'),(161,'Leonardo Jose Maria Cardenas Alfonso',''),(162,'Jose Zabala',''),(163,'Gualberto Luis Ramon Martinez ',''),(164,'Maria Laura Villagra Ferreira',''),(165,'Sara Cabrera ',''),(166,'Clara Obelar',''),(167,'Norma Leguizamon',''),(168,'Jose Antonio Montorfano Chileno',''),(169,'Victor Ojeda',''),(170,'Juana Medina',''),(171,'Gloria Arza Riveros',''),(172,'Vicente Lezcano Sachelaridi',''),(173,'Lionel Maria Cristaldo Rienzi',''),(174,'Oscar Lovera',''),(175,'Oscar Pino (p) ',''),(176,'Julio Estigarribia',''),(177,'Sofia Karina Cardozo Sanchez',''),(178,'Victor Meza',''),(179,'Alfredo Zelaya',''),(180,'Gustavo Alcaraz',''),(181,'Martha Raquel Cristaldo Rodriguez',''),(182,'Sara Mendez',''),(183,'Zully Peralta',''),(184,'Yeny Stella Sosa Gonzalez',''),(185,'Francisca Pineda Balmaceda',''),(186,'Carmen Pineda Balmaceda',''),(187,'Iris Marlene Mareco Maidana',''),(188,'Emilio David Olmedo Hermosilla','3,649,692'),(189,'Horacio Centurion Princigalli ',''),(190,'Magno Alfredo Castillo Fernandez',''),(191,'Cesar Gonzalez ',''),(192,'Domingo Eduardo Mora Ramirez','1,148,202'),(193,'Veronica Soledad Ramirez',''),(194,'Raquel Iriondo Martinez',''),(195,'Pablo Habib Leston',''),(196,'Juan Rafael Campizz Gonzalez',''),(197,'Maria Auxiliadora Ayala Galeano',''),(198,'Emilce Yanina Cardozo Cespedes',''),(199,'Carlos Jose Volling Lezcano',''),(200,'Mirtha Liliana Ortola Etcheverry',''),(201,'Sonia Raquel Volling Lezcano',''),(202,'Jorge Inocencio Rodriguez',''),(203,'Jose Maria Segovia Gonzalez',''),(204,'Alberto Enriquez',''),(205,'Cruz Mariel Graciela Perez Amarilla','3,659,606'),(206,'Pedro Gilberto Medina Centurion ',''),(207,'Osvaldo Daniel Fretes Carmagnola',''),(208,'Cristian David Vera Baez',''),(209,'Rogelio de la Cruz Quiñonez Vargas',''),(210,'Victor Daniel Gutierrez Gallardo',''),(211,'Ines Victoria Fariña Lopez',''),(212,'Roberto Benitez Ortiz',''),(213,'Jorge Adrian Diaz',''),(214,'Andrea Celeste Rodriguez Cantero',''),(215,'Marcos Ledesma Colman',''),(216,'Rolando Jose Maidana  ','7,059,412'),(217,'Jorge Dario David Gomez Perez',''),(218,'Daniel Ferszt Caceres',''),(219,'Willian Rios',''),(220,'Jorge Antonio Gonzalez','4,352,143'),(221,'Blacia Britez',''),(222,'Sergio Fabian Almada Giménez',''),(223,'Adan Julián Sosa González',''),(224,'Jorge Raúl Giménez Alvarez',''),(225,'Marcos Ramón Sosa Donsert',''),(226,'Frida Geraldina González','3,217,398'),(227,'Lilian María Marta González González',''),(228,'Alvaro Morinigo',''),(229,'Arnaldo González',''),(230,'Guido Rene González Hermosa',''),(231,'Hugo Javier Ortiz Romero',''),(232,'Laura Gauto',''),(233,'Eliana Cabrera',''),(234,'Carlos Sebastian Valdovinos','3,198,753'),(235,'Lidia Carolina Gauto',''),(236,'José M. Díaz Ayala',''),(237,'Luis Mancuello',''),(238,'Cristian David Kadomatsu',''),(239,'Sandra Paola Rolón',''),(240,'Silvia Susana Silva','3,634,800'),(241,'Ana Martínez Balcazar',''),(242,'Juan Aquino',''),(243,'Tania M. Barreto López',''),(244,'Alexandre Diel',''),(245,'Carlos Joaquín Talavera Fernández',''),(246,'Diego Luis Insfran Segovia',''),(247,'Omar Dario Sanabria Núñez',''),(248,'Sara Yohana González Olmedo',''),(249,'Victor Daniel Escurra Pereira',''),(250,'Victor Hugo Esquivel Rolón',''),(251,'Cinthia Elince Ayala Giménez  ',''),(252,'Pedro Eduardo Fernandez Garcia',''),(253,'Felix Barreto',''),(254,'Angel Rafael Rojas Aveiro',''),(255,'Adrian Martinez',''),(256,'Juan Carlos Bellassai Gauto',''),(257,'Juan Andres del Puerto',''),(258,'Humberto Daniel Riveiro Gonzalez',''),(259,'Israel Ulises Melgarejo Estigarribia','4,507,487'),(260,'Maria Jose Ljubetic',''),(261,'Eduardo Douglas',''),(262,'Lorenza Pereira',''),(263,'Nelson Uribe',''),(264,'Liliana Elizabeth Esquivel Rotela',''),(265,'Hector Morinigo',''),(266,'Victor Amarilla',''),(267,'Jorge Arce',''),(268,'Francisco Benitez',''),(269,'Jonathan David Tompson Cohene','3,806,850'),(270,'Denys Damian Gómez Bernal',''),(271,'Israel de Jesús Cardozo Sanabria',''),(272,'Guillermo Osvaldo Taboada Romei',''),(273,'Alberto Federico Rolón Jara ',''),(274,'Cesar Machuca García',''),(275,'Ciro Nicolás Figueroa Jave',''),(276,'Guillermo Enrique Efrain Alarcon Maldonado',''),(277,'Erico Isaac Caballero Verón',''),(278,'Juan José Gaona Lerea',''),(279,'Alvaro Rodrigo Riveros','4,908,142'),(280,'José Manuel Cuevas Zarate',''),(281,'Rodrigo de Jesús Villagra Mora',''),(282,'Benigno Leonardo Ortiz Estigarribia',''),(283,'Orlando Javier Ortega Molinas',''),(284,'Víctor Manuel David Ortiz ',''),(285,'Luis Arnaldo Chavez Valdez',''),(286,'Alberto Martin Garay',''),(287,'José Antonio Ruíz Díaz Medina ',''),(288,'Jazmin Dumilia Valdovinos Mora',''),(289,'Carlos Alberto Baquer Silvero ',''),(290,'Giovanna Leocadia Viola D´Aquino ',''),(291,'Natasha María Oliveira y Silva Gariazu',''),(292,'Carlos Barrios Sartorio ',''),(293,'Jorge Ribas Careaga',''),(294,'Luis Rombert',''),(295,'Maria Alexandra Fernandez Acuña',''),(296,'Gustavo Adolfo Ozuna Amarilla',''),(297,'Francisco Elias Vera Dominguez',''),(298,'Diego Javier Lugo Ozorio','4,382,812'),(299,'Fernando Ramon Peralta Fernandez',''),(300,'Ruben Samuel Recalde Alarcon',''),(301,'Luis Fernando Barrios Fracchia',''),(302,'Bianca Maria Bazan Centurion',''),(303,'Liz Andrea Ramirez Diaz','5,162,140'),(304,'Ariel Mateo Orue Rodriguez',''),(305,'Anibal David Rojas Martinez',''),(306,'Oscar David Noguera Oviedo','4,662,233'),(307,'Sebastian Augusto Penayo Romero',''),(308,'Helga Rosa Welcher Lacognata',''),(309,'Esteban Ramon Amarilla Gariazu','4,219,706'),(310,'Ivan Ismael Insfran Torres',''),(311,'Javier Roman Brizuela Gomez',''),(312,'Alexandra Elizabeth Zarate Chavez',''),(313,'Delia Carolina Lezcano Astigarraga',''),(314,'Arnaldo Silverio Bordon Fleitas','5,023,500'),(315,'Richard Alison Benitez Flor',''),(316,'Pedro Daniel Acosta Ruiz Diaz',''),(317,'Pedro Giovanni Andino Martinez','3,668,267'),(318,'Emilio Marcelo Gonzalez Barrios',''),(319,'Justo Salomon Ocampos Ramirez',''),(320,'Juan Francisco Candia Escobar',''),(321,'Peter Braulio Sosa Dominguez',''),(322,'Pedro Leonardo Cabral Diaz',''),(323,'Arnaldo Andres Vera Aveiro',''),(324,'Rickx Fabian Roman Romero',''),(325,'Yanina Del Mar Mendoza Torres',''),(326,'Ruben Antonio Careaga Meza',''),(327,'Lucas Emmanuel Aguilar Galeano',''),(328,'Anna Victoria Wickzén Rojas',''),(329,'Rebeca Andrea Tamara Lugo Mendoza',''),(330,'César Sebastián Chávez Fernández',''),(331,'Manuela Edith Retamar Almirón',''),(332,'Robinson Richard Moudelle Cabrera',''),(333,'Pablo Amadeo Esquivel Cantero',''),(334,'Rodrigo Marcos Agustin Giménez Morales',''),(335,'Rodrigo Alfredo Diaz Vera',''),(336,'Ylsse Nathaly Jazmín Cabral',''),(337,'Hugo Daniel Recalde Pavon','1,242,328'),(338,'Pablo Fabián Benítez Flor',''),(339,'Karen Reseda Aquino Orué',''),(340,'Jonathan Enrique Rojas Arias',''),(341,'José Infante Rivarola Olmeda',''),(342,'Abel Ulises Martinez Peloso',''),(343,'Ruben Dario Acosta Gomez (+)',''),(344,'Juan Arce',''),(345,'Jose Dure',''),(346,'José Mauricio Espínola',''),(347,'Natalia Alvarenga',''),(348,'José Luis Moudelle Cabrera',''),(349,'Leonardo Maioli',''),(350,'Silvia Monserrat Arzamendia Morel','6,094,059'),(351,'Alejandra Ledesma',''),(352,'Nestor Gauto',''),(353,'Oscar Diego Quiñonez Irrazabal','1,424,511'),(354,'Blas Duarte Medina',''),(355,'Osmar Dario Gonzalez','3,678,032'),(356,'Gabriel Bellassai',''),(357,'Bruno Mendoza',''),(358,'Lilian Ayala',''),(359,'Fatima Benitez',''),(360,'Natalia Benitez','5,646,394'),(361,'Alvaro Vaceque',''),(362,'Mirta Franco','7,086,488'),(363,'Rodrigo Ariel Rivas Martinez','4,910,019'),(364,'Julio Rivas',''),(365,'Rodolfo Arce','1,527,205'),(366,'Jorge David Lugo Irala','4,900,655'),(367,'Jacinta Benitez',''),(368,'Mariza Orrego',''),(369,'Rossana Cristaldo',''),(370,'Blas Lopez','5,443,372'),(371,'Soledad Morales',''),(372,'Gabino Adriano Medina Jara','3,037,747'),(373,'Gabriela Estigarribia',''),(374,'Milagros Lujan Figueredo ','4,366,743'),(375,'Guillermo Caballero','5,011,861'),(376,'Lujan Guadalupe Diaz Caniza','4,800,760'),(377,'Guadalupe Aquino','5,201,656'),(378,'Carlos Ricardo Alcaraz Leon','4,676,116'),(379,'Bertin Kamecki',''),(380,'Nery Acuña',''),(381,'Francisco Gabriel Chamorro Franco','5,361,938'),(382,'Hugo Agüero',''),(383,'David Cardozo',''),(384,'Alfredo Fabian Mendoza Martinez','4,814,377'),(385,'Martin Sanabria','3,990,762'),(386,'Matias Orue',''),(387,'Mariela Gamarra','4,723,952'),(388,'Miguel Navarro','4,672,141'),(389,'Mauricio Encina','4,345,320'),(390,'Maria Jose Mendoza Bogado','5,391,769'),(391,'Lilian Ramirez',''),(392,'Killy Moleda',''),(393,'Diego Britez',''),(394,'Teresa Garcete',''),(395,'Cristina Baruja',''),(396,'Jon Clamp','707,075,266'),(397,'Gabriela Medina',''),(398,'Ada Marilin Cabañas','4,437,222'),(399,'Pamela Gómez',''),(400,'Maria Selva Martinez','1,113,385'),(401,'Ricardo Jose Venancio Cambra Cantero','3,838,697'),(402,'Rodrigo Benitez Melgarejo','4,798,530'),(403,'Karen Dahiana Centurion Alvarenga','4,781,118'),(404,'Enrique Melgarejo','4,174,756'),(405,'Yeni Santacruz',''),(406,'Paolo Barboza',''),(407,'Letizia Maria Alexandra Cardozo Ortega','4,711,066'),(408,'Lenny Makarena Rojas Aquino','3,796,124'),(409,'Oilda Villagra',''),(410,'Magali Echeverria',''),(411,'Axel Jara',''),(412,'Jorge Sanchez',''),(413,'Ariel Jara',''),(414,'Nancy Zarate',''),(415,'Griselda Lugo',''),(416,'Maria Angelica Nuñez',''),(417,'Fabiola Gimenez',''),(418,'Nadia Medina',''),(419,'Valeria Vazquez',''),(420,'Myriam Areco',''),(421,'Jesus Morinigo',''),(422,'Laura Colman',' '),(423,'Gustavos Genis',''),(424,'Basilia Zarate',''),(425,'Veronica Gomez',''),(426,'Cristhian Gabriel Delgado Salinas','4204756'),(427,'Catalina Arias',''),(428,'Enrique Cañiza',''),(429,'Gerbacio Morel',''),(430,'Alejandro Salomon','5,056,794'),(431,'Luis Codas',''),(432,'Maria Yanet Orue',''),(433,'Cristhian Duarte',''),(434,'Jose Villanueva',''),(435,'Valeriana Insfran','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acronim` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `acronim` (`acronim`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (1,'BVC',NULL),(2,'CD',NULL),(3,'RESERVA',NULL),(4,'FUNDADOR',NULL),(6,'BAJA',NULL),(7,'RENUNCIO',NULL),(8,'COMBATIENTE',NULL),(9,'CAPITAN',NULL),(10,'TENIENTE',NULL),(11,'EXPULSADO',NULL),(12,'TRASLADADO',NULL),(13,'LICENCIA',NULL);
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-28 11:27:11
