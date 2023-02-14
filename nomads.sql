-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2021 pada 14.34
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/gallery/VR3kmpX67RuhIUA665k4jAJWrfiwt3lELp5paqFL.png', NULL, '2021-10-02 02:01:13', '2021-10-02 02:01:13'),
(2, 2, 'assets/gallery/YY5AZCjhsp6orlGfe0tYmLli4Qzb5a4aUJ1etpIJ.png', '2021-10-02 02:11:44', '2021-10-02 02:01:35', '2021-10-02 02:11:44'),
(3, 2, 'assets/gallery/yIPHnJTxLipme0zftWoU3Z1QHxAFSAF2UwxrSiyl.png', NULL, '2021-10-02 05:32:15', '2021-10-02 05:32:15'),
(4, 2, 'assets/gallery/VQRCDk30m4zeSnAweIr0KMjGZxr8RhBEmS9Z3GBd.png', NULL, '2021-10-02 05:32:32', '2021-10-02 05:32:32'),
(5, 3, 'assets/gallery/yCMLX7mTnHAhV3kMTIXcIjXct5KMBHhhUQCSTCwx.png', NULL, '2021-10-02 05:33:14', '2021-10-02 05:33:14'),
(6, 4, 'assets/gallery/l8pweCGBM1DLufV0RtlYsV4H6QtLiKac6GRtXivB.png', NULL, '2021-10-02 05:33:32', '2021-10-02 05:33:32'),
(7, 5, 'assets/gallery/Nq87mRjdb0UyJPRBfiy4cnNvDtm15BJTLWbwR0S3.png', NULL, '2021-10-02 05:33:50', '2021-10-02 05:33:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_30_063223_create_travel_packages', 1),
(5, '2021_09_30_065850_create_galleries_table', 2),
(6, '2021_09_30_070631_create_transactions_table', 3),
(7, '2021_09_30_071450_create_transaction_details_table', 4),
(8, '2021_09_30_075629_add_roles_field_to_users_table', 5),
(9, '2021_09_30_114903_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 190, 290, 'SUCCESS', NULL, NULL, '2021-10-02 03:31:19'),
(2, 5, 2, 0, 216, 'IN_CART', '2021-10-03 04:46:13', '2021-10-03 04:44:09', '2021-10-03 04:46:13'),
(3, 5, 2, 0, 216, 'IN_CART', '2021-10-03 04:50:06', '2021-10-03 04:49:29', '2021-10-03 04:50:06'),
(4, 5, 2, 0, 216, 'IN_CART', NULL, '2021-10-03 04:50:15', '2021-10-03 04:50:15'),
(5, 5, 2, 190, 622, 'PENDING', NULL, '2021-10-03 23:44:28', '2021-10-03 23:46:57'),
(6, 5, 2, 0, 216, 'IN_CART', '2021-10-03 23:48:23', '2021-10-03 23:47:32', '2021-10-03 23:48:23'),
(7, 5, 2, 190, 622, 'PENDING', NULL, '2021-10-03 23:51:27', '2021-10-03 23:59:10'),
(8, 4, 2, 0, 0, 'PENDING', NULL, '2021-10-04 00:00:45', '2021-10-04 00:01:07'),
(9, 4, 2, 0, 779, 'PENDING', NULL, '2021-10-05 02:58:41', '2021-10-05 02:58:50'),
(10, 3, 2, 190, 1768, 'PENDING', NULL, '2021-10-05 03:25:34', '2021-10-05 03:26:06'),
(11, 4, 2, 190, 1748, 'PENDING', NULL, '2021-10-05 03:27:39', '2021-10-05 03:27:53'),
(12, 5, 2, 190, 622, 'PENDING', NULL, '2021-10-05 03:40:56', '2021-10-05 03:45:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'inoky30', 'ID', 1, '2021-10-02', NULL, NULL, NULL),
(2, 1, 'irpannudin', 'ID', 0, '2021-10-01', NULL, NULL, NULL),
(3, 2, 'inoky30', 'ID', 0, '2026-10-03', NULL, '2021-10-03 04:44:09', '2021-10-03 04:44:09'),
(4, 2, 'irpannudin', 'US', 1, '2021-10-04', NULL, '2021-10-03 04:45:45', '2021-10-03 04:45:45'),
(5, 3, 'inoky30', 'ID', 0, '2026-10-03', NULL, '2021-10-03 04:49:29', '2021-10-03 04:49:29'),
(6, 3, 'irpannudin', 'US', 1, '2021-10-04', NULL, '2021-10-03 04:49:41', '2021-10-03 04:49:41'),
(7, 4, 'inoky30', 'ID', 0, '2026-10-03', NULL, '2021-10-03 04:50:15', '2021-10-03 04:50:15'),
(8, 5, 'inoky30', 'ID', 0, '2026-10-04', NULL, '2021-10-03 23:44:29', '2021-10-03 23:44:29'),
(9, 5, 'irpannudin', 'FR', 1, '2021-10-05', NULL, '2021-10-03 23:46:09', '2021-10-03 23:46:09'),
(10, 6, 'inoky30', 'ID', 0, '2026-10-04', NULL, '2021-10-03 23:47:32', '2021-10-03 23:47:32'),
(11, 6, 'irpannudin', 'AU', 1, '2021-10-05', NULL, '2021-10-03 23:47:47', '2021-10-03 23:47:47'),
(12, 7, 'inoky30', 'ID', 0, '2026-10-04', NULL, '2021-10-03 23:51:27', '2021-10-03 23:51:27'),
(13, 7, 'irpannudin', 'CN', 1, '2021-10-05', '2021-10-03 23:52:05', '2021-10-03 23:51:40', '2021-10-03 23:52:05'),
(14, 7, 'irpannudin', 'US', 1, '2021-10-05', '2021-10-03 23:58:17', '2021-10-03 23:54:32', '2021-10-03 23:58:17'),
(15, 7, 'irpannudin', 'US', 1, '2021-10-05', NULL, '2021-10-03 23:58:38', '2021-10-03 23:58:38'),
(16, 8, 'inoky30', 'ID', 0, '2026-10-04', '2021-10-04 00:00:49', '2021-10-04 00:00:45', '2021-10-04 00:00:49'),
(17, 9, 'inoky30', 'ID', 0, '2026-10-05', NULL, '2021-10-05 02:58:42', '2021-10-05 02:58:42'),
(18, 10, 'inoky30', 'ID', 0, '2026-10-05', NULL, '2021-10-05 03:25:35', '2021-10-05 03:25:35'),
(19, 10, 'irpannudin', 'US', 1, '2021-10-06', NULL, '2021-10-05 03:26:01', '2021-10-05 03:26:01'),
(20, 11, 'inoky30', 'ID', 0, '2026-10-05', NULL, '2021-10-05 03:27:39', '2021-10-05 03:27:39'),
(21, 11, 'irpannudin', 'US', 1, '2021-10-06', NULL, '2021-10-05 03:27:50', '2021-10-05 03:27:50'),
(22, 12, 'inoky30', 'ID', 0, '2026-10-05', NULL, '2021-10-05 03:40:57', '2021-10-05 03:40:57'),
(23, 12, 'irpannudin', 'US', 1, '2021-10-06', NULL, '2021-10-05 03:45:13', '2021-10-05 03:45:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Liburan Santuy', 'liburan-santuy', 'Jakarta', 'Liburan Santuy', 'Dance', 'Betawi', 'Cilok', '2021-09-29', '3D', 'Open Trip', 150, '2021-09-30 07:01:32', '2021-09-30 06:45:29', '2021-09-30 07:01:32'),
(2, 'Sapiente aut laborum', 'sapiente-aut-laborum', 'Quae blanditiis dolo', 'Distinctio Laboris', 'Excepturi qui ex ea', 'Deserunt quam sint f', 'Quis adipisicing vel', '2009-08-23', 'Voluptas asperiores', 'Assumenda elit dolo', 379, NULL, '2021-10-02 02:00:39', '2021-10-02 02:00:39'),
(3, 'Eum impedit sed per', 'eum-impedit-sed-per', 'Dolor quis iste elit', 'Quia ipsum est quis', 'In maxime odit expli', 'Doloremque ea ipsum', 'Velit placeat molli', '2012-01-06', 'Soluta soluta in rer', 'Deserunt lorem nulla', 789, NULL, '2021-10-02 05:29:41', '2021-10-02 05:29:41'),
(4, 'Fugit deleniti veni', 'fugit-deleniti-veni', 'Officia quae perspic', 'Aliquip non qui ad b', 'Fugiat aute id qui', 'Alias Nam ex fugiat', 'Labore praesentium a', '1971-12-05', 'Qui inventore elit', 'Veritatis quas ex mi', 779, NULL, '2021-10-02 05:29:49', '2021-10-02 05:29:49'),
(5, 'Ipsam fugiat sed vol', 'ipsam-fugiat-sed-vol', 'Optio incididunt in', 'Id eaque labore cup', 'Ducimus autem est e', 'Ut qui cupiditate en', 'Eum et qui dolorum i', '1998-02-17', 'Aut culpa fugiat n', 'Fugiat beatae rerum', 216, NULL, '2021-10-02 05:29:55', '2021-10-02 05:29:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Farhan Jiratullah', 'farhanjiratullah794@gmail.com', NULL, '$2y$10$1v4zaF9rsS7QOXCz3wVc..8HhS8NiKyqfa7Q6zaDrgCoJmcvrNMpe', NULL, '2021-09-30 02:00:49', '2021-09-30 02:00:49', 'ADMIN', 'farhanjtl'),
(2, 'Alrelianos Inoky Raisyad', 'inoky@gmail.com', '2021-10-03 11:43:37', '$2y$10$bs5NESP2W/B1EbOp.K7MK.rNKErTrvwhRKxBe41OppaCUXD7D7L0a', NULL, '2021-09-30 02:06:54', '2021-09-30 02:06:54', 'USER', 'inoky30'),
(3, 'Dimas Syahputra', 'dimas@gmail.com', '2021-09-30 03:53:30', '$2y$10$6R31MLVRyr2b.Z/02lnOp.TOMwEZcT/f5Puf7gYykXV3uGV7xd0IC', NULL, '2021-09-30 03:52:57', '2021-09-30 03:53:30', 'USER', ''),
(4, 'Irpan Nudin', 'irpan@gmail.com', NULL, '$2y$10$NWpP79c2C8HS.qVc2Xr3Y.G3e4dyvkInqJKeL.HMQkKTNMAZLvn/G', NULL, '2021-09-30 04:54:22', '2021-09-30 04:54:22', 'USER', 'irpannudin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
