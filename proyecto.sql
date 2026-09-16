-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 15-09-2026 a las 03:11:16
-- Versión del servidor: 8.0.44
-- Versión de PHP: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instruments`
--

CREATE TABLE `instruments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `stock` int NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instruments`
--

INSERT INTO `instruments` (`id`, `name`, `model`, `price`, `stock`, `imagePath`, `category`, `created_at`, `updated_at`) VALUES
(2, 'Epiphone Casino', 'MOD-3618', 3226.08, 0, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 07:26:11', '2026-09-15 07:50:24'),
(3, 'Gibson Les Paul', 'MOD-6066', 1882.49, 34, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 07:26:11', '2026-09-15 08:08:19'),
(4, 'Yamaha P-125', 'MOD-7173', 1277.37, 49, 'instruments/icon.jpg', 'Teclado', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(5, 'Music Man StingRay', 'MOD-4806', 2555.4, 40, 'instruments/icon.jpg', 'Bajo', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(6, 'Cordoba C5 Guitarra Clásica', 'MOD-9517', 858.86, 10, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 07:26:11', '2026-09-15 08:08:19'),
(7, 'Cremona Viola SV-130', 'MOD-7350', 406.48, 17, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(8, 'PRS SE Custom 24', 'MOD-5825', 849.18, 35, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(9, 'Stentor Cello Estudiante', 'MOD-8959', 1966.7, 50, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(10, 'Yamaha YAS-280 Saxofón', 'MOD-5019', 454.8, 10, 'instruments/icon.jpg', 'Viento', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(11, 'Yamaha TRBX304', 'MOD-0125', 2234.63, 36, 'instruments/icon.jpg', 'Bajo', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(12, 'Casio Privia PX-160', 'MOD-8075', 1137.03, 18, 'instruments/icon.jpg', 'Teclado', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(13, 'Yamaha V3 Violín', 'MOD-4063', 2715.23, 45, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(14, 'Ibanez RG', 'MOD-2606', 1489.6, 31, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(15, 'Yamaha Pacifica', 'MOD-9866', 1939.55, 10, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(16, 'Korg Kross 2', 'MOD-2198', 1616.97, 23, 'instruments/icon.jpg', 'Teclado', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(17, 'Fender Stratocaster', 'MOD-2147', 2787.24, 41, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(18, 'Roland Juno-DS', 'MOD-6802', 529.35, 11, 'instruments/icon.jpg', 'Teclado', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(19, 'Yamaha Stage Custom', 'MOD-1761', 151.24, 39, 'instruments/icon.jpg', 'Batería', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(20, 'Selmer Flauta Traversa', 'MOD-8497', 3257.1, 39, 'instruments/icon.jpg', 'Viento', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(21, 'Squier Affinity Jazz Bass', 'MOD-7079', 2367.04, 35, 'instruments/icon.jpg', 'Bajo', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(22, 'Nord Stage 3', 'MOD-1216', 2981.97, 24, 'instruments/icon.jpg', 'Teclado', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(23, 'Mapex Tornado', 'MOD-6926', 2248.69, 14, 'instruments/icon.jpg', 'Batería', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(24, 'Fender Precision Bass', 'MOD-8408', 1436.11, 7, 'instruments/icon.jpg', 'Bajo', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(25, 'Jupiter Clarinete JCL700', 'MOD-5335', 808.36, 10, 'instruments/icon.jpg', 'Viento', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(26, 'Tama Imperialstar', 'MOD-7883', 2015.91, 21, 'instruments/icon.jpg', 'Batería', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(27, 'DW Performance Series', 'MOD-9822', 1025.39, 48, 'instruments/icon.jpg', 'Batería', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(28, 'Pearl Export Series', 'MOD-4840', 1366.21, 3, 'instruments/icon.jpg', 'Batería', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(29, 'Ibanez SR300', 'MOD-1553', 3053.55, 4, 'instruments/icon.jpg', 'Bajo', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(30, 'Yamaha YDP-144', 'YDP1440', 6000000, 12, 'instruments/8c152c01-60b2-4a10-88f2-105539ebc605.jpg', 'Piano Digital', '2026-09-15 07:59:47', '2026-09-15 08:00:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrument_items`
--

