-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-24 05:32:01
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `bark_bijou`
--

-- --------------------------------------------------------

--
-- 資料表結構 `gender`
--

CREATE TABLE `gender` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- 資料表結構 `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL,
  `gender_id` int(2) UNSIGNED NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `level_id` tinyint(2) NOT NULL,
  `user_image_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `valid` tinyint(2) NOT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `gender_id`, `account`, `password`, `email`, `phone`, `adress`, `level_id`, `user_image_id`, `created_at`, `valid`, `birth_date`) VALUES
(1, 'Jimmy', 0, 'Jimmy', 'e10adc3949ba59abbe56e057f20f88', 'daha71205@gmail.com', '0975026267', '', 0, 0, '2025-02-21 14:37:09', 1, NULL),
(2, 'Bill', 0, 'Bill', 'e10adc3949ba59abbe56e057f20f88', 'bill@gmail.com', '0936314036', '', 0, 0, '2025-02-21 14:39:04', 1, NULL),
(3, 'eson', 0, 'eson', 'e10adc3949ba59abbe56e057f20f88', 'eson@gmail.com', '0951791210', '', 0, 0, '2025-02-21 15:43:04', 1, NULL),
(4, 'albe', 0, 'albe', 'e10adc3949ba59abbe56e057f20f88', 'albe@gmail.com', '0995112965', '', 0, 0, '2025-02-21 15:46:50', 1, NULL),
(5, 'Laby', 0, 'laby', 'e10adc3949ba59abbe56e057f20f88', 'laby@gmail.com', '0912345678', '', 0, 0, '2025-02-21 13:16:04', 1, NULL),
(6, 'Sophia', 0, 'sophia', '827ccb0eea8a706c4c34a16891f84e', 'sophia@gmail.com', '0936314036', '', 0, 0, '2025-02-21 14:05:05', 1, NULL),
(7, 'John', 0, 'john', '827ccb0eea8a706c4c34a16891f84e', 'john@gmail.com', '0900000000', '', 0, 0, '2025-02-21 14:19:57', 1, NULL),
(8, 'Isabella', 0, 'isabella', '827ccb0eea8a706c4c34a16891f84e', 'isabella@gmail.com', '0975028899', '', 0, 0, '2025-02-21 14:29:02', 1, NULL),
(9, 'Emma', 0, 'emma', '827ccb0eea8a706c4c34a16891f84e', 'emma@outlook.com', '0975080809', '', 0, 0, '2025-02-21 14:30:25', 1, NULL),
(10, 'Robert', 0, 'robert', '827ccb0eea8a706c4c34a16891f84e', 'robert@outlook.com', '0978308096', '', 0, 0, '2025-02-21 14:31:20', 1, NULL),
(11, '', 0, 'olivia', '827ccb0eea8a706c4c34a16891f84e', 'olivia@outlook.com', '', '', 0, 0, '2025-02-21 14:32:10', 1, NULL),
(12, '', 0, 'william', '827ccb0eea8a706c4c34a16891f84e', 'william@outlook.com', '', '', 0, 0, '2025-02-21 14:32:30', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `user_collections`
--

CREATE TABLE `user_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `motel_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `valid` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_image`
--

CREATE TABLE `user_image` (
  `id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_order_list`
--

CREATE TABLE `user_order_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user-id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_id` (`gender_id`) USING BTREE;

--
-- 資料表索引 `user_collections`
--
ALTER TABLE `user_collections`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_order_list`
--
ALTER TABLE `user_order_list`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_collections`
--
ALTER TABLE `user_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order_list`
--
ALTER TABLE `user_order_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
