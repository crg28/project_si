-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 13-09-2026 a las 23:06:07
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

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('440hz-cache-carlos@gmail.com|127.0.0.1', 'i:2;', 1789340723),
('440hz-cache-carlos@gmail.com|127.0.0.1:timer', 'i:1789340723;', 1789340723);

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
(1, 'Jupiter Clarinete JCL700', 'MOD-3004', 2126.6, 0, 'instruments/icon.jpg', 'Viento', '2026-09-14 04:02:42', '2026-09-14 04:05:15'),
(2, 'Korg Kross 2', 'MOD-0211', 2656.88, 5, 'instruments/icon.jpg', 'Teclado', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(3, 'Tama Imperialstar', 'MOD-2407', 812.84, 48, 'instruments/icon.jpg', 'Batería', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(4, 'Cordoba C5 Guitarra Clásica', 'MOD-3179', 275.64, 10, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(5, 'Fender Precision Bass', 'MOD-3287', 1874.01, 21, 'instruments/icon.jpg', 'Bajo', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(6, 'Stentor Cello Estudiante', 'MOD-3556', 554.46, 48, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(7, 'Yamaha V3 Violín', 'MOD-7500', 1198.22, 20, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(8, 'Yamaha TRBX304', 'MOD-6286', 2733.64, 8, 'instruments/icon.jpg', 'Bajo', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(9, 'Ibanez SR300', 'MOD-6877', 1671.25, 31, 'instruments/icon.jpg', 'Bajo', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(10, 'Mapex Tornado', 'MOD-0666', 2928.15, 25, 'instruments/icon.jpg', 'Batería', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(11, 'Yamaha YAS-280 Saxofón', 'MOD-0459', 1902.51, 4, 'instruments/icon.jpg', 'Viento', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(12, 'Ibanez RG', 'MOD-5593', 2460.56, 16, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(13, 'Casio Privia PX-160', 'MOD-0419', 3391.96, 15, 'instruments/icon.jpg', 'Teclado', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(14, 'Squier Affinity Jazz Bass', 'MOD-9521', 1155.77, 45, 'instruments/icon.jpg', 'Bajo', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(15, 'Nord Stage 3', 'MOD-1815', 1337.74, 46, 'instruments/icon.jpg', 'Teclado', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(16, 'Cremona Viola SV-130', 'MOD-1738', 2960.91, 36, 'instruments/icon.jpg', 'Cuerdas', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(17, 'Epiphone Casino', 'MOD-9944', 3423.49, 1, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(18, 'Roland Juno-DS', 'MOD-6258', 1140.33, 47, 'instruments/icon.jpg', 'Teclado', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(19, 'Gibson Les Paul', 'MOD-2295', 3308.27, 37, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(20, 'Selmer Flauta Traversa', 'MOD-2720', 2470.94, 9, 'instruments/icon.jpg', 'Viento', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(21, 'Fender Stratocaster', 'MOD-7240', 844.34, 1, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 04:02:42', '2026-09-14 04:05:15'),
(22, 'Yamaha Pacifica', 'MOD-5342', 1898.18, 24, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(23, 'Yamaha P-125', 'MOD-7838', 2444.32, 30, 'instruments/icon.jpg', 'Teclado', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(24, 'Bach Trompeta TR300', 'MOD-6869', 2151.85, 21, 'instruments/icon.jpg', 'Viento', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(25, 'Pearl Export Series', 'MOD-7800', 1748.58, 48, 'instruments/icon.jpg', 'Batería', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(26, 'PRS SE Custom 24', 'MOD-9666', 716.62, 2, 'instruments/icon.jpg', 'Guitarra', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(27, 'DW Performance Series', 'MOD-3125', 2159.97, 16, 'instruments/icon.jpg', 'Batería', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(28, 'Music Man StingRay', 'MOD-8309', 708.52, 17, 'instruments/icon.jpg', 'Bajo', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(29, 'Yamaha Stage Custom', 'MOD-0236', 1558.33, 11, 'instruments/icon.jpg', 'Batería', '2026-09-14 04:02:42', '2026-09-14 04:02:42');

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
(1, 2, 3391.96, 13, 16, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(2, 1, 1902.51, 11, 17, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(3, 1, 708.52, 28, 18, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(4, 3, 2151.85, 24, 19, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(5, 3, 1337.74, 15, 20, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(6, 2, 554.46, 6, 21, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(7, 3, 2444.32, 23, 22, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(8, 3, 1155.77, 14, 23, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(9, 2, 1337.74, 15, 24, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(10, 3, 2928.15, 10, 25, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(11, 1, 812.84, 3, 26, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(12, 1, 812.84, 3, 27, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(13, 1, 1902.51, 11, 28, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(14, 1, 1198.22, 7, 29, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(15, 1, 812.84, 3, 30, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(16, 3, 1558.33, 29, 31, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(17, 2, 844.34, 21, 32, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(18, 2, 2656.88, 2, 33, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(19, 2, 2460.56, 12, 34, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(20, 3, 1155.77, 14, 35, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(21, 4, 844.34, 21, 36, '2026-09-14 04:05:15', '2026-09-14 04:05:15'),
(22, 12, 2126.6, 1, 36, '2026-09-14 04:05:15', '2026-09-14 04:05:15');

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
(1, '2026-06-03', 0, 12, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(2, '2026-07-13', 0, 13, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(3, '2026-06-09', 0, 14, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(4, '2026-07-23', 0, 15, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(5, '2026-04-08', 0, 16, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(6, '2026-05-19', 0, 17, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(7, '2026-04-22', 0, 18, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(8, '2026-06-20', 0, 19, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(9, '2026-04-29', 0, 20, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(10, '2026-04-29', 0, 21, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(11, '2026-07-05', 0, 22, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(12, '2026-09-05', 0, 23, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(13, '2026-07-26', 0, 24, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(14, '2026-06-27', 0, 25, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(15, '2026-04-25', 0, 26, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(16, '2026-05-20', 0, 27, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(17, '2026-05-04', 0, 28, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(18, '2026-04-28', 0, 29, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(19, '2026-08-04', 0, 30, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(20, '2026-04-01', 0, 31, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(21, '2026-08-18', 0, 32, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(22, '2026-04-24', 0, 33, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(23, '2026-04-12', 0, 34, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(24, '2026-06-07', 0, 35, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(25, '2026-04-24', 0, 36, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(26, '2026-05-28', 0, 37, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(27, '2026-08-22', 0, 38, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(28, '2026-05-06', 0, 39, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(29, '2026-06-30', 0, 40, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(30, '2026-07-05', 0, 41, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(31, '2026-07-07', 0, 42, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(32, '2026-06-25', 0, 43, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(33, '2026-05-18', 0, 44, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(34, '2026-07-07', 0, 45, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(35, '2026-06-26', 0, 46, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(36, '2026-09-13', 28896.56, 72, '2026-09-14 04:05:15', '2026-09-14 04:05:15');

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
(1, '2656719075739183', '2028-02-12', 151, 1, 12, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(2, '4246257874995', '2026-11-01', 718, 2, 13, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(3, '6011540732292825', '2027-11-18', 865, 3, 14, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(4, '4539505204688', '2028-12-18', 145, 4, 15, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(5, '3528021526077816', '2026-11-29', 124, 5, 16, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(6, '4539794587146374', '2027-07-05', 892, 6, 17, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(7, '3589695503173106', '2027-04-05', 478, 7, 18, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(8, '6011629649658994', '2029-04-29', 741, 8, 19, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(9, '4212867619438078', '2028-06-02', 877, 9, 20, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(10, '2330486248411900', '2027-02-14', 653, 10, 21, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(11, '6011243545149635', '2029-03-20', 334, 11, 22, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(12, '4556016730685134', '2029-01-27', 604, 12, 23, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(13, '4716053926043767', '2026-11-05', 561, 13, 24, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(14, '3589191553543521', '2029-05-14', 791, 14, 25, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(15, '3528121326791739', '2029-07-08', 146, 15, 26, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(16, '2124545446', '2026-09-16', 908, NULL, 72, '2026-09-14 04:05:08', '2026-09-14 04:05:08'),
(17, '2124545446', '2026-09-16', 908, 36, 72, '2026-09-14 04:05:15', '2026-09-14 04:05:15');

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
(1, '2026-07-21', 'Excelente calidad de sonido, superó mis expectativas.', 47, 10, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(2, '2026-08-06', 'Buena relación calidad-precio, lo recomiendo.', 48, 18, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(3, '2026-07-09', 'Excelente fabricación, llegó muy bien empacado.', 49, 23, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(4, '2026-07-27', 'El tono es increíble, perfecto para presentaciones en vivo.', 50, 8, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(5, '2026-09-05', 'Excelente fabricación, llegó muy bien empacado.', 51, 17, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(6, '2026-07-15', 'Excelente calidad de sonido, superó mis expectativas.', 52, 12, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(7, '2026-07-01', 'Excelente fabricación, llegó muy bien empacado.', 53, 14, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(8, '2026-07-14', 'El tono es increíble, perfecto para presentaciones en vivo.', 54, 26, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(9, '2026-09-13', 'El tono es increíble, perfecto para presentaciones en vivo.', 55, 3, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(10, '2026-08-18', 'El tono es increíble, perfecto para presentaciones en vivo.', 56, 11, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(11, '2026-09-05', 'El tono es increíble, perfecto para presentaciones en vivo.', 57, 13, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(12, '2026-06-23', 'Excelente calidad de sonido, superó mis expectativas.', 58, 17, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(13, '2026-07-23', 'Instrumento sólido, pequeños problemas de afinación.', 59, 9, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(14, '2026-08-24', 'Excelente fabricación, llegó muy bien empacado.', 60, 9, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(15, '2026-09-01', 'Excelente calidad de sonido, superó mis expectativas.', 61, 21, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(16, '2026-07-12', 'Muy buena construcción, cómodo de tocar.', 62, 11, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(17, '2026-09-10', 'El tono es increíble, perfecto para presentaciones en vivo.', 63, 20, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(18, '2026-06-20', 'Excelente fabricación, llegó muy bien empacado.', 64, 23, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(19, '2026-08-24', 'Muy buena construcción, cómodo de tocar.', 65, 9, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(20, '2026-08-27', 'Instrumento sólido, pequeños problemas de afinación.', 66, 23, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(21, '2026-09-13', 'Instrumento sólido, pequeños problemas de afinación.', 67, 15, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(22, '2026-08-03', 'Instrumento sólido, pequeños problemas de afinación.', 68, 19, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(23, '2026-06-28', 'Instrumento sólido, pequeños problemas de afinación.', 69, 1, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(24, '2026-07-06', 'Muy buena construcción, cómodo de tocar.', 70, 22, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(25, '2026-08-28', 'Instrumento sólido, pequeños problemas de afinación.', 71, 15, '2026-09-14 04:02:42', '2026-09-14 04:02:42');

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
('9nIAvzNw1BSSrMhFklJI5vWC5d728UTVURmeEe1l', 72, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.2 Safari/605.1.15', 'eyJfdG9rZW4iOiJXajdJbXZNQnFTSEpCSnR1WFVaWndsRVZGV0FSckNmcXdVNVNCcDI5IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9pbnN0cnVtZW50c1wvMjEiLCJyb3V0ZSI6Imluc3RydW1lbnQuc2hvdyJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX0sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjo3Mn0=', 1789340730);

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
(1, 'Admin', 'admin@ejemplo.com', NULL, '$2y$12$4klvKjKSgXXF83E2vauDN.7xH/s6Zcn3LSqas0j1eajNn7G7LpK3.', '300000000', 'Calle 1 # 2', 'admin', NULL, '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(2, 'London Johnston', 'jerel.gusikowski@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3324471336', '697 Lauren Divide Suite 499\nEast Helena, LA 86137-3105', 'admin', '2akoFvXkub', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(3, 'Dr. Makenna Weimann', 'jonas.zboncak@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3829451785', '2354 Thompson Isle\nNorth Altafurt, FL 95830', 'user', 'NrV1F27ClE', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(4, 'Aric Lebsack', 'mallie32@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3418636639', '628 Afton Grove Suite 220\nBeryltown, OK 34050-3318', 'user', 'j9DRHLhNKK', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(5, 'Gabe Marks', 'aliya.dibbert@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3692158638', '2646 Fannie Vista Apt. 030\nDorcasside, WI 39462-8430', 'admin', 'sEAfDmwMNa', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(6, 'Kenton Ebert', 'gberge@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3852508849', '801 Gerhold Route\nRubenhaven, AK 66060', 'user', 'sFkSdx4m0W', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(7, 'Raquel Dibbert', 'green.emely@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3467369874', '1870 Kuphal Heights Apt. 821\nMayaberg, VA 07898', 'user', '8kBDQAXicr', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(8, 'Meredith Hickle', 'lulu.mayer@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3761732194', '45614 Fae Shoal\nNorth Minervafurt, MD 58990-4251', 'admin', 'NfjSYWAcRU', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(9, 'Dr. Raphael Fritsch', 'jewel93@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3540522996', '1930 Funk Parkway\nSouth Nestorside, ID 15095-9826', 'user', 'lbnlecsytI', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(10, 'Dr. Giovanni Kulas III', 'kertzmann.wendell@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3212198180', '37547 Danial Villages Suite 066\nLake Dave, OK 15977', 'admin', 'KUqcQnxTbK', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(11, 'Danika Witting', 'gibson.teagan@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3311039424', '872 Florian Shoal Apt. 347\nLake Lloydland, DC 76368', 'user', 'K7fyZ734Ax', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(12, 'Vivianne Johnston', 'theresa.lockman@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3262013304', '6503 Blanche Landing\nCoryview, ME 05907-0519', 'user', 'ksv0r0kiVg', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(13, 'Dr. Elvera Berge IV', 'caroline.wiza@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3930548487', '409 Paucek Mountain Suite 868\nDeliashire, ND 68392', 'admin', 'IybMVMS4pj', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(14, 'Kendra McGlynn', 'ethyl62@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3921450049', '1638 Kautzer River Apt. 135\nLangborough, AZ 02769', 'user', '1lpQDWd56v', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(15, 'Misael Yost Sr.', 'oreichert@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3972248235', '536 Nico Station Apt. 190\nHintzfort, VT 74923', 'user', 'GetUQFZaRP', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(16, 'Dr. Gust Bins', 'brittany.greenfelder@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3402676437', '54695 Fay Rapids Apt. 865\nPort Evans, IN 80469-8596', 'user', 'HSZxi0YwLT', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(17, 'Clay Wuckert', 'rmarquardt@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3644849982', '492 Bailey Loaf\nSouth Arvid, AK 31242-2722', 'user', '899QtU5en9', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(18, 'Prof. Gabe Wunsch MD', 'ryley18@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3059241946', '764 Aubrey Fields\nShyanneberg, AZ 31482', 'admin', 'kQCA1rCR4C', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(19, 'Prof. Hal Prosacco V', 'alfredo.reinger@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3255815400', '3885 Vida Mall Suite 296\nNorth Bridgetteborough, NE 38257', 'user', 't9dD0HcdBr', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(20, 'Ms. Delfina Quitzon', 'brown.keshaun@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3426450632', '977 Raina Hill Apt. 816\nPricefort, OH 11769-6757', 'user', 'QZEWZh14xR', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(21, 'Clotilde Treutel', 'hubert81@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3074313725', '68515 Macejkovic Bridge Suite 739\nWalshshire, MN 42982', 'user', 'fCbrcEUWIY', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(22, 'Braxton Brekke V', 'xhegmann@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3426928629', '4649 Hagenes Isle Apt. 292\nPinkieburgh, MA 18851', 'user', 'yfNXFXaTMm', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(23, 'Miss Elnora Gleason', 'jacobs.katarina@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3039992838', '79336 Grady Square Suite 991\nHagenesmouth, WA 90011', 'user', 'pTIFGWP9QB', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(24, 'Mr. Cruz Wintheiser', 'rosalyn.gusikowski@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3327087065', '6801 Bogisich Freeway Suite 108\nSouth Abdullahport, FL 17663-8498', 'user', 'HM8WfoT0Sg', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(25, 'Fredrick Lakin Sr.', 'darwin.boyer@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3605577143', '6638 Nikolaus Station Suite 818\nO\'Connerchester, PA 57722-1148', 'admin', 'y5OaoDGzFy', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(26, 'Dr. Dawn Heidenreich', 'christiansen.kimberly@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3623004745', '373 Mayert Viaduct\nEast Angela, KY 24586', 'user', '013uvePNbh', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(27, 'Kris Watsica Jr.', 'katlynn82@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3784798395', '37584 Rosina Bypass Apt. 148\nNew Ebbaburgh, NJ 07619-6264', 'user', 'PzcfM6ipsn', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(28, 'Patricia Kshlerin', 'wwehner@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3953439382', '3472 Meredith Cliffs Suite 467\nAlessandraport, SD 32878', 'admin', 'GLqveFQg6L', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(29, 'Casey Rippin MD', 'price.witting@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3712718852', '87539 Kunze Green Suite 599\nHerzogville, WI 30834', 'user', '9TNiHoV1nf', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(30, 'Deontae McLaughlin', 'grady.meagan@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3329289131', '1109 Helga Rue\nNorth Newtonfort, MI 26927', 'user', '2WyCDkKzsE', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(31, 'Kelly Schowalter PhD', 'larkin.nicholaus@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3227184760', '169 Emery Turnpike Suite 392\nAnnamarieview, KY 03948-8206', 'admin', 'BpN4UpOYUp', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(32, 'Taryn Rolfson', 'maud96@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3936672192', '128 Darrion Well Suite 361\nWuckertchester, AK 12697-7786', 'user', 'mXOQZO8hv2', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(33, 'Nikita Davis PhD', 'nbrekke@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3813011894', '987 Trey Lodge Apt. 893\nRosendoshire, KY 70292', 'admin', 'XXq2CEJezr', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(34, 'Okey Jakubowski IV', 'kunde.geovanny@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3840901349', '75953 Jones Junctions\nWest Kraigbury, LA 22898', 'user', '1cVTlPZOir', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(35, 'Bernhard Rowe', 'lmoen@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3408813400', '145 Alvis Dale\nFloyview, IL 45856', 'admin', 'ncaG9Rg3Gy', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(36, 'Mr. Leo Collier PhD', 'victoria.hettinger@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3734678700', '64277 Hermiston Locks Suite 357\nNew Ashley, IN 75477', 'user', 'rbqCt5kBku', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(37, 'Zula Ritchie', 'beulah.koepp@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3864038167', '62749 O\'Conner Brook Apt. 709\nKalitown, RI 54950', 'user', 'aZMW5sJwSa', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(38, 'Mrs. Marisa Hills DVM', 'beau.harris@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3552069174', '34587 Samanta Tunnel\nSouth Paulview, NH 48927-3061', 'user', '8Ya66DMrie', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(39, 'Adam Doyle', 'fjones@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3636247696', '84178 Padberg Lodge Apt. 467\nNew Haleigh, AZ 10233', 'user', 'y5xqZh9r3y', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(40, 'Allene Bernier', 'vilma.zulauf@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3150455062', '268 Effertz Harbors\nMurphymouth, WY 05263-6019', 'user', 'YIDwBR7Lc2', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(41, 'Jakayla Maggio', 'beer.raul@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3234391635', '948 Taurean Court Suite 677\nJodieborough, NJ 11685-2892', 'user', 'fLbcmKrnyX', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(42, 'Mrs. Theodora Herzog DVM', 'hellen.stanton@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3605099964', '120 Nicolas Drive Apt. 762\nPort Cecile, WV 15144', 'user', 'uwsI1u57gn', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(43, 'Dr. Sammy Skiles', 'ybrown@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3861266325', '17852 Macejkovic Wells Apt. 019\nWest Jewel, AR 11272-7507', 'admin', '6M8bSqolOS', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(44, 'Tanner Will', 'karelle34@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3857471202', '9106 Stanton Overpass Apt. 690\nReingerport, CT 29647-8496', 'user', '8c5Fa8RcI7', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(45, 'Miss Marlene Bartell Sr.', 'beryl86@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3372757081', '181 Shanahan Spurs Apt. 042\nLake Erik, AL 92025-4187', 'user', 'o3rJoCxoUC', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(46, 'Adella Smitham', 'xruecker@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3479845759', '6649 Watsica Springs\nMilotown, ID 37005-5510', 'admin', 'giWSbXXFA8', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(47, 'June Mayer', 'henderson.brown@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3501307699', '153 Maya Cove Apt. 007\nSouth Cleo, HI 85901', 'user', 'zMzbR6Cn9I', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(48, 'Dr. Dejuan Murazik I', 'qmayert@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3209541080', '74988 Raymond Trail\nJohnstonbury, IL 64422', 'user', 'EKogofulsR', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(49, 'Mr. Luciano Smith', 'osborne58@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3579779313', '60733 Feil Islands\nDavonteshire, MO 07235-6047', 'user', 'Dckt5aa8V4', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(50, 'Mariam Toy DDS', 'aurelia.schroeder@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3385880161', '5218 Hermina Ville Suite 241\nEast Eldoraberg, UT 77147-0390', 'admin', 'i63jdLl94y', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(51, 'Desiree Robel III', 'maurine.wolf@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3248378313', '6029 McCullough Road Suite 901\nHalport, DC 61094', 'user', 'LLiHVdmPWO', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(52, 'Oscar Rogahn Jr.', 'jamarcus.hermiston@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3316240291', '740 Ortiz Freeway Apt. 262\nWest Alfred, MD 23019', 'admin', 'Xbw1ROlSXQ', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(53, 'Tristian Rice', 'schulist.ronaldo@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3827127295', '674 Hoyt Drive\nElouisefort, CO 04030-3486', 'admin', '6YPPiSpcEB', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(54, 'Tabitha Baumbach', 'jschoen@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3786091944', '858 Gleason Camp Suite 040\nPort Maynardview, AK 13214-5829', 'admin', 'RtYZznt13m', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(55, 'Cullen Collier', 'wyman.jayce@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3447417710', '72758 Wisozk Overpass Apt. 403\nNorth Clark, CT 49334-4102', 'admin', '7kzLPmYOwG', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(56, 'Dr. Gustave Turcotte', 'emiliano.damore@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3505007361', '332 DuBuque Crossroad\nWest Angelinetown, CA 64525-1978', 'admin', 'Q0J5ZX2zOS', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(57, 'Ludwig Bednar', 'charley.thompson@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3871127163', '162 Arielle Well Suite 456\nHerzogstad, UT 94826', 'user', 'W3uYL0VOfT', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(58, 'Braeden Kilback', 'boyle.velma@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3102607808', '4400 Zulauf Avenue Apt. 007\nOrtizbury, AK 79305-9145', 'user', 'J4S0bhHcx8', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(59, 'Prof. Elissa Sauer IV', 'timmy01@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3020470508', '4750 Grimes Landing\nTurcottechester, OR 38007', 'user', 'yElli6s8Dr', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(60, 'Antonina Quitzon', 'franecki.zachery@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3917661571', '200 Upton Track Apt. 258\nEast Dolly, DE 63988', 'user', '0xsWDjUR5G', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(61, 'Dr. Verlie Sporer', 'cummings.maci@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3963119974', '616 Elroy Island\nBinshaven, CT 12779', 'user', '8NK4ARJeUn', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(62, 'Blaise Green PhD', 'gretchen.rolfson@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3948150486', '55041 Noel Lodge Suite 172\nRosenbaumville, FL 02812-5473', 'admin', '6UhuPpbmot', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(63, 'Bernadine Frami', 'fae03@example.net', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3947864700', '870 Milford Oval Suite 538\nGradyport, OH 22826', 'user', 'm2rv2eLhqv', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(64, 'Gabe Flatley', 'nyasia.wisozk@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3101366047', '412 Yasmin Track Suite 249\nErdmanhaven, IN 94800', 'admin', 'a7tce0Q05E', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(65, 'Wilton Pouros', 'jessie.stroman@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3968845402', '3923 Queenie Wall Suite 783\nNew Juanitaton, AZ 70156', 'user', '8TesmiNXnK', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(66, 'Prof. Beaulah Senger Sr.', 'cleo90@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3308439286', '74699 Cielo Villages\nNelsbury, IA 18300', 'user', '1aOaXZiHWR', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(67, 'Prof. Bradford Harvey DVM', 'mschowalter@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3969488139', '706 Karley Spur\nVonRuedenland, SD 89031', 'user', 'iGJLJxzOnS', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(68, 'Lelah Spencer I', 'sabryna.okuneva@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3044833630', '36410 Runolfsson Throughway\nRaynorfort, OK 29834', 'user', 'p1IUJzFo7W', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(69, 'Caden Harvey', 'janice91@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3937336145', '9977 Raphaelle Viaduct\nMosciskiland, OK 19541', 'user', 'j1P8CxvXmD', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(70, 'Sheila Quigley', 'elton86@example.com', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3561234254', '919 Cormier Mountain\nNovaborough, MO 56676', 'admin', 'tBbNsDeOGo', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(71, 'Keyon Halvorson', 'damore.ebba@example.org', '2026-09-14 04:02:42', '$2y$12$IaT46gj.khia3hnLhCCxvO6A..J3xDbv.xEHV8ZlEeiC9Jo6OtlIS', '3466778479', '9193 Spinka Center Apt. 527\nPenelopeland, MA 10209', 'admin', 'gMCpAdUKCJ', '2026-09-14 04:02:42', '2026-09-14 04:02:42'),
(72, 'Carlos', 'carlos@gmail.com', NULL, '$2y$12$EyNfO.FihB8eyBtffZGeCersmmgBN51N3rwelrvGwCwewOyq08v8O', '312000000', 'Calle 1', 'user', NULL, '2026-09-14 04:04:56', '2026-09-14 04:04:56');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `instrument_items`
--
ALTER TABLE `instrument_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
