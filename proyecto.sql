-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 12-09-2026 a las 22:42:03
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
(1, 'Korg Kross 2', 'MOD-2987', 888.06, 39, 'instruments/icon.jpg', 'Teclado', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(2, 'Music Man StingRay', 'MOD-9257', 2285.78, 29, 'instruments/icon.jpg', 'Bajo', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(3, 'Cordoba C5 Guitarra Clásica', 'MOD-2618', 959.55, 44, 'instruments/icon.jpg', 'Cuerdas', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(4, 'Jupiter Clarinete JCL700', 'MOD-9741', 578.84, 4, 'instruments/icon.jpg', 'Viento', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(5, 'Yamaha TRBX304', 'MOD-9264', 2466.06, 44, 'instruments/icon.jpg', 'Bajo', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(6, 'Cremona Viola SV-130', 'MOD-0359', 1014.7, 39, 'instruments/icon.jpg', 'Cuerdas', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(7, 'Nord Stage 3', 'MOD-9277', 2361.11, 42, 'instruments/icon.jpg', 'Teclado', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(8, 'PRS SE Custom 24', 'MOD-7096', 1378.53, 26, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(9, 'Yamaha Stage Custom', 'MOD-9694', 983.14, 41, 'instruments/icon.jpg', 'Batería', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(10, 'Selmer Flauta Traversa', 'MOD-4412', 784.86, 46, 'instruments/icon.jpg', 'Viento', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(11, 'Roland Juno-DS', 'MOD-4312', 1187.62, 3, 'instruments/icon.jpg', 'Teclado', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(12, 'Squier Affinity Jazz Bass', 'MOD-0245', 3398.92, 9, 'instruments/icon.jpg', 'Bajo', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(13, 'Epiphone Casino', 'MOD-8097', 1578.57, 27, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(14, 'Fender Stratocaster', 'MOD-8905', 1479.68, 33, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(15, 'Bach Trompeta TR300', 'MOD-3992', 220.85, 19, 'instruments/icon.jpg', 'Viento', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(16, 'Yamaha V3 Violín', 'MOD-3225', 175.75, 18, 'instruments/icon.jpg', 'Cuerdas', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(17, 'Ibanez SR300', 'MOD-6859', 1904.32, 41, 'instruments/icon.jpg', 'Bajo', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(18, 'Ibanez RG', 'MOD-1334', 2787.08, 14, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(19, 'Stentor Cello Estudiante', 'MOD-2931', 2609.16, 4, 'instruments/icon.jpg', 'Cuerdas', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(20, 'Pearl Export Series', 'MOD-6878', 1604.85, 5, 'instruments/icon.jpg', 'Batería', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(21, 'Mapex Tornado', 'MOD-1889', 1800.03, 23, 'instruments/icon.jpg', 'Batería', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(22, 'Gibson Les Paul', 'MOD-2589', 1484.9, 44, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(23, 'Yamaha P-125', 'MOD-2732', 2846.52, 38, 'instruments/icon.jpg', 'Teclado', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(24, 'Yamaha Pacifica', 'MOD-7525', 3359.89, 9, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(25, 'Tama Imperialstar', 'MOD-6214', 1477.68, 41, 'instruments/icon.jpg', 'Batería', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(26, 'Yamaha YAS-280 Saxofón', 'MOD-8214', 1362.39, 21, 'instruments/icon.jpg', 'Viento', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(27, 'DW Performance Series', 'MOD-2149', 1777.2, 24, 'instruments/icon.jpg', 'Batería', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(28, 'Fender Precision Bass', 'MOD-3493', 2403.07, 21, 'instruments/icon.jpg', 'Bajo', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(29, 'Casio Privia PX-160', 'MOD-8959', 2089.17, 18, 'instruments/icon.jpg', 'Teclado', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(30, 'explicabo qui', 'MOD-4879', 1120.64, 11, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(31, 'magni iste', 'MOD-6481', 2032.11, 26, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(32, 'facere nemo', 'MOD-7954', 1458.89, 41, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(33, 'sit omnis', 'MOD-6181', 3268.12, 21, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(34, 'nulla fugit', 'MOD-9112', 1446.64, 49, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(35, 'optio rerum', 'MOD-6212', 529.97, 17, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(36, 'dignissimos eum', 'MOD-6598', 856.52, 7, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(37, 'aut sed', 'MOD-9453', 2148.76, 1, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(38, 'quaerat voluptatem', 'MOD-3823', 2670.17, 44, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(39, 'excepturi iusto', 'MOD-1046', 389.25, 44, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(40, 'qui similique', 'MOD-4204', 2378.19, 22, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(41, 'quos voluptatibus', 'MOD-6033', 3141.48, 39, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(42, 'sunt omnis', 'MOD-6216', 1345.97, 25, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(43, 'eos vel', 'MOD-0650', 3287.93, 10, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(44, 'tenetur sapiente', 'MOD-7607', 3182.2, 48, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(45, 'nihil et', 'MOD-6000', 2266.07, 29, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(46, 'rem rerum', 'MOD-5706', 1153.7, 20, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(47, 'sed laboriosam', 'MOD-4173', 2368.28, 20, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(48, 'modi et', 'MOD-9221', 2054.07, 32, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(49, 'eveniet eveniet', 'MOD-3111', 768.86, 10, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(50, 'vitae temporibus', 'MOD-7522', 2893.98, 30, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(51, 'voluptatum nam', 'MOD-4008', 2718.37, 31, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(52, 'voluptas architecto', 'MOD-7527', 2791.77, 28, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(53, 'aut aut', 'MOD-1433', 1411.22, 25, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(54, 'quibusdam non', 'MOD-2498', 3155.8, 19, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(55, 'itaque veniam', 'MOD-5508', 1617.92, 28, 'instruments/icon.jpg', 'Guitarra', '2026-09-13 02:14:50', '2026-09-13 02:14:50');

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
(1, 3, 2466.06, 5, 16, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(2, 1, 1800.03, 21, 17, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(3, 2, 1187.62, 11, 18, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(4, 1, 784.86, 10, 19, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(5, 3, 578.84, 4, 20, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(6, 2, 2361.11, 7, 21, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(7, 2, 2089.17, 29, 22, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(8, 3, 1484.9, 22, 23, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(9, 1, 2361.11, 7, 24, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(10, 1, 784.86, 10, 25, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(11, 1, 1477.68, 25, 26, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(12, 2, 1800.03, 21, 27, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(13, 3, 888.06, 1, 28, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(14, 2, 1479.68, 14, 29, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(15, 1, 1477.68, 25, 30, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(16, 3, 1378.53, 8, 31, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(17, 1, 888.06, 1, 32, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(18, 2, 784.86, 10, 33, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(19, 2, 1378.53, 8, 34, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(20, 2, 3398.92, 12, 35, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(21, 3, 2361.11, 7, 36, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(22, 1, 2787.08, 18, 37, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(23, 3, 3359.89, 24, 38, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(24, 1, 2285.78, 2, 39, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(25, 1, 2089.17, 29, 40, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(26, 1, 2285.78, 2, 41, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(27, 1, 2361.11, 7, 42, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(28, 1, 2466.06, 5, 43, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(29, 3, 1362.39, 26, 44, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(30, 3, 2403.07, 28, 45, '2026-09-13 02:14:50', '2026-09-13 02:14:50');

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
(1, '2026-08-16', 0, 12, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(2, '2026-07-01', 0, 13, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(3, '2026-07-20', 0, 14, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(4, '2026-04-07', 0, 15, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(5, '2026-09-11', 0, 16, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(6, '2026-09-04', 0, 17, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(7, '2026-03-14', 0, 18, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(8, '2026-04-05', 0, 19, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(9, '2026-04-08', 0, 20, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(10, '2026-07-30', 0, 21, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(11, '2026-09-08', 0, 22, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(12, '2026-06-06', 0, 23, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(13, '2026-03-26', 0, 24, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(14, '2026-09-04', 0, 25, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(15, '2026-05-17', 0, 26, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(16, '2026-04-23', 0, 27, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(17, '2026-04-21', 0, 28, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(18, '2026-03-15', 0, 29, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(19, '2026-07-20', 0, 30, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(20, '2026-03-23', 0, 31, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(21, '2026-09-05', 0, 32, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(22, '2026-04-12', 0, 33, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(23, '2026-05-08', 0, 34, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(24, '2026-09-01', 0, 35, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(25, '2026-04-30', 0, 36, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(26, '2026-07-03', 0, 37, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(27, '2026-07-17', 0, 38, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(28, '2026-05-27', 0, 39, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(29, '2026-06-13', 0, 40, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(30, '2026-05-19', 0, 41, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(31, '2026-08-05', 0, 42, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(32, '2026-08-11', 0, 43, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(33, '2026-08-04', 0, 44, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(34, '2026-08-30', 0, 45, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(35, '2026-07-28', 0, 46, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(36, '2026-06-09', 0, 47, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(37, '2026-08-14', 0, 48, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(38, '2026-05-21', 0, 49, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(39, '2026-06-16', 0, 50, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(40, '2026-04-14', 0, 51, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(41, '2026-07-16', 0, 52, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(42, '2026-08-02', 0, 53, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(43, '2026-08-08', 0, 54, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(44, '2026-07-31', 0, 55, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(45, '2026-07-04', 0, 56, '2026-09-13 02:14:50', '2026-09-13 02:14:50');

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
(1, '4233630321754603', '2028-09-28', 384, 1, 12, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(2, '3589634447194993', '2026-11-16', 898, 2, 13, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(3, '4488899241689684', '2029-09-06', 723, 3, 14, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(4, '3589814529835487', '2027-07-22', 620, 4, 15, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(5, '4916603493571760', '2028-08-24', 891, 5, 16, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(6, '2566931361696949', '2026-09-23', 964, 6, 17, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(7, '6011134637633174', '2028-07-08', 467, 7, 18, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(8, '4485937153767479', '2029-05-28', 107, 8, 19, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(9, '5475846547360801', '2029-05-02', 468, 9, 20, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(10, '5301798050127426', '2028-03-22', 224, 10, 21, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(11, '5153888355069131', '2026-11-17', 758, 11, 22, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(12, '5236495910615761', '2028-10-15', 927, 12, 23, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(13, '2314535653496671', '2026-12-31', 576, 13, 24, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(14, '4916724716570445', '2029-04-19', 966, 14, 25, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(15, '4716310355570', '2028-01-17', 612, 15, 26, '2026-09-13 02:14:50', '2026-09-13 02:14:50');

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
(1, '2026-08-08', 'Excelente fabricación, llegó muy bien empacado.', 57, 31, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(2, '2026-07-25', 'Instrumento sólido, pequeños problemas de afinación.', 58, 32, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(3, '2026-07-06', 'Excelente fabricación, llegó muy bien empacado.', 59, 33, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(4, '2026-07-09', 'Excelente calidad de sonido, superó mis expectativas.', 60, 34, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(5, '2026-07-15', 'Buena relación calidad-precio, lo recomiendo.', 61, 35, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(6, '2026-06-29', 'Excelente fabricación, llegó muy bien empacado.', 62, 36, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(7, '2026-09-11', 'El tono es increíble, perfecto para presentaciones en vivo.', 63, 37, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(8, '2026-07-09', 'Instrumento sólido, pequeños problemas de afinación.', 64, 38, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(9, '2026-08-22', 'Muy buena construcción, cómodo de tocar.', 65, 39, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(10, '2026-09-12', 'Excelente calidad de sonido, superó mis expectativas.', 66, 40, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(11, '2026-08-25', 'Excelente fabricación, llegó muy bien empacado.', 67, 41, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(12, '2026-07-17', 'Instrumento sólido, pequeños problemas de afinación.', 68, 42, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(13, '2026-08-30', 'El tono es increíble, perfecto para presentaciones en vivo.', 69, 43, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(14, '2026-07-18', 'Excelente calidad de sonido, superó mis expectativas.', 70, 44, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(15, '2026-08-24', 'Instrumento sólido, pequeños problemas de afinación.', 71, 45, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(16, '2026-06-21', 'Excelente calidad de sonido, superó mis expectativas.', 72, 46, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(17, '2026-07-19', 'Buena relación calidad-precio, lo recomiendo.', 73, 47, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(18, '2026-08-06', 'Excelente calidad de sonido, superó mis expectativas.', 74, 48, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(19, '2026-08-11', 'Buena relación calidad-precio, lo recomiendo.', 75, 49, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(20, '2026-06-23', 'Instrumento sólido, pequeños problemas de afinación.', 76, 50, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(21, '2026-09-05', 'Instrumento sólido, pequeños problemas de afinación.', 77, 51, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(22, '2026-08-30', 'Buena relación calidad-precio, lo recomiendo.', 78, 52, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(23, '2026-06-19', 'El tono es increíble, perfecto para presentaciones en vivo.', 79, 53, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(24, '2026-07-19', 'Instrumento sólido, pequeños problemas de afinación.', 80, 54, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(25, '2026-07-19', 'Excelente calidad de sonido, superó mis expectativas.', 81, 55, '2026-09-13 02:14:50', '2026-09-13 02:14:50');

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
('2rwfACMZhpQKzvqpiMni1NcaFPiyn9cs545ugJXx', 82, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.6.2 Safari/605.1.15', 'eyJfdG9rZW4iOiJxN1lubkY2U2xkQkhoRmpMQVEyaWtTUmU3YkQ2Q1dZc1N5cWo1cHM4IiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvMTI3LjAuMC4xOjgwMDAiLCJyb3V0ZSI6IkhvbWVDb250cm9sbGVyLmluZGV4In0sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjo4MiwiYXV0aCI6eyJwYXNzd29yZF9jb25maXJtZWRfYXQiOjE3ODkyNTI3NjN9fQ==', 1789252763);

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
(1, 'Admin', 'admin@ejemplo.com', NULL, '$2y$12$QB1i52.q.jpjORnJ0d.cvOMyBiht3du/Bi0OgN67omWDLFnPMmzay', '300000000', 'Calle 1 # 2', 'admin', NULL, '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(2, 'Cullen Dooley Jr.', 'lester97@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3432595293', '32317 Steuber Points Suite 563\nWest Shawnaborough, ID 74060', 'user', 'fJ4qyVIGqo', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(3, 'Halle Koss DVM', 'hartmann.hal@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3737964489', '518 Sidney Light Apt. 917\nWest Amyaburgh, DC 15317-4931', 'user', 'kcd3bwfURW', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(4, 'Mr. Otho Schaden PhD', 'kpfannerstill@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3258475597', '5440 Demond Alley Apt. 753\nOrnstad, NE 61378-9072', 'user', 'w5K7Fb4mT7', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(5, 'Jaleel Jerde', 'weissnat.abigale@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3309842034', '48661 Cremin Parks\nDeonburgh, CT 16668-7141', 'user', '2gBpFYF27h', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(6, 'Dr. Jaron Stracke I', 'ycormier@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3897169803', '843 Chandler Islands Apt. 955\nCristview, PA 09540-7932', 'admin', '000YY5J52z', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(7, 'Heaven Kessler Sr.', 'vschneider@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3674606927', '20723 Oswald Way\nHilperthaven, OK 58305', 'user', 'SiGVMtDc5r', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(8, 'Mr. Bradly Medhurst IV', 'zcummings@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3517123977', '660 Ansley Route Suite 412\nEast Ezra, NJ 66327-0624', 'user', 'CFcMUbEdeO', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(9, 'Lawrence Weimann', 'julia.fisher@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3304389846', '98462 Russel Stream Suite 741\nNorth Susana, HI 44923', 'user', 'IcYrjwap7j', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(10, 'Lucio Monahan', 'joyce.kshlerin@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3034931063', '82685 Ardella Fords Suite 611\nSouth Lurashire, NV 66715-3722', 'user', 'PArhiqnP2h', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(11, 'Kassandra Heller', 'nwehner@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3208534823', '8981 Daugherty Trail\nFannyshire, TX 10170', 'user', '1p7wkO8oi0', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(12, 'Levi Romaguera', 'murray.katheryn@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3466542104', '245 Casper Glens\nOlsonborough, IL 17771', 'user', 'orfKygSI6S', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(13, 'Lydia Reichert', 'adrianna.macejkovic@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3180430564', '6783 Harvey Manors Apt. 799\nDarrellview, AL 79706-2013', 'user', '6wvqUC2EO9', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(14, 'Arturo Renner', 'rocio.bartoletti@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3450178394', '955 Daphne Unions Suite 768\nBrodymouth, SD 75344', 'user', '7Oarxpy09A', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(15, 'Alessandra Runolfsdottir', 'kwintheiser@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3644482844', '481 Dean Vista Apt. 081\nEast Nyah, PA 75431', 'user', 'qVVae2uByx', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(16, 'Eulalia Brakus', 'jenkins.mckenzie@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3416056908', '97676 Junius Tunnel\nCalistabury, KS 12664', 'user', 'EoPP7BmoLY', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(17, 'Winfield Stanton', 'emil.schimmel@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3001324440', '66443 Larson Haven\nRutherfordhaven, AK 46638-3086', 'user', 'tRRbPkKlWp', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(18, 'Ivy Fadel', 'alana54@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3116720117', '398 Kathlyn Centers Suite 517\nWest Kelsiberg, ID 84179-4446', 'user', 'tRWcCukgmO', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(19, 'Emmet Langworth', 'nkerluke@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3208420293', '9471 Garrick Lake\nAbernathybury, UT 32419', 'user', 'YikFZuC76p', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(20, 'Dr. Ransom Davis', 'shyanne15@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3920136335', '72718 Russel Locks\nPort Mossieside, SD 37685', 'admin', '5v5fiZOMWv', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(21, 'Dr. Mona Marquardt Sr.', 'waelchi.audie@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3735185193', '2633 Lee Expressway Apt. 468\nLake Davonburgh, SD 15162', 'user', 'in7SvdOWTn', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(22, 'Prof. Hollie Nitzsche', 'kihn.stanley@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3554152793', '527 Cassin Via\nLake Delaneystad, DE 73952-2835', 'user', 'I6ndhzX8xe', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(23, 'Prof. Jewell Pollich', 'zion67@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3200538328', '2253 Boyd Ramp Suite 525\nZoiemouth, VT 07239-4905', 'user', 'Hdowt80OKt', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(24, 'Woodrow Strosin', 'etha89@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3196840335', '403 Hickle Villages Suite 948\nTellybury, CA 05603-1796', 'user', 'zUENQVumbe', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(25, 'Payton O\'Hara', 'oberbrunner.maureen@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3697535987', '447 Murazik Dale\nLakinport, MA 97346', 'user', 'LbaTZULfDE', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(26, 'Leonora Walsh II', 'llewellyn24@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3588168056', '8278 Quitzon Tunnel\nLangoshshire, CA 06846', 'user', 'AI04Q8v6hR', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(27, 'Addie Heaney', 'izabella09@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3101894305', '24174 Fisher Wall\nNew Lauretta, NC 88045', 'admin', '1SzVHSZQok', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(28, 'Mr. Weldon Connelly', 'summer.corwin@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3095254491', '61007 Larissa Run\nPort Anneborough, VA 41626', 'user', 'StlKccCyyt', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(29, 'Deja Ebert', 'rjacobson@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3538623577', '45917 Buckridge Summit\nOdaport, NY 74628-0609', 'user', 'cg1l938xpb', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(30, 'Mr. Jack Ruecker', 'aiden.conroy@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3703472207', '43311 Howell Trail\nMohamedstad, CO 83186', 'user', 'P9dRjOyBNN', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(31, 'Lera Eichmann', 'karianne37@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3000905988', '3807 Watsica Rapids Suite 907\nErinborough, WA 04887-5927', 'user', 'g1UWs7rmta', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(32, 'Jayda Cronin DVM', 'ruthie.rowe@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3150779997', '28513 Roob Inlet\nDachbury, KS 20821', 'admin', '1kuL1neNRb', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(33, 'Breana Schmeler', 'ahalvorson@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3558700567', '6541 Boyer Vista Apt. 213\nEast Susannaborough, AZ 67452-9827', 'admin', 'P1fYzZT8G6', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(34, 'Maggie Gottlieb', 'bkemmer@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3775990922', '29387 Christiansen Tunnel\nPort Madilynchester, OK 07482', 'admin', '4H0MQlZpve', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(35, 'Joyce Daniel', 'omayert@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3518685656', '3109 Daphnee Rapid\nRodrigomouth, AZ 14728-3407', 'admin', 'QeDNGL5qzw', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(36, 'Chesley Champlin', 'robb.weissnat@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3404238261', '78402 Greyson Vista\nPort Icie, ID 14577', 'admin', '2MerCXv8et', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(37, 'Althea Larkin', 'gusikowski.alycia@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3010828331', '3594 Sipes Throughway Apt. 974\nEast Charlotteland, WV 94713', 'user', 'Hxb3eLQZU9', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(38, 'Sylvester Schmeler', 'orn.rachel@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3043727009', '3553 Schoen Track Apt. 369\nTorphyview, DE 87036', 'user', 'L70jet1ajT', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(39, 'Lois Carroll III', 'treutel.leonard@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3291105779', '40188 Beverly Walks\nMikelberg, MD 23217', 'user', 'ntX7SQoWfQ', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(40, 'Sebastian Gerlach', 'dsenger@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3902427659', '8574 Joseph Plaza\nLake Kayleigh, NH 48818', 'user', 'nym7w1bBFO', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(41, 'Layne Lowe', 'mpurdy@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3335326751', '8522 Bechtelar Glens Apt. 589\nBergstromfort, KY 24402-7849', 'user', 'wXEtvsoZu9', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(42, 'Lexie Koss', 'haley.schowalter@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3129999768', '942 Buckridge Square\nNew Chanellefurt, NE 03893-2656', 'user', 'JedHMyC4J1', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(43, 'Prof. Furman Reichert', 'blanda.elias@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3365215848', '4036 Ivory Squares Suite 792\nBridgettechester, NJ 85006-3848', 'user', 'FtiC9o2J4M', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(44, 'Fanny Pfeffer', 'brennon.reichert@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3163692101', '5242 Barton Creek Apt. 728\nNorth Cristopherside, PA 47689-9917', 'user', 'dpfMNKQOQC', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(45, 'Marley Schroeder II', 'deshaun53@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3851257607', '27697 Connie Plains Apt. 726\nWolfland, NY 97732', 'admin', 'croivIehJD', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(46, 'Ms. Fay Walker', 'casper.aliza@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3907823698', '54669 Idell Neck\nSouth Humberto, WA 65759-4354', 'admin', 't8tD8v0BSa', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(47, 'Ron Considine DVM', 'lafayette.will@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3482531982', '4188 Dina Radial\nNathanielville, MI 61976-0584', 'user', '6UnWs1Jc7W', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(48, 'Bailee Keeling', 'qkautzer@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3091334437', '99451 Wiza Overpass Suite 801\nPort Nels, AK 77805', 'admin', 'QnY5MLF7Do', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(49, 'Heidi Strosin', 'ethiel@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3631933921', '362 Schmitt Island Apt. 593\nSouth Laila, AZ 46757', 'user', 'HJlBqcz3oM', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(50, 'Pablo Bergstrom', 'karlee.brown@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3822069446', '6678 Joelle Tunnel Suite 268\nLake Liaborough, WV 51042', 'user', 'laWSCpDqRn', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(51, 'Keith Flatley', 'veum.savannah@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3399771030', '950 Crona Fort\nNew Dwightshire, MS 55109-1840', 'admin', 'iGe3cac6LA', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(52, 'Mr. Jacinto Beatty', 'huel.patricia@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3362958803', '13843 Gottlieb Shore\nKarenton, LA 43536', 'admin', '2B5UmCuhc5', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(53, 'Ms. Dorris Stracke', 'kklocko@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3392213842', '573 Alicia Turnpike\nTayamouth, MN 23096-0366', 'user', 'dwCy5Sughm', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(54, 'Addie Wyman', 'pfeffer.friedrich@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3405885910', '8342 Greyson Corners Apt. 037\nNellafurt, NM 60969-6184', 'user', 'OFxv9zt1dX', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(55, 'Gabrielle Nader', 'jeromy.harvey@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3707880531', '457 Shemar Fall Apt. 212\nEast Frankie, ID 44451-6603', 'user', 'S3tsdxRXal', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(56, 'Mr. Vicente Zboncak', 'rkuhlman@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3685411607', '4623 Moen Village Suite 397\nSouth Lavern, KY 98998', 'user', 'fS16uLIzHV', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(57, 'Samara Larkin', 'ludie.murazik@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3857781660', '466 June Centers Suite 307\nNorth Alba, MS 93066', 'user', 'ZWc52TwYnv', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(58, 'Janae Mitchell MD', 'funk.selina@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3635794255', '570 Bogisich Burg Apt. 378\nNew Catharine, AZ 27183-7211', 'user', 'VAnMFDHpsD', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(59, 'Ewell Bruen', 'greenfelder.rocio@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3048583252', '71258 Lavern Burgs\nToyfort, MA 49027', 'user', 'jE3mYTibdH', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(60, 'Dagmar Huels', 'jerome50@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3439962013', '944 Claudia Parkways Suite 030\nEast Melyssa, IN 81394', 'user', 'K2wmdepie7', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(61, 'Nikki Hackett', 'ymann@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3890271815', '127 Jaquelin Causeway Suite 058\nWilberfort, TN 88734-6039', 'user', 'ExirWDVaKf', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(62, 'Eveline Herzog', 'miracle92@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3621103812', '1204 Mohr Forks Suite 393\nLake Evalyn, IA 41297-4411', 'admin', 'jaz1vetG72', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(63, 'Evan Mayer', 'fsauer@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3468671368', '658 Kuhlman Shoal\nPort Clementinashire, HI 41250', 'user', 'KWrVZxAJWB', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(64, 'Mrs. Elvera Bergstrom', 'marisol.pfeffer@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3400284012', '76513 Kuphal Trail\nBartellville, UT 53231-0462', 'user', 'ZF3TXeMEV3', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(65, 'Travis Borer', 'xaltenwerth@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3544737522', '576 Jamar Freeway\nWest Raefort, TN 23348', 'user', 'F7TPH4SkqK', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(66, 'Dr. Joshua Rohan', 'kuvalis.allie@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3815185295', '78839 Amiya Prairie\nPrudencemouth, OK 52517-8574', 'user', 'p3iqgeMxHh', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(67, 'Misty Erdman', 'javier93@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3481972199', '66037 Beahan Canyon Apt. 050\nSelinahaven, UT 38764-9086', 'user', '3an2zhNcnF', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(68, 'Jesse Bergnaum', 'kbednar@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3477874671', '1097 Runolfsson Roads Apt. 414\nPurdybury, VT 47802-0968', 'user', 'N3XuZHQ7XZ', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(69, 'Jamal Orn', 'bessie.keebler@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3819113801', '576 Cyrus Flat Suite 436\nSouth Jensen, DC 65245', 'user', '8kFTUf8KHJ', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(70, 'Prof. Deron Armstrong', 'eohara@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3271073280', '444 Jarod Centers\nBrookechester, CT 12273', 'user', 'f874E811Zj', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(71, 'Miss Elisabeth Murray', 'nicolas.alayna@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3813993543', '619 Hill Circles\nFraneckistad, IN 80824', 'user', 'Str6QIRYby', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(72, 'Mr. Nicola Hayes DVM', 'ila.schoen@example.net', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3524075075', '212 Milo Road\nBulahmouth, IL 96523-0872', 'admin', 'FuD9i0fojG', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(73, 'Ms. Lila Herman Jr.', 'xprice@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3081542957', '3077 Heidenreich Radial\nNorth Elza, AR 01476', 'user', 'E9FTRzLTrO', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(74, 'Ellis Daniel Jr.', 'kylee77@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3785794427', '12308 Eduardo Junctions\nEast Francesca, WV 96157-9027', 'user', 'QVCsTcLf3r', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(75, 'Dr. Clementine Christiansen Jr.', 'umorar@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3970313308', '297 Leuschke Rest\nNinatown, KS 88038-8256', 'user', 'LOg0V64bDD', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(76, 'Verlie Glover', 'nicolette.schamberger@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3947896653', '826 Oberbrunner Key Apt. 813\nCarterchester, AL 93893-3129', 'admin', 'DKj8CAqnkN', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(77, 'Dr. Genevieve Paucek', 'murphy.rashad@example.com', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3717895958', '8761 Schiller Union Suite 345\nSouth Cooperfort, IA 49473', 'user', '6KCEZ0tGfp', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(78, 'Jedidiah Stroman', 'ubaldo.swaniawski@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3413061653', '88901 White Mountains Suite 706\nNolanberg, RI 44923-2719', 'user', 'FsFTjToDss', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(79, 'Emmie Heaney', 'hmorissette@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3884081915', '4244 Annamarie Mall\nPaucektown, MO 26830', 'user', 'ltxe5LlBlQ', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(80, 'Chanelle Schowalter', 'dorthy94@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3614952115', '560 Robbie Ville Suite 298\nPort Lenore, WY 65574', 'user', 'mK8582HrqU', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(81, 'Montana Hoppe Sr.', 'breanna.nolan@example.org', '2026-09-13 02:14:50', '$2y$12$OFafaXNR8DCECaIQff37nOB6EGFPcsY98uJSG.wYll188FaxB7zdy', '3029239826', '765 Maya Spurs Apt. 634\nMarinaland, KY 34411', 'admin', 'dIvAZnwoFM', '2026-09-13 02:14:50', '2026-09-13 02:14:50'),
(82, 'Carlos', 'carlosrg0228@gmail.com', NULL, '$2y$12$j.Op7nwhNB9G0XqZmlMHZemX1riMHm.ve2IkYcLX1Js.xoSZ3tcoi', '3150624444', 'Calle 1 #34', 'user', NULL, '2026-09-13 03:09:43', '2026-09-13 03:09:43');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `instrument_items`
--
ALTER TABLE `instrument_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

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
