-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 04:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cocina`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre_categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `nombre_categoria`) VALUES
(1, NULL, NULL, 'Carnes'),
(2, NULL, NULL, 'Verduras'),
(3, NULL, NULL, 'Salsas'),
(4, NULL, NULL, 'Frutas'),
(5, NULL, NULL, 'Lácteos'),
(6, NULL, NULL, 'Pastas'),
(7, NULL, NULL, 'Postres');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ID_Usuario` bigint(20) UNSIGNED NOT NULL,
  `ID_Receta` bigint(20) UNSIGNED NOT NULL,
  `contenido` varchar(90) NOT NULL,
  `fecha_comentario` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `created_at`, `updated_at`, `ID_Usuario`, `ID_Receta`, `contenido`, `fecha_comentario`) VALUES
(1, NULL, NULL, 1, 1, '¡Deliciosa receta!', '2024-09-26 20:10:22'),
(2, NULL, NULL, 2, 2, 'Me encantó la pasta.', '2024-09-26 20:10:22'),
(3, NULL, NULL, 3, 3, 'Una de mis favoritas.', '2024-09-26 20:10:22'),
(4, NULL, NULL, 4, 4, 'Sopa perfecta para el invierno.', '2024-09-26 20:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre_ingrediente` varchar(50) NOT NULL,
  `unidad_medida` varchar(20) NOT NULL,
  `categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `created_at`, `updated_at`, `nombre_ingrediente`, `unidad_medida`, `categoria`) VALUES
(1, NULL, NULL, 'Pollo', '200g', 'Carnes'),
(2, NULL, NULL, 'Lechuga', '100g', 'Verduras'),
(3, NULL, NULL, 'Salsa Alfredo', '1 taza', 'Salsas'),
(4, NULL, NULL, 'Manzanas', '3 unidades', 'Frutas'),
(5, NULL, NULL, 'Queso Parmesano', '50g', 'Lácteos'),
(6, NULL, NULL, 'Espagueti', '250g', 'Pastas'),
(7, NULL, NULL, 'Tomates', '4 unidades', 'Verduras'),
(8, NULL, NULL, 'Helado', '2 bolas', 'Postres');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
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
-- Table structure for table `job_batches`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_25_220712_create_recetas_table', 2),
(5, '2024_09_25_220720_create_categorias_table', 2),
(6, '2024_09_25_220720_create_comentarios_table', 2),
(7, '2024_09_25_220720_create_ingredientes_table', 2),
(8, '2024_09_25_220721_create_receta__ingredientes_table', 2),
(9, '2024_09_25_220731_create_receta__comentarios_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recetas`
--

CREATE TABLE `recetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `autor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombre_receta` varchar(50) NOT NULL,
  `tiempo_preparacion` time NOT NULL DEFAULT '00:00:00',
  `instrucciones` varchar(500) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `recetas`
--

INSERT INTO `recetas` (`id`, `created_at`, `updated_at`, `autor_id`, `nombre_receta`, `tiempo_preparacion`, `instrucciones`, `descripcion`, `calificacion`, `fecha_creacion`) VALUES
(1, NULL, NULL, 1, 'Ensalada César', '00:15:00', 'Mezclar lechuga, pollo, y aderezo.', 'Ensalada fresca con pollo', 4, '2024-09-26 20:09:20'),
(2, NULL, NULL, 2, 'Pasta Alfredo', '00:30:00', 'Cocinar la pasta y mezclar con salsa.', 'Pasta cremosa y deliciosa', 5, '2024-09-26 20:09:20'),
(3, NULL, NULL, 3, 'Tarta de Manzana', '01:00:00', 'Hornear y servir con helado.', 'Tarta clásica de manzana', 3, '2024-09-26 20:09:20'),
(4, NULL, NULL, 4, 'Sopa de Tomate', '00:20:00', 'Cocinar tomates y mezclar.', 'Sopa cremosa de tomate', 4, '2024-09-26 20:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `receta__categorias`
--

CREATE TABLE `receta__categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ID_Receta` bigint(20) UNSIGNED NOT NULL,
  `ID_Categoria` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receta__categorias`
--

INSERT INTO `receta__categorias` (`id`, `ID_Receta`, `ID_Categoria`) VALUES
(1, 1, 1),
(2, 2, 6),
(3, 3, 7),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `receta__ingredientes`
--

CREATE TABLE `receta__ingredientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ID_Receta` bigint(20) UNSIGNED NOT NULL,
  `ID_Ingrediente` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receta__ingredientes`
--

INSERT INTO `receta__ingredientes` (`id`, `created_at`, `updated_at`, `ID_Receta`, `ID_Ingrediente`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 1, 2),
(3, NULL, NULL, 2, 3),
(4, NULL, NULL, 2, 6),
(5, NULL, NULL, 3, 4),
(6, NULL, NULL, 3, 5),
(7, NULL, NULL, 4, 7),
(8, NULL, NULL, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('47z6C70dp1Xf2ZoRZF1Y09IYQKyn5dcpfJEQS99M', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEdYSXFzYkFiVkRjYldSdUJ1STQ5cWxwR3RJaGc3ZFJZZGVSd2l3ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vY29jaW5hLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1727301490),
('4BIjcIPBsVtGTrypUmHc0fMB0aSi5CYiNbnWKlC4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.11.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTndOSEdYcDgyY0pXVXFxTWJiOXdwb1F3eE5HNGV6Q0ROdDdIZVMwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29jaW5hLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727247011),
('HSCw0CI35cBWgxlSbC0a7qE0qZ3sh2F0iZ1FH56C', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.11.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUY3RjJzdWh3dW01aVdjcURuaG1pNWNqdUNqSk5CWHlFeUpVRm9QQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29jaW5hLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727246458),
('ILg08ZeZ7gMK1Sl96zoVpVfK1qZDc3QwBCRN3f0x', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDFCZTlGVjFLMWdXM3N2TndHQWxrblFzME9RT2g4Z0RkcFVQYkp2VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1727247933),
('J3c80JkXNTwbzFLCScYVsNJV45qW34p1ae0T9NYd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSDlNZHlWakR6dGt0YTh1ejdZbFNGTUo5UGpQb21sQzZLaEhvbUpDMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vY29jaW5hLnRlc3QvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1727301501),
('Kb3br7ZQ9S8MVd9ceskpYBzXOLdQ0Rgd1PAKrSnN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.11.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkRaWVVJOFdFWnJ5NzVSV2lqZUt5bUhYek5qWU9XMjdQVjFiUG0yciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29jaW5hLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727246363),
('LeqK7AEPQqk8YBsfHfce52TsKyYyXCLr02WM5c7Z', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXo5ZEdXN3dlcHBJSmcwU0M5MFJkRkdFYnZ2NDRUNmdpS09ZZmhvaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vY29jaW5hLnRlc3QvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1727246317),
('oUGzderipT65OTqaISn5lvgCnSI3vmKt38Y2avfS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.11.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkVRa2huMWVqRGZuTmlQdVRFeFRIVGFOWnFNejVXZXVTdXJCWGFZRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29jaW5hLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727301098),
('vAjqMcuLNIDwUKpFANH0zNtLlM4dkVPJhbyLmlJu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.11.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjdyTnBsamhOTG5HbTREalAydkZOM3hRYmFpaGkweXdObmVQbENWRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29jaW5hLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727247730),
('WQ9DgbjKp3AvepT5ltFIuAOV3ivjCt7OidlSZDM9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.11.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNG9TbmFpOGxxNFBuQUtmYk8yam5VdUhOMHBqT1NoTVRGVHRWMHdmNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vY29jaW5hLnRlc3QvP2hlcmQ9cHJldmlldyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727247050);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `fecha_registro`, `rol`) VALUES
(1, 'SuperAdmin', 'superadmin@gmail.com', NULL, '$2y$12$BxDRPqCYtSGVkRRGpTSLpOWx..QkszI/icro1njsNsVL2qgX8QVva', 'jxLISQocvuWSKDHyHBTEl2tZ4WsdU3ZfPo6ENHrjwjIdgWZXQL1TrcQ8uqSO', '2024-09-25 09:38:26', '2024-09-25 09:38:26', '2024-09-26 18:28:20', NULL),
(2, 'Juan Pérez', 'juan.perez@example.com', NULL, '$2y$12$BxDRPqCYtSGVkRRGpTSLpOWx..QkszI/icro1njsNsVL2qgX8QVva', NULL, NULL, NULL, '2024-09-26 20:04:45', 'chef'),
(3, 'María López', 'maria.lopez@example.com', NULL, '$2y$12$BxDRPqCYtSGVkRRGpTSLpOWx..QkszI/icro1njsNsVL2qgX8QVva', NULL, NULL, NULL, '2024-09-26 20:04:45', 'usuario normal'),
(4, 'Carlos García', 'carlos.garcia@example.com', NULL, '$2y$12$BxDRPqCYtSGVkRRGpTSLpOWx..QkszI/icro1njsNsVL2qgX8QVva', NULL, NULL, NULL, '2024-09-26 20:04:45', 'admin'),
(5, 'Ana Martínez', 'ana.martinez@example.com', NULL, '$2y$12$BxDRPqCYtSGVkRRGpTSLpOWx..QkszI/icro1njsNsVL2qgX8QVva', NULL, NULL, NULL, '2024-09-26 20:04:45', 'chef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `ID_Receta` (`ID_Receta`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor_id` (`autor_id`);

--
-- Indexes for table `receta__categorias`
--
ALTER TABLE `receta__categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_Receta` (`ID_Receta`),
  ADD KEY `ID_Categoria` (`ID_Categoria`);

--
-- Indexes for table `receta__ingredientes`
--
ALTER TABLE `receta__ingredientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_Receta` (`ID_Receta`),
  ADD KEY `ID_Ingrediente` (`ID_Ingrediente`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receta__categorias`
--
ALTER TABLE `receta__categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `receta__ingredientes`
--
ALTER TABLE `receta__ingredientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_3` FOREIGN KEY (`ID_Usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_4` FOREIGN KEY (`ID_Receta`) REFERENCES `recetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `receta__categorias`
--
ALTER TABLE `receta__categorias`
  ADD CONSTRAINT `receta__categorias_ibfk_3` FOREIGN KEY (`ID_Receta`) REFERENCES `recetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receta__categorias_ibfk_4` FOREIGN KEY (`ID_Categoria`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `receta__ingredientes`
--
ALTER TABLE `receta__ingredientes`
  ADD CONSTRAINT `receta__ingredientes_ibfk_3` FOREIGN KEY (`ID_Receta`) REFERENCES `recetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receta__ingredientes_ibfk_4` FOREIGN KEY (`ID_Ingrediente`) REFERENCES `ingredientes` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
