-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: videoteca
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `actor`
--
CREATE DATABASE VIDEOTECA;
USE VIDEOTECA;

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `apellidos` varchar(64) NOT NULL,
  `imdb` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Harrison','Ford','nm0000148'),(2,'Russell','Crowe','nm0000128'),(3,'Lee','Marvin','nm0001511'),(4,'Clint','Eastwood','nm0000142'),(5,'Jean','Seberg','nm0781029'),(6,'Bruce','Dern','nm0001136'),(7,'Bruce','Boxleitner','nm0000310'),(8,'Rutger',' Hauer','nm0000442'),(9,'Sean','Young','nm0000707'),(10,'Matthew','McConaughey','nm0000190');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actores_por_pelicula`
--

DROP TABLE IF EXISTS `actores_por_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actores_por_pelicula` (
  `idpelicula` int(11) NOT NULL,
  `idactor` int(11) NOT NULL,
  PRIMARY KEY (`idpelicula`,`idactor`),
  KEY `app_FK1` (`idpelicula`),
  KEY `app_FK2` (`idactor`),
  CONSTRAINT `actores_por_pelicula_ibfk_1` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`id`),
  CONSTRAINT `actores_por_pelicula_ibfk_2` FOREIGN KEY (`idactor`) REFERENCES `actor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores_por_pelicula`
--

LOCK TABLES `actores_por_pelicula` WRITE;
/*!40000 ALTER TABLE `actores_por_pelicula` DISABLE KEYS */;
INSERT INTO `actores_por_pelicula` VALUES (1,1),(2,2),(3,1);
/*!40000 ALTER TABLE `actores_por_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `apellidos` varchar(64) NOT NULL,
  `imdb` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Ridley','Scott','nm0000631'),(2,'Mike','Nichols','nm0001566'),(3,'Robert','Zemekis','nm0000709'),(4,'Douglas','Trumbull','nm0874320');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directores_por_pelicula`
--

DROP TABLE IF EXISTS `directores_por_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directores_por_pelicula` (
  `idpelicula` int(11) NOT NULL,
  `iddirector` int(11) NOT NULL,
  PRIMARY KEY (`idpelicula`,`iddirector`),
  KEY `dpp_FK1` (`idpelicula`),
  KEY `dpp_FK2` (`iddirector`),
  CONSTRAINT `directores_por_pelicula_ibfk_1` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`id`),
  CONSTRAINT `directores_por_pelicula_ibfk_2` FOREIGN KEY (`iddirector`) REFERENCES `director` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores_por_pelicula`
--

LOCK TABLES `directores_por_pelicula` WRITE;
/*!40000 ALTER TABLE `directores_por_pelicula` DISABLE KEYS */;
INSERT INTO `directores_por_pelicula` VALUES (1,1),(2,1),(3,2);
/*!40000 ALTER TABLE `directores_por_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(2) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'CF','Ciencia Ficcion'),(2,'A','Aventuras'),(3,'D','Drama'),(4,'C','Comedia');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(80) NOT NULL,
  `idsoporte` int(11) NOT NULL,
  `idgenero` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `p_FK1` (`idsoporte`),
  KEY `p_FK2` (`idgenero`),
  CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`idsoporte`) REFERENCES `soporte` (`id`),
  CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Blade Runner',1,1),(2,'Gladiator',1,2),(3,'A proposito de Henry',2,3),(4,'Naves misteriosas',1,1);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soporte`
--

DROP TABLE IF EXISTS `soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(3) NOT NULL,
  `descripcion` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soporte`
--

LOCK TABLES `soporte` WRITE;
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
INSERT INTO `soporte` VALUES (1,'DVD','Digital Versatile Disc'),(2,'VHS','Video Home System'),(3,'LD','Laser Disc');
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `apellido` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `login` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `pwd` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `rol` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan','P??rez','juanp','juanp','administrador'),(2,'Mar??a','Flores','mariaf','mariaf','usuario');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28 16:32:47
