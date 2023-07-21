-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gestor
CREATE DATABASE IF NOT EXISTS `gestor` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestor`;

-- Dumping structure for table gestor.acceso
CREATE TABLE IF NOT EXISTS `acceso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evento` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `detalle` text COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.acceso: ~231 rows (approximately)
DELETE FROM `acceso`;
INSERT INTO `acceso` (`id`, `evento`, `ip`, `detalle`, `fecha`) VALUES
	(1, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:13:39'),
	(2, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:13:44'),
	(3, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:17:04'),
	(4, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:17:10'),
	(5, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:17:17'),
	(6, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:21:00'),
	(7, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:23:02'),
	(8, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:24:28'),
	(9, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:29:55'),
	(10, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:51:56'),
	(11, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 17:54:15'),
	(12, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:12:55'),
	(13, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:13:00'),
	(14, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:14:10'),
	(15, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:14:24'),
	(16, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:19:29'),
	(17, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:20:09'),
	(18, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:35:18'),
	(19, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:35:26'),
	(20, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:36:12'),
	(21, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:37:42'),
	(22, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:37:50'),
	(23, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:41:38'),
	(24, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:42:33'),
	(25, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 20:51:23'),
	(26, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:02:48'),
	(27, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:03:16'),
	(28, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:03:30'),
	(29, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:11:24'),
	(30, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:11:58'),
	(31, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:12:57'),
	(32, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:13:44'),
	(33, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:20:08'),
	(34, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-28 21:20:13'),
	(35, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:11:08'),
	(36, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:15:19'),
	(37, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:16:15'),
	(38, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:18:19'),
	(39, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:18:26'),
	(40, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:20:05'),
	(41, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:21:10'),
	(42, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 14:25:06'),
	(43, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:01:26'),
	(44, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:01:32'),
	(45, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:25:03'),
	(46, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:25:05'),
	(47, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:47:47'),
	(48, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:52:13'),
	(49, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 15:52:46'),
	(50, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 16:14:31'),
	(51, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 16:14:39'),
	(52, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 16:15:28'),
	(53, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 16:31:07'),
	(54, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 17:22:27'),
	(55, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 17:22:35'),
	(56, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 17:55:38'),
	(57, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 17:56:10'),
	(58, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 18:00:02'),
	(59, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 18:00:08'),
	(60, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:18:41'),
	(61, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:18:51'),
	(62, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:19:11'),
	(63, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:19:18'),
	(64, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:23:57'),
	(65, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:24:03'),
	(66, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:37:29'),
	(67, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:37:37'),
	(68, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:40:17'),
	(69, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:40:24'),
	(70, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:42:11'),
	(71, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:42:19'),
	(72, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:51:23'),
	(73, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:51:34'),
	(74, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:52:11'),
	(75, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:59:43'),
	(76, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 19:59:51'),
	(77, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 20:11:29'),
	(78, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 20:11:49'),
	(79, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 20:50:01'),
	(80, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 20:50:15'),
	(81, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 20:50:25'),
	(82, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 20:50:53'),
	(83, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 21:13:34'),
	(84, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 21:13:40'),
	(85, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 21:17:25'),
	(86, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-29 21:21:06'),
	(87, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 13:53:07'),
	(88, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 13:53:14'),
	(89, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:21:48'),
	(90, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:21:57'),
	(91, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:22:13'),
	(92, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:43:01'),
	(93, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:43:24'),
	(94, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:45:01'),
	(95, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:45:16'),
	(96, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:47:53'),
	(97, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 14:48:51'),
	(98, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 17:39:40'),
	(99, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 17:39:54'),
	(100, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-06-30 17:57:57'),
	(101, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-07-03 20:09:50'),
	(102, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-07-03 20:43:27'),
	(103, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-07-04 21:00:05'),
	(104, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-07-05 15:48:14'),
	(105, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-07-05 15:48:42'),
	(106, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', '2023-07-05 17:36:12'),
	(107, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-05 19:04:55'),
	(108, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-05 20:21:00'),
	(109, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-05 20:21:01'),
	(110, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 13:44:44'),
	(111, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 14:50:41'),
	(112, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 15:58:43'),
	(113, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:20:56'),
	(114, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:21:05'),
	(115, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:21:16'),
	(116, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:35:31'),
	(117, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:35:38'),
	(118, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:37:17'),
	(119, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 17:54:29'),
	(120, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-06 19:38:31'),
	(121, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 13:59:19'),
	(122, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 15:35:31'),
	(123, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 15:35:55'),
	(124, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 19:29:51'),
	(125, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 19:58:04'),
	(126, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 21:21:42'),
	(127, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 21:21:49'),
	(128, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 21:22:07'),
	(129, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-07 21:24:05'),
	(130, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 13:35:36'),
	(131, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:07:58'),
	(132, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:10:01'),
	(133, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:41:39'),
	(134, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:41:45'),
	(135, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:42:38'),
	(136, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:42:43'),
	(137, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:42:51'),
	(138, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:43:00'),
	(139, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:43:47'),
	(140, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:48:53'),
	(141, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:49:04'),
	(142, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:49:05'),
	(143, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:50:17'),
	(144, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:50:25'),
	(145, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:51:24'),
	(146, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:51:30'),
	(147, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:51:57'),
	(148, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:52:34'),
	(149, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:52:46'),
	(150, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 17:55:15'),
	(151, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 21:01:14'),
	(152, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-10 21:13:03'),
	(153, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:05:49'),
	(154, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:11:42'),
	(155, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:11:54'),
	(156, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:13:56'),
	(157, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:14:03'),
	(158, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:14:45'),
	(159, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:14:54'),
	(160, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:22:19'),
	(161, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 15:22:24'),
	(162, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 16:21:17'),
	(163, 'Inicio de Sesión', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', '2023-07-11 21:05:28'),
	(164, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 13:36:33'),
	(165, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 14:28:30'),
	(166, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 14:56:30'),
	(167, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 16:47:17'),
	(168, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 16:57:52'),
	(169, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 17:17:13'),
	(170, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 17:17:20'),
	(171, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', '2023-07-14 17:23:15'),
	(172, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-14 19:38:42'),
	(173, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-14 20:13:45'),
	(174, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-14 20:14:03'),
	(175, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 13:26:36'),
	(176, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 13:26:38'),
	(177, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:54:38'),
	(178, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:54:49'),
	(179, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:55:14'),
	(180, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:55:21'),
	(181, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:55:54'),
	(182, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:56:08'),
	(183, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:56:30'),
	(184, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:56:42'),
	(185, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:57:36'),
	(186, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:57:56'),
	(187, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:58:37'),
	(188, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:58:43'),
	(189, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:59:01'),
	(190, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 15:59:11'),
	(191, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 16:02:29'),
	(192, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 16:04:19'),
	(193, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-17 20:50:06'),
	(194, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 13:40:45'),
	(195, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 13:40:57'),
	(196, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 13:42:56'),
	(197, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 13:43:09'),
	(198, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 13:43:27'),
	(199, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 13:43:37'),
	(200, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 14:08:44'),
	(201, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 14:08:53'),
	(202, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 14:09:47'),
	(203, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-18 14:09:55'),
	(204, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:45:58'),
	(205, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:10'),
	(206, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:10'),
	(207, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:10'),
	(208, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:10'),
	(209, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:10'),
	(210, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(211, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(212, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(213, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(214, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(215, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(216, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:11'),
	(217, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:46:12'),
	(218, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 13:47:16'),
	(219, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 16:37:49'),
	(220, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:08:55'),
	(221, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:20:49'),
	(222, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:20:59'),
	(223, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:22:15'),
	(224, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:22:30'),
	(225, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:29:41'),
	(226, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:29:56'),
	(227, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:35:54'),
	(228, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:36:15'),
	(229, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:47:45'),
	(230, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 17:47:52'),
	(231, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36 Edg/114.0.1823.82', '2023-07-19 19:29:21'),
	(232, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 19:30:16'),
	(233, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-19 19:30:36'),
	(234, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-21 15:58:32'),
	(235, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-21 16:05:29'),
	(236, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-21 16:05:37'),
	(237, 'Cierre de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-21 16:06:12'),
	(238, 'Inicio de Sesión', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '2023-07-21 16:06:21');

-- Dumping structure for table gestor.archivos
CREATE TABLE IF NOT EXISTS `archivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tipo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_create` datetime NOT NULL,
  `id_carpeta` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_carpeta` (`id_carpeta`),
  CONSTRAINT `archivos_ibfk_1` FOREIGN KEY (`id_carpeta`) REFERENCES `carpetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.archivos: ~8 rows (approximately)
DELETE FROM `archivos`;
INSERT INTO `archivos` (`id`, `nombre`, `tipo`, `fecha_create`, `id_carpeta`) VALUES
	(2, 'LPN-FHIS-20-2023 PLANOS-24-25.pdf', 'application/pdf', '2023-06-29 20:23:25', 1),
	(12, 'default.png', 'image/png', '2023-07-14 19:42:06', 7),
	(14, 'putty (2).exe', 'application/x-msdownload', '2023-07-14 20:00:45', 7),
	(15, 'putty-64bit-0.78-installer.msi', 'application/octet-stream', '2023-07-14 20:01:07', 7),
	(60, 'PortaNombres Faltantes.pdf', 'application/pdf', '2023-07-18 14:09:15', 6),
	(62, 'PortaNombres Faltantes.pdf', 'application/pdf', '2023-07-18 19:18:42', 5),
	(64, 'logo-gob.png', 'image/png', '2023-07-18 19:19:30', 2),
	(67, 'Scan2023-01-30_114806.jpg', 'image/jpeg', '2023-07-19 17:23:29', 5);

-- Dumping structure for table gestor.carpetas
CREATE TABLE IF NOT EXISTS `carpetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_create` datetime NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_carpetas_usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.carpetas: ~16 rows (approximately)
DELETE FROM `carpetas`;
INSERT INTO `carpetas` (`id`, `nombre`, `fecha_create`, `id_usuario`) VALUES
	(1, 'Test', '2023-06-29 15:25:23', 5),
	(2, 'Prueba', '2023-06-29 20:24:13', 5),
	(3, 'All Files', '2023-07-05 21:22:38', 5),
	(4, 'Informes', '2023-07-10 21:02:27', 5),
	(5, 'Informe Inicio y Final', '2023-07-10 21:10:34', 5),
	(6, 'Name', '2023-07-14 17:25:56', 7),
	(7, 'Testing', '2023-07-14 17:26:16', 7),
	(8, 'Admin', '2023-07-14 14:42:14', 0),
	(9, 'Alls', '2023-07-14 14:42:14', 0),
	(10, 'Test', '2023-07-19 14:31:25', 0),
	(11, 'Alls', '2023-07-19 14:42:39', 0),
	(12, 'test', '2023-07-19 14:48:52', 0),
	(13, 'test', '2023-07-19 14:50:08', 0),
	(14, 'alls', '2023-07-19 14:50:19', 0),
	(15, 'hola', '2023-07-19 14:54:24', 0),
	(16, 'Text', '2023-07-19 14:54:58', 7);

-- Dumping structure for table gestor.configuracion
CREATE TABLE IF NOT EXISTS `configuracion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ruc` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` text COLLATE utf8mb4_general_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_general_ci NOT NULL,
  `impuesto` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.configuracion: ~0 rows (approximately)
