-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 14 2020 г., 11:50
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rsht1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(355, 'action_scheduler/migration_hook', 'complete', '2020-05-14 07:25:05', '2020-05-14 07:25:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1589441105;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1589441105;}', 1, 1, '2020-05-14 07:53:21', '2020-05-14 10:53:21', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 355, 'action created', '2020-05-14 07:24:05', '2020-05-14 07:24:05'),
(2, 355, 'action started via WP Cron', '2020-05-14 07:53:21', '2020-05-14 07:53:21'),
(3, 355, 'action complete via WP Cron', '2020-05-14 07:53:21', '2020-05-14 07:53:21');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://rsht.local', 'yes'),
(2, 'home', 'http://rsht.local', 'yes'),
(3, 'blogname', 'Rekidea', 'yes'),
(4, 'blogdescription', 'Рекламное производство', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'swd.admin@mail.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"wpsisac_slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?wpsisac_slider-category=$matches[1]&feed=$matches[2]\";s:59:\"wpsisac_slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?wpsisac_slider-category=$matches[1]&feed=$matches[2]\";s:40:\"wpsisac_slider-category/([^/]+)/embed/?$\";s:56:\"index.php?wpsisac_slider-category=$matches[1]&embed=true\";s:52:\"wpsisac_slider-category/([^/]+)/page/?([0-9]{1,})/?$\";s:63:\"index.php?wpsisac_slider-category=$matches[1]&paged=$matches[2]\";s:34:\"wpsisac_slider-category/([^/]+)/?$\";s:45:\"index.php?wpsisac_slider-category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:35:\"image-watermark/image-watermark.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:59:\"C:\\OSPanel\\domains\\rek/wp-content/themes/rekidea/header.php\";i:1;s:62:\"C:\\OSPanel\\domains\\rek/wp-content/themes/rekidea/functions.php\";i:3;s:58:\"C:\\OSPanel\\domains\\rek/wp-content/themes/rekidea/style.css\";i:4;s:116:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/includes/wpsisac-slider-custom-post.php\";i:5;s:112:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/wpos-analytics/templates/offers.php\";}', 'no'),
(40, 'template', 'rekidea', 'yes'),
(41, 'stylesheet', 'rekidea', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1589700073', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:16:{i:1589446193;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1589446472;a:1:{s:30:\"wp_1_wc_regenerate_images_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:39:\"wp_1_wc_regenerate_images_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1589448019;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589448240;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589448261;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589448290;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1589451834;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589462634;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589476818;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589476819;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589476829;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589476831;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589490000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589527444;a:3:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590737094;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580187139;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(144, 'current_theme', '', 'yes'),
(145, 'theme_mods_rekidea', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:3:\"top\";i:6;s:10:\"top-mobile\";i:7;s:12:\"price-mobile\";i:9;s:5:\"price\";i:10;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589446171;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(192, 'recently_activated', 'a:0:{}', 'yes'),
(197, 'acf_version', '5.8.7', 'yes'),
(200, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1580143465;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(205, 'cptui_new_install', 'false', 'yes'),
(207, 'cptui_post_types', 'a:0:{}', 'yes'),
(231, 'wpos_anylc_redirect', '', 'yes'),
(232, 'wpos_anylc_site_uid', '08a997ccae2bcb49e1b4a2861312ed27', 'yes'),
(233, 'wpos_anylc_pdt_25', 'a:1:{s:6:\"status\";i:1;}', 'yes'),
(256, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580187505;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(294, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(309, 'db_upgraded', '', 'yes'),
(329, 'new_admin_email', 'swd.admin@mail.ru', 'yes'),
(426, 'image_watermark_options', 'a:5:{s:15:\"watermark_image\";a:17:{s:10:\"plugin_off\";i:0;s:19:\"manual_watermarking\";b:1;s:9:\"extension\";s:0:\"\";s:15:\"frontend_active\";b:0;s:19:\"deactivation_delete\";b:0;s:8:\"position\";s:12:\"bottom_right\";s:11:\"offset_unit\";s:6:\"pixels\";s:12:\"offset_width\";i:0;s:13:\"offset_height\";i:0;s:3:\"url\";i:187;s:19:\"watermark_size_type\";i:0;s:14:\"absolute_width\";i:0;s:15:\"absolute_height\";i:0;s:5:\"width\";i:80;s:11:\"transparent\";i:50;s:7:\"quality\";i:90;s:11:\"jpeg_format\";s:8:\"baseline\";}s:12:\"watermark_on\";a:7:{s:9:\"1536x1536\";i:1;s:9:\"2048x2048\";i:1;s:4:\"full\";i:1;s:5:\"large\";i:1;s:6:\"medium\";i:1;s:12:\"medium_large\";i:1;s:9:\"thumbnail\";i:1;}s:16:\"watermark_cpt_on\";a:1:{i:0;s:10:\"everywhere\";}s:16:\"image_protection\";a:3:{s:10:\"rightclick\";i:0;s:11:\"draganddrop\";i:0;s:9:\"forlogged\";i:0;}s:6:\"backup\";a:2:{s:12:\"backup_image\";b:1;s:14:\"backup_quality\";i:90;}}', 'no'),
(427, 'image_watermark_version', '1.6.6', 'no'),
(458, 'category_children', 'a:0:{}', 'yes'),
(617, 'dismissed_update_core', 'a:1:{s:11:\"5.3.2|ru_RU\";b:1;}', 'no'),
(804, 'yandex-metrika', 'a:1:{s:12:\"counter-code\";s:8:\"57586672\";}', 'yes'),
(1373, 'wpsisac_slider-category_children', 'a:0:{}', 'yes'),
(1416, 'can_compress_scripts', '1', 'no'),
(1492, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589441027;s:7:\"checked\";a:1:{s:7:\"rekidea\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(2570, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.3\";s:7:\"version\";s:5:\"5.3.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1589441024;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(2572, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"swd.admin@mail.ru\";s:7:\"version\";s:5:\"5.3.3\";s:9:\"timestamp\";i:1588225641;}', 'no'),
(2974, '_site_transient_timeout_browser_d89a5df993c1338c5235193f56aa2992', '1590045676', 'no'),
(2975, '_site_transient_browser_d89a5df993c1338c5235193f56aa2992', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"76.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2976, '_site_transient_timeout_php_check_c10b24bcda05543594ded94839f19c88', '1590045678', 'no'),
(2977, '_site_transient_php_check_c10b24bcda05543594ded94839f19c88', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2978, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1589484082', 'no'),
(2979, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:12:\"WP Moscow 13\";s:3:\"url\";s:57:\"https://www.meetup.com/wordpress-moscow/events/270407082/\";s:6:\"meetup\";s:16:\"WordPress Moscow\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/wordpress-moscow/\";s:4:\"date\";s:19:\"2020-05-30 12:00:00\";s:8:\"end_date\";s:19:\"2020-05-30 15:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"RU\";s:8:\"latitude\";d:55.75;s:9:\"longitude\";d:37.619998931885;}}}}', 'no'),
(2980, '_transient_timeout_plugin_slugs', '1589527297', 'no'),
(2981, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:35:\"image-watermark/image-watermark.php\";i:5;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";i:6;s:33:\"yandex-metrika/yandex-metrika.php\";}', 'no'),
(2982, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1589451741', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2983, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4689;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4093;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2666;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2551;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1960;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1805;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1788;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1483;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1471;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1471;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1448;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1424;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1416;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1301;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1189;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1185;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1119;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1118;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1089;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:988;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:877;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:874;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:872;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:861;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:791;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:773;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:766;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:765;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:755;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:744;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:718;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:716;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:709;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:699;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:686;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:659;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:652;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:650;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:644;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:640;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:627;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:626;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:584;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:583;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:578;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:573;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:570;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:566;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:553;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:547;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:546;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:540;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:535;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:534;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:529;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:523;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:512;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:506;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:502;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:499;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:498;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:490;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:486;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:475;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:473;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:469;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:437;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:435;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:427;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:426;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:422;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:406;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:405;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:396;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:395;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:394;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:385;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:384;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:373;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:371;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:369;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:362;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:357;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:357;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:354;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:346;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:344;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:343;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:338;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:337;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:335;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:332;}}', 'no'),
(2987, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1589441031;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.3\";s:35:\"image-watermark/image-watermark.php\";s:5:\"1.6.6\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.1.0\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:5:\"1.9.1\";s:33:\"yandex-metrika/yandex-metrika.php\";s:5:\"0.8.4\";}s:8:\"response\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.0\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:48:\"w.org/plugins/wp-slick-slider-and-image-carousel\";s:4:\"slug\";s:34:\"wp-slick-slider-and-image-carousel\";s:6:\"plugin\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/wp-slick-slider-and-image-carousel/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/wp-slick-slider-and-image-carousel.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2020-03-17 21:01:13\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.1.0\";s:7:\"updated\";s:19:\"2020-05-07 08:54:09\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.1.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"yandex-metrika\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"0.8.4\";s:7:\"updated\";s:19:\"2015-10-12 18:56:42\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/yandex-metrika/0.8.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:35:\"image-watermark/image-watermark.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/image-watermark\";s:4:\"slug\";s:15:\"image-watermark\";s:6:\"plugin\";s:35:\"image-watermark/image-watermark.php\";s:11:\"new_version\";s:5:\"1.6.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/image-watermark/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/image-watermark.1.6.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/image-watermark/assets/icon-256x256.png?rev=1018443\";s:2:\"1x\";s:68:\"https://ps.w.org/image-watermark/assets/icon-128x128.png?rev=1018443\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/image-watermark/assets/banner-772x250.png?rev=692625\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.1.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"yandex-metrika/yandex-metrika.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/yandex-metrika\";s:4:\"slug\";s:14:\"yandex-metrika\";s:6:\"plugin\";s:33:\"yandex-metrika/yandex-metrika.php\";s:11:\"new_version\";s:5:\"0.8.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/yandex-metrika/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/yandex-metrika.0.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/yandex-metrika/assets/icon-256x256.png?rev=981164\";s:2:\"1x\";s:66:\"https://ps.w.org/yandex-metrika/assets/icon-128x128.png?rev=981164\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/yandex-metrika/assets/banner-772x250.png?rev=723813\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2988, 'action_scheduler_hybrid_store_demarkation', '354', 'yes'),
(2989, 'schema-ActionScheduler_StoreSchema', '3.0.1589441033', 'yes'),
(2990, 'schema-ActionScheduler_LoggerSchema', '2.0.1589441033', 'yes'),
(2993, 'woocommerce_store_address', 'adresss', 'yes'),
(2994, 'woocommerce_store_address_2', '', 'yes'),
(2995, 'woocommerce_store_city', 'Moscow', 'yes'),
(2996, 'woocommerce_default_country', 'RU', 'yes'),
(2997, 'woocommerce_store_postcode', '000000', 'yes'),
(2998, 'woocommerce_allowed_countries', 'all', 'yes'),
(2999, 'woocommerce_all_except_countries', '', 'yes'),
(3000, 'woocommerce_specific_allowed_countries', '', 'yes'),
(3001, 'woocommerce_ship_to_countries', '', 'yes'),
(3002, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(3003, 'woocommerce_default_customer_address', 'base', 'yes'),
(3004, 'woocommerce_calc_taxes', 'no', 'yes'),
(3005, 'woocommerce_enable_coupons', 'yes', 'yes'),
(3006, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(3007, 'woocommerce_currency', 'RUB', 'yes'),
(3008, 'woocommerce_currency_pos', 'right', 'yes'),
(3009, 'woocommerce_price_thousand_sep', '', 'yes'),
(3010, 'woocommerce_price_decimal_sep', ',', 'yes'),
(3011, 'woocommerce_price_num_decimals', '2', 'yes'),
(3012, 'woocommerce_shop_page_id', '362', 'yes'),
(3013, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(3014, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(3015, 'woocommerce_placeholder_image', '354', 'yes'),
(3016, 'woocommerce_weight_unit', 'kg', 'yes'),
(3017, 'woocommerce_dimension_unit', 'cm', 'yes'),
(3018, 'woocommerce_enable_reviews', 'yes', 'yes'),
(3019, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(3020, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(3021, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(3022, 'woocommerce_review_rating_required', 'yes', 'no'),
(3023, 'woocommerce_manage_stock', 'yes', 'yes'),
(3024, 'woocommerce_hold_stock_minutes', '60', 'no'),
(3025, 'woocommerce_notify_low_stock', 'yes', 'no'),
(3026, 'woocommerce_notify_no_stock', 'yes', 'no'),
(3027, 'woocommerce_stock_email_recipient', 'swd.admin@mail.ru', 'no'),
(3028, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(3029, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(3030, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(3031, 'woocommerce_stock_format', '', 'yes'),
(3032, 'woocommerce_file_download_method', 'force', 'no'),
(3033, 'woocommerce_downloads_require_login', 'no', 'no'),
(3034, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(3035, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(3036, 'woocommerce_prices_include_tax', 'no', 'yes'),
(3037, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(3038, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(3039, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(3040, 'woocommerce_tax_classes', '', 'yes'),
(3041, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(3042, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(3043, 'woocommerce_price_display_suffix', '', 'yes'),
(3044, 'woocommerce_tax_total_display', 'itemized', 'no'),
(3045, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(3046, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(3047, 'woocommerce_ship_to_destination', 'billing', 'no'),
(3048, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(3049, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(3050, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(3051, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(3052, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(3053, 'woocommerce_registration_generate_username', 'yes', 'no'),
(3054, 'woocommerce_registration_generate_password', 'yes', 'no'),
(3055, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(3056, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(3057, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(3058, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(3059, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(3060, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(3061, 'woocommerce_trash_pending_orders', '', 'no'),
(3062, 'woocommerce_trash_failed_orders', '', 'no'),
(3063, 'woocommerce_trash_cancelled_orders', '', 'no'),
(3064, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(3065, 'woocommerce_email_from_name', 'Rekidea', 'no'),
(3066, 'woocommerce_email_from_address', 'swd.admin@mail.ru', 'no'),
(3067, 'woocommerce_email_header_image', '', 'no'),
(3068, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(3069, 'woocommerce_email_base_color', '#96588a', 'no'),
(3070, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(3071, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(3072, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(3073, 'woocommerce_cart_page_id', '363', 'no'),
(3074, 'woocommerce_checkout_page_id', '364', 'no'),
(3075, 'woocommerce_myaccount_page_id', '365', 'no'),
(3076, 'woocommerce_terms_page_id', '', 'no'),
(3077, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(3078, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(3079, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(3080, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(3081, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(3082, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(3083, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(3084, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(3085, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(3086, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(3087, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(3088, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(3089, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(3090, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(3091, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(3092, 'woocommerce_api_enabled', 'no', 'yes'),
(3093, 'woocommerce_allow_tracking', 'no', 'no'),
(3094, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(3095, 'woocommerce_single_image_width', '600', 'yes'),
(3096, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(3097, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(3098, 'woocommerce_demo_store', 'no', 'no'),
(3099, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(3100, 'current_theme_supports_woocommerce', 'no', 'yes'),
(3101, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(3102, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(3103, 'product_cat_children', 'a:0:{}', 'yes'),
(3104, 'default_product_cat', '25', 'yes'),
(3105, 'woocommerce_admin_notices', 'a:3:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";i:2;s:23:\"regenerating_thumbnails\";}', 'yes'),
(3108, 'woocommerce_version', '4.1.0', 'yes'),
(3109, 'woocommerce_db_version', '4.1.0', 'yes'),
(3110, 'action_scheduler_lock_async-request-runner', '1589446207', 'yes'),
(3111, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"24JFsLqbWaMQ9NZ5S99Fp9iZ0rNJOaPb\";}', 'yes'),
(3112, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(3113, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3114, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3115, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3116, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3117, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3118, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3119, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3120, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3121, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3122, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3123, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3124, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3125, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(3128, 'woocommerce_admin_version', '1.1.1', 'yes'),
(3129, 'woocommerce_admin_install_timestamp', '1589441044', 'yes'),
(3131, '_transient_timeout_as-post-store-dependencies-met', '1589527445', 'no'),
(3132, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(3133, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(3134, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(3135, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(3137, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:11:\"description\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:7:\"rekidea\";s:7:\"plugins\";s:7:\"skipped\";}', 'yes'),
(3141, '_transient_timeout_wc_low_stock_count', '1592034801', 'no'),
(3142, '_transient_wc_low_stock_count', '0', 'no'),
(3143, '_transient_timeout_wc_outofstock_count', '1592034801', 'no'),
(3144, '_transient_wc_outofstock_count', '0', 'no'),
(3145, 'action_scheduler_migration_status', 'complete', 'yes'),
(3146, '_transient_timeout_wc_report_sales_by_date', '1589532474', 'no'),
(3147, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"419551ebf463d42f4b74eb3c0707863d\";a:0:{}s:32:\"b03e8768c1889839fbfb0e0b573768f4\";a:0:{}s:32:\"99f40958ef453393f82b800987ce2f4e\";a:0:{}s:32:\"424e25bf3e747a568f88e3a2b8a2bf8d\";N;s:32:\"2807aa21ffbd03ed35d03adf6edb0d80\";a:0:{}s:32:\"74db93a0f80e604ea32fcf64666178f9\";a:0:{}s:32:\"274bd67807a261211a86fa8761fc0d52\";a:0:{}s:32:\"4bbbac3d3fa611c16e6a29a9bfef42a3\";a:0:{}}', 'no'),
(3148, '_transient_timeout_wc_admin_report', '1589532474', 'no'),
(3149, '_transient_wc_admin_report', 'a:1:{s:32:\"2350c356371082339575d8d8227d2188\";a:0:{}}', 'no'),
(3151, '_transient_woocommerce_reports-transient-version', '1589446111', 'yes'),
(3152, '_transient_timeout_orders-all-statuses', '1590047641', 'no'),
(3153, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1589442841\";s:5:\"value\";a:0:{}}', 'no'),
(3154, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1589446441', 'no'),
(3155, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(3201, '_transient_timeout_wc_onboarding_product_data', '1589532484', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3202, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 14 May 2020 08:48:04 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:4:\"3701\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:27:\"X-WP-Total, X-WP-TotalPages\";s:28:\"access-control-allow-headers\";s:27:\"Authorization, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"arn2 87 176 3196\";s:3:\"age\";s:2:\"87\";s:7:\"x-cache\";s:5:\"grace\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:14571:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:14571:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607}]}\";s:3:\"raw\";s:15138:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Thu, 14 May 2020 08:48:04 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 3701\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages\r\nAccess-Control-Allow-Headers: Authorization, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: arn2 87 176 3196\r\nAge: 87\r\nX-Cache: grace\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Thu, 14 May 2020 08:48:04 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:4:\"3701\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:27:\"X-WP-Total, X-WP-TotalPages\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:27:\"Authorization, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"arn2 87 176 3196\";}s:3:\"age\";a:1:{i:0;s:2:\"87\";}s:7:\"x-cache\";a:1:{i:0;s:5:\"grace\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:81:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search?category=product-type\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3203, '_site_transient_timeout_theme_roots', '1589447885', 'no'),
(3204, '_site_transient_theme_roots', 'a:1:{s:7:\"rekidea\";s:7:\"/themes\";}', 'no'),
(3209, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(3210, 'wp_1_wc_regenerate_images_batch_5cf1de866124bfe4f1b650db7bde780b', 'a:6:{i:43;a:1:{s:13:\"attachment_id\";s:2:\"67\";}i:44;a:1:{s:13:\"attachment_id\";s:2:\"62\";}i:45;a:1:{s:13:\"attachment_id\";s:2:\"53\";}i:46;a:1:{s:13:\"attachment_id\";s:2:\"52\";}i:47;a:1:{s:13:\"attachment_id\";s:2:\"49\";}i:48;a:1:{s:13:\"attachment_id\";s:2:\"27\";}}', 'no'),
(3211, '_transient_doing_cron', '1589446173.6719169616699218750000', 'yes'),
(3242, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:8:\"purchase\";}', 'yes'),
(3249, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(3262, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(3267, '_transient_timeout_wc_report_orders_stats_470397c3d88470db9075850d1ab47f1f', '1590050989', 'no'),
(3268, '_transient_wc_report_orders_stats_470397c3d88470db9075850d1ab47f1f', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-20\";s:10:\"date_start\";s:19:\"2020-05-11 02:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-14 11:49:00\";s:12:\"date_end_gmt\";s:19:\"2020-05-14 09:49:00\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3269, '_transient_timeout_wc_report_orders_stats_8db0b4eee250fe445ca1aa0102a440ee', '1590050989', 'no'),
(3270, '_transient_wc_report_orders_stats_8db0b4eee250fe445ca1aa0102a440ee', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-20\";s:10:\"date_start\";s:19:\"2020-05-11 02:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-14 11:49:00\";s:12:\"date_end_gmt\";s:19:\"2020-05-14 09:49:00\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3271, '_transient_timeout_wc_report_orders_stats_69c84d2501da14ededf6137004828fa8', '1590050989', 'no'),
(3272, '_transient_wc_report_orders_stats_69c84d2501da14ededf6137004828fa8', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-05-01\";s:10:\"date_start\";s:19:\"2019-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-05-02\";s:10:\"date_start\";s:19:\"2019-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-01 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-05-03\";s:10:\"date_start\";s:19:\"2019-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-02 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-05-04\";s:10:\"date_start\";s:19:\"2019-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-03 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-05-05\";s:10:\"date_start\";s:19:\"2019-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-04 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-05-06\";s:10:\"date_start\";s:19:\"2019-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-05 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-05-07\";s:10:\"date_start\";s:19:\"2019-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-06 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-05-08\";s:10:\"date_start\";s:19:\"2019-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-07 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-05-09\";s:10:\"date_start\";s:19:\"2019-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-08 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-05-10\";s:10:\"date_start\";s:19:\"2019-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-09 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-05-11\";s:10:\"date_start\";s:19:\"2019-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-10 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-05-12\";s:10:\"date_start\";s:19:\"2019-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-11 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-05-13\";s:10:\"date_start\";s:19:\"2019-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-12 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-05-14\";s:10:\"date_start\";s:19:\"2019-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3275, '_transient_timeout_wc_report_orders_stats_c183ca8e72d4152987a96c3c2aa30363', '1590050989', 'no'),
(3276, '_transient_wc_report_orders_stats_c183ca8e72d4152987a96c3c2aa30363', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-05-01\";s:10:\"date_start\";s:19:\"2020-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-05-02\";s:10:\"date_start\";s:19:\"2020-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-01 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-05-03\";s:10:\"date_start\";s:19:\"2020-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-02 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-05-04\";s:10:\"date_start\";s:19:\"2020-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-03 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-05-05\";s:10:\"date_start\";s:19:\"2020-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-04 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-05-06\";s:10:\"date_start\";s:19:\"2020-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-05 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-05-07\";s:10:\"date_start\";s:19:\"2020-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-06 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-05-08\";s:10:\"date_start\";s:19:\"2020-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-07 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-05-09\";s:10:\"date_start\";s:19:\"2020-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-08 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-05-10\";s:10:\"date_start\";s:19:\"2020-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-09 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-05-11\";s:10:\"date_start\";s:19:\"2020-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-10 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-05-12\";s:10:\"date_start\";s:19:\"2020-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-05-13\";s:10:\"date_start\";s:19:\"2020-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-12 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-05-14\";s:10:\"date_start\";s:19:\"2020-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-13 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3277, '_transient_timeout_wc_report_orders_stats_db728231c93695bb3db1ecd40ceb5863', '1590050989', 'no'),
(3278, '_transient_wc_report_orders_stats_db728231c93695bb3db1ecd40ceb5863', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-20\";s:10:\"date_start\";s:19:\"2019-05-13 02:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3279, '_transient_timeout_wc_report_orders_stats_c3cace48168321cded75fc00caef9aea', '1590050989', 'no'),
(3280, '_transient_wc_report_orders_stats_c3cace48168321cded75fc00caef9aea', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-05-01\";s:10:\"date_start\";s:19:\"2020-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-05-02\";s:10:\"date_start\";s:19:\"2020-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-01 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-05-03\";s:10:\"date_start\";s:19:\"2020-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-02 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-05-04\";s:10:\"date_start\";s:19:\"2020-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-03 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-05-05\";s:10:\"date_start\";s:19:\"2020-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-04 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-05-06\";s:10:\"date_start\";s:19:\"2020-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-05 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-05-07\";s:10:\"date_start\";s:19:\"2020-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-06 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-05-08\";s:10:\"date_start\";s:19:\"2020-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-07 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-05-09\";s:10:\"date_start\";s:19:\"2020-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-08 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-05-10\";s:10:\"date_start\";s:19:\"2020-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-09 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-05-11\";s:10:\"date_start\";s:19:\"2020-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-10 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-05-12\";s:10:\"date_start\";s:19:\"2020-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-05-13\";s:10:\"date_start\";s:19:\"2020-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-12 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-05-14\";s:10:\"date_start\";s:19:\"2020-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-13 22:00:00\";s:8:\"date_end\";s:19:\"2020-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3281, '_transient_timeout_wc_report_orders_stats_244cf1e3c8233b2035de97c042323d7c', '1590050989', 'no'),
(3282, '_transient_wc_report_orders_stats_244cf1e3c8233b2035de97c042323d7c', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-20\";s:10:\"date_start\";s:19:\"2019-05-13 02:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:3;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3283, '_transient_timeout_wc_report_orders_stats_e24da9dc35ceda7f29f2c4a040affac3', '1590050990', 'no'),
(3284, '_transient_wc_report_orders_stats_e24da9dc35ceda7f29f2c4a040affac3', 'a:2:{s:7:\"version\";s:10:\"1589446111\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:14:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-05-01\";s:10:\"date_start\";s:19:\"2019-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-01 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-05-02\";s:10:\"date_start\";s:19:\"2019-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-01 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-02 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-05-03\";s:10:\"date_start\";s:19:\"2019-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-02 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-03 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-05-04\";s:10:\"date_start\";s:19:\"2019-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-03 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-04 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-05-05\";s:10:\"date_start\";s:19:\"2019-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-04 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-05 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-05-06\";s:10:\"date_start\";s:19:\"2019-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-05 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-06 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-05-07\";s:10:\"date_start\";s:19:\"2019-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-06 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-07 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-05-08\";s:10:\"date_start\";s:19:\"2019-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-07 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-08 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-05-09\";s:10:\"date_start\";s:19:\"2019-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-08 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-09 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-05-10\";s:10:\"date_start\";s:19:\"2019-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-09 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-10 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-05-11\";s:10:\"date_start\";s:19:\"2019-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-10 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-11 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-05-12\";s:10:\"date_start\";s:19:\"2019-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-11 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-12 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-05-13\";s:10:\"date_start\";s:19:\"2019-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-12 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-13 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-05-14\";s:10:\"date_start\";s:19:\"2019-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 22:00:00\";s:8:\"date_end\";s:19:\"2019-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-14 21:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:14;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(24, 8, '_form', '<h3>Мы открыты для обратной связи с покупателями, партнерами и соискателями!</h3>\n\n<label> Имя\n    [text* your-name] </label>\n\n<label> Электронная почта\n    [email* your-email] </label>\n\n<label> Телефон\n    [tel tel-729] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n<label> Введите проверочный код\n[captchac captcha-1] [captchar captcha-1]</label>\n\n[submit \"Отправить\"]\n<div class=\"private_term_agree\">\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\n</div>'),
(25, 8, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:47:\"RekIdea. Форма обратной связи\";s:6:\"sender\";s:21:\"Rek <info@rekidea.ru>\";s:9:\"recipient\";s:17:\"rekidea@yandex.ru\";s:4:\"body\";s:126:\"Имя: [your-name] \nEmail: [your-email]\nТелефон: [tel-729]\nТема: [your-subject]\nСообщение: [your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(26, 8, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"Rek \"[your-subject]\"\";s:6:\"sender\";s:25:\"Rek <wordpress@rek.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:100:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rek (http://rek.local)\";s:18:\"additional_headers\";s:27:\"Reply-To: swd.admin@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(27, 8, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:144:\"Спасибо. Ваше сообщение отправлено. Менеджер свяжется с вами в ближайшее время\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(28, 8, '_additional_settings', ''),
(29, 8, '_locale', 'ru_RU'),
(30, 13, '_edit_last', '1'),
(31, 13, '_edit_lock', '1580837991:1'),
(36, 18, '_edit_lock', '1581276387:1'),
(37, 18, '_edit_last', '1'),
(38, 18, 'email', 'info@rekidea.ru'),
(39, 18, '_email', 'field_5e2f072a4555c'),
(40, 18, 'phone_1', '+7 (495) 369-20-79'),
(41, 18, '_phone_1', 'field_5e2f08bab1f49'),
(42, 18, 'phone_2', '+7 (495) 369-20-79'),
(43, 18, '_phone_2', 'field_5e2f0904b1f4a'),
(44, 20, 'email', 'info@rekidea.ru'),
(45, 20, '_email', 'field_5e2f072a4555c'),
(46, 20, 'phone_1', '+7 (495) 369-20-79'),
(47, 20, '_phone_1', 'field_5e2f08bab1f49'),
(48, 20, 'phone_2', '+7 (495) 369-20-79'),
(49, 20, '_phone_2', 'field_5e2f0904b1f4a'),
(54, 21, 'email', 'info@rekidea.ru'),
(55, 21, '_email', 'field_5e2f072a4555c'),
(56, 21, 'phone_1', '+7 (495) 369-20-79'),
(57, 21, '_phone_1', 'field_5e2f08bab1f49'),
(58, 21, 'phone_2', '+7 (495) 369-20-79'),
(59, 21, '_phone_2', 'field_5e2f0904b1f4a'),
(62, 18, 'address', 'ул. Электрозаводская, 21'),
(63, 18, '_address', 'field_5e2f0c96c43f3'),
(64, 24, 'email', 'info@rekidea.ru'),
(65, 24, '_email', 'field_5e2f072a4555c'),
(66, 24, 'phone_1', '+7 (495) 369-20-79'),
(67, 24, '_phone_1', 'field_5e2f08bab1f49'),
(68, 24, 'phone_2', '+7 (495) 369-20-79'),
(69, 24, '_phone_2', 'field_5e2f0904b1f4a'),
(70, 24, 'address', 'ул. Электрозаводская, 21'),
(71, 24, '_address', 'field_5e2f0c96c43f3'),
(72, 27, '_wp_attached_file', '2020/01/top-banner.jpg'),
(73, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1910;s:6:\"height\";i:500;s:4:\"file\";s:22:\"2020/01/top-banner.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"top-banner-300x79.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:79;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"top-banner-1024x268.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"top-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"top-banner-768x201.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"top-banner-1536x402.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 39, '_edit_last', '1'),
(81, 39, '_edit_lock', '1580188299:1'),
(82, 39, 'wpsisac_slide_link', ''),
(83, 39, '_thumbnail_id', '27'),
(84, 40, '_edit_last', '1'),
(85, 40, '_edit_lock', '1580207880:1'),
(86, 40, '_thumbnail_id', '27'),
(87, 40, 'wpsisac_slide_link', ''),
(89, 42, '_edit_last', '1'),
(90, 42, '_edit_lock', '1580836673:1'),
(91, 43, '_edit_lock', '1580211129:1'),
(92, 43, '_edit_last', '1'),
(95, 43, 'link_thumbnail', '49'),
(96, 43, '_link_thumbnail', 'field_5e3019d8daf7d'),
(97, 47, 'link_thumbnail', '46'),
(98, 47, '_link_thumbnail', 'field_5e3019d8daf7d'),
(103, 48, 'link_thumbnail', '46'),
(104, 48, '_link_thumbnail', 'field_5e3019d8daf7d'),
(105, 49, '_wp_attached_file', '2020/01/signs.png'),
(106, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:17:\"2020/01/signs.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"signs-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 50, 'link_thumbnail', '49'),
(110, 50, '_link_thumbnail', 'field_5e3019d8daf7d'),
(111, 51, '_edit_lock', '1580211526:1'),
(112, 52, '_wp_attached_file', '2020/01/format_print.png'),
(113, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:24:\"2020/01/format_print.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"format_print-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 53, '_wp_attached_file', '2020/01/light_panels.png'),
(115, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:24:\"2020/01/light_panels.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"light_panels-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 51, '_edit_last', '1'),
(117, 51, 'link_thumbnail', '53'),
(118, 51, '_link_thumbnail', 'field_5e3019d8daf7d'),
(119, 55, 'link_thumbnail', '53'),
(120, 55, '_link_thumbnail', 'field_5e3019d8daf7d'),
(125, 56, 'link_thumbnail', '53'),
(126, 56, '_link_thumbnail', 'field_5e3019d8daf7d'),
(127, 57, '_edit_lock', '1580211708:1'),
(128, 57, '_edit_last', '1'),
(129, 57, 'link_thumbnail', '52'),
(130, 57, '_link_thumbnail', 'field_5e3019d8daf7d'),
(131, 59, 'link_thumbnail', '52'),
(132, 59, '_link_thumbnail', 'field_5e3019d8daf7d'),
(137, 60, 'link_thumbnail', '52'),
(138, 60, '_link_thumbnail', 'field_5e3019d8daf7d'),
(139, 61, '_edit_lock', '1580211911:1'),
(140, 62, '_wp_attached_file', '2020/01/figures.png'),
(141, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:19:\"2020/01/figures.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"figures-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 61, '_edit_last', '1'),
(143, 61, 'link_thumbnail', '62'),
(144, 61, '_link_thumbnail', 'field_5e3019d8daf7d'),
(145, 64, 'link_thumbnail', '62'),
(146, 64, '_link_thumbnail', 'field_5e3019d8daf7d'),
(151, 65, 'link_thumbnail', '62'),
(152, 65, '_link_thumbnail', 'field_5e3019d8daf7d'),
(153, 66, '_edit_lock', '1580211983:1'),
(154, 67, '_wp_attached_file', '2020/01/stands.png'),
(155, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:18:\"2020/01/stands.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"stands-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 66, '_edit_last', '1'),
(157, 66, 'link_thumbnail', '67'),
(158, 66, '_link_thumbnail', 'field_5e3019d8daf7d'),
(159, 69, 'link_thumbnail', '67'),
(160, 69, '_link_thumbnail', 'field_5e3019d8daf7d'),
(165, 70, 'link_thumbnail', '67'),
(166, 70, '_link_thumbnail', 'field_5e3019d8daf7d'),
(167, 71, '_edit_lock', '1580211985:1'),
(168, 72, '_wp_attached_file', '2020/01/window_dressing.png'),
(169, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:27:\"2020/01/window_dressing.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"window_dressing-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"window_dressing-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 71, '_edit_last', '1'),
(171, 71, 'link_thumbnail', '72'),
(172, 71, '_link_thumbnail', 'field_5e3019d8daf7d'),
(173, 74, 'link_thumbnail', '72'),
(174, 74, '_link_thumbnail', 'field_5e3019d8daf7d'),
(179, 75, 'link_thumbnail', '72'),
(180, 75, '_link_thumbnail', 'field_5e3019d8daf7d'),
(183, 77, 'link_thumbnail', '72'),
(184, 77, '_link_thumbnail', 'field_5e3019d8daf7d'),
(185, 78, '_edit_lock', '1580212061:1'),
(186, 79, '_wp_attached_file', '2020/01/auto_branding.png'),
(187, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:25:\"2020/01/auto_branding.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"auto_branding-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"auto_branding-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 78, '_edit_last', '1'),
(189, 78, 'link_thumbnail', '79'),
(190, 78, '_link_thumbnail', 'field_5e3019d8daf7d'),
(191, 81, 'link_thumbnail', '79'),
(192, 81, '_link_thumbnail', 'field_5e3019d8daf7d'),
(197, 82, 'link_thumbnail', '79'),
(198, 82, '_link_thumbnail', 'field_5e3019d8daf7d'),
(199, 83, '_edit_lock', '1580212592:1'),
(200, 84, '_wp_attached_file', '2020/01/infostands.png'),
(201, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:22:\"2020/01/infostands.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"infostands-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"infostands-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 83, '_edit_last', '1'),
(203, 83, 'link_thumbnail', '84'),
(204, 83, '_link_thumbnail', 'field_5e3019d8daf7d'),
(205, 86, 'link_thumbnail', '84'),
(206, 86, '_link_thumbnail', 'field_5e3019d8daf7d'),
(211, 87, 'link_thumbnail', '84'),
(212, 87, '_link_thumbnail', 'field_5e3019d8daf7d'),
(240, 91, '_menu_item_type', 'custom'),
(241, 91, '_menu_item_menu_item_parent', '0'),
(242, 91, '_menu_item_object_id', '91'),
(243, 91, '_menu_item_object', 'custom'),
(244, 91, '_menu_item_target', ''),
(245, 91, '_menu_item_classes', 'a:2:{i:0;s:4:\"bold\";i:1;s:7:\"w-arrow\";}'),
(246, 91, '_menu_item_xfn', ''),
(247, 91, '_menu_item_url', '#'),
(249, 92, '_edit_last', '1'),
(250, 92, '_edit_lock', '1580835929:1'),
(260, 91, 'класс', ''),
(261, 91, '_класс', 'field_5e32c35acb146'),
(264, 97, '_menu_item_type', 'custom'),
(265, 97, '_menu_item_menu_item_parent', '0'),
(266, 97, '_menu_item_object_id', '97'),
(267, 97, '_menu_item_object', 'custom'),
(268, 97, '_menu_item_target', ''),
(269, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 97, '_menu_item_xfn', ''),
(271, 97, '_menu_item_url', '/404'),
(273, 98, '_menu_item_type', 'custom'),
(274, 98, '_menu_item_menu_item_parent', '0'),
(275, 98, '_menu_item_object_id', '98'),
(276, 98, '_menu_item_object', 'custom'),
(277, 98, '_menu_item_target', ''),
(278, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 98, '_menu_item_xfn', ''),
(280, 98, '_menu_item_url', '/404'),
(291, 100, '_menu_item_type', 'custom'),
(292, 100, '_menu_item_menu_item_parent', '0'),
(293, 100, '_menu_item_object_id', '100'),
(294, 100, '_menu_item_object', 'custom'),
(295, 100, '_menu_item_target', ''),
(296, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 100, '_menu_item_xfn', ''),
(298, 100, '_menu_item_url', '/404'),
(300, 101, '_menu_item_type', 'custom'),
(301, 101, '_menu_item_menu_item_parent', '0'),
(302, 101, '_menu_item_object_id', '101'),
(303, 101, '_menu_item_object', 'custom'),
(304, 101, '_menu_item_target', ''),
(305, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 101, '_menu_item_xfn', ''),
(307, 101, '_menu_item_url', '/404'),
(309, 102, '_menu_item_type', 'custom'),
(310, 102, '_menu_item_menu_item_parent', '0'),
(311, 102, '_menu_item_object_id', '102'),
(312, 102, '_menu_item_object', 'custom'),
(313, 102, '_menu_item_target', ''),
(314, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 102, '_menu_item_xfn', ''),
(316, 102, '_menu_item_url', '/404'),
(327, 104, '_menu_item_type', 'custom'),
(328, 104, '_menu_item_menu_item_parent', '91'),
(329, 104, '_menu_item_object_id', '104'),
(330, 104, '_menu_item_object', 'custom'),
(331, 104, '_menu_item_target', ''),
(332, 104, '_menu_item_classes', 'a:1:{i:0;s:8:\"separate\";}'),
(333, 104, '_menu_item_xfn', ''),
(334, 104, '_menu_item_url', '#'),
(336, 105, '_menu_item_type', 'custom'),
(337, 105, '_menu_item_menu_item_parent', '91'),
(338, 105, '_menu_item_object_id', '105'),
(339, 105, '_menu_item_object', 'custom'),
(340, 105, '_menu_item_target', ''),
(341, 105, '_menu_item_classes', 'a:1:{i:0;s:8:\"separate\";}'),
(342, 105, '_menu_item_xfn', ''),
(343, 105, '_menu_item_url', '#'),
(345, 106, '_menu_item_type', 'custom'),
(346, 106, '_menu_item_menu_item_parent', '91'),
(347, 106, '_menu_item_object_id', '106'),
(348, 106, '_menu_item_object', 'custom'),
(349, 106, '_menu_item_target', ''),
(350, 106, '_menu_item_classes', 'a:1:{i:0;s:8:\"separate\";}'),
(351, 106, '_menu_item_xfn', ''),
(352, 106, '_menu_item_url', '#'),
(354, 107, '_menu_item_type', 'custom'),
(355, 107, '_menu_item_menu_item_parent', '104'),
(356, 107, '_menu_item_object_id', '107'),
(357, 107, '_menu_item_object', 'custom'),
(358, 107, '_menu_item_target', ''),
(359, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 107, '_menu_item_xfn', ''),
(361, 107, '_menu_item_url', '/404'),
(363, 108, '_menu_item_type', 'custom'),
(364, 108, '_menu_item_menu_item_parent', '104'),
(365, 108, '_menu_item_object_id', '108'),
(366, 108, '_menu_item_object', 'custom'),
(367, 108, '_menu_item_target', ''),
(368, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(369, 108, '_menu_item_xfn', ''),
(370, 108, '_menu_item_url', '/404'),
(372, 109, '_menu_item_type', 'custom'),
(373, 109, '_menu_item_menu_item_parent', '104'),
(374, 109, '_menu_item_object_id', '109'),
(375, 109, '_menu_item_object', 'custom'),
(376, 109, '_menu_item_target', ''),
(377, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(378, 109, '_menu_item_xfn', ''),
(379, 109, '_menu_item_url', '/404'),
(381, 110, '_menu_item_type', 'custom'),
(382, 110, '_menu_item_menu_item_parent', '104'),
(383, 110, '_menu_item_object_id', '110'),
(384, 110, '_menu_item_object', 'custom'),
(385, 110, '_menu_item_target', ''),
(386, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 110, '_menu_item_xfn', ''),
(388, 110, '_menu_item_url', '/404'),
(390, 111, '_menu_item_type', 'custom'),
(391, 111, '_menu_item_menu_item_parent', '104'),
(392, 111, '_menu_item_object_id', '111'),
(393, 111, '_menu_item_object', 'custom'),
(394, 111, '_menu_item_target', ''),
(395, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(396, 111, '_menu_item_xfn', ''),
(397, 111, '_menu_item_url', '/404'),
(399, 112, '_menu_item_type', 'custom'),
(400, 112, '_menu_item_menu_item_parent', '104'),
(401, 112, '_menu_item_object_id', '112'),
(402, 112, '_menu_item_object', 'custom'),
(403, 112, '_menu_item_target', ''),
(404, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(405, 112, '_menu_item_xfn', ''),
(406, 112, '_menu_item_url', '/404'),
(408, 113, '_menu_item_type', 'custom'),
(409, 113, '_menu_item_menu_item_parent', '104'),
(410, 113, '_menu_item_object_id', '113'),
(411, 113, '_menu_item_object', 'custom'),
(412, 113, '_menu_item_target', ''),
(413, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(414, 113, '_menu_item_xfn', ''),
(415, 113, '_menu_item_url', '/404'),
(417, 114, '_menu_item_type', 'custom'),
(418, 114, '_menu_item_menu_item_parent', '105'),
(419, 114, '_menu_item_object_id', '114'),
(420, 114, '_menu_item_object', 'custom'),
(421, 114, '_menu_item_target', ''),
(422, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(423, 114, '_menu_item_xfn', ''),
(424, 114, '_menu_item_url', '/404'),
(426, 115, '_menu_item_type', 'custom'),
(427, 115, '_menu_item_menu_item_parent', '105'),
(428, 115, '_menu_item_object_id', '115'),
(429, 115, '_menu_item_object', 'custom'),
(430, 115, '_menu_item_target', ''),
(431, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(432, 115, '_menu_item_xfn', ''),
(433, 115, '_menu_item_url', '/404'),
(435, 116, '_menu_item_type', 'custom'),
(436, 116, '_menu_item_menu_item_parent', '105'),
(437, 116, '_menu_item_object_id', '116'),
(438, 116, '_menu_item_object', 'custom'),
(439, 116, '_menu_item_target', ''),
(440, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(441, 116, '_menu_item_xfn', ''),
(442, 116, '_menu_item_url', '/laser'),
(444, 117, '_menu_item_type', 'custom'),
(445, 117, '_menu_item_menu_item_parent', '105'),
(446, 117, '_menu_item_object_id', '117'),
(447, 117, '_menu_item_object', 'custom'),
(448, 117, '_menu_item_target', ''),
(449, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(450, 117, '_menu_item_xfn', ''),
(451, 117, '_menu_item_url', '/404'),
(453, 118, '_menu_item_type', 'custom'),
(454, 118, '_menu_item_menu_item_parent', '105'),
(455, 118, '_menu_item_object_id', '118'),
(456, 118, '_menu_item_object', 'custom'),
(457, 118, '_menu_item_target', ''),
(458, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(459, 118, '_menu_item_xfn', ''),
(460, 118, '_menu_item_url', '/404'),
(462, 119, '_menu_item_type', 'custom'),
(463, 119, '_menu_item_menu_item_parent', '105'),
(464, 119, '_menu_item_object_id', '119'),
(465, 119, '_menu_item_object', 'custom'),
(466, 119, '_menu_item_target', ''),
(467, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 119, '_menu_item_xfn', ''),
(469, 119, '_menu_item_url', '/404'),
(471, 120, '_menu_item_type', 'custom'),
(472, 120, '_menu_item_menu_item_parent', '106'),
(473, 120, '_menu_item_object_id', '120'),
(474, 120, '_menu_item_object', 'custom'),
(475, 120, '_menu_item_target', ''),
(476, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(477, 120, '_menu_item_xfn', ''),
(478, 120, '_menu_item_url', '/404'),
(480, 121, '_menu_item_type', 'custom'),
(481, 121, '_menu_item_menu_item_parent', '106'),
(482, 121, '_menu_item_object_id', '121'),
(483, 121, '_menu_item_object', 'custom'),
(484, 121, '_menu_item_target', ''),
(485, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(486, 121, '_menu_item_xfn', ''),
(487, 121, '_menu_item_url', '/404'),
(489, 122, '_menu_item_type', 'custom'),
(490, 122, '_menu_item_menu_item_parent', '106'),
(491, 122, '_menu_item_object_id', '122'),
(492, 122, '_menu_item_object', 'custom'),
(493, 122, '_menu_item_target', ''),
(494, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(495, 122, '_menu_item_xfn', ''),
(496, 122, '_menu_item_url', '/404'),
(498, 123, '_menu_item_type', 'custom'),
(499, 123, '_menu_item_menu_item_parent', '106'),
(500, 123, '_menu_item_object_id', '123'),
(501, 123, '_menu_item_object', 'custom'),
(502, 123, '_menu_item_target', ''),
(503, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(504, 123, '_menu_item_xfn', ''),
(505, 123, '_menu_item_url', '/404'),
(507, 124, '_menu_item_type', 'custom'),
(508, 124, '_menu_item_menu_item_parent', '106'),
(509, 124, '_menu_item_object_id', '124'),
(510, 124, '_menu_item_object', 'custom'),
(511, 124, '_menu_item_target', ''),
(512, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(513, 124, '_menu_item_xfn', ''),
(514, 124, '_menu_item_url', '/404'),
(516, 125, '_menu_item_type', 'custom'),
(517, 125, '_menu_item_menu_item_parent', '107'),
(518, 125, '_menu_item_object_id', '125'),
(519, 125, '_menu_item_object', 'custom'),
(520, 125, '_menu_item_target', ''),
(521, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(522, 125, '_menu_item_xfn', ''),
(523, 125, '_menu_item_url', '/404'),
(525, 126, '_menu_item_type', 'custom'),
(526, 126, '_menu_item_menu_item_parent', '107'),
(527, 126, '_menu_item_object_id', '126'),
(528, 126, '_menu_item_object', 'custom'),
(529, 126, '_menu_item_target', ''),
(530, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(531, 126, '_menu_item_xfn', ''),
(532, 126, '_menu_item_url', '/404'),
(534, 127, '_menu_item_type', 'custom'),
(535, 127, '_menu_item_menu_item_parent', '107'),
(536, 127, '_menu_item_object_id', '127'),
(537, 127, '_menu_item_object', 'custom'),
(538, 127, '_menu_item_target', ''),
(539, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(540, 127, '_menu_item_xfn', ''),
(541, 127, '_menu_item_url', '/404'),
(543, 128, '_menu_item_type', 'custom'),
(544, 128, '_menu_item_menu_item_parent', '107'),
(545, 128, '_menu_item_object_id', '128'),
(546, 128, '_menu_item_object', 'custom'),
(547, 128, '_menu_item_target', ''),
(548, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(549, 128, '_menu_item_xfn', ''),
(550, 128, '_menu_item_url', '/404'),
(552, 129, '_menu_item_type', 'custom'),
(553, 129, '_menu_item_menu_item_parent', '114'),
(554, 129, '_menu_item_object_id', '129'),
(555, 129, '_menu_item_object', 'custom'),
(556, 129, '_menu_item_target', ''),
(557, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(558, 129, '_menu_item_xfn', ''),
(559, 129, '_menu_item_url', '/404'),
(561, 130, '_menu_item_type', 'custom'),
(562, 130, '_menu_item_menu_item_parent', '114'),
(563, 130, '_menu_item_object_id', '130'),
(564, 130, '_menu_item_object', 'custom'),
(565, 130, '_menu_item_target', ''),
(566, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(567, 130, '_menu_item_xfn', ''),
(568, 130, '_menu_item_url', '/404'),
(570, 131, '_menu_item_type', 'custom'),
(571, 131, '_menu_item_menu_item_parent', '114'),
(572, 131, '_menu_item_object_id', '131'),
(573, 131, '_menu_item_object', 'custom'),
(574, 131, '_menu_item_target', ''),
(575, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(576, 131, '_menu_item_xfn', ''),
(577, 131, '_menu_item_url', '/404'),
(579, 132, '_menu_item_type', 'custom'),
(580, 132, '_menu_item_menu_item_parent', '115'),
(581, 132, '_menu_item_object_id', '132'),
(582, 132, '_menu_item_object', 'custom'),
(583, 132, '_menu_item_target', ''),
(584, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(585, 132, '_menu_item_xfn', ''),
(586, 132, '_menu_item_url', '/404'),
(588, 133, '_menu_item_type', 'custom'),
(589, 133, '_menu_item_menu_item_parent', '115'),
(590, 133, '_menu_item_object_id', '133'),
(591, 133, '_menu_item_object', 'custom'),
(592, 133, '_menu_item_target', ''),
(593, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(594, 133, '_menu_item_xfn', ''),
(595, 133, '_menu_item_url', '/404'),
(597, 134, '_menu_item_type', 'custom'),
(598, 134, '_menu_item_menu_item_parent', '115'),
(599, 134, '_menu_item_object_id', '134'),
(600, 134, '_menu_item_object', 'custom'),
(601, 134, '_menu_item_target', ''),
(602, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(603, 134, '_menu_item_xfn', ''),
(604, 134, '_menu_item_url', '/404'),
(606, 135, '_menu_item_type', 'custom'),
(607, 135, '_menu_item_menu_item_parent', '115'),
(608, 135, '_menu_item_object_id', '135'),
(609, 135, '_menu_item_object', 'custom'),
(610, 135, '_menu_item_target', ''),
(611, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(612, 135, '_menu_item_xfn', ''),
(613, 135, '_menu_item_url', '/404'),
(615, 136, '_menu_item_type', 'custom'),
(616, 136, '_menu_item_menu_item_parent', '120'),
(617, 136, '_menu_item_object_id', '136'),
(618, 136, '_menu_item_object', 'custom'),
(619, 136, '_menu_item_target', ''),
(620, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(621, 136, '_menu_item_xfn', ''),
(622, 136, '_menu_item_url', '/404'),
(624, 137, '_menu_item_type', 'custom'),
(625, 137, '_menu_item_menu_item_parent', '120'),
(626, 137, '_menu_item_object_id', '137'),
(627, 137, '_menu_item_object', 'custom'),
(628, 137, '_menu_item_target', ''),
(629, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(630, 137, '_menu_item_xfn', ''),
(631, 137, '_menu_item_url', '/404'),
(633, 138, '_menu_item_type', 'custom'),
(634, 138, '_menu_item_menu_item_parent', '120'),
(635, 138, '_menu_item_object_id', '138'),
(636, 138, '_menu_item_object', 'custom'),
(637, 138, '_menu_item_target', ''),
(638, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(639, 138, '_menu_item_xfn', ''),
(640, 138, '_menu_item_url', '/404'),
(642, 139, '_menu_item_type', 'custom'),
(643, 139, '_menu_item_menu_item_parent', '121'),
(644, 139, '_menu_item_object_id', '139'),
(645, 139, '_menu_item_object', 'custom'),
(646, 139, '_menu_item_target', ''),
(647, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(648, 139, '_menu_item_xfn', ''),
(649, 139, '_menu_item_url', '/404'),
(651, 140, '_menu_item_type', 'custom'),
(652, 140, '_menu_item_menu_item_parent', '121'),
(653, 140, '_menu_item_object_id', '140'),
(654, 140, '_menu_item_object', 'custom'),
(655, 140, '_menu_item_target', ''),
(656, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(657, 140, '_menu_item_xfn', ''),
(658, 140, '_menu_item_url', '/404'),
(660, 141, '_menu_item_type', 'custom'),
(661, 141, '_menu_item_menu_item_parent', '121'),
(662, 141, '_menu_item_object_id', '141'),
(663, 141, '_menu_item_object', 'custom'),
(664, 141, '_menu_item_target', ''),
(665, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(666, 141, '_menu_item_xfn', ''),
(667, 141, '_menu_item_url', '/404'),
(669, 142, '_menu_item_type', 'custom'),
(670, 142, '_menu_item_menu_item_parent', '122'),
(671, 142, '_menu_item_object_id', '142'),
(672, 142, '_menu_item_object', 'custom'),
(673, 142, '_menu_item_target', ''),
(674, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 142, '_menu_item_xfn', ''),
(676, 142, '_menu_item_url', '/404'),
(678, 143, '_menu_item_type', 'custom'),
(679, 143, '_menu_item_menu_item_parent', '122'),
(680, 143, '_menu_item_object_id', '143'),
(681, 143, '_menu_item_object', 'custom'),
(682, 143, '_menu_item_target', ''),
(683, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(684, 143, '_menu_item_xfn', ''),
(685, 143, '_menu_item_url', '/404'),
(687, 144, '_menu_item_type', 'custom'),
(688, 144, '_menu_item_menu_item_parent', '0'),
(689, 144, '_menu_item_object_id', '144'),
(690, 144, '_menu_item_object', 'custom'),
(691, 144, '_menu_item_target', ''),
(692, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 144, '_menu_item_xfn', ''),
(694, 144, '_menu_item_url', '/404'),
(696, 145, '_menu_item_type', 'custom'),
(697, 145, '_menu_item_menu_item_parent', '0'),
(698, 145, '_menu_item_object_id', '145'),
(699, 145, '_menu_item_object', 'custom'),
(700, 145, '_menu_item_target', ''),
(701, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 145, '_menu_item_xfn', ''),
(703, 145, '_menu_item_url', '/404'),
(705, 146, '_menu_item_type', 'custom'),
(706, 146, '_menu_item_menu_item_parent', '0'),
(707, 146, '_menu_item_object_id', '146'),
(708, 146, '_menu_item_object', 'custom'),
(709, 146, '_menu_item_target', ''),
(710, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 146, '_menu_item_xfn', ''),
(712, 146, '_menu_item_url', '/404'),
(714, 147, '_menu_item_type', 'custom'),
(715, 147, '_menu_item_menu_item_parent', '0'),
(716, 147, '_menu_item_object_id', '147'),
(717, 147, '_menu_item_object', 'custom'),
(718, 147, '_menu_item_target', ''),
(719, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 147, '_menu_item_xfn', ''),
(721, 147, '_menu_item_url', '/404'),
(723, 148, '_menu_item_type', 'custom'),
(724, 148, '_menu_item_menu_item_parent', '0'),
(725, 148, '_menu_item_object_id', '148'),
(726, 148, '_menu_item_object', 'custom'),
(727, 148, '_menu_item_target', ''),
(728, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 148, '_menu_item_xfn', ''),
(730, 148, '_menu_item_url', '/404'),
(732, 149, '_menu_item_type', 'custom'),
(733, 149, '_menu_item_menu_item_parent', '0'),
(734, 149, '_menu_item_object_id', '149'),
(735, 149, '_menu_item_object', 'custom'),
(736, 149, '_menu_item_target', ''),
(737, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 149, '_menu_item_xfn', ''),
(739, 149, '_menu_item_url', '/404'),
(741, 150, '_menu_item_type', 'custom'),
(742, 150, '_menu_item_menu_item_parent', '0'),
(743, 150, '_menu_item_object_id', '150'),
(744, 150, '_menu_item_object', 'custom'),
(745, 150, '_menu_item_target', ''),
(746, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 150, '_menu_item_xfn', ''),
(748, 150, '_menu_item_url', '/404'),
(750, 151, '_menu_item_type', 'custom'),
(751, 151, '_menu_item_menu_item_parent', '0'),
(752, 151, '_menu_item_object_id', '151'),
(753, 151, '_menu_item_object', 'custom'),
(754, 151, '_menu_item_target', ''),
(755, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 151, '_menu_item_xfn', ''),
(757, 151, '_menu_item_url', '/404'),
(759, 152, '_menu_item_type', 'custom'),
(760, 152, '_menu_item_menu_item_parent', '0'),
(761, 152, '_menu_item_object_id', '152'),
(762, 152, '_menu_item_object', 'custom'),
(763, 152, '_menu_item_target', ''),
(764, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 152, '_menu_item_xfn', ''),
(766, 152, '_menu_item_url', '/404'),
(768, 153, '_menu_item_type', 'custom'),
(769, 153, '_menu_item_menu_item_parent', '0'),
(770, 153, '_menu_item_object_id', '153'),
(771, 153, '_menu_item_object', 'custom'),
(772, 153, '_menu_item_target', ''),
(773, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(774, 153, '_menu_item_xfn', ''),
(775, 153, '_menu_item_url', '/404'),
(777, 154, '_menu_item_type', 'custom'),
(778, 154, '_menu_item_menu_item_parent', '0'),
(779, 154, '_menu_item_object_id', '154'),
(780, 154, '_menu_item_object', 'custom'),
(781, 154, '_menu_item_target', ''),
(782, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 154, '_menu_item_xfn', ''),
(784, 154, '_menu_item_url', '/404'),
(786, 155, '_menu_item_type', 'custom'),
(787, 155, '_menu_item_menu_item_parent', '0'),
(788, 155, '_menu_item_object_id', '155'),
(789, 155, '_menu_item_object', 'custom'),
(790, 155, '_menu_item_target', ''),
(791, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(792, 155, '_menu_item_xfn', ''),
(793, 155, '_menu_item_url', '/laser'),
(795, 156, '_menu_item_type', 'custom'),
(796, 156, '_menu_item_menu_item_parent', '0'),
(797, 156, '_menu_item_object_id', '156'),
(798, 156, '_menu_item_object', 'custom'),
(799, 156, '_menu_item_target', ''),
(800, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(801, 156, '_menu_item_xfn', ''),
(802, 156, '_menu_item_url', '/404'),
(804, 157, '_menu_item_type', 'custom'),
(805, 157, '_menu_item_menu_item_parent', '0'),
(806, 157, '_menu_item_object_id', '157'),
(807, 157, '_menu_item_object', 'custom'),
(808, 157, '_menu_item_target', ''),
(809, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(810, 157, '_menu_item_xfn', ''),
(811, 157, '_menu_item_url', '/404'),
(813, 158, '_menu_item_type', 'custom'),
(814, 158, '_menu_item_menu_item_parent', '0'),
(815, 158, '_menu_item_object_id', '158'),
(816, 158, '_menu_item_object', 'custom'),
(817, 158, '_menu_item_target', ''),
(818, 158, '_menu_item_classes', 'a:1:{i:0;s:4:\"dark\";}'),
(819, 158, '_menu_item_xfn', ''),
(820, 158, '_menu_item_url', '/404'),
(831, 160, '_menu_item_type', 'custom'),
(832, 160, '_menu_item_menu_item_parent', '0'),
(833, 160, '_menu_item_object_id', '160'),
(834, 160, '_menu_item_object', 'custom'),
(835, 160, '_menu_item_target', ''),
(836, 160, '_menu_item_classes', 'a:1:{i:0;s:4:\"dark\";}'),
(837, 160, '_menu_item_xfn', ''),
(838, 160, '_menu_item_url', '/404'),
(840, 161, '_menu_item_type', 'custom'),
(841, 161, '_menu_item_menu_item_parent', '0'),
(842, 161, '_menu_item_object_id', '161'),
(843, 161, '_menu_item_object', 'custom'),
(844, 161, '_menu_item_target', ''),
(845, 161, '_menu_item_classes', 'a:1:{i:0;s:4:\"dark\";}'),
(846, 161, '_menu_item_xfn', ''),
(847, 161, '_menu_item_url', '/404'),
(849, 162, '_menu_item_type', 'custom'),
(850, 162, '_menu_item_menu_item_parent', '0'),
(851, 162, '_menu_item_object_id', '162'),
(852, 162, '_menu_item_object', 'custom'),
(853, 162, '_menu_item_target', ''),
(854, 162, '_menu_item_classes', 'a:1:{i:0;s:4:\"dark\";}'),
(855, 162, '_menu_item_xfn', ''),
(856, 162, '_menu_item_url', '/404'),
(866, 167, '_wp_attached_file', '2020/02/azimut.png'),
(867, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2020/02/azimut.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"azimut-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"azimut-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(868, 168, '_wp_attached_file', '2020/02/botsadmgu.png'),
(869, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1640;s:6:\"height\";i:1754;s:4:\"file\";s:21:\"2020/02/botsadmgu.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"botsadmgu-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"botsadmgu-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"botsadmgu-600x642.png\";s:5:\"width\";i:600;s:6:\"height\";i:642;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"botsadmgu-281x300.png\";s:5:\"width\";i:281;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"botsadmgu-957x1024.png\";s:5:\"width\";i:957;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"botsadmgu-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"botsadmgu-768x821.png\";s:5:\"width\";i:768;s:6:\"height\";i:821;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"botsadmgu-1436x1536.png\";s:5:\"width\";i:1436;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(870, 169, '_wp_attached_file', '2020/02/doshirak.png'),
(871, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:88;s:4:\"file\";s:20:\"2020/02/doshirak.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"doshirak-100x88.png\";s:5:\"width\";i:100;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"doshirak-150x88.png\";s:5:\"width\";i:150;s:6:\"height\";i:88;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(872, 170, '_wp_attached_file', '2020/02/eapteka-logo.png'),
(873, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:160;s:4:\"file\";s:24:\"2020/02/eapteka-logo.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"eapteka-logo-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"eapteka-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"eapteka-logo-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"eapteka-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(874, 171, '_wp_attached_file', '2020/02/essence.png'),
(875, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:314;s:6:\"height\";i:160;s:4:\"file\";s:19:\"2020/02/essence.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"essence-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"essence-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"essence-300x153.png\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"essence-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(876, 172, '_wp_attached_file', '2020/02/inmarko.png'),
(877, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:19:\"2020/02/inmarko.png\";s:5:\"sizes\";a:1:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"inmarko-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(878, 173, '_wp_attached_file', '2020/02/ladycollection.png'),
(879, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:150;s:4:\"file\";s:26:\"2020/02/ladycollection.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"ladycollection-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ladycollection-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(880, 174, '_wp_attached_file', '2020/02/ligastavok.png'),
(881, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:449;s:6:\"height\";i:150;s:4:\"file\";s:22:\"2020/02/ligastavok.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"ligastavok-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"ligastavok-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ligastavok-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ligastavok-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(882, 175, '_wp_attached_file', '2020/02/maytoni.png'),
(883, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:150;s:4:\"file\";s:19:\"2020/02/maytoni.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"maytoni-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"maytoni-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(884, 176, '_wp_attached_file', '2020/02/mosgortrance.png'),
(885, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:307;s:4:\"file\";s:24:\"2020/02/mosgortrance.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"mosgortrance-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"mosgortrance-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"mosgortrance-300x154.png\";s:5:\"width\";i:300;s:6:\"height\";i:154;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"mosgortrance-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(886, 177, '_wp_attached_file', '2020/02/sunlight.png'),
(887, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:347;s:6:\"height\";i:107;s:4:\"file\";s:20:\"2020/02/sunlight.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"sunlight-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"sunlight-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sunlight-300x93.png\";s:5:\"width\";i:300;s:6:\"height\";i:93;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sunlight-150x107.png\";s:5:\"width\";i:150;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(888, 178, '_wp_attached_file', '2020/02/velostrana-logo.png'),
(889, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:320;s:6:\"height\";i:160;s:4:\"file\";s:27:\"2020/02/velostrana-logo.png\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"velostrana-logo-300x160.png\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"velostrana-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"velostrana-logo-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"velostrana-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(890, 166, '_edit_last', '1'),
(891, 166, '_edit_lock', '1580645039:1'),
(892, 166, '_thumbnail_id', '178'),
(893, 166, 'wpsisac_slide_link', ''),
(894, 179, '_edit_last', '1'),
(895, 179, '_edit_lock', '1580645116:1'),
(896, 179, '_thumbnail_id', '177'),
(897, 179, 'wpsisac_slide_link', ''),
(898, 180, '_edit_last', '1'),
(899, 180, '_edit_lock', '1580645083:1'),
(900, 180, '_thumbnail_id', '176');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(901, 180, 'wpsisac_slide_link', ''),
(902, 181, '_edit_last', '1'),
(903, 181, '_thumbnail_id', '175'),
(904, 181, 'wpsisac_slide_link', ''),
(905, 181, '_edit_lock', '1580646813:1'),
(906, 182, '_edit_last', '1'),
(907, 182, '_edit_lock', '1580646827:1'),
(908, 182, '_thumbnail_id', '174'),
(909, 182, 'wpsisac_slide_link', ''),
(910, 183, '_edit_last', '1'),
(911, 183, '_edit_lock', '1580646841:1'),
(912, 183, '_thumbnail_id', '173'),
(913, 183, 'wpsisac_slide_link', ''),
(914, 184, '_edit_last', '1'),
(915, 184, '_thumbnail_id', '172'),
(916, 184, 'wpsisac_slide_link', ''),
(917, 184, '_edit_lock', '1580653607:1'),
(918, 185, '_form', '<div class=\"feedback-field\">\n[text* feedback-name placeholder \"Имя\"]\n</div>\n<div class=\"feedback-field\">\n[tel* feedback-phone placeholder \"Телефон\"]\n</div>\n<div class=\"feedback-submit\">\n[submit value \"Перезвоните мне\" ]\n</div>\n<div class=\"private_term_agree\">\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\n</div>'),
(919, 185, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:34:\"RekIdea. Запрос звонка\";s:6:\"sender\";s:21:\"Rek <info@rekidea.ru>\";s:9:\"recipient\";s:17:\"rekidea@yandex.ru\";s:4:\"body\";s:56:\"Имя: [feedback-name]\nТелефон: [feedback-phone]\";s:18:\"additional_headers\";s:27:\"Reply-To: <info@rekidea.ru>\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(920, 185, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"Rek \"[your-subject]\"\";s:6:\"sender\";s:25:\"Rek <wordpress@rek.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:100:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rek (http://rek.local)\";s:18:\"additional_headers\";s:27:\"Reply-To: swd.admin@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(921, 185, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:144:\"Спасибо. Ваше сообщение отправлено. Менеджер свяжется с вами в ближайшее время\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(922, 185, '_additional_settings', ''),
(923, 185, '_locale', 'ru_RU'),
(942, 187, '_wp_attached_file', '2020/02/watermark-png.png'),
(943, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:68;s:4:\"file\";s:25:\"2020/02/watermark-png.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"watermark-png-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"watermark-png-150x68.png\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(944, 188, '_wp_attached_file', '2020/02/watermark-png-1.png'),
(945, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:68;s:4:\"file\";s:27:\"2020/02/watermark-png-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"watermark-png-1-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"watermark-png-1-150x68.png\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(946, 189, '_wp_attached_file', '2020/02/watermark-png-2.png'),
(947, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:68;s:4:\"file\";s:27:\"2020/02/watermark-png-2.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"watermark-png-2-100x68.png\";s:5:\"width\";i:100;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"watermark-png-2-150x68.png\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(948, 190, '_wp_attached_file', '2020/02/1_800x600-Deutz.jpg'),
(949, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/02/1_800x600-Deutz.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"1_800x600-Deutz-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"1_800x600-Deutz-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"1_800x600-Deutz-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"1_800x600-Deutz-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"1_800x600-Deutz-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"1_800x600-Deutz-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(950, 190, 'iw-is-watermarked', '1'),
(951, 191, '_edit_last', '1'),
(952, 191, '_edit_lock', '1584098785:1'),
(957, 18, 'portfolio-image', '190'),
(958, 18, '_portfolio-image', 'field_5e39a52fa18d5'),
(959, 18, 'portfolio-image2', '198'),
(960, 18, '_portfolio-image2', 'field_5e39a56fa18d7'),
(961, 18, 'portfolio-image3', '199'),
(962, 18, '_portfolio-image3', 'field_5e39a57fa18d8'),
(963, 195, 'email', 'info@rekidea.ru'),
(964, 195, '_email', 'field_5e2f072a4555c'),
(965, 195, 'phone_1', '+7 (495) 369-20-79'),
(966, 195, '_phone_1', 'field_5e2f08bab1f49'),
(967, 195, 'phone_2', '+7 (495) 369-20-79'),
(968, 195, '_phone_2', 'field_5e2f0904b1f4a'),
(969, 195, 'address', 'ул. Электрозаводская, 21'),
(970, 195, '_address', 'field_5e2f0c96c43f3'),
(971, 195, 'portfolio-image', '190'),
(972, 195, '_portfolio-image', 'field_5e39a52fa18d5'),
(973, 195, 'portfolio-image2', '190'),
(974, 195, '_portfolio-image2', 'field_5e39a56fa18d7'),
(975, 195, 'portfolio-image3', '190'),
(976, 195, '_portfolio-image3', 'field_5e39a57fa18d8'),
(980, 18, 'portfolio-image1', '190'),
(981, 18, '_portfolio-image1', 'field_5e39a52fa18d5'),
(982, 197, 'email', 'info@rekidea.ru'),
(983, 197, '_email', 'field_5e2f072a4555c'),
(984, 197, 'phone_1', '+7 (495) 369-20-79'),
(985, 197, '_phone_1', 'field_5e2f08bab1f49'),
(986, 197, 'phone_2', '+7 (495) 369-20-79'),
(987, 197, '_phone_2', 'field_5e2f0904b1f4a'),
(988, 197, 'address', 'ул. Электрозаводская, 21'),
(989, 197, '_address', 'field_5e2f0c96c43f3'),
(990, 197, 'portfolio-image', '190'),
(991, 197, '_portfolio-image', 'field_5e39a52fa18d5'),
(992, 197, 'portfolio-image2', '190'),
(993, 197, '_portfolio-image2', 'field_5e39a56fa18d7'),
(994, 197, 'portfolio-image3', '190'),
(995, 197, '_portfolio-image3', 'field_5e39a57fa18d8'),
(996, 197, 'portfolio-image1', '190'),
(997, 197, '_portfolio-image1', 'field_5e39a52fa18d5'),
(998, 198, '_wp_attached_file', '2020/01/1_800x600-Eapteka-2.jpg'),
(999, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2020/01/1_800x600-Eapteka-2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"1_800x600-Eapteka-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"1_800x600-Eapteka-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"1_800x600-Eapteka-2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"1_800x600-Eapteka-2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"1_800x600-Eapteka-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"1_800x600-Eapteka-2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1000, 198, 'iw-is-watermarked', '1'),
(1001, 199, '_wp_attached_file', '2020/01/1_800x600-Akvarel.jpg'),
(1002, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:29:\"2020/01/1_800x600-Akvarel.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"1_800x600-Akvarel-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"1_800x600-Akvarel-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"1_800x600-Akvarel-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"1_800x600-Akvarel-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"1_800x600-Akvarel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"1_800x600-Akvarel-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1003, 199, 'iw-is-watermarked', '1'),
(1006, 200, 'email', 'info@rekidea.ru'),
(1007, 200, '_email', 'field_5e2f072a4555c'),
(1008, 200, 'phone_1', '+7 (495) 369-20-79'),
(1009, 200, '_phone_1', 'field_5e2f08bab1f49'),
(1010, 200, 'phone_2', '+7 (495) 369-20-79'),
(1011, 200, '_phone_2', 'field_5e2f0904b1f4a'),
(1012, 200, 'address', 'ул. Электрозаводская, 21'),
(1013, 200, '_address', 'field_5e2f0c96c43f3'),
(1014, 200, 'portfolio-image', '190'),
(1015, 200, '_portfolio-image', 'field_5e39a52fa18d5'),
(1016, 200, 'portfolio-image2', '198'),
(1017, 200, '_portfolio-image2', 'field_5e39a56fa18d7'),
(1018, 200, 'portfolio-image3', '199'),
(1019, 200, '_portfolio-image3', 'field_5e39a57fa18d8'),
(1020, 200, 'portfolio-image1', '190'),
(1021, 200, '_portfolio-image1', 'field_5e39a52fa18d5'),
(1024, 201, 'email', 'info@rekidea.ru'),
(1025, 201, '_email', 'field_5e2f072a4555c'),
(1026, 201, 'phone_1', '+7 (495) 369-20-79'),
(1027, 201, '_phone_1', 'field_5e2f08bab1f49'),
(1028, 201, 'phone_2', '+7 (495) 369-20-79'),
(1029, 201, '_phone_2', 'field_5e2f0904b1f4a'),
(1030, 201, 'address', 'ул. Электрозаводская, 21'),
(1031, 201, '_address', 'field_5e2f0c96c43f3'),
(1032, 201, 'portfolio-image', '190'),
(1033, 201, '_portfolio-image', 'field_5e39a52fa18d5'),
(1034, 201, 'portfolio-image2', '198'),
(1035, 201, '_portfolio-image2', 'field_5e39a56fa18d7'),
(1036, 201, 'portfolio-image3', '199'),
(1037, 201, '_portfolio-image3', 'field_5e39a57fa18d8'),
(1038, 201, 'portfolio-image1', '190'),
(1039, 201, '_portfolio-image1', 'field_5e39a52fa18d5'),
(1040, 208, '_wp_attached_file', '2020/01/600x600-bethoven.jpg'),
(1041, 208, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2020/01/600x600-bethoven.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"600x600-bethoven-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"600x600-bethoven-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"600x600-bethoven-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"600x600-bethoven-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1042, 208, 'iw-is-watermarked', '1'),
(1043, 209, '_wp_attached_file', '2020/01/600x600milk.jpg'),
(1044, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/01/600x600milk.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"600x600milk-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"600x600milk-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"600x600milk-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"600x600milk-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1045, 209, 'iw-is-watermarked', '1'),
(1046, 210, '_wp_attached_file', '2020/01/600x600-milk2.jpg'),
(1047, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/01/600x600-milk2.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"600x600-milk2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"600x600-milk2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"600x600-milk2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"600x600-milk2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1048, 210, 'iw-is-watermarked', '1'),
(1049, 211, '_wp_attached_file', '2020/01/600x600-Rostovaya.jpg'),
(1050, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:29:\"2020/01/600x600-Rostovaya.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"600x600-Rostovaya-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"600x600-Rostovaya-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"600x600-Rostovaya-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"600x600-Rostovaya-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1051, 211, 'iw-is-watermarked', '1'),
(1052, 212, '_wp_attached_file', '2020/01/600x600-cofeport.jpg'),
(1053, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:28:\"2020/01/600x600-cofeport.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"600x600-cofeport-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"600x600-cofeport-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"600x600-cofeport-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"600x600-cofeport-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1054, 212, 'iw-is-watermarked', '1'),
(1055, 213, '_wp_attached_file', '2020/01/600x600-krest.jpg'),
(1056, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/01/600x600-krest.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"600x600-krest-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"600x600-krest-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"600x600-krest-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"600x600-krest-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1057, 213, 'iw-is-watermarked', '1'),
(1058, 18, '_pingme', '1'),
(1059, 18, '_encloseme', '1'),
(1060, 18, 'portfolio-image4', '208'),
(1061, 18, '_portfolio-image4', 'field_5e39acfcc35a3'),
(1062, 18, 'portfolio-image5', '209'),
(1063, 18, '_portfolio-image5', 'field_5e39ad0bc35a8'),
(1064, 18, 'portfolio-image6', '210'),
(1065, 18, '_portfolio-image6', 'field_5e39ad0bc35a7'),
(1066, 18, 'portfolio-image7', '211'),
(1067, 18, '_portfolio-image7', 'field_5e39ad0ac35a6'),
(1068, 18, 'portfolio-image8', '212'),
(1069, 18, '_portfolio-image8', 'field_5e39ad09c35a5'),
(1070, 18, 'portfolio-image9', '213'),
(1071, 18, '_portfolio-image9', 'field_5e39ad08c35a4'),
(1072, 214, 'email', 'info@rekidea.ru'),
(1073, 214, '_email', 'field_5e2f072a4555c'),
(1074, 214, 'phone_1', '+7 (495) 369-20-79'),
(1075, 214, '_phone_1', 'field_5e2f08bab1f49'),
(1076, 214, 'phone_2', '+7 (495) 369-20-79'),
(1077, 214, '_phone_2', 'field_5e2f0904b1f4a'),
(1078, 214, 'address', 'ул. Электрозаводская, 21'),
(1079, 214, '_address', 'field_5e2f0c96c43f3'),
(1080, 214, 'portfolio-image', '190'),
(1081, 214, '_portfolio-image', 'field_5e39a52fa18d5'),
(1082, 214, 'portfolio-image2', '198'),
(1083, 214, '_portfolio-image2', 'field_5e39a56fa18d7'),
(1084, 214, 'portfolio-image3', '199'),
(1085, 214, '_portfolio-image3', 'field_5e39a57fa18d8'),
(1086, 214, 'portfolio-image1', '190'),
(1087, 214, '_portfolio-image1', 'field_5e39a52fa18d5'),
(1088, 214, 'portfolio-image4', '208'),
(1089, 214, '_portfolio-image4', 'field_5e39acfcc35a3'),
(1090, 214, 'portfolio-image5', '209'),
(1091, 214, '_portfolio-image5', 'field_5e39ad0bc35a8'),
(1092, 214, 'portfolio-image6', '210'),
(1093, 214, '_portfolio-image6', 'field_5e39ad0bc35a7'),
(1094, 214, 'portfolio-image7', '211'),
(1095, 214, '_portfolio-image7', 'field_5e39ad0ac35a6'),
(1096, 214, 'portfolio-image8', '212'),
(1097, 214, '_portfolio-image8', 'field_5e39ad09c35a5'),
(1098, 214, 'portfolio-image9', '213'),
(1099, 214, '_portfolio-image9', 'field_5e39ad08c35a4'),
(1101, 216, '_edit_lock', '1580884209:1'),
(1102, 219, '_edit_lock', '1581534778:1'),
(1146, 226, '_wp_attached_file', '2020/02/1_800x600-standART.jpg'),
(1147, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2020/02/1_800x600-standART.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"1_800x600-standART-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"1_800x600-standART-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"1_800x600-standART-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"1_800x600-standART-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"1_800x600-standART-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"1_800x600-standART-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1148, 227, '_wp_attached_file', '2020/02/1_800x600-lion6.jpg'),
(1149, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/02/1_800x600-lion6.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"1_800x600-lion6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion6-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion6-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1150, 228, '_wp_attached_file', '2020/02/1_800x600-lion5.jpg'),
(1151, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2020/02/1_800x600-lion5.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"1_800x600-lion5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion5-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"1_800x600-lion5-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1152, 229, '_wp_attached_file', '2020/02/1_800x600-maria_poz.jpg'),
(1153, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2020/02/1_800x600-maria_poz.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"1_800x600-maria_poz-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"1_800x600-maria_poz-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"1_800x600-maria_poz-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"1_800x600-maria_poz-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"1_800x600-maria_poz-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"1_800x600-maria_poz-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1154, 230, '_wp_attached_file', '2020/02/11_800x600_infostend6.jpg'),
(1155, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:33:\"2020/02/11_800x600_infostend6.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"11_800x600_infostend6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"11_800x600_infostend6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"11_800x600_infostend6-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"11_800x600_infostend6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"11_800x600_infostend6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"11_800x600_infostend6-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1156, 227, '_edit_lock', '1581573366:1'),
(1157, 227, '_edit_last', '1'),
(1158, 227, 'iw-is-watermarked', '1'),
(1159, 226, 'iw-is-watermarked', '1'),
(1160, 229, 'iw-is-watermarked', '1'),
(1161, 228, 'iw-is-watermarked', '1'),
(1162, 230, 'iw-is-watermarked', '1'),
(1172, 232, '_menu_item_type', 'custom'),
(1173, 232, '_menu_item_menu_item_parent', '144'),
(1174, 232, '_menu_item_object_id', '232'),
(1175, 232, '_menu_item_object', 'custom'),
(1176, 232, '_menu_item_target', ''),
(1177, 232, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1178, 232, '_menu_item_xfn', ''),
(1179, 232, '_menu_item_url', '/404'),
(1181, 233, '_menu_item_type', 'custom'),
(1182, 233, '_menu_item_menu_item_parent', '144'),
(1183, 233, '_menu_item_object_id', '233'),
(1184, 233, '_menu_item_object', 'custom'),
(1185, 233, '_menu_item_target', ''),
(1186, 233, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1187, 233, '_menu_item_xfn', ''),
(1188, 233, '_menu_item_url', '/404'),
(1190, 234, '_menu_item_type', 'custom'),
(1191, 234, '_menu_item_menu_item_parent', '144'),
(1192, 234, '_menu_item_object_id', '234'),
(1193, 234, '_menu_item_object', 'custom'),
(1194, 234, '_menu_item_target', ''),
(1195, 234, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1196, 234, '_menu_item_xfn', ''),
(1197, 234, '_menu_item_url', '/404'),
(1199, 235, '_menu_item_type', 'custom'),
(1200, 235, '_menu_item_menu_item_parent', '144'),
(1201, 235, '_menu_item_object_id', '235'),
(1202, 235, '_menu_item_object', 'custom'),
(1203, 235, '_menu_item_target', ''),
(1204, 235, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1205, 235, '_menu_item_xfn', ''),
(1206, 235, '_menu_item_url', '/404'),
(1208, 236, '_menu_item_type', 'custom'),
(1209, 236, '_menu_item_menu_item_parent', '145'),
(1210, 236, '_menu_item_object_id', '236'),
(1211, 236, '_menu_item_object', 'custom'),
(1212, 236, '_menu_item_target', ''),
(1213, 236, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1214, 236, '_menu_item_xfn', ''),
(1215, 236, '_menu_item_url', '/404'),
(1217, 237, '_menu_item_type', 'custom'),
(1218, 237, '_menu_item_menu_item_parent', '145'),
(1219, 237, '_menu_item_object_id', '237'),
(1220, 237, '_menu_item_object', 'custom'),
(1221, 237, '_menu_item_target', ''),
(1222, 237, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1223, 237, '_menu_item_xfn', ''),
(1224, 237, '_menu_item_url', '/404'),
(1226, 238, '_menu_item_type', 'custom'),
(1227, 238, '_menu_item_menu_item_parent', '145'),
(1228, 238, '_menu_item_object_id', '238'),
(1229, 238, '_menu_item_object', 'custom'),
(1230, 238, '_menu_item_target', ''),
(1231, 238, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1232, 238, '_menu_item_xfn', ''),
(1233, 238, '_menu_item_url', '/404'),
(1235, 239, '_menu_item_type', 'custom'),
(1236, 239, '_menu_item_menu_item_parent', '146'),
(1237, 239, '_menu_item_object_id', '239'),
(1238, 239, '_menu_item_object', 'custom'),
(1239, 239, '_menu_item_target', ''),
(1240, 239, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1241, 239, '_menu_item_xfn', ''),
(1242, 239, '_menu_item_url', '/404'),
(1244, 240, '_menu_item_type', 'custom'),
(1245, 240, '_menu_item_menu_item_parent', '146'),
(1246, 240, '_menu_item_object_id', '240'),
(1247, 240, '_menu_item_object', 'custom'),
(1248, 240, '_menu_item_target', ''),
(1249, 240, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1250, 240, '_menu_item_xfn', ''),
(1251, 240, '_menu_item_url', '/404'),
(1253, 241, '_menu_item_type', 'custom'),
(1254, 241, '_menu_item_menu_item_parent', '146'),
(1255, 241, '_menu_item_object_id', '241'),
(1256, 241, '_menu_item_object', 'custom'),
(1257, 241, '_menu_item_target', ''),
(1258, 241, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1259, 241, '_menu_item_xfn', ''),
(1260, 241, '_menu_item_url', '/404'),
(1262, 242, '_menu_item_type', 'custom'),
(1263, 242, '_menu_item_menu_item_parent', '146'),
(1264, 242, '_menu_item_object_id', '242'),
(1265, 242, '_menu_item_object', 'custom'),
(1266, 242, '_menu_item_target', ''),
(1267, 242, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1268, 242, '_menu_item_xfn', ''),
(1269, 242, '_menu_item_url', '/404'),
(1271, 243, '_menu_item_type', 'custom'),
(1272, 243, '_menu_item_menu_item_parent', '0'),
(1273, 243, '_menu_item_object_id', '243'),
(1274, 243, '_menu_item_object', 'custom'),
(1275, 243, '_menu_item_target', ''),
(1276, 243, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1277, 243, '_menu_item_xfn', ''),
(1278, 243, '_menu_item_url', '/404'),
(1280, 244, '_menu_item_type', 'custom'),
(1281, 244, '_menu_item_menu_item_parent', '243'),
(1282, 244, '_menu_item_object_id', '244'),
(1283, 244, '_menu_item_object', 'custom'),
(1284, 244, '_menu_item_target', ''),
(1285, 244, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1286, 244, '_menu_item_xfn', ''),
(1287, 244, '_menu_item_url', '/404'),
(1289, 245, '_menu_item_type', 'custom'),
(1290, 245, '_menu_item_menu_item_parent', '243'),
(1291, 245, '_menu_item_object_id', '245'),
(1292, 245, '_menu_item_object', 'custom'),
(1293, 245, '_menu_item_target', ''),
(1294, 245, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1295, 245, '_menu_item_xfn', ''),
(1296, 245, '_menu_item_url', '/404'),
(1298, 246, '_menu_item_type', 'custom'),
(1299, 246, '_menu_item_menu_item_parent', '243'),
(1300, 246, '_menu_item_object_id', '246'),
(1301, 246, '_menu_item_object', 'custom'),
(1302, 246, '_menu_item_target', ''),
(1303, 246, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1304, 246, '_menu_item_xfn', ''),
(1305, 246, '_menu_item_url', '/404'),
(1307, 247, '_menu_item_type', 'custom'),
(1308, 247, '_menu_item_menu_item_parent', '154'),
(1309, 247, '_menu_item_object_id', '247'),
(1310, 247, '_menu_item_object', 'custom'),
(1311, 247, '_menu_item_target', ''),
(1312, 247, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1313, 247, '_menu_item_xfn', ''),
(1314, 247, '_menu_item_url', '/404'),
(1316, 248, '_menu_item_type', 'custom'),
(1317, 248, '_menu_item_menu_item_parent', '154'),
(1318, 248, '_menu_item_object_id', '248'),
(1319, 248, '_menu_item_object', 'custom'),
(1320, 248, '_menu_item_target', ''),
(1321, 248, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1322, 248, '_menu_item_xfn', ''),
(1323, 248, '_menu_item_url', '/404'),
(1325, 249, '_menu_item_type', 'custom'),
(1326, 249, '_menu_item_menu_item_parent', '154'),
(1327, 249, '_menu_item_object_id', '249'),
(1328, 249, '_menu_item_object', 'custom'),
(1329, 249, '_menu_item_target', ''),
(1330, 249, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1331, 249, '_menu_item_xfn', ''),
(1332, 249, '_menu_item_url', '/404'),
(1334, 250, '_menu_item_type', 'custom'),
(1335, 250, '_menu_item_menu_item_parent', '156'),
(1336, 250, '_menu_item_object_id', '250'),
(1337, 250, '_menu_item_object', 'custom'),
(1338, 250, '_menu_item_target', ''),
(1339, 250, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1340, 250, '_menu_item_xfn', ''),
(1341, 250, '_menu_item_url', '/404'),
(1343, 251, '_menu_item_type', 'custom'),
(1344, 251, '_menu_item_menu_item_parent', '156'),
(1345, 251, '_menu_item_object_id', '251'),
(1346, 251, '_menu_item_object', 'custom'),
(1347, 251, '_menu_item_target', ''),
(1348, 251, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1349, 251, '_menu_item_xfn', ''),
(1350, 251, '_menu_item_url', '/404'),
(1365, 3, '_edit_lock', '1581953427:1'),
(1368, 255, '_edit_lock', '1582132823:1'),
(1395, 269, '_wp_attached_file', '2020/02/tablichki_1-1.jpg'),
(1396, 269, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/02/tablichki_1-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"tablichki_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"tablichki_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"tablichki_1-1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"tablichki_1-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"tablichki_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"tablichki_1-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1397, 270, '_wp_attached_file', '2020/02/tablichki_2.jpg'),
(1398, 270, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/02/tablichki_2.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"tablichki_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"tablichki_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"tablichki_2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"tablichki_2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"tablichki_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"tablichki_2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1399, 271, '_wp_attached_file', '2020/02/tablichki_3.jpg'),
(1400, 271, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/02/tablichki_3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"tablichki_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"tablichki_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"tablichki_3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"tablichki_3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"tablichki_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"tablichki_3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1401, 272, '_wp_attached_file', '2020/02/tablichki_4.jpg'),
(1402, 272, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/02/tablichki_4.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"tablichki_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"tablichki_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"tablichki_4-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"tablichki_4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"tablichki_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"tablichki_4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1403, 273, '_wp_attached_file', '2020/02/tablichki_language.jpg'),
(1404, 273, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2020/02/tablichki_language.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"tablichki_language-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"tablichki_language-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"tablichki_language-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"tablichki_language-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"tablichki_language-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"tablichki_language-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1405, 269, 'iw-is-watermarked', '1'),
(1406, 270, 'iw-is-watermarked', '1'),
(1407, 271, 'iw-is-watermarked', '1'),
(1408, 272, 'iw-is-watermarked', '1'),
(1409, 273, 'iw-is-watermarked', '1'),
(1410, 274, '_form', '<div class=\"feedback-field\">\n[text* feedback-name placeholder \"Имя\"]\n</div>\n<div class=\"feedback-field\">\n[tel* feedback-phone placeholder \"Телефон\"]\n</div>\n<div class=\"feedback-field\">\n[text message-name placeholder \"Сообщение\"]\n</div>\n<div class=\"feedback-submit\">\n[submit value \"Перезвоните мне\" ]\n</div>\n<div class=\"private_term_agree\">\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\n</div>'),
(1411, 274, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:19:\"RekIdea. Заказ\";s:6:\"sender\";s:21:\"Rek <info@rekidea.ru>\";s:9:\"recipient\";s:17:\"rekidea@yandex.ru\";s:4:\"body\";s:91:\"Имя: [feedback-name]\nТелефон: [feedback-phone]\nСообщение: [message-name]\";s:18:\"additional_headers\";s:27:\"Reply-To: <info@rekidea.ru>\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1412, 274, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Rekidea \"[your-subject]\"\";s:6:\"sender\";s:29:\"Rekidea <wordpress@rek.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:127:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта Rekidea (http://rek.local)\";s:18:\"additional_headers\";s:27:\"Reply-To: swd.admin@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1413, 274, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:144:\"Спасибо. Ваше сообщение отправлено. Менеджер свяжется с вами в ближайшее время\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(1414, 274, '_additional_settings', ''),
(1415, 274, '_locale', 'ru_RU'),
(1431, 185, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(1433, 274, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(1434, 275, '_menu_item_type', 'post_type'),
(1435, 275, '_menu_item_menu_item_parent', '0'),
(1436, 275, '_menu_item_object_id', '255'),
(1437, 275, '_menu_item_object', 'page'),
(1438, 275, '_menu_item_target', ''),
(1439, 275, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1440, 275, '_menu_item_xfn', ''),
(1441, 275, '_menu_item_url', ''),
(1443, 276, '_menu_item_type', 'post_type'),
(1444, 276, '_menu_item_menu_item_parent', '104'),
(1445, 276, '_menu_item_object_id', '255'),
(1446, 276, '_menu_item_object', 'page'),
(1447, 276, '_menu_item_target', ''),
(1448, 276, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1449, 276, '_menu_item_xfn', ''),
(1450, 276, '_menu_item_url', ''),
(1452, 278, '_edit_lock', '1582802075:1'),
(1453, 280, '_edit_lock', '1582892287:1'),
(1454, 282, '_menu_item_type', 'post_type'),
(1455, 282, '_menu_item_menu_item_parent', '0'),
(1456, 282, '_menu_item_object_id', '278'),
(1457, 282, '_menu_item_object', 'page'),
(1458, 282, '_menu_item_target', ''),
(1459, 282, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1460, 282, '_menu_item_xfn', ''),
(1461, 282, '_menu_item_url', ''),
(1463, 283, '_menu_item_type', 'post_type'),
(1464, 283, '_menu_item_menu_item_parent', '0'),
(1465, 283, '_menu_item_object_id', '278'),
(1466, 283, '_menu_item_object', 'page'),
(1467, 283, '_menu_item_target', ''),
(1468, 283, '_menu_item_classes', 'a:1:{i:0;s:4:\"dark\";}'),
(1469, 283, '_menu_item_xfn', ''),
(1470, 283, '_menu_item_url', ''),
(1472, 285, '_edit_lock', '1583753837:1'),
(1473, 288, '_edit_lock', '1583769626:1'),
(1474, 290, '_edit_lock', '1589445927:1'),
(1475, 292, '_menu_item_type', 'custom'),
(1476, 292, '_menu_item_menu_item_parent', '0'),
(1477, 292, '_menu_item_object_id', '292'),
(1478, 292, '_menu_item_object', 'custom'),
(1479, 292, '_menu_item_target', ''),
(1480, 292, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1481, 292, '_menu_item_xfn', ''),
(1482, 292, '_menu_item_url', '/404'),
(1484, 293, '_menu_item_type', 'custom'),
(1485, 293, '_menu_item_menu_item_parent', '0'),
(1486, 293, '_menu_item_object_id', '293'),
(1487, 293, '_menu_item_object', 'custom'),
(1488, 293, '_menu_item_target', ''),
(1489, 293, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1490, 293, '_menu_item_xfn', ''),
(1491, 293, '_menu_item_url', '/404'),
(1502, 295, '_menu_item_type', 'post_type'),
(1503, 295, '_menu_item_menu_item_parent', '0'),
(1504, 295, '_menu_item_object_id', '280'),
(1505, 295, '_menu_item_object', 'page'),
(1506, 295, '_menu_item_target', ''),
(1507, 295, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1508, 295, '_menu_item_xfn', ''),
(1509, 295, '_menu_item_url', ''),
(1511, 296, '_menu_item_type', 'post_type'),
(1512, 296, '_menu_item_menu_item_parent', '0'),
(1513, 296, '_menu_item_object_id', '290'),
(1514, 296, '_menu_item_object', 'page'),
(1515, 296, '_menu_item_target', ''),
(1516, 296, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1517, 296, '_menu_item_xfn', ''),
(1518, 296, '_menu_item_url', ''),
(1520, 297, '_menu_item_type', 'custom'),
(1521, 297, '_menu_item_menu_item_parent', '0'),
(1522, 297, '_menu_item_object_id', '297'),
(1523, 297, '_menu_item_object', 'custom'),
(1524, 297, '_menu_item_target', ''),
(1525, 297, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1526, 297, '_menu_item_xfn', ''),
(1527, 297, '_menu_item_url', '/404'),
(1529, 298, '_menu_item_type', 'custom'),
(1530, 298, '_menu_item_menu_item_parent', '0'),
(1531, 298, '_menu_item_object_id', '298'),
(1532, 298, '_menu_item_object', 'custom'),
(1533, 298, '_menu_item_target', ''),
(1534, 298, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1535, 298, '_menu_item_xfn', ''),
(1536, 298, '_menu_item_url', '/404'),
(1547, 300, '_menu_item_type', 'custom'),
(1548, 300, '_menu_item_menu_item_parent', '0'),
(1549, 300, '_menu_item_object_id', '300'),
(1550, 300, '_menu_item_object', 'custom'),
(1551, 300, '_menu_item_target', ''),
(1552, 300, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1553, 300, '_menu_item_xfn', ''),
(1554, 300, '_menu_item_url', '/404'),
(1556, 301, '_menu_item_type', 'post_type'),
(1557, 301, '_menu_item_menu_item_parent', '0'),
(1558, 301, '_menu_item_object_id', '288'),
(1559, 301, '_menu_item_object', 'page'),
(1560, 301, '_menu_item_target', ''),
(1561, 301, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1562, 301, '_menu_item_xfn', ''),
(1563, 301, '_menu_item_url', ''),
(1565, 302, '_menu_item_type', 'custom'),
(1566, 302, '_menu_item_menu_item_parent', '0'),
(1567, 302, '_menu_item_object_id', '302'),
(1568, 302, '_menu_item_object', 'custom'),
(1569, 302, '_menu_item_target', ''),
(1570, 302, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1571, 302, '_menu_item_xfn', ''),
(1572, 302, '_menu_item_url', '/404'),
(1574, 303, '_menu_item_type', 'custom'),
(1575, 303, '_menu_item_menu_item_parent', '0'),
(1576, 303, '_menu_item_object_id', '303'),
(1577, 303, '_menu_item_object', 'custom'),
(1578, 303, '_menu_item_target', ''),
(1579, 303, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1580, 303, '_menu_item_xfn', ''),
(1581, 303, '_menu_item_url', '/404'),
(1583, 304, '_menu_item_type', 'custom'),
(1584, 304, '_menu_item_menu_item_parent', '0'),
(1585, 304, '_menu_item_object_id', '304'),
(1586, 304, '_menu_item_object', 'custom'),
(1587, 304, '_menu_item_target', ''),
(1588, 304, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1589, 304, '_menu_item_xfn', ''),
(1590, 304, '_menu_item_url', '/404'),
(1592, 305, '_menu_item_type', 'custom'),
(1593, 305, '_menu_item_menu_item_parent', '0'),
(1594, 305, '_menu_item_object_id', '305'),
(1595, 305, '_menu_item_object', 'custom'),
(1596, 305, '_menu_item_target', ''),
(1597, 305, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1598, 305, '_menu_item_xfn', ''),
(1599, 305, '_menu_item_url', '/404'),
(1601, 306, '_menu_item_type', 'custom'),
(1602, 306, '_menu_item_menu_item_parent', '0'),
(1603, 306, '_menu_item_object_id', '306'),
(1604, 306, '_menu_item_object', 'custom'),
(1605, 306, '_menu_item_target', ''),
(1606, 306, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1607, 306, '_menu_item_xfn', ''),
(1608, 306, '_menu_item_url', '/404'),
(1610, 307, '_menu_item_type', 'custom'),
(1611, 307, '_menu_item_menu_item_parent', '0'),
(1612, 307, '_menu_item_object_id', '307'),
(1613, 307, '_menu_item_object', 'custom'),
(1614, 307, '_menu_item_target', ''),
(1615, 307, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1616, 307, '_menu_item_xfn', ''),
(1617, 307, '_menu_item_url', '/404'),
(1619, 308, '_menu_item_type', 'post_type'),
(1620, 308, '_menu_item_menu_item_parent', '0'),
(1621, 308, '_menu_item_object_id', '280'),
(1622, 308, '_menu_item_object', 'page'),
(1623, 308, '_menu_item_target', ''),
(1624, 308, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1625, 308, '_menu_item_xfn', ''),
(1626, 308, '_menu_item_url', ''),
(1628, 309, '_menu_item_type', 'custom'),
(1629, 309, '_menu_item_menu_item_parent', '0'),
(1630, 309, '_menu_item_object_id', '309'),
(1631, 309, '_menu_item_object', 'custom'),
(1632, 309, '_menu_item_target', ''),
(1633, 309, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1634, 309, '_menu_item_xfn', ''),
(1635, 309, '_menu_item_url', '/404'),
(1637, 310, '_menu_item_type', 'custom'),
(1638, 310, '_menu_item_menu_item_parent', '0'),
(1639, 310, '_menu_item_object_id', '310'),
(1640, 310, '_menu_item_object', 'custom'),
(1641, 310, '_menu_item_target', ''),
(1642, 310, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1643, 310, '_menu_item_xfn', ''),
(1644, 310, '_menu_item_url', '/404'),
(1664, 313, '_menu_item_type', 'post_type'),
(1665, 313, '_menu_item_menu_item_parent', '0'),
(1666, 313, '_menu_item_object_id', '290'),
(1667, 313, '_menu_item_object', 'page'),
(1668, 313, '_menu_item_target', ''),
(1669, 313, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1670, 313, '_menu_item_xfn', ''),
(1671, 313, '_menu_item_url', ''),
(1673, 314, '_menu_item_type', 'post_type'),
(1674, 314, '_menu_item_menu_item_parent', '0'),
(1675, 314, '_menu_item_object_id', '285'),
(1676, 314, '_menu_item_object', 'page'),
(1677, 314, '_menu_item_target', ''),
(1678, 314, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1679, 314, '_menu_item_xfn', ''),
(1680, 314, '_menu_item_url', ''),
(1682, 315, '_menu_item_type', 'post_type'),
(1683, 315, '_menu_item_menu_item_parent', '0'),
(1684, 315, '_menu_item_object_id', '288'),
(1685, 315, '_menu_item_object', 'page'),
(1686, 315, '_menu_item_target', ''),
(1687, 315, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1688, 315, '_menu_item_xfn', ''),
(1689, 315, '_menu_item_url', ''),
(1691, 316, '_menu_item_type', 'custom'),
(1692, 316, '_menu_item_menu_item_parent', '0'),
(1693, 316, '_menu_item_object_id', '316'),
(1694, 316, '_menu_item_object', 'custom'),
(1695, 316, '_menu_item_target', ''),
(1696, 316, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1697, 316, '_menu_item_xfn', ''),
(1698, 316, '_menu_item_url', '/404'),
(1700, 317, '_menu_item_type', 'custom'),
(1701, 317, '_menu_item_menu_item_parent', '0'),
(1702, 317, '_menu_item_object_id', '317'),
(1703, 317, '_menu_item_object', 'custom'),
(1704, 317, '_menu_item_target', ''),
(1705, 317, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1706, 317, '_menu_item_xfn', ''),
(1707, 317, '_menu_item_url', '/404'),
(1709, 318, '_menu_item_type', 'custom'),
(1710, 318, '_menu_item_menu_item_parent', '0'),
(1711, 318, '_menu_item_object_id', '318'),
(1712, 318, '_menu_item_object', 'custom'),
(1713, 318, '_menu_item_target', ''),
(1714, 318, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1715, 318, '_menu_item_xfn', ''),
(1716, 318, '_menu_item_url', '/404'),
(1718, 319, '_menu_item_type', 'custom'),
(1719, 319, '_menu_item_menu_item_parent', '0'),
(1720, 319, '_menu_item_object_id', '319'),
(1721, 319, '_menu_item_object', 'custom'),
(1722, 319, '_menu_item_target', ''),
(1723, 319, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1724, 319, '_menu_item_xfn', ''),
(1725, 319, '_menu_item_url', '/404'),
(1727, 320, '_menu_item_type', 'custom'),
(1728, 320, '_menu_item_menu_item_parent', '0'),
(1729, 320, '_menu_item_object_id', '320'),
(1730, 320, '_menu_item_object', 'custom'),
(1731, 320, '_menu_item_target', ''),
(1732, 320, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1733, 320, '_menu_item_xfn', ''),
(1734, 320, '_menu_item_url', '/404'),
(1736, 321, '_menu_item_type', 'post_type'),
(1737, 321, '_menu_item_menu_item_parent', '0'),
(1738, 321, '_menu_item_object_id', '285'),
(1739, 321, '_menu_item_object', 'page'),
(1740, 321, '_menu_item_target', ''),
(1741, 321, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1742, 321, '_menu_item_xfn', ''),
(1743, 321, '_menu_item_url', ''),
(1745, 322, '_edit_lock', '1584111604:1'),
(1746, 325, '_edit_last', '1'),
(1747, 325, '_edit_lock', '1584099520:1'),
(1748, 331, '_edit_last', '1'),
(1749, 331, '_edit_lock', '1584109061:1'),
(1750, 332, '_wp_attached_file', '2020/03/3_Photozona-3.jpg'),
(1751, 332, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/03/3_Photozona-3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"3_Photozona-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"3_Photozona-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"3_Photozona-3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"3_Photozona-3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"3_Photozona-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"3_Photozona-3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1752, 331, '_thumbnail_id', '332'),
(1753, 331, 'wpsisac_slide_link', ''),
(1754, 333, '_edit_last', '1'),
(1755, 333, '_edit_lock', '1584109087:1'),
(1756, 334, '_wp_attached_file', '2020/03/3_Photozona-4.jpg'),
(1757, 334, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/03/3_Photozona-4.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"3_Photozona-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"3_Photozona-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"3_Photozona-4-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"3_Photozona-4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"3_Photozona-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"3_Photozona-4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1758, 333, '_thumbnail_id', '334'),
(1759, 333, 'wpsisac_slide_link', ''),
(1760, 336, '_wp_attached_file', '2020/03/3_Photozona-10.jpg'),
(1761, 336, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:26:\"2020/03/3_Photozona-10.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"3_Photozona-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"3_Photozona-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"3_Photozona-10-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"3_Photozona-10-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"3_Photozona-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"3_Photozona-10-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1762, 335, '_edit_last', '1'),
(1763, 335, '_thumbnail_id', '336'),
(1764, 335, 'wpsisac_slide_link', ''),
(1765, 335, '_edit_lock', '1584111623:1'),
(1766, 337, '_form', '<div class=\"feedback-field\">\n[text* feedback-name placeholder \"Имя\"]\n</div>\n<div class=\"feedback-field\">\n[tel* feedback-phone placeholder \"Телефон\"]\n</div>\n<div class=\"feedback-field\">\n[text message-name placeholder \"Комментарий\"]\n</div>\n<div class=\"feedback-submit\">\n[submit value \"Перезвоните мне\" ]\n</div>'),
(1767, 337, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:33:\"RekIdea. Запрос из цен\";s:6:\"sender\";s:21:\"Rek <info@rekidea.ru>\";s:9:\"recipient\";s:17:\"rekidea@yandex.ru\";s:4:\"body\";s:91:\"Имя: [feedback-name]\nТелефон: [feedback-phone]\nСообщение: [message-name]\";s:18:\"additional_headers\";s:27:\"Reply-To: <info@rekidea.ru>\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1768, 337, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Rekidea \"[your-subject]\"\";s:6:\"sender\";s:30:\"Rekidea <wordpress@rsht.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта Rekidea (http://rsht.local)\";s:18:\"additional_headers\";s:27:\"Reply-To: swd.admin@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1769, 337, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(1770, 337, '_additional_settings', ''),
(1771, 337, '_locale', 'ru_RU'),
(1772, 337, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(1773, 338, '_menu_item_type', 'post_type'),
(1774, 338, '_menu_item_menu_item_parent', '0'),
(1775, 338, '_menu_item_object_id', '322'),
(1776, 338, '_menu_item_object', 'page'),
(1777, 338, '_menu_item_target', ''),
(1778, 338, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1779, 338, '_menu_item_xfn', ''),
(1780, 338, '_menu_item_url', ''),
(1782, 339, '_menu_item_type', 'post_type'),
(1783, 339, '_menu_item_menu_item_parent', '0'),
(1784, 339, '_menu_item_object_id', '322'),
(1785, 339, '_menu_item_object', 'page'),
(1786, 339, '_menu_item_target', ''),
(1787, 339, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1788, 339, '_menu_item_xfn', ''),
(1789, 339, '_menu_item_url', ''),
(1790, 340, '_edit_lock', '1584891414:1'),
(1791, 343, '_menu_item_type', 'post_type'),
(1792, 343, '_menu_item_menu_item_parent', '0'),
(1793, 343, '_menu_item_object_id', '340'),
(1794, 343, '_menu_item_object', 'page'),
(1795, 343, '_menu_item_target', ''),
(1796, 343, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1797, 343, '_menu_item_xfn', ''),
(1798, 343, '_menu_item_url', ''),
(1800, 344, '_menu_item_type', 'post_type'),
(1801, 344, '_menu_item_menu_item_parent', '0'),
(1802, 344, '_menu_item_object_id', '340'),
(1803, 344, '_menu_item_object', 'page'),
(1804, 344, '_menu_item_target', ''),
(1805, 344, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1806, 344, '_menu_item_xfn', ''),
(1807, 344, '_menu_item_url', ''),
(1809, 345, '_wp_attached_file', '2020/03/800х600_tablichki_9-1.jpg'),
(1810, 345, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:34:\"2020/03/800х600_tablichki_9-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"800х600_tablichki_9-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"800х600_tablichki_9-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"800х600_tablichki_9-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1811, 345, 'iw-is-watermarked', '1'),
(1812, 346, '_wp_attached_file', '2020/03/800х600_tablichki_10-1.jpg'),
(1813, 346, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:35:\"2020/03/800х600_tablichki_10-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"800х600_tablichki_10-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"800х600_tablichki_10-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"800х600_tablichki_10-1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1814, 346, 'iw-is-watermarked', '1'),
(1815, 347, '_edit_lock', '1584891481:1'),
(1816, 349, '_form', '<div class=\"grid\">\n\n<div class=\"feedback-field\">\n[text* feedback-name placeholder \"Имя\"]\n</div>\n<div class=\"feedback-text\">\n[textarea* feedback-text placeholder \"Опишите Ваш запрос\"]\n</div>\n<div class=\"feedback-field\">\n[tel* feedback-phone placeholder \"Телефон\"]\n</div>\n\n<div class=\"feedback-field\">\n[text* feedback-topic placeholder \"Тема заявки\"]\n</div>\n</div>\n<div class=\"private_term_agree\">\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\n</div>\n\n<div class=\"feedback-submit\">\n[submit value \"Перезвоните мне\" ]\n</div>'),
(1817, 349, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:37:\"RekIdea. Форма контакты.\";s:6:\"sender\";s:21:\"Rek <info@rekidea.ru>\";s:9:\"recipient\";s:17:\"rekidea@yandex.ru\";s:4:\"body\";s:119:\"Имя: [feedback-name]\nТелефон: [feedback-phone]\nТема: [feedback-topic]\nСообщение: [feedback-text]\";s:18:\"additional_headers\";s:25:\"Reply-To: info@rekidea.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1818, 349, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Rekidea \"[your-subject]\"\";s:6:\"sender\";s:29:\"Rekidea <wordpress@rek.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:127:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта Rekidea (http://rek.local)\";s:18:\"additional_headers\";s:27:\"Reply-To: swd.admin@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1819, 349, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(1820, 349, '_additional_settings', ''),
(1821, 349, '_locale', 'ru_RU'),
(1830, 351, '_menu_item_type', 'post_type'),
(1831, 351, '_menu_item_menu_item_parent', '0'),
(1832, 351, '_menu_item_object_id', '347'),
(1833, 351, '_menu_item_object', 'page'),
(1834, 351, '_menu_item_target', ''),
(1835, 351, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1836, 351, '_menu_item_xfn', ''),
(1837, 351, '_menu_item_url', ''),
(1839, 352, '_menu_item_type', 'post_type'),
(1840, 352, '_menu_item_menu_item_parent', '0'),
(1841, 352, '_menu_item_object_id', '347'),
(1842, 352, '_menu_item_object', 'page'),
(1843, 352, '_menu_item_target', ''),
(1844, 352, '_menu_item_classes', 'a:1:{i:0;s:4:\"dark\";}'),
(1845, 352, '_menu_item_xfn', ''),
(1846, 352, '_menu_item_url', ''),
(1849, 354, '_wp_attached_file', 'woocommerce-placeholder.png'),
(1850, 354, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1851, 355, '_edit_last', '1'),
(1852, 355, '_edit_lock', '1589444083:1'),
(1853, 290, '_edit_last', '1'),
(1854, 290, 'mdf', '1-3 мм|13|1,95|3,9\r\n4 мм|15|2,25|4,5\r\n5 мм|17|2,55|5,1\r\n6 мм|20|3|6\r\n8 мм|23|3,45|6,9\r\n10 мм|26|3,9|7,8\r\n12 мм|30|4,5|9\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(1855, 290, '_mdf', 'field_5ebcfcb094e46'),
(1856, 290, 'akril', '1 мм|10|1,5|3\r\n2 мм|13|1,95|3,9\r\n3 мм|17|2,55|5,1\r\n4 мм|23|3,45|6,9\r\n5 мм|25|3,75|7,5\r\n6 мм|27|4,05|8,1\r\n8 мм|50|7,5|15\r\n10 мм|65|9,75|19,5'),
(1857, 290, '_akril', 'field_5ebcfd91557b6'),
(1858, 290, 'pet', '0,5 мм|15|2,25|4,5\r\n1 мм|23|3,45|6,9\r\n2 мм|26|3,9|7,8'),
(1859, 290, '_pet', 'field_5ebcfdc4570cb'),
(1860, 290, 'polistirol', '1 мм|15|2,25|4,5\r\n2 мм|17|2,55|5,1\r\n3 мм|22|3,3|6,6\r\n4-5 мм|25|3,75|7,5\r\n6 мм|30|4,5|9\r\n8 мм|45|6,75|13,5'),
(1861, 290, '_polistirol', 'field_5ebcfddd9b83e'),
(1862, 360, 'mdf', '1-3 мм|13|1,95|3,9\r\n4 мм|15|2,25|4,5\r\n5 мм|17|2,55|5,1\r\n6 мм|20|3|6\r\n8 мм|23|3,45|6,9\r\n10 мм|26|3,9|7,8\r\n12 мм|30|4,5|9\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(1863, 360, '_mdf', 'field_5ebcfcb094e46'),
(1864, 360, 'akril', '1 мм|10|1,5|3\r\n2 мм|13|1,95|3,9\r\n3 мм|17|2,55|5,1\r\n4 мм|23|3,45|6,9\r\n5 мм|25|3,75|7,5\r\n6 мм|27|4,05|8,1\r\n8 мм|50|7,5|15\r\n10 мм|65|9,75|19,5'),
(1865, 360, '_akril', 'field_5ebcfd91557b6'),
(1866, 360, 'pet', ''),
(1867, 360, '_pet', 'field_5ebcfdc4570cb'),
(1868, 360, 'polistirol', ''),
(1869, 360, '_polistirol', 'field_5ebcfddd9b83e'),
(1870, 361, 'mdf', '1-3 мм|13|1,95|3,9\r\n4 мм|15|2,25|4,5\r\n5 мм|17|2,55|5,1\r\n6 мм|20|3|6\r\n8 мм|23|3,45|6,9\r\n10 мм|26|3,9|7,8\r\n12 мм|30|4,5|9\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(1871, 361, '_mdf', 'field_5ebcfcb094e46'),
(1872, 361, 'akril', '1 мм|10|1,5|3\r\n2 мм|13|1,95|3,9\r\n3 мм|17|2,55|5,1\r\n4 мм|23|3,45|6,9\r\n5 мм|25|3,75|7,5\r\n6 мм|27|4,05|8,1\r\n8 мм|50|7,5|15\r\n10 мм|65|9,75|19,5'),
(1873, 361, '_akril', 'field_5ebcfd91557b6'),
(1874, 361, 'pet', '0,5 мм|15|2,25|4,5\r\n1 мм|23|3,45|6,9\r\n2 мм|26|3,9|7,8'),
(1875, 361, '_pet', 'field_5ebcfdc4570cb'),
(1876, 361, 'polistirol', '1 мм|15|2,25|4,5\r\n2 мм|17|2,55|5,1\r\n3 мм|22|3,3|6,6\r\n4-5 мм|25|3,75|7,5\r\n6 мм|30|4,5|9\r\n8 мм|45|6,75|13,5'),
(1877, 361, '_polistirol', 'field_5ebcfddd9b83e');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-01-23 20:20:18', '2020-01-23 17:20:18', '<!-- wp:heading {\"level\":1} -->\n<h1>Политика конфиденциальности </h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Настоящее Положение о защите персональных данных действует в отношении всей информации, которую рекламное производство РекИдея, может получить о Клиенте во время использования сайта РекИдея.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Вы можете не предоставлять свои персональные данные (не проходить регистрацию), если вы зашли на сайт РекИдея с ознакомительными целями, чтобы составить впечатление об ассортименте и ценах на товар, представленный на нашем сайте, а также при наличии соответствующего сервиса оценить качество обслуживания Клиентов нашего интернет-магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы просим вас предоставить ваши персональные данные для оформления вами заказа в нашем интернет-магазине. От вас потребуется пройти процедуру регистрации Клиента и/или предоставить менеджеру call-центра свои персональные данные, чтобы мы могли в полном объеме выполнить свои обязательства перед вами по обработке и исполнению заказа.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ваши персональные данные могут включать в себя следующую информацию:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>фамилия, имя, отчество;</li><li>контактный телефон;</li><li>адрес электронной почты;</li><li>адрес для доставки заказанных на нашем сайте товаров;</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>а также другую информацию, которую вы захотите предоставить любым способом. Предоставляя свои персональные данные, вы соглашаетесь на их обработку в целях исполнения нами своих обязательств перед вами по продаже товаров и оказанию услуг, предоставления вам справочной информации об изменениях в условиях обслуживании Клиентов, о новых продуктах, акциях, промокодах, а также в целях продвижения товаров и услуг.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При обработке ваших персональных данных мы руководствуется положениями Федерального закона Российской Федерации от 27.07.2006 N 152-ФЗ «О персональных данных», Федерального закона Российской Федерации 27.07.2006 N 149-ФЗ «Об информации, информационных технологиях и о защите информации», а также иными нормативными документами в области защиты и обработки персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Персональная информация, которую мы собираем, позволяет нам оперативно направлять Клиентам уведомления о процессе выполнения нами заказов, об изменениях в условиях продажи, новинках, заметных обновлениях цен, специальных предложениях и других важных событиях. Если вы не желаете быть включенным в наш список рассылки, вы можете в любое время отказаться от получения рассылки путем нажатия ссылки «Отписаться от рассылки» в любом нашем письме (рассылке) либо уведомив о вашем желании перестать получать наши рассылки, направив письмо на почту Службы поддержки покупателей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы обязуемся не передавать полученную от вас информацию третьим лицам.&nbsp;Не считается нарушением обязательств передача конфиденциальной информации о персональных данных в компетентные органы по надлежащие оформленным запросам в соответствии с требованиями действующего законодательства Российской Федерации.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При обработке ваших персональных данных мы уделяем большое внимание обеспечению безопасности вашей личной информации. Мы применяем необходимые и достаточные современные технологии в области защиты персональных данных наших Клиентов для ограничения несанкционированного и неправомерного доступа к ним.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы оставляем за собой право вносить изменения в настоящее «Положение о защите персональных данных». Это может быть вызвано изменениями действующего законодательства в области персональных данных, а также в других случаях, для повышения качества обслуживания. Мы обязуемся незамедлительно извещать вас об этом путем опубликования на нашем сайте текста «Положения» с внесенными правками.</p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'Политика конфиденциальности', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-16 22:37:19', '2020-02-16 19:37:19', '', 0, 'http://rek.local/?page_id=3', 0, 'page', '', 0),
(8, 1, '2020-01-27 16:44:25', '2020-01-27 13:44:25', '<h3>Мы открыты для обратной связи с покупателями, партнерами и соискателями!</h3>\r\n\r\n<label> Имя\r\n    [text* your-name] </label>\r\n\r\n<label> Электронная почта\r\n    [email* your-email] </label>\r\n\r\n<label> Телефон\r\n    [tel tel-729] </label>\r\n\r\n<label> Тема\r\n    [text your-subject] </label>\r\n\r\n<label> Сообщение\r\n    [textarea your-message] </label>\r\n\r\n<label> Введите проверочный код\r\n[captchac captcha-1] [captchar captcha-1]</label>\r\n\r\n[submit \"Отправить\"]\r\n<div class=\"private_term_agree\">\r\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\r\n</div>\n1\nRekIdea. Форма обратной связи\nRek <info@rekidea.ru>\nrekidea@yandex.ru\nИмя: [your-name] \r\nEmail: [your-email]\r\nТелефон: [tel-729]\r\nТема: [your-subject]\r\nСообщение: [your-message]\nReply-To: [your-email]\n\n\n\n\nRek \"[your-subject]\"\nRek <wordpress@rek.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Rek (http://rek.local)\nReply-To: swd.admin@mail.ru\n\n\n\nСпасибо. Ваше сообщение отправлено. Менеджер свяжется с вами в ближайшее время\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Feedback', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-03-01 20:59:32', '2020-03-01 17:59:32', '', 0, 'http://rek.local/?post_type=wpcf7_contact_form&#038;p=8', 0, 'wpcf7_contact_form', '', 0),
(13, 1, '2020-01-27 18:52:15', '2020-01-27 15:52:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category:common\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'общие параметры', '%d0%be%d0%b1%d1%89%d0%b8%d0%b5-%d0%bf%d0%b0%d1%80%d0%b0%d0%bc%d0%b5%d1%82%d1%80%d1%8b', 'publish', 'closed', 'closed', '', 'group_5e2f0669d466c', '', '', '2020-01-27 19:15:35', '2020-01-27 16:15:35', '', 0, 'http://rek.local/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2020-01-27 18:52:15', '2020-01-27 15:52:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Электронная почта', 'email', 'publish', 'closed', 'closed', '', 'field_5e2f072a4555c', '', '', '2020-01-27 19:00:26', '2020-01-27 16:00:26', '', 13, 'http://rek.local/?post_type=acf-field&#038;p=14', 0, 'acf-field', '', 0),
(15, 1, '2020-01-27 19:00:26', '2020-01-27 16:00:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон 1', 'phone_1', 'publish', 'closed', 'closed', '', 'field_5e2f08bab1f49', '', '', '2020-01-27 19:00:26', '2020-01-27 16:00:26', '', 13, 'http://rek.local/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2020-01-27 19:00:26', '2020-01-27 16:00:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон 2', 'phone_2', 'publish', 'closed', 'closed', '', 'field_5e2f0904b1f4a', '', '', '2020-01-27 19:00:26', '2020-01-27 16:00:26', '', 13, 'http://rek.local/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(18, 1, '2020-01-27 19:03:11', '2020-01-27 16:03:11', '', 'Главная страница', '', 'publish', 'open', 'open', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2020-02-04 20:46:15', '2020-02-04 17:46:15', '', 0, 'http://rek.local/?p=18', 0, 'post', '', 0),
(19, 1, '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-01-27 19:03:13', '2020-01-27 16:03:13', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:03:13', '2020-01-27 16:03:13', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-01-27 19:15:35', '2020-01-27 16:15:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес', 'address', 'publish', 'closed', 'closed', '', 'field_5e2f0c96c43f3', '', '', '2020-01-27 19:15:35', '2020-01-27 16:15:35', '', 13, 'http://rek.local/?post_type=acf-field&p=23', 3, 'acf-field', '', 0),
(24, 1, '2020-01-27 19:16:03', '2020-01-27 16:16:03', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:16:03', '2020-01-27 16:16:03', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-01-27 21:13:35', '2020-01-27 18:13:35', '', 'top-banner', '', 'inherit', 'open', 'closed', '', 'top-banner', '', '', '2020-01-27 21:13:35', '2020-01-27 18:13:35', '', 0, 'http://rek.local/wp-content/uploads/2020/01/top-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-01-28 07:56:41', '2020-01-28 04:56:41', '', 'slide1', '', 'publish', 'closed', 'closed', '', 'slide1', '', '', '2020-01-28 08:01:02', '2020-01-28 05:01:02', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=39', 0, 'slick_slider', '', 0),
(40, 1, '2020-01-28 08:14:22', '2020-01-28 05:14:22', '', 'slide 2', '', 'publish', 'closed', 'closed', '', 'slide-2', '', '', '2020-01-28 09:02:09', '2020-01-28 06:02:09', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=40', 0, 'slick_slider', '', 0),
(42, 1, '2020-01-28 14:12:56', '2020-01-28 11:12:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"category:cards-block\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Карточки', '%d0%ba%d0%b0%d1%80%d1%82%d0%be%d1%87%d0%ba%d0%b8', 'publish', 'closed', 'closed', '', 'group_5e3017134b485', '', '', '2020-01-28 14:24:43', '2020-01-28 11:24:43', '', 0, 'http://rek.local/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2020-01-28 14:26:34', '2020-01-28 11:26:34', '', 'Вывески', '', 'publish', 'open', 'open', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8', '', '', '2020-01-28 14:28:23', '2020-01-28 11:28:23', '', 0, 'http://rek.local/?p=43', 0, 'post', '', 0),
(44, 1, '2020-01-28 14:23:51', '2020-01-28 11:23:51', '', 'Вывески', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-01-28 14:23:51', '2020-01-28 11:23:51', '', 43, 'http://rek.local/2020/01/28/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-01-28 14:24:43', '2020-01-28 11:24:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Миниатюра', 'link_thumbnail', 'publish', 'closed', 'closed', '', 'field_5e3019d8daf7d', '', '', '2020-01-28 14:24:43', '2020-01-28 11:24:43', '', 42, 'http://rek.local/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(47, 1, '2020-01-28 14:26:30', '2020-01-28 11:26:30', '', 'Вывески', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-01-28 14:26:30', '2020-01-28 11:26:30', '', 43, 'http://rek.local/2020/01/28/43-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-01-28 14:26:35', '2020-01-28 11:26:35', '', 'Вывески', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-01-28 14:26:35', '2020-01-28 11:26:35', '', 43, 'http://rek.local/2020/01/28/43-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-01-28 14:28:17', '2020-01-28 11:28:17', '', 'signs', '', 'inherit', 'open', 'closed', '', 'signs', '', '', '2020-01-28 14:28:17', '2020-01-28 11:28:17', '', 43, 'http://rek.local/wp-content/uploads/2020/01/signs.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2020-01-28 14:28:23', '2020-01-28 11:28:23', '', 'Вывески', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-01-28 14:28:23', '2020-01-28 11:28:23', '', 43, 'http://rek.local/2020/01/28/43-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-01-28 14:38:53', '2020-01-28 11:38:53', '', 'Световые панели', '', 'publish', 'open', 'open', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8', '', '', '2020-01-28 14:38:55', '2020-01-28 11:38:55', '', 0, 'http://rek.local/?p=51', 0, 'post', '', 0),
(52, 1, '2020-01-28 14:38:42', '2020-01-28 11:38:42', '', 'format_print', '', 'inherit', 'open', 'closed', '', 'format_print', '', '', '2020-01-28 14:38:42', '2020-01-28 11:38:42', '', 51, 'http://rek.local/wp-content/uploads/2020/01/format_print.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2020-01-28 14:38:43', '2020-01-28 11:38:43', '', 'light_panels', '', 'inherit', 'open', 'closed', '', 'light_panels', '', '', '2020-01-28 14:38:43', '2020-01-28 11:38:43', '', 51, 'http://rek.local/wp-content/uploads/2020/01/light_panels.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-01-28 14:38:50', '2020-01-28 11:38:50', '', 'Световые панели', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-01-28 14:38:50', '2020-01-28 11:38:50', '', 51, 'http://rek.local/2020/01/28/51-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-01-28 14:38:51', '2020-01-28 11:38:51', '', 'Световые панели', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-01-28 14:38:51', '2020-01-28 11:38:51', '', 51, 'http://rek.local/2020/01/28/51-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-28 14:38:55', '2020-01-28 11:38:55', '', 'Световые панели', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-01-28 14:38:55', '2020-01-28 11:38:55', '', 51, 'http://rek.local/2020/01/28/51-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-01-28 14:41:46', '2020-01-28 11:41:46', '', 'Широкоформатная печать', '', 'publish', 'open', 'open', '', '%d1%88%d0%b8%d1%80%d0%be%d0%ba%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%82%d0%bd%d0%b0%d1%8f-%d0%bf%d0%b5%d1%87%d0%b0%d1%82%d1%8c', '', '', '2020-01-28 14:41:47', '2020-01-28 11:41:47', '', 0, 'http://rek.local/?p=57', 0, 'post', '', 0),
(58, 1, '2020-01-28 14:41:43', '2020-01-28 11:41:43', '', 'Широкоформатная печать', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-01-28 14:41:43', '2020-01-28 11:41:43', '', 57, 'http://rek.local/2020/01/28/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-01-28 14:41:43', '2020-01-28 11:41:43', '', 'Широкоформатная печать', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-01-28 14:41:43', '2020-01-28 11:41:43', '', 57, 'http://rek.local/2020/01/28/57-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-01-28 14:41:47', '2020-01-28 11:41:47', '', 'Широкоформатная печать', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2020-01-28 14:41:47', '2020-01-28 11:41:47', '', 57, 'http://rek.local/2020/01/28/57-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-01-28 14:45:09', '2020-01-28 11:45:09', '', 'ростовые фигуры', '', 'publish', 'open', 'open', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b', '', '', '2020-01-28 14:45:10', '2020-01-28 11:45:10', '', 0, 'http://rek.local/?p=61', 0, 'post', '', 0),
(62, 1, '2020-01-28 14:45:04', '2020-01-28 11:45:04', '', 'figures', '', 'inherit', 'open', 'closed', '', 'figures', '', '', '2020-01-28 14:45:04', '2020-01-28 11:45:04', '', 61, 'http://rek.local/wp-content/uploads/2020/01/figures.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2020-01-28 14:45:06', '2020-01-28 11:45:06', '', 'ростовые фигуры', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-28 14:45:06', '2020-01-28 11:45:06', '', 61, 'http://rek.local/2020/01/28/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-01-28 14:45:07', '2020-01-28 11:45:07', '', 'ростовые фигуры', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-28 14:45:07', '2020-01-28 11:45:07', '', 61, 'http://rek.local/2020/01/28/61-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-01-28 14:45:10', '2020-01-28 11:45:10', '', 'ростовые фигуры', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-01-28 14:45:10', '2020-01-28 11:45:10', '', 61, 'http://rek.local/2020/01/28/61-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-01-28 14:46:21', '2020-01-28 11:46:21', '', 'мобильные стенды', '', 'publish', 'open', 'open', '', '%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b', '', '', '2020-01-28 14:46:23', '2020-01-28 11:46:23', '', 0, 'http://rek.local/?p=66', 0, 'post', '', 0),
(67, 1, '2020-01-28 14:46:16', '2020-01-28 11:46:16', '', 'stands', '', 'inherit', 'open', 'closed', '', 'stands', '', '', '2020-01-28 14:46:16', '2020-01-28 11:46:16', '', 66, 'http://rek.local/wp-content/uploads/2020/01/stands.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2020-01-28 14:46:19', '2020-01-28 11:46:19', '', 'мобильные стенды', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-01-28 14:46:19', '2020-01-28 11:46:19', '', 66, 'http://rek.local/2020/01/28/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-01-28 14:46:19', '2020-01-28 11:46:19', '', 'мобильные стенды', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-01-28 14:46:19', '2020-01-28 11:46:19', '', 66, 'http://rek.local/2020/01/28/66-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-01-28 14:46:23', '2020-01-28 11:46:23', '', 'мобильные стенды', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-01-28 14:46:23', '2020-01-28 11:46:23', '', 66, 'http://rek.local/2020/01/28/66-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-01-28 14:47:52', '2020-01-28 11:47:52', '', 'оклейка витрин <br> офисных перегородок', '', 'publish', 'open', 'open', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba', '', '', '2020-01-28 14:48:15', '2020-01-28 11:48:15', '', 0, 'http://rek.local/?p=71', 0, 'post', '', 0),
(72, 1, '2020-01-28 14:47:47', '2020-01-28 11:47:47', '', 'window_dressing', '', 'inherit', 'open', 'closed', '', 'window_dressing', '', '', '2020-01-28 14:47:47', '2020-01-28 11:47:47', '', 71, 'http://rek.local/wp-content/uploads/2020/01/window_dressing.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2020-01-28 14:47:50', '2020-01-28 11:47:50', '', 'оклейка витрин офисных перегородок', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-28 14:47:50', '2020-01-28 11:47:50', '', 71, 'http://rek.local/2020/01/28/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-28 14:47:50', '2020-01-28 11:47:50', '', 'оклейка витрин офисных перегородок', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-28 14:47:50', '2020-01-28 11:47:50', '', 71, 'http://rek.local/2020/01/28/71-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-01-28 14:47:53', '2020-01-28 11:47:53', '', 'оклейка витрин офисных перегородок', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-28 14:47:53', '2020-01-28 11:47:53', '', 71, 'http://rek.local/2020/01/28/71-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-01-28 14:48:14', '2020-01-28 11:48:14', '', 'оклейка витрин <br> офисных перегородок', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-28 14:48:14', '2020-01-28 11:48:14', '', 71, 'http://rek.local/2020/01/28/71-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-01-28 14:48:15', '2020-01-28 11:48:15', '', 'оклейка витрин <br> офисных перегородок', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-28 14:48:15', '2020-01-28 11:48:15', '', 71, 'http://rek.local/2020/01/28/71-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-01-28 14:49:18', '2020-01-28 11:49:18', '', 'брендирование транспорта', '', 'publish', 'open', 'open', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0', '', '', '2020-01-28 14:49:19', '2020-01-28 11:49:19', '', 0, 'http://rek.local/?p=78', 0, 'post', '', 0),
(79, 1, '2020-01-28 14:49:12', '2020-01-28 11:49:12', '', 'auto_branding', '', 'inherit', 'open', 'closed', '', 'auto_branding', '', '', '2020-01-28 14:49:12', '2020-01-28 11:49:12', '', 78, 'http://rek.local/wp-content/uploads/2020/01/auto_branding.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2020-01-28 14:49:16', '2020-01-28 11:49:16', '', 'брендирование транспорта', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-28 14:49:16', '2020-01-28 11:49:16', '', 78, 'http://rek.local/2020/01/28/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-01-28 14:49:16', '2020-01-28 11:49:16', '', 'брендирование транспорта', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-28 14:49:16', '2020-01-28 11:49:16', '', 78, 'http://rek.local/2020/01/28/78-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-01-28 14:49:19', '2020-01-28 11:49:19', '', 'брендирование транспорта', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-28 14:49:19', '2020-01-28 11:49:19', '', 78, 'http://rek.local/2020/01/28/78-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-01-28 14:50:35', '2020-01-28 11:50:35', '', 'инфостенды <br> режимы работы', '', 'publish', 'open', 'open', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-%d1%80%d0%b5%d0%b6%d0%b8%d0%bc%d1%8b-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 0, 'http://rek.local/?p=83', 0, 'post', '', 0),
(84, 1, '2020-01-28 14:50:30', '2020-01-28 11:50:30', '', 'infostands', '', 'inherit', 'open', 'closed', '', 'infostands', '', '', '2020-01-28 14:50:30', '2020-01-28 11:50:30', '', 83, 'http://rek.local/wp-content/uploads/2020/01/infostands.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2020-01-28 14:50:33', '2020-01-28 11:50:33', '', 'инфостенды <br> режимы работы', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-01-28 14:50:33', '2020-01-28 11:50:33', '', 83, 'http://rek.local/2020/01/28/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-01-28 14:50:33', '2020-01-28 11:50:33', '', 'инфостенды <br> режимы работы', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-01-28 14:50:33', '2020-01-28 11:50:33', '', 83, 'http://rek.local/2020/01/28/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 'инфостенды <br> режимы работы', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 83, 'http://rek.local/2020/01/28/83-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-01-30 14:52:15', '2020-01-30 11:52:15', '', 'Каталог рекламы', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%82%d0%b0%d0%bb%d0%be%d0%b3-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2020-01-30 14:52:07', '2020-01-30 11:52:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'publish', 'closed', 'closed', '', 'group_5e32c3151260c', '', '', '2020-01-30 15:03:36', '2020-01-30 12:03:36', '', 0, 'http://rsht.local/?post_type=acf-field-group&#038;p=92', 0, 'acf-field-group', '', 0),
(97, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Акции', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%ba%d1%86%d0%b8%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=97', 43, 'nav_menu_item', '', 0),
(98, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Услуги', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=98', 44, 'nav_menu_item', '', 0),
(100, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Портфолио', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=100', 46, 'nav_menu_item', '', 0),
(101, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Оплата и доставка', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0-%d0%b8-%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=101', 47, 'nav_menu_item', '', 0),
(102, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Статьи', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=102', 48, 'nav_menu_item', '', 0),
(104, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Разделитель', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d0%b8%d1%82%d0%b5%d0%bb%d1%8c', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=104', 2, 'nav_menu_item', '', 0),
(105, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Разделитель', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-2', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=105', 15, 'nav_menu_item', '', 0),
(106, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Разделитель', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-3', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=106', 29, 'nav_menu_item', '', 0),
(107, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Вывески', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=107', 3, 'nav_menu_item', '', 0),
(108, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Фотозона', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%b7%d0%be%d0%bd%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=108', 8, 'nav_menu_item', '', 0),
(109, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Пресс волл', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b5%d1%81%d1%81-%d0%b2%d0%be%d0%bb%d0%bb', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=109', 9, 'nav_menu_item', '', 0),
(110, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Промостойки', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be%d0%bc%d0%be%d1%81%d1%82%d0%be%d0%b9%d0%ba%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=110', 10, 'nav_menu_item', '', 0),
(111, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Баннерные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=111', 11, 'nav_menu_item', '', 0),
(112, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Ролл ап', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d0%bb%d0%bb-%d0%b0%d0%bf', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=112', 12, 'nav_menu_item', '', 0),
(113, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Аренда рекламных конструкций', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%bd%d1%8b%d1%85-%d0%ba%d0%be%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d0%b9', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=113', 13, 'nav_menu_item', '', 0),
(114, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Световые панели', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=114', 16, 'nav_menu_item', '', 0),
(115, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Широкоформатная печать', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%b8%d1%80%d0%be%d0%ba%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%82%d0%bd%d0%b0%d1%8f-%d0%bf%d0%b5%d1%87%d0%b0%d1%82%d1%8c', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=115', 20, 'nav_menu_item', '', 0),
(116, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Лазерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%b7%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=116', 25, 'nav_menu_item', '', 0),
(117, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Ростовые фигуры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=117', 26, 'nav_menu_item', '', 0),
(118, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Брендирование транспорта', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=118', 27, 'nav_menu_item', '', 0),
(119, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Оклейка витрин и офисных перегородок', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=119', 28, 'nav_menu_item', '', 0),
(120, 1, '2020-01-30 15:12:35', '2020-01-30 12:12:35', '', 'Штендеры', '', 'publish', 'closed', 'closed', '', '%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=120', 30, 'nav_menu_item', '', 0),
(121, 1, '2020-01-30 15:12:35', '2020-01-30 12:12:35', '', 'Картины для дома и офиса', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b-%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=121', 34, 'nav_menu_item', '', 0),
(122, 1, '2020-01-30 15:12:35', '2020-01-30 12:12:35', '', 'Информационные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=122', 38, 'nav_menu_item', '', 0),
(123, 1, '2020-01-30 15:12:36', '2020-01-30 12:12:36', '', 'Разработка дизайн-макетов', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%ba%d0%b0-%d0%b4%d0%b8%d0%b7%d0%b0%d0%b9%d0%bd-%d0%bc%d0%b0%d0%ba%d0%b5%d1%82%d0%be%d0%b2', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=123', 41, 'nav_menu_item', '', 0),
(124, 1, '2020-01-30 15:12:36', '2020-01-30 12:12:36', '', 'Материалы для рекламы и творчества', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%82%d0%b5%d1%80%d0%b8%d0%b0%d0%bb%d1%8b-%d0%b4%d0%bb%d1%8f-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d1%8b-%d0%b8-%d1%82%d0%b2%d0%be%d1%80%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=124', 42, 'nav_menu_item', '', 0),
(125, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Световые объемные буквы для уличных вывесок', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%be%d0%b1%d1%8a%d0%b5%d0%bc%d0%bd%d1%8b%d0%b5-%d0%b1%d1%83%d0%ba%d0%b2%d1%8b-%d0%b4%d0%bb%d1%8f-%d1%83%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d1%85-%d0%b2', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=125', 4, 'nav_menu_item', '', 0),
(126, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Интерьерные вывески', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d1%8c%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=126', 5, 'nav_menu_item', '', 0),
(127, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Аптечные кресты', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bf%d1%82%d0%b5%d1%87%d0%bd%d1%8b%d0%b5-%d0%ba%d1%80%d0%b5%d1%81%d1%82%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=127', 6, 'nav_menu_item', '', 0),
(128, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Панель-кронштейны', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d1%8c-%d0%ba%d1%80%d0%be%d0%bd%d1%88%d1%82%d0%b5%d0%b9%d0%bd%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=128', 7, 'nav_menu_item', '', 0),
(129, 1, '2020-01-30 15:17:43', '2020-01-30 12:17:43', '', 'Магнитные', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%bd%d0%b8%d1%82%d0%bd%d1%8b%d0%b5', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=129', 17, 'nav_menu_item', '', 0),
(130, 1, '2020-01-30 15:17:43', '2020-01-30 12:17:43', '', 'С клик профилем', '', 'publish', 'closed', 'closed', '', '%d1%81-%d0%ba%d0%bb%d0%b8%d0%ba-%d0%bf%d1%80%d0%be%d1%84%d0%b8%d0%bb%d0%b5%d0%bc', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=130', 18, 'nav_menu_item', '', 0),
(131, 1, '2020-01-30 15:17:43', '2020-01-30 12:17:43', '', 'Безрамочные', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b5%d0%b7%d1%80%d0%b0%d0%bc%d0%be%d1%87%d0%bd%d1%8b%d0%b5', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=131', 19, 'nav_menu_item', '', 0),
(132, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'На баннере, плёнке, фотобумаге', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0-%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%b5-%d0%bf%d0%bb%d1%91%d0%bd%d0%ba%d0%b5-%d1%84%d0%be%d1%82%d0%be%d0%b1%d1%83%d0%bc%d0%b0%d0%b3%d0%b5', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=132', 21, 'nav_menu_item', '', 0),
(133, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'Ламинация и прикатка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%bc%d0%b8%d0%bd%d0%b0%d1%86%d0%b8%d1%8f-%d0%b8-%d0%bf%d1%80%d0%b8%d0%ba%d0%b0%d1%82%d0%ba%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=133', 22, 'nav_menu_item', '', 0),
(134, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'Плоттерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%be%d1%82%d1%82%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=134', 23, 'nav_menu_item', '', 0),
(135, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'Плакаты и постеры', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%b0%d0%ba%d0%b0%d1%82%d1%8b-%d0%b8-%d0%bf%d0%be%d1%81%d1%82%d0%b5%d1%80%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=135', 24, 'nav_menu_item', '', 0),
(136, 1, '2020-01-30 15:20:00', '2020-01-30 12:20:00', '', 'Прямой и круглый', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d1%8f%d0%bc%d0%be%d0%b9-%d0%b8-%d0%ba%d1%80%d1%83%d0%b3%d0%bb%d1%8b%d0%b9', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=136', 31, 'nav_menu_item', '', 0),
(137, 1, '2020-01-30 15:20:00', '2020-01-30 12:20:00', '', 'Меловой и маркерный', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d0%bb%d0%be%d0%b2%d0%be%d0%b9-%d0%b8-%d0%bc%d0%b0%d1%80%d0%ba%d0%b5%d1%80%d0%bd%d1%8b%d0%b9', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=137', 32, 'nav_menu_item', '', 0),
(138, 1, '2020-01-30 15:20:00', '2020-01-30 12:20:00', '', 'Нестандартные штендеры', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b5%d1%81%d1%82%d0%b0%d0%bd%d0%b4%d0%b0%d1%80%d1%82%d0%bd%d1%8b%d0%b5-%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=138', 33, 'nav_menu_item', '', 0),
(139, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Модульные картины', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d0%b4%d1%83%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=139', 35, 'nav_menu_item', '', 0),
(140, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Для дома', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=140', 36, 'nav_menu_item', '', 0),
(141, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Для офисов, кафе и ресторанов', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bb%d1%8f-%d0%be%d1%84%d0%b8%d1%81%d0%be%d0%b2-%d0%ba%d0%b0%d1%84%d0%b5-%d0%b8-%d1%80%d0%b5%d1%81%d1%82%d0%be%d1%80%d0%b0%d0%bd%d0%be%d0%b2', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=141', 37, 'nav_menu_item', '', 0),
(142, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'С плоскими и объемными карманами', '', 'publish', 'closed', 'closed', '', '%d1%81-%d0%bf%d0%bb%d0%be%d1%81%d0%ba%d0%b8%d0%bc%d0%b8-%d0%b8-%d0%be%d0%b1%d1%8a%d0%b5%d0%bc%d0%bd%d1%8b%d0%bc%d0%b8-%d0%ba%d0%b0%d1%80%d0%bc%d0%b0%d0%bd%d0%b0%d0%bc%d0%b8', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=142', 39, 'nav_menu_item', '', 0),
(143, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Режим работы', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d0%b6%d0%b8%d0%bc-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=143', 40, 'nav_menu_item', '', 0),
(144, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Вывески', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=144', 1, 'nav_menu_item', '', 0),
(145, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Световые панели', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=145', 6, 'nav_menu_item', '', 0),
(146, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Широкоформатная печать', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%b8%d1%80%d0%be%d0%ba%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%82%d0%bd%d0%b0%d1%8f-%d0%bf%d0%b5%d1%87%d0%b0%d1%82%d1%8c-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=146', 10, 'nav_menu_item', '', 0),
(147, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Пресс волл', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b5%d1%81%d1%81-%d0%b2%d0%be%d0%bb%d0%bb-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=147', 17, 'nav_menu_item', '', 0),
(148, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Фотозона', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%b7%d0%be%d0%bd%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=148', 18, 'nav_menu_item', '', 0),
(149, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Баннерные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=149', 19, 'nav_menu_item', '', 0),
(150, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Ролл ап', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d0%bb%d0%bb-%d0%b0%d0%bf-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=150', 20, 'nav_menu_item', '', 0),
(151, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Ростовые фигуры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=151', 21, 'nav_menu_item', '', 0),
(152, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Брендирование транспорта', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=152', 22, 'nav_menu_item', '', 0),
(153, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Оклейка витрин и офисных перегородок', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=153', 23, 'nav_menu_item', '', 0),
(154, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Картины для дома и офиса', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b-%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=154', 28, 'nav_menu_item', '', 0),
(155, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Лазерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%b7%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=155', 15, 'nav_menu_item', '', 0),
(156, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Информационные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=156', 32, 'nav_menu_item', '', 0),
(157, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Разработка дизайн-макетов', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%ba%d0%b0-%d0%b4%d0%b8%d0%b7%d0%b0%d0%b9%d0%bd-%d0%bc%d0%b0%d0%ba%d0%b5%d1%82%d0%be%d0%b2-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=157', 35, 'nav_menu_item', '', 0),
(158, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Услуги', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=158', 36, 'nav_menu_item', '', 0),
(160, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Портфолио', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=160', 38, 'nav_menu_item', '', 0),
(161, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Оплата и доставка', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0-%d0%b8-%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=161', 39, 'nav_menu_item', '', 0),
(162, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Статьи', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=162', 40, 'nav_menu_item', '', 0),
(166, 1, '2020-02-02 15:04:58', '2020-02-02 12:04:58', '', 'velostrana', '', 'publish', 'closed', 'closed', '', 'velostrana', '', '', '2020-02-02 15:04:58', '2020-02-02 12:04:58', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=166', 0, 'slick_slider', '', 0),
(167, 1, '2020-02-02 15:04:36', '2020-02-02 12:04:36', '', 'azimut', '', 'inherit', 'open', 'closed', '', 'azimut', '', '', '2020-02-02 15:04:36', '2020-02-02 12:04:36', '', 166, 'http://rek.local/wp-content/uploads/2020/02/azimut.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2020-02-02 15:04:36', '2020-02-02 12:04:36', '', 'botsadmgu', '', 'inherit', 'open', 'closed', '', 'botsadmgu', '', '', '2020-02-02 15:04:36', '2020-02-02 12:04:36', '', 166, 'http://rek.local/wp-content/uploads/2020/02/botsadmgu.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2020-02-02 15:04:38', '2020-02-02 12:04:38', '', 'doshirak', '', 'inherit', 'open', 'closed', '', 'doshirak', '', '', '2020-02-02 15:04:38', '2020-02-02 12:04:38', '', 166, 'http://rek.local/wp-content/uploads/2020/02/doshirak.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2020-02-02 15:04:39', '2020-02-02 12:04:39', '', 'eapteka-logo', '', 'inherit', 'open', 'closed', '', 'eapteka-logo', '', '', '2020-02-02 15:04:39', '2020-02-02 12:04:39', '', 166, 'http://rek.local/wp-content/uploads/2020/02/eapteka-logo.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(171, 1, '2020-02-02 15:04:39', '2020-02-02 12:04:39', '', 'essence', '', 'inherit', 'open', 'closed', '', 'essence', '', '', '2020-02-02 15:04:39', '2020-02-02 12:04:39', '', 166, 'http://rek.local/wp-content/uploads/2020/02/essence.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2020-02-02 15:04:40', '2020-02-02 12:04:40', '', 'inmarko', '', 'inherit', 'open', 'closed', '', 'inmarko', '', '', '2020-02-02 15:04:40', '2020-02-02 12:04:40', '', 166, 'http://rek.local/wp-content/uploads/2020/02/inmarko.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2020-02-02 15:04:40', '2020-02-02 12:04:40', '', 'ladycollection', '', 'inherit', 'open', 'closed', '', 'ladycollection', '', '', '2020-02-02 15:04:40', '2020-02-02 12:04:40', '', 166, 'http://rek.local/wp-content/uploads/2020/02/ladycollection.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2020-02-02 15:04:41', '2020-02-02 12:04:41', '', 'ligastavok', '', 'inherit', 'open', 'closed', '', 'ligastavok', '', '', '2020-02-02 15:04:41', '2020-02-02 12:04:41', '', 166, 'http://rek.local/wp-content/uploads/2020/02/ligastavok.png', 0, 'attachment', 'image/png', 0),
(175, 1, '2020-02-02 15:04:41', '2020-02-02 12:04:41', '', 'maytoni', '', 'inherit', 'open', 'closed', '', 'maytoni', '', '', '2020-02-02 15:04:41', '2020-02-02 12:04:41', '', 166, 'http://rek.local/wp-content/uploads/2020/02/maytoni.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2020-02-02 15:04:41', '2020-02-02 12:04:41', '', 'mosgortrance', '', 'inherit', 'open', 'closed', '', 'mosgortrance', '', '', '2020-02-02 15:04:41', '2020-02-02 12:04:41', '', 166, 'http://rek.local/wp-content/uploads/2020/02/mosgortrance.png', 0, 'attachment', 'image/png', 0),
(177, 1, '2020-02-02 15:04:42', '2020-02-02 12:04:42', '', 'sunlight', '', 'inherit', 'open', 'closed', '', 'sunlight', '', '', '2020-02-02 15:04:42', '2020-02-02 12:04:42', '', 166, 'http://rek.local/wp-content/uploads/2020/02/sunlight.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2020-02-02 15:04:42', '2020-02-02 12:04:42', '', 'velostrana-logo', '', 'inherit', 'open', 'closed', '', 'velostrana-logo', '', '', '2020-02-02 15:04:42', '2020-02-02 12:04:42', '', 166, 'http://rek.local/wp-content/uploads/2020/02/velostrana-logo.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2020-02-02 15:06:44', '2020-02-02 12:06:44', '', 'sunlight', '', 'publish', 'closed', 'closed', '', 'sunlight', '', '', '2020-02-02 15:07:18', '2020-02-02 12:07:18', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=179', 0, 'slick_slider', '', 0),
(180, 1, '2020-02-02 15:07:02', '2020-02-02 12:07:02', '', 'mostransport', '', 'publish', 'closed', 'closed', '', 'mostransport', '', '', '2020-02-02 15:07:02', '2020-02-02 12:07:02', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=180', 0, 'slick_slider', '', 0),
(181, 1, '2020-02-02 15:35:55', '2020-02-02 12:35:55', '', 'maytoni', '', 'publish', 'closed', 'closed', '', 'maytoni', '', '', '2020-02-02 15:35:55', '2020-02-02 12:35:55', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=181', 0, 'slick_slider', '', 0),
(182, 1, '2020-02-02 15:36:09', '2020-02-02 12:36:09', '', 'liga', '', 'publish', 'closed', 'closed', '', 'liga', '', '', '2020-02-02 15:36:09', '2020-02-02 12:36:09', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=182', 0, 'slick_slider', '', 0),
(183, 1, '2020-02-02 15:36:23', '2020-02-02 12:36:23', '', 'lady', '', 'publish', 'closed', 'closed', '', 'lady', '', '', '2020-02-02 15:36:23', '2020-02-02 12:36:23', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=183', 0, 'slick_slider', '', 0),
(184, 1, '2020-02-02 15:36:40', '2020-02-02 12:36:40', '', 'inmarko', '', 'publish', 'closed', 'closed', '', 'inmarko', '', '', '2020-02-02 15:36:43', '2020-02-02 12:36:43', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=184', 0, 'slick_slider', '', 0),
(185, 1, '2020-02-03 15:02:14', '2020-02-03 12:02:14', '<div class=\"feedback-field\">\r\n[text* feedback-name placeholder \"Имя\"]\r\n</div>\r\n<div class=\"feedback-field\">\r\n[tel* feedback-phone placeholder \"Телефон\"]\r\n</div>\r\n<div class=\"feedback-submit\">\r\n[submit value \"Перезвоните мне\" ]\r\n</div>\r\n<div class=\"private_term_agree\">\r\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\r\n</div>\n1\nRekIdea. Запрос звонка\nRek <info@rekidea.ru>\nrekidea@yandex.ru\nИмя: [feedback-name]\r\nТелефон: [feedback-phone]\nReply-To: <info@rekidea.ru>\n\n\n\n\nRek \"[your-subject]\"\nRek <wordpress@rek.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Rek (http://rek.local)\nReply-To: swd.admin@mail.ru\n\n\n\nСпасибо. Ваше сообщение отправлено. Менеджер свяжется с вами в ближайшее время\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'phone-feedback-top-main', '', 'publish', 'closed', 'closed', '', 'phone-feedback-top-main', '', '', '2020-02-19 20:23:20', '2020-02-19 17:23:20', '', 0, 'http://rek.local/?post_type=wpcf7_contact_form&#038;p=185', 0, 'wpcf7_contact_form', '', 0),
(187, 1, '2020-02-04 20:02:12', '2020-02-04 17:02:12', '', 'watermark-png', '', 'inherit', 'open', 'closed', '', 'watermark-png', '', '', '2020-02-04 20:02:12', '2020-02-04 17:02:12', '', 0, 'http://rek.local/wp-content/uploads/2020/02/watermark-png.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2020-02-04 20:02:30', '2020-02-04 17:02:30', '', 'watermark-png', '', 'inherit', 'open', 'closed', '', 'watermark-png-2', '', '', '2020-02-04 20:02:30', '2020-02-04 17:02:30', '', 0, 'http://rek.local/wp-content/uploads/2020/02/watermark-png-1.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2020-02-04 20:02:49', '2020-02-04 17:02:49', '', 'watermark-png', '', 'inherit', 'open', 'closed', '', 'watermark-png-3', '', '', '2020-02-04 20:02:49', '2020-02-04 17:02:49', '', 0, 'http://rek.local/wp-content/uploads/2020/02/watermark-png-2.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2020-02-04 20:04:55', '2020-02-04 17:04:55', '', '1_800x600-Deutz', '', 'inherit', 'open', 'closed', '', '1_800x600-deutz', '', '', '2020-02-04 20:11:53', '2020-02-04 17:11:53', '', 18, 'http://rek.local/wp-content/uploads/2020/02/1_800x600-Deutz.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2020-02-04 20:10:53', '2020-02-04 17:10:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category:common\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Картинки портфолио', '%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d0%ba%d0%b8-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be', 'publish', 'closed', 'closed', '', 'group_5e39a521c94a8', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 0, 'http://rek.local/?post_type=acf-field-group&#038;p=191', 0, 'acf-field-group', '', 0),
(192, 1, '2020-02-04 20:10:53', '2020-02-04 17:10:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image1', 'portfolio-image1', 'publish', 'closed', 'closed', '', 'field_5e39a52fa18d5', '', '', '2020-02-04 20:21:55', '2020-02-04 17:21:55', '', 191, 'http://rek.local/?post_type=acf-field&#038;p=192', 0, 'acf-field', '', 0),
(193, 1, '2020-02-04 20:10:53', '2020-02-04 17:10:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image2', 'portfolio-image2', 'publish', 'closed', 'closed', '', 'field_5e39a56fa18d7', '', '', '2020-02-04 20:10:53', '2020-02-04 17:10:53', '', 191, 'http://rek.local/?post_type=acf-field&p=193', 1, 'acf-field', '', 0),
(194, 1, '2020-02-04 20:10:53', '2020-02-04 17:10:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image3', 'portfolio-image3', 'publish', 'closed', 'closed', '', 'field_5e39a57fa18d8', '', '', '2020-02-04 20:10:53', '2020-02-04 17:10:53', '', 191, 'http://rek.local/?post_type=acf-field&p=194', 2, 'acf-field', '', 0),
(195, 1, '2020-02-04 20:11:53', '2020-02-04 17:11:53', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-02-04 20:11:53', '2020-02-04 17:11:53', '', 18, 'http://rek.local/2020/02/04/18-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2020-02-04 20:33:43', '2020-02-04 17:33:43', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-02-04 20:33:43', '2020-02-04 17:33:43', '', 18, 'http://rek.local/2020/02/04/18-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2020-02-04 20:39:39', '2020-02-04 17:39:39', '', '1_800x600-Eapteka-2', '', 'inherit', 'open', 'closed', '', '1_800x600-eapteka-2', '', '', '2020-02-04 20:39:39', '2020-02-04 17:39:39', '', 18, 'http://rek.local/wp-content/uploads/2020/01/1_800x600-Eapteka-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2020-02-04 20:40:07', '2020-02-04 17:40:07', '', '1_800x600-Akvarel', '', 'inherit', 'open', 'closed', '', '1_800x600-akvarel', '', '', '2020-02-04 20:40:07', '2020-02-04 17:40:07', '', 18, 'http://rek.local/wp-content/uploads/2020/01/1_800x600-Akvarel.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2020-02-04 20:40:17', '2020-02-04 17:40:17', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-02-04 20:40:17', '2020-02-04 17:40:17', '', 18, 'http://rek.local/2020/02/04/18-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2020-02-04 20:42:06', '2020-02-04 17:42:06', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-02-04 20:42:06', '2020-02-04 17:42:06', '', 18, 'http://rek.local/2020/02/04/18-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2020-02-04 20:44:46', '2020-02-04 17:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image4', 'portfolio-image4', 'publish', 'closed', 'closed', '', 'field_5e39acfcc35a3', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 191, 'http://rek.local/?post_type=acf-field&p=202', 3, 'acf-field', '', 0),
(203, 1, '2020-02-04 20:44:46', '2020-02-04 17:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image5', 'portfolio-image5', 'publish', 'closed', 'closed', '', 'field_5e39ad0bc35a8', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 191, 'http://rek.local/?post_type=acf-field&p=203', 4, 'acf-field', '', 0),
(204, 1, '2020-02-04 20:44:46', '2020-02-04 17:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image6', 'portfolio-image6', 'publish', 'closed', 'closed', '', 'field_5e39ad0bc35a7', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 191, 'http://rek.local/?post_type=acf-field&p=204', 5, 'acf-field', '', 0),
(205, 1, '2020-02-04 20:44:46', '2020-02-04 17:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image7', 'portfolio-image7', 'publish', 'closed', 'closed', '', 'field_5e39ad0ac35a6', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 191, 'http://rek.local/?post_type=acf-field&p=205', 6, 'acf-field', '', 0),
(206, 1, '2020-02-04 20:44:46', '2020-02-04 17:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image8', 'portfolio-image8', 'publish', 'closed', 'closed', '', 'field_5e39ad09c35a5', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 191, 'http://rek.local/?post_type=acf-field&p=206', 7, 'acf-field', '', 0),
(207, 1, '2020-02-04 20:44:46', '2020-02-04 17:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portfolio-image9', 'portfolio-image9', 'publish', 'closed', 'closed', '', 'field_5e39ad08c35a4', '', '', '2020-02-04 20:44:46', '2020-02-04 17:44:46', '', 191, 'http://rek.local/?post_type=acf-field&p=207', 8, 'acf-field', '', 0),
(208, 1, '2020-02-04 20:45:04', '2020-02-04 17:45:04', '', '600x600-bethoven', '', 'inherit', 'open', 'closed', '', '600x600-bethoven', '', '', '2020-02-04 20:45:04', '2020-02-04 17:45:04', '', 18, 'http://rek.local/wp-content/uploads/2020/01/600x600-bethoven.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2020-02-04 20:45:20', '2020-02-04 17:45:20', '', '600x600milk', '', 'inherit', 'open', 'closed', '', '600x600milk', '', '', '2020-02-04 20:45:20', '2020-02-04 17:45:20', '', 18, 'http://rek.local/wp-content/uploads/2020/01/600x600milk.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2020-02-04 20:45:33', '2020-02-04 17:45:33', '', '600x600 milk2', '', 'inherit', 'open', 'closed', '', '600x600-milk2', '', '', '2020-02-04 20:45:33', '2020-02-04 17:45:33', '', 18, 'http://rek.local/wp-content/uploads/2020/01/600x600-milk2.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2020-02-04 20:45:45', '2020-02-04 17:45:45', '', '600x600-Rostovaya', '', 'inherit', 'open', 'closed', '', '600x600-rostovaya', '', '', '2020-02-04 20:45:45', '2020-02-04 17:45:45', '', 18, 'http://rek.local/wp-content/uploads/2020/01/600x600-Rostovaya.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2020-02-04 20:45:58', '2020-02-04 17:45:58', '', '600x600-cofeport', '', 'inherit', 'open', 'closed', '', '600x600-cofeport', '', '', '2020-02-04 20:45:58', '2020-02-04 17:45:58', '', 18, 'http://rek.local/wp-content/uploads/2020/01/600x600-cofeport.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2020-02-04 20:46:09', '2020-02-04 17:46:09', '', '600x600-krest', '', 'inherit', 'open', 'closed', '', '600x600-krest', '', '', '2020-02-04 20:46:09', '2020-02-04 17:46:09', '', 18, 'http://rek.local/wp-content/uploads/2020/01/600x600-krest.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2020-02-04 20:46:15', '2020-02-04 17:46:15', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-02-04 20:46:15', '2020-02-04 17:46:15', '', 18, 'http://rek.local/2020/02/04/18-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2020-02-05 09:32:32', '2020-02-05 06:32:32', '', 'Лазерная резка', '', 'publish', 'closed', 'closed', '', 'laser', '', '', '2020-02-05 09:32:32', '2020-02-05 06:32:32', '', 0, 'http://rek.local/?page_id=216', 0, 'page', '', 0),
(217, 1, '2020-02-05 09:29:41', '2020-02-05 06:29:41', '', 'Лазерная резка', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2020-02-05 09:29:41', '2020-02-05 06:29:41', '', 216, 'http://rek.local/2020/02/05/216-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2020-02-12 22:13:06', '2020-02-12 19:13:06', '', 'Форма обратной связи', '', 'publish', 'closed', 'closed', '', 'feedback', '', '', '2020-02-12 22:13:06', '2020-02-12 19:13:06', '', 0, 'http://rek.local/?page_id=219', 0, 'page', '', 0),
(220, 1, '2020-02-09 13:23:00', '2020-02-09 10:23:00', '', 'Форма обратной связи', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2020-02-09 13:23:00', '2020-02-09 10:23:00', '', 219, 'http://rek.local/2020/02/09/219-revision-v1/', 0, 'revision', '', 0),
(226, 1, '2020-02-13 08:58:07', '2020-02-13 05:58:07', '', '1_800x600-standART', '', 'inherit', 'open', 'closed', '', '1_800x600-standart', '', '', '2020-02-13 08:58:07', '2020-02-13 05:58:07', '', 0, 'http://rek.local/wp-content/uploads/2020/02/1_800x600-standART.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2020-02-13 08:58:07', '2020-02-13 05:58:07', '', '1_800x600-lion6', '', 'inherit', 'open', 'closed', '', '1_800x600-lion6', '', '', '2020-02-13 08:58:24', '2020-02-13 05:58:24', '', 0, 'http://rek.local/wp-content/uploads/2020/02/1_800x600-lion6.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2020-02-13 08:58:08', '2020-02-13 05:58:08', '', '1_800x600-lion5', '', 'inherit', 'open', 'closed', '', '1_800x600-lion5', '', '', '2020-02-13 08:58:08', '2020-02-13 05:58:08', '', 0, 'http://rek.local/wp-content/uploads/2020/02/1_800x600-lion5.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2020-02-13 08:58:08', '2020-02-13 05:58:08', '', '1_800x600-maria_poz', '', 'inherit', 'open', 'closed', '', '1_800x600-maria_poz', '', '', '2020-02-13 08:58:08', '2020-02-13 05:58:08', '', 0, 'http://rek.local/wp-content/uploads/2020/02/1_800x600-maria_poz.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2020-02-13 08:58:09', '2020-02-13 05:58:09', '', '11_800x600_infostend6', '', 'inherit', 'open', 'closed', '', '11_800x600_infostend6', '', '', '2020-02-13 08:58:09', '2020-02-13 05:58:09', '', 0, 'http://rek.local/wp-content/uploads/2020/02/11_800x600_infostend6.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2020-02-13 10:22:38', '2020-02-13 07:22:38', '', 'Световые объемные буквы для уличных вывесок', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%be%d0%b1%d1%8a%d0%b5%d0%bc%d0%bd%d1%8b%d0%b5-%d0%b1%d1%83%d0%ba%d0%b2%d1%8b-%d0%b4%d0%bb%d1%8f-%d1%83%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d1%85-%d0%b2-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=232', 2, 'nav_menu_item', '', 0),
(233, 1, '2020-02-13 10:22:38', '2020-02-13 07:22:38', '', 'Интерьерные вывески', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d1%8c%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=233', 3, 'nav_menu_item', '', 0),
(234, 1, '2020-02-13 10:22:38', '2020-02-13 07:22:38', '', 'Аптечные кресты', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bf%d1%82%d0%b5%d1%87%d0%bd%d1%8b%d0%b5-%d0%ba%d1%80%d0%b5%d1%81%d1%82%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=234', 4, 'nav_menu_item', '', 0),
(235, 1, '2020-02-13 10:22:38', '2020-02-13 07:22:38', '', 'Панель-кронштейны', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d1%8c-%d0%ba%d1%80%d0%be%d0%bd%d1%88%d1%82%d0%b5%d0%b9%d0%bd%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=235', 5, 'nav_menu_item', '', 0),
(236, 1, '2020-02-13 10:24:38', '2020-02-13 07:24:38', '', 'Магнитные', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%bd%d0%b8%d1%82%d0%bd%d1%8b%d0%b5-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=236', 7, 'nav_menu_item', '', 0),
(237, 1, '2020-02-13 10:24:38', '2020-02-13 07:24:38', '', 'С клик профилем', '', 'publish', 'closed', 'closed', '', '%d1%81-%d0%ba%d0%bb%d0%b8%d0%ba-%d0%bf%d1%80%d0%be%d1%84%d0%b8%d0%bb%d0%b5%d0%bc-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=237', 8, 'nav_menu_item', '', 0),
(238, 1, '2020-02-13 10:24:38', '2020-02-13 07:24:38', '', 'Безрамочные', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b5%d0%b7%d1%80%d0%b0%d0%bc%d0%be%d1%87%d0%bd%d1%8b%d0%b5-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=238', 9, 'nav_menu_item', '', 0),
(239, 1, '2020-02-13 10:25:58', '2020-02-13 07:25:58', '', 'На баннере, плёнке, фотобумаге', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0-%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%b5-%d0%bf%d0%bb%d1%91%d0%bd%d0%ba%d0%b5-%d1%84%d0%be%d1%82%d0%be%d0%b1%d1%83%d0%bc%d0%b0%d0%b3%d0%b5-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=239', 11, 'nav_menu_item', '', 0),
(240, 1, '2020-02-13 10:25:58', '2020-02-13 07:25:58', '', 'Ламинация и прикатка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%bc%d0%b8%d0%bd%d0%b0%d1%86%d0%b8%d1%8f-%d0%b8-%d0%bf%d1%80%d0%b8%d0%ba%d0%b0%d1%82%d0%ba%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=240', 12, 'nav_menu_item', '', 0),
(241, 1, '2020-02-13 10:25:58', '2020-02-13 07:25:58', '', 'Плоттерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%be%d1%82%d1%82%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=241', 13, 'nav_menu_item', '', 0),
(242, 1, '2020-02-13 10:25:58', '2020-02-13 07:25:58', '', 'Плакаты и постеры', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%b0%d0%ba%d0%b0%d1%82%d1%8b-%d0%b8-%d0%bf%d0%be%d1%81%d1%82%d0%b5%d1%80%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=242', 14, 'nav_menu_item', '', 0),
(243, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Штендеры', '', 'publish', 'closed', 'closed', '', '%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=243', 24, 'nav_menu_item', '', 0),
(244, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Прямой и круглый', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d1%8f%d0%bc%d0%be%d0%b9-%d0%b8-%d0%ba%d1%80%d1%83%d0%b3%d0%bb%d1%8b%d0%b9-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=244', 25, 'nav_menu_item', '', 0),
(245, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Меловой и маркерный', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d0%bb%d0%be%d0%b2%d0%be%d0%b9-%d0%b8-%d0%bc%d0%b0%d1%80%d0%ba%d0%b5%d1%80%d0%bd%d1%8b%d0%b9-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=245', 26, 'nav_menu_item', '', 0),
(246, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Нестандартные штендеры', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b5%d1%81%d1%82%d0%b0%d0%bd%d0%b4%d0%b0%d1%80%d1%82%d0%bd%d1%8b%d0%b5-%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=246', 27, 'nav_menu_item', '', 0),
(247, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Модульные картины', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d0%b4%d1%83%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=247', 29, 'nav_menu_item', '', 0),
(248, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Для дома', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=248', 30, 'nav_menu_item', '', 0),
(249, 1, '2020-02-13 10:28:23', '2020-02-13 07:28:23', '', 'Для офисов, кафе и ресторанов', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bb%d1%8f-%d0%be%d1%84%d0%b8%d1%81%d0%be%d0%b2-%d0%ba%d0%b0%d1%84%d0%b5-%d0%b8-%d1%80%d0%b5%d1%81%d1%82%d0%be%d1%80%d0%b0%d0%bd%d0%be%d0%b2-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=249', 31, 'nav_menu_item', '', 0),
(250, 1, '2020-02-13 10:29:02', '2020-02-13 07:29:02', '', 'С плоскими и объемными карманами', '', 'publish', 'closed', 'closed', '', '%d1%81-%d0%bf%d0%bb%d0%be%d1%81%d0%ba%d0%b8%d0%bc%d0%b8-%d0%b8-%d0%be%d0%b1%d1%8a%d0%b5%d0%bc%d0%bd%d1%8b%d0%bc%d0%b8-%d0%ba%d0%b0%d1%80%d0%bc%d0%b0%d0%bd%d0%b0%d0%bc%d0%b8-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=250', 33, 'nav_menu_item', '', 0),
(251, 1, '2020-02-13 10:29:02', '2020-02-13 07:29:02', '', 'Режим работы', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d0%b6%d0%b8%d0%bc-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b-2', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=251', 34, 'nav_menu_item', '', 0),
(254, 1, '2020-02-16 22:37:13', '2020-02-16 19:37:13', '<!-- wp:heading {\"level\":1} -->\n<h1>Политика конфиденциальности </h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Настоящее Положение о защите персональных данных действует в отношении всей информации, которую рекламное производство РекИдея, может получить о Клиенте во время использования сайта РекИдея.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Вы можете не предоставлять свои персональные данные (не проходить регистрацию), если вы зашли на сайт РекИдея с ознакомительными целями, чтобы составить впечатление об ассортименте и ценах на товар, представленный на нашем сайте, а также при наличии соответствующего сервиса оценить качество обслуживания Клиентов нашего интернет-магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы просим вас предоставить ваши персональные данные для оформления вами заказа в нашем интернет-магазине. От вас потребуется пройти процедуру регистрации Клиента и/или предоставить менеджеру call-центра свои персональные данные, чтобы мы могли в полном объеме выполнить свои обязательства перед вами по обработке и исполнению заказа.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ваши персональные данные могут включать в себя следующую информацию:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>фамилия, имя, отчество;</li><li>контактный телефон;</li><li>адрес электронной почты;</li><li>адрес для доставки заказанных на нашем сайте товаров;</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>а также другую информацию, которую вы захотите предоставить любым способом. Предоставляя свои персональные данные, вы соглашаетесь на их обработку в целях исполнения нами своих обязательств перед вами по продаже товаров и оказанию услуг, предоставления вам справочной информации об изменениях в условиях обслуживании Клиентов, о новых продуктах, акциях, промокодах, а также в целях продвижения товаров и услуг.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При обработке ваших персональных данных мы руководствуется положениями Федерального закона Российской Федерации от 27.07.2006 N 152-ФЗ «О персональных данных», Федерального закона Российской Федерации 27.07.2006 N 149-ФЗ «Об информации, информационных технологиях и о защите информации», а также иными нормативными документами в области защиты и обработки персональных данных.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Персональная информация, которую мы собираем, позволяет нам оперативно направлять Клиентам уведомления о процессе выполнения нами заказов, об изменениях в условиях продажи, новинках, заметных обновлениях цен, специальных предложениях и других важных событиях. Если вы не желаете быть включенным в наш список рассылки, вы можете в любое время отказаться от получения рассылки путем нажатия ссылки «Отписаться от рассылки» в любом нашем письме (рассылке) либо уведомив о вашем желании перестать получать наши рассылки, направив письмо на почту Службы поддержки покупателей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы обязуемся не передавать полученную от вас информацию третьим лицам.&nbsp;Не считается нарушением обязательств передача конфиденциальной информации о персональных данных в компетентные органы по надлежащие оформленным запросам в соответствии с требованиями действующего законодательства Российской Федерации.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При обработке ваших персональных данных мы уделяем большое внимание обеспечению безопасности вашей личной информации. Мы применяем необходимые и достаточные современные технологии в области защиты персональных данных наших Клиентов для ограничения несанкционированного и неправомерного доступа к ним.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы оставляем за собой право вносить изменения в настоящее «Положение о защите персональных данных». Это может быть вызвано изменениями действующего законодательства в области персональных данных, а также в других случаях, для повышения качества обслуживания. Мы обязуемся незамедлительно извещать вас об этом путем опубликования на нашем сайте текста «Положения» с внесенными правками.</p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-02-16 22:37:13', '2020-02-16 19:37:13', '', 3, 'http://rekidea.ru/2020/02/16/3-revision-v1/', 0, 'revision', '', 0),
(255, 1, '2020-02-17 15:27:44', '2020-02-17 12:27:44', '', 'магнитно-маркерные доски', '', 'publish', 'closed', 'closed', '', 'magnetic-boards', '', '', '2020-02-17 15:27:44', '2020-02-17 12:27:44', '', 0, 'http://rek.local/?page_id=255', 0, 'page', '', 0),
(256, 1, '2020-02-17 15:27:09', '2020-02-17 12:27:09', '', 'магнитно-маркерные доски', '', 'inherit', 'closed', 'closed', '', '255-revision-v1', '', '', '2020-02-17 15:27:09', '2020-02-17 12:27:09', '', 255, 'http://rek.local/2020/02/17/255-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2020-02-17 19:03:26', '2020-02-17 16:03:26', '', 'tablichki_1', '', 'inherit', 'open', 'closed', '', 'tablichki_1-2', '', '', '2020-02-17 19:03:26', '2020-02-17 16:03:26', '', 0, 'http://rek.local/wp-content/uploads/2020/02/tablichki_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(270, 1, '2020-02-17 19:03:26', '2020-02-17 16:03:26', '', 'tablichki_2', '', 'inherit', 'open', 'closed', '', 'tablichki_2', '', '', '2020-02-17 19:03:26', '2020-02-17 16:03:26', '', 0, 'http://rek.local/wp-content/uploads/2020/02/tablichki_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(271, 1, '2020-02-17 19:03:27', '2020-02-17 16:03:27', '', 'tablichki_3', '', 'inherit', 'open', 'closed', '', 'tablichki_3', '', '', '2020-02-17 19:03:27', '2020-02-17 16:03:27', '', 0, 'http://rek.local/wp-content/uploads/2020/02/tablichki_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(272, 1, '2020-02-17 19:03:27', '2020-02-17 16:03:27', '', 'tablichki_4', '', 'inherit', 'open', 'closed', '', 'tablichki_4', '', '', '2020-02-17 19:03:27', '2020-02-17 16:03:27', '', 0, 'http://rek.local/wp-content/uploads/2020/02/tablichki_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(273, 1, '2020-02-17 19:03:28', '2020-02-17 16:03:28', '', 'tablichki_language', '', 'inherit', 'open', 'closed', '', 'tablichki_language', '', '', '2020-02-17 19:03:28', '2020-02-17 16:03:28', '', 0, 'http://rek.local/wp-content/uploads/2020/02/tablichki_language.jpg', 0, 'attachment', 'image/jpeg', 0),
(274, 1, '2020-02-18 11:06:07', '2020-02-18 08:06:07', '<div class=\"feedback-field\">\r\n[text* feedback-name placeholder \"Имя\"]\r\n</div>\r\n<div class=\"feedback-field\">\r\n[tel* feedback-phone placeholder \"Телефон\"]\r\n</div>\r\n<div class=\"feedback-field\">\r\n[text message-name placeholder \"Сообщение\"]\r\n</div>\r\n<div class=\"feedback-submit\">\r\n[submit value \"Перезвоните мне\" ]\r\n</div>\r\n<div class=\"private_term_agree\">\r\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\r\n</div>\n1\nRekIdea. Заказ\nRek <info@rekidea.ru>\nrekidea@yandex.ru\nИмя: [feedback-name]\r\nТелефон: [feedback-phone]\r\nСообщение: [message-name]\nReply-To: <info@rekidea.ru>\n\n\n\n\nRekidea \"[your-subject]\"\nRekidea <wordpress@rek.local>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Rekidea (http://rek.local)\nReply-To: swd.admin@mail.ru\n\n\n\nСпасибо. Ваше сообщение отправлено. Менеджер свяжется с вами в ближайшее время\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'order-btn', '', 'publish', 'closed', 'closed', '', 'order-btn', '', '', '2020-02-19 20:23:28', '2020-02-19 17:23:28', '', 0, 'http://rek.local/?post_type=wpcf7_contact_form&#038;p=274', 0, 'wpcf7_contact_form', '', 0),
(275, 1, '2020-02-19 20:34:06', '2020-02-19 17:34:06', '', 'Магнитно-маркерные доски', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%bd%d0%b8%d1%82%d0%bd%d0%be-%d0%bc%d0%b0%d1%80%d0%ba%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d0%b4%d0%be%d1%81%d0%ba%d0%b8-3', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=275', 16, 'nav_menu_item', '', 0),
(276, 1, '2020-02-19 20:34:57', '2020-02-19 17:34:57', '', 'Магнитно-маркерные доски', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%bd%d0%b8%d1%82%d0%bd%d0%be-%d0%bc%d0%b0%d1%80%d0%ba%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d0%b4%d0%be%d1%81%d0%ba%d0%b8-2', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=276', 14, 'nav_menu_item', '', 0),
(278, 1, '2020-02-27 14:16:50', '2020-02-27 11:16:50', '', 'Цены', '', 'publish', 'closed', 'closed', '', 'price', '', '', '2020-02-27 14:16:50', '2020-02-27 11:16:50', '', 0, 'http://rek.local/?page_id=278', 0, 'page', '', 0),
(279, 1, '2020-02-27 14:16:42', '2020-02-27 11:16:42', '', 'Цены', '', 'inherit', 'closed', 'closed', '', '278-revision-v1', '', '', '2020-02-27 14:16:42', '2020-02-27 11:16:42', '', 278, 'http://rek.local/2020/02/27/278-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2020-02-28 15:14:07', '2020-02-28 12:14:07', '', 'Широкоформатная печать', '', 'publish', 'closed', 'closed', '', 'wide-printing', '', '', '2020-02-28 15:14:07', '2020-02-28 12:14:07', '', 0, 'http://rek.local/?page_id=280', 0, 'page', '', 0),
(281, 1, '2020-02-28 15:13:55', '2020-02-28 12:13:55', '', 'Широкоформатная печать', '', 'inherit', 'closed', 'closed', '', '280-revision-v1', '', '', '2020-02-28 15:13:55', '2020-02-28 12:13:55', '', 280, 'http://rek.local/2020/02/28/280-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2020-03-01 12:12:56', '2020-03-01 09:12:56', ' ', '', '', 'publish', 'closed', 'closed', '', '282', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rsht.local/?p=282', 45, 'nav_menu_item', '', 0),
(283, 1, '2020-03-01 12:13:38', '2020-03-01 09:13:38', ' ', '', '', 'publish', 'closed', 'closed', '', '283', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rsht.local/?p=283', 37, 'nav_menu_item', '', 0),
(285, 1, '2020-03-07 14:56:58', '2020-03-07 11:56:58', '', 'Плоттерная резка', '', 'publish', 'closed', 'closed', '', 'protter-cutting', '', '', '2020-03-07 14:57:34', '2020-03-07 11:57:34', '', 0, 'http://rsht.local/?page_id=285', 0, 'page', '', 0),
(286, 1, '2020-03-07 14:56:58', '2020-03-07 11:56:58', '', 'Плоттерная резка', '', 'inherit', 'closed', 'closed', '', '285-revision-v1', '', '', '2020-03-07 14:56:58', '2020-03-07 11:56:58', '', 285, 'http://rsht.local/2020/03/07/285-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2020-03-07 15:03:02', '2020-03-07 12:03:02', '', 'Плоттерная резка', '', 'inherit', 'closed', 'closed', '', '285-autosave-v1', '', '', '2020-03-07 15:03:02', '2020-03-07 12:03:02', '', 285, 'http://rsht.local/2020/03/07/285-autosave-v1/', 0, 'revision', '', 0),
(288, 1, '2020-03-09 15:02:09', '2020-03-09 12:02:09', '', 'Картины для дома и офиса', '', 'publish', 'closed', 'closed', '', 'pictures', '', '', '2020-03-09 15:02:23', '2020-03-09 12:02:23', '', 0, 'http://rsht.local/?page_id=288', 0, 'page', '', 0),
(289, 1, '2020-03-09 15:02:09', '2020-03-09 12:02:09', '', 'Картины для дома и офиса', '', 'inherit', 'closed', 'closed', '', '288-revision-v1', '', '', '2020-03-09 15:02:09', '2020-03-09 12:02:09', '', 288, 'http://rsht.local/2020/03/09/288-revision-v1/', 0, 'revision', '', 0),
(290, 1, '2020-03-09 19:03:07', '2020-03-09 16:03:07', '', 'Лазерная резка', '', 'publish', 'closed', 'closed', '', 'laser-price', '', '', '2020-05-14 11:27:41', '2020-05-14 08:27:41', '', 278, 'http://rsht.local/?page_id=290', 0, 'page', '', 0),
(291, 1, '2020-03-09 19:03:07', '2020-03-09 16:03:07', '', 'Лазерная резка', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2020-03-09 19:03:07', '2020-03-09 16:03:07', '', 290, 'http://rsht.local/2020/03/09/290-revision-v1/', 0, 'revision', '', 0),
(292, 1, '2020-03-10 16:14:33', '2020-03-10 13:14:33', '', 'Вывески', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8-3', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=292', 1, 'nav_menu_item', '', 0),
(293, 1, '2020-03-10 16:14:33', '2020-03-10 13:14:33', '', 'Световые панели', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8-3', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=293', 2, 'nav_menu_item', '', 0),
(295, 1, '2020-03-10 16:14:33', '2020-03-10 13:14:33', ' ', '', '', 'publish', 'closed', 'closed', '', '295', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=295', 4, 'nav_menu_item', '', 0),
(296, 1, '2020-03-10 16:14:33', '2020-03-10 13:14:33', ' ', '', '', 'publish', 'closed', 'closed', '', '296', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 278, 'http://rsht.local/?p=296', 5, 'nav_menu_item', '', 0),
(297, 1, '2020-03-10 16:14:33', '2020-03-10 13:14:33', '', 'Ростовые фигуры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b-3', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=297', 7, 'nav_menu_item', '', 0),
(298, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', '', 'Мобильные стенды', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=298', 8, 'nav_menu_item', '', 0),
(300, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', '', 'Штендеры', '', 'publish', 'closed', 'closed', '', '%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b-3', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=300', 10, 'nav_menu_item', '', 0),
(301, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', ' ', '', '', 'publish', 'closed', 'closed', '', '301', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=301', 11, 'nav_menu_item', '', 0),
(302, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', '', 'Инфостенды и режим работы', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-%d0%b8-%d1%80%d0%b5%d0%b6%d0%b8%d0%bc-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=302', 12, 'nav_menu_item', '', 0),
(303, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', '', 'Оклейка витрин и офисных перегородок', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba-3', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=303', 13, 'nav_menu_item', '', 0),
(304, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', '', 'Брендирование транспорта', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0-3', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=304', 14, 'nav_menu_item', '', 0),
(305, 1, '2020-03-10 16:14:34', '2020-03-10 13:14:34', '', 'Аренда рекламных конструкций', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%bd%d1%8b%d1%85-%d0%ba%d0%be%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d0%b9-2', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=305', 15, 'nav_menu_item', '', 0),
(306, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Вывески', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8-4', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=306', 1, 'nav_menu_item', '', 0),
(307, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Световые панели', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8-4', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=307', 2, 'nav_menu_item', '', 0),
(308, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', ' ', '', '', 'publish', 'closed', 'closed', '', '308', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=308', 3, 'nav_menu_item', '', 0),
(309, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Ростовые фигуры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b-4', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=309', 4, 'nav_menu_item', '', 0),
(310, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Мобильные стенды', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-2', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=310', 5, 'nav_menu_item', '', 0),
(313, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', ' ', '', '', 'publish', 'closed', 'closed', '', '313', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 278, 'http://rsht.local/?p=313', 8, 'nav_menu_item', '', 0),
(314, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', ' ', '', '', 'publish', 'closed', 'closed', '', '314', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=314', 9, 'nav_menu_item', '', 0),
(315, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', ' ', '', '', 'publish', 'closed', 'closed', '', '315', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=315', 10, 'nav_menu_item', '', 0),
(316, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Инфостенды и режим работы', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-%d0%b8-%d1%80%d0%b5%d0%b6%d0%b8%d0%bc-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b-2', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=316', 11, 'nav_menu_item', '', 0),
(317, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Оклейка витрин и офисных перегородок', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba-4', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=317', 12, 'nav_menu_item', '', 0),
(318, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Брендирование транспорта', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0-4', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=318', 13, 'nav_menu_item', '', 0),
(319, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Штендеры', '', 'publish', 'closed', 'closed', '', '%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b-4', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=319', 14, 'nav_menu_item', '', 0),
(320, 1, '2020-03-10 16:42:03', '2020-03-10 13:42:03', '', 'Аренда рекламных конструкций', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%bd%d1%8b%d1%85-%d0%ba%d0%be%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d0%b9-3', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 0, 'http://rsht.local/?p=320', 15, 'nav_menu_item', '', 0),
(321, 1, '2020-03-10 16:57:06', '2020-03-10 13:57:06', ' ', '', '', 'publish', 'closed', 'closed', '', '321', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 0, 'http://rsht.local/?p=321', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(322, 1, '2020-03-12 17:17:29', '2020-03-12 14:17:29', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не&nbsp;только фона фотозоны, но и самой конструкции.<br>\nПомимо плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости от&nbsp;сложности идеи и исполнения.<br> Цены различных фотозон могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'publish', 'closed', 'closed', '', 'photozone', '', '', '2020-03-13 16:18:57', '2020-03-13 13:18:57', '', 278, 'http://rsht.local/?page_id=322', 0, 'page', '', 0),
(323, 1, '2020-03-12 17:17:29', '2020-03-12 14:17:29', '', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-12 17:17:29', '2020-03-12 14:17:29', '', 322, 'http://rsht.local/2020/03/12/322-revision-v1/', 0, 'revision', '', 0),
(324, 1, '2020-03-12 17:19:56', '2020-03-12 14:19:56', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не только фона фотозоны, но и самой конструкции.<br>\nПомимио плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости от сложности идеи и исполнения.<br> Цены различных фотосозн могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-12 17:19:56', '2020-03-12 14:19:56', '', 322, 'http://rsht.local/2020/03/12/322-revision-v1/', 0, 'revision', '', 0),
(325, 1, '2020-03-13 14:29:04', '2020-03-13 11:29:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Цены', '%d1%86%d0%b5%d0%bd%d1%8b', 'publish', 'closed', 'closed', '', 'group_5e6b6e7463931', '', '', '2020-03-13 14:29:04', '2020-03-13 11:29:04', '', 0, 'http://rsht.local/?post_type=acf-field-group&#038;p=325', 0, 'acf-field-group', '', 0),
(326, 1, '2020-03-13 16:08:16', '2020-03-13 13:08:16', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не&nbsp;только фона фотозоны, но и самой конструкции.<br>\nПомимио плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости от сложности идеи и исполнения.<br> Цены различных фотосозн могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-13 16:08:16', '2020-03-13 13:08:16', '', 322, 'http://rsht.local/2020/03/13/322-revision-v1/', 0, 'revision', '', 0),
(327, 1, '2020-03-13 16:09:11', '2020-03-13 13:09:11', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не&nbsp;только фона фотозоны, но и самой конструкции.<br>\nПомимо плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости от сложности идеи и исполнения.<br> Цены различных фотосозн могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-13 16:09:11', '2020-03-13 13:09:11', '', 322, 'http://rsht.local/2020/03/13/322-revision-v1/', 0, 'revision', '', 0),
(328, 1, '2020-03-13 16:17:04', '2020-03-13 13:17:04', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не&nbsp;только фона фотозоны, но и самой конструкции.<br>\nПомимо плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости от сложности идеи и исполнения.<br> Цены различных фотозон могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-13 16:17:04', '2020-03-13 13:17:04', '', 322, 'http://rsht.local/2020/03/13/322-revision-v1/', 0, 'revision', '', 0),
(329, 1, '2020-03-13 16:18:37', '2020-03-13 13:18:37', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не&nbsp;только фона фотозоны, но и самой конструкции.<br>\nПомимо плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости&nbsp;от сложности идеи и исполнения.<br> Цены различных фотозон могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-13 16:18:37', '2020-03-13 13:18:37', '', 322, 'http://rsht.local/2020/03/13/322-revision-v1/', 0, 'revision', '', 0),
(330, 1, '2020-03-13 16:18:57', '2020-03-13 13:18:57', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Мы изготавливаем фотозоны для любых мероприятий и праздников.<br>\nРазрабатываем не&nbsp;только фона фотозоны, но и самой конструкции.<br>\nПомимо плоских вариантов, фотозона может быть объемной<br>\nи состоять из нескольких индивидуальных частей.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Каждый проект по созданию фотозоны и его стоимость<br> индивидуальны, в зависимости от&nbsp;сложности идеи и исполнения.<br> Цены различных фотозон могут отличаться.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Стоимость именно Вашего проекта, Вы можете узнать<br> по телефону или составить заявку и мы перезвоним Вам.<br> Мы подберем оптимальный вариант по производству<br> и предложим лучшую стоимость фотозоны.</p>\n<!-- /wp:paragraph -->', 'Фотозона', '', 'inherit', 'closed', 'closed', '', '322-revision-v1', '', '', '2020-03-13 16:18:57', '2020-03-13 13:18:57', '', 322, 'http://rsht.local/2020/03/13/322-revision-v1/', 0, 'revision', '', 0),
(331, 1, '2020-03-13 17:20:02', '2020-03-13 14:20:02', '', 'Photozone-slide 1', '', 'publish', 'closed', 'closed', '', 'photozone-slide-1', '', '', '2020-03-13 17:20:02', '2020-03-13 14:20:02', '', 0, 'http://rsht.local/?post_type=slick_slider&#038;p=331', 0, 'slick_slider', '', 0),
(332, 1, '2020-03-13 17:19:57', '2020-03-13 14:19:57', '', '3_Photozona-3', '', 'inherit', 'open', 'closed', '', '3_photozona-3', '', '', '2020-03-13 17:19:57', '2020-03-13 14:19:57', '', 331, 'http://rsht.local/wp-content/uploads/2020/03/3_Photozona-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(333, 1, '2020-03-13 17:20:29', '2020-03-13 14:20:29', '', 'Photozone slide 2', '', 'publish', 'closed', 'closed', '', 'photozone-slide-2', '', '', '2020-03-13 17:20:29', '2020-03-13 14:20:29', '', 0, 'http://rsht.local/?post_type=slick_slider&#038;p=333', 0, 'slick_slider', '', 0),
(334, 1, '2020-03-13 17:20:25', '2020-03-13 14:20:25', '', '3_Photozona-4', '', 'inherit', 'open', 'closed', '', '3_photozona-4', '', '', '2020-03-13 17:20:25', '2020-03-13 14:20:25', '', 333, 'http://rsht.local/wp-content/uploads/2020/03/3_Photozona-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(335, 1, '2020-03-13 17:20:43', '2020-03-13 14:20:43', '', 'Photozone slide 3', '', 'publish', 'closed', 'closed', '', 'photozone-slide-3', '', '', '2020-03-13 17:20:43', '2020-03-13 14:20:43', '', 0, 'http://rsht.local/?post_type=slick_slider&#038;p=335', 0, 'slick_slider', '', 0),
(336, 1, '2020-03-13 17:20:38', '2020-03-13 14:20:38', '', '3_Photozona-10', '', 'inherit', 'open', 'closed', '', '3_photozona-10', '', '', '2020-03-13 17:20:38', '2020-03-13 14:20:38', '', 335, 'http://rsht.local/wp-content/uploads/2020/03/3_Photozona-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(337, 1, '2020-03-14 11:35:04', '2020-03-14 08:35:04', '<div class=\"feedback-field\">\r\n[text* feedback-name placeholder \"Имя\"]\r\n</div>\r\n<div class=\"feedback-field\">\r\n[tel* feedback-phone placeholder \"Телефон\"]\r\n</div>\r\n<div class=\"feedback-field\">\r\n[text message-name placeholder \"Комментарий\"]\r\n</div>\r\n<div class=\"feedback-submit\">\r\n[submit value \"Перезвоните мне\" ]\r\n</div>\n1\nRekIdea. Запрос из цен\nRek <info@rekidea.ru>\nrekidea@yandex.ru\nИмя: [feedback-name]\r\nТелефон: [feedback-phone]\r\nСообщение: [message-name]\nReply-To: <info@rekidea.ru>\n\n\n\n\nRekidea \"[your-subject]\"\nRekidea <wordpress@rsht.local>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Rekidea (http://rsht.local)\nReply-To: swd.admin@mail.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'price-call', '', 'publish', 'closed', 'closed', '', 'price-call', '', '', '2020-03-14 11:35:04', '2020-03-14 08:35:04', '', 0, 'http://rsht.local/?post_type=wpcf7_contact_form&p=337', 0, 'wpcf7_contact_form', '', 0),
(338, 1, '2020-03-14 11:47:33', '2020-03-14 08:47:33', ' ', '', '', 'publish', 'closed', 'closed', '', '338', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 278, 'http://rsht.local/?p=338', 6, 'nav_menu_item', '', 0),
(339, 1, '2020-03-14 11:47:54', '2020-03-14 08:47:54', ' ', '', '', 'publish', 'closed', 'closed', '', '339', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 278, 'http://rsht.local/?p=339', 3, 'nav_menu_item', '', 0),
(340, 1, '2020-03-14 17:26:03', '2020-03-14 14:26:03', '', 'Магнитно-маркерная доска', '', 'publish', 'closed', 'closed', '', 'magnetic-boards-price', '', '', '2020-03-14 17:27:26', '2020-03-14 14:27:26', '', 278, 'http://rsht.local/?page_id=340', 0, 'page', '', 0),
(341, 1, '2020-03-14 17:26:03', '2020-03-14 14:26:03', '', 'Магнитно-маркерная доска', '', 'inherit', 'closed', 'closed', '', '340-revision-v1', '', '', '2020-03-14 17:26:03', '2020-03-14 14:26:03', '', 340, 'http://rsht.local/2020/03/14/340-revision-v1/', 0, 'revision', '', 0),
(342, 1, '2020-03-14 17:28:37', '2020-03-14 14:28:37', '', 'Магнитно-маркерная доска', '', 'inherit', 'closed', 'closed', '', '340-autosave-v1', '', '', '2020-03-14 17:28:37', '2020-03-14 14:28:37', '', 340, 'http://rsht.local/2020/03/14/340-autosave-v1/', 0, 'revision', '', 0),
(343, 1, '2020-03-14 18:23:15', '2020-03-14 15:23:15', ' ', '', '', 'publish', 'closed', 'closed', '', '343', '', '', '2020-03-14 18:23:15', '2020-03-14 15:23:15', '', 278, 'http://rsht.local/?p=343', 9, 'nav_menu_item', '', 0),
(344, 1, '2020-03-14 18:23:34', '2020-03-14 15:23:34', ' ', '', '', 'publish', 'closed', 'closed', '', '344', '', '', '2020-03-14 18:23:34', '2020-03-14 15:23:34', '', 278, 'http://rsht.local/?p=344', 7, 'nav_menu_item', '', 0),
(345, 1, '2020-03-20 15:07:13', '2020-03-20 12:07:13', '', '800х600_tablichki_9 (1)', '', 'inherit', 'open', 'closed', '', '800%d1%85600_tablichki_9-1', '', '', '2020-03-20 15:07:13', '2020-03-20 12:07:13', '', 0, 'http://rek.local/wp-content/uploads/2020/03/800х600_tablichki_9-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(346, 1, '2020-03-20 15:07:38', '2020-03-20 12:07:38', '', '800х600_tablichki_10 (1)', '', 'inherit', 'open', 'closed', '', '800%d1%85600_tablichki_10-1', '', '', '2020-03-20 15:07:38', '2020-03-20 12:07:38', '', 0, 'http://rek.local/wp-content/uploads/2020/03/800х600_tablichki_10-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(347, 1, '2020-03-22 18:40:20', '2020-03-22 15:40:20', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-03-22 18:40:20', '2020-03-22 15:40:20', '', 0, 'http://rek.local/?page_id=347', 0, 'page', '', 0),
(348, 1, '2020-03-22 18:40:03', '2020-03-22 15:40:03', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '347-revision-v1', '', '', '2020-03-22 18:40:03', '2020-03-22 15:40:03', '', 347, 'http://rek.local/2020/03/22/347-revision-v1/', 0, 'revision', '', 0),
(349, 1, '2020-03-23 08:44:20', '2020-03-23 05:44:20', '<div class=\"grid\">\r\n\r\n<div class=\"feedback-field\">\r\n[text* feedback-name placeholder \"Имя\"]\r\n</div>\r\n<div class=\"feedback-text\">\r\n[textarea* feedback-text placeholder \"Опишите Ваш запрос\"]\r\n</div>\r\n<div class=\"feedback-field\">\r\n[tel* feedback-phone placeholder \"Телефон\"]\r\n</div>\r\n\r\n<div class=\"feedback-field\">\r\n[text* feedback-topic placeholder \"Тема заявки\"]\r\n</div>\r\n</div>\r\n<div class=\"private_term_agree\">\r\nНажимая кнопку «Перезвонить мне», я <a href=\"/privacy-policy\">даю свое согласие</a> на обработку персональных данных.\r\n</div>\r\n\r\n<div class=\"feedback-submit\">\r\n[submit value \"Перезвоните мне\" ]\r\n</div>\n1\nRekIdea. Форма контакты.\nRek <info@rekidea.ru>\nrekidea@yandex.ru\nИмя: [feedback-name]\r\nТелефон: [feedback-phone]\r\nТема: [feedback-topic]\r\nСообщение: [feedback-text]\nReply-To: info@rekidea.ru\n\n\n\n\nRekidea \"[your-subject]\"\nRekidea <wordpress@rek.local>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Rekidea (http://rek.local)\nReply-To: swd.admin@mail.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Contacts feedback', '', 'publish', 'closed', 'closed', '', 'contacts-feedback', '', '', '2020-03-25 17:55:04', '2020-03-25 14:55:04', '', 0, 'http://rek.local/?post_type=wpcf7_contact_form&#038;p=349', 0, 'wpcf7_contact_form', '', 0),
(351, 1, '2020-03-23 20:22:16', '2020-03-23 17:22:16', ' ', '', '', 'publish', 'closed', 'closed', '', '351', '', '', '2020-03-23 20:22:16', '2020-03-23 17:22:16', '', 0, 'http://rek.local/?p=351', 49, 'nav_menu_item', '', 0),
(352, 1, '2020-03-23 20:22:36', '2020-03-23 17:22:36', ' ', '', '', 'publish', 'closed', 'closed', '', '352', '', '', '2020-03-25 17:55:47', '2020-03-25 14:55:47', '', 0, 'http://rek.local/?p=352', 41, 'nav_menu_item', '', 0),
(353, 1, '2020-05-14 10:21:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-14 10:21:18', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?p=353', 0, 'post', '', 0),
(354, 1, '2020-05-14 10:23:54', '2020-05-14 07:23:54', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-05-14 10:23:54', '2020-05-14 07:23:54', '', 0, 'http://rsht.local/wp-content/uploads/2020/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(355, 1, '2020-05-14 10:58:16', '2020-05-14 07:58:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"290\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Цены - лазерная резка', '%d1%86%d0%b5%d0%bd%d1%8b-%d0%bb%d0%b0%d0%b7%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0', 'publish', 'closed', 'closed', '', 'group_5ebcfa0d073c8', '', '', '2020-05-14 11:14:42', '2020-05-14 08:14:42', '', 0, 'http://rsht.local/?post_type=acf-field-group&#038;p=355', 0, 'acf-field-group', '', 0),
(356, 1, '2020-05-14 11:13:00', '2020-05-14 08:13:00', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:258:\"Разделять столбцы двоеточием\r\nНапример 1 мм:10:1,5:3 будет выведено как толщина - 1мм, цена до 500м - 10, от 500 - 1.5, от 1000 - 3.\r\nКаждый размер с новой строки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Лазерная резка фанеры и МДФ', 'mdf', 'publish', 'closed', 'closed', '', 'field_5ebcfcb094e46', '', '', '2020-05-14 11:13:00', '2020-05-14 08:13:00', '', 355, 'http://rsht.local/?post_type=acf-field&p=356', 0, 'acf-field', '', 0),
(357, 1, '2020-05-14 11:13:46', '2020-05-14 08:13:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:258:\"Разделять столбцы двоеточием\r\nНапример 1 мм:10:1,5:3 будет выведено как толщина - 1мм, цена до 500м - 10, от 500 - 1.5, от 1000 - 3.\r\nКаждый размер с новой строки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Лазерная резка оргстекла и акрила', 'akril', 'publish', 'closed', 'closed', '', 'field_5ebcfd91557b6', '', '', '2020-05-14 11:13:46', '2020-05-14 08:13:46', '', 355, 'http://rsht.local/?post_type=acf-field&p=357', 1, 'acf-field', '', 0),
(358, 1, '2020-05-14 11:14:17', '2020-05-14 08:14:17', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:258:\"Разделять столбцы двоеточием\r\nНапример 1 мм:10:1,5:3 будет выведено как толщина - 1мм, цена до 500м - 10, от 500 - 1.5, от 1000 - 3.\r\nКаждый размер с новой строки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Лазерная резка ПЭТа', 'pet', 'publish', 'closed', 'closed', '', 'field_5ebcfdc4570cb', '', '', '2020-05-14 11:14:17', '2020-05-14 08:14:17', '', 355, 'http://rsht.local/?post_type=acf-field&p=358', 2, 'acf-field', '', 0),
(359, 1, '2020-05-14 11:14:42', '2020-05-14 08:14:42', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:258:\"Разделять столбцы двоеточием\r\nНапример 1 мм:10:1,5:3 будет выведено как толщина - 1мм, цена до 500м - 10, от 500 - 1.5, от 1000 - 3.\r\nКаждый размер с новой строки\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Лазерная резка полистирола', 'polistirol', 'publish', 'closed', 'closed', '', 'field_5ebcfddd9b83e', '', '', '2020-05-14 11:14:42', '2020-05-14 08:14:42', '', 355, 'http://rsht.local/?post_type=acf-field&p=359', 3, 'acf-field', '', 0),
(360, 1, '2020-05-14 11:23:43', '2020-05-14 08:23:43', '', 'Лазерная резка', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2020-05-14 11:23:43', '2020-05-14 08:23:43', '', 290, 'http://rsht.local/2020/05/14/290-revision-v1/', 0, 'revision', '', 0),
(361, 1, '2020-05-14 11:27:41', '2020-05-14 08:27:41', '', 'Лазерная резка', '', 'inherit', 'closed', 'closed', '', '290-revision-v1', '', '', '2020-05-14 11:27:41', '2020-05-14 08:27:41', '', 290, 'http://rsht.local/2020/05/14/290-revision-v1/', 0, 'revision', '', 0),
(362, 1, '2020-05-14 11:48:33', '2020-05-14 08:48:33', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-05-14 11:48:33', '2020-05-14 08:48:33', '', 0, 'http://rsht.local/shop/', 0, 'page', '', 0),
(363, 1, '2020-05-14 11:48:33', '2020-05-14 08:48:33', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-05-14 11:48:33', '2020-05-14 08:48:33', '', 0, 'http://rsht.local/cart/', 0, 'page', '', 0),
(364, 1, '2020-05-14 11:48:33', '2020-05-14 08:48:33', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-05-14 11:48:33', '2020-05-14 08:48:33', '', 0, 'http://rsht.local/checkout/', 0, 'page', '', 0),
(365, 1, '2020-05-14 11:48:33', '2020-05-14 08:48:33', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-05-14 11:48:33', '2020-05-14 08:48:33', '', 0, 'http://rsht.local/my-account/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Общие', 'common', 0),
(4, 'top-slider', 'top-slider', 0),
(5, 'Карточки-главная', 'cards-block', 0),
(6, 'top', 'top', 0),
(7, 'Верхнее меню (Мобильное)', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e-%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d0%be%d0%b5', 0),
(8, 'partners-slider', 'partners-slider', 0),
(9, 'Меню цен (Мобильное)', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%86%d0%b5%d0%bd-%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d0%be%d0%b5', 0),
(10, 'Меню цен', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%86%d0%b5%d0%bd', 0),
(11, 'photozone-slider', 'photozone-slider', 0),
(12, 'simple', 'simple', 0),
(13, 'grouped', 'grouped', 0),
(14, 'variable', 'variable', 0),
(15, 'external', 'external', 0),
(16, 'exclude-from-search', 'exclude-from-search', 0),
(17, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(18, 'featured', 'featured', 0),
(19, 'outofstock', 'outofstock', 0),
(20, 'rated-1', 'rated-1', 0),
(21, 'rated-2', 'rated-2', 0),
(22, 'rated-3', 'rated-3', 0),
(23, 'rated-4', 'rated-4', 0),
(24, 'rated-5', 'rated-5', 0),
(25, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 2, 0),
(39, 4, 0),
(40, 4, 0),
(43, 5, 0),
(51, 5, 0),
(57, 5, 0),
(61, 5, 0),
(66, 5, 0),
(71, 5, 0),
(78, 5, 0),
(83, 5, 0),
(91, 6, 0),
(97, 6, 0),
(98, 6, 0),
(100, 6, 0),
(101, 6, 0),
(102, 6, 0),
(104, 6, 0),
(105, 6, 0),
(106, 6, 0),
(107, 6, 0),
(108, 6, 0),
(109, 6, 0),
(110, 6, 0),
(111, 6, 0),
(112, 6, 0),
(113, 6, 0),
(114, 6, 0),
(115, 6, 0),
(116, 6, 0),
(117, 6, 0),
(118, 6, 0),
(119, 6, 0),
(120, 6, 0),
(121, 6, 0),
(122, 6, 0),
(123, 6, 0),
(124, 6, 0),
(125, 6, 0),
(126, 6, 0),
(127, 6, 0),
(128, 6, 0),
(129, 6, 0),
(130, 6, 0),
(131, 6, 0),
(132, 6, 0),
(133, 6, 0),
(134, 6, 0),
(135, 6, 0),
(136, 6, 0),
(137, 6, 0),
(138, 6, 0),
(139, 6, 0),
(140, 6, 0),
(141, 6, 0),
(142, 6, 0),
(143, 6, 0),
(144, 7, 0),
(145, 7, 0),
(146, 7, 0),
(147, 7, 0),
(148, 7, 0),
(149, 7, 0),
(150, 7, 0),
(151, 7, 0),
(152, 7, 0),
(153, 7, 0),
(154, 7, 0),
(155, 7, 0),
(156, 7, 0),
(157, 7, 0),
(158, 7, 0),
(160, 7, 0),
(161, 7, 0),
(162, 7, 0),
(166, 8, 0),
(179, 8, 0),
(180, 8, 0),
(181, 8, 0),
(182, 8, 0),
(183, 8, 0),
(184, 8, 0),
(232, 7, 0),
(233, 7, 0),
(234, 7, 0),
(235, 7, 0),
(236, 7, 0),
(237, 7, 0),
(238, 7, 0),
(239, 7, 0),
(240, 7, 0),
(241, 7, 0),
(242, 7, 0),
(243, 7, 0),
(244, 7, 0),
(245, 7, 0),
(246, 7, 0),
(247, 7, 0),
(248, 7, 0),
(249, 7, 0),
(250, 7, 0),
(251, 7, 0),
(275, 7, 0),
(276, 6, 0),
(282, 6, 0),
(283, 7, 0),
(292, 9, 0),
(293, 9, 0),
(295, 9, 0),
(296, 9, 0),
(297, 9, 0),
(298, 9, 0),
(300, 9, 0),
(301, 9, 0),
(302, 9, 0),
(303, 9, 0),
(304, 9, 0),
(305, 9, 0),
(306, 10, 0),
(307, 10, 0),
(308, 10, 0),
(309, 10, 0),
(310, 10, 0),
(313, 10, 0),
(314, 10, 0),
(315, 10, 0),
(316, 10, 0),
(317, 10, 0),
(318, 10, 0),
(319, 10, 0),
(320, 10, 0),
(321, 9, 0),
(331, 11, 0),
(333, 11, 0),
(335, 11, 0),
(338, 10, 0),
(339, 9, 0),
(343, 9, 0),
(344, 10, 0),
(351, 6, 0),
(352, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(4, 4, 'wpsisac_slider-category', '', 0, 2),
(5, 5, 'category', '', 0, 8),
(6, 6, 'nav_menu', '', 0, 49),
(7, 7, 'nav_menu', '', 0, 41),
(8, 8, 'wpsisac_slider-category', '', 0, 7),
(9, 9, 'nav_menu', '', 0, 15),
(10, 10, 'nav_menu', '', 0, 15),
(11, 11, 'wpsisac_slider-category', '', 0, 3),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_type', '', 0, 0),
(14, 14, 'product_type', '', 0, 0),
(15, 15, 'product_type', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_visibility', '', 0, 0),
(23, 23, 'product_visibility', '', 0, 0),
(24, 24, 'product_visibility', '', 0, 0),
(25, 25, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"13f46aea36aed959d6f64915a56b4a3875cd06f7b1a8c1343d58625ceee87de2\";a:4:{s:10:\"expiration\";i:1589613666;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0\";s:5:\"login\";i:1589440866;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '353'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:19:\"dashboard_right_now\";i:1;s:17:\"dashboard_primary\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(26, 1, 'wp_user-settings-time', '1580645093'),
(27, 1, 'closedpostboxes_slick_slider', 'a:1:{i:0;s:14:\"custom-metabox\";}'),
(28, 1, 'metaboxhidden_slick_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'meta-box-order_slick_slider', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,wpsisac_slider-categorydiv\";s:6:\"normal\";s:22:\"slugdiv,custom-metabox\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_slick_slider', '2'),
(31, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:47:\"acf-group_5e2f0669d466c,acf-group_5e39a521c94a8\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'nav_menu_recently_edited', '7'),
(33, 1, 'closedpostboxes_post', 'a:2:{i:0;s:23:\"acf-group_5e2f0669d466c\";i:1;s:23:\"acf-group_5e39a521c94a8\";}'),
(34, 1, 'metaboxhidden_post', 'a:0:{}'),
(35, 1, 'wp_media_library_mode', 'grid'),
(36, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(37, 1, '_woocommerce_tracks_anon_id', 'woo:alT/K7neLBOED0Viy40BqMNJ'),
(38, 1, 'wc_last_active', '1589414400');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BI3WIloevVp042FIzNgW9SfLMTSbjg.', 'admin', 'swd.admin@mail.ru', '', '2020-01-23 17:20:18', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-14 07:24:04', NULL, 0),
(2, 'wc-admin-store-notice-setting-moved', 'info', 'en_US', 'Looking for the Store Notice setting?', 'It can now be found in the Customizer.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-14 07:24:04', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-14 07:24:12', NULL, 0),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', 'info', '{}', 'actioned', 'woocommerce-admin', '2020-05-14 02:48:03', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'open-customizer', 'Open Customizer', 'customize.php', 'actioned', 0),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0),
(4, 4, 'continue-profiler', 'Continue Store Setup', 'http://rsht.local/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(5, 4, 'skip-profiler', 'Skip Setup', 'http://rsht.local/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(25, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:705:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:17:\"swd.admin@mail.ru\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1589615630);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Индексы таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Индексы таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Индексы таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Индексы таблицы `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3317;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1878;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
