-- MySQL dump 10.13  Distrib 5.5.28, for osx10.8 (i386)
--
-- Host: localhost    Database: UMAN
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `uid` char(30) CHARACTER SET latin1 NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `kanjiname` text,
  `kananame` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('skawata',8,'河田　進','ｶﾜﾀ ｽｽﾑ'),('miyatake',8,'宮武　明義','ﾐﾔﾀｹ ｱｷﾖｼ'),('yagi',7,'矢木正和','ｶ'),('sawada',6,'澤田士朗','ｶ'),('fukunaga',6,'福永哲也','ｶ'),('minami',22,'南　貴之','ｶ'),('fujihara',22,'冨士原伸弘','ｶ'),('ohba',23,'大場眞二郎','ｶ'),('kmanabe',6,'真鍋克也','ｶ'),('i09130',24,'誰か１','ｶ'),('i09130',30,'誰か１','ｶ'),('i09131',27,'誰か２','ｶ'),('i09130',28,'誰か１','ｶ'),('i09161',28,'誰か４','ｶ'),('i09161',24,'誰か４','ｶ'),('jkawata',8,'河田　純','ｶﾜﾀ ｼﾞｭﾝ'),('sawarame',8,'鰆目　正志','ｻﾜﾗﾒ ﾏｻｼ'),('sasayama',8,'篠山　学','ｻｻﾔﾏ ﾏﾅﾌﾞ');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
  `uid` char(30) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `authority` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorities`
--

LOCK TABLES `authorities` WRITE;
/*!40000 ALTER TABLE `authorities` DISABLE KEYS */;
INSERT INTO `authorities` VALUES ('skawata',1,3),('minami',10,4),('fujihara',17,3),('fujihara',17,4),('skawata',8,4),('skawata',24,2),('skawata',8,3),('kmanabe',1,1),('sawada',3,5),('skawata',8,1),('skawata',2,3),('skawata',5,2),('miyatake',8,2),('miyatake',8,4),('skawata',21,4),('skawata',2,4);
/*!40000 ALTER TABLE `authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gnames`
--

DROP TABLE IF EXISTS `gnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gnames` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gnames`
--

