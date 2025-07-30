-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2025 at 06:37 PM
-- Server version: 8.0.43
-- PHP Version: 8.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livenerasoft_driver_to_driver`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_amenties`
--

CREATE TABLE `add_amenties` (
  `id` int NOT NULL,
  `property_id` int NOT NULL COMMENT 'properties.id',
  `amenities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_amenties`
--

INSERT INTO `add_amenties` (`id`, `property_id`, `amenities_id`, `created_at`, `updated_at`, `status`) VALUES
(4, 31, 1, '2024-12-07 06:59:46', '2024-12-07 06:59:46', 1),
(5, 31, 2, '2024-12-07 06:59:46', '2024-12-07 06:59:46', 1),
(6, 1, 1, '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(9, 26, 1, '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(10, 26, 2, '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_book_amenties`
--

CREATE TABLE `add_book_amenties` (
  `id` int NOT NULL,
  `flor_id` int NOT NULL COMMENT 'add_book_property.id',
  `amenities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book_amenties`
--

INSERT INTO `add_book_amenties` (`id`, `flor_id`, `amenities_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 3, 1, '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(2, 3, 2, '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_book_facilities`
--

CREATE TABLE `add_book_facilities` (
  `id` int NOT NULL,
  `flor_id` int NOT NULL COMMENT 'add_book_property.id',
  `facilities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book_facilities`
--

INSERT INTO `add_book_facilities` (`id`, `flor_id`, `facilities_id`, `value`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 1, '10', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(2, 2, 2, '20', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(3, 2, 3, '20', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(4, 2, 4, '30', '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(5, 3, 1, '10', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(6, 3, 2, '20', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(7, 3, 3, '20', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1),
(8, 3, 4, '30', '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_book_property`
--

CREATE TABLE `add_book_property` (
  `id` int NOT NULL,
  `property_id` int NOT NULL,
  `flor_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `bed_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_book_property`
--

INSERT INTO `add_book_property` (`id`, `property_id`, `flor_no`, `room_no`, `bed_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 32, 'first', 10, 1, '2024-12-07 08:26:24', '2024-12-07 08:26:24', 1),
(2, 32, 'first', 10, 1, '2024-12-07 08:26:47', '2024-12-07 08:26:47', 1),
(3, 32, 'first', 10, 1, '2024-12-07 08:27:10', '2024-12-07 08:27:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_facilities_propery`
--

CREATE TABLE `add_facilities_propery` (
  `id` int NOT NULL,
  `property_id` int NOT NULL COMMENT 'properties.id',
  `facilities_id` int DEFAULT NULL COMMENT 'facilities.id',
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_facilities_propery`
--

INSERT INTO `add_facilities_propery` (`id`, `property_id`, `facilities_id`, `value`, `created_at`, `updated_at`, `status`) VALUES
(20, 2, 1, '2', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(21, 2, 2, '3', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(22, 2, 3, '1', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(23, 2, 4, '1', '2024-12-04 10:18:46', '2024-12-04 10:18:46', 1),
(24, 3, 1, '3', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(25, 3, 2, '2', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(26, 3, 3, '1', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(27, 3, 6, '2', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(28, 4, 1, '2', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(29, 4, 2, '2', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(30, 4, 3, '1', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(31, 4, 6, '1', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(32, 5, 1, '4', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(33, 5, 2, '2', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(34, 5, 3, '2', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(35, 6, 1, '1', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(36, 6, 2, '3', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(37, 6, 3, '1', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(38, 6, 6, '2', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(39, 7, 1, '2', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(40, 7, 2, '3', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(41, 7, 3, '1', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(42, 7, 6, '2', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(43, 8, 1, '2', '2024-12-04 10:53:22', '2024-12-04 10:53:22', 1),
(58, 13, 1, '1', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(59, 13, 2, '1', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(60, 13, 3, '1', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(61, 14, 1, '3', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(62, 14, 2, '1', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(63, 14, 3, '1', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(64, 14, 6, '1', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(65, 15, 1, '1', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(66, 15, 2, '2', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(67, 15, 3, '1', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(68, 15, 6, '1', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(80, 19, 1, '1', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(81, 19, 2, '1', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(82, 19, 6, '1', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(83, 20, 1, '2', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(84, 20, 2, '2', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(85, 20, 6, '2', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(86, 21, 1, '2', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(87, 21, 2, '1', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(88, 21, 6, '1', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(100, 22, 1, '1', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(101, 22, 2, '1', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(102, 22, 3, '1', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(103, 22, 4, '2', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(104, 22, 5, '2', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(105, 22, 6, '2', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(106, 22, 7, '3', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(107, 22, 8, '3', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(112, 18, 1, '2', '2024-12-05 08:56:28', '2024-12-05 08:56:28', 1),
(113, 18, 2, '1', '2024-12-05 08:56:28', '2024-12-05 08:56:28', 1),
(114, 18, 3, '1', '2024-12-05 08:56:28', '2024-12-05 08:56:28', 1),
(119, 17, 1, '2', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(120, 17, 2, '1', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(121, 17, 3, '1', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(122, 17, 6, '1', '2024-12-05 09:06:35', '2024-12-05 09:06:35', 1),
(130, 16, 1, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(131, 16, 2, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(132, 16, 3, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(133, 16, 6, '1', '2024-12-05 12:36:36', '2024-12-05 12:36:36', 1),
(134, 9, 1, '2', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(135, 9, 2, '2', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(136, 9, 3, '1', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(137, 9, 6, '1', '2024-12-05 12:37:00', '2024-12-05 12:37:00', 1),
(138, 10, 1, '1', '2024-12-05 12:37:11', '2024-12-05 12:37:11', 1),
(139, 10, 2, '1', '2024-12-05 12:37:11', '2024-12-05 12:37:11', 1),
(140, 10, 3, '1', '2024-12-05 12:37:11', '2024-12-05 12:37:11', 1),
(141, 11, 1, '2', '2024-12-05 12:37:31', '2024-12-05 12:37:31', 1),
(142, 11, 2, '2', '2024-12-05 12:37:31', '2024-12-05 12:37:31', 1),
(143, 11, 3, '1', '2024-12-05 12:37:31', '2024-12-05 12:37:31', 1),
(144, 12, 1, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(145, 12, 2, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(146, 12, 3, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(147, 12, 6, '1', '2024-12-05 12:37:50', '2024-12-05 12:37:50', 1),
(148, 24, 1, '945', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(149, 24, 2, '965', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(150, 24, 3, '227', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(151, 24, 4, '625', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(152, 24, 6, '837', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(153, 24, 7, '330', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(154, 24, 8, '371', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(155, 25, 3, '372', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(156, 25, 5, '603', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(157, 25, 8, '6', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(158, 1, 4, '252', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(159, 1, 5, '204', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(160, 1, 6, '389', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(161, 1, 7, '298', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(162, 1, 8, '593', '2024-12-07 07:18:11', '2024-12-07 07:18:11', 1),
(171, 26, 1, '839', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(172, 26, 2, '98', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(173, 26, 3, '469', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(174, 26, 4, '221', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(175, 26, 5, '774', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(176, 26, 6, '397', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1),
(177, 26, 7, '372', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_package_service`
--

CREATE TABLE `add_package_service` (
  `id` int NOT NULL,
  `package_id` int NOT NULL COMMENT 'packages.id',
  `service_id` int NOT NULL COMMENT 'services.id',
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_package_service`
--

INSERT INTO `add_package_service` (`id`, `package_id`, `service_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2024-11-19 09:51:44', '2024-11-19 09:51:44'),
(2, 3, 2, 1, '2024-11-19 09:51:45', '2024-11-19 09:51:45'),
(3, 3, 4, 1, '2024-11-19 09:51:45', '2024-11-19 09:51:45'),
(4, 4, 1, 1, '2024-11-19 09:51:47', '2024-11-19 09:51:47'),
(5, 4, 2, 1, '2024-11-19 09:51:47', '2024-11-19 09:51:47'),
(6, 6, 1, 1, '2024-11-19 09:51:49', '2024-11-19 09:51:49'),
(7, 3, 12, 1, '2024-11-30 07:37:27', '2024-11-30 07:37:27'),
(8, 3, 11, 1, '2024-11-30 07:37:27', '2024-11-30 07:37:27'),
(9, 3, 10, 1, '2024-11-30 07:37:28', '2024-11-30 07:37:28'),
(10, 3, 9, 1, '2024-11-30 07:37:28', '2024-11-30 07:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Parking', 'amenities/l5uqA3zicJ2DAvwf5pODNpGLCAieAlMX8WATdceE.jpg', 1, '2024-12-06 11:59:49', '2024-12-07 07:15:46'),
(2, 'Free Wi-Fi', 'amenities/bLuYwFjxzuBfW19rJJ66VuR6DHla0Zq1XsiiSN6w.png', 1, '2024-12-06 12:00:56', '2024-12-07 07:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `assignroutes`
--

CREATE TABLE `assignroutes` (
  `id` bigint UNSIGNED NOT NULL,
  `route_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignroutes`
--

INSERT INTO `assignroutes` (`id`, `route_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 2, 1, '2024-10-29 09:35:02', '2024-10-29 09:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `assign_lead`
--

CREATE TABLE `assign_lead` (
  `id` int NOT NULL,
  `lead_id` int NOT NULL COMMENT 'loan_requests.id',
  `current_user_id` int NOT NULL COMMENT 'users.id',
  `assign_user_id` int NOT NULL COMMENT 'users.id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_lead`
--

INSERT INTO `assign_lead` (`id`, `lead_id`, `current_user_id`, `assign_user_id`, `created_at`) VALUES
(1, 1, 1, 30, '2024-12-10 12:38:06'),
(2, 1, 30, 31, '2024-12-10 12:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upi_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_bank_active` tinyint NOT NULL DEFAULT '2' COMMENT '1-Active,2-Inactive',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `account_name`, `account_no`, `ifsc_code`, `bank_name`, `upi_id`, `is_bank_active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Amit Kumar', '158222817455', 'INDB0000053', 'Indusland', '155295@ybl', 1, 1, '2024-12-27 11:26:34', '2024-12-27 11:39:12'),
(2, 'Fazlu Rehman', '158222817456', 'INDB0000054', 'KOTAK', '78347@ibl', 2, 1, '2024-12-27 11:29:58', '2024-12-27 11:39:12'),
(3, 'HDDFFCC', '1234567890', 'HBHFDSFJSF OJS', 'HDDFFCCBB', 'ITIN@OKHDDFFCCB', 2, 1, '2025-01-16 17:18:53', '2025-01-16 17:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `type`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', 'banner/62LRCVTC1fUG35ddxli4CykKhp6II7LCTY0CV34X.png', 'Home', NULL, 3, '2024-11-27 10:29:48', '2024-12-04 13:50:10'),
(2, 'home', 'banner/mapNGPhAGa7QZBhzr8qUrhkGImVLB1eTxACG8IdT.jpg', 'Home', NULL, 1, '2024-11-27 10:29:48', '2024-12-04 13:50:05'),
(3, 'home', 'banner/tVMHtsBxyYmcfvO5thgquNnsdWEC4WvxMt9r8HR4.jpg', 'Home', NULL, 1, '2024-11-27 10:29:48', '2024-12-04 13:49:56'),
(4, 'project', 'banner/71cDZn0pn1WORpxkNJU9c549BhHyWBWwjzyxl1yn.png', 'Projects', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-12-04 07:13:10'),
(5, 'about ', 'banner/home_banner.png', 'About Us', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-11-27 10:29:52'),
(6, 'contact', 'banner/yj0P7naRLdpq1mPhY6XFYRvY4oL2EP5mTd9Bpfgk.png', 'Contact Us', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-12-04 07:12:56'),
(7, 'testimonial', 'banner/home_banner.png', 'Testimonials', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-11-27 10:29:52'),
(8, 'blog', 'banner/CgUt9G0yAf5ftHEc4rjto7bV3t2I9l8LM6mvpK3s.jpg', 'Blogs', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development.', 1, '2024-11-27 10:29:48', '2024-12-04 07:58:42'),
(10, 'home', 'banner/KIqubBDIG9wPtXdtUecMxBRcqjmE1yIGbL7pgGg1.jpg', 'Home', NULL, 1, '2024-12-06 06:42:01', '2024-12-06 06:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `bedtypes`
--

CREATE TABLE `bedtypes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bedtypes`
--

INSERT INTO `bedtypes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sdf', 1, '2024-12-06 12:13:58', '2024-12-06 12:13:58'),
(2, 'ssssss sdf', 3, '2024-12-06 12:14:22', '2024-12-06 12:14:32'),
(3, 'asdf', 1, '2024-12-06 13:49:45', '2024-12-06 13:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blog_link` text COLLATE utf8mb4_unicode_ci,
  `short_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `posted_at`, `blog_link`, `short_content`, `long_content`, `status`, `created_at`, `updated_at`) VALUES
(1, '20 Way To Sell Your Product Faster', 'blog/GpIU7tAexVrbi5PS7Yhf6eEA1YTUTJA6vVZWOQGM.png', '2024-11-27 08:03:23', NULL, 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 1, '2024-11-27 08:03:23', '2024-12-04 06:31:14'),
(2, '20 Way To Sell Your Product Fasterrr', 'blog/1k0fDZMpLeOIV8qUxAFP3ujz51Fcl6FdMWu9ARht.png', '2024-11-27 08:03:23', NULL, 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 1, '2024-11-27 08:03:23', '2024-12-04 06:31:06'),
(3, '20 Way To Sell Your Product Fasterr', 'blog/w8tYCrckvXd2sdysHKbtJauE9zlv7Pvm3tfXLcL2.png', '2024-11-27 08:03:23', 'https://globstay.live.devs-nerasoft.tech/blog', 'Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales.\r\nQuisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet.\r\nPellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus.', 1, '2024-11-27 08:03:23', '2024-12-06 11:01:42'),
(4, 'First', 'blog/zPo1c9FKUaDvzn2RGCVfH5MIL021OZE3Cjf3WF4Z.jpg', '2024-12-03 10:44:00', NULL, 'first', 'second', 3, '2024-12-01 10:43:05', '2024-12-04 06:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,2-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Book', NULL, 1, '2024-11-27 07:18:02', '2024-12-04 06:36:04'),
(2, 'Sale', NULL, 1, '2024-11-27 07:18:02', '2024-12-04 06:35:53'),
(3, 'Purchase', NULL, 1, '2024-11-27 07:18:02', '2024-12-04 06:35:34'),
(6, 'new', 'categories/M5LfMKFYGTdtOuKqMMT8RaG1iowWyGXkzD5xlSAU.jpg', 3, '2024-12-06 09:51:12', '2024-12-06 14:02:44'),
(7, 'SSSS', NULL, 3, '2024-12-11 07:24:51', '2024-12-11 07:25:00'),
(8, 's', NULL, 3, '2024-12-11 07:24:54', '2024-12-11 07:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `booking_percentage` bigint NOT NULL DEFAULT '0',
  `booking_tax` bigint NOT NULL DEFAULT '0',
  `booking_post_percentage` bigint NOT NULL DEFAULT '0',
  `booking_post_tds` bigint NOT NULL DEFAULT '0',
  `payment_gateway_charge` int DEFAULT NULL COMMENT 'in percentage',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `gst_no`, `logo`, `favicon`, `address`, `email`, `mobile`, `booking_percentage`, `booking_tax`, `booking_post_percentage`, `booking_post_tds`, `payment_gateway_charge`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Driver To Driver', '7YZPCX9483K2Z7', 'logos/dnfLBY9J5F7P3R8mup4vvVuaP7UjPXsyv1UdCKa8.jpg', 'favicons/Hdmew7H7un7JUV5ZQ23F6wVTH8yqOq6yzogltQPW.jpg', 'Assotech Business Cresterra, Tower-1, Office No-705, 7th Floor, Noida Uttar Pradesh 201304', 'support@driver.com', '9266355086', 15, 400, 1, 20, 2, '2024-10-16 10:32:37', '2025-05-15 07:47:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_url`
--

CREATE TABLE `dynamic_url` (
  `id` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dynamic_url`
--

INSERT INTO `dynamic_url` (`id`, `url`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'lead.create', 'Add Lead', '2024-10-11 12:00:11', '2024-10-11 12:00:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emi_collections`
--

CREATE TABLE `emi_collections` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` int NOT NULL COMMENT 'loans.id',
  `agent_id` int NOT NULL COMMENT 'users.id',
  `emi_amount` int NOT NULL,
  `payment_mode` int NOT NULL COMMENT 'payment modes.id',
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emi_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Paid',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT '1' COMMENT 'users.id',
  `property_id` int DEFAULT NULL COMMENT 'properties.id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '	1-Initial Stage , 2-Team Call , 3-Call Dissconected, 4-Ringing , 5-Pipeline , 6-Visit align , 7-Conversion , 8-rejected , 9-assign lead	',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `user_id`, `property_id`, `name`, `email`, `mobile_no`, `message`, `location`, `budget`, `plan_date`, `loan_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 31, NULL, 'test lead', 'test@gmail.com', '7428059960', 'test message', '', NULL, NULL, 4, 1, '2024-12-10 12:33:47', '2024-12-10 12:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Wi-Fi', 'facilities/1fEzCLzTz0M6YnJYPQJsUerblOmkdtHx3imRA982.png', 1, '2024-11-29 06:27:34', '2024-12-02 06:26:55'),
(2, 'Bath', 'facilities/GDZiFQANcKo5L0qCjMI6Sd8nybaKrsGcDs92yEkY.png', 1, '2024-11-29 06:27:34', '2024-12-02 06:33:26'),
(3, 'Resturant', 'facilities/V8SdRovyfb0Apd5AjIYeREiOJeFzMGvJhkBbYQpI.png', 1, '2024-11-29 06:27:41', '2024-12-02 06:27:11'),
(4, 'Airport Transfer', 'facilities/4c8NElzPCpWN7VV1HW3G2hLTDyCZVouN1NYFL87X.png', 1, '2024-11-29 06:27:41', '2024-12-02 06:28:35'),
(5, 'Family Room', 'facilities/7jdvKIVBmJsBsLVK34ulBXlOJ69iVyIJvt3bkLVT.png', 1, '2024-11-29 06:27:42', '2024-12-02 06:27:47'),
(6, 'Kitchen', 'facilities/KiYI9CknkcK8Kgj3o5WV943cR9AxxLlKu0DFJmMJ.png', 1, '2024-11-29 06:27:42', '2024-12-02 06:27:36'),
(7, 'Luggage storage', 'facilities/sjuWn4G8lG5kMnGxKZ1z2LAweLkUZG5RukV8o465.png', 1, '2024-11-29 06:27:42', '2024-12-02 06:31:44'),
(8, 'Breakfast', 'facilities/cZ5N5vNg23M3NOyDaJB0Sz6PEfVXZEXHFsOnDeAz.png', 1, '2024-11-29 06:27:42', '2024-12-04 06:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallaries`
--

CREATE TABLE `gallaries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallaries`
--

INSERT INTO `gallaries` (`id`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 'gallary/wZYri1FKCFjqfsqz29tIKDMEEozIcni7DRKmw0Sv.png', '2024-12-02 08:04:32', '2024-12-03 07:08:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kycdatas`
--

CREATE TABLE `kycdatas` (
  `id` int NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `response` longtext,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `loan_request_id` int NOT NULL COMMENT 'loan_request.id',
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kyc_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-InProgress,3-Completed,4-Approved,5-Rejected',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_leads`
--

CREATE TABLE `kyc_leads` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_request_id` int NOT NULL COMMENT 'loan_requests.id',
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `route_id` int DEFAULT NULL COMMENT 'routes.id',
  `agent_id` int DEFAULT NULL COMMENT 'users.id',
  `file_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `son_of` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `shop_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` text COLLATE utf8mb4_unicode_ci,
  `home_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_1_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_1_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_1_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_2_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_2_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_2_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elec_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gurn_docs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_verify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_vehicle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-pending,2-submitd,3-approved,4-rejected',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted,4-Permanent deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_leads_guarantor`
--

CREATE TABLE `kyc_leads_guarantor` (
  `id` int NOT NULL,
  `kyc_id` int NOT NULL COMMENT 'kyc_leads.id',
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `son_of` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type_of_work` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `shop_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no_1` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile_no_2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `home_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `land_load` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_processes`
--

CREATE TABLE `kyc_processes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_address` text COLLATE utf8mb4_unicode_ci,
  `aadhar_profile_photo` text COLLATE utf8mb4_unicode_ci,
  `aadhar_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_aadhar_verified` tinyint NOT NULL DEFAULT '2' COMMENT '	1-Verified,2-Non verified',
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_pan_verified` tinyint NOT NULL DEFAULT '2' COMMENT 'is_pan_verified',
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_bank_verified` tinyint NOT NULL DEFAULT '2' COMMENT '1-Verified,2-Non verified	',
  `live_photo` varchar(555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-submitted,2-pending,3-approved,4-rejected',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_reject_reasons`
--

CREATE TABLE `kyc_reject_reasons` (
  `id` int NOT NULL,
  `kyc_id` int NOT NULL COMMENT 'kyc_leads.id',
  `reason` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint UNSIGNED NOT NULL,
  `kyc_id` int NOT NULL COMMENT 'kyc_leads.id',
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `route_id` int DEFAULT NULL COMMENT 'route.id',
  `loan_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_of_interest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` tinyint NOT NULL DEFAULT '3' COMMENT '1-Day,2-Weekly,3-Monthly,4-Yearly',
  `tenure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_charges_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disbrused_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emi_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pending_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Approvad but not disbursed,3-Disbursed,4-Reject,5-Closed',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `kyc_id`, `user_id`, `route_id`, `loan_number`, `amount`, `rate_of_interest`, `frequency`, `tenure`, `process_charge`, `file_charge`, `other_charges_1`, `other_charges_2`, `other_charges_3`, `other_charges_4`, `other_charges_5`, `disbrused_amount`, `emi_amount`, `loan_start_date`, `pending_amount`, `loan_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '264784850942', '50000', '10', 1, '10', '10', '10', '10', '10', '10', '10', '10', '49940', '5,007.54', '2024-10-14', '50,075.40', 3, 1, '2024-10-14 05:17:35', '2024-10-14 05:17:35'),
(2, 1, 4, 1, '26771052699', '150000', '10', 2, '15', '5000', '1500', '2500', '3500', '1000', '500', '1500', '139500', '10,154.54', '2024-10-18', '152,318.10', 3, 1, '2024-10-15 12:12:07', '2024-10-15 12:12:07'),
(3, 7, 4, 7, '834722863097', '150000', '12', 3, '12', '1000', '100', '100', '100', '100', '100', '100', '149400', '13,327.32', '2024-09-01', '159,927.84', 3, 1, '2024-10-21 10:24:05', '2024-10-21 10:24:05'),
(4, 11, 4, 7, '7139577873', '150000', '12', 3, '12', '200', '200', '200', '200', '200', '200', '200', '148800', '13,327.32', '2024-11-01', '159,927.84', 3, 1, '2024-10-22 06:22:01', '2024-10-22 06:22:01'),
(5, 12, 4, 7, '290078504746', '150000', '12', 3, '12', '200', '200', '200', '200', '200', '200', '200', '148800', '13,327.32', '2024-10-22', '159,927.84', 2, 1, '2024-10-22 06:44:24', '2024-10-22 06:44:24'),
(6, 17, 2, 7, '552379870866', '100000', '12', 3, '12', '100', '100', '100', '100', '100', '100', '100', '99400', '8,884.88', '2024-11-01', '106,618.56', 2, 1, '2024-10-23 11:29:50', '2024-10-23 11:29:50'),
(7, 13, 4, 7, '899065274580', '150000', '12', 3, '12', '100', '100', '100', '100', '100', '100', '100', '149400', '13,327.32', '2024-11-01', '159,927.84', 2, 1, '2024-10-23 13:21:46', '2024-10-23 13:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `loan_disbursements`
--

CREATE TABLE `loan_disbursements` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` int NOT NULL,
  `disbursement_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disbursement_mode` int NOT NULL COMMENT 'payment_modes.id',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disbursement_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disbrused_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_disbursements`
--

INSERT INTO `loan_disbursements` (`id`, `loan_id`, `disbursement_amount`, `disbursement_mode`, `image`, `disbursement_date`, `remark`, `loan_number`, `reference_no`, `created_at`, `updated_at`, `disbrused_status`) VALUES
(2, 1, '139500', 1, '1728999785_1727348006_offline.jpg', '2024-10-15', 'business loan', '26771052699', NULL, '2024-10-15 13:11:46', '2024-10-15 14:00:01', 2),
(3, 2, '139500', 1, '1729056413_1727348006_offline.jpg', '2024-10-15', 'business loan', '26771052699', NULL, '2024-10-16 05:17:00', '2024-10-16 05:26:53', 2),
(4, 3, '149400', 1, '1729507105_12lDIFbQTiiEFj_KlUvRNg.jpeg', '2024-10-21', 'business loan', '834722863097', NULL, '2024-10-21 10:33:24', '2024-10-21 10:38:29', 2),
(5, 4, '149400', 1, '1729578346_app.jpg', '2024-10-22', 'business loan', '834722863097', NULL, '2024-10-22 06:24:47', '2024-10-22 06:31:54', 2);

-- --------------------------------------------------------

--
-- Table structure for table `loan_requests`
--

CREATE TABLE `loan_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `service_no` int DEFAULT NULL COMMENT 'providers.route	',
  `lead_create_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_address` text COLLATE utf8mb4_unicode_ci,
  `cheque` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_thiya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` text COLLATE utf8mb4_unicode_ci,
  `file_hai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plus_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_loan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ser_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rn_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountant_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guarantor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_of_loan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referal_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-pending,2-viewed,3-Under Discussion,4-pending for kyc,5-qualified,6-rejected',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted,4-Permanent deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_requests`
--

INSERT INTO `loan_requests` (`id`, `user_id`, `service_no`, `lead_create_date`, `name`, `work`, `mobile`, `work_address`, `cheque`, `shop_thiya`, `home_type`, `home_address`, `file_hai`, `loan_amount`, `tut`, `balance`, `plus_day`, `old_loan`, `loan_type`, `file_no`, `ser_no`, `rn_no`, `amount`, `accountant_sign`, `guarantor`, `guarantor_name`, `address`, `zip_code`, `reason_of_loan`, `referal_name`, `referal_mobile`, `token`, `remark`, `loan_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2024-10-29', 'Ayush Gupta', 'test', '7428059960', '9/10 Shyam Nagar  Ambala Cantt', 'Y', 'RENTED', 'OWN', 'Mohali Punjab', 'Y', '50000', '1200', '1400', '120', '500', 'New', '120', '121', '122', '5410', '123456789', 'N', 'Amit', NULL, NULL, NULL, NULL, NULL, NULL, 'first lead', 3, 1, '2024-10-28 06:06:21', '2024-12-10 07:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
(6, '2024_10_01_093153_create_role_models_table', 1),
(7, '2024_10_01_093231_create_roles_table', 1),
(8, '2024_10_03_174248_create_loan_requests_table', 2),
(9, '2024_10_07_170956_create_loans_table', 3),
(10, '2024_10_15_133013_create_payment_modes_table', 4),
(11, '2024_10_15_145619_create_banks_table', 5),
(12, '2024_11_13_134153_create_refers_table', 6),
(13, '2024_11_25_110246_create_messages_table', 7),
(14, '2024_11_27_124436_create_categories_modals_table', 8),
(15, '2024_11_27_131734_create_testimonals_table', 9),
(16, '2024_11_27_132653_create_blogs_table', 10),
(17, '2024_11_27_155622_create_banners_table', 11),
(18, '2024_11_27_160527_create_enquiries_table', 12),
(19, '2024_11_29_152408_create_properties_table', 13),
(20, '2024_11_29_165249_create_facilities_table', 14),
(21, '2024_11_29_165929_create_property_reviews_table', 15),
(22, '2024_12_02_115637_create_seos_table', 16),
(23, '2024_12_02_131916_create_gallaries_table', 17),
(24, '2024_12_02_133920_create_pages_table', 18),
(25, '2024_12_18_184801_create_pincodes_table', 19),
(26, '2024_12_18_185243_create_bookings_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `loan_request_id` int NOT NULL COMMENT 'loan_requests.id',
  `provider_id` int DEFAULT NULL,
  `user_id` int NOT NULL COMMENT 'users.id\r\n',
  `loan_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Initial Stage , 2-Team Call , 3-Call Dissconected, 4-Ringing , 5-Pipeline , 6-Visit align , 7-Conversion , 8-rejected , 9-assign lead',
  `title` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `loan_request_id`, `provider_id`, `user_id`, `loan_status`, `title`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, NULL, 1, 1, 'Initial Stage', '2024-12-10 12:34:28', '2024-12-10 12:34:28', 1),
(2, 1, NULL, 1, 9, 'Lead Assign To first', '2024-12-10 12:38:06', '2024-12-10 12:38:06', 1),
(3, 1, NULL, 1, 5, 'sdfasddf', '2024-12-10 12:38:37', '2024-12-10 12:38:37', 1),
(4, 1, NULL, 30, 5, 'sdfsdf', '2024-12-10 12:38:59', '2024-12-10 12:38:59', 1),
(5, 1, NULL, 30, 5, 'asdfsadf', '2024-12-10 12:39:09', '2024-12-10 12:39:09', 1),
(6, 1, NULL, 30, 5, 'asdfasdf', '2024-12-10 12:39:25', '2024-12-10 12:39:25', 1),
(7, 1, NULL, 30, 5, 'sdfsdf', '2024-12-10 12:39:59', '2024-12-10 12:39:59', 1),
(8, 1, NULL, 30, 5, 'asfdasdf', '2024-12-10 12:41:10', '2024-12-10 12:41:10', 1),
(9, 1, NULL, 30, 5, 'asdfasdf', '2024-12-10 12:41:13', '2024-12-10 12:41:13', 1),
(10, 1, NULL, 30, 5, 'sdfsdfdsf', '2024-12-10 12:41:50', '2024-12-10 12:41:50', 1),
(11, 1, NULL, 30, 9, 'Lead Assign To second', '2024-12-10 12:41:56', '2024-12-10 12:41:56', 1),
(12, 1, NULL, 31, 5, 'ss', '2024-12-10 12:45:46', '2024-12-10 12:45:46', 1),
(13, 1, NULL, 1, 4, 'gdsdf', '2024-12-11 06:24:11', '2024-12-11 06:24:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_charge` int NOT NULL,
  `large_charge` int NOT NULL,
  `gaint_charge` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `small_charge`, `large_charge`, `gaint_charge`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Package 1', 100, 200, 200, 1, '2024-11-11 07:37:20', '2024-11-13 06:51:22'),
(4, 'Package 2', 50000, 0, 0, 1, '2024-11-11 07:44:22', '2024-11-11 07:46:01'),
(5, 'test', 11111111, 0, 0, 3, '2024-11-11 12:31:09', '2024-11-11 12:31:30'),
(6, 'Package 3', 1000, 20000, 30000, 1, '2024-11-13 06:51:33', '2024-11-13 06:51:33'),
(7, 'xxx', 100, 200, 300, 1, '2024-11-29 05:59:28', '2024-11-29 05:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `title`, `paragraph`, `image`, `created_at`, `updated_at`) VALUES
(1, 'about_us', 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'pages/KGtpviU342w2F4Un7NYIaHbKDaVa0M5VtB92BkvK.jpg', '2024-12-02 08:24:31', '2025-01-25 13:33:37'),
(2, 'our_vision', 'Our Vision', 'sadfsdf', 'pages/jrskcCth1ZUZfWZWD0WG0Db1uoxlOGfbFV1UJbMT.png', '2024-12-02 08:24:41', '2024-12-02 12:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Deactive,3-delete,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 1, '2024-10-15 08:17:17', '2024-10-15 08:17:17'),
(2, 'UPI', 1, '2024-10-15 08:17:56', '2024-10-15 08:17:56'),
(3, 'Bank Transfer', 1, '2024-10-15 08:18:22', '2024-10-15 08:18:22'),
(4, 'Cheque', 1, '2024-10-15 08:18:31', '2024-10-15 12:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INR',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `user_id`, `booking_id`, `payment_id`, `order_id`, `method`, `amount`, `currency`, `status`, `response`, `created_at`, `updated_at`) VALUES
(1, '97', '1', 'pay_QVX036Yiti3Emp', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 08:16:56', '2025-05-16 08:16:56'),
(2, '97', '2', 'pay_QVX0CbqUgb5HS7', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 08:17:05', '2025-05-16 08:17:05'),
(3, '98', '6', 'pay_QVbdIOuD9dH96d', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 12:48:52', '2025-05-16 12:48:52'),
(4, '98', '7', 'pay_QVbde4tX6EYV6S', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 12:49:12', '2025-05-16 12:49:12'),
(5, '98', '7', 'pay_QVbf42q8EooTFI', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 12:50:33', '2025-05-16 12:50:33'),
(6, '98', '7', 'pay_QVbfHfufZD30N4', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 12:50:45', '2025-05-16 12:50:45'),
(7, '98', '6', 'pay_QVcFJAe0jWR2DQ', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 13:24:52', '2025-05-16 13:24:52'),
(8, '98', '6', 'pay_QVcIWnlZcEngXX', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 13:27:54', '2025-05-16 13:27:54'),
(9, '98', '6', 'pay_QVcSVuJHLxWOpm', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 13:37:22', '2025-05-16 13:37:22'),
(10, '97', '6', 'pay_QVhHcYUG57JhOh', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 18:20:29', '2025-05-16 18:20:29'),
(11, '97', '6', 'pay_QVhHkJi60sdKww', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 18:20:36', '2025-05-16 18:20:36'),
(12, '97', '7', 'pay_QVhIMSTXsgBS97', NULL, 'netbanking', 1.00, 'INR', 'authorized', '{}', '2025-05-16 18:21:10', '2025-05-16 18:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `per_cate_id` int NOT NULL COMMENT 'permission_category.id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `per_cate_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Create Listing', 2, '2024-12-04 11:37:29', '2025-01-21 13:36:12'),
(2, 1, 'Update Listing', 1, '2024-12-04 11:38:06', '2024-12-06 08:05:10'),
(3, 1, 'View Listing', 1, '2024-12-04 11:38:11', '2024-12-06 08:05:26'),
(4, 1, 'Approved Listing', 1, '2024-12-04 11:38:21', '2024-12-06 08:05:32'),
(5, 1, 'Deleted Listing', 1, '2024-12-06 08:00:16', '2024-12-06 08:05:39'),
(6, 2, 'Self Registration', 1, '2024-12-09 13:34:17', '2024-12-09 13:34:17'),
(7, 2, 'Property Listing', 1, '2024-12-09 13:34:24', '2024-12-09 13:34:24'),
(8, 2, 'View Properties', 1, '2024-12-09 13:34:32', '2024-12-09 13:34:32'),
(9, 2, 'Login Enable', 1, '2024-12-09 13:35:02', '2024-12-09 13:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `category_name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Property Listing', '2024-12-04 11:36:04', '2024-12-06 07:26:56', 1),
(2, 'Seller', '2024-12-09 13:34:06', '2024-12-09 13:34:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `pet_category`
--

CREATE TABLE `pet_category` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pet_bred` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_category`
--

INSERT INTO `pet_category` (`id`, `user_id`, `title`, `image`, `pet_size`, `pet_bred`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dogs', 'pet_category/z0mWcpbhoCMacGbHUN9G5v5gCxh6ZrZFSUe9mvss.jpg', NULL, NULL, 1, '2024-11-11 06:35:24', '2024-11-11 06:41:14'),
(2, NULL, 'Birds', 'pet_category/dOKkP6VYB81HUk5Dgl1xzwG8ORMsFLZzMXXEbZ5s.jpg', NULL, NULL, 1, '2024-11-11 06:41:31', '2024-11-11 06:41:31'),
(3, NULL, 'Rabbit', 'pet_category/S9bYjljKopPPHyokmGD4kxuTWOFEbeuXOTaFafTT.jpg', NULL, NULL, 2, '2024-11-11 06:42:08', '2024-11-30 07:34:15'),
(4, NULL, 'Cats', 'pet_category/XZwJH4VVef6tUNk9CQd7I80h0NOqKYWgd7f6JmVa.jpg', NULL, NULL, 3, '2024-11-11 06:43:49', '2024-11-21 06:28:35'),
(5, 1, 'lsdfsf\nsssssssss', 'pet_category/s3lUip3FMegai8EDebLi4HJV6nbaZDHO46L62lOn.jpg', 'asdfasdf', 'asfdasfsdf', 3, '2024-11-20 11:16:33', '2024-11-21 06:28:23'),
(6, 1, 'Dogs', 'pet_category/wPjc2iMPzxo9G84DERbfyF7HmBGr35yqdsQhECec.jpg', 'XD', 'SMALL', 1, '2024-11-20 11:18:03', '2024-11-20 12:07:32'),
(7, 1, 'Dogs', 'pet_category/ItbmkF0ha1o1JaZEewMeKb9dRZ0Y7eaHjGnalGg8.jpg', 'XD', 'SMALL', 1, '2024-11-21 06:15:58', '2024-11-21 06:15:58'),
(8, 1, 'Dogss', 'pet_category/7MrSFpM8QJauabEIBncPVU4gv4SxJs8BE0sjl8lW.jpg', 'XD', 'SMALL', 1, '2024-11-21 06:16:31', '2024-11-25 05:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `id` bigint UNSIGNED NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`id`, `pin_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '201304', 1, '2024-12-18 13:19:57', '2024-12-18 13:19:57'),
(2, '201305', 1, '2024-12-18 13:20:45', '2024-12-18 13:20:45'),
(3, '110001', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(4, '110002', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(5, '110003', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(6, '201301', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(7, '201305', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(8, '400001', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(9, '400002', 1, '2024-12-18 13:22:06', '2024-12-20 11:57:00'),
(10, '500001', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(11, '600001', 1, '2024-12-18 13:22:06', '2024-12-18 13:22:06'),
(12, '700000', 3, '2024-12-18 13:22:06', '2024-12-19 07:33:05'),
(13, '700000', 1, '2024-12-19 07:33:06', '2024-12-19 07:33:06'),
(14, '110093', 1, '2024-12-19 07:35:09', '2024-12-19 07:35:32'),
(15, '203207', 1, '2024-12-20 11:56:11', '2024-12-20 11:56:11'),
(16, '201313', 1, '2024-12-20 11:56:23', '2024-12-20 11:56:55'),
(17, '203202', 1, '2024-12-20 11:56:29', '2024-12-20 11:56:50'),
(18, '203203', 1, '2024-12-20 11:56:38', '2024-12-20 11:56:44'),
(19, '110095', 1, '2024-12-20 12:20:27', '2024-12-20 12:20:27'),
(20, '110083', 1, '2024-12-26 14:46:21', '2024-12-26 14:46:23'),
(21, '122001', 1, '2025-01-16 06:53:41', '2025-01-16 06:53:41'),
(22, '122000', 1, '2025-01-16 06:53:45', '2025-01-16 06:53:45'),
(23, '122003', 1, '2025-01-16 06:53:50', '2025-01-16 06:53:50'),
(24, '121006', 1, '2025-01-16 06:53:56', '2025-01-16 06:53:56'),
(25, '121007', 1, '2025-01-16 06:54:00', '2025-01-16 06:54:00'),
(26, '121001', 1, '2025-01-16 07:14:44', '2025-01-16 07:14:44'),
(27, '121002', 1, '2025-01-16 07:14:48', '2025-01-16 07:14:48'),
(28, '121003', 1, '2025-01-16 07:14:51', '2025-01-16 07:14:51'),
(29, '121004', 1, '2025-01-16 07:14:55', '2025-01-16 07:14:55'),
(30, '121005', 1, '2025-01-16 07:14:59', '2025-01-16 07:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `properties_images`
--

CREATE TABLE `properties_images` (
  `id` int NOT NULL,
  `property_id` int NOT NULL COMMENT 'properties.id',
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties_images`
--

INSERT INTO `properties_images` (`id`, `property_id`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'hotel_images/GEim25wVx0ybwEHgEn2tiWtOuuzbOfXPyMO8pm79.png', '2024-12-04 09:59:35', '2024-12-04 09:59:35', 1),
(2, 1, 'hotel_images/qSOQZ081Cw222W8hmnf8SsRo61U9YthrZ00w9mKo.png', '2024-12-04 09:59:35', '2024-12-04 09:59:35', 1),
(3, 1, 'hotel_images/pGSOBnkMqVMKsvLaWvToe25SZPgm2IJHiPSSmNBk.png', '2024-12-04 09:59:35', '2024-12-04 09:59:35', 1),
(4, 2, 'hotel_images/QsLmaAK2Xe6kkt6ywKNlZbxFYGQk0Ttis3IYKyw7.png', '2024-12-04 10:14:03', '2024-12-04 10:14:03', 1),
(5, 2, 'hotel_images/tFhfXkRlJxmPKN9ZH8CxFuVAcv3BOuSceOz9VFuU.jpg', '2024-12-04 10:14:03', '2024-12-04 10:14:03', 1),
(6, 2, 'hotel_images/1IskOHfDKFqiceJFKhiEPIWZvPIw9ntYm8TSP8iC.jpg', '2024-12-04 10:14:03', '2024-12-04 10:14:03', 1),
(7, 3, 'hotel_images/Yal1QNaegr5oqvmJmY7fH2VxlWPje5DkytNJ4pxA.jpg', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(8, 3, 'hotel_images/zGbOGRud2TXzycDiNrQsLJSmb4UH0bP48f62OS4p.jpg', '2024-12-04 10:28:49', '2024-12-04 10:28:49', 1),
(9, 4, 'hotel_images/KvME3nL4AyKmWhjMdsxkOeRu0LSZ0P31V4Q13thq.jpg', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(10, 4, 'hotel_images/WB2N7SPpgE56HMw8mS1AhC9XgP1UZyIeFxx5tSX9.jpg', '2024-12-04 10:37:16', '2024-12-04 10:37:16', 1),
(11, 5, 'hotel_images/NRGwoWQrhuDRL8IKZqrOTyL1sI4p267eM2f9s05c.jpg', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(12, 5, 'hotel_images/YdNFjErD97LKvuOYTpSe8XBD2YYCdlqRp0Y8TWC4.jpg', '2024-12-04 10:41:34', '2024-12-04 10:41:34', 1),
(13, 6, 'hotel_images/9TNqX3S90hakWZ4xxwSHEyLhf18HOCgXMgdgfEkC.jpg', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(14, 6, 'hotel_images/Ld14njAWvnLfR7IYAy49fhB11JJakcW1kmNOWofg.jpg', '2024-12-04 10:45:49', '2024-12-04 10:45:49', 1),
(15, 7, 'hotel_images/4VNsBbv7eskq1jTcl0NL8WkOCkdd0Rpenv6O6YfM.jpg', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(16, 7, 'hotel_images/IvLakucE6DTT7HyL0dThY8ikXi9kEVq4C5I2moTd.jpg', '2024-12-04 10:48:07', '2024-12-04 10:48:07', 1),
(17, 8, 'hotel_images/6lyheDReNAEBUSCjehD5qtQycVZtmJOnlEsRdN2D.jpg', '2024-12-04 10:53:22', '2024-12-04 10:53:22', 1),
(18, 8, 'hotel_images/USNOvtGL23QYbsCW5Bhh1GAi8AQnEGLAK8p3C0YQ.jpg', '2024-12-04 10:53:22', '2024-12-04 10:53:22', 1),
(19, 9, 'hotel_images/tqY4emQiYSILgSKd1gzv0q3kYZd0DXOtQEDMjq7w.jpg', '2024-12-04 10:55:47', '2024-12-04 10:55:47', 1),
(20, 9, 'hotel_images/NlvdbyOAYm5UOe3Q80rokR3WIaDh9fDlrRSTDnth.jpg', '2024-12-04 10:55:47', '2024-12-04 10:55:47', 1),
(21, 10, 'hotel_images/CTNByJR1RTS1ddR4TS7pDZZdjQOYEW7hmtHQQzYA.jpg', '2024-12-04 11:01:22', '2024-12-04 11:01:22', 1),
(22, 10, 'hotel_images/dCxllJUk7i9UeYC9m7KeCUVnqKICjNVut18yiVec.jpg', '2024-12-04 11:01:22', '2024-12-04 11:01:22', 1),
(23, 11, 'hotel_images/lwgmcOZDEEQCHzFtwFj3YmOZDEGtPQcf7q90drYT.jpg', '2024-12-04 11:04:27', '2024-12-04 11:04:27', 1),
(24, 11, 'hotel_images/FyDpGEnW3nyWQxoeeqtnJ47mFbjJbkL6Shdz19ln.jpg', '2024-12-04 11:04:27', '2024-12-04 11:04:27', 1),
(25, 12, 'hotel_images/P4Ak8YLsJbfLARg1dK8Jc6WFX3cyz6ytwYAf4GL7.jpg', '2024-12-04 11:07:39', '2024-12-04 11:07:39', 1),
(26, 12, 'hotel_images/7ZKrM51CCJIFQ7cvf1WO6EFmewFkBFNYS0yGcWD4.jpg', '2024-12-04 11:07:39', '2024-12-04 11:07:39', 1),
(27, 13, 'hotel_images/Mv6tb5z2n0g4djyUpJTSyLXepaFCMYVXmfIOH5od.jpg', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(28, 13, 'hotel_images/uoEJarFoeBYQWUwMVYQRZHz9t45qo4jZiAQpqpxa.jpg', '2024-12-04 11:22:32', '2024-12-04 11:22:32', 1),
(29, 14, 'hotel_images/vPATgJheUN7048B4P7iRX2Rj3Ex9LGMbLKlk4x3o.jpg', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(30, 14, 'hotel_images/DWpu3PqXRE455TbQbMF6EmISQvlE93llTo2kkcLN.jpg', '2024-12-04 11:24:00', '2024-12-04 11:24:00', 1),
(31, 15, 'hotel_images/QVl7GAT9Ihkc0QBUAWVqhy5aiVrGqB5mZ2PgIyei.jpg', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(32, 15, 'hotel_images/uwt9mabKkheKaCsvPuTYhDZNO8WEZRlq8etoPPH3.jpg', '2024-12-04 11:47:27', '2024-12-04 11:47:27', 1),
(33, 16, 'hotel_images/VihC2aA3o7yPxSdTHleTrz7mXjg7ufkTA1KcDtiu.jpg', '2024-12-04 11:58:07', '2024-12-04 11:58:07', 1),
(34, 16, 'hotel_images/lBbcsbZgdmCNxMAk12qkLraAySGfBsDjkiu4IqLD.jpg', '2024-12-04 11:58:07', '2024-12-04 11:58:07', 1),
(35, 17, 'hotel_images/H0L9x9UMtpK7VmzL6bJPzyMrnfuLV63MeQ9J0SFK.jpg', '2024-12-04 12:02:39', '2024-12-04 12:02:39', 1),
(36, 17, 'hotel_images/7cfFbn73s1yqPoIp2bqPDpqiRkOMzBesLX02bQ2Q.jpg', '2024-12-04 12:02:39', '2024-12-04 12:02:39', 1),
(37, 18, 'hotel_images/LaOvoNVCDRDKG1pgNIuhWHxTqeMmGZaBVbaf589r.jpg', '2024-12-04 12:06:41', '2024-12-04 12:06:41', 1),
(38, 18, 'hotel_images/DWamGFa0SRKJpiFFGNQHfpuLV7n38lxXvKOBw4oj.jpg', '2024-12-04 12:06:41', '2024-12-04 12:06:41', 1),
(39, 19, 'hotel_images/xGZj0WAJDyEBd5BtsZjKq7RPTEvZh51c78BCIFem.jpg', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(40, 19, 'hotel_images/9q89nfTtkg8YgR0KSCuIRuUVrrWqcIJaY6O4G4kM.jpg', '2024-12-04 12:08:47', '2024-12-04 12:08:47', 1),
(41, 20, 'hotel_images/zVZVnoVmbRvJGu5xxlVxaVC8VmtFZOEPV22shFDm.jpg', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(42, 20, 'hotel_images/81TzCb66thxLvG5vtWutV95kGHugo5tYj8x0Qbpu.jpg', '2024-12-04 12:10:09', '2024-12-04 12:10:09', 1),
(43, 21, 'hotel_images/uLg8fPspDzGf85Jodltoe8YGlpjsL1iNj2gogmpj.jpg', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(44, 21, 'hotel_images/nOKNo1Oy86DB0jh6kXbJTG4zResld1iP9oWi4N48.jpg', '2024-12-04 12:11:48', '2024-12-04 12:11:48', 1),
(45, 22, 'hotel_images/RIt4GtOtrLsQemkXsKSo7V5qvKHTDth5Nar0Bnbh.jpg', '2024-12-04 12:19:08', '2024-12-04 12:19:08', 1),
(46, 22, 'hotel_images/JhyPfvblt6zosGEUCWxgaaxWxq6uFdPaNMTFVQTB.jpg', '2024-12-04 12:19:08', '2024-12-04 12:19:08', 1),
(47, 23, 'hotel_images/X5HWfXefbNxU1xxsWK07hTfyaxkrwnFm1MMXNkWz.jpg', '2024-12-05 05:36:49', '2024-12-05 05:36:49', 1),
(48, 22, 'hotel_images/Fn7kvSEuAHbba0P7XDi79KB9gtyfEFmevP5eHcvk.webp', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(49, 22, 'hotel_images/w6PqbBTobmEk7KhlAiUBXy6lT5lG2j46IWgfGlq3.webp', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(50, 22, 'hotel_images/SZy9E8sBMUfNCn2Q6di7L3d76MQZnDvOrVfcp1pn.webp', '2024-12-05 05:37:11', '2024-12-05 05:37:11', 1),
(51, 24, 'hotel_images/tMmfW97gqkH996fgsiooctVMAd5s9sHqkGmwA0DN.png', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(52, 24, 'hotel_images/gtUR16O5CJTOFpJFUgGvT5goiEj4SSSd95d1yZnq.png', '2024-12-06 08:43:40', '2024-12-06 08:43:40', 1),
(53, 25, 'hotel_images/aou9gqjTG1CdYnU5XIMtcfKeB2ivathsMZRFPBs6.png', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(54, 25, 'hotel_images/35neNpsYgd5SIuAGuEP6TnuvDLNucg0dGtw395VX.png', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(55, 25, 'hotel_images/coOKcdEzZoZVNGPJfRlIgZBN2hCP3aIYBDurrMBn.png', '2024-12-06 09:41:31', '2024-12-06 09:41:31', 1),
(56, 26, 'hotel_images/B5R202ZgvxSb2oLYAKgpzYhQ36xA0u4grGXF8qL0.png', '2024-12-11 07:53:56', '2024-12-11 07:53:56', 3),
(57, 26, 'hotel_images/ubA204A5WWvfMYdA7Nyk6UBAiPzZ77bHZ0Ro9Fgi.png', '2024-12-11 10:46:45', '2024-12-11 10:46:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_reviews`
--

CREATE TABLE `property_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'Reference to users.id',
  `property_id` int DEFAULT NULL COMMENT 'properties.id',
  `review` text COLLATE utf8mb4_unicode_ci,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Rating out of 5',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '1-Active, 2-Inactive, 3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_reviews`
--

INSERT INTO `property_reviews` (`id`, `user_id`, `property_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 32, NULL, 'Lora ipsum dolor sit', '5', 1, '2024-12-18 13:39:36', '2024-12-18 13:39:36'),
(2, 36, NULL, 'adadadada', '5', 1, '2024-12-20 10:54:13', '2024-12-20 10:54:13'),
(3, 35, NULL, 'Test', '3', 1, '2024-12-20 10:58:22', '2024-12-20 10:58:22'),
(4, 36, NULL, 'Testing', '5', 1, '2024-12-20 11:00:47', '2024-12-20 11:00:47'),
(5, 36, NULL, 'Tesring', '5', 1, '2024-12-20 11:22:00', '2024-12-20 11:22:00'),
(6, 36, NULL, 'Testing', '5', 1, '2024-12-20 11:28:34', '2024-12-20 11:28:34'),
(7, 36, NULL, 'testing', '5', 1, '2024-12-20 11:28:44', '2024-12-20 11:28:44'),
(8, 36, NULL, 'Test', '5', 1, '2024-12-20 11:38:20', '2024-12-20 11:38:20'),
(9, 38, NULL, 'Further', '5', 1, '2024-12-20 11:57:42', '2024-12-20 11:57:42'),
(10, 39, NULL, 'Working', '5', 1, '2024-12-20 12:16:14', '2024-12-20 12:16:14'),
(11, 39, NULL, 'Working', '2', 1, '2024-12-20 12:16:28', '2024-12-20 12:16:28'),
(12, 36, NULL, 'Hdjkhakdjahdjka', '5', 1, '2024-12-20 12:21:24', '2024-12-20 12:21:24'),
(13, 36, NULL, 'hjhjhjhjhjh', '5', 1, '2024-12-20 12:21:52', '2024-12-20 12:21:52'),
(14, 40, NULL, 'Test', '5', 1, '2024-12-20 13:38:28', '2024-12-20 13:38:28'),
(15, 36, NULL, 'Testing', '5', 1, '2024-12-20 15:32:42', '2024-12-20 15:32:42'),
(16, 36, NULL, 'Testing........................................', '5', 1, '2024-12-21 09:58:09', '2024-12-21 09:58:09'),
(17, 36, NULL, 'Test', '2', 1, '2024-12-21 09:58:21', '2024-12-21 09:58:21'),
(18, 36, NULL, 'Test', '5', 1, '2024-12-23 06:30:21', '2024-12-23 06:30:21'),
(19, 36, NULL, 'Testing…', '5', 1, '2024-12-23 06:34:22', '2024-12-23 06:34:22'),
(20, 36, NULL, 'Testing', '3', 1, '2024-12-23 06:44:03', '2024-12-23 06:44:03'),
(21, 41, NULL, NULL, '2', 1, '2024-12-23 07:03:29', '2024-12-23 07:03:29'),
(22, 36, NULL, NULL, '5', 1, '2024-12-23 13:07:31', '2024-12-23 13:07:31'),
(23, 36, NULL, NULL, '3', 1, '2024-12-23 13:07:42', '2024-12-23 13:07:42'),
(24, 36, NULL, NULL, '5', 1, '2024-12-25 19:11:24', '2024-12-25 19:11:24'),
(25, 36, NULL, 'Testing', '5', 1, '2024-12-25 19:11:34', '2024-12-25 19:11:34'),
(26, 43, NULL, NULL, '5', 1, '2024-12-26 14:19:59', '2024-12-26 14:19:59'),
(27, 43, NULL, 'Test', '5', 1, '2024-12-26 16:41:30', '2024-12-26 16:41:30'),
(28, 43, NULL, NULL, '5', 1, '2024-12-27 05:44:34', '2024-12-27 05:44:34'),
(29, 43, NULL, 'Testing', '5', 1, '2024-12-27 07:31:56', '2024-12-27 07:31:56'),
(30, 48, NULL, NULL, '5', 1, '2024-12-27 09:21:01', '2024-12-27 09:21:01'),
(31, 48, NULL, NULL, '5', 1, '2024-12-27 09:38:28', '2024-12-27 09:38:28'),
(32, 48, NULL, NULL, '5', 1, '2024-12-27 09:38:38', '2024-12-27 09:38:38'),
(33, 48, NULL, NULL, '5', 1, '2024-12-27 09:40:05', '2024-12-27 09:40:05'),
(34, 48, NULL, NULL, '5', 1, '2024-12-27 09:40:15', '2024-12-27 09:40:15'),
(35, 48, NULL, NULL, '5', 1, '2024-12-27 09:40:24', '2024-12-27 09:40:24'),
(36, 48, NULL, NULL, '5', 1, '2024-12-27 09:48:30', '2024-12-27 09:48:30'),
(37, 48, NULL, NULL, '5', 1, '2024-12-27 10:55:36', '2024-12-27 10:55:36'),
(38, 48, NULL, NULL, '5', 1, '2024-12-27 10:55:44', '2024-12-27 10:55:44'),
(39, 48, NULL, NULL, '5', 1, '2024-12-27 13:04:07', '2024-12-27 13:04:07'),
(40, 43, NULL, NULL, '5', 1, '2024-12-28 06:11:45', '2024-12-28 06:11:45'),
(41, 43, NULL, NULL, '4', 1, '2024-12-28 14:35:53', '2024-12-28 14:35:53'),
(42, 43, NULL, NULL, '5', 1, '2025-01-12 16:11:33', '2025-01-12 16:11:33'),
(43, 43, NULL, NULL, '5', 1, '2025-01-15 09:25:40', '2025-01-15 09:25:40'),
(44, 63, NULL, NULL, '2', 1, '2025-01-15 13:15:25', '2025-01-15 13:15:25'),
(45, 63, NULL, NULL, '4', 1, '2025-01-15 13:15:29', '2025-01-15 13:15:29'),
(46, 65, NULL, 'EXCELLENT SERVICES', '5', 1, '2025-01-16 06:48:58', '2025-01-16 06:48:58'),
(47, 64, NULL, NULL, '5', 1, '2025-01-16 07:21:50', '2025-01-16 07:21:50'),
(48, 63, NULL, 'Ggg', '4', 1, '2025-01-16 09:31:08', '2025-01-16 09:31:08'),
(49, 64, NULL, NULL, '5', 1, '2025-01-16 18:15:31', '2025-01-16 18:15:31'),
(50, 69, NULL, NULL, '2', 1, '2025-01-20 08:08:35', '2025-01-20 08:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_code`
--

CREATE TABLE `referral_code` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `user_type` tinyint NOT NULL COMMENT '1-Groomer,2-Customer',
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refers`
--

CREATE TABLE `refers` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Flat,2-Percent',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_coupon_reused` tinyint NOT NULL DEFAULT '2' COMMENT '1-Yes,3-No',
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted',
  `is_used_coupon` tinyint NOT NULL DEFAULT '2' COMMENT '1-Used,2-Unused',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refer_and_earn`
--

CREATE TABLE `refer_and_earn` (
  `id` int NOT NULL,
  `user_type` int NOT NULL COMMENT '1-Gromer Helper,2-Customer',
  `is_on` tinyint NOT NULL DEFAULT '2' COMMENT '1-Active,2-Inactive',
  `is_profit` tinyint NOT NULL DEFAULT '2' COMMENT '1-Active,2-Inactive',
  `billing_no` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '2024-12-01 07:08:25', '2024-12-01 07:08:25'),
(2, 'Captain', 1, '2024-12-01 07:09:00', '2025-03-12 07:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_models`
--

CREATE TABLE `role_models` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int NOT NULL,
  `role_id` int NOT NULL COMMENT 'roles.id',
  `permission_id` int DEFAULT NULL COMMENT 'permission.id',
  `permission_status` tinyint NOT NULL DEFAULT '2' COMMENT '1-True,2-False',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `permission_status`, `created_at`, `status`) VALUES
(1, 3, 1, 1, '2024-12-06 08:03:45', 1),
(2, 3, 2, 1, '2024-12-06 08:03:45', 1),
(3, 3, 3, 1, '2024-12-06 08:03:45', 1),
(4, 3, 4, 2, '2024-12-06 08:03:45', 1),
(5, 3, 5, 1, '2024-12-06 08:03:45', 1),
(6, 2, 1, 2, '2024-12-09 13:43:10', 1),
(7, 2, 2, 2, '2024-12-09 13:43:10', 1),
(8, 2, 3, 2, '2024-12-09 13:43:10', 1),
(9, 2, 4, 2, '2024-12-09 13:43:10', 1),
(10, 2, 5, 2, '2024-12-09 13:43:10', 1),
(11, 2, 6, 1, '2024-12-09 13:43:10', 1),
(12, 2, 7, 1, '2024-12-09 13:43:10', 1),
(13, 2, 8, 1, '2024-12-09 13:43:10', 1),
(14, 2, 9, 1, '2024-12-09 13:43:10', 1),
(15, 4, 1, 1, '2024-12-10 07:27:34', 1),
(16, 4, 2, 2, '2024-12-10 07:27:34', 1),
(17, 4, 3, 2, '2024-12-10 07:27:34', 1),
(18, 4, 4, 2, '2024-12-10 07:27:34', 1),
(19, 4, 5, 2, '2024-12-10 07:27:34', 1),
(20, 4, 6, 2, '2024-12-10 07:27:34', 1),
(21, 4, 7, 2, '2024-12-10 07:27:34', 1),
(22, 4, 8, 2, '2024-12-10 07:27:34', 1),
(23, 4, 9, 2, '2024-12-10 07:27:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `route_logs`
--

CREATE TABLE `route_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `route_assign_id` int NOT NULL COMMENT 'assignroutes.id',
  `user_id` int NOT NULL COMMENT 'users.id',
  `route_id` int NOT NULL COMMENT 'routes.id',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delete,4-Permanent Delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `route_logs`
--

INSERT INTO `route_logs` (`id`, `route_assign_id`, `user_id`, `route_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 2, 1, '2024-10-29 07:07:20', '2024-10-29 12:40:14', 1),
(2, 2, 6, 1, '2024-10-29 07:07:24', '2024-10-29 12:40:10', 1),
(3, 3, 9, 1, '2024-10-29 07:07:27', '2024-10-29 12:38:02', 1),
(4, 4, 9, 1, '2024-10-29 07:08:15', '2024-10-29 12:38:29', 1),
(5, 5, 2, 1, '2024-10-29 07:11:11', '2024-10-29 13:09:23', 1),
(6, 6, 2, 1, '2024-10-29 09:35:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_robot` text COLLATE utf8mb4_unicode_ci,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `url`, `meta_title`, `meta_description`, `meta_keyword`, `meta_robot`, `header_script`, `footer_script`, `created_at`, `updated_at`, `status`) VALUES
(1, 'http://127.0.0.1:8000/seo/create', 'Seo title asdf', 'seo description', 'seo keyword', 'no index seo', 'seo header script', 'seo footer script', '2024-12-02 06:47:06', '2024-12-02 12:37:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_charge` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted,4-Permanent Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `service_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(2, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(4, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(5, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(6, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(7, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(8, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(9, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(10, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(11, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(12, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(13, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(14, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(15, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(16, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(17, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04'),
(18, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(19, 'Dosgs Service', 5555, 1, '2024-11-11 07:26:12', '2024-11-19 08:16:42'),
(20, 'Pat Service', 300, 1, '2024-11-11 07:26:12', '2024-11-11 07:26:12'),
(21, 'Dogs Service', 300, 1, '2024-11-11 07:26:12', '2024-11-13 06:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `accept_user_id` int DEFAULT NULL COMMENT 'users.id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_people` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_of_lady` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_men` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_child` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_up_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_up_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_up_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drop_us_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `seater` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_percentage` bigint NOT NULL DEFAULT '0',
  `booking_tax` bigint NOT NULL DEFAULT '0',
  `booking_post_percentage` bigint NOT NULL DEFAULT '0',
  `booking_post_tds` bigint NOT NULL DEFAULT '0',
  `accept_user_vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_user_vehicle_capicity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_user_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_user_service_expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Post Booking,2-Accept Booking,3-Complete Booking,4-Cancel Booking	',
  `booking_type` tinyint DEFAULT '1' COMMENT '1-One Way,2-Round ',
  `num_of_days` int DEFAULT '1',
  `booking_method` int DEFAULT '2' COMMENT '1-Booking amount ,2 - Quote best price',
  `amount_nego` tinyint DEFAULT '2' COMMENT '1-Negotiable,2-Not Negotiable',
  `commission` int DEFAULT NULL,
  `payment_gateway_charge` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `user_id`, `accept_user_id`, `name`, `email_id`, `mobile_no`, `num_of_people`, `num_of_lady`, `num_of_men`, `num_of_child`, `pick_up_date`, `pick_up_time`, `pick_up_location`, `late`, `long`, `country`, `state`, `city`, `address`, `pincode`, `drop_us_location`, `booking_amount`, `note`, `seater`, `booking_percentage`, `booking_tax`, `booking_post_percentage`, `booking_post_tds`, `accept_user_vehicle_type`, `accept_user_vehicle_capicity`, `accept_user_registration_number`, `accept_user_service_expiry_date`, `booking_status`, `booking_type`, `num_of_days`, `booking_method`, `amount_nego`, `commission`, `payment_gateway_charge`, `created_at`, `updated_at`, `status`) VALUES
(1, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '600', 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 1, 600, 2, '2025-05-16 06:34:30', '2025-05-16 06:56:10', 1),
(2, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', NULL, 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 1, 500, 2, '2025-05-16 06:34:32', '2025-05-16 06:34:32', 1),
(3, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', NULL, 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 1, 500, 2, '2025-05-16 06:34:49', '2025-05-16 06:34:49', 1),
(4, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '600', 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 1, 500, 2, '2025-05-16 07:30:39', '2025-05-16 07:30:39', 1),
(5, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '2000', 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 12, 500, 2, '2025-05-16 08:15:36', '2025-05-16 08:15:36', 1),
(6, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '2000', 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 12, 500, 2, '2025-05-16 08:26:08', '2025-05-16 08:26:08', 1),
(7, 96, 97, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '2000', 'lorem ipsum', NULL, 15, 400, 1, 20, 'CRETA', '4', '8432323', '2025-12-12', 2, 2, NULL, 1, 12, 50, 2, '2025-05-16 10:45:50', '2025-05-16 10:45:50', 1),
(8, 96, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Delhi', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '2000', 'lorem ipsum', NULL, 15, 400, 1, 20, NULL, NULL, NULL, NULL, 1, 2, NULL, 1, 122, 50, 2, '2025-05-16 10:46:06', '2025-05-16 10:46:06', 1),
(9, 97, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, '2025-05-20', '12:12 PM', 'Usa', '28.7041', '77.1025', 'India', 'Delhi', NULL, 'unnamed road, Rohini, - 110083, Delhi, India', '110083', 'Noida', '9', 'lorem ipsum', NULL, 15, 400, 1, 20, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, '2025-05-19 07:36:08', '2025-05-19 12:15:50', 1),
(10, 97, NULL, NULL, '45353', NULL, '5', NULL, NULL, NULL, '2025-05-21', '20:37', 'Delhi 6', '37.4220936', '-122.083922', 'United States', 'California', 'Mountain View', 'Google Building 40, 40 Amphitheatre Parkway, Mountain View, CA 94043, United States of America', '94043', 'UP', '10', NULL, '5', 15, 400, 1, 20, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, '2025-05-19 07:45:33', '2025-05-19 12:16:24', 1),
(11, 97, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, '2025-05-21', '21:41', 'Noida', '37.4220936', '-122.083922', 'United States', 'California', 'Mountain View', 'Google Building 40, 40 Amphitheatre Parkway, Mountain View, CA 94043, United States of America', '94043', NULL, NULL, NULL, '3', 15, 400, 1, 20, NULL, NULL, NULL, NULL, 1, 2, NULL, 2, 2, NULL, 2, '2025-05-19 07:48:03', '2025-05-19 07:48:03', 1),
(12, 97, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, '2025-05-20', '20:40', 'Agra', '37.4220936', '-122.083922', 'United States', 'California', 'Mountain View', 'Google Building 40, 40 Amphitheatre Parkway, Mountain View, CA 94043, United States of America', '94043', NULL, NULL, 'Free booking for 5000', '4', 15, 400, 1, 20, NULL, NULL, NULL, NULL, 1, 2, NULL, 2, 2, NULL, 2, '2025-05-19 07:50:35', '2025-05-19 07:50:35', 1),
(13, 97, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, '2025-05-21', '20:40', 'Noida', '37.4220936', '-122.083922', 'United States', 'California', 'Mountain View', 'Google Building 40, 40 Amphitheatre Parkway, Mountain View, CA 94043, United States of America', '94043', 'Delhi', NULL, NULL, '6', 15, 400, 1, 20, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, '2025-05-19 07:52:45', '2025-05-19 11:18:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_log`
--

CREATE TABLE `tbl_booking_log` (
  `id` int NOT NULL,
  `booking_id` int NOT NULL COMMENT 'tbl_booking.id',
  `user_id` int NOT NULL COMMENT 'users.id',
  `booking_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Post Booking,2-Accept Booking,3-Complete Booking,4-Cancel Booking',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking_log`
--

INSERT INTO `tbl_booking_log` (`id`, `booking_id`, `user_id`, `booking_type`, `created_at`) VALUES
(1, 1, 96, 1, '2025-05-15 07:36:34'),
(2, 1, 96, 1, '2025-05-15 07:54:41'),
(3, 2, 96, 1, '2025-05-15 07:59:04'),
(4, 3, 96, 1, '2025-05-15 08:23:51'),
(5, 4, 96, 1, '2025-05-15 09:51:31'),
(6, 5, 96, 1, '2025-05-15 09:52:02'),
(7, 6, 96, 1, '2025-05-15 09:52:08'),
(8, 7, 96, 1, '2025-05-15 09:52:21'),
(9, 8, 96, 1, '2025-05-15 09:52:25'),
(10, 9, 96, 1, '2025-05-15 09:52:30'),
(11, 10, 96, 1, '2025-05-15 09:52:34'),
(12, 11, 96, 1, '2025-05-15 09:52:44'),
(13, 12, 96, 1, '2025-05-15 09:52:51'),
(14, 13, 96, 1, '2025-05-15 09:52:54'),
(15, 14, 96, 1, '2025-05-15 09:53:01'),
(16, 15, 96, 1, '2025-05-15 09:53:09'),
(17, 16, 96, 1, '2025-05-15 09:56:27'),
(18, 17, 97, 1, '2025-05-15 10:08:10'),
(19, 18, 97, 1, '2025-05-15 10:10:27'),
(20, 19, 97, 1, '2025-05-15 10:13:45'),
(21, 20, 96, 1, '2025-05-15 10:16:56'),
(22, 21, 97, 1, '2025-05-15 10:17:01'),
(23, 22, 97, 1, '2025-05-15 10:18:44'),
(24, 1, 97, 2, '2025-05-15 10:39:18'),
(25, 1, 96, 1, '2025-05-15 11:45:03'),
(26, 2, 97, 1, '2025-05-15 11:49:00'),
(27, 3, 97, 1, '2025-05-15 12:47:44'),
(28, 4, 97, 1, '2025-05-15 13:06:33'),
(29, 1, 97, 2, '2025-05-15 14:27:11'),
(30, 5, 96, 1, '2025-05-16 05:46:57'),
(31, 6, 96, 1, '2025-05-16 05:47:09'),
(32, 1, 96, 1, '2025-05-16 06:34:30'),
(33, 2, 96, 1, '2025-05-16 06:34:32'),
(34, 3, 96, 1, '2025-05-16 06:34:50'),
(35, 1, 97, 2, '2025-05-16 06:37:56'),
(36, 2, 97, 2, '2025-05-16 06:38:16'),
(37, 1, 97, 2, '2025-05-16 07:18:56'),
(38, 4, 96, 1, '2025-05-16 07:30:39'),
(39, 4, 97, 2, '2025-05-16 07:52:47'),
(40, 3, 97, 2, '2025-05-16 08:10:44'),
(41, 5, 96, 1, '2025-05-16 08:15:36'),
(42, 5, 97, 2, '2025-05-16 08:17:02'),
(43, 6, 96, 1, '2025-05-16 08:26:08'),
(44, 7, 96, 1, '2025-05-16 10:45:50'),
(45, 8, 96, 1, '2025-05-16 10:46:06'),
(46, 6, 97, 2, '2025-05-16 18:20:33'),
(47, 7, 97, 2, '2025-05-16 18:21:10'),
(48, 9, 97, 1, '2025-05-19 07:36:08'),
(49, 10, 97, 1, '2025-05-19 07:45:33'),
(50, 11, 97, 1, '2025-05-19 07:48:03'),
(51, 12, 97, 1, '2025-05-19 07:50:35'),
(52, 13, 97, 1, '2025-05-19 07:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int UNSIGNED NOT NULL,
  `state_id` int NOT NULL COMMENT 'tbl_state.id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `state_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ghaziabad', 1, '2025-01-21 13:37:14', '2025-01-21 13:41:56'),
(2, 2, 'Nehru Vihar', 1, '2025-01-21 13:55:30', '2025-01-21 13:55:30'),
(3, 2, 'Gokalpuri', 1, '2025-01-21 14:04:02', '2025-01-21 14:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL COMMENT '1-Active,2-DeActive,3-Deleted,4-Permanent Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'user.id',
  `otp` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1-Active,2-Expired',
  `module_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Login,2-Register,3-Forget Password',
  `otp_type` tinyint NOT NULL DEFAULT '1' COMMENT '1-Mobile, 2-Email',
  `field_value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `user_id`, `otp`, `status`, `module_type`, `otp_type`, `field_value`, `created_at`, `updated_at`) VALUES
(1, NULL, '123456', 2, 2, 1, '8700682075', '2025-05-13 07:26:34', '2025-05-13 07:26:34'),
(2, NULL, '329833', 2, 2, 1, '8700682076', '2025-05-13 07:28:21', '2025-05-13 07:28:21'),
(3, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-13 12:21:04', '2025-05-13 12:21:04'),
(4, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-13 12:21:05', '2025-05-13 12:21:05'),
(5, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-13 12:22:23', '2025-05-13 12:22:23'),
(6, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-15 07:05:58', '2025-05-15 07:05:58'),
(7, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-15 07:08:15', '2025-05-15 07:08:15'),
(8, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-15 11:05:18', '2025-05-15 11:05:18'),
(9, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-15 11:22:25', '2025-05-15 11:22:25'),
(10, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-15 11:22:28', '2025-05-15 11:22:28'),
(11, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-15 11:27:31', '2025-05-15 11:27:31'),
(12, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-15 11:44:46', '2025-05-15 11:44:46'),
(13, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-15 11:46:16', '2025-05-15 11:46:16'),
(14, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-15 11:47:17', '2025-05-15 11:47:17'),
(15, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-15 11:47:19', '2025-05-15 11:47:19'),
(16, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-15 11:50:39', '2025-05-15 11:50:39'),
(17, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 05:45:12', '2025-05-16 05:45:12'),
(18, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 06:00:38', '2025-05-16 06:00:38'),
(19, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 06:32:46', '2025-05-16 06:32:46'),
(20, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-16 06:34:00', '2025-05-16 06:34:00'),
(21, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 06:39:00', '2025-05-16 06:39:00'),
(22, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 08:27:42', '2025-05-16 08:27:42'),
(23, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 09:44:59', '2025-05-16 09:44:59'),
(24, NULL, '123456', 2, 1, 1, '7428059960', '2025-05-16 10:45:11', '2025-05-16 10:45:11'),
(25, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 11:41:57', '2025-05-16 11:41:57'),
(26, NULL, '273136', 1, 2, 1, '9504686318', '2025-05-16 12:01:48', '2025-05-16 12:01:48'),
(27, NULL, '855930', 2, 2, 1, '9504683618', '2025-05-16 12:02:28', '2025-05-16 12:02:28'),
(28, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 12:32:22', '2025-05-16 12:32:22'),
(29, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-16 15:07:01', '2025-05-16 15:07:01'),
(30, NULL, '429522', 2, 2, 1, '9413306631', '2025-05-16 15:46:54', '2025-05-16 15:46:54'),
(31, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 10:15:24', '2025-05-17 10:15:24'),
(32, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-17 10:15:26', '2025-05-17 10:15:26'),
(33, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-17 10:37:17', '2025-05-17 10:37:17'),
(34, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:00:29', '2025-05-17 13:00:29'),
(35, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:08:27', '2025-05-17 13:08:27'),
(36, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:09:42', '2025-05-17 13:09:42'),
(37, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:09:42', '2025-05-17 13:09:42'),
(38, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:19:03', '2025-05-17 13:19:03'),
(39, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:19:03', '2025-05-17 13:19:03'),
(40, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:19:32', '2025-05-17 13:19:32'),
(41, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:19:33', '2025-05-17 13:19:33'),
(42, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:22:57', '2025-05-17 13:22:57'),
(43, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:22:57', '2025-05-17 13:22:57'),
(44, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:24:20', '2025-05-17 13:24:20'),
(45, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:24:20', '2025-05-17 13:24:20'),
(46, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:26:31', '2025-05-17 13:26:31'),
(47, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:26:31', '2025-05-17 13:26:31'),
(48, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-17 13:29:56', '2025-05-17 13:29:56'),
(49, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-17 13:29:56', '2025-05-17 13:29:56'),
(50, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-17 20:41:50', '2025-05-17 20:41:50'),
(51, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-19 06:00:47', '2025-05-19 06:00:47'),
(52, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-19 06:00:47', '2025-05-19 06:00:47'),
(53, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-19 07:25:04', '2025-05-19 07:25:04'),
(54, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-19 07:25:04', '2025-05-19 07:25:04'),
(55, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-19 07:35:55', '2025-05-19 07:35:55'),
(56, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-19 07:36:52', '2025-05-19 07:36:52'),
(57, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-19 07:36:52', '2025-05-19 07:36:52'),
(58, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-19 08:16:16', '2025-05-19 08:16:16'),
(59, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-19 08:18:33', '2025-05-19 08:18:33'),
(60, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-19 08:18:33', '2025-05-19 08:18:33'),
(61, NULL, '123456', 1, 1, 1, '8700682075', '2025-05-19 08:18:53', '2025-05-19 08:18:53'),
(62, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-19 08:18:53', '2025-05-19 08:18:53'),
(63, NULL, '481900', 1, 2, 1, '9001352076', '2025-05-19 18:19:12', '2025-05-19 18:19:12'),
(64, NULL, '212901', 2, 2, 1, '9001352076', '2025-05-19 18:20:03', '2025-05-19 18:20:03'),
(65, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 09:59:06', '2025-05-20 09:59:06'),
(66, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 09:59:39', '2025-05-20 09:59:39'),
(67, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 09:59:59', '2025-05-20 09:59:59'),
(68, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 10:00:11', '2025-05-20 10:00:11'),
(69, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 10:00:48', '2025-05-20 10:00:48'),
(70, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 10:01:08', '2025-05-20 10:01:08'),
(71, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 10:01:48', '2025-05-20 10:01:48'),
(72, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-20 10:02:13', '2025-05-20 10:02:13'),
(73, NULL, '123456', 2, 1, 1, '8700682075', '2025-05-20 11:39:06', '2025-05-20 11:39:06'),
(74, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-21 10:04:39', '2025-05-21 10:04:39'),
(75, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-21 10:05:08', '2025-05-21 10:05:08'),
(76, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-21 10:05:29', '2025-05-21 10:05:29'),
(77, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-21 10:06:06', '2025-05-21 10:06:06'),
(78, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-21 10:06:26', '2025-05-21 10:06:26'),
(79, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-21 10:07:15', '2025-05-21 10:07:15'),
(80, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-22 03:47:42', '2025-05-22 03:47:42'),
(81, NULL, '123456', 1, 1, 1, '7428059960', '2025-05-22 03:47:49', '2025-05-22 03:47:49'),
(82, NULL, '305194', 2, 2, 1, '8160730930', '2025-05-28 08:00:11', '2025-05-28 08:00:11'),
(83, NULL, '123832', 2, 2, 1, '7428059969', '2025-06-02 07:57:25', '2025-06-02 07:57:25'),
(84, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 17:44:40', '2025-06-11 17:44:40'),
(85, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 17:45:11', '2025-06-11 17:45:11'),
(86, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 17:45:36', '2025-06-11 17:45:36'),
(87, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 17:46:09', '2025-06-11 17:46:09'),
(88, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 17:46:16', '2025-06-11 17:46:16'),
(89, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 17:47:15', '2025-06-11 17:47:15'),
(90, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:20:51', '2025-06-11 18:20:51'),
(91, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:21:26', '2025-06-11 18:21:26'),
(92, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:21:40', '2025-06-11 18:21:40'),
(93, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:21:58', '2025-06-11 18:21:58'),
(94, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:22:11', '2025-06-11 18:22:11'),
(95, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:23:05', '2025-06-11 18:23:05'),
(96, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:23:42', '2025-06-11 18:23:42'),
(97, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-11 18:24:09', '2025-06-11 18:24:09'),
(98, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-18 20:47:37', '2025-06-18 20:47:37'),
(99, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-18 20:47:43', '2025-06-18 20:47:43'),
(100, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:31:41', '2025-06-23 17:31:41'),
(101, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:32:10', '2025-06-23 17:32:10'),
(102, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:32:22', '2025-06-23 17:32:22'),
(103, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:32:36', '2025-06-23 17:32:36'),
(104, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:32:52', '2025-06-23 17:32:52'),
(105, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:33:03', '2025-06-23 17:33:03'),
(106, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:33:48', '2025-06-23 17:33:48'),
(107, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:33:54', '2025-06-23 17:33:54'),
(108, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:34:09', '2025-06-23 17:34:09'),
(109, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:34:17', '2025-06-23 17:34:17'),
(110, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:34:42', '2025-06-23 17:34:42'),
(111, NULL, '123456', 1, 1, 1, '7428059960', '2025-06-23 17:34:52', '2025-06-23 17:34:52'),
(112, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:51:48', '2025-07-23 17:51:48'),
(113, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:52:32', '2025-07-23 17:52:32'),
(114, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:52:45', '2025-07-23 17:52:45'),
(115, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:53:12', '2025-07-23 17:53:12'),
(116, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:53:26', '2025-07-23 17:53:26'),
(117, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:53:51', '2025-07-23 17:53:51'),
(118, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:54:05', '2025-07-23 17:54:05'),
(119, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:54:31', '2025-07-23 17:54:31'),
(120, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 17:54:46', '2025-07-23 17:54:46'),
(121, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:47:55', '2025-07-23 19:47:55'),
(122, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:48:37', '2025-07-23 19:48:37'),
(123, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:49:14', '2025-07-23 19:49:14'),
(124, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:49:29', '2025-07-23 19:49:29'),
(125, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:49:52', '2025-07-23 19:49:52'),
(126, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:50:05', '2025-07-23 19:50:05'),
(127, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:50:41', '2025-07-23 19:50:41'),
(128, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:50:54', '2025-07-23 19:50:54'),
(129, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-23 19:51:05', '2025-07-23 19:51:05'),
(130, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:18:06', '2025-07-27 01:18:06'),
(131, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:18:46', '2025-07-27 01:18:46'),
(132, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:19:06', '2025-07-27 01:19:06'),
(133, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:19:58', '2025-07-27 01:19:58'),
(134, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:20:11', '2025-07-27 01:20:11'),
(135, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:20:42', '2025-07-27 01:20:42'),
(136, NULL, '123456', 1, 1, 1, '7428059960', '2025-07-27 01:21:08', '2025-07-27 01:21:08'),
(137, NULL, '347908', 1, 2, 1, '9413106631', '2025-07-27 08:15:17', '2025-07-27 08:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_bookings`
--

CREATE TABLE `tbl_pet_bookings` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `pet_id` int NOT NULL,
  `booking_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delted',
  `booking_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Confirmed,3-Cancelled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `title`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Uttar Pradesh', '2025-01-21 12:50:35', '2025-01-21 12:50:35', 1),
(2, 'Delhi', '2025-01-21 12:50:38', '2025-01-21 12:50:38', 1),
(3, 'Karnatak', '2025-01-21 13:34:34', '2025-01-21 13:38:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statement`
--

CREATE TABLE `tbl_statement` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `booking_id` int DEFAULT NULL COMMENT 'tbl_booking.id',
  `transaction_type` tinyint NOT NULL DEFAULT '0' COMMENT '1-Accept Booking Charges,2-Complete Booking Charges, 3-Top Up Wallet , 4-Share Charges Post Booking,5-Cancel Booking  Charges',
  `payment_type` tinyint DEFAULT '0' COMMENT '1-Credit , 2-Debit',
  `amount` bigint NOT NULL DEFAULT '0',
  `payment_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Success,2-Failed,3-Process',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_statement`
--

INSERT INTO `tbl_statement` (`id`, `user_id`, `booking_id`, `transaction_type`, `payment_type`, `amount`, `payment_id`, `payment_status`, `created_at`) VALUES
(1, 97, 1, 1, 2, 490, NULL, 3, '2025-05-15 10:39:18'),
(2, 97, 1, 1, 2, 400, NULL, 3, '2025-05-15 14:27:11'),
(3, 97, 1, 1, 2, 400, NULL, 3, '2025-05-16 06:37:56'),
(4, 97, 2, 1, 2, 400, NULL, 3, '2025-05-16 06:38:16'),
(5, 97, 1, 1, 2, 490, NULL, 3, '2025-05-16 07:18:56'),
(6, 97, 4, 1, 2, 490, NULL, 3, '2025-05-16 07:52:47'),
(7, 97, 3, 1, 2, 400, NULL, 3, '2025-05-16 08:10:44'),
(8, 97, 5, 1, 2, 700, NULL, 3, '2025-05-16 08:17:02'),
(9, 97, 6, 1, 2, 700, NULL, 3, '2025-05-16 18:20:33'),
(10, 97, 7, 1, 2, 700, NULL, 3, '2025-05-16 18:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Expire',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_token`
--

INSERT INTO `tbl_token` (`id`, `user_id`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzEyMTIxNCwiZXhwIjoxNzc4NjU3MjE0fQ.JVkAt79Td6aQxuZkJcEx9-uRcbrgzpNT0dPmwz-dlGo', 2, '2025-05-13 07:26:54', '2025-05-13 12:21:13'),
(2, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzEyMTM1MiwiZXhwIjoxNzc4NjU3MzUyfQ.FROklK7fz_Ehpz74nufmhSErzuXybfLrYsZ2ek1cfdE', 2, '2025-05-13 07:29:12', '2025-05-15 07:06:03'),
(3, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzEzODg3MywiZXhwIjoxNzc4Njc0ODczfQ.8Z_CSiUSkaCNgKL2x4sotfi13oXdyEHZlVEZt2RAKbQ', 2, '2025-05-13 12:21:13', '2025-05-13 12:22:36'),
(4, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzEzODk1NiwiZXhwIjoxNzc4Njc0OTU2fQ._YbNOA0HNFgjBkZJTIpfot6tMTODJ3zizvKxzDhcBrw', 2, '2025-05-13 12:22:36', '2025-05-15 07:08:22'),
(5, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzI5Mjc2MiwiZXhwIjoxNzc4ODI4NzYyfQ.0mhTDy5CRy2OGTNUROyQ8LU7nSSRVqBY97Lt4IrPYD4', 2, '2025-05-15 07:06:03', '2025-05-15 11:05:22'),
(6, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzI5MjkwMiwiZXhwIjoxNzc4ODI4OTAyfQ.SkQYYjQQKbJ4nX-k8T4-LZGjbUZJH6atXNd_m9k4xzE', 2, '2025-05-15 07:08:22', '2025-05-15 11:22:32'),
(7, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzMwNzEyMiwiZXhwIjoxNzc4ODQzMTIyfQ.AS1ltV6KvhX-uMDuObJP9c0JoMm7DbqsgLBfksebOkY', 2, '2025-05-15 11:05:22', '2025-05-15 11:27:36'),
(8, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzMwODE1MiwiZXhwIjoxNzc4ODQ0MTUyfQ.g3H2-jE03MzyS-7HwllFucqJIcpDJavA19EqU8rly9g', 2, '2025-05-15 11:22:32', '2025-05-15 11:44:50'),
(9, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzMwODQ1NiwiZXhwIjoxNzc4ODQ0NDU2fQ.uAfPnilpYCE_jarJoeSQDjzUjuyWJTpMBzMwBMhARaM', 2, '2025-05-15 11:27:36', '2025-05-15 11:46:20'),
(10, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzMwOTQ5MCwiZXhwIjoxNzc4ODQ1NDkwfQ.3Yb_tRZJlOCSrqCOiWy8uyQzqgQieZE15riAlXxzR1o', 2, '2025-05-15 11:44:50', '2025-05-15 11:47:24'),
(11, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzMwOTU4MCwiZXhwIjoxNzc4ODQ1NTgwfQ.Rcj-S8lmkV6IEi-_gMiCfJQjQPzACULrmwotIC1ykzM', 2, '2025-05-15 11:46:20', '2025-05-16 05:45:18'),
(12, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzMwOTY0NCwiZXhwIjoxNzc4ODQ1NjQ0fQ.ZanBlE_u4fsyrJSuwdZDjCH2BUDqCcwAVjMXF6omlzw', 2, '2025-05-15 11:47:24', '2025-05-15 11:50:42'),
(13, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzMwOTg0MiwiZXhwIjoxNzc4ODQ1ODQyfQ.lKpe9gZ9dmZoet4ejGzdtfVyqGiM_ONBmupQCJcwMII', 2, '2025-05-15 11:50:42', '2025-05-16 06:34:08'),
(14, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM3NDMxOCwiZXhwIjoxNzc4OTEwMzE4fQ.DShTAJCPgyIrdBQdve5D6Z6jjOvmkgOdPc-FEfCBaL4', 2, '2025-05-16 05:45:18', '2025-05-16 06:00:44'),
(15, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM3NTI0NCwiZXhwIjoxNzc4OTExMjQ0fQ.XC7Zqu5ru7QkW3qwf4NAp3kkup3WGPBewKoXxDwWggs', 2, '2025-05-16 06:00:44', '2025-05-16 06:32:51'),
(16, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM3NzE3MSwiZXhwIjoxNzc4OTEzMTcxfQ.dlT-ELQjX22oUP-qmUoM73zlroBj65uARe8d0YTMxto', 2, '2025-05-16 06:32:51', '2025-05-16 06:39:05'),
(17, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzM3NzI0OCwiZXhwIjoxNzc4OTEzMjQ4fQ.b9KVX4dHBnSuFBgg8NpJ9LknkK2mJG56CUUwq_OFLn0', 2, '2025-05-16 06:34:08', '2025-05-16 10:45:21'),
(18, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM3NzU0NSwiZXhwIjoxNzc4OTEzNTQ1fQ.Y1_WoPCmEWbhq2IL-Ru8DXJ_D5n_iOIUrvs8O-zUMkQ', 2, '2025-05-16 06:39:05', '2025-05-16 08:27:50'),
(19, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM4NDA3MCwiZXhwIjoxNzc4OTIwMDcwfQ.Xpc67TOCW-QlviHT-JGsxaWiEjJCIZVPiDYfOUhQoCU', 2, '2025-05-16 08:27:50', '2025-05-16 09:45:04'),
(20, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM4ODcwNCwiZXhwIjoxNzc4OTI0NzA0fQ.q8X-5Z6SIr1G1ZKuB1HTuwfy4QQhfmhm5a-_C2dCYKs', 2, '2025-05-16 09:45:04', '2025-05-16 11:42:10'),
(21, 96, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTYsImlhdCI6MTc0NzM5MjMyMSwiZXhwIjoxNzc4OTI4MzIxfQ.2G3sBjwap8dagFaN1pONrU-LxPrl5Koo0za1tqiurIU', 1, '2025-05-16 10:45:21', '2025-05-16 10:45:21'),
(22, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM5NTczMCwiZXhwIjoxNzc4OTMxNzMwfQ.6-CSVueyQdFDvx-X7tONpWe1VxzZAhKqogEXRjg5ad4', 2, '2025-05-16 11:42:10', '2025-05-16 12:32:32'),
(23, 98, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTgsImlhdCI6MTc0NzM5Njk4NCwiZXhwIjoxNzc4OTMyOTg0fQ.tlZUPYBuFKt8113_xrdsxl5Xy9cq2r6hnJQxBwB8kFQ', 1, '2025-05-16 12:03:04', '2025-05-16 12:03:04'),
(24, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzM5ODc1MiwiZXhwIjoxNzc4OTM0NzUyfQ.1EhFi1QXLJl7-yXhrzuxi4S_R2GbcftBf6-J_fGtaNM', 2, '2025-05-16 12:32:32', '2025-05-16 15:07:05'),
(25, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzQwODAyNSwiZXhwIjoxNzc4OTQ0MDI1fQ.ZnJG6RFohf5qrnKCR0Fgfe7WprwnpwkSjFJHvNbJqzc', 2, '2025-05-16 15:07:05', '2025-05-17 10:15:30'),
(26, 99, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTksImlhdCI6MTc0NzQxMDQ2MiwiZXhwIjoxNzc4OTQ2NDYyfQ.zM0icLCu2Qldh3KduOqHqFq8zESgb099HU7mGDOTxRI', 1, '2025-05-16 15:47:42', '2025-05-16 15:47:42'),
(27, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzQ3NjkzMCwiZXhwIjoxNzc5MDEyOTMwfQ.BITXKHENVJO4PFO7X-0xW5Hf4j-__5Tq_37DrCf41dQ', 2, '2025-05-17 10:15:30', '2025-05-17 10:37:24'),
(28, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzQ3ODI0NCwiZXhwIjoxNzc5MDE0MjQ0fQ.ngawLaCKXUKbWG7e2xsEHSZ3FgrT-0IczEdJgsVDF1o', 2, '2025-05-17 10:37:24', '2025-05-17 13:30:01'),
(29, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzQ4ODYwMSwiZXhwIjoxNzc5MDI0NjAxfQ.1efMDtz0gX4oHyjLKlmsDY2jdh2jNoocxhU9CLl2hfs', 2, '2025-05-17 13:30:01', '2025-05-17 20:41:54'),
(30, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzUxNDUxNCwiZXhwIjoxNzc5MDUwNTE0fQ.rjb43kE6mRoP5PNcR5NjmQadh0uMEVx4VRs88RrCk0U', 2, '2025-05-17 20:41:54', '2025-05-19 06:00:52'),
(31, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzYzNDQ1MiwiZXhwIjoxNzc5MTcwNDUyfQ.1hxQpiVyNl4w_inbyH8Z0tM2kIrX_sz51eJ0elCLnYc', 2, '2025-05-19 06:00:52', '2025-05-19 07:25:09'),
(32, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzYzOTUwOSwiZXhwIjoxNzc5MTc1NTA5fQ.4T9pVEu0uyqPzU03L-myCF-x8tO1NrClVTKdiQyi10I', 2, '2025-05-19 07:25:09', '2025-05-19 07:35:58'),
(33, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzY0MDE1OCwiZXhwIjoxNzc5MTc2MTU4fQ.bjBWW5argCKCB0UV0RtNQGPunBgIGTDNx-va4CquWc4', 2, '2025-05-19 07:35:58', '2025-05-19 07:36:58'),
(34, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzY0MDIxOCwiZXhwIjoxNzc5MTc2MjE4fQ.vNf0UKo74OrIT_eVAFynIFTlsY3F6_BMVhTA4far2R8', 2, '2025-05-19 07:36:58', '2025-05-19 08:16:19'),
(35, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzY0MjU3OSwiZXhwIjoxNzc5MTc4NTc5fQ.1ScEnFlR4xoKmDRBms7AsVMN-t2rH1NFI5pluL6ozCA', 2, '2025-05-19 08:16:19', '2025-05-19 08:18:59'),
(36, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0NzY0MjczOSwiZXhwIjoxNzc5MTc4NzM5fQ.BWSxHhDY8-kmr9am4z9NfSRUYDu10baLyiiUYeU1KBY', 2, '2025-05-19 08:18:59', '2025-05-20 11:39:13'),
(37, 100, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6MTAwLCJpYXQiOjE3NDc2Nzg4MjcsImV4cCI6MTc3OTIxNDgyN30.TEnGOuivtGBI1PYIznrrvGStsuisRcDCi26xiNY2yzY', 1, '2025-05-19 18:20:27', '2025-05-19 18:20:27'),
(38, 97, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6OTcsImlhdCI6MTc0Nzc0MTE1MywiZXhwIjoxNzc5Mjc3MTUzfQ.EjiCyfSIjp_LTxN0xTDRGKdUnTI6jPh8Zs_0REHt8s8', 1, '2025-05-20 11:39:13', '2025-05-20 11:39:13'),
(39, 101, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6MTAxLCJpYXQiOjE3NDg0MTkyODMsImV4cCI6MTc3OTk1NTI4M30.Xv02fZzjxSGfrHEk05-detnTjtRLKPM1HvSKFAqFD2M', 1, '2025-05-28 08:01:23', '2025-05-28 08:01:23'),
(40, 102, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlIjoiQ2FwdGFpbiIsInN1YiI6MTAyLCJpYXQiOjE3NDg4NTExMjMsImV4cCI6MTc4MDM4NzEyM30.BRAi1zPS-Dy3Zpdw0flZm4RtTSMFygup_M981r9bv1M', 1, '2025-06-02 07:58:43', '2025-06-02 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id\r\n',
  `booking_id` int NOT NULL COMMENT 'bookings.id',
  `active_bank_id` int NOT NULL COMMENT 'banks.id',
  `amount` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transaction_status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending,2-Paid',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`id`, `user_id`, `booking_id`, `active_bank_id`, `amount`, `file`, `transaction_status`, `created_at`, `updated_at`) VALUES
(1, 1, 57, 1, '', NULL, 1, '2024-12-27 12:41:03', ''),
(2, 1, 58, 1, '', NULL, 1, '2024-12-27 12:41:03', ''),
(3, 1, 59, 1, '', NULL, 1, '2024-12-27 12:41:03', ''),
(4, 48, 60, 1, '', NULL, 1, '2024-12-27 15:06:50', NULL),
(5, 48, 61, 1, '', NULL, 1, '2024-12-27 15:25:57', NULL),
(6, 43, 62, 1, '', NULL, 1, '2024-12-27 15:35:54', NULL),
(7, 48, 63, 1, '', NULL, 1, '2024-12-27 15:36:32', NULL),
(8, 48, 64, 1, '', NULL, 1, '2024-12-27 16:25:20', NULL),
(9, 43, 65, 1, '', NULL, 1, '2024-12-27 16:44:35', NULL),
(10, 43, 66, 1, '', NULL, 1, '2024-12-27 16:52:46', NULL),
(11, 43, 67, 1, '', NULL, 1, '2024-12-27 16:53:49', NULL),
(12, 43, 68, 1, '', NULL, 1, '2024-12-27 16:55:14', NULL),
(13, 43, 69, 1, '', NULL, 1, '2024-12-27 16:55:22', NULL),
(14, 43, 70, 1, '', NULL, 1, '2024-12-27 16:58:43', NULL),
(15, 43, 71, 1, '', NULL, 1, '2024-12-27 17:07:15', NULL),
(16, 48, 72, 1, '', NULL, 1, '2024-12-27 17:52:59', NULL),
(17, 48, 73, 1, '', NULL, 1, '2024-12-27 17:56:01', NULL),
(18, 48, 74, 1, '', NULL, 1, '2024-12-27 18:23:52', NULL),
(19, 43, 75, 1, '', NULL, 1, '2024-12-28 11:10:52', NULL),
(20, 49, 76, 1, '', NULL, 1, '2024-12-28 11:12:58', NULL),
(21, 48, 77, 1, '', NULL, 1, '2024-12-28 11:13:57', NULL),
(22, 50, 78, 1, '', NULL, 1, '2024-12-28 12:17:18', NULL),
(23, 50, 79, 1, '', NULL, 1, '2024-12-28 12:18:04', NULL),
(24, 43, 80, 1, '', NULL, 1, '2024-12-28 14:35:07', NULL),
(25, 43, 81, 1, '', NULL, 1, '2024-12-28 14:36:22', NULL),
(26, 43, 82, 1, '', NULL, 1, '2024-12-28 14:54:39', NULL),
(27, 43, 83, 1, '', NULL, 1, '2024-12-28 14:55:00', NULL),
(28, 43, 84, 1, '', NULL, 1, '2024-12-28 14:56:38', NULL),
(29, 43, 85, 1, '', NULL, 1, '2024-12-28 14:59:20', NULL),
(30, 43, 86, 1, '', NULL, 1, '2025-01-02 14:06:05', NULL),
(31, 43, 87, 1, '', NULL, 1, '2025-01-02 14:06:37', NULL),
(32, 43, 88, 1, '', NULL, 1, '2025-01-03 13:22:33', NULL),
(33, 43, 89, 1, '', NULL, 1, '2025-01-06 07:19:29', NULL),
(34, 50, 90, 1, '', NULL, 1, '2025-01-07 08:30:11', NULL),
(35, 50, 91, 1, '', NULL, 1, '2025-01-08 16:19:01', NULL),
(36, 43, 92, 1, '', NULL, 1, '2025-01-15 08:22:31', NULL),
(37, 43, 93, 1, '', NULL, 1, '2025-01-15 09:16:04', NULL),
(38, 63, 94, 1, '', NULL, 1, '2025-01-15 13:11:04', NULL),
(39, 63, 95, 1, '', NULL, 1, '2025-01-15 13:12:58', NULL),
(40, 63, 96, 1, '', NULL, 1, '2025-01-15 13:13:55', NULL),
(41, 63, 97, 1, '', NULL, 1, '2025-01-15 13:14:13', NULL),
(42, 63, 98, 1, '', NULL, 1, '2025-01-15 13:14:39', NULL),
(43, 63, 99, 1, '', NULL, 1, '2025-01-15 13:16:08', NULL),
(44, 63, 100, 1, '', NULL, 1, '2025-01-15 14:08:20', NULL),
(45, 65, 101, 1, '', NULL, 1, '2025-01-16 06:54:09', NULL),
(46, 65, 102, 1, '', NULL, 1, '2025-01-16 06:56:35', NULL),
(47, 65, 103, 1, '', NULL, 1, '2025-01-16 06:57:05', NULL),
(48, 64, 104, 1, '', NULL, 1, '2025-01-16 07:15:03', NULL),
(49, 63, 105, 1, '', NULL, 1, '2025-01-16 09:29:59', NULL),
(50, 66, 106, 1, '5000', 'uploads/A6DOT8kpGfBUnjrm38LJKtBkuxOZ64VVviyjxkrU.pdf', 2, '2025-01-16 12:58:39', NULL),
(51, 65, 107, 1, '10000', 'uploads/4JFp7zLHz4MTSdxh2AmqzX22HxcV05HF6W0dANLp.png', 2, '2025-01-17 16:49:46', NULL),
(52, 68, 108, 1, '3000000', 'uploads/7flSGGhhnFovwmwr4PNFi2jnRfXwvuxqtvHwTL7Z.pdf', 2, '2025-01-19 09:17:59', NULL),
(53, 69, 109, 1, '3000', 'uploads/4Q3sNxNkM2CjMtZSNaJNZ0FvVBsT5pfJo9xZifHe.pdf', 2, '2025-01-20 07:57:01', NULL),
(54, 63, 110, 1, '30000', 'uploads/G1DGei5Rvsm6uAgNarCTyHPcQM2SiZG6t3fxTOWr.pdf', 2, '2025-01-20 10:29:56', NULL),
(55, 63, 111, 1, NULL, NULL, 1, '2025-01-20 10:45:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_update_profile_request`
--

CREATE TABLE `tbl_update_profile_request` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `field_value` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `field_type` int NOT NULL COMMENT '1-Mobile,2-Email',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Pending, 2-Approval,3-Reject',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_update_profile_request`
--

INSERT INTO `tbl_update_profile_request` (`id`, `user_id`, `field_value`, `field_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '9756188580', 1, 2, '2024-10-07 10:50:49', NULL),
(2, 1, 'shadab.nerasoft@gmail.com', 2, 2, '2024-10-07 11:24:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE `tbl_vehicle` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vehicle`
--

INSERT INTO `tbl_vehicle` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CRETA', 1, '2025-01-22 07:02:33', '2025-01-22 07:04:11'),
(2, 'SWIFT', 1, '2025-01-22 07:03:05', '2025-01-22 07:04:00'),
(3, 'SUV', 1, '2025-01-22 07:03:31', '2025-01-22 07:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_image`
--

CREATE TABLE `tbl_vehicle_image` (
  `id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id',
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1-User With Vehcile Image, 2- Vehicle Image',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vehicle_image`
--

INSERT INTO `tbl_vehicle_image` (`id`, `user_id`, `image`, `type`, `created_at`, `updated_at`, `status`) VALUES
(7, 97, 'vehicle_with_driver/hp7gKWwuRnjzrJvEXN8igC2C4Y629JSyUnziAjJ3.jpg', 1, '2025-05-13 08:58:35', NULL, 1),
(8, 97, 'vehicle_with_driver/MVkGt66xQJAia3bDAraYTPdkBto3LEc67N0cpK6g.jpg', 1, '2025-05-13 08:58:35', NULL, 1),
(9, 97, 'vehicle_with_driver/WFP7EdPXWr5yoIaBJGTwwEu4VvWRr8iPqdvPQm4Q.jpg', 1, '2025-05-13 08:58:35', NULL, 1),
(10, 97, 'vehicle_with_driver/wIFjMsGr0x65gokAjIx11MY8fX7OpyBcSA1yQJFl.jpg', 1, '2025-05-13 08:58:35', NULL, 1),
(11, 97, 'vehicle_with_driver/WBBqFh5HP9EN4OM7VZKj1fK0KTP2CgNGMALt7Dco.jpg', 1, '2025-05-13 08:58:35', NULL, 1),
(12, 97, 'vehicle_with_driver/FDfrbgkfT3m58QjFPsQJ9iiMuFdvspHtDp0j81pW.jpg', 1, '2025-05-13 08:58:35', NULL, 1),
(15, 97, 'vehicle_image/ChopElgFcEHsTjolwWfUYuRgYTdguPpN8PLhJ4Jh.jpg', 2, '2025-05-13 08:59:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonals`
--

CREATE TABLE `testimonals` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_count` int NOT NULL DEFAULT '3',
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonals`
--

INSERT INTO `testimonals` (`id`, `name`, `image`, `rate_count`, `designation`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lead', 'testimonial/XRPMCOfhvnuJPWpfVlOqkhNkozRapqUuAFKfHgpS.png', 4, 'Lead Designer', 'It Was Very Good Experince', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu. Faucibus venenatis felis id augue sit cursus pellentesque enim arcu. Elementum felis magna pretium in tincidunt. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu.', 1, '2024-12-01 08:33:37', '2024-12-01 08:41:23'),
(6, 'Fazlu Rehman', 'testimonial/qkWfRXlKKRIS9Irqo1IIp2lDpsfFsXVfzGPJtpeF.jpg', 5, 'Developer', 'it is Amazing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu. Faucibus venenatis felis id augue sit cursus pellentesque enim arcu. Elementum felis magna pretium in tincidunt. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu.', 1, '2024-12-04 07:09:24', '2024-12-04 07:09:24'),
(7, 'Jack', 'testimonial/DxjHfKLJwZfvXcNlD0ccmJ2e2SvBzAIi9vuTMNkn.jpg', 2, 'CEO', 'Good Enough', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus nibh mauris, nec turpis orci lectus maecenas. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu. Faucibus venenatis felis id augue sit cursus pellentesque enim arcu. Elementum felis magna pretium in tincidunt. Suspendisse sed magna eget nibh in turpis. Consequat duis diam lacus arcu.', 1, '2024-12-04 07:10:58', '2024-12-04 07:10:58'),
(8, 'Ayush', 'testimonial/HrbbulswsLf0f3boHyKJZFB16QG5bxgnCNe8qHIP.webp', 4, 'CEO', 'I would highly recommend…', '\"I’ve been using [Product/Service] for the past three months, and it has truly exceeded my expectations. The ease of use and excellent customer support made my experience smooth and enjoyable. After using it, I saw a significant improvement in my [specific problem], and I’m now more efficient and organized than ever before. I highly recommend [Product/Service] to anyone looking for a reliable solution to [problem].\"', 1, '2024-12-05 07:37:28', '2024-12-05 07:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` int NOT NULL COMMENT 'roles.id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'states.id',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city.id',
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `permanent_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'states.id',
  `permanent_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city.id',
  `permanent_town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'tbl_vehicle.id',
  `vehicle_capicity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dl_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dl_front_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dl_back_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_front_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rc_back_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ins_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ins_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `police_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_amount` bigint NOT NULL DEFAULT '1000000000000',
  `reserve_amount` bigint NOT NULL DEFAULT '0',
  `withdraw_amount` bigint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_loggedin` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-InActive,3-Deleted, 4- Permanent Deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `image`, `mobile_no`, `gender`, `aadhar_no`, `pan_no`, `state`, `city`, `town`, `pincode`, `address`, `permanent_state`, `permanent_city`, `permanent_town`, `permanent_pincode`, `permanent_address`, `vehicle_type`, `vehicle_capicity`, `registration_number`, `service_expiry_date`, `dl_number`, `dl_front_image`, `dl_back_image`, `rc_number`, `rc_front_image`, `rc_back_image`, `ins_number`, `ins_image`, `police_verification`, `password`, `account_number`, `ifsc_code`, `bank_name`, `wallet_amount`, `reserve_amount`, `withdraw_amount`, `remember_token`, `email_verified_at`, `is_loggedin`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'profile-pictures/676432dea09c1.png', '1234567890', NULL, NULL, NULL, 'Uttar Pradesh', NULL, NULL, '201304', 'Assotech Business Cresterra, Plot No 22, Noida-Greater Noida Expressway, Gautam Buddha Nagar, Bajidpur - 201304, Uttar Pradesh, India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$u0mJRa6qw3YGBFSW/Fdb0uKK/E08u5fiThDyQfk69Kl.L4MowfeYa', NULL, NULL, NULL, 0, 0, 0, 'EW9lpzkdp8Rto3Pc3JCMoeOWMUOgXRhgkDXARWJoEgJx27WbE2NnrC7GcZ1h', NULL, '0', NULL, '2025-04-30 12:00:20', 1),
(96, 2, 'Fazlu', 'fazlu.developer@gmail.com', NULL, '7428059960', 'male', NULL, NULL, 'Noida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IbfAGGlhrJkV.fT.dS91rej1oY3QhCw1Psv/QHH8zpmMYHLE2wXke', NULL, NULL, NULL, 1000000000000, 0, 0, NULL, NULL, '0', '2025-05-13 07:26:54', '2025-05-15 07:04:13', 1),
(97, 2, 'sarthak', 'sarthak.nerasoft@gmail.com', 'uploads/profile/W5Es6gT4prdYWX3QrMRTnPq9LvcrgD4TPcUJSJzC.jpg', '8700682075', 'male', '123234223445', 'sfscrr345e2', ' Delhi', 'New Delhi', 'Delhi', '110019', 'House 458a , newttg street', 'Delhi', 'south', 'South delhi', '110017', 'House 4657a , new mall', 'CRETA', '4', '8432323', '2025-12-12', '2846281', 'uploads/profile/xLee7xWWkLGcyQ0vorKOFMhoy9wzb5BKhUHc3IaQ.jpg', 'uploads/profile/5sdSMvvkdN1OfwMKsitLiXtWmK8GHjTzP3NIv4X9.jpg', '8946t43223', 'uploads/profile/LjZod1xLd2RT5sdaZhDA0EbJAJ5nFUzniIOKcTUf.jpg', 'uploads/profile/Kv04CscFDYqre7Nk2svfFjC85vqBPYWB0nLqZHhX.jpg', '2842784721', 'uploads/profile/CvJZvbGD5e8ugf2bFRnCyeNucUJjTQIjuWjXwEsR.jpg', 'uploads/profile/EesxRbauqNiFQd0SURtns8nRco2sQk3VX5NiSZgV.jpg', '$2y$10$k3Hm4B3hj6LKIj1axN23ge0eFTstHHom5/ndqJtxbRTpZbOLkQZO6', '111111111111', '12wedwec', 'SBI', 999999994830, 700, 999999994830, NULL, NULL, '0', '2025-05-13 07:29:12', '2025-05-16 18:21:10', 1),
(98, 2, 'Ujwal', NULL, NULL, '9504683618', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J.smXAIHLc0yTLf0Yydrm.MQZkxPRWBL0XPeS0ABQuLIy32ZosUP6', NULL, NULL, NULL, 1000000000000, 0, 0, NULL, NULL, '0', '2025-05-16 12:03:04', '2025-05-16 12:03:04', 1),
(99, 2, 'JUNJA RAM', NULL, 'uploads/profile/BEZ9N1jl6F9WQFQ9ZEzXokqcCgI5FChH0aTJ5G6c.jpg', '9413306631', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$smS1AGrXq46rYSr7nFscAOeoib0XylqwEr7JPW9cdJ.4J3rsi.0XO', NULL, NULL, NULL, 1000000000000, 0, 0, NULL, NULL, '0', '2025-05-16 15:47:42', '2025-05-25 15:22:16', 1),
(100, 2, 'Dr Kamla barwar', NULL, NULL, '9001352076', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f6sxjDInS.TLYrftj32r1eqgMR7OLanFqa/EggTf8aBlTLAPfO1dG', NULL, NULL, NULL, 1000000000000, 0, 0, NULL, NULL, '0', '2025-05-19 18:20:27', '2025-05-19 18:20:27', 1),
(101, 2, 'Joga ram', NULL, NULL, '8160730930', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pp9XWmb2r6fhyTZ38VLfs.2hdbFc9.d3M4NDOf1xiLd.Zao0F6.xO', NULL, NULL, NULL, 1000000000000, 0, 0, NULL, NULL, '0', '2025-05-28 08:01:23', '2025-05-28 08:01:23', 1),
(102, 2, 'test', NULL, NULL, '7428059969', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$80dKEsWs.mqsYWzwfjzeV.Fdp8fBTKmPj9ssekYdvzxS3oJdpHvF6', NULL, NULL, NULL, 1000000000000, 0, 0, NULL, NULL, '0', '2025-06-02 07:58:43', '2025-06-02 07:58:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'users.id',
  `vehicle_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vehicle_default` tinyint NOT NULL DEFAULT '2' COMMENT '1-default,2-Not default',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Deleted',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `user_id`, `vehicle_type`, `vehicle_number`, `is_vehicle_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test 90', '2783973912321', 1, 2, '2024-12-23 11:55:22', '2025-01-22 07:02:44'),
(2, 36, 'Test 2', '2783', 2, 3, '2024-12-23 11:55:33', '2024-12-26 14:15:49'),
(3, 36, 'Test 32783', '2783232323', 2, 3, '2024-12-23 11:55:59', '2024-12-26 14:15:49'),
(4, 42, 'Test 1', '8921839812', 2, 3, '2024-12-23 11:56:34', '2024-12-23 12:08:10'),
(5, 42, 'Test 2', '293891203821', 2, 3, '2024-12-23 11:56:42', '2024-12-23 12:08:19'),
(6, 42, 'Test 3', '3278371239213', 2, 3, '2024-12-23 12:06:53', '2024-12-23 12:08:22'),
(7, 42, 'Test 4', '238190339123921', 1, 3, '2024-12-23 12:07:01', '2024-12-23 12:08:25'),
(8, 36, 'Testing 2', '2819082908201', 2, 3, '2024-12-23 12:14:09', '2024-12-26 14:15:49'),
(9, 36, 'Testing 3', '311132123213', 2, 3, '2024-12-23 12:15:19', '2024-12-26 14:15:49'),
(10, 36, 'Test 5', '85454546464', 2, 3, '2024-12-25 19:02:26', '2024-12-26 14:15:49'),
(11, 36, 'Testing', '85555555555', 2, 3, '2024-12-25 19:08:23', '2024-12-26 14:16:09'),
(12, 36, 'Testing', '588664466808774', 2, 3, '2024-12-25 19:12:17', '2024-12-26 14:15:49'),
(13, 36, 'Texting', '888856446644', 2, 3, '2024-12-25 19:12:37', '2024-12-26 14:15:49'),
(14, 36, 'Testing 5', '8484546464646400488448', 2, 3, '2024-12-26 05:51:00', '2024-12-26 14:16:06'),
(15, 36, 'Testing m', '5454554546', 2, 3, '2024-12-26 14:14:44', '2024-12-26 14:16:03'),
(16, 36, 'Trajan aka', '5454546464', 2, 3, '2024-12-26 14:14:53', '2024-12-26 14:16:01'),
(17, 36, 'Aagah', '54545455454', 2, 3, '2024-12-26 14:15:01', '2024-12-26 14:15:59'),
(18, 36, 'Javed', '4848485454', 1, 1, '2024-12-26 14:15:07', '2024-12-26 14:15:49'),
(19, 43, 'Test', '8853644552', 2, 1, '2024-12-26 14:19:32', '2025-01-15 09:24:00'),
(20, 43, 'Test', '55222475', 2, 3, '2024-12-26 14:19:40', '2025-01-15 09:24:00'),
(21, 44, 'Testing', '283179379231', 1, 1, '2024-12-26 14:45:29', '2024-12-26 14:45:29'),
(22, 45, '8e923', '39230293123', 1, 1, '2024-12-26 15:03:05', '2024-12-26 15:03:05'),
(23, 43, 'Test 2', '3789837193712', 2, 1, '2024-12-26 16:40:29', '2025-01-15 09:24:00'),
(24, 47, 'Testing', 'Testing', 1, 1, '2024-12-27 08:00:35', '2024-12-27 08:00:35'),
(25, 48, 'Mahindra BE 6', 'DL@81921221', 2, 1, '2024-12-27 08:11:46', '2024-12-27 18:04:33'),
(26, 48, 'MG Comet EV', 'DL@1238913', 1, 1, '2024-12-27 08:12:03', '2024-12-27 18:04:33'),
(27, 48, 'Tata Tiago EV', 'DL@82912', 2, 3, '2024-12-27 08:12:18', '2024-12-27 18:04:33'),
(28, 48, '323123123', '123123123213', 2, 3, '2024-12-27 08:30:52', '2024-12-27 18:04:33'),
(29, 48, '212321312312313', '12312312312', 2, 3, '2024-12-27 08:30:57', '2024-12-27 18:04:33'),
(30, 48, '32113123213', '21321321312', 2, 1, '2024-12-27 08:31:04', '2024-12-27 18:04:33'),
(31, 49, 'Testing', '38913198322139', 1, 1, '2024-12-28 11:12:51', '2024-12-28 11:12:51'),
(32, 50, 'Test', '2783293291923', 2, 1, '2024-12-28 12:16:45', '2025-01-08 16:21:31'),
(33, 50, 'Test 2', '821998218921', 1, 1, '2024-12-28 12:16:54', '2025-01-08 16:21:31'),
(34, 50, 'Testing 50', 'DLIU92882', 2, 1, '2025-01-08 16:20:27', '2025-01-08 16:21:31'),
(35, 50, 'Testing 3902', '81829121221', 2, 1, '2025-01-08 16:20:38', '2025-01-08 16:21:31'),
(36, 43, 'Test 89122', 'DL@89218', 1, 1, '2025-01-15 08:38:50', '2025-01-15 09:24:00'),
(37, 43, 'Test 182192', 'DL@78318932', 2, 1, '2025-01-15 09:37:15', '2025-01-15 09:37:15'),
(38, 63, 'DL@GJH2828', '2828827227', 1, 1, '2025-01-15 13:10:40', '2025-01-15 13:10:40'),
(39, 64, 'Tata', 'HR51BE9192', 1, 1, '2025-01-15 13:33:07', '2025-01-15 13:33:07'),
(40, 65, 'NEXON', '12345', 1, 1, '2025-01-16 04:48:02', '2025-01-16 04:48:02'),
(41, 66, 'Test 01', '238921880321', 1, 1, '2025-01-16 12:58:34', '2025-01-16 12:58:34'),
(42, 68, 'Test', 'DL@128981921', 1, 1, '2025-01-19 09:17:52', '2025-01-19 09:17:52'),
(43, 69, 'Test', '781991723123', 1, 1, '2025-01-20 07:56:50', '2025-01-20 07:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `whislist_property`
--

CREATE TABLE `whislist_property` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `property_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-Active,2-Inactive,3-Delted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_amenties`
--
ALTER TABLE `add_amenties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book_amenties`
--
ALTER TABLE `add_book_amenties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book_facilities`
--
ALTER TABLE `add_book_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_book_property`
--
ALTER TABLE `add_book_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_facilities_propery`
--
ALTER TABLE `add_facilities_propery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_package_service`
--
ALTER TABLE `add_package_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignroutes`
--
ALTER TABLE `assignroutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_lead`
--
ALTER TABLE `assign_lead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bedtypes`
--
ALTER TABLE `bedtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_url`
--
ALTER TABLE `dynamic_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emi_collections`
--
ALTER TABLE `emi_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallaries`
--
ALTER TABLE `gallaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycdatas`
--
ALTER TABLE `kycdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_leads`
--
ALTER TABLE `kyc_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_leads_guarantor`
--
ALTER TABLE `kyc_leads_guarantor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_processes`
--
ALTER TABLE `kyc_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_reject_reasons`
--
ALTER TABLE `kyc_reject_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_disbursements`
--
ALTER TABLE `loan_disbursements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_requests`
--
ALTER TABLE `loan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_category`
--
ALTER TABLE `pet_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincodes`
--
ALTER TABLE `pincodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties_images`
--
ALTER TABLE `properties_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_reviews`
--
ALTER TABLE `property_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_code`
--
ALTER TABLE `referral_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refers`
--
ALTER TABLE `refers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refer_and_earn`
--
ALTER TABLE `refer_and_earn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_models`
--
ALTER TABLE `role_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_logs`
--
ALTER TABLE `route_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking_log`
--
ALTER TABLE `tbl_booking_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pet_bookings`
--
ALTER TABLE `tbl_pet_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_statement`
--
ALTER TABLE `tbl_statement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_update_profile_request`
--
ALTER TABLE `tbl_update_profile_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle_image`
--
ALTER TABLE `tbl_vehicle_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonals`
--
ALTER TABLE `testimonals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whislist_property`
--
ALTER TABLE `whislist_property`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_amenties`
--
ALTER TABLE `add_amenties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `add_book_amenties`
--
ALTER TABLE `add_book_amenties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_book_facilities`
--
ALTER TABLE `add_book_facilities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `add_book_property`
--
ALTER TABLE `add_book_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `add_facilities_propery`
--
ALTER TABLE `add_facilities_propery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `add_package_service`
--
ALTER TABLE `add_package_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignroutes`
--
ALTER TABLE `assignroutes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assign_lead`
--
ALTER TABLE `assign_lead`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bedtypes`
--
ALTER TABLE `bedtypes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dynamic_url`
--
ALTER TABLE `dynamic_url`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emi_collections`
--
ALTER TABLE `emi_collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallaries`
--
ALTER TABLE `gallaries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kycdatas`
--
ALTER TABLE `kycdatas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_leads`
--
ALTER TABLE `kyc_leads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_leads_guarantor`
--
ALTER TABLE `kyc_leads_guarantor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_processes`
--
ALTER TABLE `kyc_processes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_reject_reasons`
--
ALTER TABLE `kyc_reject_reasons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan_disbursements`
--
ALTER TABLE `loan_disbursements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_requests`
--
ALTER TABLE `loan_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_category`
--
ALTER TABLE `pet_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pincodes`
--
ALTER TABLE `pincodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `properties_images`
--
ALTER TABLE `properties_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `property_reviews`
--
ALTER TABLE `property_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_code`
--
ALTER TABLE `referral_code`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refers`
--
ALTER TABLE `refers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refer_and_earn`
--
ALTER TABLE `refer_and_earn`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_models`
--
ALTER TABLE `role_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `route_logs`
--
ALTER TABLE `route_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_booking_log`
--
ALTER TABLE `tbl_booking_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `tbl_pet_bookings`
--
ALTER TABLE `tbl_pet_bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_statement`
--
ALTER TABLE `tbl_statement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_token`
--
ALTER TABLE `tbl_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_update_profile_request`
--
ALTER TABLE `tbl_update_profile_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vehicle`
--
ALTER TABLE `tbl_vehicle`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vehicle_image`
--
ALTER TABLE `tbl_vehicle_image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `testimonals`
--
ALTER TABLE `testimonals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `whislist_property`
--
ALTER TABLE `whislist_property`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
