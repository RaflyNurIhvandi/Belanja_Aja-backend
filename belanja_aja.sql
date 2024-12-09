-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2023 at 02:59 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belanja_aja`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_beli` int(100) DEFAULT NULL,
  `harga_jual` int(100) DEFAULT NULL,
  `kode_pemasok` varchar(70) DEFAULT NULL,
  `jumlah_barang` int(25) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `deskripsi` longtext,
  `user` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `kode_pemasok`, `jumlah_barang`, `tanggal_masuk`, `deskripsi`, `user`, `created_at`, `updated_at`) VALUES
(1, 'BRG20231113043751', 'Besi Ku', 15000, 16000, 'PM20231112151156', 201, '2023-11-12', 'Barang Bagus', 'moakikuchi@gmail.com', '2023-12-11 16:24:59', '2023-12-11 16:25:20'),
(2, 'BRG20231211151748', 'Tembaga', 1000000, 1500000, 'PM20231112151156', 30, '2023-12-11', 'Barang Bagus', 'moakikuchi@gmail.com', '2023-12-11 16:24:59', '2023-12-11 16:24:59'),
(4, 'BRG20231211152342', 'Minyak', 10000, 12000, 'PM20231112151156', 30, '2023-12-11', 'Minyak Tanah', 'moakikuchi@gmail.com', '2023-12-11 16:24:59', '2023-12-11 16:24:59'),
(5, 'BRG20231211161115', 'Baju', 50000, 550000, 'PM20231112135350', 45, '2023-10-10', 'Baru', 'moakikuchi@gmail.com', '2023-12-11 16:24:59', '2023-12-11 16:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komisis`
--

CREATE TABLE `komisis` (
  `id` int(11) NOT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `komisi` int(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komisis`
--

INSERT INTO `komisis` (`id`, `nama_karyawan`, `komisi`, `created_at`, `updated_at`) VALUES
(1, 'Karyawan 1', 2000, '2023-12-12 14:43:13', '2023-12-12 14:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `master_akses`
--

CREATE TABLE `master_akses` (
  `id_akses` int(11) NOT NULL,
  `id_user` int(20) DEFAULT NULL,
  `akses` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_akses`
--

INSERT INTO `master_akses` (`id_akses`, `id_user`, `akses`, `created_at`, `updated_at`) VALUES
(1, 1, 'kepala', '2023-09-25 05:08:55', '2023-09-25 05:08:56'),
(2, 2, 'karyawan', '2023-09-25 05:08:52', '2023-09-25 05:08:53'),
(5, 5, 'karyawan', '2023-11-06 09:17:40', '2023-11-06 09:17:40'),
(6, 6, 'karyawan', '2023-11-06 09:18:34', '2023-11-06 09:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` int(11) NOT NULL,
  `kode_pelanggan` varchar(100) DEFAULT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `no_telp_pelanggan` varchar(50) DEFAULT NULL,
  `kota_pelanggan` varchar(100) DEFAULT NULL,
  `email_pelanggan` varchar(225) DEFAULT NULL,
  `alamat_pelanggan` longtext,
  `user` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `kode_pelanggan`, `nama_pelanggan`, `no_telp_pelanggan`, `kota_pelanggan`, `email_pelanggan`, `alamat_pelanggan`, `user`, `created_at`, `updated_at`) VALUES
(1, 'PL20231211164528', 'Sindu', '0863261371', 'Trenggalek', 'sindu@gmail.com', 'Sumbergedong', 'moakikuchi@gmail.com', '2023-12-11 16:45:28', '2023-12-11 16:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `pemasoks`
--

CREATE TABLE `pemasoks` (
  `id` int(11) NOT NULL,
  `kode_pemasok` varchar(100) DEFAULT NULL,
  `nama_pemasok` varchar(100) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `kota_pemasok` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` longtext,
  `user` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasoks`
--

INSERT INTO `pemasoks` (`id`, `kode_pemasok`, `nama_pemasok`, `no_telp`, `kota_pemasok`, `email`, `alamat`, `user`, `created_at`, `updated_at`) VALUES
(11, 'PM20231112135350', 'PT Atmajaya', '082626473', 'Surabaya', 'ptatmajaya@gmail.com', 'Jl Surabaya - Kediri', 'moakikuchi@gmail.com', '2023-12-11 16:24:28', '2023-12-11 16:24:28'),
(12, 'PM20231112151156', 'PT Industrial', '086736372', 'Jakarta', 'ptindustrial@gmail.com', 'Jl Jakarta - Bandung', 'moakikuchi@gmail.com', '2023-12-11 16:24:28', '2023-12-11 16:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` int(11) NOT NULL,
  `no_faktur` varchar(255) DEFAULT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_jual` int(225) DEFAULT NULL,
  `jumlah` int(225) DEFAULT NULL,
  `total_harga` int(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualans`
--

INSERT INTO `penjualans` (`id`, `no_faktur`, `kode_barang`, `nama_barang`, `harga_jual`, `jumlah`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 'FK2023112204824269', 'BRG20231211152342', 'Minyak', 12000, 5, 60000, '2023-12-12 13:57:26', '2023-12-12 13:57:26'),
(2, 'FK2023112204824269', 'BRG20231211161115', 'Baju', 550000, 3, 1650000, '2023-12-12 13:57:26', '2023-12-12 13:57:26'),
(3, 'FK2023112204824269', 'BRG20231113043751', 'Besi Ku', 16000, 1, 16000, '2023-12-12 13:57:26', '2023-12-12 13:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_details`
--

CREATE TABLE `penjualan_details` (
  `id` int(11) NOT NULL,
  `kode_pelanggan` varchar(255) DEFAULT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `alamat_pelanggan` longtext,
  `kota_pelanggan` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `no_faktur` varchar(255) DEFAULT NULL,
  `tanggal_jual` date DEFAULT NULL,
  `tanggal_jatuh_tempo` date DEFAULT NULL,
  `keterangan_bayar` varchar(100) DEFAULT NULL,
  `total_belanja` int(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_details`
--

INSERT INTO `penjualan_details` (`id`, `kode_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `kota_pelanggan`, `no_telp`, `no_faktur`, `tanggal_jual`, `tanggal_jatuh_tempo`, `keterangan_bayar`, `total_belanja`, `created_at`, `updated_at`) VALUES
(1, 'PL20231211164528', 'Sindu', 'Sumbergedong', 'Trenggalek', '0863261371', 'FK2023112204824269', '2023-10-10', '2023-10-11', 'Lunas', 1726000, '2023-12-12 13:57:26', '2023-12-12 13:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Moa Kikuchi', 'moakikuchi@gmail.com', NULL, '$2y$10$I0r3kT27D.TVd5w2/gu99uvfGurbjpHYoarGvhlYPmJuOd9tBpaSC', NULL, '2023-09-23 22:03:24', '2023-09-23 22:03:24'),
(2, 'Karyawan 1', 'karyawan1@gmail.com', NULL, '$2y$10$96OigOXp.UrE7jG7NoxUjuC0Aho.6CD4eQwf4OtntasJxfmmezrJ6', NULL, '2023-09-25 00:13:52', '2023-09-25 00:13:52'),
(5, 'Karyawan 5', 'karyawan5@gmail.com', NULL, '$2y$10$56Ck7DZaOoxZhdRvjGw9EuN8ft8xmRR2lrJC5Ib.qt65vpEB9hhfS', NULL, '2023-11-06 02:17:40', '2023-11-06 02:17:40'),
(6, 'Karyawan 6', 'karyawan6@gmail.com', NULL, '$2y$10$xLJlxdFVSRvdjhr5fu9U8.OQUGkhy4kSJMETWXegJmIodCYCFYr1q', NULL, '2023-11-06 02:18:34', '2023-11-06 02:18:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `komisis`
--
ALTER TABLE `komisis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_akses`
--
ALTER TABLE `master_akses`
  ADD PRIMARY KEY (`id_akses`);

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
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemasoks`
--
ALTER TABLE `pemasoks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan_details`
--
ALTER TABLE `penjualan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komisis`
--
ALTER TABLE `komisis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_akses`
--
ALTER TABLE `master_akses`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemasoks`
--
ALTER TABLE `pemasoks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjualan_details`
--
ALTER TABLE `penjualan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