LOCK TABLES `gnames` WRITE;
/*!40000 ALTER TABLE `gnames` DISABLE KEYS */;
INSERT INTO `gnames` VALUES (1,'root'),(2,'教職員'),(3,'学生'),(4,'学生会'),(5,'住居形態'),(6,'通信ネットワーク工学科'),(7,'電子システム工学科'),(8,'情報工学科'),(9,'１年'),(10,'２年'),(11,'３年'),(12,'４年'),(13,'５年'),(14,'専攻科１年'),(15,'専攻科２年'),(16,'５組'),(17,'６組'),(18,'７組'),(19,'通信'),(20,'電子'),(21,'情報'),(22,'一般教育科'),(23,'学生課'),(24,'情報'),(25,'電子'),(26,'通信'),(27,'就職'),(28,'進学'),(29,'寮'),(30,'自宅'),(31,'下宿');
/*!40000 ALTER TABLE `gnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gnodes`
--

DROP TABLE IF EXISTS `gnodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gnodes` (
  `gid` int(11) NOT NULL,
  `p_gid` int(11) DEFAULT NULL,
  `multi` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  UNIQUE KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gnodes`
--

LOCK TABLES `gnodes` WRITE;
/*!40000 ALTER TABLE `gnodes` DISABLE KEYS */;
INSERT INTO `gnodes` VALUES (1,0,1),(2,1,0),(6,2,0),(3,1,0),(4,1,1),(5,1,0),(7,2,-1),(8,2,0),(9,3,-1),(10,3,-1),(11,3,-1),(12,3,-1),(13,3,-1),(14,3,-1),(15,3,-1),(16,9,-1),(17,9,-1),(18,9,-1),(19,10,-1),(20,10,-1),(21,10,-1),(22,2,-1),(23,2,-1),(24,13,-1),(25,13,-1),(26,13,-1),(27,24,-1),(28,24,1),(29,5,0),(30,5,-1),(31,5,-1);
/*!40000 ALTER TABLE `gnodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchies`
--

DROP TABLE IF EXISTS `hierarchies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchies` (
  `gid` int(11) NOT NULL,
  `p_gid` int(11) DEFAULT NULL,
  `multi` tinyint(1) DEFAULT NULL,
  `gname` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchies`
--

LOCK TABLES `hierarchies` WRITE;
/*!40000 ALTER TABLE `hierarchies` DISABLE KEYS */;
INSERT INTO `hierarchies` VALUES (1,0,1,'root'),(2,1,0,'教職員'),(6,2,0,'通信ネットワーク工学科'),(3,1,0,'学生'),(4,1,1,'学生会'),(5,1,0,'住居形態'),(7,2,-1,'電子システム工学科'),(8,2,0,'情報工学科'),(9,3,-1,'１年'),(10,3,-1,'２年'),(11,3,-1,'３年'),(12,3,-1,'４年'),(13,3,-1,'５年'),(14,3,-1,'専攻科１年'),(15,3,-1,'専攻科２年'),(16,9,-1,'５組'),(17,9,-1,'６組'),(18,9,-1,'７組'),(19,10,-1,'通信'),(20,10,-1,'電子'),(21,10,-1,'情報'),(22,2,-1,'一般教育科'),(23,2,-1,'学生課'),(24,13,-1,'情報'),(25,13,-1,'電子'),(26,13,-1,'通信'),(27,24,-1,'就職'),(28,24,1,'進学'),(29,5,0,'寮'),(30,5,-1,'自宅'),(31,5,-1,'下宿');
/*!40000 ALTER TABLE `hierarchies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_addresses`
--

DROP TABLE IF EXISTS `mail_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_addresses` (
  `uid` char(30) DEFAULT NULL,
  `mail` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_addresses`
--

LOCK TABLES `mail_addresses` WRITE;
/*!40000 ALTER TABLE `mail_addresses` DISABLE KEYS */;
INSERT INTO `mail_addresses` VALUES ('skawata','skawata@di.kagawa-nct.ac.jp'),('miyatake','miyatake@di.kagawa-nct.ac.jp'),('jkawata','jkawata@di.kagawa-nct.ac.jp');
/*!40000 ALTER TABLE `mail_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131011061736');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unames`
--

DROP TABLE IF EXISTS `unames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unames` (
  `uid` char(30) NOT NULL,
  `kanjiname` text,
  `kananame` text,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unames`
--

LOCK TABLES `unames` WRITE;
/*!40000 ALTER TABLE `unames` DISABLE KEYS */;
INSERT INTO `unames` VALUES ('skawata','河田　進','ｶﾜﾀ ｽｽﾑ'),('miyatake','宮武　明義','ﾐﾔﾀｹ ｱｷﾖｼ'),('yagi','矢木正和','ｶ'),('sawada','澤田士朗','ｶ'),('fukunaga','福永哲也','ｶ'),('kmanabe','真鍋克也','ｶ'),('minami','南　貴之','ｶ'),('fujihara','冨士原伸弘','ｶ'),('ohba','大場眞二郎','ｶ'),('i09130','誰か１','ｶ'),('i09131','誰か２','ｶ'),('i09152','誰か３','ｶ'),('i09161','誰か４','ｶ'),('jkawata','河田　純','ｶﾜﾀ ｼﾞｭﾝ'),('sasayama','篠山　学','ｻｻﾔﾏ ﾏﾅﾌﾞ'),('sawarame','鰆目　正志','ｻﾜﾗﾒ ﾏｻｼ');
/*!40000 ALTER TABLE `unames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` char(30) NOT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('skawata',8),('miyatake',8),('yagi',7),('sawada',6),('fukunaga',6),('minami',22),('fujihara',22),('ohba',23),('kmanabe',6),('i09130',24),('i09130',30),('i09131',27),('i09130',28),('i09161',28),('i09161',24),('jkawata',8),('sawarame',8),('sasayama',8);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-10 14:48:55
