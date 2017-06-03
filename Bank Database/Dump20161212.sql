-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bank_database
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Building_no` varchar(20) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Zip` int(11) NOT NULL,
  `AddressId` char(20) NOT NULL,
  PRIMARY KEY (`AddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('6014','Marcy','Wichita','Kansas',67205,'1'),('49152','High Crossing','Tulsa','Oklahoma',74108,'10'),('3455','Weeping Birch','Jackson','Mississippi',39204,'100'),('226','Atwood','Kansas City','Missouri',64153,'101'),('602','Annamark','Portland','Oregon',97240,'102'),('0','Coleman','Atlanta','Georgia',30323,'103'),('15679','Northwestern','Washington','District of Columbia',20099,'104'),('4','Tennyson','Clearwater','Florida',34620,'105'),('9455','Farmco','Vancouver','Washington',98687,'106'),('524','Twin Pines','Boise','Idaho',83705,'107'),('76323','Mcbride','Decatur','Georgia',30033,'108'),('8582','Algoma','Washington','District of Columbia',20409,'109'),('54','Grasskamp','New York City','New York',10024,'11'),('2203','Dexter','Baltimore','Maryland',21211,'110'),('767','Randy','Alexandria','Virginia',22333,'111'),('872','Evergreen','Washington','District of Columbia',20508,'112'),('2956','Stuart','Chicago','Illinois',60657,'113'),('519','Mallory','Springfield','Illinois',62794,'114'),('18','Dakota','Gadsden','Alabama',35905,'115'),('10','Coolidge','Los Angeles','California',90060,'116'),('54203','Miller','Columbia','South Carolina',29220,'117'),('301','Bobwhite','Kansas City','Missouri',64187,'118'),('171','Roth','Pocatello','Idaho',83206,'119'),('977','Esker','Baton Rouge','Louisiana',70826,'12'),('328','Holmberg','Jamaica','New York',11407,'120'),('1055','Oneill','Arlington','Texas',76016,'121'),('9','High Crossing','Akron','Ohio',44329,'122'),('172','Red Cloud','Memphis','Tennessee',38188,'123'),('28','Mendota','Troy','Michigan',48098,'124'),('6576','Mitchell','New York City','New York',10034,'125'),('6351','Blackbird','Albany','New York',12262,'126'),('94461','Maple','Tampa','Florida',33686,'127'),('18','Summit','Pittsburgh','Pennsylvania',15266,'128'),('6','Lien','Huntsville','Alabama',35895,'129'),('32','Stang','San Francisco','California',94126,'13'),('4359','Homewood','Syracuse','New York',13210,'130'),('69','Sugar','El Paso','Texas',88579,'131'),('73','Bultman','Saint Paul','Minnesota',55166,'132'),('6358','Karstens','Jacksonville','Florida',32215,'133'),('3752','Novick','Inglewood','California',90310,'134'),('91','Lindbergh','Phoenix','Arizona',85040,'135'),('809','Canary','Mobile','Alabama',36670,'136'),('2970','Debs','San Francisco','California',94159,'137'),('294','Vahlen','Des Moines','Iowa',50936,'138'),('3','Arrowood','Clearwater','Florida',34629,'139'),('31512','Aberg','Hot Springs National','Arkansas',71914,'14'),('804','Tennyson','Springfield','Illinois',62711,'140'),('507','Grim','Roanoke','Virginia',24040,'141'),('52775','Warbler','Syracuse','New York',13217,'142'),('83','Doe Crossing','Amarillo','Texas',79105,'143'),('10','Birchwood','Miami','Florida',33164,'144'),('44742','Forster','Tampa','Florida',33661,'145'),('50','Ludington','Wichita','Kansas',67215,'146'),('2220','Meadow Vale','Biloxi','Mississippi',39534,'147'),('2','Loeprich','Zephyrhills','Florida',33543,'148'),('13816','Montana','Topeka','Kansas',66606,'149'),('623','Dennis','Washington','District of Columbia',20016,'15'),('18','Shopko','San Jose','California',95133,'150'),('867','Lerdahl','Minneapolis','Minnesota',55417,'151'),('6','High Crossing','Arlington','Texas',76016,'152'),('524','Autumn Leaf','Terre Haute','Indiana',47805,'153'),('5557','Browning','Des Moines','Iowa',50320,'154'),('90259','Glacier Hill','Littleton','Colorado',80126,'155'),('474','Ridgeview','Saint Paul','Minnesota',55172,'156'),('14','Prairieview','Chattanooga','Tennessee',37416,'157'),('91','Prairie Rose','Minneapolis','Minnesota',55448,'158'),('821','Lawn','Savannah','Georgia',31410,'159'),('39315','Lukken','Naples','Florida',33961,'16'),('6','Stone Corner','Alpharetta','Georgia',30022,'160'),('9630','Carey','Kansas City','Missouri',64193,'161'),('79','High Crossing','Peoria','Illinois',61640,'162'),('7561','American Ash','Philadelphia','Pennsylvania',19120,'163'),('31898','1st','Topeka','Kansas',66617,'164'),('91','Spaight','Austin','Texas',78737,'165'),('61','Hansons','Des Moines','Iowa',50310,'166'),('5','Bartillon','Topeka','Kansas',66606,'167'),('32','Katie','Indianapolis','Indiana',46239,'168'),('7657','American Ash','Fresno','California',93762,'169'),('5689','Upham','Salt Lake City','Utah',84199,'17'),('39','Buena Vista','Saint Paul','Minnesota',55108,'170'),('1','Moose','Shreveport','Louisiana',71166,'171'),('8','Sommers','Birmingham','Alabama',35285,'172'),('1892','Haas','San Mateo','California',94405,'173'),('8','Del Mar','Houston','Texas',77250,'174'),('0','Oak','Los Angeles','California',90035,'175'),('814','Fallview','Sterling','Virginia',20167,'176'),('4','Ridgeview','Roanoke','Virginia',24040,'177'),('1755','Katie','Salt Lake City','Utah',84125,'178'),('1','Debra','Boston','Massachusetts',2203,'179'),('387','Stephen','Alpharetta','Georgia',30022,'18'),('4004','Bluejay','Bonita Springs','Florida',34135,'180'),('16839','Grayhawk','Birmingham','Alabama',35225,'181'),('682','Petterle','Oklahoma City','Oklahoma',73147,'182'),('4817','Maryland','Springfield','Massachusetts',1129,'183'),('81','Manley','Austin','Texas',78764,'184'),('263','Little Fleur','Washington','District of Columbia',20430,'185'),('19','Riverside','Washington','District of Columbia',20442,'186'),('450','Magdeline','Richmond','Virginia',23213,'187'),('6','Stuart','Syracuse','New York',13205,'188'),('234','Sugar','Columbia','Missouri',65211,'189'),('7537','Dawn','Albany','New York',12255,'19'),('1','Stoughton','Jefferson City','Missouri',65110,'190'),('3563','Vermont','Lexington','Kentucky',40586,'191'),('2','Hallows','Buffalo','New York',14225,'192'),('196','Springs','Waltham','Massachusetts',2453,'193'),('50','Maywood','Sacramento','California',95828,'194'),('873','Sheridan','Monroe','Louisiana',71213,'195'),('2929','Thierer','Fort Wayne','Indiana',46814,'196'),('301','Bluejay','New Orleans','Louisiana',70142,'197'),('4','Coolidge','Charlotte','North Carolina',28263,'198'),('868','Lunder','Carson City','Nevada',89714,'199'),('29843','Melby','San Antonio','Texas',78260,'2'),('19735','Glacier Hill','Philadelphia','Pennsylvania',19115,'20'),('600','Garrison','Albuquerque','New Mexico',87201,'200'),('102','Vernon','New York City','New York',10125,'21'),('38627','Bayside','Des Moines','Iowa',50305,'22'),('5','Main','Des Moines','Iowa',50310,'23'),('51389','Armistice','Mobile','Alabama',36616,'24'),('5017','Summit','Dayton','Ohio',45419,'25'),('7','Ohio','Kansas City','Missouri',64125,'26'),('3524','Meadow Valley','Norwalk','Connecticut',6854,'27'),('71','Reindahl','Panama City','Florida',32412,'28'),('43','Shelley','Fayetteville','North Carolina',28305,'29'),('69','Lakeland','Dallas','Texas',75260,'3'),('44','Shoshone','Spokane','Washington',99220,'30'),('6181','Victoria','Portland','Oregon',97216,'31'),('4294','Stoughton','Dallas','Texas',75231,'32'),('2015','Larry','New York City','New York',10079,'33'),('10','Bartelt','Oklahoma City','Oklahoma',73197,'34'),('6','Packers','Cleveland','Ohio',44125,'35'),('39540','Express','Fresno','California',93740,'36'),('84','Arkansas','Muskegon','Michigan',49444,'37'),('70','Gerald','Lincoln','Nebraska',68510,'38'),('66034','Riverside','San Bernardino','California',92424,'39'),('2865','Westport','Bozeman','Montana',59771,'4'),('23778','Bonner','Huntington','West Virginia',25705,'40'),('3737','Dryden','Sacramento','California',95833,'41'),('41','Mayfield','New Bedford','Massachusetts',2745,'42'),('78','Springview','Fort Lauderdale','Florida',33310,'43'),('46521','Kingsford','Cambridge','Massachusetts',2142,'44'),('472','Pierstorff','Boston','Massachusetts',2114,'45'),('694','Kensington','Louisville','Kentucky',40250,'46'),('286','Maple','Springfield','Missouri',65810,'47'),('709','Stoughton','Dayton','Ohio',45408,'48'),('87','Novick','Oklahoma City','Oklahoma',73147,'49'),('5138','Jay','Fort Lauderdale','Florida',33345,'5'),('8','Westend','Birmingham','Alabama',35279,'50'),('6','Northview','Shawnee Mission','Kansas',66210,'51'),('57516','Lillian','Seattle','Washington',98148,'52'),('5026','Grover','Lake Charles','Louisiana',70616,'53'),('94333','Tennyson','New Orleans','Louisiana',70187,'54'),('4','Cherokee','Albany','New York',12222,'55'),('337','Fieldstone','New Castle','Pennsylvania',16107,'56'),('98','Glacier Hill','San Diego','California',92160,'57'),('781','Lindbergh','West Palm Beach','Florida',33405,'58'),('74','Old Gate','Greensboro','North Carolina',27425,'59'),('9783','Scoville','Hartford','Connecticut',6152,'6'),('385','Merry','Houston','Texas',77085,'60'),('95','Summer Ridge','Mobile','Alabama',36616,'61'),('1','Lighthouse Bay','Mesquite','Texas',75185,'62'),('9','Crownhardt','Inglewood','California',90305,'63'),('2','Grayhawk','Minneapolis','Minnesota',55407,'64'),('6','Rieder','Des Moines','Iowa',50936,'65'),('5009','Columbus','Mobile','Alabama',36622,'66'),('47625','Butternut','San Jose','California',95150,'67'),('96441','3rd','Tucson','Arizona',85732,'68'),('52257','Glacier Hill','Chicago','Illinois',60686,'69'),('96','Sundown','San Antonio','Texas',78240,'7'),('66310','Longview','Trenton','New Jersey',8638,'70'),('52560','Dorton','Macon','Georgia',31210,'71'),('991','Leroy','Saint Louis','Missouri',63116,'72'),('8883','Bartelt','Lexington','Kentucky',40596,'73'),('9','New Castle','Tampa','Florida',33680,'74'),('977','Roxbury','Raleigh','North Carolina',27626,'75'),('98343','Luster','Spokane','Washington',99252,'76'),('480','Fairview','Atlanta','Georgia',30316,'77'),('5','Melody','Austin','Texas',78754,'78'),('249','Continental','Minneapolis','Minnesota',55417,'79'),('7198','Debra','Buffalo','New York',14233,'8'),('0','West','Naperville','Illinois',60567,'80'),('370','Meadow Valley','San Antonio','Texas',78235,'81'),('4','Waxwing','Washington','District of Columbia',20591,'82'),('19899','Karstens','El Paso','Texas',88558,'83'),('15','Melody','Bakersfield','California',93399,'84'),('53124','Logan','San Jose','California',95108,'85'),('415','Village Green','Bridgeport','Connecticut',6673,'86'),('84918','Ronald Regan','Seattle','Washington',98140,'87'),('6029','Autumn Leaf','El Paso','Texas',79923,'88'),('35','Aberg','San Francisco','California',94116,'89'),('375','Killdeer','San Francisco','California',94142,'9'),('9','Magdeline','Santa Barbara','California',93106,'90'),('0','Mifflin','Saint Louis','Missouri',63104,'91'),('779','Vermont','Lancaster','Pennsylvania',17605,'92'),('4','Northport','Roanoke','Virginia',24040,'93'),('36901','Crest Line','Austin','Texas',78764,'94'),('119','Thierer','Idaho Falls','Idaho',83405,'95'),('160','Lyons','Cincinnati','Ohio',45238,'96'),('58','Westport','Washington','District of Columbia',20016,'97'),('846','Sycamore','Washington','District of Columbia',20442,'98'),('52','Delladonna','Lynchburg','Virginia',24515,'99');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `BankId` int(11) NOT NULL,
  `Bank_Name` varchar(30) NOT NULL,
  `YearOfEstablishment` date DEFAULT NULL,
  PRIMARY KEY (`BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'Bank of America','1998-01-10');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `BranchId` int(11) NOT NULL AUTO_INCREMENT,
  `BranchName` varchar(20) NOT NULL,
  `BankId` int(11) NOT NULL,
  `Assets` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BranchId`,`BankId`),
  KEY `Relationship32` (`BankId`),
  CONSTRAINT `Relationship32` FOREIGN KEY (`BankId`) REFERENCES `bank` (`BankId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Boston',1,'10000000'),(2,'San Fransisco',1,'25000000'),(3,'New York City',1,'3000000'),(4,'Chicago',1,'1500000');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkingaccount`
