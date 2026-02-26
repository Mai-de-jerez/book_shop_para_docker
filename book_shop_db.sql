CREATE DATABASE  IF NOT EXISTS `book_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book_shop`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: book_shop
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Fantasía'),(2,'Novela Histórica'),(3,'Ciencia Ficción'),(4,'Terror'),(5,'Poesía'),(6,'Novela'),(10,'Comedia'),(15,'Biografías'),(16,'Suspense');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `id_libro` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `detalles_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (1,1,3,1,45.00),(2,1,5,1,44.00),(3,2,8,3,44.00),(4,2,2,2,40.00),(5,3,4,1,34.00),(6,3,2,1,40.00),(14,7,3,1,45.00),(15,7,9,3,33.00),(16,8,4,5,34.00),(17,8,5,2,44.00),(18,9,5,3,44.00),(19,10,5,1,44.00),(20,11,4,1,34.00),(21,11,6,2,12.00);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `autor` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (2,'Fábulas ','Jean de la Fontaine',40.00,2,'portada1.jpg',1,'Cuentos y relatos de este señor tan raro.'),(3,'La caja Negra','Alek Popov',45.00,5,'portada7.jpg',2,'La caja esta es negra, y nada, de ahí surge todo.'),(4,'Un instante eterno','Pascal Bruckner',34.00,1,'portada9.jpg',4,'Es un libro raro, porque es un instante, que es eterno.'),(5,'No puedo más','Anne Helen Petersen',44.00,0,'portada8.jpg',6,'Una historia muy rara donde esta chica no puede más.'),(6,'La tiranía de las moscas','Elaine Vilar Madrugo',12.00,6,'portada3.jpg',16,'Unas moscas mazo de tiranas joder, que peñazo.'),(7,'El hilo del collar: Correspondencia','Gustavo Flaubert',35.00,5,'portada2.jpg',3,'Pues nada otro libro bastante extraño, porque los hilos no tienen collares.'),(8,'Águila roja','Maria Montes',44.00,12,'portada4.jpg',3,'Un águila muy roja ensucia la ciudad de caca de palomo.'),(9,'La tiranía de las moscas','Cristina Morales',33.00,8,'portada3_85527.jpg',2,'Unas moscas muy puñeteras se apoderan de la cuidad'),(10,'El Fondo de la Botella','Caridad Martínez',31.00,1,'portada6_78315.jpg',4,'Esto era una botella que tenía más fondo que el estómago de Falete.'),(13,'No es un río','Selva Almada',19.99,10,'portada_12_59957.jpg',1,'Es un río o no, solo tú lo sabes.'),(14,'El huerto de Emerson','Luis Landero',19.99,10,'portada_11_49892.jpg',1,'Edición ilustrada de fábulas clásicas.'),(15,'Fábulas','Jean de la Fontaine',19.99,10,'portada1.jpg',1,'Edición ilustrada de fábulas clásicas.'),(17,'La Ola','Todd Strasser',29.99,11,'portada_13_60791.jpg',1,'Es una ola que atropella a todo quisqui.'),(18,'El palacio de Hielo','Tarjei Vesaas',14.99,10,'portada_14_68894.jpg',6,'Un palacio que se derrite fácil la verdad.'),(20,'Madrid, 1983','Arturo Lezcano',33.00,9,'portada5_86094.jpg',3,'Una fumada del 15'),(21,'El Diccionario del Mentiroso','Eley Williams',23.00,8,'portada4_34394.jpg',1,'Un diccionario muy mentiroso que siempre se mete en problemas claro.'),(22,'Un instante eterno','Pascal Bruckner',34.00,8,'portada9_19841.jpg',3,'Cada IA me dice una cosa y ya no sé a quien creer.'),(30,'El Diccionario del Mentiroso','Eley Williams',23.89,4,'portada4_42052.jpg',5,'Miente mucho ese diccionario.'),(32,'Contra Narrativas','John Keene',19.99,6,'portada_10_47980.jpg',16,'Un hombre muy pesado');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL,
  `direccion` text COLLATE utf8mb4_general_ci NOT NULL,
  `metodo_pago` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Pendiente',
  `descripcion` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,11,'2026-02-14 04:01:07',89.00,'La calle de las nieves, 24','Tarjeta','CANCELADO','Añado esta mierda por aquí.'),(2,12,'2026-02-14 04:03:53',212.00,'Calle poni, 13','Bizum','ENTREGADO',NULL),(3,11,'2026-02-14 13:58:09',74.00,'Calle del Pony, 54','Tarjeta','CANCELADO','Este es otro comentario absurdo.'),(7,8,'2026-02-15 20:21:52',144.00,'Calle Pino, 33','Bizum','ENVIADO',NULL),(8,8,'2026-02-16 20:17:18',258.00,'Avenida Rey Juan Carlos I, 22','Transferencia','PENDIENTE','Este pedido lo edito como editor o gestor.'),(9,12,'2026-02-16 20:32:25',132.00,'Calle Sol','Tarjeta','PENDIENTE',NULL),(10,11,'2026-02-16 20:33:28',44.00,'Plazoleta La Gorda, 56','Bizum','ENVIADO','Esta plazoleta es conflictiva, debe tener cuidado el repartidor'),(11,8,'2026-02-18 18:17:01',58.00,'Calle poni, 13','Paypal','PENDIENTE','Otra vez esta chica comprando, tiene un problema de verdad.');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rol` int NOT NULL DEFAULT '3',
  `foto` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (5,'hector','hector@gmail.com','$2a$10$huftMPFi.Abn3rK5L3nSDe4eqUh5kSfl5WYSg7B6ZCJKKs.Eu9.aW',2,'alex-suprun-ZHvM3XIOHoE-unsplash_714.jpg'),(7,'mai','mai@gmail.com','$2a$10$/8ehr/qVMsxqRd/k58Ubl.COIZL7WcpTtfWmFll6SUX.MyQIhvdXa',1,'Captura de pantalla 2025-09-01 120356_49653.png'),(8,'marta','marta@gmail.com','$2a$10$Kia30wrwFK5BTYUMAxbD9OEM6CJ92uRaJfMKvc9zLi8ZUUe.sPQhS',3,'michael-dam-mEZ3PoFGs_k-unsplash_64609.jpg'),(11,'amor','amor@gmail.com','$2a$10$KymZkvgMT.grm0QvzMFpgOu0i5j4puVSoGKUzbiF6ofbLVbjhQ3dK',3,'vince-veras-AJIqZDAUD7A-unsplash_48340.jpg'),(12,'irina','irina@gmail.com','$2a$10$vIH5e.s1gxX1ezmGazodFegU9RxQGsnxnBKRQWivAUOedTly..lqu',3,'vince-veras-AJIqZDAUD7A-unsplash_98232.jpg'),(15,'ana','ana@gmail.com','$2a$10$kBqVt/fPqcp40oHGx0JlMOMdJ.aItNh5dHDxJmHKsjMg9M1UyjlEW',3,'courtney-cook-TSZo17r3m0s-unsplash_43695.jpg'),(17,'manuel','manuel@gmail.com','$2a$10$NhtjKRvsnlf5bBSAtXWfgeIIPL6XN75cWNDQaJQRt2ttLfv/jDHP.',3,'christian-buehner-DItYlc26zVI-unsplash_75598.jpg'),(18,'juan','juan@gmail.com','$2a$10$ogtI2oumly7abTvJBN/VZuHRQwlLNAx1MCiBRBN20SwvkG9MLYaYy',3,'oguz-yagiz-kara-MZf0mI14RI0-unsplash_9474.jpg'),(21,'antonio','antonio@gmail.com','$2a$10$QbHoy3ysFMelo7VC03ffyeWiPxTXXCfgyWknpxMt.HLaFu8rwUkg.',3,'linkedin-sales-solutions-pAtA8xe_iVM-unsplash_87534.jpg');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-25 10:03:50
