-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 192.168.56.103    Database: myapp
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_tag_article_id_foreign` (`article_id`),
  KEY `article_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_index` (`user_id`),
  CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'Temporibus ad error ut earum rerum non adipisci.','Est quis error qui voluptas voluptate esse dolorem accusamus. Deserunt et velit culpa quaerat at et. In occaecati minus maxime molestias ut. Architecto consectetur eos alias ex et doloribus dicta.','2017-06-13 15:37:47','2017-06-13 15:37:47'),(2,2,'Corrupti eos sint debitis aliquam nobis qui perferendis.','Molestias velit est dolore voluptatem ipsa ullam quibusdam. Cum ullam voluptate accusamus nemo veritatis voluptas corporis. Delectus saepe placeat cupiditate sequi.','2017-06-16 15:18:08','2017-06-16 15:18:08'),(3,3,'Sed modi omnis quis a consequatur.','Aut exercitationem omnis qui aut sed rerum minima laudantium. Explicabo quos ipsam consectetur vel nihil magni. Enim officia repudiandae reprehenderit aut eos est earum. Eum aut pariatur corrupti officia.','2017-06-07 20:32:23','2017-06-07 20:32:23'),(4,4,'Recusandae inventore sit aut aut iure assumenda.','Dolore corrupti voluptate est dolores. Alias molestiae esse corrupti sit quam velit id doloribus.','2017-06-10 01:23:48','2017-06-10 01:23:48'),(5,5,'Reprehenderit dolores quidem eum at eaque.','Molestiae aut voluptatem quod adipisci maxime eos. Velit consequuntur quaerat impedit sequi. Quia iusto labore vel similique earum at.','2017-06-20 20:36:16','2017-06-20 20:36:16'),(6,1,'라라벨 이란?','재미있는 프레임워크인것 같다.','2017-07-04 01:03:37','2017-07-04 01:03:37'),(7,1,'적당한 제목','적당한 내용 입니다.','2017-07-06 02:26:21','2017-07-06 02:26:21'),(8,1,'적당한 제목 입니다.','적당한 본문 입니다.','2017-07-06 02:30:01','2017-07-06 02:30:01'),(9,1,'이번에도 적당한 제목 입니다.','이번에도 적당한 본문 입니다.','2017-07-06 02:37:17','2017-07-06 02:37:17'),(10,1,'새 포럼 글 쓰기의 제목 입니다.','새 포럼 글 쓰기의 본문 입니다.','2017-07-06 02:44:25','2017-07-06 02:44:25'),(11,1,'새 포험 글 쓰기 제목 입니다.','새 포럼 글 쓰기 본문 입니다.','2017-07-06 02:45:26','2017-07-06 02:45:26'),(12,1,'asfasdfasdfasfasdfasdf','safsadfasfdasdfsdfsafdwe','2017-07-06 02:48:03','2017-07-06 02:48:03'),(13,1,'fwefwf23fq2f2q3f','f232q3fwefwavbgwagfwfe','2017-07-06 02:48:33','2017-07-06 02:48:33'),(14,1,'새 포럼 글 쓰기의 제목 입니다.','새 포럼 글 쓰기의 본문 입니다.','2017-07-06 02:58:02','2017-07-06 02:58:02'),(15,1,'새 포럼 글 쓰기의 제목 입니다.','새 포럼 글 쓰기의 본문 입니다.','2017-07-06 02:59:43','2017-07-06 02:59:43'),(16,1,'새 포럼 글 쓰기의 제목 입니다.','새 포럼 글 쓰기의 본문 입니다.','2017-07-06 03:03:24','2017-07-06 03:03:24'),(17,1,'새 포럼 글 쓰기','새 포럼 글 쓰기 흠하하하','2017-07-06 03:38:56','2017-07-06 03:38:56'),(18,1,'새 포럼 글 쓰기','새 포럼 글 쓰기ㄴㅁㄻㄴㄻㄴㅇㄻㄴㄹㅇㅁㄴㄹㅇ','2017-07-06 03:42:02','2017-07-06 03:42:02'),(19,1,'새 포럼 글 쓰기 ㄴㄻㄴㅇㄹㄴㅁㄻㄴㅇㄹ','새 포럼 글 쓰기 ㅁㄴㄹㄴㅁㄻㄴㅇㄻㄴㅇㄹ','2017-07-06 03:46:09','2017-07-06 03:46:09'),(20,1,'새 포럼 글 쓰기 ㄴㅁㄹㅇㅁㄴㄹㅇㅁㄴㄹㄴㅁㄹㄴㅇㄹㄹㄴㅇ','새 포럼 글 쓰기 11111111111111111111111111111111ㅇㅁㄹㄴㄴㅇㅁㄻㄴㅇㅇㄴㄹ','2017-07-06 03:46:30','2017-07-06 03:46:30'),(21,1,'새 포럼 글 쓰기 111111111111111111111','새 포럼 글 쓰기1 22222222222222222222222','2017-07-06 03:47:10','2017-07-06 03:47:10');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (18,'2014_10_12_000000_create_users_table',1),(19,'2014_10_12_100000_create_password_resets_table',1),(20,'2017_07_04_044658_create_posts_table',1),(21,'2017_07_04_044725_create_authors_table',1),(22,'2017_07_04_050119_add_name_to_authors_table',1),(23,'2017_07_04_061055_create_articles_table',1),(24,'2017_07_04_061828_create_tags_table',1),(25,'2017_07_04_061846_create_article_tag_table',1),(26,'2017_07_06_124945_add_last_login_column_on_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Katelin Waters MD','karlie.denesik@example.org','$2y$10$OjpdpapttAeITpjBjJjkM.fOStZReD6QeckxdYLhE25sKToL/gu6y','oBpxTzSyKc','2017-07-03 23:41:45','2017-07-03 23:41:45',NULL),(2,'Miss Frances Boehm','durgan.sonny@example.com','$2y$10$m57DrOD.74eelPon/VsFLe/Z1H9Nb1GeehV/tUbTXKonE9aQchZHO','QqUnUsuOda','2017-07-03 23:41:45','2017-08-03 03:24:40','2017-08-03 03:24:40'),(3,'Mrs. Velda Wilderman','liam.jerde@example.net','$2y$10$02axXZHpea0N2hyQk/hAauxh1zI3BtYHGIdU8s1JMhz7BkDQHtOlW','UeVNzRCiaF','2017-07-03 23:41:45','2017-07-03 23:41:45',NULL),(4,'Philip Wolff II','aracely.dubuque@example.net','$2y$10$d7mOjUt5ndHGUev2xqUWTe2AsOxlBo92k3uk4fb0AaHrsbUMTxDj6','I00GLd9JGO','2017-07-03 23:41:45','2017-07-16 22:50:37','2017-07-16 22:50:37'),(5,'Noemi Auer','aliza57@example.org','$2y$10$XxQsYO8GsUPCroay0NCpH.QvcdXWQozjGuS..XtSdVstcVq1fccoG','ber3ZmJhbk','2017-07-03 23:41:45','2017-07-06 03:58:45','2017-07-06 03:58:45');
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

-- Dump completed on 2017-08-03 21:37:15
