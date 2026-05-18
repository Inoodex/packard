-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2026 at 01:48 AM
-- Server version: 11.4.10-MariaDB-cll-lve
-- PHP Version: 8.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `packivzj_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(8, 'Akij Printing and Packages Ltd.', '+8801977734913', 'nasirul@akijprinting.com', '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '2026-05-07 15:58:46', '2026-05-07 15:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `signatory_name` varchar(255) DEFAULT NULL,
  `signatory_designation` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `name`, `signatory_name`, `signatory_designation`, `phone`, `photo`, `email`, `website`, `address`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Packard Engineering Ltd.', NULL, NULL, '+8801973000851', 'uploads/company_details/1775385303_logo.png', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', 1, 1, '2026-02-24 09:34:06', '2026-05-18 15:37:26');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_29_144312_addresses', 1),
(7, '2024_03_13_022048_norifications', 1),
(8, '2024_11_10_034909_ditsricts', 1),
(9, '2024_11_10_034941_areas', 1),
(10, '2024_11_25_144630_customers', 1),
(11, '2024_11_25_164637_services', 1),
(12, '2024_12_01_091025_create_bookings_table', 1),
(13, '2024_12_02_015620_create_brands_table', 1),
(14, '2024_12_03_143540_products', 1),
(15, '2024_12_05_152050_sales', 1),
(16, '2024_12_16_102327_payments', 1),
(17, '2024_12_31_090914_daily_sales', 1),
(18, '2025_02_16_091918_attendances', 1),
(19, '2025_03_26_120716_extras', 1),
(20, '2025_04_14_015443_create_vendors_table', 1),
(21, '2025_05_27_095543_create_purchases_table', 1),
(22, '2025_05_29_103934_create_inventories_table', 1),
(23, '2025_10_14_001916_create_expense_categories_table', 1),
(24, '2025_10_14_015809_create_sale_items_table', 1),
(25, '2025_11_03_045713_create_revenues_table', 1),
(26, '2025_11_15_013858_create_clients_table', 1),
(27, '2025_11_18_060953_create_cost_categories_table', 1),
(28, '2025_11_20_153146_create_company_details_table', 1),
(29, '2025_11_20_163131_create_bank_details_table', 1),
(30, '2025_11_23_183135_create_challans_table', 1),
(31, '2025_11_24_110556_create_challan_items_table', 1),
(32, '2025_11_24_125448_create_bills_table', 1),
(33, '2025_11_24_144057_create_bill_items_table', 1),
(34, '2025_11_25_131014_create_quotations_table', 1),
(35, '2025_11_25_135221_create_quotation_items_table', 1),
(36, 'add_teams_fields', 1),
(37, 'create_permission_tables', 1),
(38, '2025_12_02_154630_add_fields_to_products_table', 2),
(39, '2025_12_03_142522_create_inventory_items', 3),
(40, '2025_12_08_164903_create_purchase_items_table', 4),
(41, '2026_02_24_095736_create_products_table', 5),
(42, '2026_02_24_113858_create_clients_table', 6),
(43, '2026_02_24_200000_add_details_to_quotations_table', 7),
(44, '2026_02_24_210000_add_round_off_to_quotations_table', 8),
(45, '2026_02_24_223146_create_company_details_table', 9),
(46, '2026_02_24_233000_add_signatory_and_photo_to_company_details_table', 10),
(47, '2026_02_25_095547_add_pdf_fields_to_quotations_table', 11),
(48, '2026_02_25_100733_add_deleted_at_to_quotations_table', 12),
(49, '2026_02_25_103024_add_company_logo_to_quotations_table', 13),
(50, '2026_04_05_103411_add_unique_constraints_to_clients_table', 14),
(51, '2026_04_05_105206_add_discount_percent_to_quotations_table', 15),
(52, '2026_04_05_105247_add_discount_percent_to_quotation_items_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administration', 'web', '2025-12-02 07:38:52', '2025-12-02 07:38:52'),
(2, 'Booking', 'web', '2025-12-02 07:38:52', '2025-12-02 07:38:52'),
(3, 'Service Management', 'web', '2025-12-02 07:38:52', '2025-12-02 07:38:52'),
(4, 'Sales Management', 'web', '2025-12-02 07:38:52', '2025-12-02 07:38:52'),
(5, 'Settings', 'web', '2025-12-02 07:38:52', '2025-12-02 07:38:52'),
(6, 'Product Management', 'web', '2025-12-02 07:38:52', '2025-12-02 07:38:52'),
(7, 'Customer Management', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(8, 'Vendor Management', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(9, 'Purchase Management', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(10, 'Inventory Management', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(11, 'Expense Management', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(12, 'Report Management', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(13, 'Company Management', 'web', '2026-02-08 05:01:32', '2026-02-08 05:01:32'),
(14, 'Payment Management', 'web', '2026-02-08 05:06:47', '2026-02-08 05:06:47'),
(15, 'Accounts Management', 'web', '2026-02-08 12:46:36', '2026-02-08 12:46:36'),
(16, 'Client Management', 'web', '2026-02-24 05:51:58', '2026-02-24 05:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_code`, `details`, `unit`, `price`, `created_at`, `updated_at`) VALUES
(60, '2A, SP, 10kA, MCB (C Curve)', 'A9N1P02C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 675.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(61, '4A, SP, 10kA, MCB (C Curve)', 'A9N1P04C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 675.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(62, '6A, SP, 10kA, MCB (C Curve)', 'A9N1P06C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(63, '10A, SP, 10kA, MCB (C Curve)', 'A9N1P10C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(64, '16A, SP, 10kA, MCB (C Curve)', 'A9N1P16C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(65, '20A, SP, 10kA, MCB (C Curve)', 'A9N1P20C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(66, '25A, SP, 10kA, MCB (C Curve)', 'A9N1P25C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(67, '32A, SP, 10kA, MCB (C Curve)', 'A9N1P32C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(68, '40A, SP, 10kA, MCB (C Curve)', 'A9N1P40C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 960.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(69, '50A, SP, 10kA, MCB (C Curve)', 'A9N1P50C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 960.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(70, '63A, SP, 10kA, MCB (C Curve)', 'A9N1P63C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1055.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(71, '2A, DP, 10kA, MCB (C Curve)', 'A9N2P02C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1420.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(72, '4A, DP, 10kA, MCB (C Curve)', 'A9N2P04C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1420.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(73, '6A, DP, 10kA, MCB (C Curve)', 'A9N2P06C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(74, '10A, DP, 10kA, MCB (C Curve)', 'A9N2P10C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(75, '16A, DP, 10kA, MCB (C Curve)', 'A9N2P16C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(76, '20A, DP, 10kA, MCB (C Curve)', 'A9N2P20C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(77, '25A, DP, 10kA, MCB (C Curve)', 'A9N2P25C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(78, '32A, DP, 10kA, MCB (C Curve)', 'A9N2P32C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(79, '40A, DP, 10kA, MCB (C Curve)', 'A9N2P40C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1955.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(80, '50A, DP, 10kA, MCB (C Curve)', 'A9N2P50C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1955.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(81, '63A, DP, 10kA, MCB (C Curve)', 'A9N2P63C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(82, '2A, TP, 10kA, MCB (C Curve)', 'A9N3P02C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2560.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(83, '4A, TP, 10kA, MCB (C Curve)', 'A9N3P04C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2560.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(84, '6A, TP, 10kA, MCB (C Curve)', 'A9N3P06C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(85, '10A, TP, 10kA, MCB (C Curve)', 'A9N3P10C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(86, '16A, TP, 10kA, MCB (C Curve)', 'A9N3P16C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(87, '20A, TP, 10kA, MCB (C Curve)', 'A9N3P20C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(88, '25A, TP, 10kA, MCB (C Curve)', 'A9N3P25C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(89, '32A, TP, 10kA, MCB (C Curve)', 'A9N3P32C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 2110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(90, '40A, TP, 10kA, MCB (C Curve)', 'A9N3P40C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3070.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(91, '50A, TP, 10kA, MCB (C Curve)', 'A9N3P50C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3165.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(92, '63A, TP, 10kA, MCB (C Curve)', 'A9N3P63C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3270.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(93, '6A, 4P, 10kA, MCB (C Curve)', 'A9N4P06C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3400.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(94, '10A, 4P, 10kA, MCB (C Curve)', 'A9N4P10C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3400.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(95, '16A, 4P, 10kA, MCB (C Curve)', 'A9N4P16C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3400.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(96, '20A, 4P, 10kA, MCB (C Curve)', 'A9N4P20C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3400.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(97, '25A, 4P, 10kA, MCB (C Curve)', 'A9N4P25C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3400.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(98, '32A, 4P, 10kA, MCB (C Curve)', 'A9N4P32C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3400.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(99, '40A, 4P, 10kA, MCB (C Curve)', 'A9N4P40C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 4600.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(100, '50A, 4P, 10kA, MCB (C Curve)', 'A9N4P50C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 4600.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(101, '63A, 4P, 10kA, MCB (C Curve)', 'A9N4P63C', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 4600.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(102, '16A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM016', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(103, '25A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM025', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(104, '32A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM032', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(105, '40A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM040', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(106, '50A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM050', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(107, '63A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM063', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(108, '80A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM080', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 15840.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(109, '100A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX100F', 'C10F3TM100', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 15840.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(110, '125A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX160F', 'C16F3TM125', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 27830.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(111, '160A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX160F', 'C16F3TM160', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 27830.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(112, '200A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX250F', 'C25F3TM200', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 41690.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(113, '250A, 3P, 36kA, MCCB (Adjustable), ComPacT NSX250F', 'C25F3TM250', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 41690.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(114, '400A, 3P, 50kA, MCCB (Adjustable), ComPacT NSX400N', 'C40N32D400', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 69410.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(115, '630A, 3P, 50kA, MCCB (Adjustable), ComPacT NSX630N', 'C63N32D630', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 88220.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(116, '800A, 3P, 50kA, MCCB (Adjustable), ComPacT NS800N', 'NS800N (33466)', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 137060.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(117, '1000A, 3P, 50kA, MCCB (Adjustable), ComPacT NS1000N', 'NS1000N (33472)', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 156640.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(118, '1250A, 3P, 50kA, MCCB (Adjustable), ComPacT NS1250N', 'NS1250N (33478)', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 166430.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(119, '1600A, 3P, 50kA, MCCB (Adjustable), ComPacT NS1600N', 'NS1600N (33482)', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 176220.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(120, '16A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510300', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(121, '25A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510301', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(122, '32A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510302', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(123, '40A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510303', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(124, '50A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510304', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(125, '63A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510305', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(126, '80A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510306', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(127, '100A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV510307', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 10340.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(128, '125A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV516302', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 14520.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(129, '160A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV516303', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 17710.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(130, '200A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV525302', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 26510.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(131, '250A, 3P, 25kA, MCCB (Adjustable), EasyPact CVS', 'LV525303', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 30910.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(132, '320A, 3P, 36kA, MCCB (Adjustable), EasyPact CVS', 'LV540305', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 52140.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(133, '400A, 3P, 36kA, MCCB (Adjustable), EasyPact CVS', 'LV540306', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 54230.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(134, '500A, 3P, 36kA, MCCB (Adjustable), EasyPact CVS', 'LV563305', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 63580.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(135, '600A, 3P, 36kA, MCCB (Adjustable), EasyPact CVS', 'LV563306', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 68750.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(136, '630A, 3P, 42kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NT06H13F2', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 305000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(137, '800A, 3P, 42kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NT08H13F2', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 310000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(138, '1000A, 3P, 42kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NT10H13F2', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 320000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(139, '1250A, 3P, 42kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NT12H13F2', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 360000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(140, '1600A, 3P, 65kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW16H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 420000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(141, '2000A, 3P, 65kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW20H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 450000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(142, '2500A, 3P, 65kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW25H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 550000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(143, '3200A, 3P, 65kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW32H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 650000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(144, '4000A, 3P, 65kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW40H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 850000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(145, '5000A, 3P, 100kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW50H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1500000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(146, '6300A, 3P, 100kA, Air Circuit Breaker (Fixed Chassis), Micrologic 2.0A, with MX/XF, MN & MCH', 'NW63H13F2', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1900000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(147, '800A, VCB, 11KV, 25KA, FIXED TYPE', 'EXE122508K3B633', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 440000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(148, '1250A, VCB, 11KV, 25KA, FIXED TYPE', 'EXE122512K3B633', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 480000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(149, '1250A, VCB, 12KV, 25KA, FIXED TYPE', 'GCR_EVOLIS_M', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 750000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(150, '630A, VCB, 12KV, 25KA, FIXED TYPE', 'GCR_EVOLIS_MM', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 700000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(151, '9A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D09M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2135.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(152, '9A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D09B7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2135.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(153, '9A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D09F7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2135.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(154, '9A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D09N7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2135.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(155, '12A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D12M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2580.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(156, '12A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D12B7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2580.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(157, '12A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D12F7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2580.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(158, '12A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D12N7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 2580.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(159, '18A (ith 32A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D18M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3255.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(160, '18A (ith 32A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D18B7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3255.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(161, '18A (ith 32A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D18F7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3255.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(162, '18A (ith 32A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D18N7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3255.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(163, '25A (ith 40A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D25M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3705.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(164, '25A (ith 40A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D25B7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3705.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(165, '25A (ith 40A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D25F7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3705.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(166, '25A (ith 40A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D25N7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3705.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(167, '32A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D32M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 7295.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(168, '32A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D32B7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 7295.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(169, '32A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D32F7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 7295.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(170, '32A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D32N7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 7295.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(171, '38A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D38M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 11110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(172, '38A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D38B7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 11110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(173, '38A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D38F7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 11110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(174, '38A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D38N7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 11110.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(175, '40A (ith 60A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D40AM7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 13000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(176, '40A (ith 60A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D40AB7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 13000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(177, '40A (ith 60A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D40AF7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 13000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(178, '40A (ith 60A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D40AN7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 13000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(179, '50A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D50AM7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 14140.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(180, '50A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D50AB7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 14140.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(181, '50A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D50AF7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 14140.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(182, '50A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D50AN7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 14140.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(183, '65A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 220V AC', 'LC1D65AM7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 17165.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(184, '65A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V AC', 'LC1D65AB7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 17165.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(185, '65A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 110V AC', 'LC1D65AF7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 17165.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(186, '65A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 415V AC', 'LC1D65AN7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 17165.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(187, '80A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1D80M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 22105.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(188, '80A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1D80B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 22105.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(189, '80A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1D80F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 22105.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(190, '80A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1D80N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 22105.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(191, '95A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1D95M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 26000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(192, '95A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1D95B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 26000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(193, '95A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1D95F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 26000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(194, '95A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1D95N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 26000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(195, '115A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1D115M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 32000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(196, '115A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1D115B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 32000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(197, '115A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1D115F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 32000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(198, '115A (ith 125A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1D115N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 32000.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(199, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1D150M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38150.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(200, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1D150B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38150.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(201, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1D150F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38150.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(202, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1D150N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38150.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(203, '115A (ith 200A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F115M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(204, '115A (ith 200A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F115B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(205, '115A (ith 200A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F115F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(206, '115A (ith 200A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F115N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 38500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(207, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F150M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 48500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(208, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F150B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 48500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(209, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F150F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 48500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(210, '150A (ith 250A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F150N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 48500.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(211, '185A (ith 275A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F185M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 58120.00, '2026-05-13 18:50:15', '2026-05-13 18:50:15'),
(212, '185A (ith 275A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F185B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 58120.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(213, '185A (ith 275A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F185F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 58120.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(214, '185A (ith 275A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F185N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 58120.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(215, '225A (ith 315A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F225M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 70015.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(216, '225A (ith 315A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F225B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 70015.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(217, '225A (ith 315A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F225F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 70015.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(218, '225A (ith 315A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F225N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 70015.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(219, '265A (ith 350A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F265M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 82020.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(220, '265A (ith 350A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F265B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 82020.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(221, '265A (ith 350A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F265F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 82020.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(222, '265A (ith 350A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F265N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 82020.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(223, '330A (ith 400A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F330M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 95035.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(224, '330A (ith 400A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F330B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 95035.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(225, '330A (ith 400A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F330F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 95035.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(226, '330A (ith 400A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F330N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 95035.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(227, '400A (ith 500A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F400M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 119940.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(228, '400A (ith 500A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F400B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 119940.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(229, '400A (ith 500A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F400F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 119940.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(230, '400A (ith 500A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F400N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 119940.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(231, '500A (ith 700A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F500M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 149900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(232, '500A (ith 700A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F500B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 149900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(233, '500A (ith 700A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F500F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 149900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(234, '500A (ith 700A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F500N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 149900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(235, '630A (ith 1000A) 3P, Magnetic Contactor, 1NO+1NC , Coil 220V AC', 'LC1F630M7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 189845.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(236, '630A (ith 1000A) 3P, Magnetic Contactor, 1NO+1NC , Coil 24V AC', 'LC1F630B7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 189845.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(237, '630A (ith 1000A) 3P, Magnetic Contactor, 1NO+1NC , Coil 110V AC', 'LC1F630F7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 189845.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(238, '630A (ith 1000A) 3P, Magnetic Contactor, 1NO+1NC , Coil 415V AC', 'LC1F630N7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 189845.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(239, '800A (AC3), 3P, ith 1000A (AC1), Coil: 220V AC/DC', 'LC1F800MW', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 399545.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(240, '9A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D09BD', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 5160.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(241, '12A (ith 25A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D12BD', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 6170.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(242, '18A (ith 32A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D18BD', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 6955.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(243, '25A (ith 40A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D25BD', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 9100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(244, '32A (ith 50A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D32BD', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 11110.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(245, '40A (ith 60A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D40ABD', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 25130.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(246, '50A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D50ABD', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 30070.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(247, '65A (ith 80A) 3P Magnetic Contactor, 1NO+1NC, Coil 24V DC', 'LC1D65ABD', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 34300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(248, '3NO+2NC Magnetic Control Relay, Coil 220V AC', 'CAD32M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3705.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(249, '5NO Magnetic Control Relay, Coil 220V AC', 'CAD50M7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3705.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(250, '1NO+1NC Auxiliary Contact Block', 'LADN11', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 785.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(251, '2NO+2NC Auxiliary Contact Block', 'LADN22', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1125.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(252, '2NO Auxiliary Contact Block', 'LADN20', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1125.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(253, '2NC Auxiliary Contact Block', 'LADN02', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1125.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(254, '3NO+1NC Auxiliary Contact Block', 'LADN31', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1250.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(255, '4NO Auxiliary Contact Block', 'LADN40', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1250.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(256, '4NC Auxiliary Contact Block', 'LADN04', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1250.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(257, '0.1 - 30 S On Delay Timer', 'LADT2', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(258, '0.1 - 30 S Off Delay Timer', 'LADR2', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(259, '10 - 180 S On Delay Timer', 'LADT4', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(260, '10 - 180 S Off Delay Timer', 'LADR4', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(261, 'On-delay timing relay - 0.1s-100h, 230V AC', 'REXL2TMP7', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 3200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(262, '0.10-0.16)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD01', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(263, '(0.16-0.25)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD02', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(264, '(0.25-0.40)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD03', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(265, '(0.40-0.63)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD04', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(266, '(0.63-1), 3P  Thermal Overload Relay for LC1D09-D38', 'LRD05', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(267, '(1-1.6)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD06', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(268, '(1.6-2.5)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD07', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(269, '(2.5-4)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD08', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(270, '(4-6)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD10', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(271, '(5.5-8)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD12', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(272, '(7-10)A, 3P  Thermal Overload Relay for LC1D09-D38', 'LRD14', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3255.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(273, '(9-13)A, 3P  Thermal Overload Relay for LC1D12-D38', 'LRD16', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3365.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(274, '(12-18)A, 3P  Thermal Overload Relay for LC1D18-D38', 'LRD21', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 3700.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(275, '(16-24)A, 3P  Thermal Overload Relay for LC1D25-D38', 'LRD22', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 4000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(276, '(23-32)A, 3P  Thermal Overload Relay for LC1D25-D38', 'LRD32', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5610.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(277, '(30-38)A, 3P  Thermal Overload Relay for LC1D25-D38', 'LRD35', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(278, '16-25)A, 3P Thermal Overload Relay for LC1D40A…D65A', 'LRD325', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(279, '(23-32)A, 3P Thermal Overload Relay for LC1D40A…D65A', 'LRD332', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(280, '(3040)A, 3P Thermal Overload Relay for LC1D40A…D65A', 'LRD340', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(281, '(37-50)A, 3P Thermal Overload Relay for LC1D40A…D65A', 'LRD350', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 9000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(282, '(48-65)A, 3P Thermal Overload Relay for LC1D40A…D65A', 'LRD365', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 9500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(283, '(55-70)A, 3P Thermal Overload Relay for LC1D50 … D95', 'LRD3361', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 10300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(284, '(63-80)A, 3P Thermal Overload Relay for LC1D65 … D95', 'LRD3363', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 12345.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(285, '(80-104)A, 3P Thermal Overload Relay for LC1D80 … D95', 'LRD3365', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 18000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(286, '(80-104)A, 3P Thermal Overload Relay for LC1D115 … D150', 'LRD4365', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 22330.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(287, '(95-120)A, 3P Thermal Overload Relay for LC1D115 … D150', 'LRD4367', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 23500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(288, '(110-140)A, 3P Thermal Overload Relay for LC1D115 … D150', 'LRD4369', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 24500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(289, '(30-50)A, 3P, Electronic Thermal Overload Relay for F115…F185', 'LR9F5357', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 25000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(290, '(48-80)A, 3P, Electronic Thermal Overload Relay for F115…F185', 'LR9F5363', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 25000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(291, '(60-100)A, 3P, Electronic Thermal Overload Relay for F115…F185', 'LR9F5367', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 33435.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(292, '(90-150)A, 3P, Electronic Thermal Overload Relay for F115…F185', 'LR9F5369', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 34500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(293, '(132-220)A, 3P, Electronic Thermal Overload Relay for F185…F400', 'LR9F5371', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 35700.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(294, '(200-330)A, 3P, Electronic Thermal Overload Relay for F225…F500', 'LR9F7375', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 35700.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(295, '(300-500)A, 3P, Electronic Thermal Overload Relay for F225…F500', 'LR9F7379', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 42000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(296, '(380-630)A, 3P, Electronic Thermal Overload Relay for F400…F630 and F800', 'LR9F7381', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 45000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(297, '0.5-6A, 220V AC, Electronics Over Current Relay', 'EOCRSSD-05S', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 12600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(298, '3-30A, 220V AC, Electronics Over Current Relay', 'EOCRSSD-30S', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 12600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(299, '10-60A, 220V AC, Electronics Over Current Relay', 'EOCRSSD- 60S', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 12600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(300, '3-30A, 220V AC, Electronics Over Current Relay', 'EOCRSS-30S', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(301, '0.5-6A, 220V AC, Electronics Over Current Relay', 'EOCRSS-05S', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(302, '5-60A, 220V AC, Electronics Over Current Relay', 'EOCRSS-60S', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(303, '0.5..80A, 100-240V AC/DC, Electronics Over Current Relay', 'FDM2-WRDUWZ', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 25000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(304, '0.5-60A 100-240V AC/DC, Electronics Over Current Relay', '3DM2-WRDUWZ', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 25000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(305, '0.5-60A, 100-240V AC/DC, Electronics Over Current Relay', '3DM2WRDUW', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 25000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(306, '10-120A, 100-240V AC/DC, Electronics Over Current Relay', '3DM2-H1DUW', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 25000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(307, '0.5-80A, 100-240V AC/DC, Electronics Over Current Relay', '3DM2-WRDUHZ', 'Brand: Schneider Electric, France (Made in South Korea)', 'Pcs.', 21000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(308, '0.16 - 0.25 A, TP, MPCB', 'GV2ME02', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(309, '0.25 - 0.4 A,  TP, MPCB,', 'GV2ME03', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(310, '0.4 - 0.63 A, TP, MPCB,', 'GV2ME04', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(311, '0.63 - 1 A,  TP, MPCB', 'GV2ME05', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(312, '1.0 - 1.6 A, TP, MPCB', 'GV2ME06', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(313, '1.6 - 2.5 A, TP, MPCB', 'GV2ME07', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(314, '2.5 - 4 A, TP, MPCB', 'GV2ME08', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(315, '4 - 6.3 A, TP, MPCB', 'GV2ME10', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 5835.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(316, '6 - 10 A, TP, MPCB', 'GV2ME14', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 6956.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(317, '9 - 14 A, TP, MPCB', 'GV2ME16', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 6956.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(318, '13 - 18 A, TP, MPCB', 'GV2ME20', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 6956.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(319, '17 - 23 A, TP, MPCB', 'GV2ME21', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 7295.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(320, '20 - 25 A, TP, MPCB', 'GV2ME22', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 7295.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(321, '24 - 32 A, TP, MPCB', 'GV2ME32', 'Brand: Schneider Electric, France (Made in Thailand)', 'Pcs.', 7295.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16');
INSERT INTO `products` (`id`, `name`, `product_code`, `details`, `unit`, `price`, `created_at`, `updated_at`) VALUES
(322, '23…32 A, TP, MPCB', 'GV3P32', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 24235.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(323, '30…40 A, TP, MPCB', 'GV3P40', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 24235.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(324, '37…50 A, TP, MPCB', 'GV3P50', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 25360.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(325, '48…65 A, TP, MPCB', 'GV3P65', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 25360.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(326, '56 - 80 A, TP, MPCB', 'GV3ME80', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(327, '60 - 100 A, TP, MPCB', 'GV7RS100', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(328, '132 - 200 A, TP, MPCB', 'GV7RS220', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(329, '1 NO + 1 NC Auxiliary Contact Top Block', 'GVAE11', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1460.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(330, '1 NO + 1 NC Auxiliary Contact Side Block', 'GVAN11', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1460.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(331, '2 NO Auxiliary Contact Top Block', 'GVAE20', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1460.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(332, 'Power Base 12A with Crew Clamp Connection', 'LUB12', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(333, 'Power Base 32A with Crew Clamp Connection', 'LUB32', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(334, '1.25 - 5A, 24V DC Standard Control Unit', 'LUCA05BL', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(335, '3 - 12A, 24V DC Standard Control Unit', 'LUCA12BL', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(336, '3 - 12A, 110-240V AC/DC Standard Control Unit', 'LUCA12FU', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(337, '4.5 - 18A, 110-240V AC/DC Standard Control Unit', 'LUCA18FU', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(338, '8 - 32A, 110-240V AC/DC Standard Control Unit', 'LUCB32FU', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(339, '2 NO Auxiliary Contact Block', 'LUFN20', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(340, 'NO + 1 NC Auxiliary Contact Block', 'LUFN11', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(341, '1 NO + 1 NC Add On Contact Block with Fault Signalling', 'LUCA1C11', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(342, 'Integrated Power Meter Measurement of 3 phase current, 6 step voltage, KW, KWH, KVA, KVAH, KVAR & KVARH, Measurement of THD and PF, Integrated RS485 port and Modbus Protocol', 'PM5310', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 40100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(343, 'EasyLogic PM2130, LED DISPLAY , RS485, Accuracy CL 0.5S, ind. Harmonics up to 31st. Active power, Apparent power, Peak demand currents, Reactive power, Unbalance current Calculated neutral current, Peak demand power Current, Voltage Measurement', 'PM2130', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 22300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(344, 'Digital 3 Phase Amp Meter, CL 0.5', 'DM3110', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 4500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(345, 'Digital 3 Phase Volt Meter, CL 0.5', 'DM3210', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 4500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(346, 'Energy Server Com\'X 510 The Energy Server Com\'X 510 collects and stores wages consumptions (Water, Air, Gas, Electricity, Steam) and environmental parameters such as temperatures, humidity, and CO2 levels in a building. Data is periodically transmitted as', 'EBX510', 'Brand: Schneider Electric, France', 'Pcs.', 155000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(347, '2.5KVAR Standard Duty Power Capacitor 440V 50/60Hz', 'BLRCS025A030B40', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 6865.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(348, '5KVAR Standard Duty Power Capacitor 440V 50/60Hz', 'BLRCS050A060B44', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 8200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(349, '7.5KVAR Standard Duty Power Capacitor 440V 50/60Hz', 'BLRCS075A090B44', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 9050.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(350, '12.5KVAR Standard Duty Power Capacitor 440V 50/60Hz', 'BLRCS125A150B44', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 10900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(351, '20KVAR Standard Duty Power Capacitor 440V 50/60Hz', 'BLRCS200A240B44', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13110.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(352, '25KVAR Standard Duty Power Capacitor 440V 50/60Hz', 'BLRCS250A300B44', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 13900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(353, '50KVAR Heavy Duty Power Capacitor 440V 50/60Hz', 'BLRCH500A000B44', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 29700.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(354, 'Capacitor Duty Contactor for 25KVAR Coil 220V 50/60Hz', 'LC1DMKM7', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 19000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(355, 'RT6, 6 Step EasyLogic PFC Controller, LED Display, 320...460V AC 50/60 Hz', '51207', 'Brand: Schneider Electric, France (Made in Poland)', 'Pcs.', 30300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(356, 'RT12, 12 Step EasyLogic PFC Controller, LED Display, 320...460V AC 50/60 Hz', '51213', 'Brand: Schneider Electric, France (Made in Poland)', 'Pcs.', 44500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(357, '0.55 KW, VFD, 1 Phase Supply 200-240V, 50/60 Hz', 'ATV320U06M2C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 40000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(358, '0.75 KW, VFD, 1 Phase Supply 200-240V, 50/60 Hz', 'ATV320U07M2C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 42500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(359, '1.1 KW, VFD, 1 Phase Supply 200-240V, 50/60 Hz', 'ATV320U11M2C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 48950.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(360, '1.5 KW, VFD, 1 Phase Supply 200-240V, 50/60 Hz', 'ATV320U15M2C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 50000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(361, '2.2 KW, VFD, 1 Phase Supply 200-240V, 50/60 Hz', 'ATV320U22M2C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 54000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(362, '0.55 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U06N4C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 41000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(363, '0.75 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U07N4C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 45000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(364, '1.1 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U11N4C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 48000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(365, '1.5 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U15N4C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 52000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(366, '2.2 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U22N4C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 57500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(367, '4 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U40N4C', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 63690.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(368, '5.5 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U55N4B', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 107690.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(369, '7.5 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320U75N4B', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 120000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(370, '11 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320D11N4B', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 160000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(371, '15 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV320D15N4B', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 176220.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(372, '18.5 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D18N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 261910.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(373, '22 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D22N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 282040.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(374, '30 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D30N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 335830.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(375, '37 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D37N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 389510.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(376, '45 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D45N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 443190.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(377, '55 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D55N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 537240.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(378, '75 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D75N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 644710.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(379, '90 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630D90N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 778910.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(380, '110 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630C11N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 980430.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(381, '130 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630C13N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1047530.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(382, '160 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630C16N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1235520.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(383, '220 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630C22N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1678710.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(384, '250 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630C25N4', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 2014430.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(385, '315 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV630C31N4', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(386, '0.37 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310H037N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 35000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(387, '0.75 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310H075N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 42000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(388, '1.5 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HU15N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 43000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(389, '2.2 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HU22N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 47000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(390, '4 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HU40N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 56000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(391, '5.5 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HU55N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 96000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(392, '7.5 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HU75N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 110000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(393, '11 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HD11N4E', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 150000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(394, '15 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HD15N4E', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 160000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(395, '18.5 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HD18N4EF', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 230000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(396, '22 KW, VFD, 3 Phase Supply 380-460V, 50/60 Hz', 'ATV310HD22N4EF', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 250000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(397, '0.55 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312H055N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(398, '0.75 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312H075N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(399, '1.5 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HU15N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(400, '2.2 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HU22N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(401, '4 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HU40N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(402, '5.5 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HU55N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(403, '7.5 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HU75N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(404, '11 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HD11N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(405, '15 KW, VFD, 3 Phase Supply 380-500V, 50/60 Hz', 'ATV312HD15N4', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(406, '18.5 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD18N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(407, '22 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD22N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(408, '30 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD30N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(409, '37 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD37N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(410, '45 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD45N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(411, '55 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD55N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(412, '75 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD75N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(413, '90 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HD90N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(414, '110 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HC11N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(415, '132 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HC13N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(416, '160 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HC16N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(417, '220 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HC22N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(418, '250 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HC25N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(419, '315 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV71HC31N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(420, '400 KW, VFD, 3 Phase Supply 380-480V, 50/60 Hz', 'ATV61HC40N4', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 1.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(421, '7.5 KW Soft Starter, 3P,  230-415V AC', 'ATS48D17Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 90000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(422, '11 KW Soft Starter, 3P,  230-415V AC', 'ATS48D22Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 105000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(423, '15 KW Soft Starter, 3P,  230-415V AC', 'ATS48D32Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 123000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(424, '18.5 KW Soft Starter, 3P,  230-415V AC', 'ATS48D38Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 130000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(425, '22 KW Soft Starter, 3P,  230-415V AC', 'ATS48D47Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 140000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(426, '30 KW Soft Starter, 3P,  230-415V AC', 'ATS48D62Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 170000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(427, '37 KW Soft Starter, 3P,  230-415V AC', 'ATS48D75Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 190000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(428, '45 KW Soft Starter, 3P,  230-415V AC', 'ATS48D88Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 220330.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(429, '55 KW Soft Starter, 3P,  230-415V AC', 'ATS48C11Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 235000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(430, '75 KW Soft Starter, 3P,  230-415V AC', 'ATS48C14Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 275000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(431, '90 KW Soft Starter, 3P,  230-415V AC', 'ATS48C17Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 306000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(432, '110 KW Soft Starter, 3P,  230-415V AC', 'ATS48C21Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 391600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(433, '132 KW Soft Starter, 3P,  230-415V AC', 'ATS48C25Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 452870.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(434, '160 KW Soft Starter, 3P,  230-415V AC', 'ATS48C32Q', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 489500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(435, '220 KW Soft Starter, 3P,  230-415V AC', 'ATS48C41Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 648670.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(436, '250 KW Soft Starter, 3P,  230-415V AC', 'ATS48C48Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 685300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(437, '315 KW Soft Starter, 3P,  230-415V AC', 'ATS48C59Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 765000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(438, '355 KW Soft Starter, 3P,  230-415V AC', 'ATS48C66Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 795520.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(439, '400 KW Soft Starter, 3P,  230-415V AC', 'ATS48C79Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1100000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(440, '500 KW Soft Starter, 3P,  230-415V AC', 'ATS48M10Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1550000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(441, '630 KW Soft Starter, 3P,  230-415V AC', 'ATS48M12Q', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 2000000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(442, '0.75-3 KW Soft Starter, 3P,  110-480V AC', 'ATS01N106FT', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 30000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(443, '4 KW Soft Starter, 3P,  380-415V AC', 'ATS01N209QN', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 50000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(444, '5.5 KW Soft Starter, 3P,  380-415V AC', 'ATS01N212QN', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 55990.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(445, '7.5-11 KW Soft Starter, 3P,  380-415V AC', 'ATS01N222QN', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 56740.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(446, '15 KW Soft Starter, 3P,  380-415V AC', 'ATS01N232QN', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 65320.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(447, '0.25 KW DOL Starter With Overload (0.54-0.8)A', 'LE1M35Q705', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(448, '0.37 KW DOL Starter With Overload (0.8-1.2)A', 'LE1M35Q706', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(449, '0.55 KW DOL Starter With Overload (1.2-1.8)A', 'LE1M35Q707', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(450, '0.75 KW DOL Starter With Overload (1.8-2.6)A', 'LE1M35Q708', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(451, '1.5 KW DOL Starter With Overload (2.6-3.7)A', 'LE1M35Q710', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(452, '2.2 KW DOL Starter With Overload (3.7-5.5)A', 'LE1M35Q712', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(453, '3 KW DOL Starter With Overload (5.5-8)A', 'LE1M35Q714', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(454, '4 KW DOL Starter With Overload (8-11.5)A', 'LE1M35Q716', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 7405.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(455, '5.5 KW DOL Starter With Overload (10-14)A', 'LE1M35Q721', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 8080.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(456, '7.5 KW DOL Starter With Overload (12-16)A', 'LE1M35Q722', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 9090.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(457, '8 Pin 24V AC 12A, Miniature Plug-in Relay', 'RXM2AB2B7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 830.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(458, '8 Pin 24V DC 12A, Miniature Plug-in Relay', 'RXM2AB2BD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 830.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(459, '8 Pin 110V AC 12A, Miniature Plug-in Relay', 'RXM2AB2F7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 830.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(460, '8 Pin 110V DC 12A, Miniature Plug-in Relay', 'RXM2AB2FD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 830.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(461, '8 Pin 220V AC 12A, Miniature Plug-in Relay', 'RXM2AB2P7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 830.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(462, '12A, Base for 8 Pin Miniature Plug-in Relay', 'RXZE2S108M', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(463, '11 Pin 24V AC 10A, Miniature Plug-in Relay', 'RXM3AB2B7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(464, '11 Pin 24V DC 10A, Miniature Plug-in Relay', 'RXM3AB2BD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(465, '11 Pin 110V AC 10A, Miniature Plug-in Relay', 'RXM3AB2F7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(466, '11 Pin 110V DC 10A, Miniature Plug-in Relay', 'RXM3AB2FD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(467, '11 Pin 220V AC 10A, Miniature Plug-in Relay', 'RXM3AB2P7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(468, '10A, Base for 11 Pin Miniature Plug-in Relay', 'RXZE2S111M', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(469, '14 Pin 24V AC 6A, Miniature Plug-in Relay', 'RXM4AB2B7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(470, '14 Pin 24V DC 6A, Miniature Plug-in Relay', 'RXM4AB2BD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(471, '14 Pin 110V AC 6A, Miniature Plug-in Relay', 'RXM4AB2F7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(472, '14 Pin 110V DC 6A, Miniature Plug-in Relay', 'RXM4AB2FD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(473, '14 Pin 220V AC 6A, Miniature Plug-in Relay', 'RXM4AB2P7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(474, '6A, Base for 14 Pin Miniature Plug-in Relay', 'RXZE2S114M', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(475, '8 Pin 24V DC 5A, Miniature Plug-in Relay', 'RXM2LB2BD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 650.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(476, '8 Pin 110V AC 5A, Miniature Plug-in Relay', 'RXM2LB2F7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 650.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(477, '8 Pin 220V AC 5A, Miniature Plug-in Relay', 'RXM2LB2P7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 650.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(478, '7A, Base for 8 Pin Miniature Plug-in Relay', 'RXZE1M2C', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(479, '14 Pin 24V DC 3A, Miniature Plug-in Relay', 'RXM4LB2BD', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 750.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(480, '14 Pin 110V AC 3A, Miniature Plug-in Relay', 'RXM4LB2F7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 750.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(481, '14 Pin 220V AC 3A, Miniature Plug-in Relay', 'RXM4LB2P7', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 750.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(482, '7A, Base for 14 Pin Miniature Plug-in Relay', 'RXZE1M4C', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 400.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(483, 'Phase sequence, Phase failure Detection, 8A 2CO, 183-528V AC', 'RM22TG20', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 5200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(484, 'Overvoltage and Undervoltage Detection\nPhase Sequence, Phase Failure Detection,\n8A, 2CO, 380-480V AC', 'RM22TR33', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 8900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(485, 'Liquid Level Control Relay, 8A, 2CO, 24-240V AC/DC', 'RM22LA32MR', 'Brand: Schneider Electric, France (Made in Indonesia)', 'Pcs.', 17800.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(486, '25A 400V 3P switch disconnectors with Enclosure IP65', 'VCF1GE', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 6500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(487, '32A 400V 3P switch disconnectors with Enclosure IP65', 'VCF2GE', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 6500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(488, '63A 400V 3P switch disconnectors with Enclosure IP65', 'VCF4GE', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 14300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(489, '1NO+1NC Auxiliary Contact of VARIO SWITCH DISCONNECTOR', 'VZ7', 'Brand: Schneider Electric, France (Made in Czech Republic)', 'Pcs.', 1500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(490, 'Illuminated Push Button, Metal, Green, Ø22, Spring Return', 'ZB4BW33+ZB4BW065\n(XB4BW3365  )', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(491, 'Illuminated Push Button, Metal, Red, Ø22, Spring Return', 'ZB4BW34+ZB4BW065\n(XB4BW3465)', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(492, 'Illuminated Push Button, Metal, Yellow, Ø22, Spring Return', 'ZB4BW35+ZB4BW065\n(XB4BW3565)', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(493, 'Illuminated Push Button, Plastic, Green, Ø22, Spring Return, 220V AC, 1NO', 'XA2EW33M1', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1400.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(494, 'Illuminated Push Button, Plastic, Red, Ø22, Spring Return, 220V AC, 1NO', 'XA2EW34M1', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1400.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(495, 'Push Button, Plastic, Black, Ø22, Spring Return, 1NO', 'XA2EA21', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(496, 'Push Button, Plastic, Green, Ø22, Spring Return, 1NO', 'XA2EA31', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(497, 'Push Button, Plastic, Red, Ø22, Spring Return, 1NC', 'XA2EA42', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(498, 'Push Button, Plastic, Yellow, Ø22, Spring Return, 1NO', 'XA2EA51', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(499, 'Push Button, Plastic, Blue, Ø22, Spring Return, 1NO', 'XA2EA61', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(500, 'Pilot Light, Metal, Green, Ø22', 'ZB4BV03+ZB4BV6', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 2100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(501, 'Pilot Light, Metal, Red, Ø22', 'ZB4BV04+ZB4BV6', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 2100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(502, 'Pilot Light, Metal, Yellow, Ø22', 'ZB4 BV05+ZB4BV6', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 2100.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(503, 'Pilot Light with LED 220-230V AC, Color:  White', 'XA2EVM1LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(504, 'Pilot Light with LED 220-230V AC, Color:  Green', 'XA2EVM3LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(505, 'Pilot Light with LED 220-230V AC, Color:  Red', 'XA2EVM4LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(506, 'Pilot Light with LED 220-230V AC, Color:  Yellow', 'XA2EVM5LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(507, 'Pilot Light with LED 220-230V AC, Color:  Blue', 'XA2EVM6LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(508, 'Pilot Light with LED 110V AC, Color:  Green', 'XA2EVF3LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(509, 'Pilot Light with LED 110V AC, Color:  Red', 'XA2EVF4LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(510, 'Pilot Light with LED 110V AC, Color:  Yellow', 'XA2EVF5LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(511, 'Pilot Light with LED 110V AC, Color:  Blue', 'XA2EVF6LC', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(512, '2 Position Selector Switch, Plastic, Black, 22mm, Stay Put, 1NO+1NC', 'XA2ED25', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(513, '2 Position Selector Switch, Metal, Black, 22mm, Stay Put, 1NO', 'XB4BJ21', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 3500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(514, '3 Position Selector Switch, Plastic, Black, 22mm, Stay Put, 2NO', 'XA2ED33', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(515, '3 Position Selector Switch, Metal, Black, 22mm, Stay Put, 2NO', 'XB4BJ33', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 4500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(516, '3 Position Selector Switch, Key Type, Metal, Black, 22mm, Stay Put, 2NO', 'XB4BG33', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 5200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(517, '3 Position Selector Switch, Metal, Black, Ø22, Spring Return, 2 NO', 'XB4BD53', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 5200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(518, 'Emergency Stop Switch, Plastic, Red, Ø22, Turn to Release, 1NC', 'XA2ES542', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 1000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(519, 'Emergency Stop Switch, Metal, Red, Ø22, Trigger Latching Turn to Release, 1 NC', 'XB4BS8442', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 4500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(520, 'Single contact block for head Ø22, 1 NO', 'ZA2EE101', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(521, 'Single contact block for head Ø22, 1 NC', 'ZA2EE102', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(522, 'Single contact block for head Ø22, 1 NO', 'ZBE101', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 320.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(523, 'Single contact block for head Ø22, 1 NC', 'ZBE102', 'Brand: Schneider Electric, France (Made in France)', 'Pcs.', 320.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(524, 'RCCB 2P 25A 30mA AC-type', 'A9N16201', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 6000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(525, 'RCCB 2P 40A 30mA AC-type', 'A9N16204', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 6000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(526, 'RCCB 2P 40A 100mA AC-type', 'A9N16205', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 6500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(527, 'RCCB 2P 40A 300mA AC-type', 'A9N16206', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 6500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(528, 'RCCB 2P 63A 30mA AC-type', 'A9N16208', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 7000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(529, 'RCCB 2P 63A 100mA AC-type', 'A9N16209', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 7200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(530, 'RCCB 2P 63A 300mA AC-type', 'A9N16210', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 7500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(531, 'RCCB 4P 25A 30mA AC-type', 'A9N16251', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 7800.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(532, 'RCCB 4P 40A 30mA AC-type', 'A9N16254', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 7800.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(533, 'RCCB 4P 40A 100mA AC-type', 'A9N16255', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 8325.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(534, 'RCCB 4P 40A 300mA AC-type', 'A9N16256', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 8915.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(535, 'RCCB 4P 63A 30mA AC-type', 'A9N16258', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 9870.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(536, 'RCCB 4P 63A 100mA AC-type', 'A9N16259', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 10350.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(537, 'RCCB 4P 63A 300mA AC-type', 'A9N16260', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 10936.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(538, 'SPD 40KA 350V 1P+N', 'A9L40500', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 11000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(539, 'SPD 40KA 350V 3P+N With Remote Transfert', 'A9L40601', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 22450.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(540, 'SPD 65KA 350V 3P+N  With Remote Transfert', 'A9L65601', 'Brand: Schneider Electric, France (Made in China)', 'Pcs.', 27600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(541, '1.5A, 35W, Single Phase Power Supply, Input: 100-240V, Output: 24V DC', 'ABL2REM24015K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3500.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(542, '2.2A, 50W, Single Phase Power Supply, Input: 100-240V, Output: 24V DC', 'ABL2REM24020K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 3600.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(543, '4.5A, 100W, Single Phase Power Supply, Input: 100- 240V, Output: 24V DC', 'ABL2REM24045K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 5200.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(544, '6.5A, 150W, Single Phase Power Supply, Input: 100- 240V, Output: 24V DC', 'ABL2REM24065K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 6300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(545, '8.3A, 200W, Single Phase Power Supply, Input: 100- 240V, Output: 24V DC', 'ABL2REM24085K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 9900.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(546, '10A, 250W, Single Phase Power Supply, Input: 100-240V, Output: 24V DC', 'ABL2REM24100K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 10700.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(547, '14.6A, 350W, Single Phase Power Supply, Input: 100-240V, Output: 24V DC', 'ABL2REM24150K', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 14300.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16'),
(548, 'Regulated Switch Power Supply, 1 or 2-phase, 100..240V AC, 24V DC, 5A', 'ABL8REM24050', 'Brand: Schneider Electric, France (Made in India)', 'Pcs.', 9000.00, '2026-05-13 18:50:16', '2026-05-13 18:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_number` varchar(255) NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `notes` text DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `vat_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `installation_charge` decimal(12,2) NOT NULL DEFAULT 0.00,
  `round_off` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('draft','sent','accepted','rejected','expired') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_designation` varchar(255) DEFAULT NULL,
  `client_address` text DEFAULT NULL,
  `client_phone` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `attention_to` varchar(255) DEFAULT NULL,
  `body_content` text DEFAULT NULL,
  `terms_conditions` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `signatory_name` varchar(255) DEFAULT NULL,
  `signatory_designation` varchar(255) DEFAULT NULL,
  `signatory_photo` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `additional_enclosed` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `quotation_number`, `client_id`, `quotation_date`, `expiry_date`, `notes`, `sub_total`, `discount_percent`, `discount_amount`, `vat_percent`, `vat_amount`, `tax_percent`, `tax_amount`, `installation_charge`, `round_off`, `total_amount`, `status`, `created_at`, `updated_at`, `client_name`, `client_designation`, `client_address`, `client_phone`, `client_email`, `attention_to`, `body_content`, `terms_conditions`, `subject`, `company_name`, `logo`, `signatory_name`, `signatory_designation`, `signatory_photo`, `company_phone`, `company_email`, `company_website`, `company_address`, `additional_enclosed`, `deleted_at`) VALUES
(19, 'akij-0003', 8, '2026-05-07', '2026-05-22', 'Offer for supply of electric spares.', 2329620.00, 0.00, 0.00, 10.00, 232962.00, 0.00, 0.00, 0.00, 1291.00, 2561291.00, 'draft', '2026-05-07 16:11:29', '2026-05-07 16:28:16', 'Akij Printing and Packages Ltd.', 'Manager (SCM)', '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', 'Md. Nasirul Islam', 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT.\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mr. Karim', 'Sales Person', 'frontend/users/20260224122504_SrA86C5rqb.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL),
(20, 'akij-0004', 8, '2026-05-07', '2026-05-22', 'Offer for supply of electric spares.', 50000.00, 0.00, 0.00, 10.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 55000.00, 'draft', '2026-05-07 16:34:16', '2026-05-07 16:34:16', 'Akij Printing and Packages Ltd.', NULL, '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', NULL, 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT.\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mr. Karim', 'Sales Person', 'frontend/users/20260224122504_SrA86C5rqb.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL),
(21, 'akij-0005', 8, '2026-05-07', '2026-05-22', 'Offer for supply of electric spares.', 471750.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 471750.00, 'draft', '2026-05-07 16:43:02', '2026-05-07 16:43:02', 'Akij Printing and Packages Ltd.', NULL, '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', NULL, 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT.\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mr. Karim', 'Sales Person', 'frontend/users/20260224122504_SrA86C5rqb.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL),
(22, 'akij-0006', 8, '2026-05-07', '2026-05-22', 'Offer for supply of electric spares.', 52000.00, 0.00, 0.00, 10.00, 5200.00, 0.00, 0.00, 0.00, 0.00, 57200.00, 'draft', '2026-05-07 17:00:15', '2026-05-07 17:00:15', 'Akij Printing and Packages Ltd.', 'Manager (SCM)', '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', 'Md. Nasirul Islam', 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT.\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mr. Karim', 'Sales Person', 'frontend/users/20260224122504_SrA86C5rqb.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL),
(23, 'akij-0007', 8, '2026-05-10', '2026-05-25', 'Offer for supply of electric spares.', 4718380.00, 0.00, 0.00, 10.00, 470000.00, 0.00, 0.00, 0.00, 18380.00, 5170000.00, 'draft', '2026-05-10 14:27:14', '2026-05-10 18:02:07', 'Akij Printing and Packages Ltd.', 'Manager (SCM)', '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', 'Md. Nasirul Islam', 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mr. Karim', 'Sales Person', 'frontend/users/20260224122504_SrA86C5rqb.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL),
(24, 'akij-0008', 8, '2026-05-13', '2026-05-28', 'Offer for supply of electric spares.', 925275.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 925275.00, 'draft', '2026-05-13 19:04:21', '2026-05-13 20:25:24', 'Akij Printing and Packages Ltd.', 'Manager (SCM)', '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', 'Md. Nasirul Islam', 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT.\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mahmudul Hasan Mamun', 'Super Admin', 'frontend/users/20260513162402_dbaRWEijPc.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL),
(25, 'akij-0009', 8, '2026-05-16', '2026-05-31', 'Offer for supply of electric spares.', 630950.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 630950.00, 'draft', '2026-05-16 14:08:14', '2026-05-16 14:08:14', 'Akij Printing and Packages Ltd.', 'Manager (SCM)', '198, Gulshan Link Road\r\nTejgaon, Dhaka-1208', '+8801977734913', 'nasirul@akijprinting.com', 'Md. Nasirul Islam', 'Dear Sir,\r\nWith reference to the above inquiry, we are pleased to offer our most competitive price for your kind consideration as follows.', 'Delivery timeline will be confirmed after order confirmation.\r\n Prices are in BDT.\r\n VAT/TAX are not included unless mentioned.\r\n Payment terms: As per mutual agreement.', 'Offer for supply of electric spares.', 'Packard Engineering Ltd.', 'uploads/company_details/1775385303_logo.png', 'Mahmudul Hasan Mamun', 'Super Admin', 'frontend/users/20260513162402_dbaRWEijPc.png', '+880172837468763, +88016398473984', 'info@packardbd.com', 'https://www.packardbd.com/', 'Purana Paltan, Dhaka, Bangladesh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `discount_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_items`
--

INSERT INTO `quotation_items` (`id`, `quotation_id`, `product_id`, `description`, `quantity`, `unit_price`, `discount_percent`, `total`, `created_at`, `updated_at`) VALUES
(227, 24, 143, 'Brand: Schneider Electric, France (Made in India)', 1, 650000.00, 0.00, 650000.00, '2026-05-13 20:25:24', '2026-05-13 20:25:24'),
(228, 24, 61, 'Brand: Schneider Electric, France (Made in India)', 53, 675.00, 0.00, 35775.00, '2026-05-13 20:25:24', '2026-05-13 20:25:24'),
(229, 24, 63, 'Brand: Schneider Electric, France (Made in India)', 33, 500.00, 0.00, 16500.00, '2026-05-13 20:25:24', '2026-05-13 20:25:24'),
(230, 24, 343, 'Brand: Schneider Electric, France (Made in India)', 10, 22300.00, 0.00, 223000.00, '2026-05-13 20:25:24', '2026-05-13 20:25:24'),
(231, 25, 342, 'Brand: Schneider Electric, France (Made in India)', 10, 40100.00, 20.00, 320800.00, '2026-05-16 14:08:14', '2026-05-16 14:08:14'),
(232, 25, 343, 'Brand: Schneider Electric, France (Made in India)', 10, 22300.00, 20.00, 178400.00, '2026-05-16 14:08:14', '2026-05-16 14:08:14'),
(233, 25, 346, 'Brand: Schneider Electric, France', 1, 155000.00, 15.00, 131750.00, '2026-05-16 14:08:14', '2026-05-16 14:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Super Admin', 'web', '2025-12-02 07:38:53', '2025-12-02 07:38:53'),
(3, 'Sales Person', 'web', '2026-02-24 06:23:04', '2026-02-24 06:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `images` varchar(255) DEFAULT NULL,
  `verification_code` int(11) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `billing_address` bigint(20) DEFAULT NULL,
  `shipping_address` bigint(20) DEFAULT NULL,
  `is_guest` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `type` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role_id`, `images`, `verification_code`, `is_verified`, `billing_address`, `shipping_address`, `is_guest`, `status`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'hello@inoodex.com', NULL, NULL, '$2y$12$scwluqWiU5ZQ5.2VoAJWD.EQRgnfvrpK3Z/EpMJM8g3KUxfubVwQy', 2, '20260224122535_OgONr5JxSR.png', NULL, 0, NULL, NULL, '0', '1', '1', NULL, NULL, '2026-02-24 06:25:35'),
(2, 'Mr. Karim', 'salesperson@example.com', '01000000000', NULL, '$2y$12$y7NkopP01Nmrfmf78tvtVuXdan.GEW0yKnY9TJjL/FNtZ5X33Za5y', 3, '20260224122504_SrA86C5rqb.png', NULL, 0, NULL, NULL, '0', '1', '1', NULL, '2026-02-24 06:25:04', '2026-02-24 08:20:05'),
(3, 'Mr. Rahim', 'salesperson2@example.com', '01230465322', NULL, '$2y$12$/Tc3qRY58lzsWVcJlP8fK.azJEtxiZWuLT89WixV1SrR9R9ezwiZ2', 3, '20260224124256_iXlhSR4ekp.png', NULL, 0, NULL, NULL, '0', '1', '1', NULL, '2026-02-24 06:42:57', '2026-02-24 08:19:55'),
(4, 'Mahmudul Hasan Mamun', 'mamun@packardbd.com', '01973000811', NULL, '$2y$12$hoV2MK1TuVlYAyWQ.k8iSuf6dvXq14FdovVTDDiubmyB8o1SMt3eK', 2, '20260513162402_dbaRWEijPc.png', NULL, 0, NULL, NULL, '0', '1', '1', NULL, '2026-05-13 19:01:49', '2026-05-13 20:24:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_phone_index` (`phone`),
  ADD KEY `clients_email_index` (`email`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quotations_quotation_number_unique` (`quotation_number`),
  ADD KEY `quotations_client_id_foreign` (`client_id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_items_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD CONSTRAINT `quotation_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quotation_items_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
