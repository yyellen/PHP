-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-03-02 13:46:36
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `account` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phones` varchar(50) NOT NULL,
  `create_time` datetime NOT NULL,
  `valid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `account`, `password`, `gender`, `phones`, `create_time`, `valid`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'other', '0900000000, 0911111111', '2022-03-01 16:37:04', 1),
(2, 'Joy', '827ccb0eea8a706c4c34a16891f84e7b', 'female', '0922222222, 0966666666', '2022-03-01 16:37:22', 1),
(5, 'Jay', 'b0baee9d279d34fa1dfd71aadb908c3f', 'male', '0933333333', '2022-03-02 10:49:40', 1),
(7, 'Joe', '827ccb0eea8a706c4c34a16891f84e7b', 'other', '0955555555, 0955555555, 0955555555', '2022-03-02 10:56:34', 0),
(9, 'Jade', '827ccb0eea8a706c4c34a16891f84e7b', 'female', '0955555555, 0955555555, 0955555555', '2022-03-02 11:19:07', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