--

DROP TABLE IF EXISTS `checkingaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkingaccount` (
  `CheckingAccNo` int(11) NOT NULL AUTO_INCREMENT,
  `Balance` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  PRIMARY KEY (`CheckingAccNo`,`CustomerId`),
  KEY `Relationship36` (`CustomerId`),
  CONSTRAINT `Relationship36` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkingaccount`
--

LOCK TABLES `checkingaccount` WRITE;
/*!40000 ALTER TABLE `checkingaccount` DISABLE KEYS */;
INSERT INTO `checkingaccount` VALUES (1,115021,1),(2,26123,2),(3,224,3),(4,45,4),(5,5547,5),(6,7,6),(7,4,7),(8,77,8),(9,45,9),(10,4,10),(11,1,11),(12,3123123,12),(13,2,13),(14,321,14),(15,42342,15),(16,5,16),(17,463432,17),(18,4,18),(19,2423,19),(20,779,20),(21,435345,21),(22,4353453,22),(23,864563,23),(24,677,24),(25,77646,25),(26,77,26),(27,77,27),(28,777,28),(29,7,29),(30,77,30),(31,34,31),(32,5,32),(33,2,33),(34,24,34),(35,32,35),(36,34,36),(37,24423,37),(38,4,38),(39,556,39),(40,36,40),(41,34,41),(42,65,42),(43,345,43),(44,234546,44),(45,5,45),(46,4,46),(47,65,47),(48,6,48),(49,53,49),(50,452,50),(51,5465,51),(52,24,52),(53,62,53),(54,5546,54),(55,42,55),(56,543,56),(57,5625,57),(58,637,58),(59,564,59),(60,76,60),(61,564,61),(62,5345,62),(63,67,63),(64,564,64),(65,37,65),(66,536,66),(67,5,67),(68,642,68),(69,526537,69),(70,6,70),(71,376,71),(72,56,72),(73,764,73),(74,753,74),(75,6446,75),(76,7,76),(77,46,77),(78,75,78),(79,4,79),(80,53,80),(81,7,81),(82,444,82),(83,44,83),(84,423,84),(85,46,85),(86,35,86),(87,46,87),(88,35,88),(89,42,89),(90,63,90),(91,42,91),(92,4234,92),(93,422,93),(94,4,94),(95,423,95),(96,4242,96),(97,635,97),(98,63,98),(99,3423,99),(100,31412,100);
/*!40000 ALTER TABLE `checkingaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkingtransaction`
--

DROP TABLE IF EXISTS `checkingtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkingtransaction` (
  `TransactionId` int(11) NOT NULL AUTO_INCREMENT,
  `Date` timestamp NULL DEFAULT NULL,
  `TransactionType` varchar(20) DEFAULT NULL,
  `Amount` int(20) DEFAULT NULL,
  `CheckingAccNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`TransactionId`),
  KEY `IX_Relationship40` (`CheckingAccNo`),
  CONSTRAINT `Relationship40` FOREIGN KEY (`CheckingAccNo`) REFERENCES `checkingaccount` (`CheckingAccNo`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkingtransaction`
--

LOCK TABLES `checkingtransaction` WRITE;
/*!40000 ALTER TABLE `checkingtransaction` DISABLE KEYS */;
INSERT INTO `checkingtransaction` VALUES (1,NULL,'withdraw',1000,1),(2,NULL,'deposit',100,3),(3,NULL,'withdraw',1000,5),(4,'2016-12-12 04:51:52','deposit',10000,1),(101,'2016-12-12 07:01:18','withdraw',100000,1),(102,'2016-12-12 07:14:25','withdraw',3000,1),(103,'2016-12-12 07:20:01','withdraw',3000,1),(104,'2016-12-12 07:21:03','withdraw',3000,1),(105,'2016-12-12 07:21:03','deposit',3000,2);
/*!40000 ALTER TABLE `checkingtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerId` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `SSN` int(30) NOT NULL,
  `PhoneNumber` int(30) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `AddressId` char(10) DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  `EmployeeId` int(11) DEFAULT NULL,
  `BranchId` int(11) DEFAULT NULL,
  `BankId` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`),
  KEY `IX_Relationship25` (`AddressId`),
  KEY `IX_Relationship43` (`EmployeeId`,`BranchId`,`BankId`),
  CONSTRAINT `Relationship25` FOREIGN KEY (`AddressId`) REFERENCES `address` (`AddressId`),
  CONSTRAINT `Relationship43` FOREIGN KEY (`EmployeeId`, `BranchId`, `BankId`) REFERENCES `employee` (`EmployeeId`, `BranchId`, `BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ashley','Mccoy',435,86,'amccoy0@amazon.co.uk','Female','1939-02-19','1','0000-00-00',1,1,1),(2,'Sharon','Sims',521,972,'ssims1@i2i.jp','Female','1982-06-25','2','0000-00-00',2,1,1),(3,'Walter','Porter',522,1,'wporter2@cbc.ca','Male','1921-02-21','3','0000-00-00',3,1,1),(4,'Jennifer','Harvey',272,54,'jharvey3@deliciousdays.com','Female','1995-12-15','4','0000-00-00',4,1,1),(5,'Ruby','Wheeler',821,62,'rwheeler4@miitbeian.gov.cn','Female','1940-10-05','5','0000-00-00',5,1,1),(6,'Jane','Carr',627,86,'jcarr5@spiegel.de','Female','1961-06-11','6','2015-12-10',6,1,1),(7,'Diana','Holmes',255,374,'dholmes6@purevolume.com','Female','1997-10-03','7','0000-00-00',7,1,1),(8,'Juan','Cooper',338,86,'jcooper7@jigsy.com','Male','1957-02-10','8','0000-00-00',8,1,1),(9,'Michael','Martin',436,52,'mmartin8@google.ru','Male','1997-04-21','9','0000-00-00',9,1,1),(10,'Chris','Collins',943,86,'ccollins9@livejournal.com','Male','1989-12-10','10','0000-00-00',10,1,1),(11,'Joseph','Murphy',688,420,'jmurphya@feedburner.com','Male','1920-12-23','11','0000-00-00',11,1,1),(12,'Julie','Phillips',974,33,'jphillipsb@opera.com','Female','1935-07-20','12','2001-08-07',12,1,1),(13,'Kelly','Gray',654,46,'kgrayc@ox.ac.uk','Female','1944-03-23','13','2004-10-09',13,1,1),(14,'Cheryl','Owens',829,86,'cowensd@arstechnica.com','Female','1965-09-08','14','0000-00-00',14,1,1),(15,'Mark','Hall',329,996,'mhalle@ucoz.ru','Male','1977-02-14','15','0000-00-00',15,1,1),(16,'Jeremy','Ruiz',559,62,'jruizf@surveymonkey.com','Male','1988-02-18','16','0000-00-00',16,1,1),(17,'Martin','Weaver',272,48,'mweaverg@yellowpages.com','Male','1924-10-15','17','0000-00-00',17,1,1),(18,'Katherine','Perkins',796,55,'kperkinsh@edublogs.org','Female','1949-08-08','18','1999-09-11',18,1,1),(19,'Joe','Montgomery',416,212,'jmontgomeryi@canalblog.com','Male','1976-06-09','19','2006-03-12',19,1,1),(20,'Chris','Williams',289,48,'cwilliamsj@chron.com','Male','1997-11-04','20','0000-00-00',20,2,1),(21,'Alice','Watson',444,7,'awatsonk@foxnews.com','Female','1969-04-04','21','1999-08-11',21,2,1),(22,'Tammy','Gardner',294,380,'tgardnerl@jalbum.net','Female','1943-12-17','22','0000-00-00',22,2,1),(23,'Jennifer','Fox',179,86,'jfoxm@vimeo.com','Female','1960-09-02','23','0000-00-00',23,2,1),(24,'Ruth','Baker',419,420,'rbakern@moonfruit.com','Female','1941-03-05','24','1998-01-05',24,2,1),(25,'Donna','Williams',419,86,'dwilliamso@psu.edu','Female','1996-02-23','25','2002-01-01',25,2,1),(26,'Edward','Payne',975,86,'epaynep@army.mil','Male','1941-08-04','26','0000-00-00',26,2,1),(27,'Gloria','Perkins',190,7,'gperkinsq@bluehost.com','Female','1945-01-15','27','0000-00-00',27,2,1),(28,'Joyce','Scott',627,62,'jscottr@jigsy.com','Female','1990-03-23','28','2015-02-04',28,2,1),(29,'Ronald','Harris',786,48,'rharriss@yolasite.com','Male','1957-03-18','29','2010-07-06',29,2,1),(30,'Sharon','Cooper',795,62,'scoopert@trellian.com','Female','1962-01-14','30','2001-05-10',30,2,1),(31,'Martha','James',671,371,'mjamesu@illinois.edu','Female','1965-06-29','31','2007-07-11',31,2,1),(32,'Mildred','Little',375,1,'mlittlev@chicagotribune.com','Female','1924-07-12','32','0000-00-00',32,2,1),(33,'John','Nguyen',715,420,'jnguyenw@weibo.com','Male','1962-01-31','33','0000-00-00',33,2,1),(34,'Michael','Castillo',564,63,'mcastillox@twitpic.com','Male','1998-01-14','34','0000-00-00',34,2,1),(35,'Harry','Willis',912,216,'hwillisy@upenn.edu','Male','1934-06-07','35','0000-00-00',35,2,1),(36,'Jacqueline','Thomas',643,86,'jthomasz@dailymail.co.uk','Female','1978-09-21','36','1998-04-11',36,2,1),(37,'Carolyn','Berry',143,351,'cberry10@diigo.com','Female','1959-07-29','37','1998-01-12',37,2,1),(38,'Victor','Bailey',709,86,'vbailey11@engadget.com','Male','1975-03-22','38','2001-07-05',38,2,1),(39,'Lawrence','Jenkins',503,993,'ljenkins12@fda.gov','Male','1952-11-20','39','0000-00-00',39,2,1),(40,'Carol','Richardson',361,7,'crichardson13@360.cn','Female','1995-06-20','40','0000-00-00',40,2,1),(41,'Donald','Kelley',962,353,'dkelley14@lulu.com','Male','1946-08-15','41','2005-05-10',41,3,1),(42,'Kathryn','Hawkins',670,86,'khawkins15@guardian.co.uk','Female','1981-01-22','42','0000-00-00',42,3,1),(43,'Anthony','Clark',541,355,'aclark16@nih.gov','Male','1941-03-27','43','0000-00-00',43,3,1),(44,'Keith','Howell',965,62,'khowell17@wikispaces.com','Male','1989-08-05','44','0000-00-00',44,3,1),(45,'Kathleen','Ross',555,54,'kross18@jalbum.net','Female','1977-10-19','45','0000-00-00',45,3,1),(46,'Nancy','Alvarez',391,48,'nalvarez19@dropbox.com','Female','1969-10-13','46','2016-05-03',46,3,1),(47,'Jeffrey','Schmidt',561,229,'jschmidt1a@bloglovin.com','Male','1956-06-02','47','0000-00-00',47,3,1),(48,'Katherine','Rogers',524,86,'krogers1b@msn.com','Female','1932-05-20','48','0000-00-00',48,3,1),(49,'Ruth','Lynch',932,374,'rlynch1c@eventbrite.com','Female','1936-11-23','49','0000-00-00',49,3,1),(50,'Betty','Peters',643,381,'bpeters1d@acquirethisname.com','Female','1974-05-15','50','0000-00-00',50,3,1),(51,'Joyce','Hudson',431,86,'jhudson1e@arizona.edu','Female','1924-07-02','51','2000-01-04',51,3,1),(52,'Stephanie','Kim',909,33,'skim1f@blinklist.com','Female','1994-07-30','52','0000-00-00',52,3,1),(53,'Annie','Peters',173,48,'apeters1g@odnoklassniki.ru','Female','1927-06-04','53','2014-08-12',53,3,1),(54,'Janet','Weaver',433,689,'jweaver1h@lycos.com','Female','1943-02-17','54','0000-00-00',54,3,1),(55,'Walter','Richards',930,60,'wrichards1i@php.net','Male','1965-06-12','55','0000-00-00',55,3,1),(56,'Amanda','Wallace',172,375,'awallace1j@cocolog-nifty.com','Female','1943-11-24','56','0000-00-00',56,3,1),(57,'Gloria','Boyd',321,994,'gboyd1k@usda.gov','Female','1945-05-03','57','0000-00-00',57,3,1),(58,'Linda','Welch',208,46,'lwelch1l@so-net.ne.jp','Female','1994-10-15','58','1999-05-08',58,3,1),(59,'Steven','Johnston',962,86,'sjohnston1m@howstuffworks.com','Male','1946-08-31','59','0000-00-00',59,3,1),(60,'Donald','Morris',446,375,'dmorris1n@usgs.gov','Male','1978-05-18','60','0000-00-00',60,3,1),(61,'Joan','Griffin',942,84,'jgriffin1o@about.com','Female','1958-10-21','61','0000-00-00',61,4,1),(62,'Teresa','Perez',694,48,'tperez1p@yelp.com','Female','1942-06-02','62','0000-00-00',62,4,1),(63,'Louis','Williamson',782,39,'lwilliamson1q@uiuc.edu','Male','1926-07-05','63','2009-05-03',63,4,1),(64,'Jeremy','Howard',533,86,'jhoward1r@spotify.com','Male','1974-02-27','64','0000-00-00',64,4,1),(65,'Mark','Woods',714,678,'mwoods1s@dagondesign.com','Male','1984-05-14','65','0000-00-00',65,4,1),(66,'Adam','Wright',846,86,'awright1t@wordpress.org','Male','1957-03-26','66','0000-00-00',66,4,1),(67,'Ernest','Miller',534,48,'emiller1u@ow.ly','Male','1976-09-26','67','2004-03-03',67,4,1),(68,'Sandra','Williamson',656,255,'swilliamson1v@google.fr','Female','1939-04-30','68','0000-00-00',68,4,1),(69,'Diane','Butler',624,62,'dbutler1w@npr.org','Female','1941-07-28','69','2012-10-11',69,4,1),(70,'Kathleen','Johnson',889,960,'kjohnson1x@reference.com','Female','1975-12-16','70','2015-01-03',70,4,1),(71,'Ronald','Henry',446,86,'rhenry1y@list-manage.com','Male','1964-08-14','71','2007-11-10',71,4,1),(72,'Ruby','Brown',457,31,'rbrown1z@illinois.edu','Female','1928-07-23','72','2013-02-08',72,4,1),(73,'John','Murphy',460,62,'jmurphy20@chicagotribune.com','Male','1976-08-05','73','2012-09-11',73,4,1),(74,'Jack','Elliott',543,234,'jelliott21@apple.com','Male','1941-02-11','74','2005-10-08',74,4,1),(75,'Nicholas','Gibson',407,63,'ngibson22@china.com.cn','Male','1922-08-07','75','0000-00-00',75,4,1),(76,'Gregory','Taylor',615,86,'gtaylor23@fastcompany.com','Male','1978-04-14','76','2010-09-09',76,4,1),(77,'Annie','Mendoza',227,86,'amendoza24@nhs.uk','Female','1983-10-02','77','0000-00-00',77,4,1),(78,'Jacqueline','Brooks',285,86,'jbrooks25@hibu.com','Female','1927-12-01','78','0000-00-00',78,4,1),(79,'Andrew','Ross',786,7,'aross26@hatena.ne.jp','Male','1932-04-18','79','2004-08-07',79,4,1),(80,'Mildred','White',918,1,'mwhite27@jiathis.com','Female','1952-08-09','80','0000-00-00',80,4,1),(81,'Craig','Perez',441,420,'cperez28@blogspot.com','Male','1945-08-22','81','0000-00-00',1,1,1),(82,'Christopher','Nguyen',372,351,'cnguyen29@columbia.edu','Male','1977-12-12','82','1998-08-06',1,1,1),(83,'Barbara','Stevens',453,54,'bstevens2a@wikispaces.com','Female','1948-08-05','83','0000-00-00',1,1,1),(84,'Julia','Gilbert',221,966,'jgilbert2b@google.de','Female','1987-03-11','84','0000-00-00',1,1,1),(85,'Raymond','Burns',217,33,'rburns2c@home.pl','Male','1953-10-07','85','0000-00-00',1,1,1),(86,'Daniel','Dunn',696,86,'ddunn2d@newyorker.com','Male','1925-02-19','86','0000-00-00',1,1,1),(87,'Gerald','Nichols',382,86,'gnichols2e@blogtalkradio.com','Male','1967-01-21','87','0000-00-00',1,1,1),(88,'Paula','Garrett',918,385,'pgarrett2f@nhs.uk','Female','1943-09-22','88','0000-00-00',2,1,1),(89,'Christopher','Richardson',154,86,'crichardson2g@blogspot.com','Male','1989-01-25','89','0000-00-00',2,1,1),(90,'Amy','Nichols',854,62,'anichols2h@csmonitor.com','Female','1972-08-30','90','2006-01-05',2,1,1),(91,'Marie','Bradley',622,380,'mbradley2i@hp.com','Female','1942-09-22','91','2016-06-09',2,1,1),(92,'Kathryn','Phillips',748,7,'kphillips2j@elpais.com','Female','1926-09-10','92','0000-00-00',2,1,1),(93,'Anna','Brooks',821,55,'abrooks2k@wikimedia.org','Female','1984-05-23','93','0000-00-00',2,1,1),(94,'Nicole','Murray',724,970,'nmurray2l@nsw.gov.au','Female','1993-08-28','94','0000-00-00',2,1,1),(95,'Sara','Freeman',265,351,'sfreeman2m@linkedin.com','Female','1990-02-17','95','0000-00-00',3,1,1),(96,'Carl','Lawson',646,1,'clawson2n@discovery.com','Male','1981-09-29','96','0000-00-00',3,1,1),(97,'Carolyn','Rice',116,86,'crice2o@jugem.jp','Female','1953-12-14','97','0000-00-00',3,1,1),(98,'Susan','Mcdonald',517,86,'smcdonald2p@blogtalkradio.com','Female','1979-07-21','98','2014-04-10',3,1,1),(99,'David','Hayes',792,62,'dhayes2q@flavors.me','Male','1991-06-07','99','0000-00-00',3,1,1),(100,'Kenneth','Wheeler',796,7,'kwheeler2r@unc.edu','Male','1986-10-21','100','2004-09-01',3,1,1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
/*!50001 DROP VIEW IF EXISTS `customerinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `customerinfo` AS SELECT 
 1 AS `CustomerId`,
 1 AS `checkingaccno`,
 1 AS `Date`,
 1 AS `TransactionId`,
 1 AS `transactiontype`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EmployeeId` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `BranchId` int(11) NOT NULL,
  `BankId` int(11) NOT NULL,
  PRIMARY KEY (`EmployeeId`,`BranchId`,`BankId`),
  UNIQUE KEY `Email_id` (`Email_id`),
  KEY `Relationship34` (`BranchId`,`BankId`),
  CONSTRAINT `Relationship34` FOREIGN KEY (`BranchId`, `BankId`) REFERENCES `branch` (`BranchId`, `BankId`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jean','Jackson','jjackson0@cornell.edu','0000-00-00','Female',1,1),(2,'Andrew','Rogers','arogers1@chronoengine.com','0000-00-00','Male',1,1),(3,'Jane','Patterson','jpatterson2@scribd.com','0000-00-00','Female',1,1),(4,'Irene','Marshall','imarshall3@histats.com','0000-00-00','Female',1,1),(5,'Frances','Powell','fpowell4@fema.gov','0000-00-00','Female',1,1),(6,'Randy','Henderson','rhenderson5@auda.org.au','0000-00-00','Male',1,1),(7,'Peter','Dunn','pdunn6@delicious.com','0000-00-00','Male',1,1),(8,'Edward','Reynolds','ereynolds7@ehow.com','0000-00-00','Male',1,1),(9,'Jacqueline','Hill','jhill8@mit.edu','0000-00-00','Female',1,1),(10,'Thomas','Jacobs','tjacobs9@si.edu','0000-00-00','Male',1,1),(11,'Gregory','Peterson','gpetersona@hp.com','0000-00-00','Male',1,1),(12,'Brian','Reid','breidb@arizona.edu','0000-00-00','Male',1,1),(13,'Sandra','Marshall','smarshallc@umich.edu','0000-00-00','Female',1,1),(14,'Jean','Hanson','jhansond@t-online.de','0000-00-00','Female',1,1),(15,'Ruth','Fox','rfoxe@mlb.com','0000-00-00','Female',1,1),(16,'Daniel','Payne','dpaynef@dedecms.com','0000-00-00','Male',1,1),(17,'Frank','Greene','fgreeneg@cbc.ca','0000-00-00','Male',1,1),(18,'Thomas','Cole','tcoleh@123-reg.co.uk','0000-00-00','Male',1,1),(19,'Ralph','Day','rdayi@techcrunch.com','0000-00-00','Male',1,1),(20,'Sandra','Henry','shenryj@twitpic.com','0000-00-00','Female',2,1),(21,'Pamela','Perez','pperezk@cmu.edu','0000-00-00','Female',2,1),(22,'Tina','Tucker','ttuckerl@about.me','0000-00-00','Female',2,1),(23,'Dorothy','Howell','dhowellm@scribd.com','0000-00-00','Female',2,1),(24,'Dennis','Weaver','dweavern@skyrock.com','0000-00-00','Male',2,1),(25,'Raymond','Moore','rmooreo@squarespace.com','0000-00-00','Male',2,1),(26,'Elizabeth','Schmidt','eschmidtp@google.fr','0000-00-00','Female',2,1),(27,'Matthew','Bryant','mbryantq@amazon.co.uk','0000-00-00','Male',2,1),(28,'Jennifer','Morris','jmorrisr@usgs.gov','0000-00-00','Female',2,1),(29,'Rebecca','Johnston','rjohnstons@psu.edu','0000-00-00','Female',2,1),(30,'Bobby','Woods','bwoodst@lulu.com','0000-00-00','Male',2,1),(31,'Adam','Henry','ahenryu@unblog.fr','0000-00-00','Male',2,1),(32,'Martha','Oliver','moliverv@dailymail.co.uk','0000-00-00','Female',2,1),(33,'Nancy','Harrison','nharrisonw@wikispaces.com','0000-00-00','Female',2,1),(34,'Albert','Ortiz','aortizx@issuu.com','0000-00-00','Male',2,1),(35,'Sean','Allen','salleny@addtoany.com','0000-00-00','Male',2,1),(36,'Billy','Sanchez','bsanchezz@berkeley.edu','0000-00-00','Male',2,1),(37,'Joan','Hart','jhart10@reuters.com','0000-00-00','Female',2,1),(38,'Edward','Wilson','ewilson11@home.pl','0000-00-00','Male',2,1),(39,'Shawn','Hicks','shicks12@topsy.com','0000-00-00','Male',2,1),(40,'Lois','Lawson','llawson13@virginia.edu','0000-00-00','Female',2,1),(41,'Joyce','Romero','jromero14@skype.com','0000-00-00','Female',3,1),(42,'Daniel','Harper','dharper15@twitter.com','0000-00-00','Male',3,1),(43,'Robert','Mills','rmills16@nature.com','0000-00-00','Male',3,1),(44,'Kelly','Young','kyoung17@squidoo.com','0000-00-00','Female',3,1),(45,'Ryan','Woods','rwoods18@sfgate.com','0000-00-00','Male',3,1),(46,'David','Cook','dcook19@histats.com','0000-00-00','Male',3,1),(47,'Paula','Moore','pmoore1a@europa.eu','0000-00-00','Female',3,1),(48,'Kelly','Black','kblack1b@comsenz.com','0000-00-00','Female',3,1),(49,'Amanda','Nichols','anichols1c@sohu.com','0000-00-00','Female',3,1),(50,'Todd','Clark','tclark1d@ca.gov','0000-00-00','Male',3,1),(51,'Amanda','Graham','agraham1e@scientificamerican.c','0000-00-00','Female',3,1),(52,'Anna','Johnston','ajohnston1f@tripod.com','0000-00-00','Female',3,1),(53,'Anna','Crawford','acrawford1g@yolasite.com','0000-00-00','Female',3,1),(54,'Antonio','Moreno','amoreno1h@miitbeian.gov.cn','0000-00-00','Male',3,1),(55,'Donna','Owens','dowens1i@disqus.com','0000-00-00','Female',3,1),(56,'Betty','Schmidt','bschmidt1j@independent.co.uk','0000-00-00','Female',3,1),(57,'Marie','Carter','mcarter1k@wikipedia.org','0000-00-00','Female',3,1),(58,'Virginia','Grant','vgrant1l@kickstarter.com','0000-00-00','Female',3,1),(59,'Henry','Crawford','hcrawford1m@usatoday.com','0000-00-00','Male',3,1),(60,'Mildred','Ellis','mellis1n@cocolog-nifty.com','0000-00-00','Female',3,1),(61,'Gerald','Wheeler','gwheeler1o@jimdo.com','0000-00-00','Male',4,1),(62,'Alan','Bell','abell1p@jigsy.com','0000-00-00','Male',4,1),(63,'Frances','Palmer','fpalmer1q@si.edu','0000-00-00','Female',4,1),(64,'Jose','Howell','jhowell1r@pcworld.com','0000-00-00','Male',4,1),(65,'Robert','Shaw','rshaw1s@noaa.gov','0000-00-00','Male',4,1),(66,'Jean','Mills','jmills1t@kickstarter.com','0000-00-00','Female',4,1),(67,'Pamela','Jordan','pjordan1u@godaddy.com','0000-00-00','Female',4,1),(68,'Anne','Wright','awright1v@flickr.com','0000-00-00','Female',4,1),(69,'Steven','Butler','sbutler1w@tuttocitta.it','0000-00-00','Male',4,1),(70,'Anna','Gardner','agardner1x@nba.com','0000-00-00','Female',4,1),(71,'Joshua','Russell','jrussell1y@php.net','0000-00-00','Male',4,1),(72,'Michelle','Rodriguez','mrodriguez1z@i2i.jp','0000-00-00','Female',4,1),(73,'Jane','Nichols','jnichols20@51.la','0000-00-00','Female',4,1),(74,'Gary','Wallace','gwallace21@senate.gov','0000-00-00','Male',4,1),(75,'Benjamin','Garza','bgarza22@si.edu','0000-00-00','Male',4,1),(76,'Alan','Stephens','astephens23@zimbio.com','0000-00-00','Male',4,1),(77,'Barbara','Young','byoung24@webmd.com','0000-00-00','Female',4,1),(78,'William','Torres','wtorres25@desdev.cn','0000-00-00','Male',4,1),(79,'Ann','Ford','aford26@simplemachines.org','0000-00-00','Female',4,1),(80,'Laura','Mcdonald','lmcdonald27@sourceforge.net','0000-00-00','Female',4,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loanaccount`
--

DROP TABLE IF EXISTS `loanaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loanaccount` (
  `CustomerId` int(11) DEFAULT NULL,
  `Loan_Amount` int(11) NOT NULL,
  `IssueDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `LoanAccNo` int(11) NOT NULL DEFAULT '1001',
  PRIMARY KEY (`LoanAccNo`),
  KEY `IX_Relationship17` (`CustomerId`),
  CONSTRAINT `Relationship17` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loanaccount`
--

LOCK TABLES `loanaccount` WRITE;
/*!40000 ALTER TABLE `loanaccount` DISABLE KEYS */;
INSERT INTO `loanaccount` VALUES (1,91526,'2001-03-10','2003-05-10',1),(2,33384,'1999-03-09','2012-11-27',2),(3,83764,'2001-07-24','2023-08-24',3),(4,65791,'2012-12-19','2016-11-02',4),(5,91047,'1999-03-24','2023-04-24',5),(6,66774,'2001-03-08','2025-01-13',6),(7,14387,'2014-08-28','2015-06-14',7),(8,99569,'2005-02-01','2015-12-25',8),(9,20492,'2009-05-23','2010-09-15',9),(10,29118,'1998-02-21','2013-02-27',10),(11,43783,'2000-07-23','2015-04-15',11),(12,44672,'2000-09-01','2023-12-10',12),(13,99694,'1998-08-12','2023-01-07',13),(14,46726,'2012-05-04','2016-10-09',14),(15,34888,'2015-06-01','2018-08-05',15),(16,9692,'2002-09-09','2006-05-04',16),(17,67635,'2010-08-15','2022-01-19',17),(18,10766,'2001-06-17','2019-08-03',18),(19,2107,'2008-03-10','2024-12-26',19),(20,62975,'2008-08-23','2024-07-20',20),(21,48343,'2013-06-14','2019-09-20',21),(22,92064,'2003-01-30','2010-01-29',22),(23,16333,'2012-02-26','2014-10-19',23),(24,70064,'2007-04-17','2015-03-29',24),(25,33030,'2010-08-31','2012-06-03',25),(26,17980,'2008-08-06','2023-08-10',26),(27,50193,'2003-10-06','2012-09-27',27),(28,7327,'2015-07-04','2018-05-13',28),(29,75037,'2008-10-27','2009-09-16',29),(30,3202,'2013-06-22','2020-06-15',30);
/*!40000 ALTER TABLE `loanaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loantransactions`
--

DROP TABLE IF EXISTS `loantransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loantransactions` (
  `TransactionId` int(11) NOT NULL DEFAULT '301',
  `Date` timestamp NULL DEFAULT NULL,
  `TransactionType` varchar(20) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `LoanAccNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`TransactionId`),
  KEY `IX_Relationship41` (`LoanAccNo`),
  CONSTRAINT `Relationship41` FOREIGN KEY (`LoanAccNo`) REFERENCES `loanaccount` (`LoanAccNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loantransactions`
--

LOCK TABLES `loantransactions` WRITE;
/*!40000 ALTER TABLE `loantransactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `loantransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savingsaccount`
--

DROP TABLE IF EXISTS `savingsaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savingsaccount` (
  `SavingsAccNo` int(11) NOT NULL AUTO_INCREMENT,
  `Balance` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  PRIMARY KEY (`SavingsAccNo`,`CustomerId`),
  KEY `Relationship35` (`CustomerId`),
  CONSTRAINT `Relationship35` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savingsaccount`
--

LOCK TABLES `savingsaccount` WRITE;
/*!40000 ALTER TABLE `savingsaccount` DISABLE KEYS */;
INSERT INTO `savingsaccount` VALUES (1,213021,1),(2,2313,2),(3,143,3),(4,45,4),(5,52452346,5),(6,36363463,6),(7,46,7),(8,3,8),(9,634,9),(10,6,10),(11,34,11),(12,52,12),(13,35,13),(14,2,14),(15,45,15),(16,1,16),(17,5,17),(18,354,18),(19,24656,19),(20,7453554,20),(21,4653,21),(22,364,22),(23,6,23),(24,646,24),(25,53,25),(26,46,26),(27,354,27),(28,246,28),(29,452,29),(30,463,30),(31,54246,31),(32,3,32),(33,545436,33),(34,4,34),(35,36,35),(36,42,36),(37,436,37),(38,54,38),(39,556,39),(40,24,40),(41,24,41),(42,45,42),(43,2,43),(44,544,44),(45,52,45),(46,465376,46),(47,5,47),(48,57,48),(49,5,49),(50,76,50),(51,5745,51),(52,6,52),(53,654,53),(54,563,54),(55,4,55),(56,543,56),(57,63,57),(58,42,58),(59,436,59),(60,435465,60),(61,5656546,61),(62,42436,62),(63,633,63),(64,3454,64),(65,75,65),(66,46,66),(67,36,67),(68,3,68),(69,5,69),(70,5,70),(71,376,71),(72,36345,72),(73,36,73),(74,4,74),(75,36,75),(76,3436,76),(77,3,77),(78,75,78),(79,54,79),(80,36,80),(81,7,81),(82,6,82),(83,5,83),(84,663,84),(85,4,85),(86,63,86),(87,4463,87),(88,4785653,88),(89,4,89),(90,232,90),(91,536,91),(92,47,92),(93,5634,93),(94,23,94),(95,25,95),(96,364,96),(97,7,97),(98,534,98),(99,3423,99),(100,63,100);
/*!40000 ALTER TABLE `savingsaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savingstransactions`
--

DROP TABLE IF EXISTS `savingstransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savingstransactions` (
  `TransactionId` int(11) NOT NULL DEFAULT '201',
  `Date` timestamp NULL DEFAULT NULL,
  `TransactionType` varchar(20) DEFAULT NULL,
  `SavingsAccNo` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`TransactionId`),
  KEY `IX_Relationship39` (`SavingsAccNo`),
  CONSTRAINT `Relationship39` FOREIGN KEY (`SavingsAccNo`) REFERENCES `savingsaccount` (`SavingsAccNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savingstransactions`
--

LOCK TABLES `savingstransactions` WRITE;
/*!40000 ALTER TABLE `savingstransactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `savingstransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `todays_loan_transaction`
--

DROP TABLE IF EXISTS `todays_loan_transaction`;
/*!50001 DROP VIEW IF EXISTS `todays_loan_transaction`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `todays_loan_transaction` AS SELECT 
 1 AS `TransactionId`,
 1 AS `Date`,
 1 AS `TransactionType`,
 1 AS `Amount`,
 1 AS `LoanAccNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `todays_savings_transaction`
--

DROP TABLE IF EXISTS `todays_savings_transaction`;
/*!50001 DROP VIEW IF EXISTS `todays_savings_transaction`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `todays_savings_transaction` AS SELECT 
 1 AS `TransactionId`,
 1 AS `Date`,
 1 AS `TransactionType`,
 1 AS `SavingsAccNo`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `todayscheckingtransaction`
--

DROP TABLE IF EXISTS `todayscheckingtransaction`;
/*!50001 DROP VIEW IF EXISTS `todayscheckingtransaction`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `todayscheckingtransaction` AS SELECT 
 1 AS `TransactionId`,
 1 AS `Date`,
 1 AS `TransactionType`,
 1 AS `Amount`,
 1 AS `CheckingAccNo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `customerinfo`
--

/*!50001 DROP VIEW IF EXISTS `customerinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerinfo` AS select `a`.`CustomerId` AS `CustomerId`,`b`.`CheckingAccNo` AS `checkingaccno`,`b`.`Date` AS `Date`,`b`.`TransactionId` AS `TransactionId`,`b`.`TransactionType` AS `transactiontype`,`b`.`Amount` AS `Amount` from (`checkingaccount` `a` join `checkingtransaction` `b` on((`a`.`CheckingAccNo` = `b`.`CheckingAccNo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `todays_loan_transaction`
--

/*!50001 DROP VIEW IF EXISTS `todays_loan_transaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todays_loan_transaction` AS select `loantransactions`.`TransactionId` AS `TransactionId`,`loantransactions`.`Date` AS `Date`,`loantransactions`.`TransactionType` AS `TransactionType`,`loantransactions`.`Amount` AS `Amount`,`loantransactions`.`LoanAccNo` AS `LoanAccNo` from `loantransactions` where (cast(`loantransactions`.`Date` as date) = curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `todays_savings_transaction`
--

/*!50001 DROP VIEW IF EXISTS `todays_savings_transaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todays_savings_transaction` AS select `savingstransactions`.`TransactionId` AS `TransactionId`,`savingstransactions`.`Date` AS `Date`,`savingstransactions`.`TransactionType` AS `TransactionType`,`savingstransactions`.`SavingsAccNo` AS `SavingsAccNo`,`savingstransactions`.`Amount` AS `Amount` from `savingstransactions` where (cast(`savingstransactions`.`Date` as date) = curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `todayscheckingtransaction`
--

/*!50001 DROP VIEW IF EXISTS `todayscheckingtransaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todayscheckingtransaction` AS select `checkingtransaction`.`TransactionId` AS `TransactionId`,`checkingtransaction`.`Date` AS `Date`,`checkingtransaction`.`TransactionType` AS `TransactionType`,`checkingtransaction`.`Amount` AS `Amount`,`checkingtransaction`.`CheckingAccNo` AS `CheckingAccNo` from `checkingtransaction` where (cast(`checkingtransaction`.`Date` as date) = curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-12  4:41:04
