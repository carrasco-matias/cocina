-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2024 a las 23:13:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cocina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_06_212611_create_personal_access_tokens_table', 1),
(5, '2024_11_07_025847_create_categorias_table', 1),
(6, '2024_11_07_025855_create_comentarios_table', 1),
(7, '2024_11_07_025904_create_ingredientes_table', 1),
(8, '2024_11_07_025911_create_recetas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'dev-access', '7db578233693fadf6fbe487fbd70f41a79a074e848803188c528dc30817a06bd', '[\"*\"]', NULL, NULL, '2024-11-29 02:50:43', '2024-11-29 02:50:43'),
(2, 'App\\Models\\User', 1, 'dev-access', 'ae1db6b653cc3f89d5963ea54a21530474ca1b8e45f6e6136ca9176a45845384', '[\"*\"]', NULL, NULL, '2024-11-29 02:51:07', '2024-11-29 02:51:07'),
(3, 'App\\Models\\User', 1, 'dev-access', 'ca985b448bd276b4430b1733d7ce2b7ba0d38925e4d156089af48be04551071b', '[\"*\"]', NULL, NULL, '2024-11-29 16:20:25', '2024-11-29 16:20:25'),
(4, 'App\\Models\\User', 1, 'dev-access', '1271d5ccd1b061d039c4a0e92c1f3f775d5f40cfb6fb97f05b57bc2f643f2bb1', '[\"*\"]', NULL, NULL, '2024-11-29 16:37:08', '2024-11-29 16:37:08'),
(5, 'App\\Models\\User', 1, 'dev-access', 'f42ac603d4096b991f839413bd4a5f4f6ba20b97a468304156de130f5f8364eb', '[\"*\"]', NULL, NULL, '2024-11-29 16:37:26', '2024-11-29 16:37:26'),
(6, 'App\\Models\\User', 1, 'dev-access', '1085ad49f489189c8892a5823cd1126e06a2bd5440f422e5634f3c6c18553241', '[\"*\"]', NULL, NULL, '2024-11-30 03:49:00', '2024-11-30 03:49:00'),
(7, 'App\\Models\\User', 1, 'dev-access', 'ef0bde666aad3b22c6fd7d11aa9df4eb69a5d4538e8111453f38d437e68ca9d9', '[\"*\"]', NULL, NULL, '2024-11-30 03:58:10', '2024-11-30 03:58:10'),
(8, 'App\\Models\\User', 1, 'dev-access', '9d1c8dbd1c5a76e3c7b1be16f8a64c2c2ec35e7bcd21066b5e130ce029f47be2', '[\"*\"]', NULL, NULL, '2024-11-30 03:58:25', '2024-11-30 03:58:25'),
(9, 'App\\Models\\User', 1, 'dev-access', 'caa12ddb4ecd63f0abfc70acdab933cb30b703c2175047edd6edf13e977e6f93', '[\"*\"]', NULL, NULL, '2024-11-30 04:00:46', '2024-11-30 04:00:46'),
(10, 'App\\Models\\User', 1, 'dev-access', '6372ae316f1c77326acd35d4ffc5d1c6361a2ed332e74e61a904753456314730', '[\"*\"]', NULL, NULL, '2024-11-30 04:00:51', '2024-11-30 04:00:51'),
(11, 'App\\Models\\User', 1, 'dev-access', '4d26d2d5544acf208317b7340aa373bc52d0d0114963f0bf2a4425bdf0e6ae47', '[\"*\"]', NULL, NULL, '2024-11-30 04:01:23', '2024-11-30 04:01:23'),
(12, 'App\\Models\\User', 1, 'dev-access', '2a84a96a1116ea4e586630ea2be6b1d4108601c4ad183448096460106b297f22', '[\"*\"]', NULL, NULL, '2024-11-30 04:03:11', '2024-11-30 04:03:11'),
(13, 'App\\Models\\User', 1, 'dev-access', '04549d10ba5e9969e042e44e79f033e36cf9587fac7e76cf99c70ac20bff9a92', '[\"*\"]', NULL, NULL, '2024-11-30 04:03:56', '2024-11-30 04:03:56'),
(14, 'App\\Models\\User', 1, 'dev-access', '8bfae8e7e1058316d8610d43890acaa544ff2b8c7918e50e24be6df4ec3afd49', '[\"*\"]', NULL, NULL, '2024-11-30 04:03:58', '2024-11-30 04:03:58'),
(15, 'App\\Models\\User', 1, 'dev-access', '49de8177367257b38f55fb143e936857da70b9745cb635e1b9c6c8d153652b60', '[\"*\"]', NULL, NULL, '2024-11-30 04:03:59', '2024-11-30 04:03:59'),
(16, 'App\\Models\\User', 1, 'dev-access', '1f7db4c9d67a9eada4fc9aa0a71e08c41ed6dedca33d9099b380d4c9527aff41', '[\"*\"]', NULL, NULL, '2024-11-30 04:04:00', '2024-11-30 04:04:00'),
(17, 'App\\Models\\User', 1, 'dev-access', '1150254ec057b134f178f6557c24f1f8041a88dd09b0c2fff95f379b18c17c2c', '[\"*\"]', NULL, NULL, '2024-11-30 04:05:23', '2024-11-30 04:05:23'),
(18, 'App\\Models\\User', 1, 'dev-access', 'ea8b553190a7f46eda452132a176186037f14a3a5e804294e28977b1f6920317', '[\"*\"]', NULL, NULL, '2024-11-30 04:05:40', '2024-11-30 04:05:40'),
(19, 'App\\Models\\User', 1, 'dev-access', '3c8dcd2cff5a2a8a00c92934f60db94dcab30e63a4f51cb14c85b4f04ba0b39a', '[\"*\"]', NULL, NULL, '2024-11-30 04:06:10', '2024-11-30 04:06:10'),
(20, 'App\\Models\\User', 1, 'dev-access', '78a734498ebc453060f87d455f017fafa2f63e4edc8065d67a9ea363b447c481', '[\"*\"]', NULL, NULL, '2024-11-30 04:06:26', '2024-11-30 04:06:26'),
(21, 'App\\Models\\User', 1, 'dev-access', 'bfadf1e6ebc9ab430ebb1893797b91edae3c46deb8c3f286796676c02990eb78', '[\"*\"]', NULL, NULL, '2024-11-30 04:10:17', '2024-11-30 04:10:17'),
(22, 'App\\Models\\User', 1, 'dev-access', 'cecb2829d7d1655466d0e4f681980701a012bf997a4ee6b185b7c9e582ba88c0', '[\"*\"]', NULL, NULL, '2024-11-30 04:11:31', '2024-11-30 04:11:31'),
(23, 'App\\Models\\User', 1, 'dev-access', '600168157f6cb092d584966d61a57a659a5deb290432bac399dbb307e082fff7', '[\"*\"]', NULL, NULL, '2024-11-30 04:13:51', '2024-11-30 04:13:51'),
(24, 'App\\Models\\User', 1, 'dev-access', '99263b5250fd49f997187ce7fb5fc9654bc9dec47bc8fa25c72363b7d3540592', '[\"*\"]', NULL, NULL, '2024-11-30 04:14:07', '2024-11-30 04:14:07'),
(25, 'App\\Models\\User', 1, 'dev-access', '59509ef73bde744f7e6b41e7c8e0dc4fc95d57505ff85731ed46a58420f3d6f0', '[\"*\"]', NULL, NULL, '2024-11-30 04:18:20', '2024-11-30 04:18:20'),
(26, 'App\\Models\\User', 1, 'dev-access', 'b1061a26e42ccc35012f09cc0badd594e5c90a094ed9fd58c36fba085494c347', '[\"*\"]', NULL, NULL, '2024-11-30 04:18:33', '2024-11-30 04:18:33'),
(27, 'App\\Models\\User', 1, 'dev-access', 'ad936fc72c1c40c636bcd6131d79f1bdef7030512c717520a0188a343702c0c6', '[\"*\"]', NULL, NULL, '2024-11-30 04:19:08', '2024-11-30 04:19:08'),
(28, 'App\\Models\\User', 1, 'dev-access', '584da198b50bcb609133b371e74649a4ed8afedab90162f26cb4ddef9635eae0', '[\"*\"]', NULL, NULL, '2024-11-30 04:20:22', '2024-11-30 04:20:22'),
(29, 'App\\Models\\User', 1, 'dev-access', '14e4db2b1a46079b3a36ce14340b92fa7968fa9db5f20bda12b712d41a087b1c', '[\"*\"]', NULL, NULL, '2024-11-30 04:21:58', '2024-11-30 04:21:58'),
(30, 'App\\Models\\User', 1, 'dev-access', 'f414aebdfd721c016f349cc5b15e3ccf65c91db9a75f97d4b2d1ebbfd9d54974', '[\"*\"]', NULL, NULL, '2024-11-30 04:23:15', '2024-11-30 04:23:15'),
(31, 'App\\Models\\User', 1, 'dev-access', 'd4c9e920c1af35e2697df9cb2189211c04002aae4f9bc1fd44faef7485ed6a90', '[\"*\"]', NULL, NULL, '2024-11-30 04:23:29', '2024-11-30 04:23:29'),
(32, 'App\\Models\\User', 1, 'dev-access', '0068f743ef1cfa1c6c046562ab4a8f105cc0d122079eeb21eda7e76fe09570b8', '[\"*\"]', NULL, NULL, '2024-11-30 04:26:25', '2024-11-30 04:26:25'),
(33, 'App\\Models\\User', 1, 'dev-access', 'b422b3f8f67cfb2f0c41c2ed5b48b48db763d9b6b78cee9139ac155dc95ca061', '[\"*\"]', NULL, NULL, '2024-11-30 04:27:19', '2024-11-30 04:27:19'),
(34, 'App\\Models\\User', 1, 'dev-access', 'da1976ae582fcc63fb0c709573b090467224ce4b6db4dc2039ed9fe888b03f35', '[\"*\"]', NULL, NULL, '2024-11-30 04:27:22', '2024-11-30 04:27:22'),
(35, 'App\\Models\\User', 1, 'dev-access', 'cd936a1c0646e8b75b151fb6cae672c4f3a5acb890a155a1b8496abf62a456cd', '[\"*\"]', NULL, NULL, '2024-11-30 04:28:27', '2024-11-30 04:28:27'),
(36, 'App\\Models\\User', 1, 'dev-access', '72474f2a5ce4e6cbd50aedbfbca2bc2ddf7b21671ea8063d73886b2083d83610', '[\"*\"]', NULL, NULL, '2024-11-30 04:28:42', '2024-11-30 04:28:42'),
(37, 'App\\Models\\User', 1, 'dev-access', '8d75a20cd18c7bf4cf4c9cf2cdbfa7587101c1394370a397217d4d9c8a89c360', '[\"*\"]', NULL, NULL, '2024-11-30 04:28:44', '2024-11-30 04:28:44'),
(38, 'App\\Models\\User', 1, 'dev-access', '3c3b63c8ed4d4b48db85acd0bb3a15a80c8ffef41eb4af7e85e633233302ab77', '[\"*\"]', NULL, NULL, '2024-11-30 04:29:16', '2024-11-30 04:29:16'),
(39, 'App\\Models\\User', 1, 'dev-access', '81003e5e7ef5cc4667e1f5da6b33952d6bb8fb28ed895003283b7099fc38ff56', '[\"*\"]', NULL, NULL, '2024-11-30 04:29:53', '2024-11-30 04:29:53'),
(40, 'App\\Models\\User', 1, 'dev-access', 'f060878308b8a3cacbe0d4ed155725e94ea8595a35bcd9b86a8bcecee01ba1db', '[\"*\"]', NULL, NULL, '2024-11-30 04:31:10', '2024-11-30 04:31:10'),
(41, 'App\\Models\\User', 1, 'dev-access', 'a2f4010222cf974bb74a9c54cf9c2eebecd503480c843a32c1c92e0eca6669bc', '[\"*\"]', NULL, NULL, '2024-11-30 04:31:51', '2024-11-30 04:31:51'),
(42, 'App\\Models\\User', 1, 'dev-access', '1e06be033578b7e6858b3c73e29c0fcccfd64124c41b0e9898428c0052166d74', '[\"*\"]', NULL, NULL, '2024-11-30 04:32:04', '2024-11-30 04:32:04'),
(43, 'App\\Models\\User', 1, 'dev-access', '2bd98cdc6e5b680bc2e3b1b6d97821207e2ba76f7ef72f1f3714fc6720c7041a', '[\"*\"]', NULL, NULL, '2024-11-30 04:32:10', '2024-11-30 04:32:10'),
(44, 'App\\Models\\User', 1, 'dev-access', 'a17b311c34127a931eb1333919bc36f8c92decd269781c250b4def34fa7b26c2', '[\"*\"]', NULL, NULL, '2024-11-30 04:32:22', '2024-11-30 04:32:22'),
(45, 'App\\Models\\User', 1, 'dev-access', 'dd1f1baec0e560415cede8de17570f3c610a31e9bbb780b6cb3a34c3ec17506d', '[\"*\"]', NULL, NULL, '2024-11-30 04:32:34', '2024-11-30 04:32:34'),
(46, 'App\\Models\\User', 1, 'dev-access', '398383de3254a1c4f19e3e40f247fa72a9cdf44c47f4b594a74989b351433105', '[\"*\"]', NULL, NULL, '2024-11-30 04:32:58', '2024-11-30 04:32:58'),
(47, 'App\\Models\\User', 1, 'dev-access', '3111cdda40b234fce548f87eb0637795aca4178018cade8e0d758c9097d21570', '[\"*\"]', NULL, NULL, '2024-11-30 04:33:00', '2024-11-30 04:33:00'),
(48, 'App\\Models\\User', 1, 'dev-access', 'f28d8b75d63ee5663884e256fc8aa1ab38250037b375be1477961f5a9dbbef0b', '[\"*\"]', NULL, NULL, '2024-11-30 04:33:09', '2024-11-30 04:33:09'),
(49, 'App\\Models\\User', 1, 'dev-access', '43974019328e0f64827d1c462f959dbf06e8f49d848eb847c0efc8a11490249b', '[\"*\"]', NULL, NULL, '2024-11-30 04:33:10', '2024-11-30 04:33:10'),
(50, 'App\\Models\\User', 1, 'dev-access', 'e41e8255d41f5f0666fe73eb9d10dae7b5fd4d24ddae2a96f664120a77a57915', '[\"*\"]', NULL, NULL, '2024-11-30 04:33:21', '2024-11-30 04:33:21'),
(51, 'App\\Models\\User', 1, 'dev-access', 'e139740bce5d39a6eaaeece0ba12286a3f5e6e9dc7ba3c8300f149add7b9df1c', '[\"*\"]', NULL, NULL, '2024-11-30 04:33:26', '2024-11-30 04:33:26'),
(52, 'App\\Models\\User', 1, 'dev-access', '8c4a493337ce522aadc154e3bb725dd270bafc5ff77dd2d242dd772d6dd151cf', '[\"*\"]', NULL, NULL, '2024-11-30 04:33:35', '2024-11-30 04:33:35'),
(53, 'App\\Models\\User', 1, 'dev-access', '9efad9102ddeb3121555fcac963481e2c745830efb533679754a01bef8df9070', '[\"*\"]', NULL, NULL, '2024-11-30 04:34:51', '2024-11-30 04:34:51'),
(54, 'App\\Models\\User', 1, 'dev-access', 'c68d4a6e237e0d5aaf3ef3f1e73bd113ac4721310acc739253cd6d4791f31a7d', '[\"*\"]', NULL, NULL, '2024-11-30 04:35:05', '2024-11-30 04:35:05'),
(55, 'App\\Models\\User', 1, 'dev-access', 'd6260aa0095161b6e98b924385dd84bbb0314ae2487ed102c4a14a84ed325303', '[\"*\"]', NULL, NULL, '2024-11-30 04:36:12', '2024-11-30 04:36:12'),
(56, 'App\\Models\\User', 1, 'dev-access', '861086fa6bcb10398f7510566970014558cda057b1cb096daeba5e826a6e99f9', '[\"*\"]', NULL, NULL, '2024-11-30 04:36:27', '2024-11-30 04:36:27'),
(57, 'App\\Models\\User', 1, 'dev-access', '4f80bbcd83817b7ebea38745421187f6c63124e0b448b89feb105bd22863863f', '[\"*\"]', NULL, NULL, '2024-11-30 04:36:38', '2024-11-30 04:36:38'),
(58, 'App\\Models\\User', 1, 'dev-access', '30868ed8f9eb9e8bf324e477c4449068b2d1f4c17a4e3fbcf2de59e21e5054f9', '[\"*\"]', NULL, NULL, '2024-11-30 04:36:55', '2024-11-30 04:36:55'),
(59, 'App\\Models\\User', 1, 'dev-access', 'dd76a8d649a3856b8561edef62c4e56e9f1f508f8150d8e314f8afbeb523262b', '[\"*\"]', NULL, NULL, '2024-11-30 20:13:04', '2024-11-30 20:13:04'),
(60, 'App\\Models\\User', 1, 'dev-access', '3df27fd8342743a7722cd502b886c404cea6cce7184611383abd886bebf284e3', '[\"*\"]', NULL, NULL, '2024-12-01 01:17:29', '2024-12-01 01:17:29'),
(61, 'App\\Models\\User', 1, 'dev-access', 'aa2f21d77f4a82a265b6afd74cb8db8148bb58fce0cfd1bc358541c3c2de888d', '[\"*\"]', NULL, NULL, '2024-12-01 01:17:30', '2024-12-01 01:17:30'),
(62, 'App\\Models\\User', 1, 'dev-access', '172f91cd7943d37936bda4a2684f0f4ea75b96702ad057fc61c7da1f05fb86a2', '[\"*\"]', NULL, NULL, '2024-12-01 01:18:05', '2024-12-01 01:18:05'),
(63, 'App\\Models\\User', 1, 'dev-access', '6edf342c57d40b2102bf6b89aa303beb3d222eb4407bc72892e50736a4e12968', '[\"*\"]', NULL, NULL, '2024-12-01 01:21:01', '2024-12-01 01:21:01'),
(64, 'App\\Models\\User', 1, 'dev-access', '2dd7a122db95ae667354d0a159b720301cbbb722192ae0aad1ca176bf568545e', '[\"*\"]', NULL, NULL, '2024-12-01 01:22:33', '2024-12-01 01:22:33'),
(65, 'App\\Models\\User', 1, 'dev-access', 'c85458f2196b6fab58eea0fc151dddccc0dd74424b97ca0be58722d8e5ca1032', '[\"*\"]', NULL, NULL, '2024-12-01 01:24:12', '2024-12-01 01:24:12'),
(66, 'App\\Models\\User', 1, 'dev-access', '96a4d1f684a78c434edc05d15e61bf266c4e1c7fb8a74045dabeade23be070a9', '[\"*\"]', NULL, NULL, '2024-12-01 01:26:29', '2024-12-01 01:26:29'),
(67, 'App\\Models\\User', 1, 'dev-access', 'c9829b46810a8f6167e40209735df51d9866dd6e0e9d909378272e818ab37bba', '[\"*\"]', NULL, NULL, '2024-12-01 01:27:06', '2024-12-01 01:27:06'),
(68, 'App\\Models\\User', 1, 'dev-access', 'ca2e99900102a53570cbea5ce9dcac9e3393be6dc25b0989d1b4a09dbf75a6a2', '[\"*\"]', NULL, NULL, '2024-12-01 01:27:19', '2024-12-01 01:27:19'),
(69, 'App\\Models\\User', 1, 'dev-access', '310c0668a1402a4163db2c50f2cfa3d30fc0510af43bf7d54ac074fd6d940c30', '[\"*\"]', NULL, NULL, '2024-12-01 01:27:27', '2024-12-01 01:27:27'),
(70, 'App\\Models\\User', 1, 'dev-access', 'd8fb9bf945590de30ef83a7ceee87ca2294e35a844d9bd52481d1061ae0d037c', '[\"*\"]', NULL, NULL, '2024-12-01 01:27:42', '2024-12-01 01:27:42'),
(71, 'App\\Models\\User', 1, 'dev-access', '4988fe0f75bae1ed6be79e11c3626ae202f86cd40e16e29b5ac70e64519fc587', '[\"*\"]', NULL, NULL, '2024-12-01 01:27:52', '2024-12-01 01:27:52'),
(72, 'App\\Models\\User', 1, 'dev-access', '1014b2a2e85baeffe82186411b3be978b6a7c875a6412395390c2a73c54c663e', '[\"*\"]', NULL, NULL, '2024-12-01 01:27:53', '2024-12-01 01:27:53'),
(73, 'App\\Models\\User', 1, 'dev-access', 'e412c11608e591899a15d9fa8ed75becac0aa4e7876cff10b78172ab34d45f46', '[\"*\"]', NULL, NULL, '2024-12-01 01:28:48', '2024-12-01 01:28:48'),
(74, 'App\\Models\\User', 1, 'dev-access', '6bccba477ed868c10724dff2ba2c876d969abb085db973e0fe84b04b089437a3', '[\"*\"]', NULL, NULL, '2024-12-01 01:28:58', '2024-12-01 01:28:58'),
(75, 'App\\Models\\User', 1, 'dev-access', 'd8cb1d4fe889800e4822e560a79257215959ef85a5d1921153e2927c000f42a4', '[\"*\"]', NULL, NULL, '2024-12-01 01:29:18', '2024-12-01 01:29:18'),
(76, 'App\\Models\\User', 1, 'dev-access', '193b48d8223b254d04a36771c00bc4cab922a3a4419973ce1da2318143c93c4c', '[\"*\"]', NULL, NULL, '2024-12-01 01:34:17', '2024-12-01 01:34:17'),
(77, 'App\\Models\\User', 1, 'dev-access', '259545ed8154bbd0ffc84903146585a3f499e896153ffb74130b3cc28fafac83', '[\"*\"]', NULL, NULL, '2024-12-01 01:34:26', '2024-12-01 01:34:26'),
(78, 'App\\Models\\User', 1, 'dev-access', 'e250f12617698b3bb6407572f6c18776f9935b8500ff398760359ef12b4eaeed', '[\"*\"]', NULL, NULL, '2024-12-01 01:35:08', '2024-12-01 01:35:08'),
(79, 'App\\Models\\User', 1, 'dev-access', '8314443a36ccb0d0560182c1ee033aa2a381f0496e1ff30862c41a4bac1fd636', '[\"*\"]', NULL, NULL, '2024-12-01 01:35:20', '2024-12-01 01:35:20'),
(80, 'App\\Models\\User', 1, 'dev-access', '0e81fde5429b67c6e2dd63fc0ed96a57823525b1d5e4a8427d8bd9aca912d379', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:06', '2024-12-01 01:37:06'),
(81, 'App\\Models\\User', 1, 'dev-access', '3eaa71ffa9455eb5d3ee2a1c50744b227a3b8f96573f3b2598e617ec99c6645e', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:23', '2024-12-01 01:37:23'),
(82, 'App\\Models\\User', 1, 'dev-access', '93225b9c6682d6787242ff1c92d6f8dc5cfd8ca8b6c5a1ccb23fc85441d2bf18', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:35', '2024-12-01 01:37:35'),
(83, 'App\\Models\\User', 1, 'dev-access', '4789bfc130b72c76548206a025892fc3cc260ffbfb0c3053ec40ce95bacc48aa', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:37', '2024-12-01 01:37:37'),
(84, 'App\\Models\\User', 1, 'dev-access', '0ed179dc30701a72e7c925a919be279f1f54bc3ea6ecd554f946021d6d698115', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:39', '2024-12-01 01:37:39'),
(85, 'App\\Models\\User', 1, 'dev-access', '73480b4ede295166ba7d2b2b8a37c6376a4216989e894cdfe781b1de9b457295', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:50', '2024-12-01 01:37:50'),
(86, 'App\\Models\\User', 1, 'dev-access', '72635a322fc2f4f3eeb0d37bb0fce3b558615d5cbe2b797062212471283b5b88', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:56', '2024-12-01 01:37:56'),
(87, 'App\\Models\\User', 1, 'dev-access', 'f5bd7539c40efe72d9e2dad038576f65500f0e3d7a95f9674fea80ef113d7429', '[\"*\"]', NULL, NULL, '2024-12-01 01:37:57', '2024-12-01 01:37:57'),
(88, 'App\\Models\\User', 1, 'dev-access', 'ba4e722dac30e38713c650f8a3bb91716ddee64986a1b283bd38351f7d9caba9', '[\"*\"]', NULL, NULL, '2024-12-01 01:38:22', '2024-12-01 01:38:22'),
(89, 'App\\Models\\User', 1, 'dev-access', '9fe837ade1fabb7929256f815eeafdd3adefea12319f06d0d8d32930dc580ad1', '[\"*\"]', NULL, NULL, '2024-12-01 01:38:31', '2024-12-01 01:38:31'),
(90, 'App\\Models\\User', 1, 'dev-access', '24819eeb6679bfb12dab0639aa5d67d117af22ca1bd766ceb126a47a2b784234', '[\"*\"]', NULL, NULL, '2024-12-01 01:39:15', '2024-12-01 01:39:15'),
(91, 'App\\Models\\User', 1, 'dev-access', '11db7da9fc3b1215ba68d611bd5370d2b730ca1e3528f28ba640976f34dd6f93', '[\"*\"]', NULL, NULL, '2024-12-01 01:39:37', '2024-12-01 01:39:37'),
(92, 'App\\Models\\User', 1, 'dev-access', 'f02a373b269c7992a4609364f8bed685178f00b9ec825d20a60fb3cc16c803ba', '[\"*\"]', NULL, NULL, '2024-12-01 01:40:02', '2024-12-01 01:40:02'),
(93, 'App\\Models\\User', 1, 'dev-access', '506d849dfad2de85c4efd32313c133ea8f9d87ecfb988431b00c6d224674d5c0', '[\"*\"]', NULL, NULL, '2024-12-01 01:40:35', '2024-12-01 01:40:35'),
(94, 'App\\Models\\User', 1, 'dev-access', 'c136cfaa3d53af69ea0c6348e0bc2b5ba719acdd148ca9b4c1d3df25943895a5', '[\"*\"]', NULL, NULL, '2024-12-01 01:41:11', '2024-12-01 01:41:11'),
(95, 'App\\Models\\User', 1, 'dev-access', '0788e4408c4a3e34b6dbd51f40cf1f5308d5c1fe93ab784c13e1351bb2b6a8ab', '[\"*\"]', NULL, NULL, '2024-12-01 01:41:26', '2024-12-01 01:41:26'),
(96, 'App\\Models\\User', 1, 'dev-access', 'a4b08238a41866f57095f7e6cbaf027d363c9633e4f39179654caa26a7dbca10', '[\"*\"]', NULL, NULL, '2024-12-01 01:41:47', '2024-12-01 01:41:47'),
(97, 'App\\Models\\User', 1, 'dev-access', '8d2821e2bb08c28f983b4f84db93d7a950abab8882970846bea45a547732b7d1', '[\"*\"]', NULL, NULL, '2024-12-01 01:41:52', '2024-12-01 01:41:52'),
(98, 'App\\Models\\User', 1, 'dev-access', '76bd702247697e6182e9e8dbea2681fb7f9c034ad4d5e473ac2bafd0e6a0a1f8', '[\"*\"]', NULL, NULL, '2024-12-01 01:42:01', '2024-12-01 01:42:01'),
(99, 'App\\Models\\User', 1, 'dev-access', '3e8460a47557a3c756984ffb2d2a2b3a19a21e76e0b231edba2537044014c377', '[\"*\"]', NULL, NULL, '2024-12-01 01:42:20', '2024-12-01 01:42:20'),
(100, 'App\\Models\\User', 1, 'dev-access', '2fdda56354f7d3b2c13b8c12b31b6612146bd00757c6e8d03b0ba5c9e25fb6bf', '[\"*\"]', NULL, NULL, '2024-12-01 01:51:12', '2024-12-01 01:51:12'),
(101, 'App\\Models\\User', 1, 'dev-access', 'dedb43b5f137623f56a0e2f571508a303775a96c425d4fc895afdd8aa21e06d9', '[\"*\"]', NULL, NULL, '2024-12-01 01:51:14', '2024-12-01 01:51:14'),
(102, 'App\\Models\\User', 1, 'dev-access', 'c1ad49cbc5738b3ea00f7654742e4a4d88266de75f0d116370b9163891bdfb0e', '[\"*\"]', NULL, NULL, '2024-12-01 01:51:15', '2024-12-01 01:51:15'),
(103, 'App\\Models\\User', 1, 'dev-access', 'a88094d4a6641761843cb856c5ba61131746eff893ae33f9042200d795f7954a', '[\"*\"]', NULL, NULL, '2024-12-01 01:51:25', '2024-12-01 01:51:25'),
(104, 'App\\Models\\User', 1, 'dev-access', '058f254471f00a72b904eae7c870bb6396f71d989a1bf6880ea8e99ee6b13312', '[\"*\"]', NULL, NULL, '2024-12-01 01:51:51', '2024-12-01 01:51:51'),
(105, 'App\\Models\\User', 1, 'dev-access', '4bff17b96064796fc4e6e32d43cf006c79326d1fcb7eb854048293f3f590a3f9', '[\"*\"]', NULL, NULL, '2024-12-01 01:52:11', '2024-12-01 01:52:11'),
(106, 'App\\Models\\User', 1, 'dev-access', '8e958fc713f3e8c15c8deb15e96baea7530783b542648ba3a8b9d018b2a098e5', '[\"*\"]', NULL, NULL, '2024-12-01 01:52:27', '2024-12-01 01:52:27'),
(107, 'App\\Models\\User', 1, 'dev-access', 'bcd79eaa34c8c77489f08891969a84b555f7025b0733e4ff2f78002852ca7c41', '[\"*\"]', NULL, NULL, '2024-12-01 01:52:35', '2024-12-01 01:52:35'),
(108, 'App\\Models\\User', 1, 'dev-access', 'f45fa508fbfc905531a45e3cc60422228e7479c47e2f34bc63ef0ff16cbf8621', '[\"*\"]', NULL, NULL, '2024-12-01 01:53:10', '2024-12-01 01:53:10'),
(109, 'App\\Models\\User', 1, 'dev-access', '497fde3b8159058b585fc1333bd20df8fb5f02b07b760ac2444098ee10260c5c', '[\"*\"]', NULL, NULL, '2024-12-01 01:54:32', '2024-12-01 01:54:32'),
(110, 'App\\Models\\User', 1, 'dev-access', '6ce4a23caf26c9bf473f6a1dca6d0d608863bc256f17da7efbc74536591e8e2f', '[\"*\"]', NULL, NULL, '2024-12-01 01:54:37', '2024-12-01 01:54:37'),
(111, 'App\\Models\\User', 1, 'dev-access', 'e53d79d028813f1ef0047d319b96e41020060331951f10cb10d5e2d4d16e50cd', '[\"*\"]', NULL, NULL, '2024-12-01 01:55:06', '2024-12-01 01:55:06'),
(112, 'App\\Models\\User', 1, 'dev-access', '5634c230c8d43122fae2a24d269794d099fd356c9bebcccf6f8421042dd41a97', '[\"*\"]', NULL, NULL, '2024-12-01 01:55:24', '2024-12-01 01:55:24'),
(113, 'App\\Models\\User', 1, 'dev-access', 'd39cc3d8148e2bc6f5986f5456bfbad62d6506fb4f720a43cff8fd0f097ab3cb', '[\"*\"]', NULL, NULL, '2024-12-01 01:55:35', '2024-12-01 01:55:35'),
(114, 'App\\Models\\User', 1, 'dev-access', '1296660ee3edca6211ffd9dd33e77a83e8496a0a3a827d58add665b6713eae05', '[\"*\"]', NULL, NULL, '2024-12-01 01:55:35', '2024-12-01 01:55:35'),
(115, 'App\\Models\\User', 1, 'dev-access', '8dd9c046cb1460e782b8d5823b733c1d3deae63b10a26e6cb288e856a5412d4f', '[\"*\"]', NULL, NULL, '2024-12-01 01:55:49', '2024-12-01 01:55:49'),
(116, 'App\\Models\\User', 1, 'dev-access', '08da1d55cec66115c25a336f30c2ae92ceb86592cc0106f837e14aaa600b0d95', '[\"*\"]', NULL, NULL, '2024-12-01 01:56:30', '2024-12-01 01:56:30'),
(117, 'App\\Models\\User', 1, 'dev-access', 'd36f233ae919301f5369ea0ed0feacb4d92cec0eddfaa1cccd13e45e0a3de395', '[\"*\"]', NULL, NULL, '2024-12-01 01:57:33', '2024-12-01 01:57:33'),
(118, 'App\\Models\\User', 1, 'dev-access', 'f2ba89816368822f547facfeb46cbc347235db2e3e65be5812cea68d10b2ad43', '[\"*\"]', NULL, NULL, '2024-12-01 01:58:53', '2024-12-01 01:58:53'),
(119, 'App\\Models\\User', 1, 'dev-access', '1dde6d35be161d3db69928381718faea25f05c3feb20f19fe5af1524fa521475', '[\"*\"]', NULL, NULL, '2024-12-01 01:59:20', '2024-12-01 01:59:20'),
(120, 'App\\Models\\User', 1, 'dev-access', '14c12ed9a7fc763613a674b21ba05c7536e6efdbe580388d60df21fd75136a51', '[\"*\"]', NULL, NULL, '2024-12-01 02:01:19', '2024-12-01 02:01:19'),
(121, 'App\\Models\\User', 1, 'dev-access', '8480c25013112701d0357a9eb3e2e329f1313ee528f40d0a3495413d42452087', '[\"*\"]', NULL, NULL, '2024-12-01 02:01:58', '2024-12-01 02:01:58'),
(122, 'App\\Models\\User', 1, 'dev-access', '86417ee4fff170fc5cd712a19dc024a979fc9e925f7501eaa6865f7b3007540d', '[\"*\"]', NULL, NULL, '2024-12-01 02:02:13', '2024-12-01 02:02:13'),
(123, 'App\\Models\\User', 1, 'dev-access', 'bc15ec9d259f672f1fdc62b32dd30f9d97a0b1812ff2bff6d468e2fd21ace208', '[\"*\"]', NULL, NULL, '2024-12-01 02:02:14', '2024-12-01 02:02:14'),
(124, 'App\\Models\\User', 1, 'dev-access', 'f17bc4f023daae9685b219c518dd5d3e7761e65461604c04c4e3a201e9834117', '[\"*\"]', NULL, NULL, '2024-12-01 02:02:15', '2024-12-01 02:02:15'),
(125, 'App\\Models\\User', 1, 'dev-access', '802f42fc48c81f161537727d9a62c86b4398521f7ea236eb06ec600dcf6f6240', '[\"*\"]', NULL, NULL, '2024-12-01 02:02:28', '2024-12-01 02:02:28'),
(126, 'App\\Models\\User', 1, 'dev-access', '03fb501ef7437bb4921ac06fca7317f3da7144334a75b728a60b02b2914562f1', '[\"*\"]', NULL, NULL, '2024-12-01 02:02:28', '2024-12-01 02:02:28'),
(127, 'App\\Models\\User', 1, 'dev-access', '40bc140d3c483aefbad61fd54a4f3362d03bf0e103971ad1e717428bcaf61d70', '[\"*\"]', NULL, NULL, '2024-12-01 02:04:11', '2024-12-01 02:04:11'),
(128, 'App\\Models\\User', 1, 'dev-access', 'c4dc3b7232138a087d7901e8f0d1599e5d0bb131d82f1ffcd3762be32968aec8', '[\"*\"]', NULL, NULL, '2024-12-01 02:04:23', '2024-12-01 02:04:23'),
(129, 'App\\Models\\User', 1, 'dev-access', 'f0e8fd53c398d4291f05a094c56b44983c7a8deebaeb1b8e207489736f3bd81f', '[\"*\"]', NULL, NULL, '2024-12-01 02:05:16', '2024-12-01 02:05:16'),
(130, 'App\\Models\\User', 1, 'dev-access', 'e423440618e0b882d84eb8cdf771ca17db1e5716a2082d477dd141c8229b6bc5', '[\"*\"]', NULL, NULL, '2024-12-01 02:05:24', '2024-12-01 02:05:24'),
(131, 'App\\Models\\User', 1, 'dev-access', 'b81a06be4a489759dfc35fca278e160959fe8267fafcc330db8d0b4998ffec65', '[\"*\"]', NULL, NULL, '2024-12-01 02:05:59', '2024-12-01 02:05:59'),
(132, 'App\\Models\\User', 1, 'dev-access', '5e2ea75a6f7f67d0ddfb2ac1bad0ae85752be5077113d1c9e1186070752c20ac', '[\"*\"]', NULL, NULL, '2024-12-01 02:06:15', '2024-12-01 02:06:15'),
(133, 'App\\Models\\User', 1, 'dev-access', '94168aad352ae2f6c6574d2a9acaef1254588754a35a0f1f12d9903583236159', '[\"*\"]', NULL, NULL, '2024-12-01 02:06:16', '2024-12-01 02:06:16'),
(134, 'App\\Models\\User', 1, 'dev-access', '3404a13759a10e2cf30757edf90c0f355247160e9078c8d47a5f3cafab21948a', '[\"*\"]', NULL, NULL, '2024-12-01 02:06:44', '2024-12-01 02:06:44'),
(135, 'App\\Models\\User', 1, 'dev-access', '391e75038c1b368c16338d62ce8d24fcff55a8d07bfce28729244e08cc927c3d', '[\"*\"]', NULL, NULL, '2024-12-01 02:08:08', '2024-12-01 02:08:08'),
(136, 'App\\Models\\User', 1, 'dev-access', '8917309eac4a7296695956a4dd96919f2a9aacdce3a3a02ef769db902ec9b7bc', '[\"*\"]', NULL, NULL, '2024-12-01 02:08:28', '2024-12-01 02:08:28'),
(137, 'App\\Models\\User', 1, 'dev-access', '68933e2b3f7dee1b0121c901ddffadf9bd04f9ffbfa6c5447f8191d8e6bd64dc', '[\"*\"]', NULL, NULL, '2024-12-01 02:09:47', '2024-12-01 02:09:47'),
(138, 'App\\Models\\User', 1, 'dev-access', '39d72d4775ac86916af8e034c3b04eedee766bc0da27552446d6794ceff602ac', '[\"*\"]', NULL, NULL, '2024-12-01 02:09:58', '2024-12-01 02:09:58'),
(139, 'App\\Models\\User', 1, 'dev-access', '7767711c6a431bc2263c30318a3c5a1a4f554992fd26efda8e22d466e83e7738', '[\"*\"]', NULL, NULL, '2024-12-01 02:10:14', '2024-12-01 02:10:14'),
(140, 'App\\Models\\User', 1, 'dev-access', '7935ab32c8ea838f35e793bc2a937d18ff8ba67adf81ef80c29f77612d8ee8ef', '[\"*\"]', NULL, NULL, '2024-12-01 02:10:26', '2024-12-01 02:10:26'),
(141, 'App\\Models\\User', 1, 'dev-access', '28465164c45f875cc12cf5a87f4247ac4076f3b9665454128f8389ab0fb97aa3', '[\"*\"]', NULL, NULL, '2024-12-01 02:10:46', '2024-12-01 02:10:46'),
(142, 'App\\Models\\User', 1, 'dev-access', '26867be22daf9f12b80af8e5586ecdf33fdc276b608281a0f110481f2ab9e0ea', '[\"*\"]', NULL, NULL, '2024-12-01 02:11:15', '2024-12-01 02:11:15'),
(143, 'App\\Models\\User', 1, 'dev-access', 'c6aecc21883ee8eed1189345333b2f38b37ffc2fe5afb3e23cfa327da572dd5e', '[\"*\"]', NULL, NULL, '2024-12-01 02:11:29', '2024-12-01 02:11:29'),
(144, 'App\\Models\\User', 2, 'dev-access', 'c5777388b81733af956352edf90610e3e0400277fbbc1ba32271067d20837a5f', '[\"*\"]', NULL, NULL, '2024-12-01 02:14:07', '2024-12-01 02:14:07'),
(145, 'App\\Models\\User', 2, 'dev-access', 'e9645e0a4924ea38ced3147a66d2e722525ceb2f5bc8e21b06b61dbaf5d9c63b', '[\"*\"]', NULL, NULL, '2024-12-01 02:15:06', '2024-12-01 02:15:06'),
(146, 'App\\Models\\User', 2, 'dev-access', 'e4ed0fd0934963953fe33e64af042ac96d4becc8723e1330fd2f4e4f5911e8ae', '[\"*\"]', NULL, NULL, '2024-12-01 02:15:43', '2024-12-01 02:15:43'),
(147, 'App\\Models\\User', 2, 'dev-access', '28327d76dd030b2a495f4057a708a13ad71fe4210faca79f42d8ecd2f89bf39c', '[\"*\"]', NULL, NULL, '2024-12-01 02:16:45', '2024-12-01 02:16:45'),
(148, 'App\\Models\\User', 2, 'dev-access', 'a28199fc566be7b23191e8bb956bdbfc2b6875039798448c4f46839594966754', '[\"*\"]', NULL, NULL, '2024-12-01 02:16:54', '2024-12-01 02:16:54'),
(149, 'App\\Models\\User', 2, 'dev-access', '6f9348a89c4fce4ad3392fb4c0f2bac534eba83bb0d0774a4f98fa6fb2cb60b7', '[\"*\"]', NULL, NULL, '2024-12-01 02:17:05', '2024-12-01 02:17:05'),
(150, 'App\\Models\\User', 2, 'dev-access', 'a62a2baca7f8d5a70024603844b2faf6df5bca7e7c68d26d04b2dccfda82d14d', '[\"*\"]', NULL, NULL, '2024-12-01 02:17:42', '2024-12-01 02:17:42'),
(151, 'App\\Models\\User', 2, 'dev-access', '041a32e2fd9807377c8d8a6070c4c62ad3433773cea7741c815de117f67d32f8', '[\"*\"]', NULL, NULL, '2024-12-01 02:18:18', '2024-12-01 02:18:18'),
(152, 'App\\Models\\User', 2, 'dev-access', '98e00b98b672b41a2dc8154f4ec24e8d7f6bbaee4111006f7f70822daded95df', '[\"*\"]', NULL, NULL, '2024-12-01 02:18:18', '2024-12-01 02:18:18'),
(153, 'App\\Models\\User', 2, 'dev-access', '0c5c8016cc6647c099a0674103cbd0c6f8814800d099ab5ddd762583392f77e9', '[\"*\"]', NULL, NULL, '2024-12-01 02:22:30', '2024-12-01 02:22:30'),
(154, 'App\\Models\\User', 2, 'dev-access', '1afe81e4aed0dc85748d73b4b26dc53afb9e548f11617f7f7a80ed80a03c233f', '[\"*\"]', NULL, NULL, '2024-12-01 02:22:38', '2024-12-01 02:22:38'),
(155, 'App\\Models\\User', 2, 'dev-access', '016be7a611154ab706be51545f01fd3185ff52009236bc61b5d44b84d9e138db', '[\"*\"]', NULL, NULL, '2024-12-01 02:23:50', '2024-12-01 02:23:50'),
(156, 'App\\Models\\User', 2, 'dev-access', 'dfede5f36f42b1f40f921a5d8da23234da2f6931daa4f0ede7af953e4d856874', '[\"*\"]', NULL, NULL, '2024-12-01 02:23:57', '2024-12-01 02:23:57'),
(157, 'App\\Models\\User', 2, 'dev-access', '009cc7f994464503f1b0469748a39e1f3697eb9c8717798e97adac1360799d04', '[\"*\"]', NULL, NULL, '2024-12-01 02:24:12', '2024-12-01 02:24:12'),
(158, 'App\\Models\\User', 2, 'dev-access', '4dca7d243d27102e9f5fc0a69077032efb17b88e6f00756914e0111ebca78bcd', '[\"*\"]', NULL, NULL, '2024-12-01 02:25:14', '2024-12-01 02:25:14'),
(159, 'App\\Models\\User', 2, 'dev-access', 'd368c3d372a20db7e25f3f7655428bd565520b87cf68b6601dd1f385cfd461b8', '[\"*\"]', NULL, NULL, '2024-12-01 02:25:34', '2024-12-01 02:25:34'),
(160, 'App\\Models\\User', 2, 'dev-access', '6104d50d5665fb8f1e7225d8cf840a26df1b6a169c6986fb399ec972dd147cf2', '[\"*\"]', NULL, NULL, '2024-12-01 02:25:59', '2024-12-01 02:25:59'),
(161, 'App\\Models\\User', 2, 'dev-access', 'fdf4bee608172dec6e795bf31a6d5476dfe3f324bbf43882af7ebd282ef961f4', '[\"*\"]', NULL, NULL, '2024-12-01 02:26:45', '2024-12-01 02:26:45'),
(162, 'App\\Models\\User', 2, 'dev-access', 'd57e6ff42d9fd735b3265dfea3116b85d31b87b1101bf5b8566818adf95e5d42', '[\"*\"]', NULL, NULL, '2024-12-01 02:28:01', '2024-12-01 02:28:01'),
(163, 'App\\Models\\User', 2, 'dev-access', '7b602da954399e148162303c2b017ed8c83f7820ec47cd71bb8e88349381f14e', '[\"*\"]', NULL, NULL, '2024-12-01 02:28:04', '2024-12-01 02:28:04'),
(164, 'App\\Models\\User', 2, 'dev-access', 'bf80999d6f8d5a727c9291c2f8d2fea307309eb9df4f7d676d0bcb4787297050', '[\"*\"]', NULL, NULL, '2024-12-01 02:28:10', '2024-12-01 02:28:10'),
(165, 'App\\Models\\User', 2, 'dev-access', '72d37b24fa060eaa613b46ffdc9ca0faace59e0af7eb0487949361d31c7665d0', '[\"*\"]', NULL, NULL, '2024-12-01 02:28:11', '2024-12-01 02:28:11'),
(166, 'App\\Models\\User', 2, 'dev-access', '383fc7e6e2b63b90dab27a7ea559d9d31aaafb767d9f5c787c60a3cb564281a9', '[\"*\"]', NULL, NULL, '2024-12-01 02:28:49', '2024-12-01 02:28:49'),
(167, 'App\\Models\\User', 2, 'dev-access', '31e6288b435c86c44ca3fed4e86510fce9a4fca910027dd0e164f2ce3c27e310', '[\"*\"]', NULL, NULL, '2024-12-01 02:28:52', '2024-12-01 02:28:52'),
(168, 'App\\Models\\User', 2, 'dev-access', '08909fdb71b432e5a5c293ca3d144b80d69b96e19095ecdc65a67b68d20f8935', '[\"*\"]', NULL, NULL, '2024-12-01 02:29:17', '2024-12-01 02:29:17'),
(169, 'App\\Models\\User', 2, 'dev-access', '756c2b6869f379191d50b132bc047c78e15a6706908cdaf42000edf38ee01870', '[\"*\"]', NULL, NULL, '2024-12-01 02:31:12', '2024-12-01 02:31:12'),
(170, 'App\\Models\\User', 2, 'dev-access', 'b6cd59288222e197efb90297b67ccdc4402a0c2afb2ec1dd350c2010ca8d1258', '[\"*\"]', NULL, NULL, '2024-12-01 02:31:13', '2024-12-01 02:31:13'),
(171, 'App\\Models\\User', 2, 'dev-access', '7448fd5be0f949f95498270781a4b4c20ceac5e86ae549632dde792b352597be', '[\"*\"]', NULL, NULL, '2024-12-01 02:36:07', '2024-12-01 02:36:07'),
(172, 'App\\Models\\User', 2, 'dev-access', 'ef585e62a0d4937064c7215bc2a2f842fa711ce32c60492f2f80f72912585e3e', '[\"*\"]', NULL, NULL, '2024-12-01 02:38:28', '2024-12-01 02:38:28'),
(173, 'App\\Models\\User', 2, 'dev-access', '1a36aee5660162e23adc32d04c3a5bd3ba17e14ccc2ae22725049c4ae85cddf8', '[\"*\"]', NULL, NULL, '2024-12-01 02:40:32', '2024-12-01 02:40:32'),
(174, 'App\\Models\\User', 2, 'dev-access', 'f1ec05b613ce3bba0a48ed95691974662c62078093db3d9246a3f08ec004f6dc', '[\"*\"]', NULL, NULL, '2024-12-01 02:52:21', '2024-12-01 02:52:21'),
(175, 'App\\Models\\User', 2, 'dev-access', '18363bc2ebcdab023f6c4a50521a011ba9eb3f9e7caca74be8f1e0828ac1e1d8', '[\"*\"]', NULL, NULL, '2024-12-01 02:52:45', '2024-12-01 02:52:45'),
(176, 'App\\Models\\User', 2, 'dev-access', '4adae637d2d3fe3eb0d85ca92e384f0d7cbd5c28551d240c812961df44a7e8e0', '[\"*\"]', NULL, NULL, '2024-12-01 02:52:52', '2024-12-01 02:52:52'),
(177, 'App\\Models\\User', 2, 'dev-access', '5b0de40fd7dad2eaa408c8c8f32eba0d010a3384d47cb34189f4665f77c8331b', '[\"*\"]', NULL, NULL, '2024-12-01 02:53:11', '2024-12-01 02:53:11'),
(178, 'App\\Models\\User', 2, 'dev-access', 'add7bc98d6a5e427eaae6c18767e5930b3e30af2b71863acd9ccd2cb9ada32b0', '[\"*\"]', NULL, NULL, '2024-12-01 02:58:18', '2024-12-01 02:58:18'),
(179, 'App\\Models\\User', 2, 'dev-access', '72a3ca6580faa98165c10cc24b79d4d94786fb1093e6f62ecc164da1d269ce10', '[\"*\"]', NULL, NULL, '2024-12-01 02:59:35', '2024-12-01 02:59:35'),
(180, 'App\\Models\\User', 2, 'dev-access', '002dfb9231c85559ccc90df86b1b7a9a570e0e5b81f6d0f0dd5fa4edae71ba4e', '[\"*\"]', NULL, NULL, '2024-12-02 02:38:33', '2024-12-02 02:38:33'),
(181, 'App\\Models\\User', 2, 'dev-access', 'cfd2ea16caa1692a105da033b955822c4caa6fcbc2faacfa22b2fb2d1917299a', '[\"*\"]', NULL, NULL, '2024-12-02 02:49:17', '2024-12-02 02:49:17'),
(182, 'App\\Models\\User', 2, 'dev-access', '70a5caaa029c304c210d5c76d27e1928b1ec7ffa10ac374cf6241318482213a2', '[\"*\"]', NULL, NULL, '2024-12-02 02:52:51', '2024-12-02 02:52:51'),
(183, 'App\\Models\\User', 2, 'dev-access', '0a5e968dd59d29698573213be18f58b8cac25c29e07da26770876a3bbaf39396', '[\"*\"]', NULL, NULL, '2024-12-02 02:52:55', '2024-12-02 02:52:55'),
(184, 'App\\Models\\User', 2, 'dev-access', 'e7c4ca640c399b4101c37f510f6fe1e2ea4f826e1959d5b3cfd970fdf4551220', '[\"*\"]', NULL, NULL, '2024-12-02 03:03:48', '2024-12-02 03:03:48'),
(185, 'App\\Models\\User', 2, 'dev-access', '1d001b37f660d988f5935c4682728d6a74431d97b20d09f1498a559e2a08192e', '[\"*\"]', NULL, NULL, '2024-12-02 03:07:43', '2024-12-02 03:07:43'),
(186, 'App\\Models\\User', 2, 'dev-access', '2a9e1e841ee5a44c09cd1f6b20157bd8b940ec4d4b95b7ac1e6f6508c0a8efc6', '[\"*\"]', NULL, NULL, '2024-12-02 03:09:58', '2024-12-02 03:09:58'),
(187, 'App\\Models\\User', 2, 'dev-access', '81ceb370003b250cc27272875d6f6a8af740c87a8afc9f722fec62e57dfa7f42', '[\"*\"]', NULL, NULL, '2024-12-02 03:10:39', '2024-12-02 03:10:39'),
(188, 'App\\Models\\User', 2, 'dev-access', '35fd46c09f23070bb216be71bfb9723fd46ae79ad2a66d823173a87f821c8a22', '[\"*\"]', NULL, NULL, '2024-12-02 03:36:01', '2024-12-02 03:36:01'),
(189, 'App\\Models\\User', 2, 'dev-access', 'ec164e8cc0927deacabfc4100cc953384399423fa676798d8bc1535b072c8661', '[\"*\"]', NULL, NULL, '2024-12-02 20:08:46', '2024-12-02 20:08:46'),
(190, 'App\\Models\\User', 2, 'dev-access', 'e0ac9709ca4ad22ae4dac093233ac6dfff0daffdd1fdb8e8219e98867f20deab', '[\"*\"]', NULL, NULL, '2024-12-02 20:08:48', '2024-12-02 20:08:48'),
(191, 'App\\Models\\User', 2, 'dev-access', 'c4afe3062cd6f1bc867ae60283d65c92c0b80eb2eefec9239592539c4c86669c', '[\"*\"]', NULL, NULL, '2024-12-02 20:34:53', '2024-12-02 20:34:53'),
(192, 'App\\Models\\User', 2, 'dev-access', '8ecff33725afff272546f0c121262d069f722232180ef815883b6a39fc8e3333', '[\"*\"]', NULL, NULL, '2024-12-02 20:40:48', '2024-12-02 20:40:48'),
(193, 'App\\Models\\User', 2, 'dev-access', 'dade76827b85eda1678dc4d646c56945794d97b6296561b0b2abb8ce6f392b53', '[\"*\"]', NULL, NULL, '2024-12-02 20:40:49', '2024-12-02 20:40:49'),
(194, 'App\\Models\\User', 2, 'dev-access', '24b085a87107bd10a53a4268343907c7ec28d43435e3ee7bfcc30e2f48904ca5', '[\"*\"]', NULL, NULL, '2024-12-02 20:40:49', '2024-12-02 20:40:49'),
(195, 'App\\Models\\User', 2, 'dev-access', '8c203c9e42b73ee84c85076101e03e9acab7a4127bf563f02f7c8b946c96db0d', '[\"*\"]', NULL, NULL, '2024-12-02 20:43:22', '2024-12-02 20:43:22'),
(196, 'App\\Models\\User', 2, 'dev-access', 'ec5554c827004fbdefda64e4867a39513a6a280fe495e63e942a6b10e25f7ae8', '[\"*\"]', NULL, NULL, '2024-12-02 20:43:24', '2024-12-02 20:43:24'),
(197, 'App\\Models\\User', 2, 'dev-access', 'da27d631bb1ed100adf459496d737dbbb77bcba31d39f745d9110d3d8492ca28', '[\"*\"]', NULL, NULL, '2024-12-02 20:43:27', '2024-12-02 20:43:27'),
(198, 'App\\Models\\User', 2, 'dev-access', '2046c84308f326d762f74c9322829d871d8a60988fdf18282de6a9d79e01737b', '[\"*\"]', NULL, NULL, '2024-12-02 20:43:41', '2024-12-02 20:43:41'),
(199, 'App\\Models\\User', 2, 'dev-access', '73f3118149abde446a0eea8235443653cd460f8f69e6dbc5f130e28e9977a1e5', '[\"*\"]', NULL, NULL, '2024-12-02 20:46:00', '2024-12-02 20:46:00'),
(200, 'App\\Models\\User', 2, 'dev-access', 'a412845de84d369fde446005ca1711164d106e8a95dfd2dd5198623d54345b7b', '[\"*\"]', NULL, NULL, '2024-12-02 20:50:39', '2024-12-02 20:50:39'),
(201, 'App\\Models\\User', 2, 'dev-access', 'bcec066264d8f2353b24939232cc7d28756138bdcba0a4ba8c993895fb9f8e72', '[\"*\"]', NULL, NULL, '2024-12-02 20:50:59', '2024-12-02 20:50:59'),
(202, 'App\\Models\\User', 2, 'dev-access', 'fa3d6eccba19adf53b105be18d0334e460273d1615a10edb7667fce435245933', '[\"*\"]', NULL, NULL, '2024-12-02 20:52:28', '2024-12-02 20:52:28'),
(203, 'App\\Models\\User', 2, 'dev-access', 'c8c9f88c48e6243f594ea3e2803627d482a8469416d31bfc20480bf3356c97e2', '[\"*\"]', NULL, NULL, '2024-12-02 20:53:15', '2024-12-02 20:53:15'),
(204, 'App\\Models\\User', 2, 'dev-access', '0c72c34fe3de6a13b1710d3b43777afafe3023252ddaacc71415fdbe925c4bae', '[\"*\"]', NULL, NULL, '2024-12-02 20:54:10', '2024-12-02 20:54:10'),
(205, 'App\\Models\\User', 2, 'dev-access', 'e90826c473b03ca5ed2941b7941ad6a37fce2ecb08dae80c5500f258ecc89b00', '[\"*\"]', NULL, NULL, '2024-12-02 20:54:11', '2024-12-02 20:54:11'),
(206, 'App\\Models\\User', 2, 'dev-access', '60d5e7cc0e7e45c93d5f415b5300edcd7efa835d91ee4e4132808f81fd089650', '[\"*\"]', NULL, NULL, '2024-12-02 20:54:12', '2024-12-02 20:54:12'),
(207, 'App\\Models\\User', 2, 'dev-access', '08279e4590171d1d2890b3cc880322b8c445a6c6cb5ae76983c4652f5cb6049d', '[\"*\"]', NULL, NULL, '2024-12-02 20:57:30', '2024-12-02 20:57:30'),
(208, 'App\\Models\\User', 2, 'dev-access', '27ba66cd5721721e1a7f5039e0ed16563f88bd188f60814cf6594a3559da53f1', '[\"*\"]', NULL, NULL, '2024-12-02 20:58:26', '2024-12-02 20:58:26'),
(209, 'App\\Models\\User', 2, 'dev-access', '444453f9c7d6ef31f20976ec9974102d7fc22b1bfcee6b99bfb87dcc7de95483', '[\"*\"]', NULL, NULL, '2024-12-02 20:59:04', '2024-12-02 20:59:04'),
(210, 'App\\Models\\User', 2, 'dev-access', 'ee47e20f209cb9df41484c2859169f2bb7dc5e1ba48d4afcd5ed8f768259fb54', '[\"*\"]', NULL, NULL, '2024-12-02 20:59:15', '2024-12-02 20:59:15'),
(211, 'App\\Models\\User', 2, 'dev-access', 'd21a226b0ca476e4f6707bf79b5fcbb93a2306f674310625fadcbe0fd6e9a1ba', '[\"*\"]', NULL, NULL, '2024-12-02 20:59:27', '2024-12-02 20:59:27'),
(212, 'App\\Models\\User', 2, 'dev-access', '43b981e845512c29b6be198b35d0f7b0ce052f4ba6add87adcee511f5f6a3765', '[\"*\"]', NULL, NULL, '2024-12-02 20:59:41', '2024-12-02 20:59:41'),
(213, 'App\\Models\\User', 2, 'dev-access', '1e1fa94bbe4e084d95277bfc3b7e9c90b143d5cbf99a7096292fbf40e6350d70', '[\"*\"]', NULL, NULL, '2024-12-02 20:59:45', '2024-12-02 20:59:45'),
(214, 'App\\Models\\User', 2, 'dev-access', '09e3b00ab88a714d9652be9e20665ff1024d98dda3e31279f841186765463fc0', '[\"*\"]', NULL, NULL, '2024-12-02 20:59:57', '2024-12-02 20:59:57'),
(215, 'App\\Models\\User', 2, 'dev-access', '89202059afb93d918f907c9b3d71e1e476a3041ca3cca338c79b1ba2df39b210', '[\"*\"]', NULL, NULL, '2024-12-02 21:00:03', '2024-12-02 21:00:03'),
(216, 'App\\Models\\User', 2, 'dev-access', 'a7923d7c16d37721c2287aa99e29f12bbec5337ae9a01810a15bde6644863881', '[\"*\"]', NULL, NULL, '2024-12-02 21:00:29', '2024-12-02 21:00:29'),
(217, 'App\\Models\\User', 2, 'dev-access', '82d870fdd23e3c305bf17b5f40eeaaa53f44bfc09cdccc7a2c1044b6e35d342d', '[\"*\"]', NULL, NULL, '2024-12-02 21:00:31', '2024-12-02 21:00:31'),
(218, 'App\\Models\\User', 2, 'dev-access', '8db36b7a746cd07c498a64f347bf8b2b8698dc5115994eca33fcf415f4297792', '[\"*\"]', NULL, NULL, '2024-12-02 21:00:42', '2024-12-02 21:00:42'),
(219, 'App\\Models\\User', 2, 'dev-access', '6e0528e7dff57ad5f20b6d21bca7b1c4604f922104e0854c113efd5c289aa778', '[\"*\"]', NULL, NULL, '2024-12-02 21:00:48', '2024-12-02 21:00:48'),
(220, 'App\\Models\\User', 2, 'dev-access', '3b6b58cc58739d6bf6d7d6d3cf38b741ab473677d57fc461a7f1070fdd08864b', '[\"*\"]', NULL, NULL, '2024-12-02 21:01:42', '2024-12-02 21:01:42'),
(221, 'App\\Models\\User', 2, 'dev-access', 'd148b62c7a988abdba212b6f25071db0b513b0a4cc1418412ac9ec71679923f2', '[\"*\"]', NULL, NULL, '2024-12-02 21:01:45', '2024-12-02 21:01:45'),
(222, 'App\\Models\\User', 2, 'dev-access', '216593ad1e58aebef7e6907564f2544bfa6837ad14697b3cfd95ea3e51db5fc5', '[\"*\"]', NULL, NULL, '2024-12-02 21:01:48', '2024-12-02 21:01:48'),
(223, 'App\\Models\\User', 2, 'dev-access', 'b4ba2af555467f1f6190b8f042b1cdafdb2bc45ca73a98106816d16c9050a889', '[\"*\"]', NULL, NULL, '2024-12-02 21:01:54', '2024-12-02 21:01:54'),
(224, 'App\\Models\\User', 2, 'dev-access', 'd6aa171653085a2957c71af2e77389fdd80162edf6ff999a84e477d39490010b', '[\"*\"]', NULL, NULL, '2024-12-02 21:01:57', '2024-12-02 21:01:57'),
(225, 'App\\Models\\User', 2, 'dev-access', '7e8516b28da6f607d3ef58b6df9a914bf8630427d8205d73353b8f0727390457', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:09', '2024-12-02 21:02:09'),
(226, 'App\\Models\\User', 2, 'dev-access', '23f0c63841ae37621fa0a09687ba5666d313646ea6f3dcc958be35955f77c33a', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:11', '2024-12-02 21:02:11'),
(227, 'App\\Models\\User', 2, 'dev-access', '513712e8d3f9689333497ad3d83915084fc76cdb1de94595f3cfe523a6493b7b', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:25', '2024-12-02 21:02:25'),
(228, 'App\\Models\\User', 2, 'dev-access', '678eeb383eab0c260a378145cb06eb115dad2701efff3027a5886b51732db323', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:26', '2024-12-02 21:02:26'),
(229, 'App\\Models\\User', 2, 'dev-access', 'c5e18beecc89b250cb48833c80d74010a832ef1b3f4298f873bf639cd7c4c144', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:28', '2024-12-02 21:02:28'),
(230, 'App\\Models\\User', 2, 'dev-access', 'fcb6d2a437e728943c693ba052c186515547b4115eb19307c05dd42f01768a1e', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:32', '2024-12-02 21:02:32'),
(231, 'App\\Models\\User', 2, 'dev-access', '9dc55314b936b42505b4a0f4dab1da31b67954f4f048b6e5e114735e9e6e692a', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:36', '2024-12-02 21:02:36'),
(232, 'App\\Models\\User', 2, 'dev-access', 'e8b39996ff1e19d22be069477a6482a750a841cffb84fc769b7ecbbac9e6fe2a', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:38', '2024-12-02 21:02:38'),
(233, 'App\\Models\\User', 2, 'dev-access', 'ad4dfeef31e104241691fea759041743a353042033a3532d37d30a636897ec1b', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:39', '2024-12-02 21:02:39'),
(234, 'App\\Models\\User', 2, 'dev-access', '47d774b2057d95ab090e5e16f2e0f4563cfdec1b53f26759bebf4f5f5d9149c5', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:43', '2024-12-02 21:02:43'),
(235, 'App\\Models\\User', 2, 'dev-access', 'f66ec98ded5fbea81c92634c1bba780f9e72865040aad54ad97b195399c58f32', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:46', '2024-12-02 21:02:46'),
(236, 'App\\Models\\User', 2, 'dev-access', 'e6664a2b32c62496f512e801a003da48f6557346b7f9da4a368dcdd8978d44e2', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:48', '2024-12-02 21:02:48'),
(237, 'App\\Models\\User', 2, 'dev-access', 'f62146cc638bf4b70bc26031a05b602c428fb85b7bcb2e202e03b850bdc463e0', '[\"*\"]', NULL, NULL, '2024-12-02 21:02:57', '2024-12-02 21:02:57'),
(238, 'App\\Models\\User', 2, 'dev-access', '0cfc61033ba8897a285e6593dc95264390f2ef35715170985a5d8221d3f62d32', '[\"*\"]', NULL, NULL, '2024-12-02 21:03:37', '2024-12-02 21:03:37'),
(239, 'App\\Models\\User', 2, 'dev-access', 'f5f102569616498ea16c41b8d3f67c310956f6528aff448a15f52f5a95ace681', '[\"*\"]', NULL, NULL, '2024-12-02 21:03:40', '2024-12-02 21:03:40'),
(240, 'App\\Models\\User', 2, 'dev-access', '62de39167940169e4a132483645069b417729ce8180ba1ef0d0b87357404f6f0', '[\"*\"]', NULL, NULL, '2024-12-02 21:03:43', '2024-12-02 21:03:43'),
(241, 'App\\Models\\User', 2, 'dev-access', 'b63548a5b440c75ea2afbc8c1a7a6e54199032ab9d7f8fcbb56af7f62d6a670d', '[\"*\"]', NULL, NULL, '2024-12-02 21:03:51', '2024-12-02 21:03:51'),
(242, 'App\\Models\\User', 2, 'dev-access', '998f910bc9143651feb86ed60daab947b874bbbeac7ed03f697d245a7b66643e', '[\"*\"]', NULL, NULL, '2024-12-02 21:03:54', '2024-12-02 21:03:54'),
(243, 'App\\Models\\User', 2, 'dev-access', '8844fccd4ff11f01c3582d3942d72307cdaaa02b771ecf93b8c4dfbd5cb03adb', '[\"*\"]', NULL, NULL, '2024-12-02 21:03:59', '2024-12-02 21:03:59'),
(244, 'App\\Models\\User', 2, 'dev-access', '5bc6762b791b466922e929d2f33c9fcb840be2df269f6368d87ed04510bdfdf1', '[\"*\"]', NULL, NULL, '2024-12-02 21:04:05', '2024-12-02 21:04:05'),
(245, 'App\\Models\\User', 2, 'dev-access', 'ae08dcda9aa15a988b467736854168cba3fccad9262bd43bbeeb05176ab21ce9', '[\"*\"]', NULL, NULL, '2024-12-02 21:04:16', '2024-12-02 21:04:16'),
(246, 'App\\Models\\User', 2, 'dev-access', '8fd51a196c851d35a436480112100613e80f1b8020723591da51bd8fbf19f0a8', '[\"*\"]', NULL, NULL, '2024-12-02 21:04:31', '2024-12-02 21:04:31'),
(247, 'App\\Models\\User', 2, 'dev-access', '5a93e28cf709f9923d3139fcefcb0f4ce60957f67a448a80f8faa73125f9dfc3', '[\"*\"]', NULL, NULL, '2024-12-02 21:04:44', '2024-12-02 21:04:44'),
(248, 'App\\Models\\User', 2, 'dev-access', '0f6f2f1355b85a9859b8643e633a76262187b093005ced3369ba5c211a1a72b3', '[\"*\"]', NULL, NULL, '2024-12-02 21:04:46', '2024-12-02 21:04:46'),
(249, 'App\\Models\\User', 2, 'dev-access', '214d2b5e52d7170952d7fb626aedae204bcb25b06b77d81a8794dd2ab3978af6', '[\"*\"]', NULL, NULL, '2024-12-02 21:05:06', '2024-12-02 21:05:06'),
(250, 'App\\Models\\User', 2, 'dev-access', '3d8d94fc655f0d64959ad0a5ee76ead3afc733b25ec1df3e5497fc4edd93d9fe', '[\"*\"]', NULL, NULL, '2024-12-02 21:32:26', '2024-12-02 21:32:26'),
(251, 'App\\Models\\User', 2, 'dev-access', '1eb03bf7317988824fc0f9da0bb7b7c04cddd96a3e3f15ea2e6d019f9caefda3', '[\"*\"]', NULL, NULL, '2024-12-02 22:16:19', '2024-12-02 22:16:19'),
(252, 'App\\Models\\User', 2, 'dev-access', '525789a3c522206b01a4630fe78e9412cc1f91701a959ac3269adf5d9174fa4f', '[\"*\"]', NULL, NULL, '2024-12-02 22:16:26', '2024-12-02 22:16:26'),
(253, 'App\\Models\\User', 2, 'dev-access', '574da44bb6cc86f303e9ee63398de904465a6f18af51f8d35726939ca71d300a', '[\"*\"]', NULL, NULL, '2024-12-02 22:22:28', '2024-12-02 22:22:28'),
(254, 'App\\Models\\User', 2, 'dev-access', '06cedc972beacc49e86200ee985ed50e09278058791a2e069412c84e95b7e41a', '[\"*\"]', NULL, NULL, '2024-12-02 22:22:35', '2024-12-02 22:22:35'),
(255, 'App\\Models\\User', 2, 'dev-access', 'de664dd4a863c789199dc4a8b730105c1763dba09c51f71a5c0dabc48b9ee5e9', '[\"*\"]', NULL, NULL, '2024-12-02 22:23:09', '2024-12-02 22:23:09'),
(256, 'App\\Models\\User', 2, 'dev-access', 'd6cffb93792839fe193b663720b88dc95e4cf0f7219275cb7a977c07596e11ff', '[\"*\"]', NULL, NULL, '2024-12-02 22:23:45', '2024-12-02 22:23:45'),
(257, 'App\\Models\\User', 2, 'dev-access', 'fa96089b0d0ab7c7db21655d3a1da6d31426584ee8e8aa2da60af7b9b8ed8b97', '[\"*\"]', NULL, NULL, '2024-12-02 22:23:48', '2024-12-02 22:23:48'),
(258, 'App\\Models\\User', 2, 'dev-access', '9317735d9809eca5edcd349d5a66b08e78167a38292f87397dceadd39386ed26', '[\"*\"]', NULL, NULL, '2024-12-02 22:23:52', '2024-12-02 22:23:52'),
(259, 'App\\Models\\User', 2, 'dev-access', '50f52633f3227f2728de945d80fa394844e87d5853254cb24d28c48ca06bc9da', '[\"*\"]', NULL, NULL, '2024-12-02 22:23:56', '2024-12-02 22:23:56'),
(260, 'App\\Models\\User', 2, 'dev-access', 'fdb358c7b3b43c55a393934c162a9a1d73c76e530657a70e1e730ddca63cae51', '[\"*\"]', NULL, NULL, '2024-12-02 22:24:01', '2024-12-02 22:24:01'),
(261, 'App\\Models\\User', 2, 'dev-access', 'fd9ada22fa684734316d7d44cdadfa6ff1ed9864893bf68393d34418d03e2319', '[\"*\"]', NULL, NULL, '2024-12-02 22:27:55', '2024-12-02 22:27:55'),
(262, 'App\\Models\\User', 2, 'dev-access', 'd16925bb089ceaed7707ac202ab53df2da4ff39db13e4c5362696f3b69ce8d04', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:06', '2024-12-02 22:28:06'),
(263, 'App\\Models\\User', 2, 'dev-access', '0ba2c5658f5ad3b71ed839795c6a20958c6b57244ac74c26d65b846d3542502b', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:06', '2024-12-02 22:28:06'),
(264, 'App\\Models\\User', 2, 'dev-access', '63c6b6d7d5deae5a701324413870702fdabbfd958fd92947e49751faf3cf539a', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:07', '2024-12-02 22:28:07'),
(265, 'App\\Models\\User', 2, 'dev-access', '7b7d6a5b28697eba086843c057d236dd42f89c8dc4ab34f04ae9540d1d6abc04', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:15', '2024-12-02 22:28:15'),
(266, 'App\\Models\\User', 2, 'dev-access', '05ad6ebbc7bcf75bdd589e9fe1f4ff82eceeb9a91b32ae4d6cbc483b331c5563', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:41', '2024-12-02 22:28:41'),
(267, 'App\\Models\\User', 2, 'dev-access', '8790b4e5ec8dc0f9360662259e5fdb0ec5c3a26892dbcdada1dad00a554daf53', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:42', '2024-12-02 22:28:42'),
(268, 'App\\Models\\User', 2, 'dev-access', '4d7b0af5ef4e613a4cb92342885790f61c5eb0d106e963f47bfb587b8c259997', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:45', '2024-12-02 22:28:45'),
(269, 'App\\Models\\User', 2, 'dev-access', '0f30aa19176457fcd910b5c378ace28e9f879bcdb012827ee58aabddededbbd2', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:47', '2024-12-02 22:28:47'),
(270, 'App\\Models\\User', 2, 'dev-access', 'fe888b92525e3c4543643f7dae57acd8e0ad52a27ab91eb45edf4e5672af87e3', '[\"*\"]', NULL, NULL, '2024-12-02 22:28:53', '2024-12-02 22:28:53'),
(271, 'App\\Models\\User', 2, 'dev-access', '7327ac22264be11a046be655ab19cc743ecee9bd4c0b3f284439ec8964e6f6ee', '[\"*\"]', NULL, NULL, '2024-12-02 22:29:17', '2024-12-02 22:29:17'),
(272, 'App\\Models\\User', 2, 'dev-access', '28fa57fd6eb3f21c2cdd96e965cd75312dd370afb8179edf50802ee7634a611e', '[\"*\"]', NULL, NULL, '2024-12-02 22:29:18', '2024-12-02 22:29:18'),
(273, 'App\\Models\\User', 2, 'dev-access', '46e6b0fa83eef718b24432139844fa17b180d7126868d6064b11c2998b1e2a8f', '[\"*\"]', NULL, NULL, '2024-12-02 22:29:18', '2024-12-02 22:29:18'),
(274, 'App\\Models\\User', 2, 'dev-access', 'bad82b45f1663fc06931aea90678008e776322f31b67338fbd04194dbdda7747', '[\"*\"]', NULL, NULL, '2024-12-02 22:29:40', '2024-12-02 22:29:40'),
(275, 'App\\Models\\User', 2, 'dev-access', '65da95a77425a26b0119ef286a257271bb50a1c25aa3f21a011de72e2093f268', '[\"*\"]', NULL, NULL, '2024-12-02 22:29:41', '2024-12-02 22:29:41'),
(276, 'App\\Models\\User', 2, 'dev-access', '284403991ec26576fd76a31a61fb48fcf6f38a0162016329ecee97f727ebbb62', '[\"*\"]', NULL, NULL, '2024-12-02 22:29:41', '2024-12-02 22:29:41'),
(277, 'App\\Models\\User', 2, 'dev-access', '7168a327a76962cba9b0637fd838d763aaf832aee9cdb07bf757484c63951fe4', '[\"*\"]', NULL, NULL, '2024-12-02 22:30:41', '2024-12-02 22:30:41');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(278, 'App\\Models\\User', 2, 'dev-access', '7b95f96184530a336661ee0d0c2cd935b5ad33b6e0cb32d83767e23dc1c5d670', '[\"*\"]', NULL, NULL, '2024-12-02 22:30:45', '2024-12-02 22:30:45'),
(279, 'App\\Models\\User', 2, 'dev-access', '4732960fc729b9ddb39ddcf1739a08ed25e0a21c5eb791bc6a7221c94c782cab', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:11', '2024-12-02 22:31:11'),
(280, 'App\\Models\\User', 2, 'dev-access', '913779d52a5a7217a9ea28bff2daedfec5defaa39cca6b54f278964699988464', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:15', '2024-12-02 22:31:15'),
(281, 'App\\Models\\User', 2, 'dev-access', '2fd6ca9f08323ca331fe01f638f307a0c5f319ef05bff70fa1f136cac3ca7093', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:25', '2024-12-02 22:31:25'),
(282, 'App\\Models\\User', 2, 'dev-access', '53d6f31adde1b15d70c1f70ead8727dcbe5525de06358778e8b0a176b7514b5a', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:41', '2024-12-02 22:31:41'),
(283, 'App\\Models\\User', 2, 'dev-access', '08c2e92ad0ddaf2944be5a19821f147a1174a172cac7e3a50a238432a0440f85', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:42', '2024-12-02 22:31:42'),
(284, 'App\\Models\\User', 2, 'dev-access', '672c02cdca5a0cb65ca5bbb922952382b4564c00def689ec6a74519582f39cde', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:44', '2024-12-02 22:31:44'),
(285, 'App\\Models\\User', 2, 'dev-access', '32e3e2011957039c6baea4a9fb67c368a97651f32e9ecdc5af0c3bd487d85950', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:52', '2024-12-02 22:31:52'),
(286, 'App\\Models\\User', 2, 'dev-access', 'f43d01d86090f82da64d95e0240dbac56e35122ce3bff70fea0fc01019b51820', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:52', '2024-12-02 22:31:52'),
(287, 'App\\Models\\User', 2, 'dev-access', 'f3abb766cad9fade5b390d36365909bb31dbff164f782fa85fe2c0e866c49cde', '[\"*\"]', NULL, NULL, '2024-12-02 22:31:58', '2024-12-02 22:31:58'),
(288, 'App\\Models\\User', 2, 'dev-access', '1bc5d62dc8c463e03ba5d2d0a5a6ba7c110a27df3322fb6fceb20567d4d2eeb2', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:02', '2024-12-02 22:32:02'),
(289, 'App\\Models\\User', 2, 'dev-access', 'a7db96280d1f7d620f0ae8cd37bfeea5c65bb56995c1e3948c51e35453a7446b', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:09', '2024-12-02 22:32:09'),
(290, 'App\\Models\\User', 2, 'dev-access', 'cb3388450f141e4b9b49f87814c4586d42dad2eb2907b0486239d62db89ed368', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:09', '2024-12-02 22:32:09'),
(291, 'App\\Models\\User', 2, 'dev-access', '1d406c264384080e871e07933541eb75143be7085ccd936453dd17a4bef24f47', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:13', '2024-12-02 22:32:13'),
(292, 'App\\Models\\User', 2, 'dev-access', 'd43bd76c40ced94a11047316bdcad64d3e9c47febe9213d7bc4626708f0c72d6', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:27', '2024-12-02 22:32:27'),
(293, 'App\\Models\\User', 2, 'dev-access', 'fe57797439853e1538700304290da29e4927d7263b151c1fde73a2a518fc20c6', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:32', '2024-12-02 22:32:32'),
(294, 'App\\Models\\User', 2, 'dev-access', 'ac5838683cb5b4bd82adc588c1229dbb2c6a0be74c75237234b68c1066e293b5', '[\"*\"]', NULL, NULL, '2024-12-02 22:32:35', '2024-12-02 22:32:35'),
(295, 'App\\Models\\User', 2, 'dev-access', '62490a669482613bd4e5fd798362b50fe3777096768c825e03426eca6ed95f6c', '[\"*\"]', NULL, NULL, '2024-12-02 22:51:44', '2024-12-02 22:51:44'),
(296, 'App\\Models\\User', 2, 'dev-access', '75fbefd71cb71138fdd94ff808379c33b2ba2be001c298a57334822424d8e5d6', '[\"*\"]', NULL, NULL, '2024-12-02 23:20:47', '2024-12-02 23:20:47'),
(297, 'App\\Models\\User', 2, 'dev-access', '203ac364ba4b52efc33cb7db5057158a54ece198dda32a89fb0a9b680e0d968b', '[\"*\"]', NULL, NULL, '2024-12-02 23:20:52', '2024-12-02 23:20:52'),
(298, 'App\\Models\\User', 2, 'dev-access', '67f98410c109213727735a04e2634eb747ec722e694478c71beef801ad71a43d', '[\"*\"]', NULL, NULL, '2024-12-02 23:37:01', '2024-12-02 23:37:01'),
(299, 'App\\Models\\User', 2, 'dev-access', '329f80b3ff199ba65c5564d14f8903e99a2d64848babc1abc19a63d1fc3c3b46', '[\"*\"]', NULL, NULL, '2024-12-02 23:37:17', '2024-12-02 23:37:17'),
(300, 'App\\Models\\User', 2, 'dev-access', '0d83c368aa2870b9c9f28c63460251299a26e7231d107beec89af3ab2f3b8d07', '[\"*\"]', NULL, NULL, '2024-12-02 23:38:34', '2024-12-02 23:38:34'),
(301, 'App\\Models\\User', 2, 'dev-access', 'c997568d024f5438d911c0e66697ad0fd21ea8945b89c0f90585ded0aa1995b2', '[\"*\"]', NULL, NULL, '2024-12-02 23:39:21', '2024-12-02 23:39:21'),
(302, 'App\\Models\\User', 2, 'dev-access', '878e70e6c117880cf3304b845c47fe20095a30a82977d000acd43d75490f72a8', '[\"*\"]', NULL, NULL, '2024-12-02 23:39:22', '2024-12-02 23:39:22'),
(303, 'App\\Models\\User', 2, 'dev-access', '2b262c6447232628998e04d35099ff499d857758da20dd7be4ee0834e01642cd', '[\"*\"]', NULL, NULL, '2024-12-02 23:39:32', '2024-12-02 23:39:32'),
(304, 'App\\Models\\User', 2, 'dev-access', 'd8dcabe10b5edc60ac302cdf7b890014c7241369a867e94e7b7be0f1d538ebae', '[\"*\"]', NULL, NULL, '2024-12-02 23:39:58', '2024-12-02 23:39:58'),
(305, 'App\\Models\\User', 2, 'dev-access', '4fde0f96665edc7dfd466996705ea7fff28cd3c406cb45f0dc8634e5e2c118f5', '[\"*\"]', NULL, NULL, '2024-12-02 23:40:04', '2024-12-02 23:40:04'),
(306, 'App\\Models\\User', 2, 'dev-access', '0b6a593edcf5c5b2a66b2145b456c9b720aab181cfa7b62a98f4b6613075d3d0', '[\"*\"]', NULL, NULL, '2024-12-02 23:40:14', '2024-12-02 23:40:14'),
(307, 'App\\Models\\User', 2, 'dev-access', '8f02dc112383a3468df73225aef0e21a161acbb85f8ac66f04d1d9c529e8a8cc', '[\"*\"]', NULL, NULL, '2024-12-02 23:40:15', '2024-12-02 23:40:15'),
(308, 'App\\Models\\User', 2, 'dev-access', '827d97310d828df1b3e612bfc2c95d94bbdb40572d319157517aae0433f22c05', '[\"*\"]', NULL, NULL, '2024-12-02 23:40:15', '2024-12-02 23:40:15'),
(309, 'App\\Models\\User', 2, 'dev-access', 'bc95a53b75ed3e49ca4a02d78f8d2b48b36ceb260893e043cd8da01117906694', '[\"*\"]', NULL, NULL, '2024-12-02 23:40:57', '2024-12-02 23:40:57'),
(310, 'App\\Models\\User', 2, 'dev-access', '7e0273205d057af3eae7b1ab883a04d7530894a775bfee9cbc05cdc7bea1b450', '[\"*\"]', NULL, NULL, '2024-12-02 23:40:57', '2024-12-02 23:40:57'),
(311, 'App\\Models\\User', 2, 'dev-access', 'b78d767520a072626bdea773279ee6733c7e2378c49f9be5854034dde5edb2b6', '[\"*\"]', NULL, NULL, '2024-12-02 23:41:13', '2024-12-02 23:41:13'),
(312, 'App\\Models\\User', 2, 'dev-access', 'a305c51b5580ded3ef0812ed08885b0dd53ae5e1fa6b0026c740cb46036d429e', '[\"*\"]', NULL, NULL, '2024-12-02 23:43:23', '2024-12-02 23:43:23'),
(313, 'App\\Models\\User', 2, 'dev-access', '457dd2f281f7f4d1710760344eedafa841be83c80f6941334eba5d8b49652b18', '[\"*\"]', NULL, NULL, '2024-12-02 23:43:25', '2024-12-02 23:43:25'),
(314, 'App\\Models\\User', 2, 'dev-access', '01e4e0e4854aa7048e2499b185be69f9e93762cd690fdb43c3f374f8c8acaeba', '[\"*\"]', NULL, NULL, '2024-12-02 23:43:42', '2024-12-02 23:43:42'),
(315, 'App\\Models\\User', 2, 'dev-access', '01082283a042a8df27cfb0a105893678cdca30f23000a77808d291c2458e5f5a', '[\"*\"]', NULL, NULL, '2024-12-02 23:43:42', '2024-12-02 23:43:42'),
(316, 'App\\Models\\User', 2, 'dev-access', '9c0e7b3a462d8aaba08cc0ed6199094ae2e02b8a8e6cd440d0fe16d36cb48910', '[\"*\"]', NULL, NULL, '2024-12-02 23:44:27', '2024-12-02 23:44:27'),
(317, 'App\\Models\\User', 2, 'dev-access', '4c30456e0e7c8c116d76f9978b5a45aee8e78f8572b6b5e4cfec9a9b402aa397', '[\"*\"]', NULL, NULL, '2024-12-02 23:44:28', '2024-12-02 23:44:28'),
(318, 'App\\Models\\User', 2, 'dev-access', 'a5f1ea4b3ca549ea06bfc8ac11ba98b91e83a5baf0a484ddff3db44249926adb', '[\"*\"]', NULL, NULL, '2024-12-02 23:44:39', '2024-12-02 23:44:39'),
(319, 'App\\Models\\User', 2, 'dev-access', '762b00b54aac5bc8f15c6b7d0aeffc781c33d58a612e5e71d70d39cadabc29b1', '[\"*\"]', NULL, NULL, '2024-12-02 23:44:40', '2024-12-02 23:44:40'),
(320, 'App\\Models\\User', 2, 'dev-access', 'd7ab26ee6aee2bc0742b0f73245b6216e9b5c996b67474df83b7382f3f050f6d', '[\"*\"]', NULL, NULL, '2024-12-02 23:44:58', '2024-12-02 23:44:58'),
(321, 'App\\Models\\User', 2, 'dev-access', 'd9646bdcf8c12ae5d83faaca979b9dc698daeb7fd7f2d34adc5c3db4b2ab5afc', '[\"*\"]', NULL, NULL, '2024-12-02 23:45:53', '2024-12-02 23:45:53'),
(322, 'App\\Models\\User', 2, 'dev-access', '5e2b257dff72419108043f5f4dca9e0777498963d9dc8703b39ff7f3063a55ae', '[\"*\"]', NULL, NULL, '2024-12-02 23:45:53', '2024-12-02 23:45:53'),
(323, 'App\\Models\\User', 2, 'dev-access', '6c40c5a5374d29a9a67c81037f5ee74cbf7f2ab247fecd68439d866ddea40e50', '[\"*\"]', NULL, NULL, '2024-12-02 23:46:03', '2024-12-02 23:46:03'),
(324, 'App\\Models\\User', 2, 'dev-access', 'c05cc1718cc331e36a52d324998742d18eea3e5bbd006de4b12b0ed5e5ced010', '[\"*\"]', NULL, NULL, '2024-12-02 23:46:05', '2024-12-02 23:46:05'),
(325, 'App\\Models\\User', 2, 'dev-access', '51d0f008394b090b485bb8ca3cad4b71f20e7e16da6a0b9ccf69cbfaa2a870d2', '[\"*\"]', NULL, NULL, '2024-12-02 23:47:19', '2024-12-02 23:47:19'),
(326, 'App\\Models\\User', 2, 'dev-access', '0a30def12f37f4a9adb4f81cb3e0bde6e6429aa173b406a84d7aca1c9aefefc5', '[\"*\"]', NULL, NULL, '2024-12-02 23:47:35', '2024-12-02 23:47:35'),
(327, 'App\\Models\\User', 2, 'dev-access', '38cdc130c5a24d391ff06afbdf2ceeb61f14e0e5f386c3d853383b3adc5857ba', '[\"*\"]', NULL, NULL, '2024-12-02 23:47:38', '2024-12-02 23:47:38'),
(328, 'App\\Models\\User', 2, 'dev-access', '4752b60299a3bb17315c5a0791e7e8e0b0093a7d3b820ba90305145d388e78f2', '[\"*\"]', NULL, NULL, '2024-12-02 23:47:38', '2024-12-02 23:47:38'),
(329, 'App\\Models\\User', 2, 'dev-access', 'c79e419cf0412b520ff29fdd4863cb5b2b81361eed0406ce7c47a9de5f66df10', '[\"*\"]', NULL, NULL, '2024-12-02 23:48:49', '2024-12-02 23:48:49'),
(330, 'App\\Models\\User', 2, 'dev-access', 'fb4672620581995b89bbe7c62db8d0fa14128e09de59726dfdaf78166a5b7600', '[\"*\"]', NULL, NULL, '2024-12-02 23:48:50', '2024-12-02 23:48:50'),
(331, 'App\\Models\\User', 2, 'dev-access', 'fa8d1c6fe427d3ba944d60bc529193e559117da1af9d5fc274addd4b7a8f152c', '[\"*\"]', NULL, NULL, '2024-12-02 23:48:53', '2024-12-02 23:48:53'),
(332, 'App\\Models\\User', 2, 'dev-access', '17c00847e73b376624ec388224283a06182b63c90d11e37daa0699aab31ac45d', '[\"*\"]', NULL, NULL, '2024-12-02 23:48:55', '2024-12-02 23:48:55'),
(333, 'App\\Models\\User', 2, 'dev-access', '50b0f4fdb32f8d5bbc6b70e64e669cdd483ef582beecc8997dc5e7cc08a92a4b', '[\"*\"]', NULL, NULL, '2024-12-02 23:48:56', '2024-12-02 23:48:56'),
(334, 'App\\Models\\User', 2, 'dev-access', '1f830490c7fc6f3e377be2277f3959861e8c4325d275c74f9fdc482f577d06ec', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:07', '2024-12-02 23:49:07'),
(335, 'App\\Models\\User', 2, 'dev-access', '15b1e3aca953f838f7521e97688a81d60f6c30eaf73374f2a8741cb3640ee177', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:33', '2024-12-02 23:49:33'),
(336, 'App\\Models\\User', 2, 'dev-access', '0c2ef83bbd47c97df300bb6f187622e166d6ec8e23a714d7c801ac92d595097c', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:36', '2024-12-02 23:49:36'),
(337, 'App\\Models\\User', 2, 'dev-access', 'b684b532bc3a4838182864534e8ddca4499f1f221a01da042182e2040c3ae37e', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:41', '2024-12-02 23:49:41'),
(338, 'App\\Models\\User', 2, 'dev-access', '32902f4a13acf9587b9836df1a843f60bc8ff71184e60ccf3d5c0896b7bff460', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:41', '2024-12-02 23:49:41'),
(339, 'App\\Models\\User', 2, 'dev-access', 'c3448f8040a5cb2bf328cc25e54bbdebd5d9984c04f6b289eda8e46468139128', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:42', '2024-12-02 23:49:42'),
(340, 'App\\Models\\User', 2, 'dev-access', '0b37c66ca7fca51da15be7ac14cc2e6f17df121a465a51b6f8da85a51d8bf583', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:47', '2024-12-02 23:49:47'),
(341, 'App\\Models\\User', 2, 'dev-access', 'edce83b6af079457db7aa6154caa08b5227594f171c2f44c4d5d69eafddaf703', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:50', '2024-12-02 23:49:50'),
(342, 'App\\Models\\User', 2, 'dev-access', '003239bb160a7e900d1ff25fc819c4970a02ff32e0ff19648b4ef297139cfcda', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:51', '2024-12-02 23:49:51'),
(343, 'App\\Models\\User', 2, 'dev-access', '1e5223e9efeafe10819fbde3025aa38b1c7f9bfd9be7c4e5693ab16ac756fd0f', '[\"*\"]', NULL, NULL, '2024-12-02 23:49:52', '2024-12-02 23:49:52'),
(344, 'App\\Models\\User', 2, 'dev-access', 'e6fe148c3b0fd5a467be62fbb0b03ac1b5a6efabdf61025634312e9c661ad175', '[\"*\"]', NULL, NULL, '2024-12-02 23:50:01', '2024-12-02 23:50:01'),
(345, 'App\\Models\\User', 2, 'dev-access', '85f27f72ae8a3e8355c60eaf1f9f32ef445133c9d7d4b19a037ca9a99bc9ba5b', '[\"*\"]', NULL, NULL, '2024-12-02 23:50:06', '2024-12-02 23:50:06'),
(346, 'App\\Models\\User', 2, 'dev-access', '990f3478f2a7ea3c03b85ffe8a391e3bb61fef39e872df22d780c13aead1bcca', '[\"*\"]', NULL, NULL, '2024-12-02 23:50:47', '2024-12-02 23:50:47'),
(347, 'App\\Models\\User', 2, 'dev-access', 'a5cc082aad16cf02692950fc7267d86c20e5e74358881660ab11837bb58714cf', '[\"*\"]', NULL, NULL, '2024-12-02 23:51:10', '2024-12-02 23:51:10'),
(348, 'App\\Models\\User', 2, 'dev-access', 'ffccdcdfb56177699379919fcfad93ff49edad9b98c384fe66898ad56ae60beb', '[\"*\"]', NULL, NULL, '2024-12-02 23:51:11', '2024-12-02 23:51:11'),
(349, 'App\\Models\\User', 2, 'dev-access', '4f2e885512ca6bfb044c660d16d1f85cdb90f10f510c525e34ae46bd86c7e2de', '[\"*\"]', NULL, NULL, '2024-12-02 23:51:11', '2024-12-02 23:51:11'),
(350, 'App\\Models\\User', 2, 'dev-access', 'cd4067dc3bfdf5c2f72de437b59256bced9b7994efbb5e77410608e718281b48', '[\"*\"]', NULL, NULL, '2024-12-02 23:51:25', '2024-12-02 23:51:25'),
(351, 'App\\Models\\User', 2, 'dev-access', '50646e29d4adcefd058e8c1903cea0ff81969163aa3d89dff2e9659992e27879', '[\"*\"]', NULL, NULL, '2024-12-02 23:53:24', '2024-12-02 23:53:24'),
(352, 'App\\Models\\User', 2, 'dev-access', 'f6522c1a726e11c3c2b6abe33131e1f2eaa329549ed717d58ffaf888473458b4', '[\"*\"]', NULL, NULL, '2024-12-02 23:53:48', '2024-12-02 23:53:48'),
(353, 'App\\Models\\User', 2, 'dev-access', '6755bc675b268be777bb68af73d18513e0aeb6cafd8107519302bb2a5cbd12ad', '[\"*\"]', NULL, NULL, '2024-12-02 23:53:49', '2024-12-02 23:53:49'),
(354, 'App\\Models\\User', 2, 'dev-access', '3465a01cbf09eda21173efde6aac3e0298c97d3248fe5f48d10f9a3d05c26a6c', '[\"*\"]', NULL, NULL, '2024-12-02 23:53:50', '2024-12-02 23:53:50'),
(355, 'App\\Models\\User', 2, 'dev-access', '17c31eb0b0f26f09f055ecc8ddc775e39c7237b558ef49a331c89c063fd472b3', '[\"*\"]', NULL, NULL, '2024-12-02 23:53:59', '2024-12-02 23:53:59'),
(356, 'App\\Models\\User', 2, 'dev-access', 'bed0113f391ef0be79007ef9fc4b3855c7ee9c47dff1fe61a02719c6632c48e6', '[\"*\"]', NULL, NULL, '2024-12-02 23:54:03', '2024-12-02 23:54:03'),
(357, 'App\\Models\\User', 2, 'dev-access', 'ca7f67fdb15b8279b4c63ade22efac419e4066102cd0e424fe634c223546c821', '[\"*\"]', NULL, NULL, '2024-12-02 23:54:16', '2024-12-02 23:54:16'),
(358, 'App\\Models\\User', 2, 'dev-access', 'da03f8e9e13e08bf645fc0d3540b82e27f2fc426ef5668a1ee3ccc8aa180d917', '[\"*\"]', NULL, NULL, '2024-12-02 23:54:17', '2024-12-02 23:54:17'),
(359, 'App\\Models\\User', 2, 'dev-access', 'f5ef47f57e9f2a61f755c8c3f0b1b2573e7191a91d93762baeec52d7d73a5bba', '[\"*\"]', NULL, NULL, '2024-12-02 23:54:18', '2024-12-02 23:54:18'),
(360, 'App\\Models\\User', 2, 'dev-access', '36915cb24c2b67f79da1ffbec2b3e3499ea26098899470566f1ddeefb559cff6', '[\"*\"]', NULL, NULL, '2024-12-02 23:54:51', '2024-12-02 23:54:51'),
(361, 'App\\Models\\User', 2, 'dev-access', '7481543ffa9eb14b8007a1688d10d3827711292298daf54a06d81b947edae4d2', '[\"*\"]', NULL, NULL, '2024-12-02 23:55:32', '2024-12-02 23:55:32'),
(362, 'App\\Models\\User', 2, 'dev-access', '578ac6bc98ea564d15c19169043a85089df13c353b4d1e14068c1a1d2f32b693', '[\"*\"]', NULL, NULL, '2024-12-02 23:55:37', '2024-12-02 23:55:37'),
(363, 'App\\Models\\User', 2, 'dev-access', 'f663fe9e9d2fbff12fe7380564b45a98a3437059ae0829abb616d7216590da06', '[\"*\"]', NULL, NULL, '2024-12-02 23:56:33', '2024-12-02 23:56:33'),
(364, 'App\\Models\\User', 2, 'dev-access', '7b602dce32a706d24d792fdb17458d817b5055c3b0102ce6e02efead35ed5131', '[\"*\"]', NULL, NULL, '2024-12-02 23:56:33', '2024-12-02 23:56:33'),
(365, 'App\\Models\\User', 2, 'dev-access', '2a83b72e1ddbfd8a2bc89601411acf3cccf63e4c96351809568f7d59a5ff345b', '[\"*\"]', NULL, NULL, '2024-12-02 23:56:45', '2024-12-02 23:56:45'),
(366, 'App\\Models\\User', 2, 'dev-access', 'faf287f919c3e3ee201251ea8e2251962cb7d6fbc73dca22ee4d14fd456a7d93', '[\"*\"]', NULL, NULL, '2024-12-02 23:56:52', '2024-12-02 23:56:52'),
(367, 'App\\Models\\User', 2, 'dev-access', 'd133c3a91595f02ee07177c808f7b7372eda28e660e9f8a8abf2b811c4bdc5f9', '[\"*\"]', NULL, NULL, '2024-12-02 23:56:56', '2024-12-02 23:56:56'),
(368, 'App\\Models\\User', 2, 'dev-access', '14c10374dc9d5b7570f324f537b0c53e844dee15183b434d4463ff6c139a0f5b', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:06', '2024-12-02 23:57:06'),
(369, 'App\\Models\\User', 2, 'dev-access', 'c3f298ef9eb68a042dc827d71c823430624b8824f5c86c0722f29f606e73fb05', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:07', '2024-12-02 23:57:07'),
(370, 'App\\Models\\User', 2, 'dev-access', '05580fbb60afb73d9d3457631034574ff4e6c4e177eac95301f528a01fcf14f7', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:07', '2024-12-02 23:57:07'),
(371, 'App\\Models\\User', 2, 'dev-access', 'a810b7c3d9123a22ec3e50ce34319ffa8e5e79129d975db6db35d35cf5353f4f', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:25', '2024-12-02 23:57:25'),
(372, 'App\\Models\\User', 2, 'dev-access', '5cd4da81f970b96175258bdce6b40ad8af44f338005efbaea1f55108237b5de4', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:49', '2024-12-02 23:57:49'),
(373, 'App\\Models\\User', 2, 'dev-access', '221f2167dc99e5670ec94dcb71c13e35231a43db03d51e7f6bd6ce094b675a12', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:50', '2024-12-02 23:57:50'),
(374, 'App\\Models\\User', 2, 'dev-access', '0fb36a81c6a7b77ef0349196212da7caba7557b611e757930fb54393cc9027ec', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:50', '2024-12-02 23:57:50'),
(375, 'App\\Models\\User', 2, 'dev-access', 'c38a43725d84df64e5fbe55621c694a13ecd13b031e66ab31552473eafda594a', '[\"*\"]', NULL, NULL, '2024-12-02 23:57:51', '2024-12-02 23:57:51'),
(376, 'App\\Models\\User', 2, 'dev-access', '3bbf8d76458e08dabd9ad69cdfc82ee870ea3a4edf802a0714ff0a21796caab3', '[\"*\"]', NULL, NULL, '2024-12-02 23:59:22', '2024-12-02 23:59:22'),
(377, 'App\\Models\\User', 2, 'dev-access', 'c6cdc2455e3e0142007a0786a19aae704780c66dd64263e15ea34808bd1c59dd', '[\"*\"]', NULL, NULL, '2024-12-03 00:01:19', '2024-12-03 00:01:19'),
(378, 'App\\Models\\User', 2, 'dev-access', '9a23fab91b96c59db58d3bd8259a78f2594d063559ba2c328aba562c1c04d3af', '[\"*\"]', NULL, NULL, '2024-12-03 00:01:56', '2024-12-03 00:01:56'),
(379, 'App\\Models\\User', 2, 'dev-access', '903b3ec24c8b82c0f142c454020dc68a8a3f001bb3f3d8b61f9da42faf8bd821', '[\"*\"]', NULL, NULL, '2024-12-03 00:02:39', '2024-12-03 00:02:39'),
(380, 'App\\Models\\User', 2, 'dev-access', '1dd53bff87640c670a4d3f25e02091a439181a828899a3af6a79317121e8a089', '[\"*\"]', NULL, NULL, '2024-12-03 00:02:39', '2024-12-03 00:02:39'),
(381, 'App\\Models\\User', 2, 'dev-access', '7315b2b4b12089e854a1b33a83f2700d8ed15eff9a3f450f8ad5cfdd5e641aa6', '[\"*\"]', NULL, NULL, '2024-12-03 00:04:41', '2024-12-03 00:04:41'),
(382, 'App\\Models\\User', 2, 'dev-access', 'c0bbbf9267b3acf60fb66beb5f61107db15f8816f07083f83d61d910cf92b1e0', '[\"*\"]', NULL, NULL, '2024-12-03 00:05:32', '2024-12-03 00:05:32'),
(383, 'App\\Models\\User', 2, 'dev-access', '434d8b4c389190d37dd9044310735007b72f4fe3bf1481600047f022d7819c68', '[\"*\"]', NULL, NULL, '2024-12-03 00:05:41', '2024-12-03 00:05:41'),
(384, 'App\\Models\\User', 2, 'dev-access', 'b50931dfa9ac97507730fb823bd6870fcb14e35c2a14c9b998715b9363e60508', '[\"*\"]', NULL, NULL, '2024-12-03 00:05:48', '2024-12-03 00:05:48'),
(385, 'App\\Models\\User', 2, 'dev-access', '81f163ac8fbc3a9cdab40f21768957e6492d9874f3446aec894a6e6eb18b0742', '[\"*\"]', NULL, NULL, '2024-12-03 00:06:01', '2024-12-03 00:06:01'),
(386, 'App\\Models\\User', 2, 'dev-access', '30f5ae94cfaf6bb080216e547a05c7f86b3e0b480435f493661cdb8467bd67f7', '[\"*\"]', NULL, NULL, '2024-12-03 00:12:42', '2024-12-03 00:12:42'),
(387, 'App\\Models\\User', 2, 'dev-access', 'da3e5e3b2428a83f3f9cf3b7e79f6452cdf50915763f087a9981742e28601aed', '[\"*\"]', NULL, NULL, '2024-12-03 00:12:44', '2024-12-03 00:12:44'),
(388, 'App\\Models\\User', 2, 'dev-access', '9436b195e30e91695f389579a58e1fca2b9f48c8a67a7e98bc53568fc165d421', '[\"*\"]', NULL, NULL, '2024-12-03 00:13:14', '2024-12-03 00:13:14'),
(389, 'App\\Models\\User', 2, 'dev-access', 'd321ed2d2d309a5944d1adb6fe47658dd7e4b4cf9d7e8f9bc5c2317c073b7dc4', '[\"*\"]', NULL, NULL, '2024-12-03 00:13:33', '2024-12-03 00:13:33'),
(390, 'App\\Models\\User', 2, 'dev-access', 'f1c75cd9a50705950c1456256f88674e7af20285a06e721c37b363171262b675', '[\"*\"]', NULL, NULL, '2024-12-03 00:13:53', '2024-12-03 00:13:53'),
(391, 'App\\Models\\User', 2, 'dev-access', '467a5aa60bff2c7b8487485b90feef71a3d6090979fc61a688e1783f4d4bde24', '[\"*\"]', NULL, NULL, '2024-12-03 00:14:23', '2024-12-03 00:14:23'),
(392, 'App\\Models\\User', 2, 'dev-access', 'bf62e5caf1c2dbe0ea942112b7cd4edbab83cc587f8ec35612c301a56ca62242', '[\"*\"]', NULL, NULL, '2024-12-03 00:14:25', '2024-12-03 00:14:25'),
(393, 'App\\Models\\User', 2, 'dev-access', '4f8c55fa0e264014761f5c1c2dd5dcd6bec14cffc8034c8978b3411961e438b3', '[\"*\"]', NULL, NULL, '2024-12-03 00:14:28', '2024-12-03 00:14:28'),
(394, 'App\\Models\\User', 2, 'dev-access', '9ec788aa7a01bd937517f9f09c37ac8628bb0f9b8cc0eca55fc6ef8dca31a6b6', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:13', '2024-12-03 00:15:13'),
(395, 'App\\Models\\User', 2, 'dev-access', 'c970b51b2ff0dc0c48cc62d331987697996ed40f75d52e55aa066adc4402f790', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:27', '2024-12-03 00:15:27'),
(396, 'App\\Models\\User', 2, 'dev-access', '685170399d81d3be05740c2d2be855a7e388b674aeb687fd419de7a6b3c96db4', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:34', '2024-12-03 00:15:34'),
(397, 'App\\Models\\User', 2, 'dev-access', 'fdc6edae865d91d08f29c8969a51a97a04117d48c41372b13446161c3fb38307', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:43', '2024-12-03 00:15:43'),
(398, 'App\\Models\\User', 2, 'dev-access', '58cae2a6a92cc1bf9e40a848f8700cddfd7e3ef4137af32cb971d937dcb67e8e', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:44', '2024-12-03 00:15:44'),
(399, 'App\\Models\\User', 2, 'dev-access', 'f4009142ab69673b9cee8d6c69080c6863c14406bfca7f2b9aec1ed74f86cd0e', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:44', '2024-12-03 00:15:44'),
(400, 'App\\Models\\User', 2, 'dev-access', 'c0701dae93b6ac741a7169b3f55558a25e2a0efdb820e8e94918ddd8fb5ba3f8', '[\"*\"]', NULL, NULL, '2024-12-03 00:15:57', '2024-12-03 00:15:57'),
(401, 'App\\Models\\User', 2, 'dev-access', '44a5788255b2cf5c911a7684c871e7efb9c1c2b26b1f53066807345804bfe3c8', '[\"*\"]', NULL, NULL, '2024-12-03 00:16:46', '2024-12-03 00:16:46'),
(402, 'App\\Models\\User', 2, 'dev-access', '02db24c5517c8929b1e828916dd87c96de530342bf115d97edd149920071f166', '[\"*\"]', NULL, NULL, '2024-12-03 00:16:52', '2024-12-03 00:16:52'),
(403, 'App\\Models\\User', 2, 'dev-access', '6bb9a2350a87ffe0fa239ff61937ed5b6c204fa7e6758512b3ef507573d4f377', '[\"*\"]', NULL, NULL, '2024-12-03 00:16:53', '2024-12-03 00:16:53'),
(404, 'App\\Models\\User', 2, 'dev-access', '9a198f82232f7d023aebd0ec8f8f16a0e1e7d108e32fd7f76006db4dccf4c5cd', '[\"*\"]', NULL, NULL, '2024-12-03 00:17:04', '2024-12-03 00:17:04'),
(405, 'App\\Models\\User', 2, 'dev-access', 'fb9bc1f63246f8b8851c968e1632792cb88a9ebc7d220fbb1dd7229c705f0041', '[\"*\"]', NULL, NULL, '2024-12-03 00:17:26', '2024-12-03 00:17:26'),
(406, 'App\\Models\\User', 2, 'dev-access', '2371ecc4819c5f85dcecd65ad119a618603874f40c4bf237ec5926fafe5ca8bc', '[\"*\"]', NULL, NULL, '2024-12-03 00:17:39', '2024-12-03 00:17:39'),
(407, 'App\\Models\\User', 2, 'dev-access', '902a7778f70ec3fb540531dcef3daa9e2943e2611e522e1fe75d2af8254cb79a', '[\"*\"]', NULL, NULL, '2024-12-03 00:17:40', '2024-12-03 00:17:40'),
(408, 'App\\Models\\User', 2, 'dev-access', '13e5c273729a9d6fb3f66eb20a2a7506be476137167ddc8fd7415e242394739f', '[\"*\"]', NULL, NULL, '2024-12-03 00:17:59', '2024-12-03 00:17:59'),
(409, 'App\\Models\\User', 2, 'dev-access', 'b5cd00b22f0f1808683fce1318426ef20ece5c768f14a3cdf680f0451ad9d58a', '[\"*\"]', NULL, NULL, '2024-12-03 00:18:05', '2024-12-03 00:18:05'),
(410, 'App\\Models\\User', 2, 'dev-access', '72b209257b27c279de05e746e59aadee1a307a77cb939b9c8e9edccb15e0268e', '[\"*\"]', NULL, NULL, '2024-12-03 00:18:47', '2024-12-03 00:18:47'),
(411, 'App\\Models\\User', 2, 'dev-access', '7e8dc154eab87732914fc0f883045711a023e410c53606e5b07fcb2bf586319f', '[\"*\"]', NULL, NULL, '2024-12-03 00:18:50', '2024-12-03 00:18:50'),
(412, 'App\\Models\\User', 2, 'dev-access', '60b3eec0d3473d201fa069e2c5222f17ed493e4aa00f288464d7a32f0ed0139a', '[\"*\"]', NULL, NULL, '2024-12-03 00:19:21', '2024-12-03 00:19:21'),
(413, 'App\\Models\\User', 2, 'dev-access', 'b8c08bacbf968211fb3a7ecb372b8db2b5a3893d681a888d9789b7ecc7397095', '[\"*\"]', NULL, NULL, '2024-12-03 00:19:24', '2024-12-03 00:19:24'),
(414, 'App\\Models\\User', 2, 'dev-access', '6935d95dee40e52074e5e402803580e15d09068f5d7bf74cd27974c97f4c8336', '[\"*\"]', NULL, NULL, '2024-12-03 00:19:36', '2024-12-03 00:19:36'),
(415, 'App\\Models\\User', 2, 'dev-access', 'a3eeda0308f963ef0623cc50da3ac3bcad7828cf839d7cfc99e0b8c1ab859915', '[\"*\"]', NULL, NULL, '2024-12-03 00:20:19', '2024-12-03 00:20:19'),
(416, 'App\\Models\\User', 2, 'dev-access', 'c262d92f88f8feb15aab8a4e7585ea5132ce14fc542cd278f58925839072d343', '[\"*\"]', NULL, NULL, '2024-12-03 00:20:25', '2024-12-03 00:20:25'),
(417, 'App\\Models\\User', 2, 'dev-access', 'cf88af07992973aa154c0a3492053674a96c5d66f374c1da562987381fcdb74b', '[\"*\"]', NULL, NULL, '2024-12-03 00:20:36', '2024-12-03 00:20:36'),
(418, 'App\\Models\\User', 2, 'dev-access', 'ed2ed082db8afc5f17f1f4f23f25c749ae9f55c8208e7e866ad03f87e63e785b', '[\"*\"]', NULL, NULL, '2024-12-03 00:20:38', '2024-12-03 00:20:38'),
(419, 'App\\Models\\User', 2, 'dev-access', 'c6f4546edd1f73090887560276d113f0e332ad7f6fe40ab3131b708e859ff642', '[\"*\"]', NULL, NULL, '2024-12-03 00:21:07', '2024-12-03 00:21:07'),
(420, 'App\\Models\\User', 2, 'dev-access', 'f23bfcd9c1737c1d01725f322491080452c0c2a6d3b49463a8000586924d6925', '[\"*\"]', NULL, NULL, '2024-12-03 00:21:30', '2024-12-03 00:21:30'),
(421, 'App\\Models\\User', 2, 'dev-access', 'f8882aca58604ac0658b1def5a404028cdd5fedcf51eb1fbdbf0704c5f9627c8', '[\"*\"]', NULL, NULL, '2024-12-03 00:21:32', '2024-12-03 00:21:32'),
(422, 'App\\Models\\User', 2, 'dev-access', '44fcfa3233f1b22a7370ce04cdd4440e4b1e2afc6396ccd7fa1fab67181a7921', '[\"*\"]', NULL, NULL, '2024-12-03 00:21:58', '2024-12-03 00:21:58'),
(423, 'App\\Models\\User', 2, 'dev-access', '086251832ecdffbe14e2fe6addadc152b73f040d36d92952cf175a241d459d03', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:02', '2024-12-03 00:22:02'),
(424, 'App\\Models\\User', 2, 'dev-access', 'c0892f757e9a1e585ac344f1875b3146b3375e0066e2c9d009c73b82e50ac32f', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:07', '2024-12-03 00:22:07'),
(425, 'App\\Models\\User', 2, 'dev-access', '6de5571ff15c976b79feb3fe557226d6e2b381aa9975de447a0739d64b81fca3', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:15', '2024-12-03 00:22:15'),
(426, 'App\\Models\\User', 2, 'dev-access', 'd5bf1d9b6ab992688d6aafd7dba063b8a70355708452e4062f29907583654f96', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:27', '2024-12-03 00:22:27'),
(427, 'App\\Models\\User', 2, 'dev-access', '5061c0fae5328a476c415b35c75db50c35004fb5f30969beb9dec5f8fb2819d1', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:31', '2024-12-03 00:22:31'),
(428, 'App\\Models\\User', 2, 'dev-access', '34d7879c2a8ab6020bd299f72151557a0537b65a2528d3eeefbda6ab53be0f04', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:33', '2024-12-03 00:22:33'),
(429, 'App\\Models\\User', 2, 'dev-access', 'adc2673f56f58c15336dc2cbe069523742bdd3f8906f916d1fdc373e5e943055', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:37', '2024-12-03 00:22:37'),
(430, 'App\\Models\\User', 2, 'dev-access', 'b880c2ebc27ec32a897432591735d9255bc2c0dac6d30bc2ac5885568fb71479', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:38', '2024-12-03 00:22:38'),
(431, 'App\\Models\\User', 2, 'dev-access', '0d9eee223ebc218d51d57dfd9e6c46bc9cd28d63e28b4bf36c8aca06145aedca', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:40', '2024-12-03 00:22:40'),
(432, 'App\\Models\\User', 2, 'dev-access', '1c6d70ab6a73bec3eb1b4a39b944a27ec4e90c87e1114adf1742f145a437f7af', '[\"*\"]', NULL, NULL, '2024-12-03 00:22:40', '2024-12-03 00:22:40'),
(433, 'App\\Models\\User', 2, 'dev-access', '8b371b087222656a968940b1e2d36dcfbfbad9808466e8080c6db439185ba25f', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:14', '2024-12-03 00:23:14'),
(434, 'App\\Models\\User', 2, 'dev-access', 'cbbfbda7284c8d4cbc00e49cb13825dda0edc087ef33eb53bc2b2a8cdb1b20b3', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:27', '2024-12-03 00:23:27'),
(435, 'App\\Models\\User', 2, 'dev-access', '593643543b6406e7f53a73ba166a281e9a96edaa2d943f9ed54d61134ac0d72b', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:48', '2024-12-03 00:23:48'),
(436, 'App\\Models\\User', 2, 'dev-access', 'abbc4ea6589b5d276e9fb2ef883f394b202461776ff6d5580ffbc661fa03cc5a', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:51', '2024-12-03 00:23:51'),
(437, 'App\\Models\\User', 2, 'dev-access', '45fd2dedb6f59204d0d45d35d5427d6e1903c4020bbe76f1befdc3c299b53a26', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:53', '2024-12-03 00:23:53'),
(438, 'App\\Models\\User', 2, 'dev-access', '5745af1ddfdac6a92eb8151dba11d831d63f5cbc8e9295db2709100ba4659ef4', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:54', '2024-12-03 00:23:54'),
(439, 'App\\Models\\User', 2, 'dev-access', '7afefef40312c555dcd59ef0c8938b3a0e10396e401673ec55d4324a00ed29e3', '[\"*\"]', NULL, NULL, '2024-12-03 00:23:54', '2024-12-03 00:23:54'),
(440, 'App\\Models\\User', 2, 'dev-access', '4133d4ee2611b6c595bcc650059466d74f9e498c9f1d855e077088edf332cc09', '[\"*\"]', NULL, NULL, '2024-12-03 00:24:01', '2024-12-03 00:24:01'),
(441, 'App\\Models\\User', 2, 'dev-access', 'df70b12cff10f2f52455c206dbed08098bc815fd1294def2beb9b922e4614134', '[\"*\"]', NULL, NULL, '2024-12-03 00:25:11', '2024-12-03 00:25:11'),
(442, 'App\\Models\\User', 2, 'dev-access', '532da4906c98ebdf2a8ba3d26473e7e3e478b1d3ba91b5dc30d6624c57072ec3', '[\"*\"]', NULL, NULL, '2024-12-03 00:25:34', '2024-12-03 00:25:34'),
(443, 'App\\Models\\User', 2, 'dev-access', 'a80b3527cce165c5caebb067baf5b9cdf7de4095a1fa915e639d0276811ccf41', '[\"*\"]', NULL, NULL, '2024-12-03 00:25:49', '2024-12-03 00:25:49'),
(444, 'App\\Models\\User', 2, 'dev-access', 'b5cbcbc48cce74520c4bd929c63671f516a81034e820711900fe7dee4a56a912', '[\"*\"]', NULL, NULL, '2024-12-03 00:25:52', '2024-12-03 00:25:52'),
(445, 'App\\Models\\User', 2, 'dev-access', 'fdb8cd118d898b0e4759aa90517c8bcdaa0cf5160b81fbc63c672620e7a75b76', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:02', '2024-12-03 00:27:02'),
(446, 'App\\Models\\User', 2, 'dev-access', '6862f2f63a0f728e53aefb0f7a2dc94ff3abd89669e1a4c697456a5b3e328912', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:09', '2024-12-03 00:27:09'),
(447, 'App\\Models\\User', 2, 'dev-access', 'b77d449b22ff576ab97f7fd73bf1ef558487d14092251b1ba78caa474fc065d2', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:18', '2024-12-03 00:27:18'),
(448, 'App\\Models\\User', 2, 'dev-access', 'cdd4185c001b08a055ac0fb5c05553852c38340ea9e24f84fb2ce492f729878c', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:36', '2024-12-03 00:27:36'),
(449, 'App\\Models\\User', 2, 'dev-access', '548ab07cd3b50ae32df0de1e8cb29fdbed667c51b5354b4e5bf69f8c274b5ad3', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:39', '2024-12-03 00:27:39'),
(450, 'App\\Models\\User', 2, 'dev-access', '7d1d154ec08df165f79fefd9f84a5cecb164dea58e3752c2783f69a4f808fa33', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:52', '2024-12-03 00:27:52'),
(451, 'App\\Models\\User', 2, 'dev-access', 'fb38a4e98bba94d3aaea68f6f19403aa7ca552610c0edb33756c1854ba197055', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:54', '2024-12-03 00:27:54'),
(452, 'App\\Models\\User', 2, 'dev-access', '19884296fadee748669c9251689cd29eee085120513cd471300dc693bb55c518', '[\"*\"]', NULL, NULL, '2024-12-03 00:27:55', '2024-12-03 00:27:55'),
(453, 'App\\Models\\User', 2, 'dev-access', '5d4f44bac438ed9654b435777dc727cffe09d9488eedf53211b64b03b8718e6f', '[\"*\"]', NULL, NULL, '2024-12-03 00:28:38', '2024-12-03 00:28:38'),
(454, 'App\\Models\\User', 2, 'dev-access', '40c476a9d6096cfcf55c2e44b3878c5fa1c62ac3ceba4b112befc2e9f5f836d4', '[\"*\"]', NULL, NULL, '2024-12-03 00:28:39', '2024-12-03 00:28:39'),
(455, 'App\\Models\\User', 2, 'dev-access', '89a6cf4a6eb8aacc0019e2055be01ff0cc4e6a17b6b84065cc6dd73e2f147e03', '[\"*\"]', NULL, NULL, '2024-12-03 00:29:07', '2024-12-03 00:29:07'),
(456, 'App\\Models\\User', 2, 'dev-access', '1567c73daaeaffd994bc0f013a8610fe0a9c90303ff20731285e2deffb5912e3', '[\"*\"]', NULL, NULL, '2024-12-03 00:29:23', '2024-12-03 00:29:23'),
(457, 'App\\Models\\User', 2, 'dev-access', 'ed6b5b4bfbd8487da2b242213e03767c9049315c68afae14566db2b57d05eb21', '[\"*\"]', NULL, NULL, '2024-12-03 00:29:29', '2024-12-03 00:29:29'),
(458, 'App\\Models\\User', 2, 'dev-access', 'ef4cfabcc52c246292c11b46814e91626c64b1a42b1cf5ec25f8d4b8123bb133', '[\"*\"]', NULL, NULL, '2024-12-03 00:29:44', '2024-12-03 00:29:44'),
(459, 'App\\Models\\User', 2, 'dev-access', '4cd57baba5b6f07ec0dd0939f51619c870278ea8695ce2001e418a65c21e8b03', '[\"*\"]', NULL, NULL, '2024-12-03 00:29:53', '2024-12-03 00:29:53'),
(460, 'App\\Models\\User', 2, 'dev-access', 'db2a98efa3a5e3d3f09fddea223a0a8583a235f4c93ca0c0beb837c378d11b62', '[\"*\"]', NULL, NULL, '2024-12-03 00:29:59', '2024-12-03 00:29:59'),
(461, 'App\\Models\\User', 2, 'dev-access', '96d4ab5b0ab39ca559a5a8bb3cc57cc06b357202584573dbc6617a4f4015c260', '[\"*\"]', NULL, NULL, '2024-12-03 00:30:14', '2024-12-03 00:30:14'),
(462, 'App\\Models\\User', 2, 'dev-access', '53c3b456c88619b50c0bafb84db8afd9389e924787bf8b5b67ebd28853793ac3', '[\"*\"]', NULL, NULL, '2024-12-03 00:30:51', '2024-12-03 00:30:51'),
(463, 'App\\Models\\User', 2, 'dev-access', 'c44f755f21070ef6a66a0fe6bb8f0836c8abec34ff4a16302a4fa63e0655a70f', '[\"*\"]', NULL, NULL, '2024-12-03 00:30:52', '2024-12-03 00:30:52'),
(464, 'App\\Models\\User', 2, 'dev-access', '84e7514fb5c70e9d7d9bdb2a044588e7eab6173e16e8a1614d86c0f377eb6d7a', '[\"*\"]', NULL, NULL, '2024-12-03 00:30:52', '2024-12-03 00:30:52'),
(465, 'App\\Models\\User', 2, 'dev-access', '3d39be174761237d15482743b685b5d525add9f05217a6d81f7224c8536b504d', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:09', '2024-12-03 00:31:09'),
(466, 'App\\Models\\User', 2, 'dev-access', '412c04b564e9186aced38b7055e281cc9054fd021b0f43bac8977d8f6bca6069', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:10', '2024-12-03 00:31:10'),
(467, 'App\\Models\\User', 2, 'dev-access', '9080fc1a477b5f68021c01a12f091dbfb9584e4ce22211dee00d6c031143579b', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:10', '2024-12-03 00:31:10'),
(468, 'App\\Models\\User', 2, 'dev-access', '80289314c95619668a212a8ba96080ce6cef3b2ffd1535d863eee3e02c792f87', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:29', '2024-12-03 00:31:29'),
(469, 'App\\Models\\User', 2, 'dev-access', '5b6c015cd4292f602412b6cd830f5ae761f699feb74f912a23724949abee57e0', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:37', '2024-12-03 00:31:37'),
(470, 'App\\Models\\User', 2, 'dev-access', '5d7923a925c5c2d394304586c2ac0d59e5f596f2c86f424ce7a3b94b210b6521', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:47', '2024-12-03 00:31:47'),
(471, 'App\\Models\\User', 2, 'dev-access', '1a507de4de77d5769a98b525d015419b4c3634cf900e0e1b2f02be75733a6c82', '[\"*\"]', NULL, NULL, '2024-12-03 00:31:59', '2024-12-03 00:31:59'),
(472, 'App\\Models\\User', 2, 'dev-access', '696a009d50a1d3b481a541646b6daef89092f2e5cb56b61b11961e24b10b8316', '[\"*\"]', NULL, NULL, '2024-12-03 00:32:27', '2024-12-03 00:32:27'),
(473, 'App\\Models\\User', 2, 'dev-access', '2d6b465a0b4cdefbd0480c9a6a6d3460734a2758d67ba67ef3869cdbb5446bde', '[\"*\"]', NULL, NULL, '2024-12-03 00:32:42', '2024-12-03 00:32:42'),
(474, 'App\\Models\\User', 2, 'dev-access', 'b03151fa738c3080a8a1fba2b5590420e36211425d5360dcff8835d82982fcd0', '[\"*\"]', NULL, NULL, '2024-12-03 00:32:45', '2024-12-03 00:32:45'),
(475, 'App\\Models\\User', 2, 'dev-access', 'c77d17e6b4407e9bdcb5752c60f9622f37dde41fe857fb6cb4b40b81bec2a752', '[\"*\"]', NULL, NULL, '2024-12-03 00:33:11', '2024-12-03 00:33:11'),
(476, 'App\\Models\\User', 2, 'dev-access', '5c2c1c13cf04ee54cc6b11976ce03a8f6e7865d022d91a643039bcf2763ab986', '[\"*\"]', NULL, NULL, '2024-12-03 00:33:12', '2024-12-03 00:33:12'),
(477, 'App\\Models\\User', 2, 'dev-access', '34afb6fa30fa5afc0438cd423ca3f1ad94155d7f30108cff73f3018eb6cfc36e', '[\"*\"]', NULL, NULL, '2024-12-03 00:33:19', '2024-12-03 00:33:19'),
(478, 'App\\Models\\User', 2, 'dev-access', 'fe51ead6b910c2e87d19dd40ec68a5b4e6685e33c856ad1654e3af3d920f21bb', '[\"*\"]', NULL, NULL, '2024-12-03 00:36:33', '2024-12-03 00:36:33'),
(479, 'App\\Models\\User', 2, 'dev-access', '6f6eb59feaf81d4b972e2efa1d41f8269540e48681498b2da94f2eae6d229c4f', '[\"*\"]', NULL, NULL, '2024-12-03 00:36:36', '2024-12-03 00:36:36'),
(480, 'App\\Models\\User', 2, 'dev-access', 'e0f134a164dda3f187f9789ded438f6367768ba451b92bc3ce004fd81cf9b8a7', '[\"*\"]', NULL, NULL, '2024-12-03 00:37:00', '2024-12-03 00:37:00'),
(481, 'App\\Models\\User', 2, 'dev-access', 'a28ab01033a1909fa8b938201c0c1093c0cf1f5151e6ab4ec23db733a6cadabf', '[\"*\"]', NULL, NULL, '2024-12-03 00:37:04', '2024-12-03 00:37:04'),
(482, 'App\\Models\\User', 2, 'dev-access', '6877cd46077d5c5996584dd4ad30d8a7d028cef326ebea9957c4fb8eb00ce4a8', '[\"*\"]', NULL, NULL, '2024-12-03 00:37:18', '2024-12-03 00:37:18'),
(483, 'App\\Models\\User', 2, 'dev-access', 'cf9f80387c24806eed8df9ca18ea20feb502b0f415a23ddb130de68974e50d67', '[\"*\"]', NULL, NULL, '2024-12-03 00:37:23', '2024-12-03 00:37:23'),
(484, 'App\\Models\\User', 2, 'dev-access', 'df923e73e9f27a7a73f359c6d075445eb67e07560d26da51b37d979929f69330', '[\"*\"]', NULL, NULL, '2024-12-03 00:37:57', '2024-12-03 00:37:57'),
(485, 'App\\Models\\User', 2, 'dev-access', 'e597f5f3cb76315d45e5ede2ed4408c8643275f846cb8cf57491f928fdc04b48', '[\"*\"]', NULL, NULL, '2024-12-03 00:38:06', '2024-12-03 00:38:06'),
(486, 'App\\Models\\User', 2, 'dev-access', '3b5e3924d64a45e3280007c2062140de32172d58f995926173077e3a7e6ace19', '[\"*\"]', NULL, NULL, '2024-12-03 00:38:39', '2024-12-03 00:38:39'),
(487, 'App\\Models\\User', 2, 'dev-access', '9f65ac9d454eba03cd9997b05f4270785ae7977bcd021fd70c45e822cce95ff5', '[\"*\"]', NULL, NULL, '2024-12-03 00:38:58', '2024-12-03 00:38:58'),
(488, 'App\\Models\\User', 2, 'dev-access', 'b42aa32607613d211cd8f355ab1ead512d12f9dd37280945bdebb25ec9f3e5da', '[\"*\"]', NULL, NULL, '2024-12-03 00:39:16', '2024-12-03 00:39:16'),
(489, 'App\\Models\\User', 2, 'dev-access', '5ac29eb995639575f63e40a318cbd741b19c836df167a3e756f1a58acb33bf85', '[\"*\"]', NULL, NULL, '2024-12-03 00:39:20', '2024-12-03 00:39:20'),
(490, 'App\\Models\\User', 2, 'dev-access', '809c4573f49544720c95d73aa72bb3128ede265d7c83eccbc6972d4bb1c3ef2d', '[\"*\"]', NULL, NULL, '2024-12-03 00:39:27', '2024-12-03 00:39:27'),
(491, 'App\\Models\\User', 2, 'dev-access', 'bb27b6e3bac8ba53dc27a31a22c0a4c8b3c877b92b66b30384e83ba34d3a677b', '[\"*\"]', NULL, NULL, '2024-12-03 00:39:29', '2024-12-03 00:39:29'),
(492, 'App\\Models\\User', 2, 'dev-access', '029a20141ca7683b3064c428d2eaf5dcdf6811ca3e98b9a2b01bdfc7ba9465ae', '[\"*\"]', NULL, NULL, '2024-12-03 00:39:37', '2024-12-03 00:39:37'),
(493, 'App\\Models\\User', 2, 'dev-access', 'a3ecd19f4c01e33672c0e154f24a1f516b45e94008cfe05db110827ba49c0e90', '[\"*\"]', NULL, NULL, '2024-12-03 00:40:17', '2024-12-03 00:40:17'),
(494, 'App\\Models\\User', 2, 'dev-access', '9630254c782aff07bf91b4e0861c0798d20f74d3d90455b06f2a17c759529fb7', '[\"*\"]', NULL, NULL, '2024-12-03 00:40:26', '2024-12-03 00:40:26'),
(495, 'App\\Models\\User', 2, 'dev-access', 'cde363a333ed9910c5ceba18d098f688c46e3e17afe6bcb0208af083b7ea04d4', '[\"*\"]', NULL, NULL, '2024-12-03 00:40:31', '2024-12-03 00:40:31'),
(496, 'App\\Models\\User', 2, 'dev-access', 'f96fdf01864b7a91a846a451f4181f36d1f64ff4eab27a35e09135c5efa4baaa', '[\"*\"]', NULL, NULL, '2024-12-03 00:40:40', '2024-12-03 00:40:40'),
(497, 'App\\Models\\User', 2, 'dev-access', 'ec08b75a50f38e6c722ffe61264c7d23624155c7a369e470b27125d4315d2f5d', '[\"*\"]', NULL, NULL, '2024-12-03 00:40:55', '2024-12-03 00:40:55'),
(498, 'App\\Models\\User', 2, 'dev-access', '8b9e4e6ef6ff0ed77e0be9637bb6c6a239d091d114d251144ef2955246441a4d', '[\"*\"]', NULL, NULL, '2024-12-03 00:41:00', '2024-12-03 00:41:00'),
(499, 'App\\Models\\User', 2, 'dev-access', '1a78218d07e719716889ab6ebcf3ce2a873c8ce48c29144328079d96cb195570', '[\"*\"]', NULL, NULL, '2024-12-03 00:41:45', '2024-12-03 00:41:45'),
(500, 'App\\Models\\User', 2, 'dev-access', '9cebc25b36a926ca22d6e92fe56406ff4d25c8ee200dee3f59db35cf11d9f8c3', '[\"*\"]', NULL, NULL, '2024-12-03 00:41:53', '2024-12-03 00:41:53'),
(501, 'App\\Models\\User', 2, 'dev-access', 'b1426f178d61ee2506586c61765720fcc7ae3970c21ce9d7e7fb48c6652927f2', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:08', '2024-12-03 00:42:08'),
(502, 'App\\Models\\User', 2, 'dev-access', '2a6e37788cdb899387f49ed819e4895117eef49b7d7ebb2914dd9d649416202b', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:29', '2024-12-03 00:42:29'),
(503, 'App\\Models\\User', 2, 'dev-access', '1232ed29d60375a0f56890ccc0ce06565c6ece97d0dde1868eb4a829a386239e', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:33', '2024-12-03 00:42:33'),
(504, 'App\\Models\\User', 2, 'dev-access', '323fd3ea3ced5be5398576445fc57261cdece2ff4fde95fabedf253337e064b0', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:39', '2024-12-03 00:42:39'),
(505, 'App\\Models\\User', 2, 'dev-access', 'a6b1ce11b117c2aa13829533b33ea08f62458e1bf6aa6c968f41de4f18fc97a1', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:42', '2024-12-03 00:42:42'),
(506, 'App\\Models\\User', 2, 'dev-access', '0da91a200365c4bba24c29bbd339880b94072d7a4e53204deff4b11f806d0ad3', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:51', '2024-12-03 00:42:51'),
(507, 'App\\Models\\User', 2, 'dev-access', 'c169466f0e7a9ab636280006f64380085891a1e4fa6532ff8f4c861fe68cf095', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:52', '2024-12-03 00:42:52'),
(508, 'App\\Models\\User', 2, 'dev-access', '3b6ff20b58934f6bb9e3d5bd1208e84bd4a6fdac2d0192ec918b283b1f278c39', '[\"*\"]', NULL, NULL, '2024-12-03 00:42:53', '2024-12-03 00:42:53'),
(509, 'App\\Models\\User', 2, 'dev-access', '2e431e25f1af71ac108813053f86c65b6e1c1611d6fe5ddc95159bbeb3742489', '[\"*\"]', NULL, NULL, '2024-12-03 00:43:25', '2024-12-03 00:43:25'),
(510, 'App\\Models\\User', 2, 'dev-access', '5a3b992f037289d1c266af7e3a182fe0e9b467586c111ed6865becf7ac4a25ed', '[\"*\"]', NULL, NULL, '2024-12-03 00:43:48', '2024-12-03 00:43:48'),
(511, 'App\\Models\\User', 2, 'dev-access', '798e9e8373f44ef862ea3e00a60878f132b474cdc8598d5fcf45601e299a16b6', '[\"*\"]', NULL, NULL, '2024-12-03 00:43:57', '2024-12-03 00:43:57'),
(512, 'App\\Models\\User', 2, 'dev-access', '2f3b2dd377af04ed7fca8d9f9c616ed84b31eead15f8aa81cd2249753f594f85', '[\"*\"]', NULL, NULL, '2024-12-03 00:43:59', '2024-12-03 00:43:59'),
(513, 'App\\Models\\User', 2, 'dev-access', 'a83b1f5a775e7fb3e94a90b7e3b5f927305cf8d9dbce670dd58f0277ed4409e4', '[\"*\"]', NULL, NULL, '2024-12-03 00:44:45', '2024-12-03 00:44:45'),
(514, 'App\\Models\\User', 2, 'dev-access', 'cf2c4bb1762c09a373c0ff9a82f4fed2169aebe11282d5172f5f1d19d426d883', '[\"*\"]', NULL, NULL, '2024-12-03 00:44:46', '2024-12-03 00:44:46'),
(515, 'App\\Models\\User', 2, 'dev-access', 'a56fae4901ad646cb3b343bf8d1ebd891af5bdfae46c3c773ec26b47baad1347', '[\"*\"]', NULL, NULL, '2024-12-03 00:44:50', '2024-12-03 00:44:50'),
(516, 'App\\Models\\User', 2, 'dev-access', '0a38de24f76dc25291e56ea60226c7cf565481f545ede89732902fa81500755d', '[\"*\"]', NULL, NULL, '2024-12-03 00:44:51', '2024-12-03 00:44:51'),
(517, 'App\\Models\\User', 2, 'dev-access', '05584a15350f4ab7f0e34ca6bfe86a7df5863a467c1b6744429a3ced4f502ce4', '[\"*\"]', NULL, NULL, '2024-12-03 00:44:58', '2024-12-03 00:44:58'),
(518, 'App\\Models\\User', 2, 'dev-access', 'e411240b11c7558ecdc5bff9bc495ae057841034c24b48808e6bf40cc35263bf', '[\"*\"]', NULL, NULL, '2024-12-03 00:45:07', '2024-12-03 00:45:07'),
(519, 'App\\Models\\User', 2, 'dev-access', 'f2f6c5a499ea4800c3bf65e51725643dca0de051dc96a930edafcaf529f0ecab', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:15', '2024-12-03 00:46:15'),
(520, 'App\\Models\\User', 2, 'dev-access', 'c7554c06f309afcb574548de1e8a033c625d1228fee0ca0bf818081322f6226b', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:17', '2024-12-03 00:46:17'),
(521, 'App\\Models\\User', 2, 'dev-access', '318aa127f2bdf1dfa0d56dd3013fbf52e77447dd1d6a7ea3b96db2796d30e3dc', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:27', '2024-12-03 00:46:27'),
(522, 'App\\Models\\User', 2, 'dev-access', '2d17ccecd6260f4c3037e31fa88196ab7f515cadabefdad5a4f26c022b4c1e5a', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:36', '2024-12-03 00:46:36'),
(523, 'App\\Models\\User', 2, 'dev-access', '87e31b97450414a118f324cb73f043a12a166cc62dfeeea800b5ccb909a8b1d1', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:37', '2024-12-03 00:46:37'),
(524, 'App\\Models\\User', 2, 'dev-access', '54a257a2d5f69d6c8760edb4a3f5380366e51ecf8b6cef229e124d04573352d2', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:37', '2024-12-03 00:46:37'),
(525, 'App\\Models\\User', 2, 'dev-access', '3b1fb9c9fc720904c646fc7ae745f665faf790fb57453e86990fef7560fa2571', '[\"*\"]', NULL, NULL, '2024-12-03 00:46:46', '2024-12-03 00:46:46'),
(526, 'App\\Models\\User', 2, 'dev-access', 'f5750c9cc57363a5245a0fac9cb9c34c461cf8ace84b1be7462139895cf8ef58', '[\"*\"]', NULL, NULL, '2024-12-03 00:47:20', '2024-12-03 00:47:20'),
(527, 'App\\Models\\User', 2, 'dev-access', '5107a183a2f398c0bb880be9937816dcb80735644d84a2bf559c190aa9d2d49e', '[\"*\"]', NULL, NULL, '2024-12-03 00:47:34', '2024-12-03 00:47:34'),
(528, 'App\\Models\\User', 2, 'dev-access', 'f21b49843ba8c79b00db29705c2def41051c6891c0c6ab1dc0b3160b1d965d70', '[\"*\"]', NULL, NULL, '2024-12-03 00:51:28', '2024-12-03 00:51:28'),
(529, 'App\\Models\\User', 2, 'dev-access', '53bd1c7e791e6595a67a65335d1a495a12424cbf01433759ea8dd88911b6eeef', '[\"*\"]', NULL, NULL, '2024-12-03 00:51:28', '2024-12-03 00:51:28'),
(530, 'App\\Models\\User', 2, 'dev-access', 'a92ebee0eb377f5354ac2b6ba937ad346b56dfb18df4a04af9da226730097722', '[\"*\"]', NULL, NULL, '2024-12-03 00:51:32', '2024-12-03 00:51:32'),
(531, 'App\\Models\\User', 2, 'dev-access', '075a03f7b047f207bdfaed9eee170cae4f83e7fed81169d8c127a1298e5f9152', '[\"*\"]', NULL, NULL, '2024-12-03 00:51:32', '2024-12-03 00:51:32'),
(532, 'App\\Models\\User', 2, 'dev-access', '298bd9aa7ffbdc5b1994c4db18074cc57fb849b96b75baab3abb75a485a4fb6b', '[\"*\"]', NULL, NULL, '2024-12-03 00:51:35', '2024-12-03 00:51:35'),
(533, 'App\\Models\\User', 2, 'dev-access', '9703c9c779dbfcfbbebe09aed6dc5fce7e6c7fcc1f23a75cf27d042db5c07bd8', '[\"*\"]', NULL, NULL, '2024-12-03 01:01:03', '2024-12-03 01:01:03'),
(534, 'App\\Models\\User', 2, 'dev-access', '7c75e94261425c910b915d429b3cf4fb75ff84c45ac5b2ae3c6c99669eef9198', '[\"*\"]', NULL, NULL, '2024-12-03 01:01:25', '2024-12-03 01:01:25'),
(535, 'App\\Models\\User', 2, 'dev-access', 'f7c7e1c5c44e28f318164fda8ab58b379735148e0200bf6a713117668a065307', '[\"*\"]', NULL, NULL, '2024-12-03 01:01:33', '2024-12-03 01:01:33'),
(536, 'App\\Models\\User', 2, 'dev-access', 'dba50fee711ddf036c12c3950c83d02f220907731e57bd19f6a1996fd0929091', '[\"*\"]', NULL, NULL, '2024-12-03 01:01:34', '2024-12-03 01:01:34'),
(537, 'App\\Models\\User', 2, 'dev-access', '93edc03bff3f1425aacf4a1b702a0da1c070169bafe895b7462bdfd3853192c7', '[\"*\"]', NULL, NULL, '2024-12-03 01:01:58', '2024-12-03 01:01:58'),
(538, 'App\\Models\\User', 2, 'dev-access', 'd20167e7a6557176276988a3ed3d9e7c4a493ecbb0714023148c5e4dee79c7e5', '[\"*\"]', NULL, NULL, '2024-12-03 01:01:58', '2024-12-03 01:01:58'),
(539, 'App\\Models\\User', 2, 'dev-access', '3ed2e16ad8e348826fa0dc910732a49c2a2f769a7251ca174a45cc6d1e59431c', '[\"*\"]', NULL, NULL, '2024-12-03 01:02:00', '2024-12-03 01:02:00'),
(540, 'App\\Models\\User', 2, 'dev-access', '1562fd031af05508e35261505f184f075cf28bd4cbd0d19b1076d9e4218442f5', '[\"*\"]', NULL, NULL, '2024-12-03 01:05:37', '2024-12-03 01:05:37'),
(541, 'App\\Models\\User', 2, 'dev-access', '88428822d4ca7171e71c0676423e6ecd6333d8d899ca23c2116999ff44238b3e', '[\"*\"]', NULL, NULL, '2024-12-03 01:06:54', '2024-12-03 01:06:54'),
(542, 'App\\Models\\User', 1, 'dev-access', '957c668fd9bd7fb1a4ea540faffcd05307657b48d14cd5992b9acdd574f115c0', '[\"*\"]', NULL, NULL, '2024-12-03 01:07:06', '2024-12-03 01:07:06'),
(543, 'App\\Models\\User', 2, 'dev-access', '49c724fdf5788532b6192146f6a9cd71c5cf040088ffdde30582eb447fe9bdfd', '[\"*\"]', NULL, NULL, '2024-12-03 01:07:18', '2024-12-03 01:07:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'superadmin@gmail.com', NULL, '$2y$12$9HTT38lPT7BgzkO4BowqEukObXYwPBQl23T6VlyePntQRb2OM4a9K', 'ac9bc16bc1ca7be00447d036b5954d20f0422bb0f8ee8c5dc89b4708caea8a3c', 'hMQgkLMs6a5f8FGO0f1SfcbancYew0JbVXOBKSXiRSPk1NsacNTVwCzPMXPm', '2024-11-29 02:44:13', '2024-11-29 16:23:26'),
(2, 'Usuario 1', 'usuario1@gmail.com', NULL, '$2y$12$8wRPO0iEGHYeKJzQFqifKuqV2CydaMlNH4pf.nBFtesmHFVq5fn8C', NULL, '38DjvIGelQQuPNpi1nnuAZm309HuKHB7ZzFnyWaK6L66gh9Jb7TA8ItuOATu', '2024-12-01 02:14:07', '2024-12-01 02:14:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
