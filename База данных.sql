-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 19 2018 г., 10:01
-- Версия сервера: 5.5.60-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bet` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cell_1` int(11) NOT NULL,
  `cell_2` int(11) NOT NULL,
  `cell_3` int(11) NOT NULL,
  `cell_4` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `win` int(11) DEFAULT NULL,
  `may_win` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `promocodes`
--

CREATE TABLE IF NOT EXISTS `promocodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(121) CHARACTER SET utf8 NOT NULL,
  `user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chance` int(11) NOT NULL,
  `yt_chance` int(11) NOT NULL,
  `promo_sum` int(11) NOT NULL,
  `promo_percent` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL,
  `fk_secret1` varchar(8) NOT NULL,
  `fk_secret2` varchar(8) NOT NULL,
  `min_bet` int(11) NOT NULL,
  `min_with` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `chance`, `yt_chance`, `promo_sum`, `promo_percent`, `fk_id`, `fk_secret1`, `fk_secret2`, `min_bet`, `min_with`, `updated_at`, `created_at`) VALUES
(1, 50, 80, 50, 5, 43709, 'zwsruw2n', 'f352i3rq', 20, 40, '2017-11-01 04:59:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL,
  `login` varchar(256) NOT NULL,
  `money` int(255) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `is_yt` int(11) NOT NULL,
  `ref_code` varchar(256) NOT NULL,
  `ref_use` varchar(256) DEFAULT NULL,
  `open_box` int(255) NOT NULL,
  `win` int(255) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  `login2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bonus_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '2016-11-08 19:43:23',
  `deposit` int(11) NOT NULL DEFAULT '0',
  `nick` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `ban_support` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '2016-11-08 21:32:40',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `withdraw`
--

CREATE TABLE IF NOT EXISTS `withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `system` varchar(256) CHARACTER SET utf8 NOT NULL,
  `wallet` varchar(15) CHARACTER SET utf8 NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
