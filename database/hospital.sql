-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 07 mai 2023 à 16:58
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hospital`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `doctor` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `phone`, `date`, `doctor`, `message`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'lilia', 'lilia@gmail.com', '8458869509', '2023-05-12', NULL, 'test', 'canceled', NULL, '2023-05-06 13:47:12', '2023-05-06 15:48:19'),
(4, 'belkacem', 'Melissa.LAHLOU.dz@viacesi.', '45553656', '2023-05-30', 'ryan', 'test 7', 'approved', NULL, '2023-05-06 14:40:57', '2023-05-06 15:45:47'),
(5, 'lilia', 'lilia@gmail.com', '854895895', '2023-05-19', 'loulou4', 'i have a skin problem', 'In progress', '3', '2023-05-06 15:51:14', '2023-05-06 15:51:14'),
(6, 'loulou', 'melissalahlou7@gmail.com', '9858985897', '2023-05-11', 'rihanna', 'hi', 'canceled', NULL, '2023-05-06 21:01:32', '2023-05-06 21:03:01'),
(7, 'baya', 'djelloutba@gmail.com', '080985', '2023-05-12', 'djoumi', 'heart', 'approved', NULL, '2023-05-06 21:07:06', '2023-05-06 21:07:36'),
(8, 'baya', 'djelloutba@gmail.com', '3656', '2023-05-19', 'baya', 'hui', 'approved', '10', '2023-05-06 21:14:56', '2023-05-06 21:15:38');

-- --------------------------------------------------------

--
-- Structure de la table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `phone`, `speciality`, `room`, `image`, `created_at`, `updated_at`) VALUES
(1, 'loulou4', '0999887650', 'skin', '200', '1683379209.png', '2023-05-06 12:20:09', '2023-05-06 12:20:09'),
(2, 'baya', '077794847', 'eyes', '209', '1683379636.jpg', '2023-05-06 12:27:16', '2023-05-06 12:27:16'),
(3, 'rihanna', '04444382910', 'eye', '300', '1683401528.jpg', '2023-05-06 12:30:20', '2023-05-06 18:32:08'),
(4, 'djoumi', '065699565', 'heart', '302', '1683381701.jpg', '2023-05-06 13:01:41', '2023-05-06 13:01:41'),
(5, 'samir', '94889878565', 'nose', '504', '1683393598.png', '2023-05-06 16:19:58', '2023-05-06 16:19:58');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_05_192858_create_sessions_table', 1),
(7, '2023_05_06_125615_create_doctors_table', 2),
(8, '2023_05_06_142442_create_appointments_table', 3),
(9, '2023_05_06_211406_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('djelloutba@gmail.com', '$2y$10$pU1mfLYvydZ.scf1fT66We4vjpTNXq1aB8qQv4Vjky5q8NAkRC/Wy', '2023-05-06 21:08:30'),
('melissalahlou8@gmail.com', '$2y$10$YaDWQxJ5XtC/XD6nPlW6meBoqPVidtpR.VSB/GYj9dufhm633Sqti', '2023-05-06 20:00:15');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
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
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A4wF4CDBfnbJYkBmcowTufIUz7xIMPe3qdYtzxOX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidThGZkhNWWswOFduaEhYYUtHaEd1VTlyVWg0cUNkNGNIU2l2dDd5UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1683461246),
('FtosQOZWc7TgtiCpBHxeUVt13XfRvcO3VsqbXhCT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0NINHhYZm1CMUVTUDFCM2FlMkphMzk3cGx4dWRqVnhjN3k3VzkwUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1683471426),
('U3GvwdW7VyJ2ch35MWKgJ46dmVb3KbmD7bE74rK7', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMTZ0YUo4WTl0Rms0ZlBPUGFEM2Q0bktyeVZHeXZKUkViUDNoUWloNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teWFwcG9pbnRtZW50Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTA7fQ==', 1683411375);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'melissa', 'melissalahlou7@gmail.com', '0666445740', 'Alger El Mohammadia A H 7', '0', '2023-05-17 20:56:54', '$2y$10$1Kid9TQq21htfwxB.S4Mc.L1SQnSOuN8yq84ZVF8.D334KdXL1FEC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05 18:43:34', '2023-05-05 18:43:34'),
(2, 'admin', 'admin01@gmail.com', '0555556667', 'Alger El Mohammadia A H 7', '1', '2023-05-16 20:57:10', '$2y$10$08fMuQV.Idh1UdVY.vEQ3O1mZnyCVpUX9HJlvWFfWm7amn66KXhM6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05 18:45:32', '2023-05-05 18:45:32'),
(3, 'lilia', 'lilia@gmail.com', '56905698', 'Alger El Mohammadia A H 5', '0', '2023-05-10 20:57:26', '$2y$10$zH2/l7PcQNiTHcr1XvHpx.8/3J.8Trkq8Fo97n7jZbVZvjqG9bUaS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 15:50:14', '2023-05-06 15:50:14'),
(4, 'melissa666', 'melissalahlou12@gmail.com', '65386098509860985', 'Alger El Mohammadia A H 7', '0', '2023-05-30 20:57:39', '$2y$10$9aGsLYvu5uqm1yEjsibbrOIcOe3F7obH0MKEE2uojKLvoCnFKAAOq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 19:28:09', '2023-05-06 19:28:09'),
(5, 'melissariir', 'melissalahlou8@gmail.com', '87588459878', 'canada', '0', '2023-05-29 20:57:52', '$2y$10$CNkHBBF2jK1hgNHsfEBO5.vXI7AjTKnVI1gA0jsFsR3hjYPD/.xOS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 19:33:59', '2023-05-06 19:33:59'),
(6, 'melissa lahlou', 'Melissa.LAHLOU.dz@viacesi.fr', '48754987987', 'Alger El Mohammadia A H 7', '0', '2023-05-04 20:58:06', '$2y$10$8id183LIN71fgutO/lCYEeQaTGEiUnRSt0llJHycsqE8eQl1pmir2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 19:38:27', '2023-05-06 19:38:27'),
(10, 'baya1111', 'djelloutba@gmail.com', '5455', 'Alger El Mohammadia A H 7', '0', NULL, '$2y$10$qv/cMXAGIjPl90mEHUYvpOUlUqUJXipd4iHbeQikSEKda05N5qn/6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 21:11:31', '2023-05-06 21:11:31');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
