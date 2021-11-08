-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `id_noticia` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `noticia` text,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `resumo` varchar(100) DEFAULT NULL,
  `autor` varchar(40) DEFAULT NULL,
  `data_noticia` date DEFAULT NULL,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Fifa escolhe local para o Mundial de Clubes','Será no próximo final de semana o sorteio para escolha do local para sediar o Mundial de CLubes...','2021-10-23 21:01:47',NULL,NULL,NULL),(2,'Segundo turno das eleições acontece no próximo domingo','Será no próximo domingo, a realização do segundo turno das eleições municipais em todo o Brasil...','2021-10-23 21:20:55',NULL,NULL,NULL),(3,'Cientistas alertam sobre aquecimento global','Uma pesquisa divulgada recentemente mostra a preocupação dos cientistas com a constante elevação da emissão dos gases de CO2...','2021-10-31 19:56:50',NULL,NULL,NULL),(4,'Retorno às aulas previsto para a próxima semana','A Secretaria de Educação estabeleceu o retorno às aulas já na semana que vem...','2021-10-31 20:16:03',NULL,NULL,NULL),(5,'Classificação do brasileirão','Confira a tabela de classificação do brasileirão série A...','2021-11-02 23:46:33','Tabela de classificação do brasileirão','Aderbal','2021-11-02'),(6,'Titulo da noticia','Descrição completa da noticia','2021-11-04 00:17:53','Descrição resumida','Carlos','2021-11-03'),(7,'Mais um título para testar','Outro teste para ver se a bagaceira está funcionando de acordo','2021-11-06 22:51:14','Descrição resumida para testar','Autor Teste','2021-11-06'),(8,'Mais um título para testar','Mais outro teste sei lá o quê, blá... blá... blá... sei lá mais o quê','2021-11-07 20:50:38','Outra descrição resumida','Aderbal','2021-11-07');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-08 19:11:43
