CREATE DATABASE  IF NOT EXISTS `ot` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `ot`;
-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: ot
-- ------------------------------------------------------
-- Server version 5.7.21-1

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
-- Table structure for table `Dependencias`
--

DROP TABLE IF EXISTS `Dependencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dependencias` (
  `DependenciaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacultadId` int(10) unsigned NOT NULL DEFAULT '0',
  `Nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Domicilio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SitioWeb` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ResponsableId` int(10) unsigned DEFAULT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  PRIMARY KEY (`DependenciaId`),
  KEY `FacultadId` (`FacultadId`),
  KEY `ResponsableId` (`ResponsableId`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dependencias`
--

LOCK TABLES `Dependencias` WRITE;
/*!40000 ALTER TABLE `Dependencias` DISABLE KEYS */;
INSERT INTO `Dependencias` VALUES (1,3,'Dpto de Despacho Gral y Mesa de Entrada - Fac.Naturales','Fac.Cs.Naturales','','','','',5,'activo'),(3,8,'Sector Administrativo - Sede Tartagal','Warnes y Ej. Argentino NВ°4560 Tartagal - Salta','0875 21182','0875 21182','-','-',3,'activo'),(4,8,'CTCE - Sede Tartagal','Warnes y Ej. Argentino NВ°4560 Tartagal - Salta','0875 21182','0875 21182','-','-',3,'activo'),(5,3,'Red InformГЎtica de Cs. Naturales - Fac.Naturales','Edificio de Cs. Naturales','+54-387-4255433/4 - 4255414','+54-387-4255455','-','-',5,'activo'),(6,3,'Dpto Despacho y Comisiones - Fac.Naturales','Facultad de Ciencias Naturales','0387-4255433/4','0387-4255455','-','-',5,'activo'),(7,9,'IEM: Instituto de EnseГ±anza Media - UNSa','Complejo Univesitario','-','-','-','-',7,'activo'),(8,7,'DirecciГіn Administrativa Contable - Sede OrГЎn','Alvarado NВ°751 - San RamГіn de la Nueva OrГЎn - Salta','03878-421388','03878-421388','-','-',8,'activo'),(9,7,'Mesa de Entrada - Sede Reg. OrГЎn','Alvarado NВє751 - San RamГіn de la Nueva OrГЎn - Salta','03878-421388','03878-421388','-','-',8,'activo'),(10,3,'Laboratorio de InformГЎtica - Fac.Naturales','Ed.Cs.Naturales','0387-4255433/4','0387-4255455','-','-',5,'activo'),(11,3,'Museo de Ciencias Naturales','Parque San MartГ­n - Salta','-','-','-','-',10,'activo'),(12,3,'Consejo Directivo - Fac.Naturales','Facultad de Ciencias Naturales','-',NULL,NULL,NULL,5,'activo'),(13,3,'IRNED:Instituto de Recursos Naturales y Ecodesarrollo - Fac.Naturales','Facultad de Ciencias Naturales',NULL,NULL,NULL,NULL,5,'activo'),(14,9,'Mesa de Ayuda - UNSa','Edificio Central - Subsuelo','4255526','-','-','-',9,'activo'),(15,9,'SecretarГ­a AcadГ©mica - UNSa','1В° Piso - Edificio central','0387 - 4255574/5567','-','-','-',9,'activo'),(16,7,'ГЃrea de Personal - Sede Reg.OrГЎn','Alvarado 750 OrГЎn','-','-','-','-',8,'activo'),(17,3,'Dpto de Compras y Patrimonio Fac.Naturales','Edificio de Naturales - Planta baja','-','-','-','-',12,'activo'),(18,3,'AcreditaciГіn Ing. Agronomica - Naturales','Edificio de Naturales - Planta baja','-','-','-','-',7,'activo'),(19,8,'Trayecto de Articulacion de la Licenciatura de Ciencias de la Educacion.','Warnes y Ej. Argentino','','03875-421182','-','-',3,'activo'),(20,7,'Sala de Computadoras - SRO','Alvarado 751 - Cp 4530','-','-','-','-',8,'activo'),(21,2,'Biblioteca - Cs Exactas','Edificio Central - Subsuelo','-','-','-','-',16,'activo'),(22,1,'Bibioteca Economicas','Edificio Central - Unsa','-','-','-','-',19,'activo'),(23,9,'PROGRAMA FAMILIAS POR LA INCLUSION SOCIAL','','','','','',9,'activo'),(24,8,'Museo EtnogrГЎfico Regional Tartagal','Ciudad de Tartagal','-','-','-','-',3,'activo'),(25,5,'Direccion Administrativa Contable','-','-','-','-','-',21,'activo'),(26,9,'SecretarГ­a Administrativa','Edificio Central - Unsa','-','-','-','-',22,'activo'),(27,9,'UNIDAD DE AUDITORIA INTERNA','Avda Bolivia 5150 - Salta','-','-','-','-',22,'activo'),(28,3,'Proyecto \"El Labotatorio como estrategia PedagГіgica\"','Edificio de Cs. Naturales',NULL,NULL,NULL,NULL,5,'activo'),(44,3,'PROYECTO GENERALES DE INOVACION PRODUCTIVA','UNSA','','','','',1,'activo'),(43,8,'Extension Universitaria - Sede Tartagal','Warnes y Ej. Argentino  - Tartagal','','','','',23,'activo'),(45,7,'Biblioteca - Sede OrГЎn','Alvarado 751, OrГЎn - CP 4530','','','','',213,'activo'),(46,1,'RED de Informatica de Cs. EconГіmicas','Fac. de Cs. Econ.','','','','',55,'activo'),(47,10,'Dpto Patrimonio CIUNSa','CIUNSa - Campo Universitario CastaГ±ares - Bolvia 5150 Salta','','','','',28,'activo'),(48,3,'Centro Tecnologico Comunitario Educativo (Sede Tartagal)','','','','','',17,'activo'),(49,3,'PFIP Kenaf - Expte 532/07','Campo CastaГ±ares','','','','',72,'activo'),(50,9,'FUNDALTES','','','','','',1,'activo'),(51,9,'Museo de Historia de la UNSA','Parque San MartГ­n - Salta','','','','',48,'activo'),(122,7,'Lab. de AnГЎlisis QuГ­micos y MicrobiolГіgico - Sede OrГЎn','','','','','',89,'activo'),(53,9,'ATENCION AL PUBLICO Y ORIENTACION EN LA UNSA','','','','','',1,'activo'),(54,7,'DirecciГіn Administrativa EconГіmica-Sede OrГЎn','Alvarado 750 - OrГЎn','','','','',30,'activo'),(55,2,'RED de InformГЎtica de Cs. Exactas','','','','','',26,'activo'),(59,2,'CONSEJO DE INVESTIGACION','','','','','',33,'activo'),(62,4,'Biblioteca Cs. de la Salud','','','','','',35,'activo'),(63,3,'Laboratorio de Petrologia y Minerologia de la Fac. de Naturales','','','','','',36,'activo'),(64,4,'mesa de Entrada- Archivo- fac. de Salud','Facultad de Ciencias de la Salud','','','','',20,'activo'),(65,4,'TELEFONO DE LA SALUD','Facultad de Ciencias de la Salud','','','','',1,'activo'),(67,6,'Laboratorio de Alimentos-IngenierГ­a','Fac. IngenerГ­a - Campo CastaГ±ares','','','','',32,'activo'),(120,1,'Gabinete de InfomГЎtica y demГЎs dependendias de la facultad de cs econГіmicas','','','','','',55,'activo'),(71,3,'DivisiГіn Personal - Cs Naturales','Avda. Bolivia 5150 - Salta','','','','',37,'activo'),(72,3,'FACULTAD DE CS. NATURALES','AVDA. BOLIVIA NВє 5150','','','','',37,'activo'),(75,9,'DirecciГіn General de Obras y Servicios - U.N.Sa.','Edificio Obras y Servicios - Campo CastaГ±ares - U.N.Sa.','4255401','','','',34,'activo'),(76,9,'CoordinaciГіn de Posgrado y Relaciones Internacionales','Oficina de Relaciones Internacionales y Posgrado de la Universidad Nacional de Salta - Complejo Univ','(+54) (387) 422-5533 / 5427','','coreinte@unsa.edu.ar','www.unsa.edu.ar/coreinte',56,'activo'),(77,9,'SecretarГ­a del Consejo Superior','Avda. Bolivia 5150 - Salta','4255421','','seccosu@unsa.edu.ar','',61,'activo'),(78,10,'Proyecto \"GestiГіn de Residuos Peligrosos en el Marco de ImplementaciГіn de un Sistema de GestiГіn Ambiental en la UNSaвЂќ','','','','','',256,'activo'),(79,4,'FACULTAD DE CS. DE LA SALUD','','','','','',38,'activo'),(31,1,'Direccion de Despacho - Cs EconГіmicas','Edificio Cs. EconГіmicas','','','','',42,'activo'),(30,3,'PFIP Pesca Artesanal - Expte 630/06','Complejo Universitario','','','','',43,'activo'),(29,9,'Direccion de Asesoria Juridica','Campo CastaГ±ares','4258686','','','',47,'activo'),(86,9,'DIRECCIГ“N GENERAL DEL CENTRO DE CГ“MPUTOS DELA UNIVERSIDAD NACIONAL DE SALTA.','','','','','',62,'activo'),(87,5,'ARCHIVO DE LA MEMORIA- SECRETARГЌA DEL CONSEJO SUPERIOR','AVDA. BOLIVIA NВє 5150','','','','',61,'activo'),(91,1,'TESORERГЌA GENERAL ','Avda. Bolivia NВє 5150.','','','','',64,'activo'),(121,6,'Facultad de Ingenieria',NULL,NULL,NULL,NULL,NULL,NULL,'activo'),(95,1,'DIRECCIГ“N DE CONTABILIDAD','Avda. Bolivia NВє 5150.','','','','',69,'activo'),(98,1,'DIRECCIГ“N GENERAL DE ADMINISTRACIГ“N','Avda. Bolivia NВє 5150.','','','','',54,'activo'),(118,14,'SecretarГ­a de CooperaciГіn TГ©cnica y Relaciones Internacionales','Av. Bolivia 5150, Edif. Biblioteca, 1er piso','0387 - 425 5555/3355','0387 - 425 8661','sct@unsa.edu.ar','',9,'activo'),(104,1,'DIRECCIГ“N GENERAL DE PERSONAL','','','','','',59,'activo'),(105,4,'Sala de InformГЎtica y CГЎtedra docentes de la Facultad','','','','','',79,'activo'),(106,4,'Instituto de PatologГ­a Experimental','','','','','',81,'activo'),(107,5,'Dpto. de Posgrado','','','','','',82,'activo'),(108,9,'SecretarГ­a de bienestar universitario','','','','','',83,'activo'),(109,9,'Radio Universidad Nacional de Salta','','','','','',84,'activo'),(111,9,'DIRECIГ“N DE PATRIMONIO','Avda. Bolivia 5150','','','','',88,'activo'),(112,9,'DirecciГіn de CoordinaciГіn Administrativade Rectorado','','','','','',89,'activo'),(113,2,'Mesa General de Entradas y Salidas - DirecciГіn de CorrdinaciГіn Administrativa de Rectorado','','','','','',89,'activo'),(114,9,'SecretarГ­a de ExtensiГіn Universitaria','','','','','',89,'activo'),(115,9,'CENTRO DE LENGUAS DE LA UNIVERSIDAD NACIONAL DE SALTA','','','','','',89,'activo'),(116,9,'IEM - Instituto de EnseГ±anza Media Tartagal ','','','','','',89,'activo'),(117,9,'Universidad Nacional de Salta',NULL,NULL,NULL,NULL,NULL,0,'activo');
/*!40000 ALTER TABLE `Dependencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facultades`
--

DROP TABLE IF EXISTS `Facultades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facultades` (
  `FacultadId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Sigla` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Domicilio` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SitioWeb` varchar(50) COLLATE utf8_spanish_ci DEFAULT '0',
  `DecanoId` int(10) DEFAULT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  `UniversidadId` int(11) NOT NULL,
  PRIMARY KEY (`FacultadId`),
  KEY `DecanoId` (`DecanoId`),
  KEY `UniversdiadId` (`UniversidadId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facultades`
--

LOCK TABLES `Facultades` WRITE;
/*!40000 ALTER TABLE `Facultades` DISABLE KEYS */;
INSERT INTO `Facultades` VALUES (1,'Ciencias EconГіmicas, JurГ­dicas y Sociales','EC','Complejo Universitario Gral.JosГ© de San MartГ­n ','0387-4255472','0387-4255464','dececo@unsa.edu.ar','0',NULL,'activo',1),(2,' Ciencias Exactas','EX','Complejo Universitario Gral.JosГ© de San MartГ­n ','0387-4255358','0387-4255449','decexa@unsa.edu.ar','0',7,'activo',1),(3,'Ciencias Naturales','NAT','Complejo Universitario Gral.JosГ© de San MartГ­n','0387-4255434','0387-4255455','decnat@unsa.edu.ar','0',66,'activo',1),(4,'Ciencias de la Salud','SAL','Complejo Universitario  Gral.JosГ© de San MartГ­n','0387-4255329','0387-4255456','decsal@unsa.edu.ar','0',NULL,'activo',1),(5,'Humanidades','HUM','Complejo Universitario  Gral.JosГ© de San MartГ­n ','0387-4255328','0387-4255458','dechum@unsa.edu.ar','0',NULL,'activo',1),(6,'IngenierГ­a','ING','Complejo Universitario - Gral.JosГ© de San MartГ­n ','0387-4255383','0387-4255351','fi_alum@unsa.edu.ar','www.ing.unsa.edu.ar',NULL,'activo',1),(7,'Sede Regional OrГЎn','SRO','Alvarado 751 - CP 4530 - OrГЎn','03878-421388',NULL,'unsaor@unsa.edu.ar','0',NULL,'activo',1),(8,'Sede Regional Tartagal','SRT','Warnes esq. Ejercito Argentino - CP 4560 - Tartagal','03875-421182','0387-421182','unsata@unsa.edu.ar','0',NULL,'activo',1),(9,'Universidad Nacional de Salta','UNSa','Complejo Universitario  Gral.JosГ© de San MartГ­n ','0387-4255555','0387-4255555','unsa@unsa.edu.ar','www.unsa.edu.ar',1,'activo',1),(10,'Consejo de InvestigaciГіn','CIUNSA','Complejo Universitario  Gral.JosГ© de San MartГ­n','054-87-4255406/405/337/340/336','054-87-4255483 / 4311611','consejo@unsa.edu.ar','www.ci.unsa.edu.ar',NULL,'activo',1),(11,'Universidad Catolica de Salta (Por Convenio)','UCASAL','Campus Universitario CastaГ±ares',NULL,NULL,NULL,'0',0,'activo',1),(12,'se deconoce','DES',NULL,NULL,NULL,NULL,'0',NULL,'activo',1),(13,'SecretarГ­a de Bienestar Universitario','SBU','Avda. Bolivia 5150',NULL,NULL,NULL,'0',NULL,'activo',1),(14,'Rectorado de la Universidad Nacional de Salta','REC','Avda. Bolivia 5150',NULL,NULL,NULL,'0',NULL,'activo',1),(15,'Instituto de EduaciГіn Media','IEM',NULL,NULL,NULL,NULL,'0',NULL,'activo',1);
/*!40000 ALTER TABLE `Facultades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OfertasTecno`
--

DROP TABLE IF EXISTS `OfertasTecno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OfertasTecno` (
  `OfertaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UnidadId` int(10) unsigned NOT NULL DEFAULT '0',
  `DependenciaId` int(10) unsigned NOT NULL DEFAULT '0',
  `Servicio` text COLLATE utf8_spanish_ci,
  `Estado` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`OfertaId`),
  KEY `UnidadId` (`UnidadId`),
  KEY `DependenciaId` (`DependenciaId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OfertasTecno`
--

LOCK TABLES `OfertasTecno` WRITE;
/*!40000 ALTER TABLE `OfertasTecno` DISABLE KEYS */;
INSERT INTO `OfertasTecno` VALUES (1,16,17,'1) EvaluaciГіn Nutricional de cualquier grupo poblacional que lo requiera: niГ±os, escolares, adolescente, adultos, adultos mayores, deportista orientado a su deporte tiendo en cuenta sus necesidades. Se realiza la evaluaciГіn diagnГіstica del estado nutricional del individuo o grupo poblacional y las orientaciones terapГ©uticas nutricionales necesarias; no tratamiento\n2) EvaluaciГіn nutricional desde el punto de vista antropomГ©trico y alimentario.\n3) CapacitaciГіn de recursos humanos en todo lo referente a valoraciГіn nutricional\n4) ValoraciГіn Nutricional mediante mediciones antropomГ©trica y bioimpedancia con equipo InBody 720. Mediante aparatos estandarizados.\n5) Conocer a nivel alimentario cada uno de los nutrientes presentes en la alimentaciГіn de personas para detectar dГ­ficit o excesos.  Mediante un anГЎlisis cuantitativo','active');
/*!40000 ALTER TABLE `OfertasTecno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personas`
--

DROP TABLE IF EXISTS `Personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personas` (
  `PersonaId` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Apellido` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Cargo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Domicilio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  `DNI` int(8) unsigned NOT NULL DEFAULT '0',
  `UserId` int(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`PersonaId`),
  KEY `UserId` (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personas`
--

LOCK TABLES `Personas` WRITE;
/*!40000 ALTER TABLE `Personas` DISABLE KEYS */;
INSERT INTO `Personas` VALUES (1,'MarГ­a del Carmen','Mg. Zimmer','Directora','','','','active',0,0),(2,'VerГіnica','Poderti','Secretaria','','','','active',0,0);
/*!40000 ALTER TABLE `Personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unidades`
--

DROP TABLE IF EXISTS `Unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unidades` (
  `UnidadId` int(10) unsigned NOT NULL DEFAULT '0',
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Descripcion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Domicilio` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SitioWeb` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FacultadId` int(10) unsigned DEFAULT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  PRIMARY KEY (`UnidadId`),
  KEY `FacultadId` (`FacultadId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unidades`
--

LOCK TABLES `Unidades` WRITE;
/*!40000 ALTER TABLE `Unidades` DISABLE KEYS */;
INSERT INTO `Unidades` VALUES (1,'INIQUI','INIQUI(Ing): Instituto de InvestigaciГіn para la Industria QuГ­mica','Edificio de QuГ­mica - Cs Exactas - Avda. Bolivia 5150 - Complejo Universitario','-','-','-','',6,'activo'),(2,'LE','Laboratorio de Estructuras','Box 901/2 Edificio de Obras y Servicios - Complejo Universitario','0387-4255380','','labestr@unsa.edu.ar','',6,'activo'),(3,'LMSL','Laboratorio de Materiales: Servicios Livianos','Complejo Universitario - Box 414 Block','','','','',6,'activo'),(4,'LMSP','Laboratorio de Materiales: Servicios Pesados','Complejo Universitario - Box 901 Edificio de Obras y Servicios','','','','',6,'activo'),(5,'LSV','Laboratorio de Suelos y VГ­as','Box 414 Block - Complejo Universitario','','','','',6,'activo'),(6,'CIUNSa','CIUNSa: Consejo de InvestigaciГіn','Complejo Universitario - Gral.JosГ© de San MartГ­n - Avda. Bolivia 5150','0387-4255406','',NULL,'www.ciunsa.edu.ar',NULL,'activo'),(7,'INENCO','INENCO(Ex): Instituto de EnergГ­as No Convencionales','Complejo Universitario - Edificio de Cs. Exactas - Avda. Bolivia 5150','0387 - 4255424/5423','0387 - 4255489','-','www.inenco.net',2,'activo'),(8,'ICMASA','ICMASA: Instituto de IngenierГ­a Civil y Medio Ambiente','Complejo Universitario - Gral.JosГ© de San MartГ­n - Avda. Bolivia 5150','-','','','',6,'activo'),(9,'INASLA','INASLA: Instituto de Aguas SubterrГЎneas para LatinoamГ©rica','Edificio de Cs. Naturales - Escuela de GeologГ­a - C?tedra de Hidrogeolog','+54 387 4255397','+54 387 4255455','inasla@unsa.edu.ar','-',3,'activo'),(10,'CIDIA','CIDIA: Centro de InvestigaciГіn y Desarrollo de InformГЎtica Aplicada','Edificio de Cs. Exactas Dpto InformГЎtica - Box 17 - 2? Piso','0387 - 4255476','-','cidia@unsa.edu.ar','http://cidia.unsa.edu.ar',2,'activo'),(11,'IRNED','IRNED: Instituto de Recursos Naturales y Ecodesarrollos','Edificio de Cs. Naturales','03875-423083 Int 5022','-','-','-',3,'activo'),(12,'INEAH','INEAH: Instituto de EcologГ­a y Ambiente Humano','Edificio de Cs. Naturales','','','','',3,'activo'),(13,'ASAE','AsociaciГіn Argentina de EcologГ­a','Edificio de Cs. Naturales','','','','',3,'activo'),(14,'LP-INIQUI','Laboratorio de PetroquГ­mica','Dpto. Planta Piloto 1 - Edificio de Ingenier','0387-4255343','','','',6,'activo'),(15,'Termod I-II','CГЎtedra de TermodinГЎmica I y II','Dpto. de IngenierГ­a Industrial - Edificio de IngenierГ­a','0387-4255353','','','',6,'activo'),(16,'IIENPo','IIENPo: Instituto de Investigaciones en EvaluaciГіn Nutricional de Poblaciones','Edificio de Cs. de la Salud','0387-4255493/5330','0387-4255456','Couceirm@ciunsa.edu.ar','',4,'activo'),(17,'IIED','IIED: Instituto de InvestigaciГіn de EducaciГіn a Distancia','Ed. de Cs. de la Salud - Complejo Universitario','0387-4255404/5619','-','brionesg@unsa.edu.ar','',4,'activo'),(18,'IPE','IPE: Instituto de PatologГ­a Experimental','Ed. de Cs. de la Salud - Complejo Universitario','0387-4255333','-','-','',4,'activo'),(19,'IISA','IISA: Instituto de InvestigaciГіn y AnГЎlisis Sensorial de Alimentos','Ed. de Cs. de la Salud - Complejo Universitario','-','-','-','',4,'activo'),(20,'LCTA','Laboratorio de Ciencias y TecnologГ­as de los Alimentos','Ed. de Cs. de la Salud','0387-4255494','-','-','www.unsa.edu.ar/alimentos',4,'activo'),(21,'IIEnf','IIEnf: Instituto de InvestigaciГіn de EnfermerГ­a','Ed. de Cs. de la Salud - Complejo Universitario','0387-4255630','-','-','',4,'activo'),(22,'TS','TelГ©fono de la Salud','Edificio de Cs. de la Salud','0800-444-5488 / 0387-4255488','-','telsalud@unsa.edu.ar','www.unsa.edu.ar/~telsalud',4,'activo'),(23,'INIQUI','INIQUI(Ex): Instituto Nacional para la Industria Qu?mica','Edificio de QuГ­mica - Fac. de Cs. Exactas',NULL,NULL,NULL,NULL,2,'activo'),(24,'FUNDALTES','FUNDALTES: FundaciГіn Altos Estudios de la Universidad Nacional de Salta','Buenos Aires 177','-','-','-','-',9,'activo'),(25,'INBEMI','INBEMI: Laboratorio de Beneficios de Minerales','Complejo Universitario - Edificio de Cs. Exactas - Avda. Bolivia 5150','-','-','-','-',6,'activo'),(26,'HIDRAULICA','HidrГЎulica - Esc.Ing.Civil','Edificio de IngenierГ­a','-','-','-','-',6,'activo'),(27,'LM','Laboratorio de Materiales-INIQUI-CONICET','Edificio de Ingenier','-','-','-','-',6,'activo'),(28,'PPA','Planta Piloto de Alimentos-INIQUI','Edificio de Ingenier','-','-','-','-',6,'activo'),(29,'Unipersonal','UNIPERSONAL(Ex)','Fac.Exactas',NULL,NULL,NULL,NULL,2,'activo'),(30,'Grupo','Grupo de Trabajo de Exactas','Fac.Exactas',NULL,NULL,NULL,NULL,2,'activo'),(31,'GOL','GOL: Grupo de Optica LГЎser','Edificio de FГ­sica','0387 - 4255462','-','-','-',2,'activo'),(32,'Bro','BromatologГ­a','Edificio de QuГ­mica','-','-','-','-',2,'activo'),(33,'LB','Laboratorio de BiocatГЎlisis','Edificio de QuГ­mica',NULL,NULL,NULL,NULL,2,'activo'),(34,'UNSa','UNSa: Universidad Nacional de Salta','Avda Bolivia NВ° 5150 - Campo CastaГ±ares - Salta',NULL,NULL,NULL,'www.unsa.edu.ar',9,'activo'),(35,'unipersonal','UNIPERSONAL(Nat)','Edificio de Naturales','4255435','-','novaralj@unsa.edu.ar','-',3,'activo'),(36,'Lab.','Laboratorio de QuГ­mica BiolГіgica','Edificio de Naturales','5625','-','ineslq@unsa.edu.ar','-',3,'activo'),(37,'geonorte','Instituto GEONORTE','Edificio de Geolog','4255441','-','viramonte@unsa.edu.ar','-',3,'activo'),(38,'LMyE','ICMASA: Laboratorio de Materiales y Estructuras','Facultad de IngenierГ­a','5615/5616 (internos)','-','mwtoledo@unsa.edu.ar','-',6,'activo'),(39,'LEA','Laboratorio de Estudios Ambientales','Facultad de IngenierГ­a','4255424','-','gloria@unsa.edu.ar','-',6,'activo'),(40,'LA','Laboratorio de Alimentos','Facultad de IngenierГ­a','4255362','-','armadam@unsa.edu.ar','-',6,'activo'),(41,'unipersonal','UNIPERSONAL(Ing)','Facultad de IngenierГ­a','4255311','-','orlando@unsa.edu.ar - finetti@unsa.edu.ar','-',6,'activo'),(42,'LCA','Laboratorio de Calidad de Agua','Facultad de IngenierГ­a','4255455','','msalusso@unsa.edu.ar','',3,'activo'),(43,'LES','ICMASA: Laboratorio de Ensayos de Suelos','Facultad de IngenierГ­a','4255420 - internos:  5615-5616','','','',6,'activo'),(44,'NAT','Facultad de Ciencias Naturales','Facultad de Cs. Naturales','-','-','-','-',3,'activo'),(45,'ING','Facultad de IngenierГ­a','Facultad de IngenierГ­a','-','-','-','-',6,'activo'),(46,'I.F.L.R','Instituto de Folklore y Literatura Regional','Facultad de Humanidades','','','','',5,'activo'),(47,'CZA','CГЎtedra de ZoologГ­a AgrГ­cola','Facultad de Cs. Naturales','','','','',3,'activo'),(48,'Lab. Inv.','Laboratorio de Invertebrados I','Facultad de Cs. Naturales - box 118.','4255437.','','','',3,'activo'),(49,'L.M.B.','Laboratorio de Microbiologia','Facultad de Cs. Naturales -  Agronomia - box 107.','4255496 (laboratorio).','','krieger@unsa.edu.ar.','',3,'activo'),(50,'D.L','Dpto de Lenguas Modernas','facultad de Humanidades - 1В° piso box 210.',' 4255549.','','lenguas@unsa.edu.ar','',5,'activo'),(51,'CEPHIA','CEPHIA: Centro para la PromociГіn de las Investigaciones en Historia y AntropologГ­a','Edificio Central 2В° Piso','-','-','-','-',5,'activo'),(52,'PSCS','PrestaciГіn de Servicios de CapacitaciГіn en Salud','Dpto de EnfermerГ­a - Fac. de Cs. de la Salud','0387 - 4255636','-','apereyra@unsa.edu.ar','-',4,'activo'),(53,'MC','MecГЎnica Computacional','Fac. Cs.Exactas - 1В° Piso - Box 111 bis','-','-','-','-',2,'activo'),(54,'FCE','Facultad de Ciencias Exactas','Edificio de Fac. Cs.Exactas','-','-','-','',2,'activo'),(55,'TM','TecnologГ­a MatemГЎtica','Fac. Cs. Exactas','0387 - 4255381','-','-','-',2,'activo'),(56,'LBr','Laboratorio de BromatologГ­a','Fac.Cs.Exactas - Dpto Qca - 1В° Piso','-','-','charo@unsa.edu.ar','-',2,'activo'),(57,'LQA','Laboratorio de QuГ­mica AnalГ­tica','Fac.CS.Exactas - Dpto Qca - 1В° Piso','0387 - 4255354','-','-','-',2,'activo'),(58,'LQO','Laboratorio de QuГ­mica OrgГЎnica','Fac.Cs.Exactas - Dpto Qca','0387 4255363','-','locateli@unsa.edu.ar','-',2,'activo'),(59,'LQI','Laboratorio de QuГ­mica InorgГЎnica','Fac.Cs.Exactas - Dpto Qca','0387 - 4255360','-','-','-',2,'activo'),(60,'MPS','MaestrГ­a de PolГ­ticas Sociales - Fac. de Humanidades','Facultad de Humanidades','-','-','-','-',5,'activo'),(61,'Cat. Forr. y Cer.','Catedra de Forrajes y Cereales','UNSA - Sede Central','','','','',3,'activo'),(62,'Lab. Biol. Mol.','Laboratorio de BiologГ­a Molecular','Fac. Cs. Naturales',NULL,NULL,NULL,NULL,3,'activo'),(64,'Fac. Cs. Ec.','Facultad de Ciencias Economicas Juridicas y Sociales','Avda. Bolivia 5150 - Salta','','','','',1,'activo'),(65,'Fac. Hum.','Facultad de Humanidades','Avda Bolivia 5150 ','','','','',5,'activo'),(66,'Fac. Salud','Facultad de Ciencias de la Salud','Campo CastaГ±ares','','','','',4,'activo'),(63,'CCIHF','CГЎtedra de Cultivos Industriales, Horticultura y Fruticultura.','Escuela de AgronomГ­a . Fac. Cs Naturales',NULL,NULL,NULL,NULL,3,'activo'),(67,'C. de la M. - UNSa','ComisiГіn de la Mujer - UNSa.','Avda bolivia 5150 - Salta Capital','','','','',5,'activo'),(68,'Departamento de InformГЎtica (CS. Exactas)','Departamento de InformГЎtica','Av. Bolivia NВє 5150','','','','',2,'activo'),(69,'INIQUI','Instituto de Investigaciones para la Industria QuГ­mica','Av. Bolivia 5150','0387-425 5410','387-4251006','','http://www.unsa.edu.ar/iniqui',12,'activo'),(70,'SCT','SecretarГ­a de CooperaciГіn TГ©cnica','Av. Bolivia NВє 5150','0387-425 5555/8661','','sct@unsa.edu.ar','',14,'activo'),(71,'SBU','SecretarГ­a de Bienestar Universitario','Av. Bolivia NВє 5150','','','','',14,'activo'),(72,'Petroleo y Gas','Laboratorio de PetroquГ­mica - PPII','Av. Bolivia 5150','0387-4255553','','','',6,'activo'),(73,'MCNS','Museo de Ciencias Naturales','Mendoza NВє 2','','','','',3,'activo'),(74,'SRO','Sede Regional de OrГЎn','','','','','',7,'activo'),(75,'CIN','Consejo Interuniversitario Nacional','Pacheco de Melo NВє 2080, Ciudad AutГіnoma de Buenos Aires','','','','',12,'activo'),(76,'REUNIF','Red de ExtensiГіn Universitaria \"Universidades hacia la IntegraciГіn de Frontera\"','-','','','','',12,'activo'),(77,'CISEN','CISEN: Centro de Investigaciones Sociales y Educativas del Norte','-','','','','',5,'activo'),(78,'Sec. Ext.','Secretaria de ExtensiГіn Universitaria','-','','','','',14,'activo'),(79,'CONSORCIO SIU','CONSORCIO SIU','-','','','','',12,'activo'),(80,'Editorial de la UNSa','Editorial de la Universidad Nacional de Salta','Av. Bolivia 5150','','','','',14,'activo'),(81,'Sec. AcadГ©mica','SecretarГ­a AcadГ©mica','Avda. Bolivia 5150','','','','',9,'activo');
/*!40000 ALTER TABLE `Unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Universidades`
--

DROP TABLE IF EXISTS `Universidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Universidades` (
  `UniversidadId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Domicilio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `SitioWeb` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  PRIMARY KEY (`UniversidadId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Universidades`
--

LOCK TABLES `Universidades` WRITE;
/*!40000 ALTER TABLE `Universidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `Universidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Password` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `Salt` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `FirstName` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `LastName` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ProfileId` int(10) DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'mlgarcia','79f014c6b47fc7efba7d3246fd2a99cfc921f380c38ab769d5df8884f8935c98f110a4e909bbd340fc53c1898f1c69d303a572fc9c2f0fe4c1144f05fcb534f8','d404fcb11ce6dc5b8fa1a4f409ab3dfc','Lorena','Garcia','mlgarcia@unsa.edu.ar',1,'');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transOTResp`
--

DROP TABLE IF EXISTS `transOTResp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transOTResp` (
  `TransId` int(11) NOT NULL AUTO_INCREMENT,
  `ResponsableId` int(11) NOT NULL,
  `OfertaTecnoId` int(11) NOT NULL,
  PRIMARY KEY (`TransId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transOTResp`
--

LOCK TABLES `transOTResp` WRITE;
/*!40000 ALTER TABLE `transOTResp` DISABLE KEYS */;
INSERT INTO `transOTResp` VALUES (1,1,1),(6,2,1);
/*!40000 ALTER TABLE `transOTResp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ot'
--
/*!50003 DROP PROCEDURE IF EXISTS `ot_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ot_search`(

IN inputText varchar(300),
IN inputText2 varchar(300)

)
BEGIN
SET NAMES 'utf8';

SELECT 
  Unidades.Nombre as 'Unidad',
  Dependencias.Nombre as 'Dependencia',
  Facultades.Nombre as 'Facultad',
  OfertasTecno.Servicio as 'Servicio',
  GROUP_CONCAT(CONCAT(Personas.Cargo,': ',Personas.Apellido,',',Personas.Nombre) SEPARATOR '<br/>')  as 'Responsable'  ,
  CONCAT(Facultades.Domicilio,' ',
  Facultades.Telefono,' ',
  Facultades.Email,' ',
  Facultades.SitioWeb) as 'Contacto'
FROM OfertasTecno
INNER JOIN Unidades ON Unidades.UnidadId = OfertasTecno.UnidadId
INNER JOIN Dependencias ON Dependencias.DependenciaId = OfertasTecno.DependenciaId
INNER JOIN transOTResp ON transOTResp.OfertaTecnoId = OfertasTecno.OfertaId
INNER JOIN Personas ON Personas.PersonaId = transOTResp.ResponsableId
INNER JOIN Facultades ON Facultades.FacultadId = Dependencias.FacultadId

WHERE OfertasTecno.Estado ='active' AND

  (Unidades.Nombre LIKE CONCAT('%',inputText,'%') or Unidades.Nombre like CONCAT('%',inputText2,'%')
   or Dependencias.Nombre LIKE CONCAT('%',inputText,'%') or Dependencias.Nombre like CONCAT('%',inputText2,'%')
   or Facultades.Nombre like CONCAT('%',inputText,'%') or Facultades.Nombre like CONCAT('%',inputText2,'%')
   or OfertasTecno.Servicio like CONCAT('%',inputText,'%') COLLATE utf8_spanish_ci or OfertasTecno.Servicio like CONCAT('%',inputText2,'%')
   -- or CONCAT(Personas.Apellido,' , ', Personas.Nombre) like CONCAT('%',inputText,'%') or CONCAT(Personas.Apellido,' , ', Personas.Nombre) like CONCAT('%',inputText2,'%')
     or Facultades.SitioWeb like CONCAT('%',inputText,'%') or Facultades.SitioWeb like CONCAT('%',inputText2,'%'))
  
GROUP BY  
  Unidades.Nombre,
  Dependencias.Nombre,
  Facultades.Nombre,
  OfertasTecno.Servicio,
  -- Personas.Apellido,
  -- Personas.Nombre,
  Facultades.Domicilio,
  Facultades.Telefono,
  Facultades.Email,
  Facultades.SitioWeb

order by Unidades.Nombre asc, Dependencias.Nombre asc,Facultades.Nombre asc; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-10 17:41:56
