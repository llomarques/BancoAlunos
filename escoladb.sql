-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           11.8.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para escola_db
CREATE DATABASE IF NOT EXISTS `escola_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `escola_db`;

-- Copiando estrutura para tabela escola_db.alunos
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `rua` varchar(120) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(120) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela escola_db.alunos: ~6 rows (aproximadamente)
INSERT IGNORE INTO `alunos` (`id`, `nome`, `cpf`, `cep`, `uf`, `rua`, `numero`, `complemento`, `create_at`, `update_at`) VALUES
	(3, 'Matheus', '45678912399', '06000002', 'SP', 'Rua Nova', 123, 'Casa', '2025-09-16 11:59:40', '2025-10-01 14:11:32'),
	(4, 'Nise', '53245002832', '06340180', 'SP', 'Antonio messias de oliveira', 325, 'Casa', '2025-09-23 13:26:36', '2025-09-23 13:26:36'),
	(5, 'Gigi06ty', '12345678910', '00000009', 'BH', 'Xique XIque', 6645, 'Barraco', '2025-09-30 13:48:34', '2025-10-01 13:49:56'),
	(7, 'Isabella', '12345678910', '12345678', 'MG', 'Paranaense', 357, 'casa', '2025-10-01 13:29:04', '2025-10-01 13:29:24'),
	(8, 'Lorena', '12345678910', '12345678', 'SP', 'Rua limoeiro', 2315, 'casa', '2025-10-01 14:08:15', '2025-10-01 14:08:15'),
	(9, 'caua', '12345678910', '12345678', 'SP', 'esmeralda', 21, 'casa', '2025-10-01 14:11:13', '2025-10-01 14:11:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
