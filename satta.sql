-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 28, 2025 at 06:21 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u231093691_satta`
--

-- --------------------------------------------------------

--
-- Table structure for table `chart_results`
--

CREATE TABLE `chart_results` (
  `chart_result_id` int(11) NOT NULL,
  `chart_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `result_date` date NOT NULL,
  `result_value` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_results`
--

INSERT INTO `chart_results` (`chart_result_id`, `chart_id`, `game_id`, `result_date`, `result_value`) VALUES
(1, 1, 1, '2025-07-01', '42'),
(2, 1, 2, '2025-07-01', '42'),
(3, 1, 3, '2025-07-01', '27'),
(4, 1, 4, '2025-07-01', '54'),
(5, 1, 5, '2025-07-01', '100'),
(6, 1, 6, '2025-07-01', '36'),
(7, 1, 1, '2025-07-02', '42'),
(8, 1, 2, '2025-07-02', '42'),
(9, 1, 3, '2025-07-02', '11'),
(10, 1, 4, '2025-07-02', '56'),
(11, 1, 5, '2025-07-02', '23'),
(12, 1, 6, '2025-07-02', '80'),
(13, 1, 1, '2025-07-03', '73'),
(14, 1, 2, '2025-07-03', '73'),
(15, 1, 3, '2025-07-03', '32'),
(16, 1, 4, '2025-07-03', '27'),
(17, 1, 5, '2025-07-03', '21'),
(18, 1, 6, '2025-07-03', '64');

-- --------------------------------------------------------

--
-- Table structure for table `content_blocks`
--

CREATE TABLE `content_blocks` (
  `block_id` int(11) NOT NULL,
  `block_type` enum('leak','promo','contact','rate_table') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `button1_text` varchar(50) DEFAULT NULL,
  `button1_link` varchar(255) DEFAULT NULL,
  `button2_text` varchar(50) DEFAULT NULL,
  `button2_link` varchar(255) DEFAULT NULL,
  `background_color` varchar(20) DEFAULT NULL,
  `text_color` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_blocks`
--

