-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: strapidb
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `alunos` VALUES (3,1,'Bar Foo','barfoo@email.com','123',NULL,1,1,'2020-11-30 22:10:32','2020-11-30 22:10:32');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos_cursos__cursos_alunos`
--

DROP TABLE IF EXISTS `alunos_cursos__cursos_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_application::aluno.aluno','{\"uid\":\"application::aluno.aluno\",\"collectionName\":\"alunos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"aluno\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"n_matricula\":{\"required\":true,\"unique\":true,\"type\":\"biginteger\"},\"nome\":{\"type\":\"string\",\"required\":true},\"email\":{\"type\":\"email\",\"required\":true},\"senha\":{\"type\":\"password\",\"required\":true},\"cursos\":{\"via\":\"alunos\",\"collection\":\"curso\",\"dominant\":true,\"attribute\":\"curso\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(3,'model_def_application::curso.curso','{\"uid\":\"application::curso.curso\",\"collectionName\":\"cursos\",\"kind\":\"collectionType\",\"info\":{\"name\":\"curso\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"id_curso\":{\"type\":\"biginteger\",\"required\":true,\"unique\":true},\"nome\":{\"type\":\"string\",\"required\":true},\"descricao\":{\"type\":\"text\",\"required\":true},\"carga_horaria\":{\"type\":\"integer\",\"required\":true},\"professor\":{\"model\":\"professor\"},\"alunos\":{\"collection\":\"aluno\",\"via\":\"cursos\",\"attribute\":\"aluno\",\"column\":\"id\",\"isVirtual\":true},\"materials\":{\"collection\":\"material\",\"attribute\":\"material\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(4,'model_def_application::gerente.gerente','{\"uid\":\"application::gerente.gerente\",\"collectionName\":\"gerentes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"gerente\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"n_matricula\":{\"type\":\"biginteger\",\"required\":true,\"unique\":true},\"nome\":{\"type\":\"string\",\"required\":true},\"email\":{\"type\":\"email\",\"required\":true},\"senha\":{\"type\":\"password\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(5,'model_def_application::material.material','{\"uid\":\"application::material.material\",\"collectionName\":\"materials\",\"kind\":\"collectionType\",\"info\":{\"name\":\"material\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"id_material\":{\"type\":\"biginteger\",\"required\":true,\"unique\":true},\"nome\":{\"type\":\"string\",\"required\":true},\"arquivo\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\",\"images\",\"videos\"],\"plugin\":\"upload\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_application::professor.professor','{\"uid\":\"application::professor.professor\",\"collectionName\":\"professors\",\"kind\":\"collectionType\",\"info\":{\"name\":\"professor\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"n_matricula\":{\"type\":\"biginteger\",\"required\":true,\"unique\":true},\"nome\":{\"type\":\"string\",\"required\":true},\"email\":{\"type\":\"email\",\"required\":true},\"senha\":{\"type\":\"password\",\"required\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(8,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(9,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(10,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(11,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(12,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(13,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(14,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(15,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}','object','',''),(16,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(17,'plugin_content_manager_configuration_content_types::application::aluno.aluno','{\"uid\":\"application::aluno.aluno\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"n_matricula\":{\"edit\":{\"label\":\"N_matricula\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"N_matricula\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"senha\":{\"edit\":{\"label\":\"Senha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Senha\",\"searchable\":true,\"sortable\":true}},\"cursos\":{\"edit\":{\"label\":\"Cursos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"Cursos\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"n_matricula\",\"nome\",\"email\"],\"editRelations\":[\"cursos\"],\"edit\":[[{\"name\":\"n_matricula\",\"size\":4},{\"name\":\"nome\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"senha\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::application::curso.curso','{\"uid\":\"application::curso.curso\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"id_curso\":{\"edit\":{\"label\":\"Id_curso\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Id_curso\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"Descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Descricao\",\"searchable\":true,\"sortable\":true}},\"carga_horaria\":{\"edit\":{\"label\":\"Carga_horaria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Carga_horaria\",\"searchable\":true,\"sortable\":true}},\"professor\":{\"edit\":{\"label\":\"Professor\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"Professor\",\"searchable\":false,\"sortable\":false}},\"alunos\":{\"edit\":{\"label\":\"Alunos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"Alunos\",\"searchable\":false,\"sortable\":false}},\"materials\":{\"edit\":{\"label\":\"Materials\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"Materials\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"id_curso\",\"nome\",\"descricao\"],\"editRelations\":[\"professor\",\"alunos\",\"materials\"],\"edit\":[[{\"name\":\"id_curso\",\"size\":4},{\"name\":\"nome\",\"size\":6}],[{\"name\":\"descricao\",\"size\":6},{\"name\":\"carga_horaria\",\"size\":4}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::application::gerente.gerente','{\"uid\":\"application::gerente.gerente\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"n_matricula\":{\"edit\":{\"label\":\"N_matricula\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"N_matricula\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"senha\":{\"edit\":{\"label\":\"Senha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Senha\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"n_matricula\",\"nome\",\"email\"],\"editRelations\":[],\"edit\":[[{\"name\":\"n_matricula\",\"size\":4},{\"name\":\"nome\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"senha\",\"size\":6}]]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::application::material.material','{\"uid\":\"application::material.material\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"id_material\":{\"edit\":{\"label\":\"Id_material\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Id_material\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"arquivo\":{\"edit\":{\"label\":\"Arquivo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Arquivo\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"id_material\",\"nome\",\"arquivo\"],\"editRelations\":[],\"edit\":[[{\"name\":\"id_material\",\"size\":4},{\"name\":\"nome\",\"size\":6}],[{\"name\":\"arquivo\",\"size\":6}]]}}','object','',''),(21,'plugin_content_manager_configuration_content_types::application::professor.professor','{\"uid\":\"application::professor.professor\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"n_matricula\":{\"edit\":{\"label\":\"N_matricula\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"N_matricula\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"senha\":{\"edit\":{\"label\":\"Senha\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Senha\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"n_matricula\",\"nome\",\"email\"],\"editRelations\":[],\"edit\":[[{\"name\":\"n_matricula\",\"size\":4},{\"name\":\"nome\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"senha\",\"size\":6}]]}}','object','',''),(22,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(23,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(24,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(25,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(26,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(27,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(28,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(29,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(30,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `cursos` VALUES (1,1,'Desenvolvimento de Software','SCRUM',10,NULL,NULL,1,1,'2020-11-30 22:11:05','2020-11-30 22:11:05');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos__materials`
--

DROP TABLE IF EXISTS `cursos__materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `gerentes` VALUES (2,1,'GERENTE','gerente@email.com','1234',NULL,1,1,'2020-11-30 22:13:10','2020-11-30 22:13:10');
/*!40000 ALTER TABLE `gerentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `materials` VALUES (1,1,'Scrum: The Art of Doing Twice the Work in Half the Time',NULL,1,1,'2020-11-30 22:12:53','2020-11-30 22:12:53');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `professors` VALUES (1,1,'Foo Bar','foobar@email.com','1234',NULL,1,1,'2020-11-30 22:10:09','2020-11-30 22:10:09');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `strapi_administrator` VALUES (1,'james','james',NULL,'james@james.com','$2a$10$fpaj5aFAMiZXrAXKYBXYaeWzi.c5ZIPMDreeYuMz/pB260pq.2Qyu',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `strapi_permission` VALUES (1,'plugins::content-manager.explorer.create','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(2,'plugins::content-manager.explorer.create','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(3,'plugins::content-manager.explorer.create','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(4,'plugins::content-manager.explorer.create','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(5,'plugins::content-manager.explorer.create','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(6,'plugins::content-manager.explorer.read','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(7,'plugins::content-manager.explorer.read','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(8,'plugins::content-manager.explorer.read','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(9,'plugins::content-manager.explorer.read','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(10,'plugins::content-manager.explorer.read','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(11,'plugins::content-manager.explorer.update','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(12,'plugins::content-manager.explorer.update','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(13,'plugins::content-manager.explorer.update','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(14,'plugins::content-manager.explorer.update','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(15,'plugins::content-manager.explorer.update','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(16,'plugins::content-manager.explorer.delete','application::aluno.aluno',NULL,'[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(17,'plugins::content-manager.explorer.delete','application::curso.curso',NULL,'[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(18,'plugins::content-manager.explorer.delete','application::gerente.gerente',NULL,'[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(19,'plugins::content-manager.explorer.delete','application::material.material',NULL,'[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(20,'plugins::content-manager.explorer.delete','application::professor.professor',NULL,'[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:18'),(21,'plugins::content-manager.explorer.publish','application::aluno.aluno',NULL,'[]',2,'2020-11-30 22:21:18','2020-11-30 22:21:19'),(22,'plugins::content-manager.explorer.publish','application::curso.curso',NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(23,'plugins::content-manager.explorer.publish','application::gerente.gerente',NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(24,'plugins::content-manager.explorer.publish','application::material.material',NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(25,'plugins::content-manager.explorer.publish','application::professor.professor',NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(26,'plugins::upload.read',NULL,NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(27,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(28,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(29,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(30,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(31,'plugins::content-manager.explorer.create','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(32,'plugins::content-manager.explorer.create','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(33,'plugins::content-manager.explorer.create','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(34,'plugins::content-manager.explorer.create','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(35,'plugins::content-manager.explorer.create','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(36,'plugins::content-manager.explorer.read','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(37,'plugins::content-manager.explorer.read','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(38,'plugins::content-manager.explorer.read','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(39,'plugins::content-manager.explorer.read','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(40,'plugins::content-manager.explorer.read','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(41,'plugins::content-manager.explorer.update','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(42,'plugins::content-manager.explorer.update','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(43,'plugins::content-manager.explorer.update','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(44,'plugins::content-manager.explorer.update','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(45,'plugins::content-manager.explorer.update','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(46,'plugins::content-manager.explorer.delete','application::aluno.aluno',NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(47,'plugins::content-manager.explorer.delete','application::curso.curso',NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(48,'plugins::content-manager.explorer.delete','application::gerente.gerente',NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(49,'plugins::content-manager.explorer.delete','application::material.material',NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(50,'plugins::content-manager.explorer.delete','application::professor.professor',NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(51,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(52,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(53,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(54,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(55,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(56,'plugins::content-manager.explorer.create','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(57,'plugins::content-manager.explorer.create','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(58,'plugins::content-manager.explorer.create','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(59,'plugins::content-manager.explorer.create','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(60,'plugins::content-manager.explorer.create','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(61,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(62,'plugins::content-manager.explorer.read','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(63,'plugins::content-manager.explorer.read','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(64,'plugins::content-manager.explorer.read','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(65,'plugins::content-manager.explorer.read','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(66,'plugins::content-manager.explorer.read','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:19'),(67,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(68,'plugins::content-manager.explorer.update','application::aluno.aluno','[\"n_matricula\",\"nome\",\"email\",\"senha\",\"cursos\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(69,'plugins::content-manager.explorer.update','application::curso.curso','[\"id_curso\",\"nome\",\"descricao\",\"carga_horaria\",\"professor\",\"alunos\",\"materials\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(70,'plugins::content-manager.explorer.update','application::gerente.gerente','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(71,'plugins::content-manager.explorer.update','application::material.material','[\"id_material\",\"nome\",\"arquivo\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(72,'plugins::content-manager.explorer.update','application::professor.professor','[\"n_matricula\",\"nome\",\"email\",\"senha\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(73,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(74,'plugins::content-manager.explorer.delete','application::aluno.aluno',NULL,'[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(75,'plugins::content-manager.explorer.delete','application::curso.curso',NULL,'[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(76,'plugins::content-manager.explorer.delete','application::gerente.gerente',NULL,'[]',1,'2020-11-30 22:21:19','2020-11-30 22:21:20'),(77,'plugins::content-manager.explorer.delete','application::material.material',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(78,'plugins::content-manager.explorer.delete','application::professor.professor',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(79,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(80,'plugins::content-manager.explorer.publish','application::aluno.aluno',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(81,'plugins::content-manager.explorer.publish','application::curso.curso',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(82,'plugins::content-manager.explorer.publish','application::gerente.gerente',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(83,'plugins::content-manager.explorer.publish','application::material.material',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(84,'plugins::content-manager.explorer.publish','application::professor.professor',NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(85,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(86,'plugins::upload.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(87,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(88,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(89,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(90,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(91,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(92,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(93,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(94,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(95,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(96,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(97,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(98,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(99,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(100,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(101,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(102,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(103,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(104,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(105,'admin::marketplace.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(106,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(107,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(108,'admin::webhooks.create',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(109,'admin::webhooks.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(110,'admin::webhooks.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(111,'admin::webhooks.delete',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(112,'admin::users.create',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(113,'admin::users.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(114,'admin::users.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(115,'admin::users.delete',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(116,'admin::roles.create',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(117,'admin::roles.read',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(118,'admin::roles.update',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20'),(119,'admin::roles.delete',NULL,NULL,'[]',1,'2020-11-30 22:21:20','2020-11-30 22:21:20');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2020-11-30 22:21:18','2020-11-30 22:21:18'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2020-11-30 22:21:18','2020-11-30 22:21:18'),(3,'Author','strapi-author','Authors can manage the content they have created.','2020-11-30 22:21:18','2020-11-30 22:21:18');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `upload_file` VALUES (1,'scrum.jpg','','',474,713,'{\"thumbnail\":{\"name\":\"thumbnail_scrum.jpg\",\"hash\":\"thumbnail_scrum_e2d903fe34\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":104,\"height\":156,\"size\":5.87,\"path\":null,\"url\":\"/uploads/thumbnail_scrum_e2d903fe34.jpg\"},\"small\":{\"name\":\"small_scrum.jpg\",\"hash\":\"small_scrum_e2d903fe34\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":332,\"height\":500,\"size\":31.4,\"path\":null,\"url\":\"/uploads/small_scrum_e2d903fe34.jpg\"}}','scrum_e2d903fe34','.jpg','image/jpeg',48.30,'/uploads/scrum_e2d903fe34.jpg',NULL,'local',NULL,1,1,'2020-11-30 22:12:51','2020-11-30 22:12:51');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `upload_file_morph` VALUES (1,1,1,'materials','arquivo',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `users-permissions_permission` VALUES (1,'application','aluno','count',0,'',1,NULL,NULL),(2,'application','aluno','count',0,'',2,NULL,NULL),(3,'application','aluno','create',0,'',1,NULL,NULL),(4,'application','aluno','create',0,'',2,NULL,NULL),(5,'application','aluno','delete',0,'',1,NULL,NULL),(6,'application','aluno','delete',0,'',2,NULL,NULL),(7,'application','aluno','find',0,'',1,NULL,NULL),(8,'application','aluno','find',0,'',2,NULL,NULL),(9,'application','aluno','findone',0,'',1,NULL,NULL),(10,'application','aluno','findone',0,'',2,NULL,NULL),(11,'application','aluno','update',0,'',1,NULL,NULL),(12,'application','aluno','update',0,'',2,NULL,NULL),(13,'application','curso','count',0,'',1,NULL,NULL),(14,'application','curso','count',0,'',2,NULL,NULL),(15,'application','curso','create',0,'',1,NULL,NULL),(16,'application','curso','create',0,'',2,NULL,NULL),(17,'application','curso','delete',0,'',1,NULL,NULL),(18,'application','curso','delete',0,'',2,NULL,NULL),(19,'application','curso','find',0,'',1,NULL,NULL),(20,'application','curso','find',0,'',2,NULL,NULL),(21,'application','curso','findone',0,'',1,NULL,NULL),(22,'application','curso','findone',0,'',2,NULL,NULL),(23,'application','curso','update',0,'',1,NULL,NULL),(24,'application','curso','update',0,'',2,NULL,NULL),(25,'application','gerente','count',0,'',1,NULL,NULL),(26,'application','gerente','count',0,'',2,NULL,NULL),(27,'application','gerente','create',0,'',1,NULL,NULL),(28,'application','gerente','create',0,'',2,NULL,NULL),(29,'application','gerente','delete',0,'',1,NULL,NULL),(30,'application','gerente','delete',0,'',2,NULL,NULL),(31,'application','gerente','find',0,'',1,NULL,NULL),(32,'application','gerente','find',0,'',2,NULL,NULL),(33,'application','gerente','findone',0,'',1,NULL,NULL),(34,'application','gerente','findone',0,'',2,NULL,NULL),(35,'application','gerente','update',0,'',1,NULL,NULL),(36,'application','gerente','update',0,'',2,NULL,NULL),(37,'application','material','count',0,'',1,NULL,NULL),(38,'application','material','count',0,'',2,NULL,NULL),(39,'application','material','create',0,'',1,NULL,NULL),(40,'application','material','create',0,'',2,NULL,NULL),(41,'application','material','delete',0,'',1,NULL,NULL),(42,'application','material','delete',0,'',2,NULL,NULL),(43,'application','material','find',0,'',1,NULL,NULL),(44,'application','material','find',0,'',2,NULL,NULL),(45,'application','material','findone',0,'',1,NULL,NULL),(46,'application','material','findone',0,'',2,NULL,NULL),(47,'application','material','update',0,'',1,NULL,NULL),(48,'application','material','update',0,'',2,NULL,NULL),(49,'application','professor','count',0,'',1,NULL,NULL),(50,'application','professor','count',0,'',2,NULL,NULL),(51,'application','professor','create',0,'',1,NULL,NULL),(52,'application','professor','create',0,'',2,NULL,NULL),(53,'application','professor','delete',0,'',1,NULL,NULL),(54,'application','professor','delete',0,'',2,NULL,NULL),(55,'application','professor','find',0,'',1,NULL,NULL),(56,'application','professor','find',0,'',2,NULL,NULL),(57,'application','professor','findone',0,'',1,NULL,NULL),(58,'application','professor','findone',0,'',2,NULL,NULL),(59,'application','professor','update',0,'',1,NULL,NULL),(60,'application','professor','update',0,'',2,NULL,NULL),(61,'content-manager','components','findcomponent',0,'',1,NULL,NULL),(62,'content-manager','components','findcomponent',0,'',2,NULL,NULL),(63,'content-manager','components','listcomponents',0,'',1,NULL,NULL),(64,'content-manager','components','listcomponents',0,'',2,NULL,NULL),(65,'content-manager','components','updatecomponent',0,'',1,NULL,NULL),(66,'content-manager','components','updatecomponent',0,'',2,NULL,NULL),(67,'content-manager','contentmanager','checkuidavailability',0,'',1,NULL,NULL),(68,'content-manager','contentmanager','checkuidavailability',0,'',2,NULL,NULL),(69,'content-manager','contentmanager','count',0,'',1,NULL,NULL),(70,'content-manager','contentmanager','count',0,'',2,NULL,NULL),(71,'content-manager','contentmanager','create',0,'',1,NULL,NULL),(72,'content-manager','contentmanager','create',0,'',2,NULL,NULL),(73,'content-manager','contentmanager','delete',0,'',1,NULL,NULL),(74,'content-manager','contentmanager','delete',0,'',2,NULL,NULL),(75,'content-manager','contentmanager','deletemany',0,'',1,NULL,NULL),(76,'content-manager','contentmanager','deletemany',0,'',2,NULL,NULL),(77,'content-manager','contentmanager','find',0,'',1,NULL,NULL),(78,'content-manager','contentmanager','find',0,'',2,NULL,NULL),(79,'content-manager','contentmanager','findone',0,'',1,NULL,NULL),(80,'content-manager','contentmanager','findone',0,'',2,NULL,NULL),(81,'content-manager','contentmanager','findrelationlist',0,'',1,NULL,NULL),(82,'content-manager','contentmanager','findrelationlist',0,'',2,NULL,NULL),(83,'content-manager','contentmanager','generateuid',0,'',1,NULL,NULL),(84,'content-manager','contentmanager','generateuid',0,'',2,NULL,NULL),(85,'content-manager','contentmanager','publish',0,'',1,NULL,NULL),(86,'content-manager','contentmanager','publish',0,'',2,NULL,NULL),(87,'content-manager','contentmanager','unpublish',0,'',1,NULL,NULL),(88,'content-manager','contentmanager','unpublish',0,'',2,NULL,NULL),(89,'content-manager','contentmanager','update',0,'',1,NULL,NULL),(90,'content-manager','contentmanager','update',0,'',2,NULL,NULL),(91,'content-manager','contenttypes','findcontenttype',0,'',1,NULL,NULL),(92,'content-manager','contenttypes','findcontenttype',0,'',2,NULL,NULL),(93,'content-manager','contenttypes','listcontenttypes',0,'',1,NULL,NULL),(94,'content-manager','contenttypes','listcontenttypes',0,'',2,NULL,NULL),(95,'content-manager','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(96,'content-manager','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(97,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(98,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(99,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(100,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(101,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(102,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(103,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(104,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(105,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(106,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(107,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(108,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(109,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(110,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(111,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(112,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(113,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(114,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(115,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(116,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(117,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(118,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(119,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(120,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(121,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(122,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(123,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(124,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(125,'email','email','send',0,'',1,NULL,NULL),(126,'email','email','send',0,'',2,NULL,NULL),(127,'upload','upload','count',0,'',1,NULL,NULL),(128,'upload','upload','count',0,'',2,NULL,NULL),(129,'upload','upload','destroy',0,'',1,NULL,NULL),(130,'upload','upload','destroy',0,'',2,NULL,NULL),(131,'upload','upload','find',0,'',1,NULL,NULL),(132,'upload','upload','find',0,'',2,NULL,NULL),(133,'upload','upload','findone',0,'',1,NULL,NULL),(134,'upload','upload','findone',0,'',2,NULL,NULL),(135,'upload','upload','getsettings',0,'',1,NULL,NULL),(136,'upload','upload','getsettings',0,'',2,NULL,NULL),(137,'upload','upload','search',0,'',1,NULL,NULL),(138,'upload','upload','search',0,'',2,NULL,NULL),(139,'upload','upload','updatesettings',0,'',1,NULL,NULL),(140,'upload','upload','updatesettings',0,'',2,NULL,NULL),(141,'upload','upload','upload',0,'',1,NULL,NULL),(142,'upload','upload','upload',0,'',2,NULL,NULL),(143,'users-permissions','auth','callback',0,'',1,NULL,NULL),(144,'users-permissions','auth','callback',1,'',2,NULL,NULL),(145,'users-permissions','auth','connect',1,'',1,NULL,NULL),(146,'users-permissions','auth','connect',1,'',2,NULL,NULL),(147,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(148,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(149,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(150,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(151,'users-permissions','auth','register',0,'',1,NULL,NULL),(152,'users-permissions','auth','register',1,'',2,NULL,NULL),(153,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(154,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(155,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(156,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(157,'users-permissions','user','count',0,'',1,NULL,NULL),(158,'users-permissions','user','count',0,'',2,NULL,NULL),(159,'users-permissions','user','create',0,'',1,NULL,NULL),(160,'users-permissions','user','create',0,'',2,NULL,NULL),(161,'users-permissions','user','destroy',0,'',1,NULL,NULL),(162,'users-permissions','user','destroy',0,'',2,NULL,NULL),(163,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(164,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(165,'users-permissions','user','find',0,'',1,NULL,NULL),(166,'users-permissions','user','find',0,'',2,NULL,NULL),(167,'users-permissions','user','findone',0,'',1,NULL,NULL),(168,'users-permissions','user','findone',0,'',2,NULL,NULL),(169,'users-permissions','user','me',1,'',1,NULL,NULL),(170,'users-permissions','user','me',1,'',2,NULL,NULL),(171,'users-permissions','user','update',0,'',1,NULL,NULL),(172,'users-permissions','user','update',0,'',2,NULL,NULL),(173,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(174,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(175,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(176,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(177,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(178,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(179,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(180,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(181,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(182,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(183,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(184,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(185,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(186,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(187,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(188,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(189,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(190,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(191,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(192,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(193,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(194,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(195,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(196,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(197,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(198,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(199,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(200,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(201,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(202,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(203,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(204,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
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
