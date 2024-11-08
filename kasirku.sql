-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 08:48 AM
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
-- Database: `kasirku`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`),
  UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Detergen Bubuk', '2024-11-01 04:46:51', '2024-11-01 04:47:28'),
(2, 'Detergen Cair', '2024-11-01 04:47:19', '2024-11-01 04:47:19'),
(3, 'Makanan Ringan', '2024-11-01 04:47:45', '2024-11-01 04:47:45'),
(4, 'Minuman Sehat', '2024-11-01 06:34:30', '2024-11-01 06:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_member` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_member`),
  UNIQUE KEY `member_kode_member_unique` (`kode_member`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, '00001', 'Lenawati', 'Dusun Maonai', '012719279', '2024-11-01 04:52:15', '2024-11-01 04:53:47'),
(2, '00002', 'Libertus', 'Dusun Maonai', '019271721', '2024-11-01 04:52:53', '2024-11-01 04:53:40'),
(5, '00003', 'Narto', 'Dusun Maonai', '012989121', '2024-11-01 04:53:32', '2024-11-01 04:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200706_buat_supplier_table', 1),
(11, '2021_03_05_200841_buat_pembelian_table', 1),
(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(13, '2021_03_05_200853_buat_penjualan_table', 1),
(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(15, '2021_03_05_200904_buat_setting_table', 1),
(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
(17, '2021_03_11_225128_create_sessions_table', 1),
(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1),
(22, '2024_11_08_074511_tambah_gambar_to_produk_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(1, 3, 20, 300000, 0, 300000, '2024-11-01 04:56:01', '2024-11-01 04:56:30'),
(2, 2, 20, 240000, 0, 240000, '2024-11-01 04:56:40', '2024-11-01 04:56:56'),
(3, 3, 0, 0, 0, 0, '2024-11-01 06:36:13', '2024-11-01 06:36:13'),
(4, 3, 32, 419000, 0, 419000, '2024-11-01 06:36:39', '2024-11-01 06:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE IF NOT EXISTS `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 15000, 20, 300000, '2024-11-01 04:56:11', '2024-11-01 04:56:24'),
(2, 2, 1, 12000, 20, 240000, '2024-11-01 04:56:44', '2024-11-01 04:56:52'),
(3, 4, 2, 20000, 19, 380000, '2024-11-01 06:36:56', '2024-11-01 06:37:03'),
(4, 4, 4, 3000, 13, 39000, '2024-11-01 06:37:09', '2024-11-01 06:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE IF NOT EXISTS `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deskripsi` text NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 'Gaji Karyawan', 10000000, '2024-11-01 04:55:29', '2024-11-01 04:55:34'),
(2, 'Bayar Token Listrik Toko', 300000, '2024-11-08 00:05:23', '2024-11-08 00:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 1, '2024-11-01 04:57:07', '2024-11-01 04:57:07'),
(2, 5, 3, 40500, 5, 38475, 50000, 1, '2024-11-01 04:57:26', '2024-11-01 04:57:54'),
(3, NULL, 0, 0, 0, 0, 0, 2, '2024-11-01 05:05:09', '2024-11-01 05:05:09'),
(4, NULL, 1, 3500, 0, 3500, 5000, 1, '2024-11-01 06:28:40', '2024-11-01 06:28:55'),
(5, NULL, 0, 0, 0, 0, 0, 1, '2024-11-01 06:28:59', '2024-11-01 06:28:59'),
(6, 2, 1, 3500, 5, 3325, 10000, 1, '2024-11-01 06:29:40', '2024-11-01 06:29:59'),
(7, NULL, 0, 0, 0, 0, 0, 1, '2024-11-01 06:30:45', '2024-11-01 06:30:45'),
(8, NULL, 0, 0, 0, 0, 0, 1, '2024-11-01 06:38:00', '2024-11-01 06:38:00'),
(9, 1, 1, 25000, 5, 23750, 50000, 1, '2024-11-01 06:38:28', '2024-11-01 06:39:00'),
(10, NULL, 10, 40000, 0, 40000, 50000, 1, '2024-11-01 06:39:47', '2024-11-01 06:40:11'),
(11, NULL, 0, 0, 0, 0, 0, 2, '2024-11-01 06:40:49', '2024-11-01 06:40:49'),
(12, NULL, 0, 0, 0, 0, 0, 1, '2024-11-01 06:47:55', '2024-11-01 06:47:55'),
(13, NULL, 0, 0, 0, 0, 0, 1, '2024-11-08 00:29:17', '2024-11-08 00:29:17'),
(14, 2, 1, 12000, 5, 11400, 20000, 1, '2024-11-08 00:29:28', '2024-11-08 00:30:53'),
(15, NULL, 0, 0, 0, 0, 0, 1, '2024-11-08 00:30:58', '2024-11-08 00:30:58'),
(16, NULL, 0, 0, 0, 0, 0, 2, '2024-11-08 00:35:53', '2024-11-08 00:35:53'),
(17, 1, 2, 31000, 5, 29450, 50000, 2, '2024-11-08 00:36:14', '2024-11-08 00:36:37'),
(18, NULL, 0, 0, 0, 0, 0, 2, '2024-11-08 00:36:39', '2024-11-08 00:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE IF NOT EXISTS `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 25000, 1, 0, 25000, '2024-11-01 04:57:14', '2024-11-01 04:57:14'),
(2, 2, 1, 13500, 3, 5, 40500, '2024-11-01 04:57:31', '2024-11-01 04:57:54'),
(3, 4, 6, 3500, 1, 0, 3500, '2024-11-01 06:28:47', '2024-11-01 06:28:47'),
(4, 6, 6, 3500, 1, 5, 3500, '2024-11-01 06:29:45', '2024-11-01 06:29:59'),
(5, 9, 2, 25000, 4, 5, 100000, '2024-11-01 06:38:33', '2024-11-01 06:39:00'),
(6, 10, 4, 4000, 10, 0, 40000, '2024-11-01 06:39:53', '2024-11-01 06:39:56'),
(7, 12, 5, 17500, 1, 0, 17500, '2024-11-01 06:48:05', '2024-11-01 06:48:05'),
(9, 14, 3, 12000, 1, 5, 12000, '2024-11-08 00:30:42', '2024-11-08 00:30:53'),
(10, 17, 1, 13500, 1, 5, 13500, '2024-11-08 00:36:20', '2024-11-08 00:36:37'),
(11, 17, 5, 17500, 1, 5, 17500, '2024-11-08 00:36:23', '2024-11-08 00:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_produk`),
  UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  KEY `produk_id_kategori_foreign` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 2, 'P000001', 'Rinso Cair', 'Rinso', 12000, 0, 13500, 116, NULL, '2024-11-01 04:48:26', '2024-11-08 00:36:37'),
(2, 3, 'P000002', 'Kerupuk Basah', 'Kerupuk Kapuas', 20000, 0, 25000, 115, NULL, '2024-11-01 04:49:10', '2024-11-01 06:39:00'),
(3, 3, 'P000003', 'Taro', 'Taro', 9800, 0, 12000, 49, NULL, '2024-11-01 04:49:43', '2024-11-08 00:30:53'),
(4, 3, 'P000004', 'Kue Bakri', 'Kue', 3000, 0, 4000, 53, NULL, '2024-11-01 04:50:15', '2024-11-01 06:40:11'),
(5, 3, 'P000005', 'Tango', 'Tango', 15000, 0, 17500, 119, NULL, '2024-11-01 04:50:54', '2024-11-08 00:36:37'),
(6, 2, 'P000006', 'Sabun Cair', 'Lifeboy', 2000, 0, 3500, 48, NULL, '2024-11-01 05:00:46', '2024-11-01 06:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('f8LuwDFXJ61UcZ7o4uZoLBU2m8I8yRU78Bl8aNGt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMmVsckZrb1pMV0JJeDBTYTNXZTA4YTBnNXRhWGRHTzZ2ZkU0bUMwdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWsiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkLkhMTUFsbjF3a25PYzRWZFYvM1QxdVM4YWVCMXMvRjUuSllUY2R0Rmd1Y01vZDAuNjFzRC4iO30=', 1731051814);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) NOT NULL,
  `path_kartu_member` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Kasir Ku', 'Jl. Banjir Kanal No. 14 C, Mentawai, Sumbar', '08129876127', 1, 5, '/img/logo-20241101120424.png', '/img/member.png', NULL, '2024-11-01 05:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'PT. Sabbit Surfcamp', 'Dusun Boboakenen', '0129120001', '2024-11-01 04:54:21', '2024-11-01 04:54:21'),
(2, 'PT. Libertus Pedia', 'Dusun Makukuet', '0018229912', '2024-11-01 04:54:38', '2024-11-01 04:55:11'),
(3, 'PT. Lenawaty Saleleusik', 'Dusun Baddan 112', '0812918212', '2024-11-01 04:55:05', '2024-11-01 04:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$.HLMAln1wknOc4VdV/3T1uS8aeB1s/F5.JYTcdtFgucMod0.61sD.', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2024-11-01 04:45:55', '2024-11-01 04:45:55'),
(2, 'Kasir 1', 'kasir1@gmail.com', NULL, '$2y$10$.St9yKZ6p7XJBr7lHDqEtO444XeTJhUrG0JbhS9MRlHO1G6QRK6SC', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2024-11-01 04:45:55', '2024-11-01 04:45:55');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
