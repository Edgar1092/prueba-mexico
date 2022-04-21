-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para prueba-mexico
DROP DATABASE IF EXISTS `prueba-mexico`;
CREATE DATABASE IF NOT EXISTS `prueba-mexico` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prueba-mexico`;

-- Volcando estructura para tabla prueba-mexico.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.films
DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.films: ~2 rows (aproximadamente)
DELETE FROM `films`;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Averngers', '2022-04-21 17:21:36', '2022-04-21 17:21:36', NULL),
	(2, 'Vikingos', '2022-04-21 17:22:49', '2022-04-21 17:23:04', '2022-04-21 17:23:04');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.films_genres
DROP TABLE IF EXISTS `films_genres`;
CREATE TABLE IF NOT EXISTS `films_genres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) unsigned NOT NULL,
  `genre_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.films_genres: ~4 rows (aproximadamente)
DELETE FROM `films_genres`;
/*!40000 ALTER TABLE `films_genres` DISABLE KEYS */;
INSERT INTO `films_genres` (`id`, `film_id`, `genre_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 1, '2022-04-21 17:21:36', '2022-04-21 17:21:36', NULL),
	(2, 1, 4, '2022-04-21 17:21:36', '2022-04-21 17:21:36', NULL),
	(3, 2, 1, '2022-04-21 17:22:49', '2022-04-21 17:22:49', NULL),
	(4, 2, 4, '2022-04-21 17:22:49', '2022-04-21 17:22:49', NULL);
/*!40000 ALTER TABLE `films_genres` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.genres
DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.genres: ~4 rows (aproximadamente)
DELETE FROM `genres`;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'accion', '2022-04-21 07:30:27', '2022-04-21 07:30:27', NULL),
	(2, 'terror', '2022-04-21 07:32:05', '2022-04-21 07:32:05', NULL),
	(3, 'hogar', '2022-04-21 16:57:02', '2022-04-21 16:57:02', NULL),
	(4, 'emocion', '2022-04-21 17:21:36', '2022-04-21 17:21:36', NULL);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.migrations: ~14 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(33, '2014_10_12_000000_create_users_table', 1),
	(34, '2014_10_12_100000_create_password_resets_table', 1),
	(35, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(36, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(37, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(38, '2016_06_01_000004_create_oauth_clients_table', 1),
	(39, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(40, '2019_08_19_000000_create_failed_jobs_table', 1),
	(41, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(42, '2022_04_21_053657_create_videogames_table', 1),
	(43, '2022_04_21_053734_create_films_table', 1),
	(44, '2022_04_21_053804_create_genres_table', 1),
	(45, '2022_04_21_053956_create_videogames_genres_table', 1),
	(46, '2022_04_21_054010_create_films_genres_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.oauth_access_tokens
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.oauth_access_tokens: ~2 rows (aproximadamente)
DELETE FROM `oauth_access_tokens`;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('1f4fbade1454f7d86b66500c428e95c1483b8fb6c9260c955f07e9a37af87e352412f1809f7697d8', 1, 1, 'authToken', '[]', 0, '2022-04-21 06:08:39', '2022-04-21 06:08:39', '2023-04-21 06:08:39'),
	('952cfbe52068b01a546c3bad4499d46a4b5d5957804650b1364a314f964f52b923ab4c7c27d549cb', 1, 1, 'authToken', '[]', 0, '2022-04-21 06:08:34', '2022-04-21 06:08:34', '2023-04-21 06:08:34');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.oauth_auth_codes
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.oauth_auth_codes: ~0 rows (aproximadamente)
DELETE FROM `oauth_auth_codes`;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.oauth_clients
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.oauth_clients: ~2 rows (aproximadamente)
DELETE FROM `oauth_clients`;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'Sl8xjRZmnOmguqQh330PRa9liOwsPCkDT3OUcbR7', NULL, 'http://localhost', 1, 0, 0, '2022-04-21 06:08:11', '2022-04-21 06:08:11'),
	(2, NULL, 'Laravel Password Grant Client', 'a1CNeYCAiFeyVQi4qDjKYxF9SnbKMRMtbAdQWbnn', 'users', 'http://localhost', 0, 1, 0, '2022-04-21 06:08:11', '2022-04-21 06:08:11');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.oauth_personal_access_clients
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.oauth_personal_access_clients: ~0 rows (aproximadamente)
DELETE FROM `oauth_personal_access_clients`;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2022-04-21 06:08:11', '2022-04-21 06:08:11');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.oauth_refresh_tokens
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.oauth_refresh_tokens: ~0 rows (aproximadamente)
DELETE FROM `oauth_refresh_tokens`;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.personal_access_tokens: ~0 rows (aproximadamente)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Edgar', 'admin@admin.com', '$2y$10$eBVSdeM/KWko7jwTq7g/EuwiLPx8yzYMGz5K4nS2wa9Wm4DX5zgna', NULL, '2022-04-21 06:08:34', '2022-04-21 06:08:34', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.videogames
DROP TABLE IF EXISTS `videogames`;
CREATE TABLE IF NOT EXISTS `videogames` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.videogames: ~4 rows (aproximadamente)
DELETE FROM `videogames`;
/*!40000 ALTER TABLE `videogames` DISABLE KEYS */;
INSERT INTO `videogames` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Plomo', '2022-04-21 07:24:33', '2022-04-21 07:24:33', '2022-04-21 03:32:23'),
	(2, 'Plomo', '2022-04-21 07:25:31', '2022-04-21 07:25:31', '2022-04-21 03:32:24'),
	(3, 'Plomo', '2022-04-21 07:30:27', '2022-04-21 07:30:27', '2022-04-21 03:32:25'),
	(4, 'Casa de papel', '2022-04-21 07:32:05', '2022-04-21 17:00:13', NULL),
	(5, 'Casa', '2022-04-21 07:32:59', '2022-04-21 07:32:59', NULL);
/*!40000 ALTER TABLE `videogames` ENABLE KEYS */;

-- Volcando estructura para tabla prueba-mexico.videogames_genres
DROP TABLE IF EXISTS `videogames_genres`;
CREATE TABLE IF NOT EXISTS `videogames_genres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `videogame_id` bigint(20) unsigned NOT NULL,
  `genre_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba-mexico.videogames_genres: ~5 rows (aproximadamente)
DELETE FROM `videogames_genres`;
/*!40000 ALTER TABLE `videogames_genres` DISABLE KEYS */;
INSERT INTO `videogames_genres` (`id`, `videogame_id`, `genre_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 4, 1, '2022-04-21 07:32:05', '2022-04-21 07:32:05', NULL),
	(2, 4, 2, '2022-04-21 07:32:06', '2022-04-21 07:32:06', NULL),
	(3, 5, 1, '2022-04-21 07:32:59', '2022-04-21 07:32:59', NULL),
	(4, 5, 2, '2022-04-21 07:32:59', '2022-04-21 07:32:59', NULL),
	(5, 4, 3, '2022-04-21 16:59:03', '2022-04-21 16:59:03', NULL);
/*!40000 ALTER TABLE `videogames_genres` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
