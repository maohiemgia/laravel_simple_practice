-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 02:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php3_lab1`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `location`, `phone_number`, `email`, `fax`, `created_at`, `updated_at`) VALUES
(1, 'phòng Hành chính', '6712 Bruce Throughway Suite 292\nElvieland, NJ 88222-4399', '0929133026', 'tobin75@example.net', '+1 (838) 962-3801', '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(2, 'phòng Kinh Doanh', '6087 Xzavier Plain\nLake Germaine, GA 91339', '0994492391', 'pouros.carson@example.com', '1-928-762-1379', '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(3, 'phòng Chăm sóc KH', '527 Kavon Place Apt. 318\nFannyport, ND 26376-2769', '0970581111', 'rbrakus@example.net', '(314) 382-5950', '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(4, 'phòng Phát triển', '45608 Mafalda Lane\nPort Sydney, NJ 06495', '0941396340', 'mkovacek@example.com', '531-901-2539', '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(5, 'phòng Tuyển dụng', '242 Maxime Branch Suite 329\nPort Braxton, TX 65812-6692', '0947712352', 'qhand@example.com', '(423) 999-9040', '2023-03-20 05:39:53', '2023-03-20 05:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1: male, 0: female',
  `date_of_birth` date NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `gender`, `date_of_birth`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Julia Jones Jr.', 'gaylord.isidro@yahoo.com', '0910856988', 0, '1982-08-20', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(2, 'Joaquin Hoeger V', 'edyth97@hotmail.com', '0982649479', 0, '1973-11-05', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(3, 'Dante VonRueden', 'bullrich@ankunding.com', '0940903992', 0, '1986-04-23', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(4, 'Miss Lexie Wisozk', 'anderson.raegan@yahoo.com', '0940929051', 0, '1990-01-10', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(5, 'Miss Kathleen Hackett', 'cassie.gusikowski@gmail.com', '0906534718', 0, '1994-04-12', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(6, 'Dannie Legros', 'craig03@gmail.com', '0950732987', 0, '1998-02-06', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(7, 'Gino Ernser', 'konopelski.maxie@yahoo.com', '0906521499', 0, '1989-08-18', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(8, 'Dr. Elvie Towne', 'kling.rosamond@gmail.com', '0974821925', 0, '1995-09-12', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(9, 'Margaretta Smith', 'runte.eliane@hotmail.com', '0958039552', 0, '1986-08-13', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(10, 'Iliana Spencer Jr.', 'zhudson@ondricka.org', '0906658669', 0, '1996-10-27', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(11, 'Milan Nitzsche I', 'baufderhar@rohan.com', '0996642153', 0, '1999-02-05', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(12, 'Karlee Robel PhD', 'gleason.avery@brekke.biz', '0920703985', 0, '1989-05-05', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(13, 'Dr. Jerome Lesch I', 'iyundt@koss.net', '0927778997', 0, '1972-07-05', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(14, 'Reanna Waelchi', 'beier.jayde@moore.biz', '0932458737', 0, '1985-03-14', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(15, 'Leonard Connelly', 'crawford.spinka@durgan.com', '0987502155', 0, '1981-06-17', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(16, 'Rose Koch', 'gturner@yahoo.com', '0980751833', 0, '1981-11-04', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(17, 'Prof. Paolo Larkin', 'maribel85@gmail.com', '0917968542', 0, '1977-02-23', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(18, 'Vivien Wilderman Sr.', 'linda88@hotmail.com', '0959561314', 0, '1994-09-19', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(19, 'Ola Cronin Sr.', 'marielle.murphy@gmail.com', '0955878568', 0, '1978-10-10', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(20, 'Retta Rolfson Jr.', 'medhurst.mercedes@yahoo.com', '0952987706', 0, '1985-09-05', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(21, 'Catherine Sporer', 'titus36@mayer.com', '0919249137', 0, '1998-08-16', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(22, 'Merle D\'Amore', 'stehr.colt@hill.com', '0919908019', 0, '1977-03-19', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(23, 'Helene Lesch', 'frederic.hackett@quitzon.com', '0971108998', 0, '1997-04-29', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(24, 'Mrs. Henriette Kuhlman', 'purdy.lonzo@stokes.com', '0909829032', 0, '2001-03-14', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(25, 'Miss Magdalena Hodkiewicz', 'hailie.dare@gmail.com', '0906622705', 0, '1986-06-13', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(26, 'Concepcion Schneider IV', 'marilie56@rolfson.com', '0940498378', 0, '1991-04-07', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(27, 'Miss Amira Kiehn', 'ignacio77@kuhic.com', '0937528904', 0, '1996-06-07', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(28, 'Barry Hartmann', 'tillman.clement@grimes.com', '0917329130', 0, '1984-07-13', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(29, 'Euna Maggio', 'veichmann@bayer.com', '0930262147', 0, '1976-01-29', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(30, 'Tiara Wuckert', 'hazle35@hotmail.com', '0950207409', 0, '1988-12-20', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(31, 'Miguel Haley', 'shaina77@hotmail.com', '0993237117', 0, '1988-06-10', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(32, 'Simeon Crooks', 'leffler.eloy@sanford.net', '0974714919', 0, '1988-11-03', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(33, 'Dr. Ford Gerhold V', 'qkertzmann@littel.info', '0981220290', 0, '1972-08-02', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(34, 'Mr. Deangelo Greenfelder', 'nitzsche.mac@hotmail.com', '0965286039', 0, '1990-11-13', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(35, 'Prof. Lilly West', 'reichert.dortha@moen.com', '0955137339', 0, '1981-08-31', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(36, 'Paige Braun', 'fdicki@boyle.com', '0974562731', 0, '1984-10-23', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(37, 'Ms. Blanche Mante DVM', 'vkovacek@beier.com', '0942697506', 0, '1994-12-18', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(38, 'Mrs. Patricia Lesch V', 'greenholt.makenzie@hotmail.com', '0993425805', 0, '2001-02-22', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(39, 'Angela Zboncak', 'bradford40@marks.info', '0909347541', 0, '1990-05-27', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(40, 'Myrtle Reichel', 'helmer.will@hotmail.com', '0901439109', 0, '1989-01-26', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(41, 'Alvera Kulas', 'walker.glennie@hotmail.com', '0922823426', 0, '1975-05-10', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(42, 'Esmeralda Pouros', 'rkulas@lueilwitz.net', '0903281530', 0, '1984-02-23', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(43, 'Madonna Yundt', 'leone12@hotmail.com', '0904889622', 0, '1981-12-07', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(44, 'Prof. Ayana Metz IV', 'pmohr@yahoo.com', '0997899435', 0, '1987-10-14', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(45, 'Miss Isabell Rosenbaum II', 'gaylord.jalyn@sanford.org', '0911038971', 0, '2002-08-06', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(46, 'Bertrand Weissnat', 'remington.cormier@legros.org', '0952681726', 0, '1995-11-28', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(47, 'Ally Hane', 'queen68@hotmail.com', '0911852027', 0, '1990-11-24', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(48, 'Miss Marianne Hegmann', 'tate46@maggio.info', '0917637362', 0, '1984-07-26', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(49, 'Prof. Nicolas Balistreri', 'torphy.bell@christiansen.com', '0924181540', 0, '1984-01-10', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(50, 'Zoey Macejkovic', 'gschinner@ortiz.net', '0909887678', 0, '1974-02-04', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_19_091522_create_departments_table', 1),
(3, '2023_03_19_091644_create_employees_table', 1),
(4, '2023_03_19_091803_create_relatives_table', 1),
(5, '2023_03_19_205639_add_column_to_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relatives`
--