DELETE FROM `configuracion`;
INSERT INTO `configuracion` (`id`, `ruc`, `nombre`, `telefono`, `correo`, `direccion`, `mensaje`, `impuesto`) VALUES
	(1, '23999999999', 'INFOP', '900897537', 'admin@infop.hn', 'fld;l;d', '', 0);

-- Dumping structure for table gestor.detalle_archivos
CREATE TABLE IF NOT EXISTS `detalle_archivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_add` datetime DEFAULT NULL,
  `id_archivo` int NOT NULL,
  `id_carpeta` int NOT NULL,
  `id_usuario` int NOT NULL,
  `shared` int NOT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_archivo` (`id_archivo`),
  KEY `id_carpeta` (`id_carpeta`),
  KEY `FK_detalle_archivos_usuarios` (`id_usuario`),
  KEY `shared` (`shared`),
  CONSTRAINT `detalle_archivos_ibfk_1` FOREIGN KEY (`id_archivo`) REFERENCES `archivos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_archivos_ibfk_2` FOREIGN KEY (`id_carpeta`) REFERENCES `carpetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_archivos_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalle_archivos_ibfk_4` FOREIGN KEY (`shared`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.detalle_archivos: ~3 rows (approximately)
DELETE FROM `detalle_archivos`;
INSERT INTO `detalle_archivos` (`id`, `fecha_add`, `id_archivo`, `id_carpeta`, `id_usuario`, `shared`, `estado`) VALUES
	(1, '2023-07-11 15:11:25', 2, 1, 7, 5, 0),
	(2, '2023-07-11 15:11:25', 2, 1, 8, 5, 1),
	(7, '2023-07-18 14:09:32', 60, 6, 5, 7, 0);

-- Dumping structure for table gestor.reciclaje
CREATE TABLE IF NOT EXISTS `reciclaje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_create` datetime NOT NULL,
  `fecha_delete` datetime NOT NULL,
  `id_usuario` int NOT NULL,
  `id_carpeta` int NOT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_carpeta` (`id_carpeta`),
  CONSTRAINT `reciclaje_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reciclaje_ibfk_2` FOREIGN KEY (`id_carpeta`) REFERENCES `carpetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.reciclaje: ~2 rows (approximately)
DELETE FROM `reciclaje`;
INSERT INTO `reciclaje` (`id`, `nombre`, `fecha_create`, `fecha_delete`, `id_usuario`, `id_carpeta`, `tipo`) VALUES
	(50, 'jcpicker.ini', '2023-07-19 17:30:26', '2023-08-19 17:30:26', 7, 15, 'application/octet-stream');

-- Dumping structure for table gestor.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `perfil` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clave` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` int NOT NULL DEFAULT '1',
  `rol` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gestor.usuarios: ~3 rows (approximately)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `telefono`, `direccion`, `perfil`, `clave`, `token`, `fecha`, `estado`, `rol`) VALUES
	(5, 'Jonas', 'Cruz', 'admin@infop.hn', '9585656556', 'Jefe E-Learning', '20230710175041.jpg', '$2y$10$SCwyD1pkgzS4Qsvmyct9dO90Lvka6NK2sCSJvX3dhYYiWRZeTGJrO', NULL, '2023-07-10 17:50:41', 1, 1),
	(7, 'julio cesar', 'siu', 'seconduser@infop.hn', '13052644255', 'Instructor Oracle', '20230718134245.jpg', '$2y$10$nJBCgxQ/GlRQEOR79pDUOOPuZyjKRx68pyljChmmCs7bYTtyoqq/6', NULL, '2023-07-19 17:45:10', 1, 2),
	(8, 'Tets', 'siu', 'thirduser@infop.hn', '00e9209032', 'Instructor E-Learning', NULL, '$2y$10$rUTfDPQ/kb4y3HmfyBtLV.61iUDNM0lLtzVxH3pWF6KBDGqH2TNvW', NULL, '2023-07-18 21:23:49', 1, 2),
	(9, 'Test', 'E-Learning', 'Test@infop.hn', '1525255445', 'Instructor Oracle', NULL, '$2y$10$5pnpcASrmgzdqAN6064.oOuCiPNkH4HbgAFijSqOraqUPu0aCPLAq', NULL, '2023-07-19 17:43:23', 0, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
