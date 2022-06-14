-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tienda_deportiva_el podio
DROP DATABASE IF EXISTS `tienda_deportiva_el podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el podio`;

-- Volcando estructura para tabla tienda_deportiva_el podio.clients
DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name_client` varchar(45) NOT NULL DEFAULT '0',
  `client_primium` bit(1) NOT NULL DEFAULT b'1',
  `phone_client` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el podio.clients: ~3 rows (aproximadamente)
DELETE FROM `clients`;
INSERT INTO `clients` (`id`, `name_client`, `client_primium`, `phone_client`) VALUES
	(1, 'Rose', b'1', '3017694535'),
	(2, 'Jin', b'1', '3016749277'),
	(3, 'Taehyung', b'0', '3019577485');

-- Volcando estructura para tabla tienda_deportiva_el podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '0',
  `measure_product` varchar(45) NOT NULL DEFAULT '0',
  `imported_product` bit(1) NOT NULL DEFAULT b'1',
  `product_value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el podio.products: ~3 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `measure_product`, `imported_product`, `product_value`) VALUES
	(1, 'pants', '78cm', b'1', 50000),
	(2, 'pants', '87cm', b'1', 45000),
	(3, 'shoe', '35cm', b'1', 45000);

-- Volcando estructura para tabla tienda_deportiva_el podio.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sale_value` float NOT NULL DEFAULT 0,
  `sale_date` date NOT NULL,
  `clients_id` smallint(6) NOT NULL,
  `products_id` smallint(6) NOT NULL,
  `sales_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el podio.sales: ~3 rows (aproximadamente)
DELETE FROM `sales`;
INSERT INTO `sales` (`id`, `sale_value`, `sale_date`, `clients_id`, `products_id`, `sales_id`) VALUES
	(1, 50000, '2022-06-11', 1, 1, 1),
	(3, 45000, '2022-06-15', 2, 2, 2),
	(4, 45000, '2022-06-21', 3, 3, 3);

-- Volcando estructura para tabla tienda_deportiva_el podio.sales_payments
DROP TABLE IF EXISTS `sales_payments`;
CREATE TABLE IF NOT EXISTS `sales_payments` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla tienda_deportiva_el podio.sales_payments: ~3 rows (aproximadamente)
DELETE FROM `sales_payments`;
INSERT INTO `sales_payments` (`id`, `payment_method`) VALUES
	(1, 'cash'),
	(2, 'tdc_amex'),
	(3, 'check');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
