CREATE DATABASE  IF NOT EXISTS `sis_felles` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sis_felles`;
-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sis_felles
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
-- Table structure for table `t_accion`
--

DROP TABLE IF EXISTS `t_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_accion` (
  `id_accion` int(11) NOT NULL AUTO_INCREMENT,
  `accion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_accion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_accion`
--

LOCK TABLES `t_accion` WRITE;
/*!40000 ALTER TABLE `t_accion` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_boleta_cab`
--

DROP TABLE IF EXISTS `t_boleta_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_boleta_cab` (
  `id_boleta_cab` int(11) NOT NULL,
  `num_boleta` char(6) NOT NULL,
  `fecha` datetime NOT NULL,
  `e_pago` char(1) NOT NULL,
  `e_boleta` char(1) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_boleta_cab`),
  KEY `Reft_proveedor51` (`id_proveedor`),
  KEY `Reft_usuario201` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_boleta_cab`
--

LOCK TABLES `t_boleta_cab` WRITE;
/*!40000 ALTER TABLE `t_boleta_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_boleta_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_boleta_det`
--

DROP TABLE IF EXISTS `t_boleta_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_boleta_det` (
  `id_boleta_det` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(5,2) NOT NULL,
  `importe` decimal(5,2) NOT NULL,
  `id_boleta_cab` int(11) NOT NULL,
  PRIMARY KEY (`id_boleta_det`),
  KEY `Reft_boleta_cab111` (`id_boleta_cab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_boleta_det`
--

LOCK TABLES `t_boleta_det` WRITE;
/*!40000 ALTER TABLE `t_boleta_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_boleta_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calibre`
--

DROP TABLE IF EXISTS `t_calibre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calibre` (
  `id_calibre` int(11) NOT NULL,
  `nombre` varchar(5) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `e_active` char(1) NOT NULL,
  PRIMARY KEY (`id_calibre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calibre`
--

LOCK TABLES `t_calibre` WRITE;
/*!40000 ALTER TABLE `t_calibre` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calibre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_calibre_producto`
--

DROP TABLE IF EXISTS `t_calibre_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_calibre_producto` (
  `id_calibre_producto` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_calibre` int(11) NOT NULL,
  PRIMARY KEY (`id_calibre_producto`),
  KEY `Reft_producto241` (`id_producto`),
  KEY `Reft_calibre251` (`id_calibre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_calibre_producto`
--

LOCK TABLES `t_calibre_producto` WRITE;
/*!40000 ALTER TABLE `t_calibre_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_calibre_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_componente`
--

DROP TABLE IF EXISTS `t_componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_componente` (
  `id_componente` int(11) NOT NULL AUTO_INCREMENT,
  `componente` varchar(100) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_componente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_componente`
--

LOCK TABLES `t_componente` WRITE;
/*!40000 ALTER TABLE `t_componente` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_componente_accion`
--

DROP TABLE IF EXISTS `t_componente_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_componente_accion` (
  `id_componente_accion` int(11) NOT NULL AUTO_INCREMENT,
  `id_accion` int(11) NOT NULL,
  `id_componente` int(11) NOT NULL,
  PRIMARY KEY (`id_componente_accion`),
  KEY `Reft_accion361` (`id_accion`),
  KEY `Reft_componente371` (`id_componente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_componente_accion`
--

LOCK TABLES `t_componente_accion` WRITE;
/*!40000 ALTER TABLE `t_componente_accion` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_componente_accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comunidad`
--

DROP TABLE IF EXISTS `t_comunidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comunidad` (
  `id_comunidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varbinary(50) NOT NULL,
  `descipcion` varchar(100) DEFAULT NULL,
  `id_distrito` int(11) NOT NULL,
  PRIMARY KEY (`id_comunidad`),
  KEY `Reft_distrito311` (`id_distrito`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comunidad`
--

LOCK TABLES `t_comunidad` WRITE;
/*!40000 ALTER TABLE `t_comunidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comunidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_distrito`
--

DROP TABLE IF EXISTS `t_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_distrito` (
  `id_distrito` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_provincia` int(11) NOT NULL,
  PRIMARY KEY (`id_distrito`),
  KEY `Reft_provincia301` (`id_provincia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_distrito`
--

LOCK TABLES `t_distrito` WRITE;
/*!40000 ALTER TABLE `t_distrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_empleado`
--

DROP TABLE IF EXISTS `t_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_empleado` (
  `id_empleado` int(11) NOT NULL,
  `id_sujeto` int(11) NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `Reft_sujeto21` (`id_sujeto`),
  KEY `Reft_tipo_empleado331` (`id_tipo_empleado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_empleado`
--

LOCK TABLES `t_empleado` WRITE;
/*!40000 ALTER TABLE `t_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_factura_cab`
--

DROP TABLE IF EXISTS `t_factura_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_factura_cab` (
  `id_factura_cab` int(11) NOT NULL,
  `num_fac` char(6) NOT NULL,
  `fecha` datetime NOT NULL,
  `num_guia` char(6) NOT NULL,
  `e_pago` char(1) NOT NULL,
  `e_factura` char(1) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_factura_cab`),
  KEY `Reft_proveedor121` (`id_proveedor`),
  KEY `Reft_usuario211` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_factura_cab`
--

LOCK TABLES `t_factura_cab` WRITE;
/*!40000 ALTER TABLE `t_factura_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_factura_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_factura_det`
--

DROP TABLE IF EXISTS `t_factura_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_factura_det` (
  `id_factura_det` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(5,2) NOT NULL,
  `importe` decimal(5,2) NOT NULL,
  `igv` decimal(5,2) NOT NULL,
  `id_factura_cab` int(11) NOT NULL,
  PRIMARY KEY (`id_factura_det`),
  KEY `Reft_factura_cab141` (`id_factura_cab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_factura_det`
--

LOCK TABLES `t_factura_det` WRITE;
/*!40000 ALTER TABLE `t_factura_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_factura_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_nota_cab`
--

DROP TABLE IF EXISTS `t_nota_cab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_nota_cab` (
  `id_nota_cab` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_nota_cab`),
  KEY `Reft_proveedor151` (`id_proveedor`),
  KEY `Reft_usuario221` (`id_usuario`),
  KEY `Reft_producto271` (`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_nota_cab`
--

LOCK TABLES `t_nota_cab` WRITE;
/*!40000 ALTER TABLE `t_nota_cab` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_nota_cab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_nota_det`
--

DROP TABLE IF EXISTS `t_nota_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_nota_det` (
  `id_nota_det` int(11) NOT NULL,
  `precio_cal` decimal(10,5) DEFAULT NULL,
  `id_nota_cab` int(11) NOT NULL,
  `id_calibre_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_nota_det`),
  KEY `Reft_nota_cab171` (`id_nota_cab`),
  KEY `Reft_calibre_producto261` (`id_calibre_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_nota_det`
--

LOCK TABLES `t_nota_det` WRITE;
/*!40000 ALTER TABLE `t_nota_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_nota_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_producto`
--

DROP TABLE IF EXISTS `t_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `e_active` char(1) NOT NULL,
  `id_tipo_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `Reft_tipo_producto231` (`id_tipo_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_producto`
--

LOCK TABLES `t_producto` WRITE;
/*!40000 ALTER TABLE `t_producto` DISABLE KEYS */;
INSERT INTO `t_producto` VALUES (1,'melocoton','','1',0);
/*!40000 ALTER TABLE `t_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_proveedor`
--

DROP TABLE IF EXISTS `t_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `id_sujeto` int(11) NOT NULL,
  `id_tipo_proveedor` int(11) NOT NULL,
  `id_comunidad` int(11) NOT NULL,
  PRIMARY KEY (`id_proveedor`),
  KEY `Reft_sujeto11` (`id_sujeto`),
  KEY `Reft_tipo_proveedor281` (`id_tipo_proveedor`),
  KEY `Reft_comunidad321` (`id_comunidad`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_proveedor`
--

LOCK TABLES `t_proveedor` WRITE;
/*!40000 ALTER TABLE `t_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_provincia`
--

DROP TABLE IF EXISTS `t_provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_region` int(11) NOT NULL,
  PRIMARY KEY (`id_provincia`),
  KEY `Reft_region291` (`id_region`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_provincia`
--

LOCK TABLES `t_provincia` WRITE;
/*!40000 ALTER TABLE `t_provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_region`
--

DROP TABLE IF EXISTS `t_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_region` (
  `id_region` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_region`
--

LOCK TABLES `t_region` WRITE;
/*!40000 ALTER TABLE `t_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_rol`
--

DROP TABLE IF EXISTS `t_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_rol`
--

LOCK TABLES `t_rol` WRITE;
/*!40000 ALTER TABLE `t_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_rol_componente_accion`
--

DROP TABLE IF EXISTS `t_rol_componente_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_rol_componente_accion` (
  `id_rol_componente_accion` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_componente_accion` int(11) NOT NULL,
  PRIMARY KEY (`id_rol_componente_accion`),
  KEY `Reft_rol381` (`id_rol`),
  KEY `Reft_componente_accion391` (`id_componente_accion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_rol_componente_accion`
--

LOCK TABLES `t_rol_componente_accion` WRITE;
/*!40000 ALTER TABLE `t_rol_componente_accion` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_rol_componente_accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sujeto`
--

DROP TABLE IF EXISTS `t_sujeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sujeto` (
  `id_sujeto` int(11) NOT NULL AUTO_INCREMENT,
  `ape_paterno` varchar(50) NOT NULL,
  `ape_materno` varchar(50) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `dni` char(8) NOT NULL,
  `ruc` char(11) DEFAULT NULL,
  `telefono` char(7) NOT NULL,
  `celular` char(9) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `fecha_nac` datetime NOT NULL,
  PRIMARY KEY (`id_sujeto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sujeto`
--

LOCK TABLES `t_sujeto` WRITE;
/*!40000 ALTER TABLE `t_sujeto` DISABLE KEYS */;
INSERT INTO `t_sujeto` VALUES (1,'Vicente','Rojas','Diego Humberto','72916160','','2396275','954304155','','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `t_sujeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tipo_empleado`
--

DROP TABLE IF EXISTS `t_tipo_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tipo_empleado` (
  `id_tipo_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_empleado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tipo_empleado`
--

LOCK TABLES `t_tipo_empleado` WRITE;
/*!40000 ALTER TABLE `t_tipo_empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tipo_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tipo_producto`
--

DROP TABLE IF EXISTS `t_tipo_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tipo_producto` (
  `id_tipo_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tipo_producto`
--

LOCK TABLES `t_tipo_producto` WRITE;
/*!40000 ALTER TABLE `t_tipo_producto` DISABLE KEYS */;
INSERT INTO `t_tipo_producto` VALUES (1,'tipo uno');
/*!40000 ALTER TABLE `t_tipo_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tipo_proveedor`
--

DROP TABLE IF EXISTS `t_tipo_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tipo_proveedor` (
  `id_tipo_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo_proveedor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tipo_proveedor`
--

LOCK TABLES `t_tipo_proveedor` WRITE;
/*!40000 ALTER TABLE `t_tipo_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_tipo_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuario`
--

DROP TABLE IF EXISTS `t_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasenia` varchar(50) NOT NULL,
  `id_sujeto` int(11) NOT NULL,
  `e_active` char(1) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `Reft_sujeto191` (`id_sujeto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuario`
--

LOCK TABLES `t_usuario` WRITE;
/*!40000 ALTER TABLE `t_usuario` DISABLE KEYS */;
INSERT INTO `t_usuario` VALUES (1,'diego','12345',1,'1');
/*!40000 ALTER TABLE `t_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuario_rol`
--

DROP TABLE IF EXISTS `t_usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usuario_rol` (
  `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_rol`),
  KEY `Reft_rol341` (`id_rol`),
  KEY `Reft_usuario351` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuario_rol`
--

LOCK TABLES `t_usuario_rol` WRITE;
/*!40000 ALTER TABLE `t_usuario_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sis_felles'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-17 18:39:46