INSERT INTO `content_blocks` (`block_id`, `block_type`, `title`, `subtitle`, `content`, `phone_number`, `whatsapp_number`, `button1_text`, `button1_link`, `button2_text`, `button2_link`, `background_color`, `text_color`, `is_active`, `display_order`, `created_at`) VALUES
(1, 'leak', 'LEAK JODI DHAMAKA', '🎯FARIDABAD GAZIYABAD GALI DS🎯', 'NO ADVANCE NO ADVANCE', '9599269985', '919599269985', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2025-07-22 18:07:19'),
(2, 'contact', 'आज की लीक जोड़ी यहां मिलेगी', '🎯FARIDABAD GAZIYABAD GALI DS🎯', 'MUMBAI HEAD BRANCH MANAGER (CEO)', '7451956934', '917451956934', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2025-07-22 18:07:19'),
(3, 'promo', 'PLAY ONLINE GAME', NULL, 'Online game khelne ke liye niche diye hue link se app Ko download Karen', NULL, NULL, 'DOWNLOAD', '#apk/app-release.apk', NULL, NULL, '#FBC503', 'red', 1, 0, '2025-07-22 18:09:13'),
(4, 'contact', 'आज की लीक जोड़ी यहां मिलेगी', '🎯FARIDABAD GAZIYABAD GALI DS🎯', '<p>MUMBAI HEAD BRANCH MANAGER (CEO)</p>', '7451956934', '917451956934', 'CALL NOW', 'tel:7451956934', 'WHATSAPP', 'https://wa.me/917451956934', '#ff0000', '#ffffff', 1, 2, '2025-07-22 18:09:13'),
(5, 'rate_table', '👑राजकोट हेड ब्रांच 👑', 'दीपक शर्मा खाईवाल', 'एक दम ट्रस्टेड ईमानदार खाईवाल है भाईयो\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n🔥⏩ {{RATE}} रेट ⏭🔥\n👉जोड़ी रेट : 𝟏𝟎 𝐤 95𝟎👈\n👉हरूफ रेट : 𝟏𝟎𝟎 𝐤 95𝟎👈\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n👑👇𝐓𝐈𝐌𝐄 𝐓𝐀𝐁𝐋𝐄👇👑\n\n♾ RAJSHREE •••••••••☞01:30\n♾ SUNDARAM••••••••☞02:45\n♾ DELHI BAJAR••••••☞03:00\n♾ SHRI GANESH•••••☞ 04:30\n♾ FARIDABAD•••••••☞ 06:00\n♾ SHALIMAR••••••••☞ 07:25\n♾ GAZIYABAD•••••••☞ 09:25\n♾ LUCKY----7••••••••☞ 07:25\n♾ GALI•••••••••••••••☞ 011:25\n♾ DESAWAR••••••••••☞ 04:50\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬\nPAYTM | PHONE PAY | G PAY \n*_____________________________*\nगारंटी के साथ आपकी पेमंट होंगी 𝟱 मिनट के अंदर💵\n\n█𝗪𝗛𝗔𝗧𝗦𝗔𝗣𝗣 𝗡𝗨𝗠𝗕𝗘𝗥█\n7351230173', '7351230173', '917351230173', 'WHATSAPP', 'https://wa.me/917351230173', NULL, NULL, NULL, NULL, 1, 0, '2025-07-22 18:09:13'),
(6, '', '👉🏻AFTER PASS👈🏻', NULL, 'FARIDABAD, GAZIYABAD GALI DISAWAR KI LEAK SINGLE JODI 100% PASS LEAK GAME LENE KE LIYE ABHI CALL YA MSG KARE SIRF IMANDAR BHAI OR MOTI GAME LAGANE WALE....', NULL, NULL, 'GAZIYABAD LEAK', '#', NULL, NULL, NULL, NULL, 1, 0, '2025-07-22 18:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `result_time` time DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `display_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_name`, `display_name`, `open_time`, `close_time`, `result_time`, `is_active`, `display_order`) VALUES
(1, 'CHAR MINAR', 'CHAR MINAR', NULL, NULL, '04:00:00', 1, 0),
(2, 'DISAWER', 'DISAWER', NULL, NULL, '05:10:00', 1, 0),
(3, 'FARIDABAD', 'FARIDABAD', NULL, NULL, '06:05:00', 1, 0),
(4, 'GHAZIYABAD', 'GHAZIYABAD', NULL, NULL, '08:15:00', 1, 0),
(5, 'GALI', 'GALI', NULL, NULL, '10:45:00', 1, 0),
(6, 'PESHAWER', 'PESHAWER', NULL, NULL, '03:05:00', 1, 0),
(7, 'CHAR MINAR', 'CHAR MINAR', NULL, NULL, '04:00:00', 1, 1),
(8, 'DISAWER', 'DISAWER', NULL, NULL, '05:10:00', 1, 2),
(9, 'FARIDABAD', 'FARIDABAD', NULL, NULL, '06:05:00', 1, 3),
(10, 'GHAZIYABAD', 'GHAZIYABAD', NULL, NULL, '08:15:00', 1, 4),
(11, 'GALI', 'GALI', NULL, NULL, '10:45:00', 1, 5),
(12, 'PESHAWER', 'PESHAWER', NULL, NULL, '03:05:00', 1, 6),
(14, 'N C R', 'N C R', NULL, NULL, '02:15:00', 1, 8),
(15, 'DELHI BAZAR', 'DELHI BAZAR (DL)', NULL, NULL, '03:10:00', 1, 9),
(16, 'SHRI GANESH', 'SHRI GANESH', NULL, NULL, '04:30:00', 1, 10),
(17, 'char minar2', 'cahr minar', '12:17:00', '12:18:00', '12:20:00', 1, 2),
(18, 'char minar2', 'cahr minar', '12:17:00', '12:18:00', '12:20:00', 1, 2),
(19, 'DEHLI DARBAR', 'DEHLI DARBAR', '21:30:00', '20:30:00', '21:30:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game_results`
--

CREATE TABLE `game_results` (
  `result_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `result_date` date NOT NULL,
  `open_result` varchar(10) DEFAULT NULL,
  `close_result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_results`
--

INSERT INTO `game_results` (`result_id`, `game_id`, `result_date`, `open_result`, `close_result`) VALUES
(1, 1, '2025-07-22', '98', '55'),
(2, 2, '2025-07-22', '98', '55'),
(3, 3, '2025-07-22', '57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marquee_text`
--

CREATE TABLE `marquee_text` (
  `marquee_id` int(11) NOT NULL,
  `text_content` text NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marquee_text`
--

INSERT INTO `marquee_text` (`marquee_id`, `text_content`, `is_active`, `created_at`) VALUES
(1, 'SATTA KING, SATTAKING, SATTA RESULT, GALI RESULT, GALI SATTA, SATTA BAZAR, GALI SATTA RESULT, SATTA KING 2024 SATTA KING 2025, SATTA KING RESULT, SATTA KING UP, SATTA GAME TODAY RESULT, SATTA RESULT CHART, SATTA KING LIVE, DESAWAR SATTA, FARIDABAD SATTA, FARIDABAD RESULT, BLACK SATTA KING', 1, '2025-07-22 18:07:19'),
(3, 'hello this is to test creating marquee text', 1, '2025-07-24 06:00:29'),
(4, 'new marquee', 1, '2025-07-24 06:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_charts`
--

CREATE TABLE `monthly_charts` (
  `chart_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_charts`
--

INSERT INTO `monthly_charts` (`chart_id`, `year`, `month`, `created_at`) VALUES
(1, 2025, 7, '2025-07-22 18:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `setting_id` int(11) NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `site_slogan` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `copyright_text` text DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `favicon_path` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_token_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `refresh_token`, `refresh_token_expiry`) VALUES
(1, 'admin', '123', 'fcfcac8ff8cbaf7a71c394e4b2d1b389d566d8ed3b19c4f27841e5cc4180cb55', '2025-07-28 07:58:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chart_results`
--
ALTER TABLE `chart_results`
  ADD PRIMARY KEY (`chart_result_id`),
  ADD UNIQUE KEY `chart_id` (`chart_id`,`game_id`,`result_date`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `content_blocks`
--
ALTER TABLE `content_blocks`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `game_results`
--
ALTER TABLE `game_results`
  ADD PRIMARY KEY (`result_id`),
  ADD UNIQUE KEY `game_id` (`game_id`,`result_date`);

--
-- Indexes for table `marquee_text`
--
ALTER TABLE `marquee_text`
  ADD PRIMARY KEY (`marquee_id`);

--
-- Indexes for table `monthly_charts`
--
ALTER TABLE `monthly_charts`
  ADD PRIMARY KEY (`chart_id`),
  ADD UNIQUE KEY `year` (`year`,`month`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chart_results`
--
ALTER TABLE `chart_results`
  MODIFY `chart_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `content_blocks`
--
ALTER TABLE `content_blocks`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `game_results`
--
ALTER TABLE `game_results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marquee_text`
--
ALTER TABLE `marquee_text`
  MODIFY `marquee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `monthly_charts`
--
ALTER TABLE `monthly_charts`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chart_results`
--
ALTER TABLE `chart_results`
  ADD CONSTRAINT `chart_results_ibfk_1` FOREIGN KEY (`chart_id`) REFERENCES `monthly_charts` (`chart_id`),
  ADD CONSTRAINT `chart_results_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `game_results`
--
ALTER TABLE `game_results`
  ADD CONSTRAINT `game_results_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
