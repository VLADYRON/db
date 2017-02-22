-- MySQL dump 10.13  Distrib 5.5.47, for Win64 (x86)
--
-- Host: localhost    Database: ares
-- ------------------------------------------------------
-- Server version	5.5.47

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
-- Table structure for table `prod_producto_ingreso_produccion`
--

DROP TABLE IF EXISTS `prod_producto_ingreso_produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_producto_ingreso_produccion` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT,
  `id_produccion_taller` bigint(15) DEFAULT NULL,
  `id_lote_producto` bigint(15) DEFAULT NULL,
  `cantidad` decimal(15,5) DEFAULT NULL,
  `cantidad_consumida` decimal(15,5) DEFAULT NULL,
  `cantidad_sobrante` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_9006` (`id_lote_producto`),
  KEY `rel_9005` (`id_produccion_taller`),
  CONSTRAINT `rel_9005` FOREIGN KEY (`id_produccion_taller`) REFERENCES `prod_produccion_taller` (`id`),
  CONSTRAINT `rel_9006` FOREIGN KEY (`id_lote_producto`) REFERENCES `alm_lote_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_producto_ingreso_produccion`
--

LOCK TABLES `prod_producto_ingreso_produccion` WRITE;
/*!40000 ALTER TABLE `prod_producto_ingreso_produccion` DISABLE KEYS */;
INSERT INTO `prod_producto_ingreso_produccion` VALUES (12,20,1494,100.00000,96.00000,4.00000),(13,20,1495,100.00000,99.00000,1.00000),(14,20,1496,100.00000,99.00000,1.00000),(15,20,1497,100.00000,93.00000,7.00000),(16,20,1498,100.00000,99.00000,1.00000),(17,20,1499,100.00000,99.00000,1.00000),(18,20,1500,100.00000,96.00000,4.00000),(19,20,1501,100.00000,100.00000,0.00000),(20,20,1502,100.00000,98.00000,2.00000),(21,20,1503,100.00000,99.00000,1.00000),(22,22,1594,190.00000,189.00000,1.00000),(23,22,1595,190.00000,189.00000,1.00000),(24,24,1494,4.00000,0.00000,4.00000),(25,24,1495,1.00000,0.00000,1.00000),(26,24,1496,1.00000,0.00000,1.00000),(27,24,1497,7.00000,0.00000,7.00000),(28,24,1498,1.00000,0.00000,1.00000),(29,24,1499,1.00000,0.00000,1.00000),(30,24,1500,4.00000,0.00000,4.00000),(31,24,1502,2.00000,0.00000,2.00000),(32,24,1503,1.00000,0.00000,1.00000),(33,24,1504,78.00000,0.00000,78.00000);
/*!40000 ALTER TABLE `prod_producto_ingreso_produccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-22 11:39:39
