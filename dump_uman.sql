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
-- Table structure for table `_hierarchies`
--

DROP TABLE IF EXISTS `_hierarchies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_hierarchies` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `p_gid` int(11) DEFAULT NULL,
  `multi` tinyint(1) DEFAULT NULL,
  `gname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_hierarchies`
--

LOCK TABLES `_hierarchies` WRITE;
/*!40000 ALTER TABLE `_hierarchies` DISABLE KEYS */;
/*!40000 ALTER TABLE `_hierarchies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kanjiname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kananame` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hierarchy_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'下村祐一','しもむらゆういち','shimomura_yuuichi@example.com',24,'2014-01-19 13:17:41','2014-02-05 12:17:55',1),(2,'横田優','よこたゆう','yokota_yuu@example.com',24,'2014-01-20 05:49:40','2014-02-05 12:17:55',2),(3,'下山恵子','しもやまけいこ','shimoyama_keiko@example.com',24,'2014-01-22 13:19:45','2014-02-05 12:17:55',3),(4,'大村右京','おおむらうきょう','oomura_ukyou@example.com',24,'2014-01-23 04:38:12','2014-02-05 12:17:55',4),(5,'岩下浩太郎','いわしたこうたろう','iwashita_koutarou@example.com',24,'2014-02-02 05:16:06','2014-02-05 12:17:55',5),(6,'遠藤季衣','えんどうとしえ','enndou_toshie@example.com',24,'2014-02-05 06:36:15','2014-02-05 12:17:55',1),(7,'伊崎草太','いさき そうた','isaki_souta@example.com',24,'2014-02-05 06:36:50','2014-02-05 12:17:55',1),(8,'森井洋介','もりいようすけ','morii_yousuke@example.com',24,'2014-02-05 06:37:26','2014-02-05 12:17:55',1),(9,'金谷 大五郎','かなやだいごろう','kanaya_daigorou@example.com',24,'2014-02-05 06:38:08','2014-02-05 12:17:55',1),(10,'勝田芽以','かつだ めい','katsuda_mei@example.com',24,'2014-02-05 06:39:00','2014-02-05 12:17:55',1),(11,'上田勝久','うえだかつひさ','ueda_katsuhisa@example.com',24,'2014-02-05 06:39:40','2014-02-05 12:17:55',1),(12,'国分聖陽','こくぶんまさあき','kokubunn_masaaki@example.com',25,'2014-02-05 06:40:20','2014-02-05 12:23:33',1),(13,'玉城真奈美','たまきまなみ','tamaki_manami@example.com',24,'2014-02-05 06:40:52','2014-02-05 12:17:55',1),(14,'綾小路満','あやのこうじみつる','ayanokouji_mitsuru@example.com',25,'2014-02-05 06:41:31','2014-02-05 12:23:33',1),(15,'富永竜也','とみながたつや','tominaga_tatsuya@example.com',24,'2014-02-05 06:42:08','2014-02-05 12:17:55',1),(16,'川崎ヒロ','かわさきひろ','kawasaki_hiro@example.com',25,'2014-02-05 06:43:11','2014-02-05 12:23:33',1),(17,'三谷玲那','みたにれな','mitani_rena@example.com',24,'2014-02-05 06:43:49','2014-02-05 12:17:55',1),(18,'一木恵梨香','いちきえりか','ichiki_erika@example.com',25,'2014-02-05 06:44:30','2014-02-05 12:23:33',1),(19,'広瀬さんま','ひろせさんま','hirose_sanma@example.com',24,'2014-02-05 06:46:12','2014-02-05 12:17:55',1),(20,'中尾一樹','なかおかずき','nakao_kazuki@example.com',25,'2014-02-05 06:46:46','2014-02-05 12:23:33',1),(21,'下山恵子','しもやまけいこ','shimoyama_keiko@example.com',24,'2014-02-05 06:48:13','2014-02-05 12:17:55',1),(22,'有田綾女','ありたあやめ','arita_ayame@example.com',31,'2014-02-05 12:26:56','2014-02-05 12:26:56',3),(23,'百瀬拓郎','ももせたくろう','momose_takurou@example.com',29,'2014-02-05 12:27:37','2014-02-05 12:27:37',3),(24,'岡村沙知絵','おかむらさちえ','okamura_sachie@example.com',31,'2014-02-05 12:28:22','2014-02-05 12:28:22',3),(25,'木原勤','きはらつとむ','kihara_tsutomu@example.com',31,'2014-02-05 12:29:29','2014-02-05 12:29:29',3),(26,'深井恵梨香','ふかいえりか','fukai_erika@example.com',29,'2014-02-05 12:30:34','2014-02-05 12:30:34',5),(27,'岸田 しほり','きしだ しほり','kishida_shihori@example.com',31,'2014-02-05 12:32:42','2014-02-05 12:32:42',3),(28,'玉井 悟志','たまい さとし','tamai_satoshi@example.com',31,'2014-02-05 12:33:14','2014-02-05 12:33:14',4),(29,'岩田 芳正','いわた よしまさ','iwata_yoshimasa@example.com',31,'2014-02-05 12:35:06','2014-02-05 12:35:06',3),(30,'新垣 竜次','あらがき りゅうじ','aragaki_ryuuji@example.com',31,'2014-02-05 12:37:21','2014-02-05 12:37:21',5),(31,'望月 あや子','もちづき あやこ','mochiduki_ayako@example.com',31,'2014-02-05 12:37:53','2014-02-05 12:37:53',5),(32,'矢口 茂樹','やぐち しげき','yaguchi_shigeki@example.com',30,'2014-02-05 12:38:21','2014-02-05 12:38:21',5),(33,'島崎 美奈','しまざき みな','shimazaki_mina@example.com',24,'2014-02-05 12:39:06','2014-02-05 12:40:25',5),(34,'北村 兼','きたむら けん','kitamura_ken@example.com',27,'2014-02-05 12:41:14','2014-02-05 12:41:14',4),(35,'森谷 信輔','もりや しんすけ','moriya_shinsuke@example.com',31,'2014-02-05 12:41:42','2014-02-05 12:41:42',5),(36,'松下 碧海','まつした おうが','matsushita_ouga@example.com',31,'2014-02-05 12:42:14','2014-02-05 12:42:14',4),(37,'学生さん','がくせいさん','testuser@example.com',7,'2014-02-06 11:34:16','2014-02-06 11:34:16',7),(38,'学生さん','がくせいさん','testuser@example.com',5,'2014-02-06 22:09:05','2014-02-06 22:40:46',8),(39,'学生さん','がくせいさん','testuser@example.com',7,'2014-02-06 23:39:26','2014-02-06 23:39:26',9),(40,'学生さん','がくせいさん','testuser@example.com',12,'2014-02-06 23:55:47','2014-02-07 00:28:10',10),(41,'学生さん','がくせいさん','testuser@example.com',25,'2014-02-07 01:11:16','2014-02-07 01:11:46',11),(42,'遊座','ゆうざ','user@example.com',1,'2014-02-07 19:32:28','2014-02-07 19:32:28',6),(43,'遊三','ゆうざ','test@example.com',32,'2014-02-07 20:01:12','2014-02-07 20:01:12',12);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$Ck6uAOI/z7yLenxhS6P/AOzVRPlVYVyxoiDXQ5/6KC8aLiCrXX4je',NULL,32,'2014-02-07 20:01:41','2014-02-07 19:59:19','127.0.0.1','127.0.0.1','2014-02-01 14:34:12','2014-02-07 20:01:41','00000');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'shin_in_199x@i.softbank.jp','test','test','2014-01-20 05:45:03','2014-01-20 05:45:03','管理者','shin_in_199x@i.softbank.jp','',1),(2,'saaaaaaa@yahoo.co.jp','text','aaaaaa','2014-01-20 05:51:10','2014-01-20 05:51:10','学生','nantokosinuke@yahoo.co.jp','nantokosinuke@yahoo.co.jp',2),(3,'shin_in_199x@i.softbank.jp','s','s','2014-01-23 04:10:23','2014-01-23 04:10:23','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',3),(4,'shin_in_199x@i.softbank.jp','aaa','aaa','2014-01-24 06:17:42','2014-01-24 06:17:42','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',4),(5,'shin_in_199x@i.softbank.jp','aa','aaa','2014-01-24 06:19:37','2014-01-24 06:19:37','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(6,'shin_in_199x@i.softbank.jp','aa','aaa','2014-01-24 06:26:10','2014-01-24 06:26:10','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(7,'shin_in_199x@i.softbank.jp','aaa','aaa','2014-01-24 07:35:30','2014-01-24 07:35:30','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(8,'shin_in_199x@i.softbank.jp','aaa','aaaa','2014-01-24 07:45:28','2014-01-24 07:45:28','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'shin_in_199x@i.softbank.jp','test','test','2014-01-24 07:46:39','2014-01-24 07:46:39','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'shin_in_199x@i.softbank.jp','sadfas','adsf','2014-01-31 12:56:11','2014-01-31 12:56:11','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(13,'nantokosinuke@yahoo.co.jp','aaaa','aaaaa','2014-01-31 12:57:26','2014-01-31 12:57:26','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(14,'fdsafsfsadfasfdsgadgas@yahoo.co.jp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'nantokosinuke@yahoo.co.jp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'shin_in_199x@i.softbank.jp','aaa','aaaa','2014-01-31 13:16:21','2014-01-31 13:16:21','管理者','shin_in_199x@i.softbank.jp','shin_in_199x@i.softbank.jp',1),(18,'nantokosinuke@yahoo.co.jp','a','a','2014-02-01 07:43:17','2014-02-01 07:43:17','学生','nantokosinuke@yahoo.co.jp','nantokosinuke@yahoo.co.jp',2),(19,'nantokosinuke@yahoo.co.jp','aaa','szzzz','2014-02-01 11:47:34','2014-02-01 11:47:34','管理者','shin_in_199x@i.softbank.jp','admin@example.com',1),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'shin_in_199x@i.softbank.jp','aaa','aaaa','2014-02-01 15:19:17','2014-02-01 15:19:17','管理者','','',1),(22,'shin_in_199x@i.softbank.jp','af','asdf','2014-02-06 11:39:48','2014-02-06 11:39:48','学生さん','testuser@example.com','testuser@example.com',7),(23,'shin_in_199x@i.softbank.jp','asd','asdf','2014-02-06 20:54:42','2014-02-06 20:54:42','学生さん','testuser@example.com','testuser@example.com',7),(24,'shin_in_199x@i.softbank.jp','fhgh','hgvjhgkj','2014-02-06 23:44:02','2014-02-06 23:44:02','学生さん','testuser@example.com','testuser@example.com',9);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchies`
--

DROP TABLE IF EXISTS `hierarchies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) DEFAULT NULL,
  `gname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchies`
--

LOCK TABLES `hierarchies` WRITE;
/*!40000 ALTER TABLE `hierarchies` DISABLE KEYS */;
INSERT INTO `hierarchies` VALUES (1,0,'root','2014-01-19 13:15:09','2014-01-20 08:13:27'),(2,1,'教職員','2014-01-23 04:40:36','2014-02-02 05:06:34'),(3,1,'学生','2014-02-02 05:07:48','2014-02-02 05:07:48'),(4,1,'学生会','2014-02-02 05:08:22','2014-02-02 05:08:22'),(5,1,'住居形態','2014-02-02 05:08:33','2014-02-02 05:09:08'),(6,2,'通信ネットワーク工学科','2014-02-05 12:11:04','2014-02-05 12:11:04'),(7,2,'電子システム工学科','2014-02-05 12:12:48','2014-02-05 12:12:48'),(8,2,'情報工学科','2014-02-05 12:13:25','2014-02-05 12:13:25'),(9,3,'1年','2014-02-05 12:13:44','2014-02-05 12:13:44'),(10,3,'2年','2014-02-05 12:13:58','2014-02-05 12:13:58'),(11,3,'3年','2014-02-05 12:14:11','2014-02-05 12:14:11'),(12,3,'4年','2014-02-05 12:14:21','2014-02-05 12:14:21'),(13,3,'5年','2014-02-05 12:14:57','2014-02-05 12:14:57'),(14,3,'専攻科1年','2014-02-05 12:15:10','2014-02-05 12:15:10'),(15,3,'専攻科2年','2014-02-05 12:15:19','2014-02-05 12:15:19'),(16,9,'5組','2014-02-05 12:15:35','2014-02-05 12:15:35'),(17,9,'6組','2014-02-05 12:16:30','2014-02-05 12:16:30'),(18,9,'7組','2014-02-05 12:16:39','2014-02-05 12:16:39'),(19,10,'通信','2014-02-05 12:16:50','2014-02-05 12:16:50'),(20,10,'電子','2014-02-05 12:16:59','2014-02-05 12:16:59'),(21,10,'情報','2014-02-05 12:17:07','2014-02-05 12:17:07'),(22,2,'一般教育科','2014-02-05 12:17:26','2014-02-05 12:17:26'),(23,2,'学生課','2014-02-05 12:17:34','2014-02-05 12:17:34'),(24,13,'情報','2014-02-05 12:17:55','2014-02-05 12:17:55'),(25,13,'電子','2014-02-05 12:19:20','2014-02-05 12:19:20'),(26,13,'通信','2014-02-05 12:19:36','2014-02-05 12:19:36'),(27,24,'就職','2014-02-05 12:19:52','2014-02-05 12:19:52'),(28,24,'進学','2014-02-05 12:20:13','2014-02-05 12:20:13'),(29,5,'寮','2014-02-05 12:20:28','2014-02-05 12:20:28'),(30,5,'自宅','2014-02-05 12:20:41','2014-02-05 12:20:41'),(31,5,'下宿','2014-02-05 12:20:52','2014-02-05 12:20:52');
/*!40000 ALTER TABLE `hierarchies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rails_admin_histories`
--

DROP TABLE IF EXISTS `rails_admin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rails_admin_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `username` varchar(255) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rails_admin_histories` (`item`,`table`,`month`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rails_admin_histories`
--

LOCK TABLES `rails_admin_histories` WRITE;
/*!40000 ALTER TABLE `rails_admin_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `rails_admin_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131011061736'),('20131021054300'),('20131103143907'),('20131103143937'),('20131103160944'),('20131110061625'),('20131110062341'),('20131121051039'),('20140117041141'),('20140117073942'),('20140117124530'),('20140117124902'),('20140118064755'),('20140118074217'),('20140118074233'),('20140119071716'),('20140201140152'),('20140201141017'),('20140201142049');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'shin_in_199x@i.softbank.jp','$2a$10$lXtY/GIuAbRixm0qlQPKaudGtT9Eu506Xc7B3IFjqgnUqXZbke64i',NULL,NULL,NULL,24,'2014-02-02 04:59:46','2014-02-01 15:19:51','127.0.0.1','127.0.0.1','2014-01-19 13:14:39','2014-02-02 04:59:46','i09157'),(2,'nantokosinuke@yahoo.co.jp','$2a$10$FYkrTKFSHewXwrA7x9/N.e/tdVgOjeTxwSawmna.KeCStkFIkXxgS',NULL,NULL,NULL,16,'2014-02-07 18:31:20','2014-02-07 02:38:44','127.0.0.1','127.0.0.1','2014-01-20 05:48:58','2014-02-07 18:31:20','i09000'),(3,'student@example.com','$2a$10$H2fGKrACtcxp4KhBVfspreNagrvLSeGFSmbcFj4zazpu04XqyXlP.',NULL,NULL,NULL,1,'2014-01-31 13:30:28','2014-01-31 13:30:28','127.0.0.1','127.0.0.1','2014-01-31 13:30:28','2014-01-31 13:30:28','123456'),(4,'123456@example.com','$2a$10$hmxAHe1459WoIlqmMtDjx.DSh7NDJv3OsD/yKYj5FXXpqBlVhWcou',NULL,NULL,NULL,2,'2014-02-01 14:37:24','2014-01-31 13:31:41','127.0.0.1','127.0.0.1','2014-01-31 13:31:41','2014-02-01 14:37:24','000000'),(5,'gakusei@example.com','$2a$10$S/T.pVHChPBkFyv8e8vBLOjTHGh7MjqvqFyCsXrBniN/HbNtWHiHe',NULL,NULL,NULL,0,NULL,NULL,'','','2014-02-02 05:15:02','2014-02-02 05:15:02','i09111'),(6,'admin@example.com','$2a$10$cjbZrBVxN9SfFHBFjYAPC.VkyVlONfOAPvFI9WJvVw/Eg9NBgIebe',NULL,NULL,NULL,3,'2014-02-07 19:58:18','2014-02-07 19:32:01','127.0.0.1','127.0.0.1','2014-02-06 10:30:51','2014-02-07 19:58:18','i09999'),(11,'testuser@example.com','$2a$10$3nn93rKuffI6Lpbz7SPhzOZtmGsHIbRA/0HhaZNDEn/5q4ZcZB/M.',NULL,NULL,NULL,3,'2014-02-07 02:51:48','2014-02-07 01:19:54','127.0.0.1','127.0.0.1','2014-02-07 00:32:48','2014-02-07 02:51:48','11111');
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

-- Dump completed on 2014-02-07 20:28:19
