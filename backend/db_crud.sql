-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_crud
DROP DATABASE IF EXISTS `db_crud`;
CREATE DATABASE IF NOT EXISTS `db_crud` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_crud`;

-- Dumping structure for table db_crud.murid
DROP TABLE IF EXISTS `murid`;
CREATE TABLE IF NOT EXISTS `murid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_crud.murid: ~4 rows (approximately)
DELETE FROM `murid`;
/*!40000 ALTER TABLE `murid` DISABLE KEYS */;
INSERT INTO `murid` (`id`, `nama`, `alamat`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'happy l', 'Jl. Al-Mustaqim No98', NULL, '2021-10-04 10:14:07', NULL),
	(2, 'Lidiporu', 'Jl. Jalan', '2021-10-04 10:06:53', '2021-10-04 10:24:04', NULL),
	(4, 'happy005', 'edit', '2021-10-04 10:24:42', '2021-10-11 03:27:34', NULL),
	(10, 'happy006', 'Happy Lidiporu', '2021-10-11 03:18:43', '2021-10-11 03:18:43', NULL);
/*!40000 ALTER TABLE `murid` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
