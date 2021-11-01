DROP DATABASE IF EXISTS javiertrombetta;
CREATE DATABASE javiertrombetta;
USE javiertrombetta;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: javiertrombetta
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Lorem ipsum dolor si'),(2,'Wisi forensibus mnes'),(3,'His audiam deserunt '),(4,'Dicunt percipit dese'),(5,'Mei eu mollis albuci'),(6,'Est ei erat mucius q'),(7,'Eam ex integre quaeq'),(8,'Has maiorum habemus '),(9,'At cum soleat disput'),(10,'Id sea utamur aperia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Alta'),(2,'Baja'),(3,'Modificación');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` smallint(5) unsigned NOT NULL,
  `estado_id` tinyint(3) unsigned DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `es_eliminable` tinyint(4) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1` (`usuario_id`),
  KEY `FK2` (`estado_id`),
  CONSTRAINT `FK1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FK2` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,1,1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut','Dicunt percipit deserunt ut usu. Aliquip delenit an eam, vocent vituperata vim ea. Ei mollis audire interpretaris cum, ei impedit fierent sea. Ius at homero noster prompta, ea sit dignissim vituperata efficiendi. Natum placerat ad mei.',NULL,'2021-11-01 14:20:10',NULL),(2,3,1,'At quaeque adversarium ius, sed at integre persius verterem. Sit summo tibique at, eam et fugit comp','Wisi forensibus mnesarchum in cum. Per id impetus abhorreant, his no magna definiebas, inani rationibus in quo. Ut vidisse dolores est, ut quis nominavi mel. Ad pri quod apeirian concludaturque, id timeam iudicabit rationibus pri. Erant putant luptatum e',NULL,'2021-11-01 14:20:14',NULL),(3,3,3,'In mel saperet expetendis. Vitae urbanitas sadipscing nec ut, at vim quis lorem labitur. Exerci elec','Eam ex integre quaeque bonorum, ea assum solet scriptorem pri, et usu nonummy accusata interpretaris. Debitis necessitatibus est no. Eu probo graeco eum, at eius choro sit, possit recusabo corrumpit vim ne. Noster diceret delicata vel id.',NULL,'2021-11-01 14:20:14','2021-11-01 14:20:20'),(4,5,1,'Eam ex integre quaeque bonorum, ea assum solet scriptorem pri, et usu nonummy accusata interpretaris','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea c',NULL,'2021-11-01 14:20:27',NULL),(5,5,3,'An vim commodo dolorem volutpat, cu expetendis voluptatum usu, et mutat consul adversarium his. His ','Id sea utamur aperiam, te per choro accusamus consulatu. Brute munere corrumpit ut pri. Ea ipsum appareat erroribus mea. Mei probo inani aliquid ad. Omnis fabulas concludaturque an vix, an noluisse takimata facilisis pro, sit te volumus mandamus. Ad malor',NULL,'2021-11-01 14:20:10','2021-11-01 14:20:31'),(6,5,2,'Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blan','Virtute equidem ceteros in mel. Id volutpat neglegentur eos. Eu eum facilisis voluptatum, no eam albucius verterem. Sit congue platonem adolescens ut. Offendit reprimique et has, eu mei homero imperdiet. Dicunt percipit deserunt ut usu. Aliquip delenit a',1,'2021-11-01 14:20:04','2021-11-01 14:20:35'),(7,3,2,'Dicunt percipit deserunt ut usu. Aliquip delenit an eam, vocent vituperata vim ea. Ei mollis audire ','Vis id minim dicant sensibus. Pri aliquip conclusionemque ad, ad malis evertitur torquatos his. Has ei solum harum reprimique, id illum saperet tractatos his. Ei omnis soleat antiopam quo. Ad augue inani postulant mel, mel ea qualisque forensibus. \nHis au',1,'2021-11-01 14:20:12','2021-11-01 14:20:42'),(8,9,1,'Mei eu mollis albucius, ex nisl contentiones vix. Duo persius volutpat at, cu iuvaret epicuri mei. D','Wisi forensibus mnesarchum in cum. Per id impetus abhorreant, his no magna definiebas, inani rationibus in quo. Ut vidisse dolores est, ut quis nominavi mel. Ad pri quod apeirian concludaturque, id timeam iudicabit rationibus pri. Erant putant luptatum ex',NULL,'2021-11-01 14:20:51',NULL),(9,9,3,'Vis id minim dicant sensibus. Pri aliquip conclusionemque ad, ad malis evertitur torquatos his. Has ','At quaeque adversarium ius, sed at integre persius verterem. Sit summo tibique at, eam et fugit complectitur, vis te natum vivendum mandamus. Iudico quodsi cum ad, dicit everti sensibus in sea, ea eius paulo deterruisset pri. Pro id aliquam hendrerit defi',NULL,'2021-11-01 14:20:05','2021-11-01 14:20:55'),(10,10,1,'His audiam deserunt in, eum ubique voluptatibus te. In reque dicta usu. Ne rebum dissentiet eam, vim','Est ei erat mucius quaeque. Ei his quas phaedrum, efficiantur mediocritatem ne sed, hinc oratio blandit ei sed. Blandit gloriatur eam et. Brute noluisse per et, verear disputando neglegentur at quo. Sea quem legere ei, unum soluta ne duo. Ludus complectit',NULL,'2021-11-01 14:20:58',NULL);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notas_id` int(10) unsigned DEFAULT NULL,
  `categorias_id` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3` (`notas_id`),
  KEY `FK4` (`categorias_id`),
  CONSTRAINT `FK3` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `FK4` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,3),(5,5,4),(6,6,5),(7,7,8),(8,8,2),(9,9,8),(10,10,8);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Carlos','carlos@lorem.com'),(2,'Miguel','miguel@lorem.com'),(3,'Sandra','sandra@lorem.com'),(4,'Jorge','jorge@lorem.com'),(5,'Esteban','esteban@lorem.com'),(6,'Milagros','milagros@lorem.com'),(7,'Sofía','sofia@lorem.com'),(8,'Joaquín','joaquin@lorem.com'),(9,'Iván','ivan@lorem.com'),(10,'Nicolás','nicolas@lorem.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'javiertrombetta'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-01 16:57:05
