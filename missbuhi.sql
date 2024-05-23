-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 01:26 AM
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
-- Database: `missbuhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2023-05-28 03:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'pre-pageant', 'Pre-Pageant', '2024-05-12 14:04:45', '2024-05-12 15:01:00'),
(2, 1, 'pageant-night', 'Pageant Night', '2023-04-06 13:25:10', '2024-05-12 15:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'missbuhi-2024', 'Miss Buhi 2024', '2024-04-06 13:24:04', '2024-04-06 13:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Intelligence (Relevance, Substance, Value to the Question Given, and Speaking Ability)', 40, '2024-05-12 15:34:44', '2024-05-12 15:34:44'),
(2, 1, 'Beauty of Face, Attractiveness, and Charm', 30, '2024-05-12 15:35:11', '2024-05-12 15:35:11'),
(3, 1, 'Form, Figure, and Physical Fitness', 30, '2024-05-12 15:35:34', '2024-05-12 15:35:34'),
(4, 2, 'Beauty of Face, Attractiveness, and Charm', 40, '2024-05-12 15:36:02', '2024-05-12 15:36:02'),
(5, 2, 'Stage Presence, Projection, Execution, and Mastery of Performance', 40, '2024-05-12 15:36:24', '2024-05-12 15:36:24'),
(6, 2, 'Self-Introduction and Overall Impression', 20, '2024-05-12 15:36:42', '2024-05-12 15:36:42'),
(7, 3, 'Beauty of Face, Attractiveness, and Charm', 30, '2024-05-12 15:37:10', '2024-05-12 15:37:10'),
(8, 3, 'Form, Figure, and Physical Fitness', 40, '2024-05-12 15:37:30', '2024-05-12 15:37:30'),
(9, 3, 'Stage Presence, Confidence, Drive, Energy, Charisma, Expression, and Overall Impression', 30, '2024-05-12 15:38:10', '2024-05-12 15:38:10'),
(10, 4, 'Beauty of Face, Attractiveness, and Charm', 40, '2024-05-12 15:38:57', '2024-05-12 15:38:57'),
(11, 4, 'Appropriateness of Attire, and Sense of Style', 40, '2024-05-12 15:39:20', '2024-05-12 15:39:20'),
(12, 4, 'Walk, Poise, Projection, Posture, Carriage, Dignity, Grace, Elegance, and Overall Impression', 20, '2024-05-12 15:40:03', '2024-05-12 15:40:03'),
(13, 5, 'Relevance, Substance, Value to the Question Given and Speaking Ability', 40, '2024-05-12 15:42:41', '2024-05-12 15:42:41'),
(14, 5, 'Confidence and Poise under Pressure', 30, '2024-05-12 15:43:00', '2024-05-12 15:43:00'),
(15, 5, 'Beauty of Face, Form, Figure and Physical Fitness', 30, '2024-05-12 15:43:23', '2024-05-12 15:43:23'),
(16, 6, 'Intelligence (Relevance, Substance, Value to the Question Given and Speaking Ability)', 50, '2024-05-12 15:44:10', '2024-05-12 15:44:10'),
(17, 6, 'Beauty (Face, Form, Figure and Physical Fitness)', 50, '2024-05-12 15:44:34', '2024-05-12 15:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2024-05-13 13:54:45', '2024-05-13 15:44:56'),
(2, 5, 2, '2024-05-13 13:54:46', '2024-05-13 15:44:58'),
(3, 5, 3, '2024-05-13 13:54:46', '2024-05-13 15:45:00'),
(4, 5, 4, '2024-05-13 13:54:47', '2024-05-13 15:45:01'),
(5, 5, 5, '2024-05-13 13:54:47', '2024-05-13 15:45:03'),
(6, 5, 6, '2024-05-13 13:54:48', '2024-05-13 15:45:06'),
(7, 5, 7, '2024-05-13 13:54:48', '2024-05-13 15:45:08'),
(8, 5, 8, '2024-05-13 13:54:49', '2024-05-13 15:45:10'),
(9, 5, 9, '2024-05-13 13:54:50', '2024-05-13 15:45:12'),
(10, 5, 10, '2024-05-13 13:54:50', '2024-05-13 15:45:14'),
(11, 5, 11, '2024-05-13 13:54:51', '2024-05-13 15:45:17'),
(12, 5, 12, '2024-05-13 13:54:51', '2024-05-13 15:45:19'),
(13, 5, 13, '2024-05-13 13:54:52', '2024-05-13 15:45:22'),
(14, 5, 14, '2024-05-13 13:54:53', '2024-05-13 15:45:24'),
(15, 5, 15, '2024-05-13 13:54:53', '2024-05-13 15:45:26'),
(16, 5, 16, '2024-05-13 13:54:54', '2024-05-13 15:45:27'),
(17, 5, 17, '2024-05-13 13:54:55', '2024-05-13 15:45:29'),
(18, 5, 18, '2024-05-13 13:54:55', '2024-05-13 15:45:32'),
(19, 5, 19, '2024-05-13 13:54:56', '2024-05-13 15:45:34'),
(20, 5, 20, '2024-05-13 13:54:56', '2024-05-13 15:45:36'),
(21, 6, 1, '2024-05-13 13:54:58', '2024-05-13 15:45:38'),
(22, 6, 2, '2024-05-13 13:54:58', '2024-05-13 15:45:40'),
(23, 6, 3, '2024-05-13 13:54:59', '2024-05-13 15:45:42'),
(24, 6, 4, '2024-05-13 13:54:59', '2024-05-13 15:45:43'),
(25, 6, 5, '2024-05-13 13:54:59', '2024-05-13 15:45:47'),
(26, 6, 6, '2024-05-13 13:55:00', '2024-05-13 15:45:49'),
(27, 6, 7, '2024-05-13 13:55:00', '2024-05-13 15:45:52'),
(28, 6, 8, '2024-05-13 13:55:01', '2024-05-13 15:45:54'),
(29, 6, 9, '2024-05-13 13:55:02', '2024-05-13 15:45:56'),
(30, 6, 10, '2024-05-13 13:55:02', '2024-05-13 15:45:58'),
(31, 6, 11, '2024-05-13 13:55:03', '2024-05-13 15:46:01'),
(32, 6, 12, '2024-05-13 13:55:03', '2024-05-13 15:46:02'),
(33, 6, 13, '2024-05-13 13:55:04', '2024-05-13 15:46:04'),
(34, 6, 14, '2024-05-13 13:55:04', '2024-05-13 15:46:05'),
(35, 6, 15, '2024-05-13 13:55:04', '2024-05-13 15:46:07'),
(36, 6, 16, '2024-05-13 13:55:06', '2024-05-13 15:46:10'),
(37, 6, 17, '2024-05-13 13:55:06', '2024-05-13 15:46:12'),
(38, 6, 18, '2024-05-13 13:55:06', '2024-05-13 15:46:14'),
(39, 6, 19, '2024-05-13 13:55:07', '2024-05-13 15:46:16'),
(40, 6, 20, '2024-05-13 13:55:07', '2024-05-13 15:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'close-door-interview', 'Closed Door Interview', '2024-05-12 15:26:37', '2024-05-12 15:26:37'),
(2, 2, 'production-number', 'Production Number', '2024-05-12 15:27:06', '2024-05-12 15:27:06'),
(3, 2, 'swimsuit-competition', 'Swimsuit', '2024-05-12 15:27:33', '2024-05-12 15:27:33'),
(4, 2, 'evening-gown-competition', 'Evening Gown', '2024-05-12 15:27:49', '2024-05-12 15:27:49'),
(5, 2, 'preliminary-qa', 'Preliminary Q&A', '2024-05-12 15:31:15', '2024-05-21 21:48:15'),
(6, 2, 'final-qa', 'Final Q&A', '2024-05-12 15:31:29', '2024-05-12 15:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2023-04-06 13:58:11', '2024-05-21 06:06:45'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2023-04-06 13:58:28', '2023-04-06 13:58:28'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2023-04-06 13:58:42', '2023-04-06 13:58:42'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2023-04-06 13:59:26', '2023-04-06 13:59:26'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2023-04-06 14:00:00', '2023-04-06 14:00:00'),
(6, 6, 'Judge 06', 'no-avatar.jpg', 'judge06', 'judge06', NULL, NULL, NULL, '2024-05-13 13:49:13', '2024-05-13 13:49:13'),
(7, 7, 'Judge 07', 'no-avatar.jpg', 'judge07', 'judge07', NULL, NULL, NULL, '2024-05-13 13:49:30', '2024-05-13 13:49:30'),
(8, 8, 'Judge 08', 'no-avatar.jpg', 'judge08', 'judge08', NULL, NULL, NULL, '2024-05-21 05:57:36', '2024-05-21 05:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `active_team_id` tinyint(3) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `active_team_id`, `has_active_team`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, 0, '2024-05-13 13:49:50', '2024-05-13 15:47:00'),
(2, 1, 2, 0, 1, 0, '2024-05-13 13:51:36', '2024-05-13 15:47:02'),
(3, 1, 3, 0, 1, 0, '2024-05-13 13:51:39', '2024-05-13 15:47:04'),
(4, 1, 4, 0, 1, 0, '2024-05-13 13:51:42', '2024-05-13 15:47:06'),
(5, 1, 5, 0, 1, 0, '2024-05-13 13:51:46', '2024-05-13 15:47:07'),
(6, 1, 6, 0, 1, 0, '2024-05-13 13:51:49', '2024-05-13 15:47:09'),
(7, 2, 1, 0, 1, 0, '2024-05-13 13:51:55', '2024-05-13 15:47:10'),
(8, 2, 2, 0, 1, 0, '2024-05-13 13:51:59', '2024-05-13 15:47:12'),
(9, 2, 3, 0, 1, 0, '2024-05-13 13:52:02', '2024-05-13 15:47:14'),
(10, 2, 4, 0, 1, 0, '2024-05-13 13:52:05', '2024-05-13 15:47:16'),
(11, 2, 5, 0, 1, 0, '2024-05-13 13:52:08', '2024-05-13 15:47:17'),
(12, 2, 6, 0, 1, 0, '2024-05-13 13:52:11', '2024-05-13 15:47:19'),
(13, 3, 1, 0, 1, 0, '2024-05-13 13:52:17', '2024-05-13 15:47:22'),
(14, 3, 2, 0, 1, 0, '2024-05-13 13:52:20', '2024-05-13 15:47:23'),
(15, 3, 3, 0, 1, 0, '2024-05-13 13:52:24', '2024-05-13 15:47:25'),
(16, 3, 4, 0, 1, 0, '2024-05-13 13:52:27', '2024-05-13 15:47:27'),
(17, 3, 5, 0, 1, 0, '2024-05-13 13:52:30', '2024-05-13 15:47:28'),
(18, 3, 6, 0, 1, 0, '2024-05-13 13:52:33', '2024-05-13 15:47:30'),
(19, 4, 1, 0, 1, 0, '2024-05-13 13:52:47', '2024-05-13 15:47:32'),
(20, 4, 2, 0, 1, 0, '2024-05-13 13:52:52', '2024-05-13 15:47:34'),
(21, 4, 3, 0, 1, 0, '2024-05-13 13:52:55', '2024-05-13 15:47:36'),
(22, 4, 4, 0, 1, 0, '2024-05-13 13:52:58', '2024-05-13 15:47:38'),
(23, 4, 5, 0, 1, 0, '2024-05-13 13:53:01', '2024-05-13 15:47:40'),
(24, 4, 6, 0, 1, 0, '2024-05-13 13:53:04', '2024-05-13 15:47:42'),
(25, 5, 1, 0, 1, 0, '2024-05-13 13:53:16', '2024-05-13 15:47:44'),
(26, 5, 2, 0, 1, 0, '2024-05-13 13:53:20', '2024-05-13 15:47:46'),
(27, 5, 3, 0, 1, 0, '2024-05-13 13:53:23', '2024-05-13 15:47:48'),
(28, 5, 4, 0, 1, 0, '2024-05-13 13:53:26', '2024-05-13 15:47:50'),
(29, 5, 5, 0, 1, 0, '2024-05-13 13:53:29', '2024-05-13 15:47:52'),
(30, 5, 6, 0, 1, 0, '2024-05-13 13:53:32', '2024-05-13 15:47:54'),
(31, 6, 1, 0, 1, 0, '2024-05-13 13:53:38', '2024-05-13 15:47:56'),
(32, 6, 2, 0, 1, 0, '2024-05-13 13:53:42', '2024-05-13 15:47:58'),
(33, 6, 3, 0, 1, 0, '2024-05-13 13:53:45', '2024-05-13 15:48:00'),
(34, 6, 4, 0, 1, 0, '2024-05-13 13:53:48', '2024-05-13 15:48:01'),
(35, 6, 5, 0, 1, 0, '2024-05-13 13:53:51', '2024-05-13 15:48:04'),
(36, 6, 6, 0, 1, 0, '2024-05-13 13:53:54', '2024-05-13 15:48:06'),
(37, 7, 1, 0, 1, 0, '2024-05-13 13:54:03', '2024-05-13 15:48:09'),
(38, 7, 2, 0, 1, 0, '2024-05-13 13:54:07', '2024-05-13 15:48:12'),
(39, 7, 3, 0, 1, 0, '2024-05-13 13:54:10', '2024-05-13 15:48:14'),
(40, 7, 4, 0, 1, 0, '2024-05-13 13:54:13', '2024-05-13 15:48:20'),
(41, 7, 5, 0, 1, 0, '2024-05-13 13:54:16', '2024-05-13 15:48:23'),
(42, 7, 6, 0, 1, 0, '2024-05-13 13:54:19', '2024-05-13 15:48:26'),
(43, 8, 1, 0, 1, 0, '2024-05-21 05:57:45', '2024-05-21 05:57:45'),
(44, 8, 2, 0, 1, 0, '2024-05-21 05:57:49', '2024-05-21 05:57:49'),
(45, 8, 3, 0, 1, 0, '2024-05-21 05:57:53', '2024-05-21 05:57:53'),
(46, 8, 4, 0, 1, 0, '2024-05-21 05:57:57', '2024-05-21 05:57:57'),
(47, 8, 5, 0, 1, 0, '2024-05-21 05:58:01', '2024-05-21 05:58:01'),
(48, 8, 6, 0, 1, 0, '2024-05-21 05:58:04', '2024-05-21 05:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Neoli Kryss Abarientos', 'Nabua, Cam. Sur', '01-neoli-kryss-angeline-abarientos.jpg', '2024-05-13 13:40:28', '2024-05-21 06:01:49'),
(2, 2, 'Johanna Leann C. Recuenco', 'Nabua, Cam. Sur', '02-johanna-leeann-c-recuenco.jpg', '2024-05-13 13:40:50', '2024-05-21 06:01:54'),
(3, 3, 'Angelica Necio Maximo', 'Polangui, Albay', '03-angelica-necio-maximo.jpg', '2024-05-13 13:41:15', '2024-05-21 06:02:01'),
(4, 4, 'Mien Mie R. Egipto', 'Iriga City', '04-mien-mie-egipto.jpg', '2024-05-13 13:41:44', '2024-05-21 06:02:04'),
(5, 5, 'Bettina Pauline Luceña Francia', 'Iriga City', '05-bettina-pauline-lucena-francia.jpg', '2024-05-13 13:42:17', '2024-05-21 06:02:06'),
(6, 6, 'Sophia Kim Cornejo Ani', 'Balatan, Cam. Sur', '06-sophia-kim-cornejo-ani.jpg', '2024-05-13 13:42:43', '2024-05-21 06:02:10'),
(7, 7, 'Marifranz S. Rico', 'Goa, Cam. Sur', '07-marifranz-s-rico.jpg', '2024-05-13 13:43:04', '2024-05-21 06:02:14'),
(8, 8, 'Cherry Love Jebulan', 'Sorsogon City', '08-cherry-love-jebulan.jpg', '2024-05-13 13:43:20', '2024-05-21 06:02:17'),
(9, 9, 'Audrey Alexandra B. Villa', 'Baao, Cam. Sur', '09-audrey-alexandra-b-villa.jpg', '2024-05-13 13:43:39', '2024-05-21 06:02:22'),
(10, 10, 'Princess Lisie S. Mabag', 'Polangui, Albay', '10-princess-lisie-s-mabag.jpg', '2024-05-13 13:43:56', '2024-05-21 06:02:26'),
(11, 11, 'Ginn Lianna Fiona Orcine', 'Bato, Cam. Sur', '11-ginn-lianna-fiona-orcine.jpg', '2024-05-13 13:44:39', '2024-05-21 06:02:32'),
(12, 12, 'Hannah Mae T. Panibe', 'Calabanga, Cam. Sur', '12-hannah-mae-t-panibe.jpg', '2024-05-13 13:45:10', '2024-05-21 06:02:35'),
(13, 13, 'Euricka Lyn Moraña', 'Nabua, Cam. Sur', '13-euricka-lyn-morana.jpg', '2024-05-13 13:45:36', '2024-05-21 06:02:38'),
(14, 14, 'Sarah Fayiz B. Qaimah', 'Buhi, Cam. Sur', '14-sarah-fayiz-b-qaimah.jpg', '2024-05-13 13:46:08', '2024-05-21 06:02:41'),
(15, 15, 'Nicole Joycean Peñaserada', 'Buhi, Cam. Sur', '15-nicole-joycean-penaserada.jpg', '2024-05-13 13:46:46', '2024-05-21 06:02:44'),
(16, 16, 'Sherrie Mae P. Romaraog', 'Iriga City', '16-sherrie-mae-p-romaraog.jpg', '2024-05-13 13:47:05', '2024-05-21 06:02:48'),
(17, 17, 'Mickha Ella S. Comoda', 'Goa, Cam. Sur', '17-mickha-ella-s-comoda.jpg', '2024-05-13 13:47:29', '2024-05-21 06:02:51'),
(18, 18, 'Ivy Dianne I. De Vera', 'Milaor, Cam. Sur', '18-ivy-dianne-i-de-vera.jpg', '2024-05-13 13:47:49', '2024-05-21 06:02:55'),
(19, 19, 'Melclen Joy S. Corporal', 'Pili, Cam. Sur', '19-melclen-joy-s-corporal.jpg', '2024-05-13 13:48:24', '2024-05-21 06:02:58'),
(20, 20, 'Mickaela Janelle S. Dura', 'Polangui, Albay', '20-mickaela-janelle-s-dura.jpg', '2024-05-13 13:48:48', '2024-05-21 06:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `active_team_id` tinyint(3) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Best in Production Number', '2024-05-12 15:44:51', '2024-05-13 15:44:11'),
(2, 3, 1, 'Best in Swimsuit', '2024-05-12 15:44:51', '2024-05-13 15:44:13'),
(3, 5, 1, '1', '2024-05-12 15:44:51', '2024-05-13 15:44:14'),
(4, 5, 2, '2', '2024-05-12 15:44:51', '2024-05-13 15:44:16'),
(5, 5, 3, '3', '2024-05-12 15:44:51', '2024-05-13 15:44:18'),
(6, 5, 4, '4', '2024-05-12 15:44:51', '2024-05-13 15:44:20'),
(7, 5, 5, '5', '2024-05-12 15:44:51', '2024-05-13 15:44:22'),
(8, 4, 1, 'Best in Evening Gown', '2024-05-12 15:44:51', '2024-05-13 15:44:25'),
(9, 6, 1, 'Miss Buhi 2024', '2024-05-12 15:44:51', '2024-05-13 15:44:27'),
(10, 6, 2, 'Miss Buhi-Bicol Tourism 2024', '2024-05-12 15:44:51', '2024-05-13 15:44:29'),
(11, 6, 3, 'Miss Buhi-Bicolandia 2024', '2024-05-12 15:44:51', '2024-05-13 15:44:31'),
(12, 6, 4, '1st Runner-Up', '2024-05-12 15:44:51', '2024-05-13 15:44:33'),
(13, 6, 5, '2nd Runner-Up', '2024-05-12 15:44:51', '2024-05-13 15:44:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `active_team_id` (`active_team_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `active_team_id` (`active_team_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_3` FOREIGN KEY (`active_team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_4` FOREIGN KEY (`active_team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