CREATE TABLE `relatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1: male, 0: female',
  `relations` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'wife, son, father, mother, ...',
  `employee_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relatives`
--

INSERT INTO `relatives` (`id`, `name`, `gender`, `relations`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 'Bonnie Willms', 1, 'mother', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(2, 'Laverna Predovic', 0, 'wife', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(3, 'Rozella Dare', 1, 'mother', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(4, 'Julian Labadie IV', 0, 'wife', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(5, 'Hipolito Macejkovic', 0, 'father', 1, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(6, 'Dr. Romaine Tremblay', 0, 'mother', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(7, 'Prof. Mattie Goldner', 1, 'father', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(8, 'Rae Donnelly', 1, 'son', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(9, 'Dr. Adele Ryan', 0, 'father', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(10, 'Ms. Leta Waelchi', 1, 'father', 2, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(11, 'Dr. Hilton Corwin II', 1, 'father', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(12, 'Reinhold Mraz', 1, 'father', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(13, 'Tito Wiza', 1, 'wife', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(14, 'Prof. Georgiana Orn', 0, 'wife', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(15, 'Sienna Sporer', 0, 'wife', 3, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(16, 'Marco Ebert', 0, 'son', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(17, 'Dr. Coy Wehner', 1, 'wife', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(18, 'Harmony Weimann', 0, 'mother', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(19, 'Robert Walsh', 0, 'father', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(20, 'Prof. Jaylan Becker', 1, 'father', 4, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(21, 'Augusta Reinger', 1, 'father', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(22, 'Elva Wunsch', 1, 'son', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(23, 'Randy Bruen', 0, 'wife', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(24, 'Darrel Gorczany', 1, 'mother', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(25, 'Kadin Predovic', 1, 'son', 5, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(26, 'Oswaldo Connelly', 0, 'father', 6, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(27, 'Myrna Pollich', 0, 'wife', 6, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(28, 'Muriel Ruecker MD', 0, 'father', 6, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(29, 'Mr. Joseph Quitzon', 1, 'wife', 6, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(30, 'Dr. Jadyn Davis', 0, 'mother', 6, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(31, 'Zoey Deckow', 0, 'wife', 7, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(32, 'Humberto Ernser', 1, 'father', 7, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(33, 'Billie Effertz', 1, 'wife', 7, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(34, 'Alford Ruecker Jr.', 0, 'wife', 7, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(35, 'Mrs. Sabina Walker', 1, 'father', 7, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(36, 'Alphonso Luettgen', 0, 'mother', 8, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(37, 'Allene Wilderman', 1, 'son', 8, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(38, 'Jerel Pfannerstill', 0, 'father', 8, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(39, 'Ludie Volkman V', 1, 'wife', 8, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(40, 'Kiley Hermann', 0, 'son', 8, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(41, 'Ryan Ward', 1, 'mother', 9, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(42, 'Miss Karlie Douglas V', 0, 'mother', 9, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(43, 'Scotty Boyle', 1, 'mother', 9, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(44, 'Jamaal Kessler', 1, 'father', 9, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(45, 'Freeda Shields', 0, 'mother', 9, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(46, 'Brycen Adams', 0, 'mother', 10, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(47, 'Bryce Larson', 1, 'wife', 10, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(48, 'Justine Greenholt', 1, 'father', 10, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(49, 'Jean Hills I', 1, 'father', 10, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(50, 'Jada Yost', 1, 'wife', 10, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(51, 'Camylle Bayer', 0, 'mother', 11, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(52, 'Prof. Paul Cremin II', 1, 'wife', 11, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(53, 'Destiney Walsh', 0, 'father', 11, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(54, 'Abigayle Nienow', 0, 'mother', 11, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(55, 'Sandy Gulgowski', 0, 'wife', 11, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(56, 'Karolann Gulgowski', 1, 'wife', 12, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(57, 'Ocie McGlynn', 0, 'mother', 12, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(58, 'Baron Beatty', 0, 'son', 12, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(59, 'Pansy Hagenes DDS', 1, 'wife', 12, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(60, 'Wilfrid Stiedemann', 1, 'mother', 12, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(61, 'Mrs. Rosalee Wehner', 0, 'wife', 13, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(62, 'Quinn Schiller', 1, 'son', 13, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(63, 'Alfred Daniel', 1, 'father', 13, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(64, 'Liza Thiel I', 0, 'wife', 13, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(65, 'Yessenia Kessler', 1, 'wife', 13, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(66, 'Mr. Marcellus Durgan', 0, 'wife', 14, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(67, 'Alisha Trantow Sr.', 1, 'son', 14, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(68, 'Edyth Turner', 0, 'mother', 14, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(69, 'Elnora Emmerich', 1, 'wife', 14, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(70, 'Maureen Trantow', 1, 'mother', 14, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(71, 'Agnes Muller', 1, 'son', 15, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(72, 'Wava Blanda', 0, 'son', 15, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(73, 'Ron Grant', 0, 'mother', 15, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(74, 'Frida Anderson II', 1, 'wife', 15, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(75, 'Prof. Jerrod Hoeger', 0, 'mother', 15, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(76, 'Baylee Upton', 0, 'mother', 16, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(77, 'Aurelie Watsica', 1, 'mother', 16, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(78, 'Mr. Newell Walker', 0, 'son', 16, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(79, 'Miss Suzanne Kuhlman', 1, 'wife', 16, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(80, 'Reba Abshire', 1, 'father', 16, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(81, 'John Hegmann', 0, 'mother', 17, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(82, 'Ms. Domenica Stark', 1, 'father', 17, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(83, 'Karina Konopelski', 0, 'son', 17, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(84, 'Ona Little', 1, 'mother', 17, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(85, 'Kayla Blick', 0, 'father', 17, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(86, 'Daryl Heller', 0, 'mother', 18, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(87, 'Ceasar Hammes', 1, 'mother', 18, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(88, 'Oswaldo Wintheiser', 1, 'mother', 18, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(89, 'Dameon Satterfield', 0, 'son', 18, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(90, 'Maximilian Turcotte', 0, 'father', 18, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(91, 'Mrs. Clarabelle Bernier I', 0, 'son', 19, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(92, 'Josephine Hill', 1, 'father', 19, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(93, 'Darion Considine', 0, 'wife', 19, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(94, 'Keira Wintheiser', 0, 'father', 19, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(95, 'Miss Nicolette Kunde DDS', 0, 'son', 19, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(96, 'Rex Hudson', 0, 'son', 20, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(97, 'Cullen Schulist Jr.', 1, 'wife', 20, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(98, 'Ms. Bonita Corwin', 0, 'mother', 20, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(99, 'Dr. Josie Bailey I', 1, 'son', 20, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(100, 'Delbert Flatley', 0, 'father', 20, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(101, 'Aurelie Bins', 1, 'mother', 21, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(102, 'Moshe Walker', 1, 'mother', 21, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(103, 'Prof. Elza Flatley', 0, 'mother', 21, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(104, 'Catharine Murazik', 1, 'wife', 21, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(105, 'Jordane Pouros', 1, 'mother', 21, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(106, 'Dr. Kirk Wuckert', 0, 'son', 22, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(107, 'Prof. Braeden Nienow', 1, 'son', 22, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(108, 'Dr. Hobart Bosco PhD', 0, 'father', 22, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(109, 'Elijah Abbott', 0, 'mother', 22, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(110, 'Sterling Prohaska DDS', 0, 'mother', 22, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(111, 'Miss Abby Paucek', 1, 'son', 23, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(112, 'Dr. Jerald Renner', 0, 'father', 23, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(113, 'Dewayne Russel', 0, 'father', 23, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(114, 'Darrion Lakin', 1, 'mother', 23, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(115, 'Jade Rice', 1, 'son', 23, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(116, 'Miss Lauren Orn', 1, 'wife', 24, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(117, 'Sedrick Witting', 1, 'father', 24, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(118, 'Kali O\'Hara', 1, 'father', 24, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(119, 'Henriette Stamm', 0, 'father', 24, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(120, 'Major Hill', 0, 'mother', 24, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(121, 'Joanne Bradtke', 1, 'mother', 25, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(122, 'Bettie Herman Jr.', 0, 'mother', 25, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(123, 'Jeff Kautzer Jr.', 0, 'father', 25, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(124, 'Viviane Osinski', 0, 'son', 25, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(125, 'Ms. Malika Schuppe II', 0, 'son', 25, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(126, 'Gaylord Kunze', 1, 'mother', 26, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(127, 'Chad White', 1, 'father', 26, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(128, 'Bo Greenfelder', 1, 'wife', 26, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(129, 'Dr. Otho Waters V', 0, 'son', 26, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(130, 'Verona Connelly', 1, 'father', 26, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(131, 'Prof. Sylvan Hodkiewicz MD', 1, 'father', 27, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(132, 'Madaline Ledner', 1, 'father', 27, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(133, 'Tanya Weissnat', 0, 'wife', 27, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(134, 'Weldon Purdy', 1, 'son', 27, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(135, 'Kareem Rutherford', 1, 'son', 27, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(136, 'Alverta Jakubowski I', 0, 'son', 28, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(137, 'Sven Morar DDS', 1, 'mother', 28, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(138, 'Dr. Marc Parisian MD', 0, 'son', 28, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(139, 'Lavon Wolf', 1, 'mother', 28, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(140, 'Prof. Magnus Gaylord', 1, 'mother', 28, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(141, 'Caterina Lind', 1, 'mother', 29, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(142, 'Isabell Grady', 1, 'mother', 29, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(143, 'Meta Morar', 0, 'mother', 29, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(144, 'Marcelle Crist', 0, 'son', 29, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(145, 'Virginie Crona', 1, 'wife', 29, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(146, 'Tess Bradtke PhD', 0, 'mother', 30, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(147, 'Catherine Gulgowski', 0, 'mother', 30, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(148, 'Forest Huels', 0, 'father', 30, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(149, 'Garland Windler', 1, 'father', 30, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(150, 'Haylie Rau', 0, 'wife', 30, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(151, 'Vidal Heathcote', 0, 'mother', 31, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(152, 'Cornelius Schroeder MD', 1, 'son', 31, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(153, 'Penelope Sawayn', 1, 'mother', 31, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(154, 'Katarina Kihn', 0, 'mother', 31, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(155, 'Cristian Crona', 1, 'mother', 31, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(156, 'Prof. Baron Swaniawski I', 0, 'mother', 32, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(157, 'Hazle Strosin', 0, 'mother', 32, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(158, 'Jordan Leuschke MD', 0, 'father', 32, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(159, 'Dr. Emily Hamill', 1, 'son', 32, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(160, 'Miss Trinity Rowe', 0, 'mother', 32, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(161, 'Rosetta Swaniawski', 1, 'mother', 33, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(162, 'Bennie Torphy', 0, 'son', 33, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(163, 'Silas Ruecker', 0, 'wife', 33, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(164, 'Alison Sporer', 0, 'mother', 33, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(165, 'Dr. Emilio Heller I', 1, 'father', 33, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(166, 'Lempi Goldner', 1, 'father', 34, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(167, 'Mrs. Sandrine Tillman PhD', 1, 'son', 34, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(168, 'Edwin Bosco', 0, 'father', 34, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(169, 'Andres Raynor Jr.', 1, 'mother', 34, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(170, 'Devonte Heidenreich', 0, 'son', 34, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(171, 'Dr. Malinda Jerde', 1, 'father', 35, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(172, 'Lourdes O\'Keefe', 0, 'mother', 35, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(173, 'Leta Kling', 1, 'wife', 35, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(174, 'Melba Denesik', 1, 'mother', 35, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(175, 'Howell Waters', 0, 'father', 35, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(176, 'Susie Schulist', 0, 'wife', 36, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(177, 'Ludie Walker', 0, 'mother', 36, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(178, 'Jazmyne Collier', 0, 'mother', 36, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(179, 'Ayla Botsford', 1, 'father', 36, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(180, 'Chance Schultz', 1, 'father', 36, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(181, 'Mrs. Pamela Hessel', 1, 'mother', 37, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(182, 'Keshawn Leuschke Jr.', 1, 'son', 37, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(183, 'Judge Kling', 0, 'mother', 37, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(184, 'Aisha Tremblay', 0, 'wife', 37, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(185, 'Willow Daniel', 0, 'father', 37, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(186, 'Winifred Kohler', 1, 'son', 38, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(187, 'Prof. Edison Bednar II', 1, 'wife', 38, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(188, 'Marina Pfannerstill', 1, 'mother', 38, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(189, 'Mr. Lowell Schultz', 1, 'mother', 38, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(190, 'Geo Davis', 0, 'wife', 38, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(191, 'Mr. Leonardo Bayer', 1, 'father', 39, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(192, 'Stanton Hirthe', 0, 'mother', 39, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(193, 'Hertha Altenwerth', 1, 'father', 39, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(194, 'Pearlie Jacobson', 0, 'wife', 39, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(195, 'Karl Swaniawski DVM', 0, 'mother', 39, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(196, 'Amber Corkery', 0, 'father', 40, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(197, 'Javon Ebert', 1, 'father', 40, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(198, 'Adriel O\'Reilly PhD', 1, 'son', 40, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(199, 'Fanny Kunde', 0, 'father', 40, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(200, 'Kaley Morissette', 0, 'father', 40, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(201, 'Chaim Moen MD', 0, 'son', 41, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(202, 'Javonte Monahan', 1, 'father', 41, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(203, 'Conrad Muller III', 0, 'mother', 41, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(204, 'Dr. Jensen Roob', 0, 'father', 41, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(205, 'Zackary Cronin Jr.', 0, 'father', 41, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(206, 'Dr. Emma Gaylord', 0, 'son', 42, '2023-03-20 05:39:53', '2023-03-20 05:39:53'),
(207, 'Evan Schaden', 0, 'mother', 42, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(208, 'Mrs. Daniella Quitzon', 1, 'son', 42, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(209, 'Orlo Upton', 1, 'wife', 42, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(210, 'Prof. Katelin Pagac PhD', 1, 'wife', 42, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(211, 'Madaline Corwin', 0, 'wife', 43, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(212, 'Jaeden Trantow', 1, 'son', 43, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(213, 'Dr. Valentine Walter II', 0, 'wife', 43, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(214, 'Adolph Swaniawski', 1, 'mother', 43, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(215, 'Brionna Pfeffer', 1, 'father', 43, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(216, 'Mr. Brian Stark II', 1, 'son', 44, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(217, 'Hettie Williamson', 1, 'son', 44, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(218, 'Kristina Spencer V', 1, 'wife', 44, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(219, 'Pablo Kuphal', 0, 'mother', 44, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(220, 'Cale Fisher V', 0, 'wife', 44, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(221, 'Mr. Raymundo Yundt DVM', 0, 'father', 45, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(222, 'Eryn Wintheiser', 1, 'son', 45, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(223, 'Okey Davis', 1, 'wife', 45, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(224, 'Victoria Keebler', 1, 'wife', 45, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(225, 'Edgar Lind PhD', 1, 'mother', 45, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(226, 'Genevieve Lakin', 1, 'son', 46, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(227, 'Miss Kacie Ondricka', 0, 'wife', 46, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(228, 'Marlene Maggio', 1, 'wife', 46, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(229, 'Laurel Nader', 0, 'father', 46, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(230, 'Dr. Russell Kshlerin IV', 0, 'father', 46, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(231, 'Quentin Mueller', 1, 'father', 47, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(232, 'Dr. Dimitri Buckridge', 1, 'son', 47, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(233, 'Ms. Jennie Gutmann', 1, 'son', 47, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(234, 'Tamara Koss', 0, 'wife', 47, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(235, 'Evie Lowe', 1, 'mother', 47, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(236, 'Mrs. Bessie Bechtelar Jr.', 1, 'mother', 48, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(237, 'Sheldon Kulas', 1, 'wife', 48, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(238, 'Dr. Elda Jakubowski PhD', 1, 'son', 48, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(239, 'Freida Breitenberg', 1, 'son', 48, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(240, 'Damon Ferry MD', 0, 'father', 48, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(241, 'Mr. Rigoberto Stracke', 1, 'wife', 49, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(242, 'Rhiannon VonRueden', 0, 'mother', 49, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(243, 'Aurore Gusikowski', 1, 'son', 49, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(244, 'Tabitha Torp', 1, 'wife', 49, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(245, 'Vergie Paucek', 0, 'wife', 49, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(246, 'Amy Padberg DVM', 0, 'father', 50, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(247, 'Mr. Marcelo Schulist IV', 1, 'mother', 50, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(248, 'Makayla Spencer', 0, 'son', 50, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(249, 'Lukas Donnelly', 1, 'mother', 50, '2023-03-20 05:39:54', '2023-03-20 05:39:54'),
(250, 'Prof. Stan Shanahan', 1, 'wife', 50, '2023-03-20 05:39:54', '2023-03-20 05:39:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `relatives`
--
ALTER TABLE `relatives`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatives`
--
ALTER TABLE `relatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
