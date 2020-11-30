-- MariaDB dump 10.18 Distrib 10.5.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost Database: strapidb
-- ------------------------------------------------------
-- Server version 10.5.8-MariaDB
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Current Database: `strapidb`
--
CREATE DATABASE /*!32312 IF NOT EXISTS*/ `strapidb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `strapidb`;
--
-- Table structure for table `alunos`
--
DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`n_matricula` bigint(20) DEFAULT NULL,
`nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`senha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`published_at` datetime DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `alunos_n_matricula_unique` (`n_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `alunos`
--
LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `alunos_cursos__cursos_alunos`
--
DROP TABLE IF EXISTS `alunos_cursos__cursos_alunos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos_cursos__cursos_alunos` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`aluno_id` int(11) DEFAULT NULL,
`curso_id` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `alunos_cursos__cursos_alunos`
--
LOCK TABLES `alunos_cursos__cursos_alunos` WRITE;
/*!40000 ALTER TABLE `alunos_cursos__cursos_alunos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alunos_cursos__cursos_alunos` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `core_store`
--
DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`environment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `core_store`
--
LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cursos`
--
DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`id_curso` bigint(20) DEFAULT NULL,
`nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`descricao` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`carga_horaria` int(11) DEFAULT NULL,
`professor` int(11) DEFAULT NULL,
`published_at` datetime DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `cursos_id_curso_unique` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cursos`
--
LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cursos__materials`
--
DROP TABLE IF EXISTS `cursos__materials`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos__materials` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`curso_id` int(11) DEFAULT NULL,
`material_id` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cursos__materials`
--
LOCK TABLES `cursos__materials` WRITE;
/*!40000 ALTER TABLE `cursos__materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos__materials` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `gerentes`
--
DROP TABLE IF EXISTS `gerentes`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerentes` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`n_matricula` bigint(20) DEFAULT NULL,
`nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`senha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`published_at` datetime DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `gerentes_n_matricula_unique` (`n_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `gerentes`
--
LOCK TABLES `gerentes` WRITE;
/*!40000 ALTER TABLE `gerentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerentes` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `materials`
--
DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`id_material` bigint(20) DEFAULT NULL,
`nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`published_at` datetime DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `materials_id_material_unique` (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `materials`
--
LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `professors`
--
DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professors` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`n_matricula` bigint(20) DEFAULT NULL,
`nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`senha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`published_at` datetime DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `professors_n_matricula_unique` (`n_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `professors`
--
LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `strapi_administrator`
--
DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`resetPasswordToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`registrationToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`isActive` tinyint(1) DEFAULT NULL,
`blocked` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `strapi_administrator`
--
LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `strapi_permission`
--
DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`fields` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`conditions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`role` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `strapi_permission`
--
LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `strapi_role`
--
DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `strapi_role_name_unique` (`name`),
UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `strapi_role`
--
LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `strapi_users_roles`
--
DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`user_id` int(11) DEFAULT NULL,
`role_id` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `strapi_users_roles`
--
LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `strapi_webhooks`
--
DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`headers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`events` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`enabled` tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `strapi_webhooks`
--
LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `upload_file`
--
DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`alternativeText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`width` int(11) DEFAULT NULL,
`height` int(11) DEFAULT NULL,
`formats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`ext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`size` decimal(10,2) NOT NULL,
`url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`previewUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`provider_metadata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `upload_file`
--
LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `upload_file_morph`
--
DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`upload_file_id` int(11) DEFAULT NULL,
`related_id` int(11) DEFAULT NULL,
`related_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`field` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`order` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `upload_file_morph`
--
LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `users-permissions_permission`
--
DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`enabled` tinyint(1) NOT NULL,
`policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`role` int(11) DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `users-permissions_permission`
--
LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `users-permissions_role`
--
DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `users-permissions_role`
--
LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `users-permissions_user`
--
DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
`provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`resetPasswordToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`confirmationToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`confirmed` tinyint(1) DEFAULT NULL,
`blocked` tinyint(1) DEFAULT NULL,
`role` int(11) DEFAULT NULL,
`created_by` int(11) DEFAULT NULL,
`updated_by` int(11) DEFAULT NULL,
`created_at` timestamp NULL DEFAULT current_timestamp(),
`updated_at` timestamp NULL DEFAULT current_timestamp(),
PRIMARY KEY (`id`),
UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `users-permissions_user`
--
LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2020-11-30 23:09:27
