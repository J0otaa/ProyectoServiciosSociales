-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: servicios_sociales
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asistentes_sociales`
--

DROP TABLE IF EXISTS `asistentes_sociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistentes_sociales` (
  `Nombre` varchar(45) DEFAULT NULL,
  `Identificacion` varchar(45) NOT NULL,
  `Fechadenacimiento` varchar(45) DEFAULT NULL,
  `Clienteafiliados` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistentes_sociales`
--

LOCK TABLES `asistentes_sociales` WRITE;
/*!40000 ALTER TABLE `asistentes_sociales` DISABLE KEYS */;
INSERT INTO `asistentes_sociales` VALUES ('Nombre','Identificacion','Fechadenacimiento','Clienteafiliados');
/*!40000 ALTER TABLE `asistentes_sociales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco_o_caja`
--

DROP TABLE IF EXISTS `banco_o_caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco_o_caja` (
  `Numero_de_Ingreso` varchar(45) NOT NULL,
  `Codigo` varchar(45) DEFAULT NULL,
  `Nombre_Banco_Caja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Numero_de_Ingreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_o_caja`
--

LOCK TABLES `banco_o_caja` WRITE;
/*!40000 ALTER TABLE `banco_o_caja` DISABLE KEYS */;
INSERT INTO `banco_o_caja` VALUES ('Numero_de_Ingreso','Codigo','Nombre_Banco_Caja');
/*!40000 ALTER TABLE `banco_o_caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia_beneficiada`
--

DROP TABLE IF EXISTS `familia_beneficiada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familia_beneficiada` (
  `Numerodeingreso` varchar(45) NOT NULL,
  `Numerodelafamiliabeneficiada` varchar(45) DEFAULT NULL,
  `Nombredelafiliado` varchar(45) DEFAULT NULL,
  `Numerodeintegrantes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Numerodeingreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia_beneficiada`
--

LOCK TABLES `familia_beneficiada` WRITE;
/*!40000 ALTER TABLE `familia_beneficiada` DISABLE KEYS */;
INSERT INTO `familia_beneficiada` VALUES ('Numerodeingreso','Numerodelafamiliabeneficiada','Nombredelafiliado','Numerodeintegrantes');
/*!40000 ALTER TABLE `familia_beneficiada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organización_de_ayuda_humanitaria`
--

DROP TABLE IF EXISTS `organización_de_ayuda_humanitaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organización_de_ayuda_humanitaria` (
  `Numero_de_Ingresos` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Contacto` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Numero_de_Ingresos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organización_de_ayuda_humanitaria`
--

LOCK TABLES `organización_de_ayuda_humanitaria` WRITE;
/*!40000 ALTER TABLE `organización_de_ayuda_humanitaria` DISABLE KEYS */;
INSERT INTO `organización_de_ayuda_humanitaria` VALUES ('Numero_de_Ingresos','Nombre','Contacto','Direccion');
/*!40000 ALTER TABLE `organización_de_ayuda_humanitaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_afiliada`
--

DROP TABLE IF EXISTS `persona_afiliada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_afiliada` (
  `Identificacion` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha_de_nacimiento` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_afiliada`
--

LOCK TABLES `persona_afiliada` WRITE;
/*!40000 ALTER TABLE `persona_afiliada` DISABLE KEYS */;
INSERT INTO `persona_afiliada` VALUES ('Identificacion','Nombre','Fecha_de_nacimiento','Telefono','Direccion');
/*!40000 ALTER TABLE `persona_afiliada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_agencia`
--

DROP TABLE IF EXISTS `tabla_agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_agencia` (
  `Numero_de_ingreso` varchar(45) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Numero_de_ingreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_agencia`
--

LOCK TABLES `tabla_agencia` WRITE;
/*!40000 ALTER TABLE `tabla_agencia` DISABLE KEYS */;
INSERT INTO `tabla_agencia` VALUES ('Numero_de_ingreso','Direccion','Telefono',NULL);
/*!40000 ALTER TABLE `tabla_agencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 13:22:00
