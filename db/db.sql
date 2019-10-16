CREATE DATABASE  IF NOT EXISTS `ot` ;
USE `ot`;
DROP TABLE IF EXISTS `Dependencias`;
CREATE TABLE `Dependencias` (
  `DependenciaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FacultadId` int(10) unsigned NOT NULL DEFAULT '0',
  `Nombre` varchar(150) COLLATE utf8_spanish_ci DEFAULT '',
  `Domicilio` varchar(100) COLLATE utf8_spanish_ci DEFAULT '',
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `SitioWeb` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `ResponsableId` int(10) DEFAULT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  PRIMARY KEY (`DependenciaId`),
  KEY `FacultadId` (`FacultadId`),
  KEY `ResponsableId` (`ResponsableId`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- Dumping data for table `Dependencias`
--

INSERT INTO `Dependencias` VALUES 
(1,3,'Dpto de Despacho Gral y Mesa de Entrada - Fac.Naturales',"Fac.Cs.Naturales","","","","",5,"activo"),
(3,8,'Sector Administrativo - Sede Tartagal',"Warnes y Ej. Argentino N°4560 Tartagal - Salta","0875 21182","0875 21182","-","-",3,"activo"),
(4,8,'CTCE - Sede Tartagal',"Warnes y Ej. Argentino N°4560 Tartagal - Salta","0875 21182","0875 21182","-","-",3,"activo"),
(5,3,'Red Informática de Cs. Naturales - Fac.Naturales',"Edificio de Cs. Naturales","+54-387-4255433/4 - 4255414","+54-387-4255455","-","-",5,"activo"),
(6,3,'Dpto Despacho y Comisiones - Fac.Naturales',"Facultad de Ciencias Naturales","0387-4255433/4","0387-4255455","-","-",5,"activo"),
(7,9,'IEM: Instituto de Enseñanza Media - UNSa',"Complejo Univesitario","-","-","-","-",7,"activo"),
(8,7,'Dirección Administrativa Contable - Sede Orán',"Alvarado N°751 - San Ramón de la Nueva Orán - Salta","03878-421388","03878-421388","-","-",8,"activo"),
(9,7,'Mesa de Entrada - Sede Reg. Orán',"Alvarado Nº751 - San Ramón de la Nueva Orán - Salta","03878-421388","03878-421388","-","-",8,"activo"),
(10,3,'Laboratorio de Informática - Fac.Naturales',"Ed.Cs.Naturales","0387-4255433/4","0387-4255455","-","-",5,"activo"),
(11,3,'Museo de Ciencias Naturales',"Parque San Martín - Salta","-","-","-","-",10,"activo"),
(12,3,'Consejo Directivo - Fac.Naturales',"Facultad de Ciencias Naturales","-","","","",5,"activo"),
(13,3,'IRNED:Instituto de Recursos Naturales y Ecodesarrollo - Fac.Naturales',"Facultad de Ciencias Naturales","","","","",5,"activo"),
(14,9,'Mesa de Ayuda - UNSa',"Edificio Central - Subsuelo","4255526","-","-","-",9,"activo"),
(15,9,'Secretaría Académica - UNSa',"1° Piso - Edificio central","0387 - 4255574/5567","-","-","-",9,"activo"),
(16,7,'Área de Personal - Sede Reg.Orán',"Alvarado 750 Orán","-","-","-","-",8,"activo"),
(17,3,'Dpto de Compras y Patrimonio Fac.Naturales',"Edificio de Naturales - Planta baja","-","-","-","-",12,"activo"),
(18,3,'Acreditación Ing. Agronomica - Naturales',"Edificio de Naturales - Planta baja","-","-","-","-",7,"activo"),
(19,8,'Trayecto de Articulacion de la Licenciatura de Ciencias de la Educacion.',"Warnes y Ej. Argentino","","03875-421182","-","-",3,"activo"),
(20,7,'Sala de Computadoras - SRO',"Alvarado 751 - Cp 4530","-","-","-","-",8,"activo"),
(21,2,'Biblioteca - Cs Exactas',"Edificio Central - Subsuelo","-","-","-","-",16,"activo"),
(22,1,'Bibioteca Economicas',"Edificio Central - Unsa","-","-","-","-",19,"activo"),
(23,9,'PROGRAMA FAMILIAS POR LA INCLUSION SOCIAL',"","","","","",9,"activo"),
(24,8,'Museo Etnográfico Regional Tartagal',"Ciudad de Tartagal","-","-","-","-",3,"activo"),
(25,5,'Direccion Administrativa Contable',"-","-","-","-","-",21,"activo"),
(26,9,'Secretaría Administrativa',"Edificio Central - Unsa","-","-","-","-",22,"activo"),
(27,9,'UNIDAD DE AUDITORIA INTERNA',"Avda Bolivia 5150 - Salta","-","-","-","-",22,"activo"),
(28,3,'Proyecto "El Labotatorio como estrategia Pedagógica"',"Edificio de Cs. Naturales","","","","",5,"activo"),
(44,3,'PROYECTO GENERALES DE INOVACION PRODUCTIVA',"UNSA","","","","",1,"activo"),
(43,8,'Extension Universitaria - Sede Tartagal',"Warnes y Ej. Argentino  - Tartagal","","","","",23,"activo"),
(45,7,'Biblioteca - Sede Orán',"Alvarado 751, Orán - CP 4530","","","","",213,"activo"),
(46,1,'RED de Informatica de Cs. Económicas',"Fac. de Cs. Econ.","","","","",55,"activo"),
(47,10,'Dpto Patrimonio CIUNSa',"CIUNSa - Campo Universitario Castañares - Bolvia 5150 Salta","","","","",28,"activo"),
(48,3,'Centro Tecnologico Comunitario Educativo (Sede Tartagal)',"","","","","",17,"activo"),
(49,3,'PFIP Kenaf - Expte 532/07',"Campo Castañares","","","","",72,"activo"),
(50,9,'FUNDALTES',"","","","","",1,"activo"),
(51,9,'Museo de Historia de la UNSA',"Parque San Martín - Salta","","","","",48,"activo"),
(122,7,'Lab. de Análisis Químicos y Microbiológico - Sede Orán',"","","","","",89,"activo"),
(53,9,'ATENCION AL PUBLICO Y ORIENTACION EN LA UNSA',"","","","","",1,"activo"),
(54,7,'Dirección Administrativa Económica-Sede Orán',"Alvarado 750 - Orán","","","","",30,"activo"),
(55,2,'RED de Informática de Cs. Exactas',"","","","","",26,"activo"),
(59,2,'CONSEJO DE INVESTIGACION',"","","","","",33,"activo"),
(62,4,'Biblioteca Cs. de la Salud',"","","","","",35,"activo"),
(63,3,'Laboratorio de Petrologia y Minerologia de la Fac. de Naturales',"","","","","",36,"activo"),
(64,4,'mesa de Entrada- Archivo- fac. de Salud',"Facultad de Ciencias de la Salud","","","","",20,"activo"),
(65,4,'TELEFONO DE LA SALUD',"Facultad de Ciencias de la Salud","","","","",1,"activo"),
(67,6,'Laboratorio de Alimentos-Ingeniería',"Fac. Ingenería - Campo Castañares","","","","",32,"activo"),
(120,1,'Gabinete de Infomática y demás dependendias de la facultad de cs económicas',"","","","","",55,"activo"),
(71,3,'División Personal - Cs Naturales',"Avda. Bolivia 5150 - Salta","","","","",37,"activo"),
(72,3,'FACULTAD DE CS. NATURALES',"AVDA. BOLIVIA Nº 5150","","","","",37,"activo"),
(75,9,'Dirección General de Obras y Servicios - U.N.Sa.',"Edificio Obras y Servicios - Campo Castañares - U.N.Sa.","4255401","","","",34,"activo"),
(76,9,'Coordinación de Posgrado y Relaciones Internacionales',"Oficina de Relaciones Internacionales y Posgrado de la Universidad Nacional de Salta - Complejo Univ","(+54) (387) 422-5533 / 5427","","coreinte@unsa.edu.ar","www.unsa.edu.ar/coreinte",56,"activo"),
(77,9,'Secretaría del Consejo Superior',"Avda. Bolivia 5150 - Salta","4255421","","seccosu@unsa.edu.ar","",61,"activo"),
(78,10,'Proyecto "Gestión de Residuos Peligrosos en el Marco de Implementación de un Sistema de Gestión Ambiental en la UNSa”',"","","","","",256,"activo"),
(79,4,'FACULTAD DE CS. DE LA SALUD',"","","","","",38,"activo"),
(31,1,'Direccion de Despacho - Cs Económicas',"Edificio Cs. Económicas","","","","",42,"activo"),
(30,3,'PFIP Pesca Artesanal - Expte 630/06',"Complejo Universitario","","","","",43,"activo"),
(29,9,'Direccion de Asesoria Juridica',"Campo Castañares","4258686","","","",47,"activo"),
(86,9,'DIRECCIÓN GENERAL DEL CENTRO DE CÓMPUTOS DELA UNIVERSIDAD NACIONAL DE SALTA.',"","","","","",62,"activo"),
(87,5,'ARCHIVO DE LA MEMORIA- SECRETARÍA DEL CONSEJO SUPERIOR',"AVDA. BOLIVIA Nº 5150","","","","",61,"activo"),
(91,1,'TESORERÍA GENERAL ',"Avda. Bolivia Nº 5150.","","","","",64,"activo"),
(121,6,'Facultad de Ingenieria',"","","","","",0,"activo"),
(95,1,'DIRECCIÓN DE CONTABILIDAD',"Avda. Bolivia Nº 5150.","","","","",69,"activo"),
(98,1,'DIRECCIÓN GENERAL DE ADMINISTRACIÓN',"Avda. Bolivia Nº 5150.","","","","",54,"activo"),
(118,14,'Secretaría de Cooperación Técnica y Relaciones Internacionales',"Av. Bolivia 5150, Edif. Biblioteca, 1er piso","0387 - 425 5555/3355","0387 - 425 8661","sct@unsa.edu.ar","",9,"activo"),
(104,1,'DIRECCIÓN GENERAL DE PERSONAL',"","","","","",59,"activo"),
(105,4,'Sala de Informática y Cátedra docentes de la Facultad',"","","","","",79,"activo"),
(106,4,'Instituto de Patología Experimental',"","","","","",81,"activo"),
(107,5,'Dpto. de Posgrado',"","","","","",82,"activo"),
(108,9,'Secretaría de bienestar universitario',"","","","","",83,"activo"),
(109,9,'Radio Universidad Nacional de Salta',"","","","","",84,"activo"),
(111,9,'DIRECIÓN DE PATRIMONIO',"Avda. Bolivia 5150","","","","",88,"activo"),
(112,9,'Dirección de Coordinación Administrativade Rectorado',"","","","","",89,"activo"),
(113,2,'Mesa General de Entradas y Salidas - Dirección de Corrdinación Administrativa de Rectorado',"","","","","",89,"activo"),
(114,9,'Secretaría de Extensión Universitaria',"","","","","",89,"activo"),
(115,9,'CENTRO DE LENGUAS DE LA UNIVERSIDAD NACIONAL DE SALTA',"","","","","",89,"activo"),
(116,9,'IEM - Instituto de Enseñanza Media Tartagal ',"","","","","",89,"activo"),
(117,9,'Universidad Nacional de Salta',"","","","","",0,"activo"),
(123,9,'Grupo de Edificios Bioclimáticos'," "," "," "," ","",0,"activo"),
(124,9,'Grupo de Investigaciones en Planificación Energética y Gestión Territorial (PEyGeT)'," "," "," "," "," ",0,"activo"),
(125,9,' Grupo de Eficiencia Energética en Edificios (G3E)'," "," "," "," "," ",0,"activo"),
(126,9,'Grupo de Radiación Solar'," "," "," "," "," ",0,"activo"),
(127,9,'Grupo de Electrónica y Fotovoltaico',"","","","","",0,"activo"),
(128,9,'Grupo de Energía Solar Térmica de Concentración',"","","","","",0,"activo"),
(129,9,'Grupo de Energía Solar Fotovoltaica',"","","","","",0,"activo"),
(130,9,'Grupo de Eficiencia Energética, y Desarrollo Socio-Productivo',"","","","","",0,"activo"),
(131,9,'Grupo de Óptica Láser',"","","","","",0,"activo");



--
-- Table structure for table `Facultades`
--

DROP TABLE IF EXISTS `Facultades`;

CREATE TABLE `Facultades` (
  `FacultadId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Sigla` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Domicilio` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `SitioWeb` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `DecanoId` int(10) DEFAULT '0',
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  `UniversidadId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FacultadId`),
  KEY `DecanoId` (`DecanoId`),
  KEY `UniversdiadId` (`UniversidadId`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `Facultades`
--


INSERT INTO `Facultades` VALUES 
(1,'Ciencias Económicas, Jurídicas y Sociales','EC',"Complejo Universitario Gral.José de San Martín ","0387-4255472","0387-4255464","dececo@unsa.edu.ar","0",0,"activo",0),
(2,' Ciencias Exactas','EX',"Complejo Universitario Gral.José de San Martín ","0387-4255358","0387-4255449","decexa@unsa.edu.ar","0",7,"activo",7),
(3,'Ciencias Naturales','NAT',"Complejo Universitario Gral.José de San Martín","0387-4255434","0387-4255455","decnat@unsa.edu.ar","0",66,"activo",66),
(4,'Ciencias de la Salud','SAL',"Complejo Universitario  Gral.José de San Martín","0387-4255329","0387-4255456","decsal@unsa.edu.ar","0",0,"activo",0),
(5,'Humanidades','HUM',"Complejo Universitario  Gral.José de San Martín ","0387-4255328","0387-4255458","dechum@unsa.edu.ar","0",0,"activo",0),
(6,'Ingeniería','ING',"Complejo Universitario - Gral.José de San Martín ","0387-4255383","0387-4255351","fi_alum@unsa.edu.ar","www.ing.unsa.edu.ar",0,"activo",0),
(7,'Sede Regional Orán','SRO',"Alvarado 751 - CP 4530 - Orán","03878-421388","","unsaor@unsa.edu.ar","0",0,"activo",0),
(8,'Sede Regional Tartagal','SRT',"Warnes esq. Ejercito Argentino - CP 4560 - Tartagal","03875-421182","0387-421182","unsata@unsa.edu.ar","0",0,"activo",0),
(9,'Universidad Nacional de Salta','UNSa',"Complejo Universitario  Gral.José de San Martín ","0387-4255555","0387-4255555","unsa@unsa.edu.ar","www.unsa.edu.ar",1,"activo",1),
(10,'Consejo de Investigación','CIUNSA',"Complejo Universitario  Gral.José de San Martín","054-87-4255406/405/337/340/336","054-87-4255483 / 4311611","consejo@unsa.edu.ar","www.ci.unsa.edu.ar",0,"activo",0),
(11,'Universidad Catolica de Salta (Por Convenio)','UCASAL',"Campus Universitario Castañares","","","","0",0,"activo",0),
(12,'se deconoce','DES',"","","","","0",0,"activo",0),
(13,'Secretaría de Bienestar Universitario','SBU',"Avda. Bolivia 5150","","","","0",0,"activo",0),
(14,'Rectorado de la Universidad Nacional de Salta','REC',"Avda. Bolivia 5150","","","","0",0,"activo",0),
(15,'Instituto de Eduación Media','IEM',"","","","","0",0,"activo",0);


--
-- Table structure for table `OfertasTecno`
--

DROP TABLE IF EXISTS `OfertasTecno`;

CREATE TABLE `OfertasTecno` (
  `OfertaId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UnidadId` int(10) unsigned NOT NULL DEFAULT '0',
  `DependenciaId` int(10) unsigned NOT NULL DEFAULT '0',
  `Servicio` text COLLATE utf8_spanish_ci,
  `Estado` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`OfertaId`),
  KEY `UnidadId` (`UnidadId`),
  KEY `DependenciaId` (`DependenciaId`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Dumping data for table `OfertasTecno`
--

INSERT INTO `OfertasTecno` VALUES
 (1,16,79,"1) Evaluación Nutricional de cualquier grupo poblacional que lo requiera: niños, escolares, adolescente, adultos, adultos mayores, deportista orientado a su deporte tiendo en cuenta sus necesidades. Se realiza la evaluación diagnóstica del estado nutricional del individuo o grupo poblacional y las orientaciones terapéuticas nutricionales necesarias; no tratamiento <br/>2) Evaluación nutricional desde el punto de vista antropométrico y alimentario.<br/>\n3) Capacitación de recursos humanos en todo lo referente a valoración nutricional<br/>\n4) Valoración Nutricional mediante mediciones antropométrica y bioimpedancia con equipo InBody 720. Mediante aparatos estandarizados.<br/>\n5) Conocer a nivel alimentario cada uno de los nutrientes presentes en la alimentación de personas para detectar díficit o excesos.  Mediante un análisis cuantitativo<br/>",'active'),
 (2,18,79,"1) Servicios diagnósticos mediante citometría de flujo.<br/>\n1) Investigación básica, Investigación clínica e Investigación epidemiológica referentes a diversas patología.<br/>\n2) Se ofrece orientación clínica, confirmación de infección a personas infectadas de diferentes patologías, principalmente de enfermedad de Chagas y Leishmaniasis.  <br/>\n3) Seminarios para estudiantes, profesionales y técnicos sobre diversas patologías. <br/>\n4) Intevenciones Educativas (charlas, talleres, cursos) a la comunidad respecto de como reconocer a la vinchuca  y tomar medidas preventivas relacionadas con la enfermedad de Chagas. <br/>\n5) Métodos diagnósticos para parasitología.<br/>\n6) Técnicas directas mediante observación de sangre fresca que revela la presencia del parásito; Frotis o extenciones de sangre. <br/>\n2) Técnicas indirectas: hemocultivo; Pruebas serológicas convencionales: hemaglutinación indirecta HAI, inmunoensayo ELISA; Pruebas serológicas no convencionales: reacción en cadena de la polimerasa RCP.<br/>",'active'),
 (3,19,79,"1) Estudios de materias primas tradicionales o no, a fin de desarrollar formulaciones de buena calidad sensorial.<br/>\n2) Estudio del efecto de cambio en el procesamiento de alimentos en relación a la calidad sensorial del producto.<br/>\n3) Determinación de la reacción y preferencia del consumidor frente a un nuevo alimento.<br/>\n4) Estudio de la calidad sensorial de alimentos a fin de asegurar las características de ésta, durante el almacenamiento, procesamiento y mercado de los diferentes productos.<br/>\n5) Estudio de costo para obtener para obtener un producto de igual calidad sensorial pero a menor costo.<br/>\n6) Asesoramiento a entidades públicas o privadas en el campo de la Evaluación Sensorial de Alimentos.<br/>",'active'),
 (4,21,79,"1) Capacitación sobre el Proceso de Atención de Enfermería y el trabajo en forma homogónea sobre el lenguaje enfermero.<br/>\n2) Valoración de pacientes mediante el trabajo con enfermeros de instituciones públicas de Salta Capital y del Interior.<br/>\n3) Capacitación teórico - práctico en Primeros Auxilios; Reanimación Cardio-pulmonar; Normas de Bio-seguridad y en atención Pre-hospitalaria y Hospitalaria inicial.<br/>\n4) Capacitación sobre Atención de paciente quirúrgico.<br/>\n5) Capacitación a personas que trabajan en sectores tanto público como privados, que exista el riesgo de accidentes y sea necesario que actuen en emergencia.<br/>\n6) Capacitación sobre dispositivos tecnológicos en el cuidado enfermero. <br/>\n7) Asesoriamento en: Eduacion en Enfermería;  Gestión de Cuidado;  Estudios de Género Salud y Enfermería, Salud Comunitaria en Enfemería; Historia y Filosofía del Cuidado; Ciencias social,  Salud y Enfermería; Innovación y Aplicación de conocimiento a la Practica Profesional. <br/>",'active'),
 (5,82,79,"1) Investigación básica, Investigación clínica e Investigación epidemiológica referentes a patología regionales (Chagas,Leishmaniasis,Dengue, Hantavirus,  geohelmintiasis y micosis profundas).<br/>\n2) Se ofrece orientación clínica, confirmación de infección a personas infectadas de diferentes patologías, principalmente de Leishmaniasis, geohelmintiasis, Enfermedad de Chagas y micosis profundas o sistémicas.  <br/>\n3) Rotaciones y/o pasantías para estudiantes, profesionales y técnicos sobre patologías regionales. <br/>\n4) Intevenciones Educativas (charlas, talleres, cursos) a la comunidad referido a la promoción y prevención de enfermedades regionales. <br/>\n5) Métodos diagnósticos parasitológicos (Leishmanasis, geohelmintiasis y micológicos).<br/>\n6) Métodos diagnósticos serológicos, ELISA in house para estrongyloidiasis. <br/>\n7) Uso de Sistema de Información Geográfica (GIS) para optimizar intervenciones en salud pública. 8) Capacitación e implementación orientados a la investigación de diseños de software para enfermedades regionales.<br/>",'active'),
 (6,22,79,"1) Asoría telefónica para la promoción de la salud y prevención de enfermedades.<br/> \n2) Realización de actividades educativas sobre diferentes temáticas de salud en distintos sectores de la comunidad (escuelas, centros de jubilados, centros de salud, entre otros).<br/>\n3) Participación en actividades educativas intersectoriales con diferentes instituciones, en distintos puntos de la ciudad. <br/>\n4) Elaboración de materiales impresos o sonoros con diversas temáticas en relación con la Promoción de la Salud y Prevención de la Enfermedad.<br/>",'active'),
 (7,83,79,"1) Brindar asesoría a escuelas a fin de la instalación de Kioscos Saludables.<br/>\n2) Capactiación sobre todas las temáticas relacionadas con implementación de kioscos saludables Escolares.  <br/>\n3) Educación Alimentaria y Nutricional a escolares.      <br/>\n4) Capacitación a Docentes, Padres y Personal de los Kioscos Escolares.                                                            <br/>\n5) Participación en la elaboración de documentos y normativas que regulen el funcionamiento del kiosco escolar.                                                                        <br/>\n6) Conformación de lazos interinstitucionales    <br/>",'active'),
 (8,20,79,"1 )ALIMENTOS:<br/>\nServicios de análisis de alimentos que abarcan diferentes aspectos relacionados tanto con la composición del alimento de interés de regional y nacional, caracterización de materias primas tradicionales o no, así omo evaluaciones de la calidad nutricional y rotulado alimentario.<br/>\n-Determinación de parámetros físicos (pH, sólidos solubles, viscosidad, densidad).<br/>\n-Análisis de la composición centesimal de alimentos (humedad, cenizas, proteínas, grasas totales, hidratos de carbono, lactosa)<br/>\n- Determinación de fibra dietaria total, soluble e insoluble<br/>\n- Determinación de minerales (sodio, fósforo, calcio, magnesio, hierro).<br/>\n- Determinación del perfil de ácidos grasos <br/>\n- Determinación de compuestos fenólicos totales, flavonoides, taninos, carotenoides, ácido ascórbico, antocianinas.<br/>\n- Determinación de la Aw.<br/>\n- Vida útil.<br/>\n- Se ofrece confección del rotulado nutricional de acuerdo a la legislación vigente<br/>\n2) CAPACITACIONES Y DIRECCIONES TÉCNICAS:<br/>\n Visitas diagnóstico, entrenamiento específico y asesoría a Industrias y Servicios de Alimentación para la implementación de los estándares o normas:<br>\n-Buenas Prácticas de Manufactura (BPM)<br>\n-Análisis de Riesgo y Puntos Críticos de Control (HACCP). <br/>\n-Manipulaciones higiénica de alimentos <br/>\n3) ASESORAMIENTO:<br/>\nEncuadre Legal. Código Alimentario Argentino<br/>\nTRANSFERENCIA AL MEDIO:<br/>\n- Capacitaciones de Industrialización a pequeña escala.<br/>\n- Elaboración de alimentos saludables, seguros y con propiedades funcionales. <br/>\n- Cursos: Conservas, derivados lácteos, bebidas, productos cárnicos, etc.<br/>",'active'),
 (9,84,79,"1) Detección de Leishmania spp en muestras de diversos orígenes mediante microscopía, cultivo y/o biología molecular.<br/>\n2) Aislamiento de levaduras vínicas.<br/>",'active'),
 (10,7,123,"Breve resumen del grupo<br/>\nEl Laboratorio de Edificios Bioclimáticos aborda el diseño, monitoreo experimental y simulación computacional de edificios sustentables y su equipamiento de manera de lograr condiciones higrotérmicas y lumínicas adecuadas al uso del mismo, minimizando el consumo de energía convencional, disminuyendo la emisión de gases de efecto invernadero y utilizando sistemas constructivos y tecnologías adecuadas al lugar, a los conocimientos de técnicos y obreros locales y a las posibilidades de mantenimiento de los mismos. El grupo cuenta con amplia experiencia en temas de diseño bioclimático, sistemas solares de calefacción, aplicación de energías renovables en edificios, desarrollo de software de simulación térmica, monitoreo experimental, auditorías energéticas y utilización de termografía infrarroja en edificios históricos, entre otros<br/>\n \n\nSERVICIOS<br/>\n\nEl laboratorio realiza actividades de asesoramiento y servicios a organismos públicos y privados, entre los que se cuentan:<br/>\n\nDiseño de edificios con aprovechamiento de la energía solar:<br/>\nA partir de un proyecto en etapa inicial, se discute con el arquitecto o diseñador las posibilidades de adaptar la vivienda o edificio para incluir estrategias bioclimáticas para hacerla más confortable y eficiente.<br/>\n\n \n\nAuditorías energéticas de edificios convencionales y bioclimáticos:<br/>\nSe realizan mediciones de la temperatura y humedad relativa en el interior de viviendas y edificios durante periodos de varios días, para estudiar las condiciones de confort en los mismos. Se utilizan sensores pequeños que se ubican en los espacios interiores y que no afectan a las actividades habituales de los ocupantes.<br/>\n\n \n\nServicio de mapeo térmico:<br/>\nEl mapeo térmico es el proceso de registro y análisis de datos de temperatura de diferentes zonas de un local o depósito, que permite conocer la distribución de temperatura en un área definida. Se obtiene colocando un apropiado número de sensores data loggers (dispositivos recolectores de datos) en diferentes ubicaciones del ocal, para que se registren las variaciones de temperatura durante un determinado tiempo. El estudio de mapeo térmico proporciona información para determinar si el depósito cumple con sus especificaciones de almacenamiento requeridas por normativas y especificaciones de los productos almacenados (por ejemplo, productos farmacéuticos).<br/>\n    • Simulación computacional de las condiciones térmicas interiores de viviendas y edificios:<br/>\nEl grupo cuenta con el desarrollo de diferentes softwares de simulación computacional para analizar el comportamiento térmico de un edificio. Con ello, se puede predecir cuál será la temperatura a lo largo del día y detectar situaciones de excesivo calor o frío que puedan ocurrir en la vivienda, según el diseño propuesto y el clima.<br/>\nEl asesoramiento puede incluir desde un análisis exhaustivo teniendo en cuenta el comportamiento dinámico de la vivienda, a un análisis simple en estado estacionario, según la necesidad de la parte interesada.<br/>\n\n    • Medición de emisividad infrarroja e índice de reflectancia solar:<br/>\nMediciones de la emisividad infrarroja e índice de reflectancia solar IRS según las normas vigentes de materiales de construcción.<br/>\n\n    • Medición de propiedades térmicas y ópticas de materiales de construcción:\nDeterminación de la resistencia térmica global, conductividad térmica y coeficiente global de pérdida de calor en muros y/o materiales de construcción. Medición de transmitancia solar y visible de materiales transparentes.<br/>\n\n    • Dictado de curso de acondicionamiento bioclimático y simulación computacional:<br/>\nDictado de cursos a nivel de actualización profesional y de posgrado.<br/>\n\n    • Termogafía infrarroja de edificios históricos y construcciones en general:<br/>\nLa termografía infrarroja es una técnica no destructiva con variedad de aplicaciones en edificios. Mediante inspección con cámara termográfica es posible detectar patologías constructivas (puentes térmicos, mala instalación de aislación térmica, humedad, etc.) y también determinar el tipo de material con el que está construido el muro en base a las diferencias de temperatura causadas por las diferentes conductividades térmicas de los materiales empleados. En edificios históricos se utiliza principalmente para reconocer los materiales.<br/>",'active'),
 (11,7,124,"El estudio del recurso solar constituye un insumo imprescindible para el diseño de políticas públicas energéticas que incluyan las energías renovables, aportando principalmente a la planificación y ejecución de proyectos de energía solar de diversa escala. <br/>\n\nPodemos generar mapas de irradiación solar a partir del procesamiento de datos satelitales con una resolución del orden de 10 km2. Los datos satelitales se validan con comparaciones, con mediciones reales de estaciones meteorológicas disponibles para la zona y estimaciones por métodos matemáticos de radiación de día claro aplicadas en estaciones virtuales.<br/>\n\nLas capas temáticas de radiación solar se presentan integradas en un Sistema de Información Geográfica (SIG) desarrollado con software libre. <br/>\n\nEl atlas de radiación solar se entrega en diversos formatos para facilitar su consulta y uso. En el caso de soporte digital, se presenta el SIG en formato QGIS y un proyecto con extensión .kmz para su proyección en Google Earth.<br/>\n\nSoftware de estimación de generación fotovoltaica y de Agua Caliente Sanitaria.<br/>\nPodemos proveer además de un Sistema de Información Web de consulta espacial y temporal de datos de radiación solar y temperatura que permite realizar evaluaciones técnico-financieras de sistemas solares (paneles fotovoltaicos y calefones solares).<br/>\nAgregando los planes de fomento de uso o créditos disponibles en la región. <br/>",'active'),
 (12,7,125,"El G3E brinda asesoramiento sobre el diseño de edificios bioclimáticos públicos y privados con aprovechamiento de la energía solar para su calefacción y refrescamiento. <br/> \n\n    • Diseño térmico de edificios bioclimáticos:<br/>\nSus investigadores desarrollan un trabajo interdisciplinario con los arquitectos y/o ingenieros encargados de la construcción del edificio a fin de determinar las estrategias bioclimáticas de aprovechamiento del sol y el viento más adecuadas para incluir en el diseño edilicio según el clima y la localización del futuro edificio. <br/>\n\n    • Diseño y dimensionamiento de muros Trombe para calefacción de edificios\nEl G3E realiza el diseño y dimensionamiento de muros Trombes para colección y acumulación de energía solar destinados a la calefacción pasiva de edificios. Ha diseñado los muros Trombes del Hospital Materno Infantil de Susques en la Provincia de Jujuy (foto izquierda) y del Colegio Secundario de El Alfarcito en Salta (derecha).<br/>\n\n    • Auditorías termo-energéticas:<br/>\nEl comportamiento termo-energético de los edificios es evaluado por este grupo mediante la realización de auditorías técnicas en las cuales se monitorean, con equipamiento de última generación, las variables climáticas exteriores e interiores y los consumos energéticos de climatización a fin de evaluar el nivel de eficiencia energética de los edificios auditados. <br/>\n\n    • Simulación computacional dinámica<br/>\nRealiza evaluaciones del comportamiento térmico de edificios mediante simulación computacional dinámica con un software desarrollado en el INENCO a fin de detectar fortalezas y debilidades constructivas desde el punto de vista del consumo energético de climatización y proponer mejoras estructurales para su resiliencia energética ante el cambio climático. <br/>\n\n    • Desarrollo de colectores calentadores de aire para calefacción de edificios<br/>\nEl grupo ha desarrollado y transferido distintos prototipos de colectores solares calentadores de aire pasivos (por convección natural) y activos (con flujo forzado). Realiza el diseño y dimensionamiento de instalaciones de calentamiento solar de aire mediante un software desarrollado y validado por el grupo (CLOE).<br/>\n\n    • Desarrollo de software <br/>\nHa desarrollado programas de software de diseño y simulación del funcionamiento de sistemas solares térmicos y de evaluación del recurso solar entre los que se mencionan GEOSOL y PREDISE y equipos de medición electrónicos de distintas variables con la tecnología Arduino. <br/>\n\n\n    • Dictado de cursos sobre el aprovechamiento del recurso solar en la edificación<br/>\nEl grupo brinda capacitación sobre todos estos temas mediante cursos de postgrado y de capacitación a profesionales y público en general.<br/>\n\n",'active'),
 (13,7,126,"\n    • Control de calidad de valores medidos de radiación solar según normas BSRN (método de Roesch-Long) en bases de datos medidos. Comparación contra valores estimados por modelos satelitales (SARAH, CMSAF, etc.). Análisis estadístico.<br/>\n    • Estimación de valores de turbidez atmosférica ( de Angstrom) mediante valores medidos de DNI bajo condiciones de cielo claro (método de Yang).<br/>\n    • Estudio y Caracterización de la radiación solar UVer.<br/>\n    • Análisis de valores medidos de irradiancia solar espectral. Comparación contra modelos (SMARTS) para estudios de cambio climático.<br/>\n    • Estimación de producción de energía eléctrica de centrales solares del tipo Parabolic trough a partir de datos de irradiancia DNI. Comparación contra SAM (NREL).<br/>\n    • Formación de recursos humanos.<br/>\nDictado de cursos y workshops<br/>",'active'),
 (14,7,127,"    1. Ensayos Rx y otros, para evaluar el deterioro de paneles fotovoltaicos (fundamentalmente del EVA o material encapsulante).<br/>\n    2. Utilización de telefonía celular para enseñanza a escolares en escuelas rurales sin acceso al servicio eléctrico (combina el uso eficiente del software del celular con la energía solar fotovoltaica).<br/>\n    3. Ensayo general y caracterización de equipos y partes (también luminarias led) de sistemas fotovoltaicos.<br/>\n",'active'),
 (15,7,128,"Esta área del Instituto se dedica a la investigación y desarrollo de aplicaciones que utilizan energía solar térmica de concentración para calor de procesos industriales. Se estudió durante varios años la tecnología Fresnel lineal, lo que permitió la construcción de un prototipo de 173 m2 de área de colección para la generación directa de vapor de agua, asociada a un sistema de acumulación térmica en un bloque de hormigón de 12 toneladas. La experiencia permitió el desarrollo de tecnologías propias, tanto en lo relacionado con las superficies reflectoras como en el sistema de seguimiento y control automático del sistema. \nTambién se encuentra en desarrollo la tecnología de Horno Solar para el procesamiento de minerales a altas temperaturas. Éste trabaja con temperaturas entre 500 C y 1000 C que se obtienen a partir de altas relaciones de concentración. El sistema está compuesto por un conjunto de helióstatos, un reflector secundario y un receptor térmico. Actualmente este desarrollo está aplicado al tratamiento de boratos.\n",'active'),
 (16,7,129,"Introducción<br/>\nLos integrantes del grupo se dedican a la evaluación de las instalaciones fotovoltaicas que tienen pocos años de uso, hasta aquellas que superaron holgadamente la década de servicio. <br/>\nCon la inspección de los sistemas se brinda asesoramiento, capacitación, redimensionado y se crea una base de datos para compararlos con futuros peritajes.<br/>\n\nZonas de prestación de servicios <br/>\nLa extensa geografía del norte argentino está formada por una amplia variedad de regiones, como regiones de montañas, valles, selvas, sierras, regiones semiáridas entre otras en donde existen instalaciones fotovoltaicas aisladas (Off-grid) en escuelas, puestos sanitarios, puestos rurales, establecimientos agrícolas solo para mencionar algunos de ellos.<br/>\nEn las ciudades principales hay edificios públicos y privados que poseen sistemas fotovoltaicos.<br/>\n\nEvaluación de sistemas fotovoltaicos<br/>\n\nEvaluación de módulos fotovoltaicos: <br/>\n    1. Orientación.<br/>\n    2. Limpieza.<br/>\n    3. Caja de conexiones, borneras.<br/>\n    4. Cables: estado general, aislación, dimensionamiento correcto.<br/>\n    5. Degradación<br/>\n<br/>\nPara todos los ensayos se traza la curva de I/V de cada módulo utilizando carga electrónica y se las compara con las curvas de la instalación inicial, si las hubiera, o datos del fabricante. <br/>\n\nEvaluación de los controladores de carga: <br/>\n    1. Control de corriente de carga<br/>\n    2. Control de corte de carga por alta.<br/>\n    3. Control de corte de carga por baja<br/>\n<br/>\nEvaluación de las baterías: <br/>\n    1. Densidad.<br/>\n    2. Estado de los bornes de conexión.<br/>\n    3. Ciclo de carga, descarga y retención.<br/>\n    4. Descarga profunda<br/>\n<br/>\nEvaluación de inversores:<br/>\n    1. Frecuencia<br/>\n    2. Tensión<br/>\n    3. Tipo de onda senoidal: cuadrada, semicuadrada, pura.<br/>\n<br/>\nEvaluación y pruebas en laboratorio:<br/>\n\nMódulos fotovoltaicos<br/>\n    1. Pérdidas de adhesión del encapsulante.<br/>\n    2. Degradación en la interconexión celda/módulo.<br/>\n    3. Degradación en los dispositivos semiconductores.<br/>\n    4. Roturas de las celdas.<br/>\n    5. Corrosión.<br/>\n    6. Delaminación.<br/>\n    7. Decoloración del encapsulante.<br/>\n    8. Fallas en las soldaduras.<br/>\n    9. Rotura del vidrio.<br/>\n    10. Puntos calientes<br/>\n<br/>\nAsesoramiento y capacitación.<br/>\nLos integrantes del grupo realizan asesoramiento de diseño, cálculo y usos de sistemas fotovoltaicos.<br/>\nEn sistemas ya instalados se realiza un relevamiento sobre el conocimiento que poseen los usuarios de los sistemas para el dictado de una capacitación del uso adecuado de los mismos.<br/>\nSe dictan talleres de aprendizajes sobre el manejo de la tecnología y las buenas prácticas que se deben aplicar.<br/>\n",'active'),
 (17,7,130,"Breve resumen de las actividades del Grupo:<br/>\nUna parte de la oferta del Grupo de Uso Racional de la Energía, Eficiencia Energética y Desarrollo Socio-Productivo abarca el diseño, desarrollo, monitoreo experimental y simulación computacional de sistemas de generación de energía a baja entalpía orientados a la industria. En esta área, los desarrollos del grupo se han orientado al secado solar de productos agroindustriales en cargas superiores a la tonelada, con relevancia en el secado de pimiento para pimentón, tabaco, aromáticas, cultivos andinos y hortalizas. <br/>\n\nPor otra parte, integrantes del Grupo se abocan a los estudios de eficiencia energética y ahorro energético en industria y al análisis de planificación energética, con enfoque en el acceso a la energía como derecho humano. En esta área se estudia las aplicaciones de las energías renovables como elemento estratégico con potencial para fomentar la equidad intra e intergeneracional. Se trabaja con el Concepto de Sustentabilidad ampliado (sociales, de gobernanza, ambientales, tecnológicos y económicos) y con el Concepto de inclusión social y tecnologías para la inclusión social, realizando análisis socio técnico.<br/>\n\n\nServicios:<br/>\nEl Grupo actividades de asesoramiento y de servicios destinados a organismos públicos y privados, entre los cuales se encuentran:<br/>\n\nDiseño de sistemas de secado solar de alimentos: El secado solar es un método muy adecuado para preservación de cosechas, y obtener producción sustentable, con control de calidad y con valor agregado. La escala de los secadores solares diseñados va desde la decena de kilogramos a varias toneladas. El abanico de posibilidades es amplio: secado de pimiento para pimentón, carne seca, hortalizas, uva, orégano y aromáticas, y productos andinos y regionales (quinoa, papa andina, yacón). El Grupo se especializa en el diseño, el desarrollo y el monitoreo de secadores solares, e híbridos (solares-eléctricos, solares-quemado de gas y solares-quemado de leña).<br/>\n\nDiseño de estufas de curado de tabaco tipo bulk-curing solares – híbridas con uso eficiente de la energía: Uno de los más nuevos desarrollos del Grupo se centra en el análisis energético del proceso de curado de tabaco tipo Virginia en el Valle de Lerma, Salta, Argentina. El análisis de la eficiencia energética del proceso de curado tradicional en estufas de tipo bulk-curing con quemador de gas, ha llevado a identificar los factores sensibles en las distintas etapas de curado, cuantificando las transferencias de calor y el rendimiento del sistema de curado tradicional. Con ello, se ha intervenido sobre el proceso tradicional de curado, proponiendo un sistema híbrido solar – quemado de gas, autónomo, y con aprovechamiento secundario de calor de deshecho que permite disminuir el consumo de gas en hasta un 70% respecto a una estufa tradicional.<br/>\n\nDiseño de sistemas de calentamiento de baja entalpía: Asociado a los servicios anteriores, se encuentra el diseño, construcción y modelización computacional de sistemas de calentadores solares de aire y agua. El grupo posee experiencia en el desarrollo y modelización de calentadores solares de aire planos y de alta eficiencia, como así también en el desarrollo de colectores concentradores. Además, se cuenta con experiencia en el diseño de sistemas de calentamiento de agua, y de provisión de electricidad y agua caliente mediante sistemas híbridos fotovoltaicos térmicos. La aplicación de los sistemas diseñados se centra en el calentamiento de recintos (colectores de aire) para secado solar y calefacción, y en la provisión de agua caliente sanitaria y electricidad (colectores híbridos fotovoltaico-térmicos). <br/>\n\nMedición de parámetros físicos. Control y telemetría aplicado a sistemas industriales. Calibración de sensores de temperatura y humedad: Se desarrollaron sistemas de toma de datos, control y logueo remoto destinado a sistemas solares industriales. Con ello se cuenta con la capacidad de registrar las variables físicas relevantes en un sistema solar, realizar el control de procesos en función de las mediciones realizadas, y registrar y controlar los equipos de manera remota. También se cuenta con un conjunto de termómetros patrones secundarios y de punto triple, que permiten calibrar sensores de temperatura en el rango (-10 °C a 300 °C) y sensores de humedad relativa en rango 0 a 97 %.<br/>\n\nModelización computacional de sistemas de secado solar y colectores solares: El Grupo cuenta con el desarrollo de varios softwares de simulación que permiten el prediseño de sistemas de secado solar de alimentos, con carga desde la decena de kilogramos hasta las toneladas. Además, se desarrollaron programas de simulación y diseño de sistemas de calentadores solares de aire y de agua. De esta manera, se cuenta con herramientas que permiten predecir la temperatura de salida de un conjunto de colectores solares, de aire o de agua.<br/>\n\nEstimación de índices socioeconómicos para el desarrollo de energías renovables: Se estimaron distintos índices utilizados para la evaluación de aspectos poblacionales relativos a la situación de privación relativa, acceso a la energía, carga económica del acceso a la energía con respecto al ingreso total familiar, pobreza energética, vulnerabilidad energética y un índice de desarrollo residencial de la energía solar con una perspectiva basada en la inclusión social. Estos índices han sido estimados y mapeados, mediante el empleo de sistemas de información geográficos, para todo país y al nivel de radio censal. Por otro lado, se ha estimado un indicador de pobreza energética para los aglomerados urbanos de argentina, cubriendo trimestralmente desde el año 2003 a la actualidad. Mediante este indicador se ha evaluado la composición de los hogares en situación de pobreza energética y la intensidad con que esta actúa en los distintos aglomerados urbanos y el país.<br/>\n\nModelado de sistemas sociales:  A partir de la utilización de técnicas y métodos de análisis de grandes bases de datos (Big data) se han definido y validado modelos de vulnerabilidad socio energética. Estos modelos permiten describir y comprender contextualmente la situación de pobreza energética, acceso a las fuentes residenciales de energía y vulnerabilidad socio energética. Como resultado, se han mapeado y caracterizado agrupaciones (clusters) poblacionales de acuerdo a distintos niveles de vulnerabilidad. Asimismo, se ha definido y validado un modelo social, que a partir del ordenamiento natural de los datos, permite caracterizar la situación de pobreza energética en términos de sus diversos aspectos sociales, económicos, de salud, educativos y laborales. <br/>\n\nPlanificación energética: El grupo ha desarrollado herramientas analíticas e informáticas para la implementación sustentable de energía solar, con un enfoque de acceso a la energía como derecho humano. Se cuenta con un modelo conceptual de planificación energética con un pool de indicadores, que permite evaluar exante y expost los impactos sociales, ambientales y económicos de la implementación de energía solar. El modelo conceptual fue aplicado a diversos estudios de casos para evaluar la sustitución de fuentes convencionales por energía solar en el sector industrial y residencial (urbano y rural). Se han desarrollado un conjunto de sistemas de soporte a las decisiones que permiten: 1) mapear indicadores de potencial técnico, económico, ambiental y global de la incorporación de tecnología solar; y 2) identificar áreas prioritarias de intervención para maximizar el bienestar de la población minimizando los costos de inversión y los impactos ambientales negativos. En la actualidad, las herramientas desarrolladas se están integrando en un sistema de soporte a las decisiones que permita modelar y diseñar una ciudad inteligente, basada en la implementación de sistemas solares térmicos y fotovoltaicos. El equipo cuenta con experiencia en la definición y construcción de escenarios prospectivos, en software específico, y el desarrollo de evaluaciones financieras y económicas de proyectos de implementación de energías renovables. La evaluación de la sostenibilidad social de tecnologías solares se aborda a partir del estudio de la percepción social mediante la aplicación de la metodología Q. Para ello, se ha desarrollado una plataforma virtual en base a dicha metodología, que permite el relevamiento y análisis de la percepción social. <br/>\n",'active'),
 (18,7,131,"BREVE RESUMEN DEL GRUPO<br/>\nEl Grupo de Óptica Láser cuenta con gran experiencia en el campo de la metrología óptica, desarrollando e implementando diversas técnicas para ensayos no destructivos. Trabajamos de manera interdisciplinaria con otros grupos de investigación contribuyendo con aplicaciones de variada índole en campos tales como industria, salud, ingeniería, energía y medio ambiente, entre otros.  Nuestro grupo cuenta con tres laboratorios: el laboratorio de Metrología Óptica, el laboratorio de Óptica Biológica y el laboratorio de Caracterización de Partículas.<br/>\n\nSERVICIOS<br/>\n    • Medición de distribución de tamaño de partículas<br/>\nEl análisis de la distribución de tamaños de materiales particulados es crucial en diversas áreas de la investigación y la industria (nanotecnología, geología, mineralogía, química, farmacéutica, microbiología, alimenticia, entre otras). Nuestro laboratorio cuenta con un analizador por difracción láser Horiba LA-950. Empleando el método húmedo, pueden realizarse análisis de muestras con partículas entre 0,01 m y 3mm, dispersadas en agua desionizada o etanol, presentadas en forma de polvo, suspensiones, emulsiones, pastas, geles o cremas. En el corto plazo, se espera brindar el servicio empleando el método seco, en el cual las partículas son dispersadas en una corriente de aire. Complementariamente, se espera ampliar las capacidades del servicio, incorporando técnicas de tamizado (porcentaje en masa) y de análisis automatizado de imágenes de microscopía convencional y holográfica (porcentaje en número).<br/>\n    • Caracterización de microorganismos y microestructuras \nMediante Microscopía Holográfica Digital (MHD) se realiza la caracterización 3D de diversos microorganismos y microestructuras (parásitos, microalgas, bacterias, partículas, cenizas volcánicas) desarrollando y computando descriptores morfológicos tridimensionales. Asimismo, se emplea MHD junto con técnicas de procesamiento digital de imágenes para la detección y/o identificación y/o conteo automático de ciertos organismos y/o partículas.<br/>\n\n    • Desarrollo de dispositivos de visión automática y software asociado\nEl grupo ha desarrollado y transferido un microscopio óptico automatizado para el recuento de parásitos móviles en laboratorio. En particular, este fue aplicado a la detección y conteo del parásito unicelular Trypanosoma cruzi, agente causante de la enfermedad de Chagas, con el propósito de contribuir en investigaciones clínicas sobre esta enfermedad. Sus resultados son más confiables y el proceso es más rápido, comparado con las evaluaciones subjetivas realizadas visualmente por un técnico. <br/>\nActualmente se encuentra en desarrollo un prototipo de microscopio holográfico digital portátil.<br/>\n\n    • Caracterización de sistemas termodinámicos <br/>\nDiferentes métodos (DSPI, Schlieren, PIV, entre otras) se emplean para la visualización de flujos y estudios de transferencia de calor y permiten cuantificar gradientes de temperatura y concentración. Actualmente estamos trabajando en la caracterización de materiales de cambio de fase, con fines de acumulación de energía térmica. Dicho estudio implica tanto la determinación de las propiedades ópticas y térmicas de las sustancias, como la visualización del avance del frente de cambio de fase.<br/>\n\n    • Estudio de procesos biológicos dinámicos <br/>\nMediante técnicas de bio-speckle se realiza el estudio de la evolución de diversos procesos tales como:<br/>\n    • Secado y maduración de productos agrícolas<br/>\n    • Evolución de colonias bacterianas<br/>\n    • Viabilidad de semillas<br/>\n    • Monitoreo in situ del crecimiento poblacional de microalgas criadas en bioreactores bajo condiciones de aireación, iluminación y temperatura controladas.<br/>\n\n    • Mediciones de alta precisión<br/>\nUtilizando distintas técnicas interferométricas (interferometría clásica, holográfica y speckle) se realizan medidas de alta precisión:<br/>\n    • Determinación de propiedades ópticas, mecánicas y reológicas de materiales.<br/>\n    • Estudios de sistemas mecánicos y dinámicos (deformación de sólidos, vibración en placas, etc.).<br/>\n    • Mediciones de índice de refracción a distintas longitudes de onda de sustancias líquidas a diferentes temperaturas utilizando tanto refractómetros comerciales como técnicas desarrolladas ad hoc.<br/>\n    • Desarrollo de metodologías con fines específicos.<br/>\n\n\n",'active');

-- Table structure for table `Personas`
--

DROP TABLE IF EXISTS `Personas`;

CREATE TABLE `Personas` (
  `PersonaId` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Apellido` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `Cargo` varchar(100) COLLATE utf8_spanish_ci DEFAULT '',
  `Domicilio` varchar(100) COLLATE utf8_spanish_ci DEFAULT '',
  `Telefono` varchar(100) COLLATE utf8_spanish_ci DEFAULT '',
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `SitioWeb` varchar(150) COLLATE utf8_spanish_ci DEFAULT '',
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  `DNI` int(8) unsigned NOT NULL DEFAULT '0',
  `UserId` int(8) unsigned DEFAULT '0',
  PRIMARY KEY (`PersonaId`),
  KEY `UserId` (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Dumping data for table `Personas`
--

INSERT INTO `Personas` 
(PersonaId,Nombre,Apellido,Cargo,Domicilio,Telefono,Email,SitioWeb,Estado)
  VALUES
(1,'María del Carmen','Mg. Zimmer',"Directora","","",""," ","active"),
(2,'Verónica','Poderti',"Secretaria","","",""," ","active"),
(3,'Patricio','Dr. Diosque',"Director","","",""," ","active"),
(4,'Paola Andrea','Dra. Barros',"ViceDirectora","","",""," ","active"),
(5,'Raquel','Lic. Guanca',"Directora","","",""," ","active"),
(6,'Nieve','Mg. Chavez',"Directora","","",""," ","active"),
(7,'Ruben O.','Dr. Cimino',"Director","","",""," ","active"),
(8,'Silvana','TUL .Cajal',"ViceDirector","","",""," ","active"),
(9,'Agustina','Dra .Lotufo Haddad',"Directora","","",""," ","active"),
(10,'Ines','Lic. Mendoza',"ViceDirectora","","",""," ","active"),
(11,'Marcela','Mg. Martinez Bustos',"Directora","","",""," ","active"),
(12,'Adriana','Mg. Ramon',"Directora","","",""," ","active"),
(13,'Alejandra','Dra. Barrio',"Directora","","","","","active"),
(14,'Silvana','Dra. Flores Larsen',"Directora"," "," ","silvanafloreslarsen@gmail.com"," ","active"),
(15,'Judith','Dra. Franco',"Directora"," "," ","francojudita@gmail.com ","http://sisol.salta.gob.ar","active"),
(16,'Alejandro','Dr. Hernández',"Director"," "," ","alejoher65@gmail.com"," ","active"),
(17,'German Ariel','Dr. Salazar',"Director"," "," ","germansalazar.ar@gmail.com ","https://www.researchgate.net/profile/German_Salazar2","active"),
(18,'Carlos','Dr. Cadena',"Director"," "," ","cadenacinenco@gmail.com "," ","active"),
(19,'Marcelo','Dr. Gea',"Director","",""," marcelogea@gmail.com "," ","active"),
(20,'Maria Teresa','Dra . Montero Larocca',"Directora"," ","","maritemontero9@gmail.com "," ","active"),
(21,'Miguel ','Dr. Condorí',"Director"," "," ","miguel.angel.condori@gmail.com"," ","active"),
(22,'Gladis Graciela','Dra. Romero',"Directora"," "," ","romeropelayog@gmail.com"," ","active");

--
-- Table structure for table `Unidades`
--

DROP TABLE IF EXISTS `Unidades`;
CREATE TABLE `Unidades` (
  `UnidadId` int(10) unsigned NOT NULL DEFAULT '0',
  `Nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `Descripcion` varchar(150) COLLATE utf8_spanish_ci DEFAULT '',
  `Domicilio` varchar(250) COLLATE utf8_spanish_ci DEFAULT '',
  `Telefono` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `Fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT '',
  `Email` varchar(50) COLLATE utf8_spanish_ci DEFAULT '',
  `SitioWeb` varchar(150) COLLATE utf8_spanish_ci DEFAULT '',
  `FacultadId` int(10) DEFAULT '0',
  `Estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT 'activo',
  PRIMARY KEY (`UnidadId`),
  KEY `FacultadId` (`FacultadId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `Unidades`
--


INSERT INTO `Unidades` VALUES (1,"INIQUI","INIQUI(Ing): Instituto de Investigación para la Industria Química","Edificio de Química - Cs Exactas - Avda. Bolivia 5150 - Complejo Universitario","-","-","-","",6,"activo"),
(2,"LE","Laboratorio de Estructuras","Box 901/2 Edificio de Obras y Servicios - Complejo Universitario","0387-4255380","","labestr@unsa.edu.ar","",6,"activo"),
(3,"LMSL","Laboratorio de Materiales: Servicios Livianos","Complejo Universitario - Box 414 Block","","","","",6,"activo"),
(4,"LMSP","Laboratorio de Materiales: Servicios Pesados","Complejo Universitario - Box 901 Edificio de Obras y Servicios","","","","",6,"activo"),
(5,"LSV","Laboratorio de Suelos y Vías","Box 414 Block - Complejo Universitario","","","","",6,"activo"),
(6,"CIUNSa","CIUNSa: Consejo de Investigación","Complejo Universitario - Gral.José de San Martín - Avda. Bolivia 5150","0387-4255406","","","www.ciunsa.edu.ar",0,"activo"),
(7,"INENCO","INENCO: Instituto de Energías No Convencionales","Complejo Universitario - Edificio de Cs. Exactas - Avda. Bolivia 5150","0387 - 4255424/5423","0387 - 4255489","-","www.inenco.net",2,"activo"),
(8,"ICMASA","ICMASA: Instituto de Ingeniería Civil y Medio Ambiente","Complejo Universitario - Gral.José de San Martín - Avda. Bolivia 5150","-","","","",6,"activo"),
(9,"INASLA","INASLA: Instituto de Aguas Subterráneas para Latinoamérica","Edificio de Cs. Naturales - Escuela de Geología - C?tedra de Hidrogeolog","+54 387 4255397","+54 387 4255455","inasla@unsa.edu.ar","-",3,"activo"),
(10,"CIDIA","CIDIA: Centro de Investigación y Desarrollo de Informática Aplicada","Edificio de Cs. Exactas Dpto Informática - Box 17 - 2? Piso","0387 - 4255476","-","cidia@unsa.edu.ar","http://cidia.unsa.edu.ar",2,"activo"),
(11,"IRNED","IRNED: Instituto de Recursos Naturales y Ecodesarrollos","Edificio de Cs. Naturales","03875-423083 Int 5022","-","-","-",3,"activo"),
(12,"INEAH","INEAH: Instituto de Ecología y Ambiente Humano","Edificio de Cs. Naturales","","","","",3,"activo"),
(13,"ASAE","Asociación Argentina de Ecología","Edificio de Cs. Naturales","","","","",3,"activo"),
(14,"LP-INIQUI","Laboratorio de Petroquímica","Dpto. Planta Piloto 1 - Edificio de Ingenier","0387-4255343","","","",6,"activo"),
(15,"Termod I-II","Cátedra de Termodinámica I y II","Dpto. de Ingeniería Industrial - Edificio de Ingeniería","0387-4255353","","","",6,"activo"),
(16,"IIENPo","IIENPo: Instituto de Investigaciones en Evaluación Nutricional de Poblaciones","Facultad de Ciencias de la Salud. Planta Baja Av. Bolivia 5150 - (4400) - Salta Capital"," (54) (387) 425-5456","","iienpo@unsa.edu.ar ","http://www.unsa.edu.ar/iienpo/index.php/contacto",4,"activo"),
(17,"IIED","IIED: Instituto de Investigación de Educación a Distancia","Ed. de Cs. de la Salud - Complejo Universitario","0387-4255404/5619","-","brionesg@unsa.edu.ar","",4,"activo"),
(18,"IPE","IPE: Instituto de Patología Experimental"," Facultad de Ciencias de la Salud. Edificio Edificio A. Av. Bolivia 5150 - (4400) - Salta Capital","(54) (387) 425-5533","","ipe@unsa.edu.ar","https://ipe.conicet.gov.ar/",4,"activo"),
(19,"IISA","IISA: Instituto de Investigación y Análisis Sensorial de Alimentos","Facultad de Ciencias de la Salud. Edificio A. Av. Bolivia 5150 - (4400) - Salta Capital","(54) (387) 425-5540 ","-","ramon@unsa.edu.ar ","http://www.unsa.edu.ar/iisa/ ",4,"activo"),
(20,"LCTA","Laboratorio de Ciencias y Tecnologías de los Alimentos","Facultad de Ciencias de la Salud. Edificio Multifuncaional. Planta Baja. Av. Bolivia 5150 - (4400) - Salta Capital","(54) (387) 425-5521","-","-","",4,"activo"),
(21,"IIEnf","IIEnf: Instituto de Investigación de Enfermería",". Facultad de Ciencias de la Salud. Edificio Multifuncaional Box 4. Av. Bolivia 5150 - (4400) - Salta Capital"," (54) (387) 425-8630 ","-","telsalud@unsa.edu.ar","",4,"activo"),
(22,"TS","Teléfono de la Salud","Facultad de Ciencias de la Salud. Edificio Multifuncaional Box 6. Av. Bolivia 5150 - (4400) - Salta Capital"," (54) (387) 425-5456 ","-","telsalud@unsa.edu.ar","http://fsalud.unsa.edu.ar/telsalud/",4,"activo"),
(23,"INIQUI","INIQUI(Ex): Instituto Nacional para la Industria Qu?mica","Edificio de Química - Fac. de Cs. Exactas","","","","",2,"activo"),
(24,"FUNDALTES","FUNDALTES: Fundación Altos Estudios de la Universidad Nacional de Salta","Buenos Aires 177","-","-","-","-",9,"activo"),
(25,"INBEMI","INBEMI: Laboratorio de Beneficios de Minerales","Complejo Universitario - Edificio de Cs. Exactas - Avda. Bolivia 5150","-","-","-","-",6,"activo"),
(26,"HIDRAULICA","Hidráulica - Esc.Ing.Civil","Edificio de Ingeniería","-","-","-","-",6,"activo"),
(27,"LM","Laboratorio de Materiales-INIQUI-CONICET","Edificio de Ingenier","-","-","-","-",6,"activo"),
(28,"PPA","Planta Piloto de Alimentos-INIQUI","Edificio de Ingenier","-","-","-","-",6,"activo"),
(29,"Unipersonal","UNIPERSONAL(Ex)","Fac.Exactas","","","","",2,"activo"),
(30,"Grupo","Grupo de Trabajo de Exactas","Fac.Exactas","","","","",2,"activo"),
(31,"GOL","GOL: Grupo de Optica Láser","Edificio de Física","0387 - 4255462","-","-","-",2,"activo"),
(32,"Bro","Bromatología","Edificio de Química","-","-","-","-",2,"activo"),
(33,"LB","Laboratorio de Biocatálisis","Edificio de Química","","","","",2,"activo"),
(34,"UNSa","UNSa: Universidad Nacional de Salta","Avda Bolivia N° 5150 - Campo Castañares - Salta","","","","www.unsa.edu.ar",9,"activo"),
(35,"unipersonal","UNIPERSONAL(Nat)","Edificio de Naturales","4255435","-","novaralj@unsa.edu.ar","-",3,"activo"),
(36,"Lab.","Laboratorio de Química Biológica","Edificio de Naturales","5625","-","ineslq@unsa.edu.ar","-",3,"activo"),
(37,"geonorte","Instituto GEONORTE","Edificio de Geolog","4255441","-","viramonte@unsa.edu.ar","-",3,"activo"),
(38,"LMyE","ICMASA: Laboratorio de Materiales y Estructuras","Facultad de Ingeniería","5615/5616 (internos)","-","mwtoledo@unsa.edu.ar","-",6,"activo"),
(39,"LEA","Laboratorio de Estudios Ambientales","Facultad de Ingeniería","4255424","-","gloria@unsa.edu.ar","-",6,"activo"),
(40,"LA","Laboratorio de Alimentos","Facultad de Ingeniería","4255362","-","armadam@unsa.edu.ar","-",6,"activo"),
(41,"unipersonal","UNIPERSONAL(Ing)","Facultad de Ingeniería","4255311","-","orlando@unsa.edu.ar - finetti@unsa.edu.ar","-",6,"activo"),
(42,"LCA","Laboratorio de Calidad de Agua","Facultad de Ingeniería","4255455","","msalusso@unsa.edu.ar","",3,"activo"),
(43,"LES","ICMASA: Laboratorio de Ensayos de Suelos","Facultad de Ingeniería","4255420 - internos:  5615-5616","","","",6,"activo"),
(44,"NAT","Facultad de Ciencias Naturales","Facultad de Cs. Naturales","-","-","-","-",3,"activo"),
(45,"ING","Facultad de Ingeniería","Facultad de Ingeniería","-","-","-","-",6,"activo"),
(46,"I.F.L.R","Instituto de Folklore y Literatura Regional","Facultad de Humanidades","","","","",5,"activo"),
(47,"CZA","Cátedra de Zoología Agrícola","Facultad de Cs. Naturales","","","","",3,"activo"),
(48,"Lab. Inv.","Laboratorio de Invertebrados I","Facultad de Cs. Naturales - box 118.","4255437.","","","",3,"activo"),
(49,"L.M.B.","Laboratorio de Microbiologia","Facultad de Cs. Naturales -  Agronomia - box 107.","4255496 (laboratorio).","","krieger@unsa.edu.ar.","",3,"activo"),
(50,"D.L","Dpto de Lenguas Modernas","facultad de Humanidades - 1° piso box 210."," 4255549.","","lenguas@unsa.edu.ar","",5,"activo"),
(51,"CEPHIA","CEPHIA: Centro para la Promoción de las Investigaciones en Historia y Antropología","Edificio Central 2° Piso","-","-","-","-",5,"activo"),
(52,"PSCS","Prestación de Servicios de Capacitación en Salud","Dpto de Enfermería - Fac. de Cs. de la Salud","0387 - 4255636","-","apereyra@unsa.edu.ar","-",4,"activo"),
(53,"MC","Mecánica Computacional","Fac. Cs.Exactas - 1° Piso - Box 111 bis","-","-","-","-",2,"activo"),
(54,"FCE","Facultad de Ciencias Exactas","Edificio de Fac. Cs.Exactas","-","-","-","",2,"activo"),
(55,"TM","Tecnología Matemática","Fac. Cs. Exactas","0387 - 4255381","-","-","-",2,"activo"),
(56,"LBr","Laboratorio de Bromatología","Fac.Cs.Exactas - Dpto Qca - 1° Piso","-","-","charo@unsa.edu.ar","-",2,"activo"),
(57,"LQA","Laboratorio de Química Analítica","Fac.CS.Exactas - Dpto Qca - 1° Piso","0387 - 4255354","-","-","-",2,"activo"),
(58,"LQO","Laboratorio de Química Orgánica","Fac.Cs.Exactas - Dpto Qca","0387 4255363","-","locateli@unsa.edu.ar","-",2,"activo"),
(59,"LQI","Laboratorio de Química Inorgánica","Fac.Cs.Exactas - Dpto Qca","0387 - 4255360","-","-","-",2,"activo"),
(60,"MPS","Maestría de Políticas Sociales - Fac. de Humanidades","Facultad de Humanidades","-","-","-","-",5,"activo"),
(61,"Cat. Forr. y Cer.","Catedra de Forrajes y Cereales","UNSA - Sede Central","","","","",3,"activo"),
(62,"Lab. Biol. Mol.","Laboratorio de Biología Molecular","Fac. Cs. Naturales","","","","",3,"activo"),
(64,"Fac. Cs. Ec.","Facultad de Ciencias Economicas Juridicas y Sociales","Avda. Bolivia 5150 - Salta","","","","",1,"activo"),
(65,"Fac. Hum.","Facultad de Humanidades","Avda Bolivia 5150 ","","","","",5,"activo"),
(66,"Fac. Salud","Facultad de Ciencias de la Salud","Campo Castañares","","","","",4,"activo"),
(63,"CCIHF","Cátedra de Cultivos Industriales, Horticultura y Fruticultura.","Escuela de Agronomía . Fac. Cs Naturales","","","","",3,"activo"),
(67,"C. de la M. - UNSa","Comisión de la Mujer - UNSa.","Avda bolivia 5150 - Salta Capital","","","","",5,"activo"),
(68,"Departamento de Informática (CS. Exactas)","Departamento de Informática","Av. Bolivia Nº 5150","","","","",2,"activo"),
(69,"INIQUI","Instituto de Investigaciones para la Industria Química","Av. Bolivia 5150","0387-425 5410","387-4251006","","http://www.unsa.edu.ar/iniqui",12,"activo"),
(70,"SCT","Secretaría de Cooperación Técnica","Av. Bolivia Nº 5150","0387-425 5555/8661","","sct@unsa.edu.ar","",14,"activo"),
(71,"SBU","Secretaría de Bienestar Universitario","Av. Bolivia Nº 5150","","","","",14,"activo"),
(72,"Petroleo y Gas","Laboratorio de Petroquímica - PPII","Av. Bolivia 5150","0387-4255553","","","",6,"activo"),
(73,"MCNS","Museo de Ciencias Naturales","Mendoza Nº 2","","","","",3,"activo"),
(74,"SRO","Sede Regional de Orán","","","","","",7,"activo"),
(75,"CIN","Consejo Interuniversitario Nacional","Pacheco de Melo Nº 2080, Ciudad Autónoma de Buenos Aires","","","","",12,"activo"),
(76,"REUNIF","Red de Extensión Universitaria Universidades hacia la Integración de Frontera","-","","","","",12,"activo"),
(77,"CISEN","CISEN: Centro de Investigaciones Sociales y Educativas del Norte","-","","","","",5,"activo"),
(78,"Sec. Ext.","Secretaria de Extensión Universitaria","-","","","","",14,"activo"),
(79,"CONSORCIO SIU","CONSORCIO SIU","-","","","","",12,"activo"),
(80,"Editorial de la UNSa","Editorial de la Universidad Nacional de Salta","Av. Bolivia 5150","","","","",14,"activo"),
(81,"Sec. Académica","Secretaría Académica","Avda. Bolivia 5150","","","","",9,"activo"),
(82,"IIET","Institudo de Investigación de Enfermedades Tropicales","ede Regional Oran. Capital Rudecino Alvarado 751, San Ramón de la Nueva Orán (4530) Salta"," 03878-421924","-","iiet@unsa.edu.ar","http://www.iiet.unsa.edu.ar/es",0,"active"),
(83,"KS",'Servicio y Programa de Eduación y Alimentación Saludable "Kioscos Saludables" ',"Facultad de Ciencias de la Salud. Edificio Multifuncaional Box 6. Av. Bolivia 5150 - (4400) - Salta Capital"," (54) (387) 425-5456","","kioscosaludable2018@gmail.com","http://fsalud.unsa.edu.ar/kioscoSaludable/index.php",0,"active"),
(84,"LMP","Laboratorio de Microbiología y Parasitología"," Facultad de Ciencias de la Salud. Edificio A. Laboratorio de Microbiología. Av. Bolivia 5150 - (4400) - Salta Capital","(54) (387) 425-8640","-","aleba05@yahoo.com","-",0,"activo"),
(85,"GN","Grupo Nanomateriales"," "," "," "," "," ",0,"activo");


--
-- Table structure for table `Universidades`
--

DROP TABLE IF EXISTS `Universidades`;

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


--
-- Dumping data for table `Universidades`
--


--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;

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
--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;

INSERT INTO `Usuarios` VALUES (1,'mlgarcia','79f014c6b47fc7efba7d3246fd2a99cfc921f380c38ab769d5df8884f8935c98f110a4e909bbd340fc53c1898f1c69d303a572fc9c2f0fe4c1144f05fcb534f8','d404fcb11ce6dc5b8fa1a4f409ab3dfc','Lorena','Garcia','mlgarcia@unsa.edu.ar',1,'');

UNLOCK TABLES;

--
-- Table structure for table `transOTResp`
--

DROP TABLE IF EXISTS `transOTResp`;


CREATE TABLE `transOTResp` (
  `TransId` int(11) NOT NULL AUTO_INCREMENT,
  `ResponsableId` int(11) NOT NULL,
  `OfertaTecnoId` int(11) NOT NULL,
  PRIMARY KEY (`TransId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Dumping data for table `transOTResp`
--

LOCK TABLES `transOTResp` WRITE;

INSERT INTO `transOTResp` VALUES (1,1,1),(6,2,1),(7,3,2),(8,4,2),(9,5,3),(10,6,4),(11,7,5),(12,8,5),(13,9,6),(14,10,6),(15,10,7),(16,11,7),(17,12,8),(18,13,9),(19,14,10),(20,15,11),(21,16,12),(22,17,13),(23,18,14),(24,19,15),(25,20,16),(26,21,17),(27,22,18);

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
/*!50003 SET collation_connection  = utf8_spanish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ot`@`%` PROCEDURE `ot_search`(

IN inputText varchar(300),
IN inputText2 varchar(300)

)
BEGIN
SET NAMES 'utf8';

SELECT 
  Unidades.Descripcion as 'Unidad',
  Dependencias.Nombre as 'Dependencia',
  Facultades.Nombre as 'Facultad',
  CONCAT(SUBSTR(OfertasTecno.Servicio,1,255),'...') as 'Servicio',
  GROUP_CONCAT(CONCAT(Personas.Cargo,': ',Personas.Apellido,',',Personas.Nombre) SEPARATOR '<br/>')  as 'Responsable'  ,
  CONCAT(CONCAT(Unidades.Domicilio,'<br/> ',
  Unidades.Telefono,'<br/> ',
  Unidades.Email,'<br/> ', 
  Unidades.SitioWeb),'<br/>',GROUP_CONCAT(CONCAT(Personas.Email,' ',Personas.SitioWeb,' '))) as 'Contacto'
FROM OfertasTecno
INNER JOIN Unidades ON Unidades.UnidadId = OfertasTecno.UnidadId
LEFT JOIN Dependencias ON Dependencias.DependenciaId = OfertasTecno.DependenciaId
INNER JOIN transOTResp ON transOTResp.OfertaTecnoId = OfertasTecno.OfertaId
INNER JOIN Personas ON Personas.PersonaId = transOTResp.ResponsableId
INNER JOIN Facultades ON Facultades.FacultadId = Dependencias.FacultadId

WHERE 

 OfertasTecno.Estado ='active' AND

   (Unidades.Nombre LIKE CONCAT('%',inputText,'%') or Unidades.Nombre like CONCAT('%',inputText2,'%')
    or Dependencias.Nombre LIKE CONCAT('%',inputText,'%') or Dependencias.Nombre like CONCAT('%',inputText2,'%')
    or Facultades.Nombre like CONCAT('%',inputText,'%') or Facultades.Nombre like CONCAT('%',inputText2,'%')
   or 
     OfertasTecno.Servicio like CONCAT('%',inputText,'%') COLLATE utf8_spanish_ci or OfertasTecno.Servicio like CONCAT('%',inputText2,'%')
   or CONCAT(Personas.Apellido,' , ', Personas.Nombre) like CONCAT('%',inputText,'%') or CONCAT(Personas.Apellido,' , ', Personas.Nombre) like CONCAT('%',inputText2,'%')
     or Unidades.SitioWeb like CONCAT('%',inputText,'%') or Unidades.SitioWeb like CONCAT('%',inputText2,'%'))
  
GROUP BY  
  
  Unidades.Descripcion,
  Dependencias.Nombre,
  Facultades.Nombre,
  OfertasTecno.Servicio,
  -- Personas.Apellido,
  -- Personas.Nombre,
  Unidades.Domicilio,
  Unidades.Telefono,
  Unidades.Email,

  Unidades.SitioWeb

order by Unidades.Descripcion asc, Dependencias.Nombre asc,Facultades.Nombre asc; 

END ;;
DELIMITER ;



-- Dump completed on 2019-10-15 14:03:01
