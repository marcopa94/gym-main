-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 03, 2024 alle 14:22
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_gym`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `activities`
--

INSERT INTO `activities` (`id`, `name`, `description`, `start_time`, `end_time`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'Vinyasa Flow Yoga', 'Sint dolorum voluptatem voluptatem libero quidem quia. Molestiae amet aliquid voluptates sequi. Sed magni recusandae in veritatis voluptates aut. Eligendi sint atque rerum voluptate.', '17:27:00', '18:58:00', 4, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(2, 'Functional Strength Training', 'Et et quo iusto officia suscipit dignissimos. Similique et ea aut laudantium odio. Ducimus exercitationem quod autem quos laudantium nulla recusandae aut. Molestiae neque explicabo qui rem tempore.', '17:03:00', '19:35:00', 5, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(3, 'Functional Strength Training', 'Aspernatur quaerat est omnis. Quae rerum sit est omnis cumque. Omnis dignissimos enim velit possimus facere. Placeat corporis a ipsa ducimus. Sed nobis molestiae ex cupiditate.', '16:33:00', '18:08:00', 4, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(4, 'HIIT', 'Vitae rerum quam est libero amet corrupti expedita. A sed ut et non molestiae facere unde omnis. Rerum laboriosam maiores libero architecto.', '17:51:00', '19:10:00', 3, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(5, 'Hypertrophy Training', 'Dolorem ducimus ex porro ab. Qui quaerat repudiandae atque accusantium veritatis aliquid. Modi sed eum dolores expedita odio placeat iusto.', '16:00:00', '18:00:00', 4, '2024-06-03 06:38:30', '2024-06-03 06:38:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `capacity`, `created_at`, `updated_at`) VALUES
(1, 'Yoga', 'Ipsam aspernatur cum aspernatur consequuntur. Voluptatem et unde et voluptas. In placeat officiis eaque sunt sed esse.', 28, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(2, 'Cardio', 'Delectus eum nostrum et eos dolores omnis iusto. Ea officiis quis debitis reiciendis. Eum quidem ipsum consectetur possimus ipsum. Et sint consequatur nihil voluptatem dolor deleniti.', 32, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(3, 'Yoga', 'Voluptatem ut perferendis illum iste fuga voluptatem. Aut neque qui accusamus voluptas distinctio. Quod rerum ipsa accusantium perspiciatis.', 35, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(4, 'Bodybuilding', 'Esse qui dolorum architecto dolorem. Laboriosam porro quia esse consequatur et aut aut. Sint praesentium amet incidunt maxime odit delectus. Ratione aliquam qui aut velit.', 37, '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(5, 'Cardio', 'Illo expedita nulla eum pariatur nulla. Recusandae perferendis minus voluptatem omnis illo est quod. Adipisci enim alias dicta. Blanditiis et animi aut odit dolor quis. Dolorem deserunt quo et quo.', 32, '2024-06-03 06:38:30', '2024-06-03 06:38:30');

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
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
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_password_reset_tokens_table', 1),
(3, '0001_01_01_000002_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_29_200916_create_courses_table', 1),
(6, '2024_05_29_201025_create_activities_table', 1),
(7, '2024_05_29_201253_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `personal_access_tokens`
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
-- Struttura della tabella `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `reservations`
--

INSERT INTO `reservations` (`id`, `status`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rifiutato', 2, 1, '2024-06-03 06:38:30', '2024-06-03 07:20:02'),
(2, 'Accettato', 2, 5, '2024-06-03 06:38:30', '2024-06-03 07:18:09'),
(3, 'Accettato', 2, 3, '2024-06-03 06:38:30', '2024-06-03 07:17:56'),
(4, 'Accettato', 3, 6, '2024-06-03 06:38:30', '2024-06-03 07:20:34'),
(5, 'Accettato', 2, 2, '2024-06-03 06:38:30', '2024-06-03 07:20:24'),
(6, 'pending', 1, 1, '2024-06-03 07:13:43', '2024-06-03 07:13:43'),
(7, 'pending', 1, 7, '2024-06-03 08:21:14', '2024-06-03 08:21:14');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'alexadmin@gmail.com', '2024-06-03 06:38:30', '$2y$10$QEJX/l.oSRg/hZY8oPYC6eFmcxfo71wNGeLdEPlVluV1q6rnjKJC.', '8WfG5cuzrKEzoAShXfGCW6JQR0TZWmFFdMynbKxJnjz6KI907BHg5G715nf8', 'admin', '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(2, 'Raymond Harvey', 'virgil23@example.com', '2024-06-03 06:38:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XZfPHS0KIw', 'normal_user', '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(3, 'Era Shanahan', 'lupe.doyle@example.net', '2024-06-03 06:38:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RQqcRN5cPu', 'normal_user', '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(4, 'Prof. Alice Beer', 'calista60@example.com', '2024-06-03 06:38:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wXxQbFCNGh', 'normal_user', '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(5, 'Pinkie Rippin DDS', 'bveum@example.com', '2024-06-03 06:38:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IN0ccbAEnl', 'normal_user', '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(6, 'Prof. Tyrel Murphy I', 'mara23@example.net', '2024-06-03 06:38:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zzTaUZ7vue', 'normal_user', '2024-06-03 06:38:30', '2024-06-03 06:38:30'),
(7, 'alex2', 'alex@gmail.com', NULL, '$2y$10$RAGymbtiGLzWVGuIaEBr8u1fbNDuvT3XuAvvKNtALLT6dM8IayxCS', NULL, 'normal_user', '2024-06-03 08:04:53', '2024-06-03 08:04:53');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_course_id_foreign` (`course_id`);

--
-- Indici per le tabelle `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_course_id_foreign` (`course_id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