CREATE TABLE `instrument_items` (
  `id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `instrument_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `instrument_items`
--

INSERT INTO `instrument_items` (`id`, `quantity`, `price`, `instrument_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2248.69, 23, 16, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(2, 1, 1366.21, 28, 17, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(3, 2, 1882.49, 3, 18, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(4, 3, 849.18, 8, 19, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(5, 2, 849.18, 8, 20, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(6, 2, 1436.11, 24, 21, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(7, 1, 2234.63, 11, 22, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(8, 3, 2015.91, 26, 23, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(9, 2, 1137.03, 12, 24, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(10, 3, 2234.63, 11, 25, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(11, 2, 1939.55, 15, 26, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(12, 1, 2248.69, 23, 27, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(13, 1, 1366.21, 28, 28, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(14, 1, 808.36, 25, 29, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(15, 2, 1939.55, 15, 30, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(16, 2, 1966.7, 9, 31, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(17, 2, 808.36, 25, 32, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(18, 2, 1616.97, 16, 33, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(19, 1, 1616.97, 16, 34, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(20, 2, 1025.39, 27, 35, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(21, 9, 3226.08, 2, 36, '2026-09-15 07:50:24', '2026-09-15 07:50:24'),
(23, 3, 1882.49, 3, 38, '2026-09-15 08:08:19', '2026-09-15 08:08:19'),
(24, 2, 858.86, 6, 38, '2026-09-15 08:08:19', '2026-09-15 08:08:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_09_12_170825_create_instruments_table', 1),
(5, '2026_09_12_170826_create_orders_table', 1),
(6, '2026_09_12_170827_create_payments_table', 1),
(7, '2026_09_12_170828_create_reviews_table', 1),
(8, '2026_09_12_170829_create_instrument_items_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `total` double NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `date`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2026-06-02', 0, 12, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(2, '2026-04-28', 0, 13, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(3, '2026-07-07', 0, 14, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(4, '2026-06-05', 0, 15, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(5, '2026-04-20', 0, 16, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(6, '2026-06-22', 0, 17, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(7, '2026-07-11', 0, 18, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(8, '2026-07-08', 0, 19, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(9, '2026-05-10', 0, 20, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(10, '2026-04-16', 0, 21, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(11, '2026-06-29', 0, 22, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(12, '2026-04-14', 0, 23, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(13, '2026-05-09', 0, 24, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(14, '2026-07-22', 0, 25, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(15, '2026-08-16', 0, 26, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(16, '2026-04-01', 0, 27, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(17, '2026-07-23', 0, 28, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(18, '2026-05-14', 0, 29, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(19, '2026-04-26', 0, 30, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(20, '2026-05-13', 0, 31, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(21, '2026-05-07', 0, 32, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(22, '2026-08-23', 0, 33, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(23, '2026-08-15', 0, 34, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(24, '2026-07-29', 0, 35, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(25, '2026-04-23', 0, 36, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(26, '2026-07-22', 0, 37, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(27, '2026-06-02', 0, 38, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(28, '2026-05-07', 0, 39, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(29, '2026-06-09', 0, 40, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(30, '2026-05-02', 0, 41, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(31, '2026-07-14', 0, 42, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(32, '2026-07-18', 0, 43, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(33, '2026-05-08', 0, 44, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(34, '2026-05-15', 0, 45, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(35, '2026-08-02', 0, 46, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(36, '2026-09-15', 29034.72, 1, '2026-09-15 07:50:24', '2026-09-15 07:50:24'),
(37, '2026-09-15', 6669.16, 72, '2026-09-15 08:02:14', '2026-09-15 08:02:14'),
(38, '2026-09-15', 7365.19, 72, '2026-09-15 08:08:19', '2026-09-15 08:08:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `cardNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cardExpiration` date NOT NULL,
  `cvv` int NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `cardNumber`, `cardExpiration`, `cvv`, `order_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '6011419278115007', '2029-01-28', 565, 1, 12, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(2, '4024007173831594', '2029-05-21', 102, 2, 13, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(3, '4485882508846604', '2026-10-13', 624, 3, 14, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(4, '5484844682812974', '2028-11-23', 214, 4, 15, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(5, '2599449696790155', '2027-07-26', 657, 5, 16, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(6, '4716109521066379', '2029-03-27', 945, 6, 17, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(7, '4916149565726', '2029-01-01', 599, 7, 18, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(8, '4716290669767281', '2028-06-04', 312, 8, 19, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(9, '5266188486328199', '2028-01-09', 462, 9, 20, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(10, '2356767024299356', '2027-09-20', 943, 10, 21, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(11, '4532764456085596', '2028-08-07', 996, 11, 22, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(12, '4716191555589054', '2028-04-08', 541, 12, 23, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(13, '4659733379047105', '2026-12-12', 984, 13, 24, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(14, '4716657925142', '2027-09-13', 480, 14, 25, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(15, '4539015950122846', '2027-06-21', 415, 15, 26, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(17, '12345676', '2026-09-17', 908, 36, 1, '2026-09-15 07:50:24', '2026-09-15 07:50:24'),
(18, '132430385', '2026-09-17', 678, NULL, 72, '2026-09-15 08:02:07', '2026-09-15 08:02:07'),
(19, '132430385', '2026-09-17', 678, 37, 72, '2026-09-15 08:02:14', '2026-09-15 08:02:14'),
(20, '132430385', '2026-09-17', 678, 38, 72, '2026-09-15 08:08:19', '2026-09-15 08:08:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `instrument_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`id`, `date`, `content`, `user_id`, `instrument_id`, `created_at`, `updated_at`) VALUES
(2, '2026-07-09', 'Instrumento sólido, pequeños problemas de afinación.', 48, 27, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(3, '2026-07-08', 'Instrumento sólido, pequeños problemas de afinación.', 49, 4, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(4, '2026-09-06', 'Instrumento sólido, pequeños problemas de afinación.', 50, 6, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(5, '2026-09-12', 'Muy buena construcción, cómodo de tocar.', 51, 8, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(6, '2026-08-28', 'Excelente fabricación, llegó muy bien empacado.', 52, 20, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(7, '2026-08-18', 'Muy buena construcción, cómodo de tocar.', 53, 28, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(8, '2026-09-13', 'Muy buena construcción, cómodo de tocar.', 54, 18, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(9, '2026-07-13', 'Instrumento sólido, pequeños problemas de afinación.', 55, 22, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(10, '2026-07-29', 'Excelente fabricación, llegó muy bien empacado.', 56, 21, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(11, '2026-07-21', 'Buena relación calidad-precio, lo recomiendo.', 57, 29, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(12, '2026-08-09', 'Excelente calidad de sonido, superó mis expectativas.', 58, 14, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(13, '2026-07-31', 'Muy buena construcción, cómodo de tocar.', 59, 29, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(14, '2026-07-23', 'Muy buena construcción, cómodo de tocar.', 60, 28, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(15, '2026-09-04', 'Buena relación calidad-precio, lo recomiendo.', 61, 23, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(16, '2026-06-26', 'Instrumento sólido, pequeños problemas de afinación.', 62, 22, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(17, '2026-08-07', 'Excelente fabricación, llegó muy bien empacado.', 63, 10, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(18, '2026-08-09', 'Muy buena construcción, cómodo de tocar.', 64, 19, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(19, '2026-06-21', 'Excelente fabricación, llegó muy bien empacado.', 65, 2, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(20, '2026-08-24', 'Buena relación calidad-precio, lo recomiendo.', 66, 29, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(21, '2026-06-25', 'Muy buena construcción, cómodo de tocar.', 67, 2, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(23, '2026-08-29', 'Excelente fabricación, llegó muy bien empacado.', 69, 28, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(24, '2026-08-24', 'El tono es increíble, perfecto para presentaciones en vivo.', 70, 8, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(25, '2026-06-25', 'El tono es increíble, perfecto para presentaciones en vivo.', 71, 9, '2026-09-14 07:26:11', '2026-09-14 07:26:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RuxMbzlnkFnrxcuSqjXwvyqjVGd0CJXCDzcYKgmL', 72, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.2 Safari/605.1.15', 'eyJfdG9rZW4iOiJtSVNobFVYZVRZZU4wZkZaajZDeVAxcnBQU2J2cklvVVo3Ylk3UWJlIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDBcL29yZGVyc1wvMzhcL3BkZiIsInJvdXRlIjoib3JkZXIuZG93bmxvYWRQZGYifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjcyLCJhdXRoIjp7InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI6MTc4OTQ0MTY4OX19', 1789441701);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@ejemplo.com', NULL, '$2y$12$uK/FB.kad8dyMG5s85c.IuDZj5lyLExrw.se4r6qcPw20Iy3JGbty', '300000000', 'Calle 1 # 2', 'admin', NULL, '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(3, 'Layla Reynolds', 'collin95@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3172055095', '222 Christina Lakes Suite 533\nNew Art, AK 63983-5993', 'admin', 'SNJ0eJpXHV', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(4, 'Rosendo Rath', 'nokon@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '123456', 'calle 1 #2', 'admin', '3YhtEmrjp0', '2026-09-14 07:26:11', '2026-09-15 08:00:30'),
(5, 'Delbert Corkery', 'pinkie.emmerich@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3188517239', '1332 Deckow Turnpike Suite 146\nShanahanberg, ND 64439', 'user', 'PLhLP4b8Ng', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(6, 'Dr. Drew Feest DVM', 'quitzon.lamar@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3576222739', '86922 Lebsack Landing Suite 045\nNienowport, TX 28802-9809', 'admin', 'hyHjuutHvp', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(7, 'Wanda Leannon', 'warren.pfeffer@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3386285987', '740 D\'angelo Glens Apt. 269\nWalterview, TN 65556-4941', 'user', 'FqCzrNwQ8V', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(8, 'Burdette Kreiger', 'feest.carlotta@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3149594244', '9194 Camylle Walk\nEdwardoside, AL 32038-3118', 'user', '2z6sJlG5aq', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(9, 'Maggie Ferry', 'pinkie46@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3471119997', '838 Deckow Green\nSouth Sarinastad, OK 67145-9696', 'user', 'WK9eSBNYqN', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(10, 'Mr. Jimmie Green Sr.', 'anastasia55@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3688041266', '7016 Marquardt Stravenue\nRempelshire, MO 58405', 'user', 'EpaSVCrS06', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(11, 'Marcus O\'Conner', 'wellington53@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3479370760', '308 Renner Ville\nAdrielstad, NE 61453-4251', 'admin', 'M3dNC03jx1', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(12, 'Mackenzie Gibson', 'hpaucek@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3945535958', '906 Muller Meadows Suite 597\nPort Litzyview, RI 71198', 'user', 'ZQZ9rfDOce', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(13, 'Ms. Sydni Lemke', 'melisa29@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3195402743', '814 Shaun Estates\nSouth Esteban, FL 45433', 'user', '5mJMpNkMOp', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(14, 'Prof. Jerod Ondricka', 'dschiller@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3543817256', '573 Graham Forest Apt. 229\nSouth Skyla, TX 77378-9623', 'user', 'arxg0SMccv', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(15, 'Prof. Ken Cole MD', 'bergnaum.verdie@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3932863767', '494 Louisa Bridge Suite 581\nTerrilltown, DE 47108', 'user', '9vDAyRM9C6', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(16, 'Miller Kuhlman', 'beverly.dickens@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3236898927', '7638 Rogahn Port\nJonesfurt, SC 67656', 'user', 'UEihpjzDZI', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(17, 'Kayley Corkery', 'sigrid.medhurst@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3207968184', '824 Thaddeus Forges Suite 321\nIsobelshire, OK 16300-9551', 'user', '6225ynecaY', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(18, 'Mrs. Suzanne Becker', 'alfreda.kutch@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3622367570', '26681 Nola Unions\nNicoleshire, HI 29714', 'user', 'MaVI0F8jv0', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(19, 'Sid Orn', 'ybruen@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3567443511', '884 Schiller Forest\nSouth Rubyland, MD 19879', 'user', '5qMI0wFLl6', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(20, 'Ned Sipes', 'tremblay.alivia@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3845118801', '752 Natalie Glens\nKertzmannburgh, IN 15309', 'user', '1BG8FiAhbe', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(21, 'Emmet Kassulke III', 'ushields@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3116698603', '93160 Stokes Groves Suite 186\nRiverville, NH 52044', 'user', 'PjBcwPSWot', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(22, 'Sedrick Goyette', 'jhand@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3676803735', '294 Fisher Mills\nDimitrimouth, NH 33765', 'admin', '60okYrGvGj', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(23, 'Trace Weber', 'fheathcote@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3261185337', '2601 Bert Spurs\nLottieburgh, DE 81620', 'user', 'ul3XkJnrKP', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(24, 'Fidel Mante Jr.', 'herzog.thora@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3418687559', '33452 Tillman Trail Apt. 016\nSouth Billie, CT 05120-3125', 'admin', 'RTnFwPXhFB', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(25, 'Kassandra Howe I', 'ruth.maggio@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3294394176', '1414 Breanne Corner\nSouth Jaylinbury, AL 34572', 'user', 'tqXqHVKskJ', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(26, 'Ms. Bridget Hane PhD', 'kuhic.rolando@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3834042561', '6380 Nolan Ramp\nHauckfort, SD 50751', 'admin', 'sIy9phWk8h', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(27, 'Dr. Natalie Heathcote', 'reinger.earlene@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3131128445', '661 Jayne Forges\nLake Elaina, ID 56723', 'admin', '79rGK5loTt', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(28, 'Gino Koch', 'emmerich.harmony@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3865944752', '38071 Dolores Crossing Apt. 427\nNorth Urielberg, AR 21243-0090', 'user', 'IMJAPf8zKp', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(29, 'Reanna Hamill', 'ukunde@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3628582068', '6725 Reymundo Stream Apt. 626\nSouth Delfina, VT 64014', 'user', '9XXxj8t0Pa', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(30, 'Mohammed Hamill', 'rosenbaum.santos@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3794701941', '69995 Delfina Mews Apt. 353\nFriedrichberg, WA 82370', 'user', 'LdLAF9ZYHE', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(31, 'Frankie Rath', 'qadams@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3058093104', '2202 Darby Bridge Suite 696\nLlewellynmouth, HI 69252', 'user', '2K8BULpwxC', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(32, 'Mabel Stehr', 'schuppe.hillary@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3705661723', '93349 Lemke Crossing\nSouth Rowanstad, VT 55696', 'user', '615ScRGcqL', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(33, 'Savion Corwin', 'cecil65@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3813874596', '72081 Moen Key\nMadisynmouth, VA 91555-8002', 'user', 'DhkhsXKdZW', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(34, 'Deanna Marks', 'raoul.morar@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3681892054', '3030 Thad Neck\nPort Lola, CT 59557-9536', 'admin', 'DFf1eOrHGZ', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(35, 'Mrs. Bulah Considine', 'kitty.lehner@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3670041472', '980 Breitenberg Via Apt. 323\nLake Shayleefort, NH 12887', 'user', 'DsqxINiV6l', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(36, 'Mrs. Nayeli Terry', 'mjones@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3429751756', '6699 Candido Viaduct Suite 201\nWest Sterling, FL 59115', 'user', '2Cl1jJBtn7', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(37, 'Kimberly Bernier', 'juvenal31@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3483049565', '2787 Aufderhar Unions\nWest Amirport, NH 14641-1171', 'admin', 'HFnQnm3XsK', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(38, 'Yolanda Conn DDS', 'skling@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3854442965', '19879 Jena Locks\nFernandoton, MT 63240-3092', 'admin', 'snwNLAvTsH', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(39, 'Ed Sawayn', 'cornelius.keeling@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3678411540', '48547 Rowena Plaza\nEast Lorenzobury, AZ 78411-5599', 'user', '1dHz9gDA6O', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(40, 'Karine Cartwright', 'dooley.hortense@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3162029147', '6387 Andy Flat Apt. 155\nLake Janis, CA 99986-0631', 'admin', 'PFEoyhO8wV', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(41, 'Chadd Larson', 'modesta.gerhold@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3561472887', '734 Jonathon Forks Apt. 065\nPort Allyfort, DE 63244-5545', 'user', 'XcLfXmk0p5', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(42, 'Schuyler Cassin V', 'ortiz.florine@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3089537462', '5834 Zetta Terrace\nNew Maidaside, NC 12232', 'user', '8RKkvIEZta', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(43, 'Colleen Feest', 'robbie99@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3115910219', '8101 Mosciski Circles\nEast Sarah, OR 55865', 'user', 'yfaygLbbqu', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(44, 'Prof. Efrain Spinka', 'oswaldo94@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3523668784', '69559 Jacobi Flat Suite 324\nWest Bernadette, GA 64945-6512', 'user', 'XM2My7AKjv', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(45, 'Shaniya Dach II', 'crooks.khalid@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3866385240', '794 Cydney Trail Suite 973\nThielland, DC 27226', 'user', '3lWQc2ydbH', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(46, 'Caroline Sporer Jr.', 'hcronin@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3692672272', '2486 Ellie Gardens Apt. 740\nLake Dortha, HI 93695', 'admin', 'l5dTJCuqPO', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(47, 'Prof. Idell Muller', 'pmedhurst@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3802609846', '87608 Schulist Bypass Suite 300\nConsuelostad, NV 17423', 'user', '5uO28acXoU', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(48, 'Mariam Durgan', 'maximillian74@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3188365528', '12746 Heller Squares Suite 515\nRylanbury, IL 01481-8481', 'admin', 'dcaartO7F8', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(49, 'Prof. Santino Dickinson V', 'streich.elfrieda@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3082430946', '392 McKenzie Bridge Apt. 078\nBurdettehaven, WY 64646', 'user', '0kKqCcJgXW', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(50, 'Prof. Abbie Green', 'morar.katheryn@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3880395017', '8730 Mertz Islands Apt. 200\nNicolaschester, ND 46394', 'user', 'W9hU20VA8j', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(51, 'Felicia Torphy II', 'grady66@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3091904452', '646 Ramona Land Suite 259\nLake Clintport, NY 03607-7051', 'user', 'VReNY81hTd', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(52, 'Stephanie Wiza', 'lmoore@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3314693163', '669 Jovan Circle\nNorth Orionchester, CA 59984', 'user', 'nlHAfBsiiA', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(53, 'Gwen Stark', 'kozey.anastacio@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3256099637', '5716 Jorge Track Apt. 988\nNew Judson, OR 91300-4564', 'admin', 'ACAOkEjzgP', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(54, 'Shanelle Harris', 'dickinson.bernie@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3180169291', '6005 Libbie Mews Suite 993\nHowardland, AL 10954', 'user', 'eqbAFdeVVn', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(55, 'Rahul Gusikowski DVM', 'walsh.ila@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3893599854', '2890 Lowe Shores\nSouth Joelmouth, KS 52039-5895', 'admin', '65mqFTl7HT', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(56, 'Noble Okuneva', 'daryl.lehner@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3111558889', '442 Parisian Inlet Apt. 258\nEdwinberg, ME 34124', 'user', 'wo80ff69zQ', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(57, 'Rosina Brown', 'hhahn@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3392165692', '840 Sporer Fall Suite 457\nShieldstown, AL 80323-1682', 'user', 'kF8lxTJDNw', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(58, 'Dr. Eusebio Wyman', 'candida63@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3970658149', '996 Drake Island Apt. 958\nWintheiserland, OR 17247', 'user', '8UDrutSBRi', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(59, 'Emile Corwin PhD', 'allen.schowalter@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3537564690', '885 Lambert Club\nBergstromshire, TX 63975-6390', 'user', 'Uj9bqVYj9t', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(60, 'Mr. Mauricio Orn III', 'thelma02@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3556967827', '7866 Senger Gardens Suite 791\nNorth Myriamborough, UT 99706', 'admin', 'tPrjf9Q4pU', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(61, 'Scottie Blanda', 'kdietrich@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3450662994', '1495 Rowena Harbors\nGiovannifort, SC 40382-7433', 'user', '5PYU6Qc4hw', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(62, 'Hillard Kub', 'georgiana24@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3000402246', '478 Jennifer Drive\nLake Fae, ID 94242', 'user', 'd5WGgtRRvw', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(63, 'Dr. Delbert Reynolds Jr.', 'zwiegand@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3413736332', '31203 Nils Drive Suite 708\nLake Gertrude, IA 82896', 'user', 'kqSVX58V5J', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(64, 'Demarcus Kozey', 'glover.javon@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3649437852', '219 Romaguera Ports Suite 545\nNorth Zackary, GA 17514', 'admin', 'MIQT4zHZtU', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(65, 'Rhianna Funk', 'alford31@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3035470849', '9059 Hortense Fall\nVidaview, NY 46802-6901', 'user', 'YX6MslgSZW', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(66, 'Mr. Jeff DuBuque', 'spencer.magali@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3112370739', '3043 Ankunding Brook\nLeaton, WY 00214', 'admin', 'TKv20NFnfa', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(67, 'Jarvis Kovacek V', 'golden34@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3172471317', '5515 Lila Field Apt. 939\nCleoratown, WY 30246', 'admin', 'dYk5cK5mun', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(68, 'Adrian Cummings', 'vkuhic@example.net', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3003764728', '685 Ritchie Field\nEast Evanbury, RI 45105', 'user', 'HVYBgJII5c', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(69, 'Bernard Metz', 'karli.thiel@example.com', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3310515138', '70465 Hill Skyway Suite 743\nNannieberg, CT 63206-1265', 'user', 'ZQSEtq0eSF', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(70, 'Maybell Becker', 'farrell.ericka@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3046901389', '782 Conroy Stravenue\nEast Matildachester, ID 86146', 'user', 'R6QDXAGsfu', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(71, 'Raheem Hessel', 'zryan@example.org', '2026-09-14 07:26:11', '$2y$12$Z6qM6mffhUIED3dg8qaJgO9wpMYYhTrCS7vBgkZau/qhOStGSXCHe', '3406289020', '95087 Rutherford Mews\nEast Ryderstad, CT 40175-3292', 'admin', '46q0FZ3Zhx', '2026-09-14 07:26:11', '2026-09-14 07:26:11'),
(72, 'Luis', 'luis@g.com', NULL, '$2y$12$Cw2FyGEdWvHzLTaVrNF0IugMetlPdgzkmtO.tCoWQn6GjeXucyWoW', '3120469', 'calle 2', 'user', NULL, '2026-09-15 08:01:37', '2026-09-15 08:01:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indices de la tabla `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instrument_items`
--
ALTER TABLE `instrument_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instrument_items_instrument_id_foreign` (`instrument_id`),
  ADD KEY `instrument_items_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_instrument_id_foreign` (`instrument_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `instrument_items`
--
ALTER TABLE `instrument_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `instrument_items`
--
ALTER TABLE `instrument_items`
  ADD CONSTRAINT `instrument_items_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instrument_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
