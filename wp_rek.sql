-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 28 2020 г., 15:39
-- Версия сервера: 5.7.23
-- Версия PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_rek`
--

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

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-23 20:20:18', '2020-01-23 17:20:18', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(1, 'siteurl', 'http://rek.local', 'yes'),
(2, 'home', 'http://rek.local', 'yes'),
(3, 'blogname', 'Rek', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
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
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:64:\"wpsisac_slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?wpsisac_slider-category=$matches[1]&feed=$matches[2]\";s:59:\"wpsisac_slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?wpsisac_slider-category=$matches[1]&feed=$matches[2]\";s:40:\"wpsisac_slider-category/([^/]+)/embed/?$\";s:56:\"index.php?wpsisac_slider-category=$matches[1]&embed=true\";s:52:\"wpsisac_slider-category/([^/]+)/page/?([0-9]{1,})/?$\";s:63:\"index.php?wpsisac_slider-category=$matches[1]&paged=$matches[2]\";s:34:\"wpsisac_slider-category/([^/]+)/?$\";s:45:\"index.php?wpsisac_slider-category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:116:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/includes/wpsisac-slider-custom-post.php\";i:1;s:112:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/wpos-analytics/templates/offers.php\";i:2;s:110:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/assets/css/slick-slider-style.css\";i:3;s:99:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/assets/js/slick.min.js\";i:4;s:104:\"C:\\OSPanel\\domains\\rek/wp-content/plugins/wp-slick-slider-and-image-carousel/assets/js/wpsisac-public.js\";}', 'no'),
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
(93, 'admin_email_lifespan', '1595352018', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1580217619;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580232018;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580232019;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580232029;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580232031;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(126, '_site_transient_timeout_browser_41954404cce1a17bf9ef99af5c7da680', '1580404830', 'no'),
(127, '_site_transient_browser_41954404cce1a17bf9ef99af5c7da680', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"73.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_e481018c713db17b5f16f6d87bf44ece', '1580404831', 'no'),
(129, '_site_transient_php_check_e481018c713db17b5f16f6d87bf44ece', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', '', 'yes'),
(145, 'theme_mods_rekidea', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580187437;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(186, '_site_transient_timeout_browser_1c6548c1e5fcdb35d7741fd2e4f5f61e', '1580736620', 'no'),
(187, '_site_transient_browser_1c6548c1e5fcdb35d7741fd2e4f5f61e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(188, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1580175022', 'no'),
(189, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(190, '_transient_timeout_plugin_slugs', '1580274909', 'no'),
(191, '_transient_plugin_slugs', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:9:\"hello.php\";i:5;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";}', 'no'),
(192, 'recently_activated', 'a:0:{}', 'yes'),
(197, 'acf_version', '5.8.7', 'yes'),
(200, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1580143465;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(205, 'cptui_new_install', 'false', 'yes'),
(207, 'cptui_post_types', 'a:0:{}', 'yes'),
(225, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1580158912', 'no'),
(226, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4661;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3876;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2658;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2537;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1950;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1788;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1771;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1479;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1465;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1459;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1446;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1406;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1383;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1171;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1157;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1116;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1084;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1082;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:977;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:864;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:864;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:839;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:781;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:756;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:753;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:749;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:730;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:696;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:690;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:675;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:641;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:639;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:626;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:610;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:572;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:567;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:540;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:538;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:533;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:508;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:492;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:491;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:491;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:485;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:483;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:474;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:463;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:458;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:439;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:435;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:429;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:420;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:410;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:407;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:391;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:390;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:375;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:368;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:355;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:343;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:324;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:322;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:321;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:320;}}', 'no'),
(231, 'wpos_anylc_redirect', '', 'yes'),
(232, 'wpos_anylc_site_uid', '08a997ccae2bcb49e1b4a2861312ed27', 'yes'),
(233, 'wpos_anylc_pdt_25', 'a:1:{s:6:\"status\";i:1;}', 'yes'),
(235, '_transient_timeout_wpos_plugins_feed', '1580321876', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(236, '_transient_wpos_plugins_feed', '\r\n<style type=\"text/css\">\r\n.wpos-plugins{\r\n	background-color: #fff;\r\n    border: 1px solid #ccc;\r\n    min-height: 315px;\r\n    padding: 10px;\r\n    margin: 0 0 20px 0;\r\n}\r\n.wpos-plugin-title{font-size: 1.2em;}\r\n.wpos-plugins img{max-width:100%;}\r\n.wpos-center{text-align:center;}\r\n.wpos-right{text-align:right;}\r\n.wpos-plugins i.dashicons{padding: 3px 0;}\r\n.wpos-plugins .wpos-plugin-buy-link{display: block; height: 35px; padding: 3px; text-align: center;}\r\n.wpos-clear{clear:both;}\r\n.wpcolumn, .wpcolumns {-webkit-box-sizing: border-box;-moz-box-sizing: border-box;  box-sizing: border-box;}\r\na.button.wpos-all-plugin-link{height: auto; line-height: normal; padding: 12px 20px !important;}\r\n@media only screen and (min-width: 40.0625em) {  \r\n	.wpcolumn,\r\n	.wpcolumns {position: relative;padding-left:10px;padding-right:10px;float: left; }\r\n	.wp-medium-1 { width: 8.33333%; }\r\n	.wp-medium-2 { width: 16.66667%; }\r\n	.wp-medium-3 { width: 25%; }\r\n	.wp-medium-4 { width: 33.33333%; }\r\n	.wp-medium-5 { width: 41.66667%; }\r\n	.wp-medium-6 { width: 50%; }\r\n	.wp-medium-7 { width: 58.33333%; }\r\n	.wp-medium-8 { width: 66.66667%; }\r\n	.wp-medium-9 { width: 75%; }\r\n	.wp-medium-10 { width: 83.33333%; }\r\n	.wp-medium-11 { width: 91.66667%; }\r\n	.wp-medium-12 { width: 100%; }\r\n}\r\n</style>\r\n\r\n<div class=\"wp-medium-8 wpcolumns\">\r\n	<h2>You may also like some of our products</h2>\r\n	<p><b>WP Plugins for all kinds of need. Crafted with Passion</b></p>\r\n</div>\r\n<div class=\"wp-medium-4 wpcolumns wpos-right\">\r\n	<p><a class=\"button button-primary wpos-all-plugin-link\" href=\"https://www.wponlinesupport.com/plugins/\" target=\"_blank\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Browse all Plugins</a></p>\r\n</div>\r\n\r\n<div class=\"wpos-plugins-wrp wpos-clear\">\r\n\r\n	<!-- PRO Plugins Bundle -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/pricing/?ref=WposPratik&utm_source=WP&utm_medium=WP-Plugins&utm_campaign=Our-Plugins\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/10/wordpress-plugins-offers-banner.png\" alt=\"PRO Plugins Bundle\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Essential Plugin Bundle</h3>	\r\n			<p>Spice up your website\'s design with fresh templates, themes, and sliders. Boost your customer conversions with inbound marketing tools. Keep your site safe with essential security features.</p>	\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/pricing/?ref=WposPratik&utm_source=WP&utm_medium=WP-Plugins&utm_campaign=Our-Plugins\" target=\"_blank\" title=\"Buy - PRO Plugins Bundle\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Buy Now</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP News and Scrolling Widgets PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/sp-news/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-news-plugin.jpg\" alt=\"WP News and Scrolling Widgets PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP News and Scrolling Widgets</h3>\r\n			<p>WP News and Scrolling Widgets allows you add, manage and display news, widget, vertical and horizontal news scrolling widget on your website.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/sp-news/\" target=\"_blank\" title=\"Buy - WP News and Scrolling Widgets PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Blog and Widgets PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/blog-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-blog-plugin.jpg\" alt=\"WP Blog and Widgets PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Blog and Widgets</h3>\r\n			<p>WP Blog and widgets, manage and display blog, widget on your website with 50+ designs.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/blog-demo/\" target=\"_blank\" title=\"Buy - WP Blog and Widgets PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Stylist Post and Widgets Pro -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/blog-designer-post-and-widget/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/02/blog-designer-for-post-and-widget.jpg\" alt=\"Blog Designer - Post and Widget\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Blog Designer - Post and Widget</h3>\r\n			<p>Make your blogs looks fancy with Blog Designer Post and Widget.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/blog-designer-post-and-widget/\" target=\"_blank\" title=\"Buy - WP Stylist Post and Widgets PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Slick Slider and Image Carousel PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/slick-slider-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/11/wordpress-free-slickslider-plugin.jpg\" alt=\"WP Slick Slider and Image Carousel PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Slick Slider and Image Carousel</h3>\r\n			<p>Display multiple slick image slider and carousel using shortcode with category.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/slick-slider-demo/\" target=\"_blank\" title=\"Buy - WP Slick Slider and Image Carousel PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Responsive Recent Post Slider PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/recent-post-slider-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/11/wordpress-recent-post-slider.jpg\" alt=\"WP Responsive Recent Post Slider PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Responsive Recent Post Slider/Carousel</h3>\r\n			<p>Display Responsive Recent Post Slider on your website with multiple designs using a shortcode.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/recent-post-slider-demo/\" target=\"_blank\" title=\"Buy - WP Responsive Recent Post Slider PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Testimonial with Widget PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/testimonial-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/09/wordpress-free-testimonial-plugin.jpg\" alt=\"WP Testimonial with Widget PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Testimonials with rotator widget</h3>\r\n			<p>Display responsive, clean client’s testimonial on your website using a shortcode or a widget.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/testimonial-demo/\" target=\"_blank\" title=\"Buy - WP Testimonial with Widget PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i>  Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n\r\n	<!-- WP Logo Showcase Responsive Slider PRO -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/logo-slider-plugin-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2015/11/wordpress-free-logo-slider-plugin-1.jpg\" alt=\"WP Logo Showcase Responsive Slider PRO\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">WP Logo Showcase Responsive Slider</h3>\r\n			<p>A quick, easy way to add and display a responsive logo slideshow carousel to your site quickly and easily.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/logo-slider-plugin-demo/\" target=\"_blank\" title=\"Buy - WP Logo Showcase Responsive Slider PRO\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Video gallery and Player -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/video-gallery-and-player-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/07/videogallery-plus-player.png\" alt=\"Video gallery and Player\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Video gallery and Player</h3>\r\n			<p>Display responsive HTML5, YouTube, Vimeo and Dailymotion vedio gallery with Magnific Popup to your WordPress website.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/video-gallery-and-player-demo/\" target=\"_blank\" title=\"Video gallery and Player\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- WP Team Showcase and Slider -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/popup-anything-on-click-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2017/07/popup-anything-wordpress-plugin.jpg\" alt=\"Popup anything on click\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Popup anything on click</h3>\r\n			<p>Popup anything by Clicking on a Link, Image or Button</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/popup-anything-on-click-demo/\" target=\"_blank\" title=\"Popup anything on click\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Album and Image Gallery plus Lightbox Pro -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/album-and-image-gallery-plus-lightbox-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/08/album-and-image-gallery-plus-lightbox.jpg\" alt=\"Album and Image Gallery plus Lightbox\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Album and Image Gallery plus Lightbox</h3>\r\n			<p>Use Album grid and slider to create a simple but effective Album gallery to show of your beautiful photographs and other images.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/album-and-image-gallery-plus-lightbox-demo/\" target=\"_blank\" title=\"Buy - Album and Image Gallery plus Lightbox\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<!-- Timeline and History Slider -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/timeline-and-history-slider-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/07/timeline-and-history-slider-banner-1.jpg\" alt=\"Album and Image Gallery plus Lightbox\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Timeline and History Slider</h3>\r\n			<p>An advanced WordPress timeline plugin to show your life history, company’s story or WordPress Post in a responsive Vertical/Horizontal design.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/timeline-and-history-slider-demo/\" target=\"_blank\" title=\"Buy - Timeline and History Slider\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>	\r\n	\r\n	<!-- Countdown Timer -->\r\n	<div class=\"wp-medium-3 wpcolumns wpos-clear\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://demo.wponlinesupport.com/countdown-timer-ultimate-demo/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2016/10/countdown-timer-ultimate.jpg\" alt=\"Countdown Timer Ultimate\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">Countdown Timer Ultimate</h3>\r\n			<p>A very simple plugin to add countdown timer to your website. Countdown timer allow you to create nice and functional Countdown timer just in a few minutes.</p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://demo.wponlinesupport.com/countdown-timer-ultimate-demo/\" target=\"_blank\" title=\"Countdown Timer Ultimate\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n	\r\n	<!-- SliderPack Timer -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"http://demo.wponlinesupport.com/sliderspack-all-in-one-image-post-slider/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2019/04/slider-pack.png\" alt=\"SlidersPack – All In One Image/Post Slider\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">SlidersPack – All In One Image/Post Slider</h3>\r\n			<p>SlidersPack – a slider plugin, comes with 10 sliders/carousels plus FancyBox Support with lots options. </p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"http://demo.wponlinesupport.com/sliderspack-all-in-one-image-post-slider/\" target=\"_blank\" title=\"SlidersPack – All In One Image/Post Slider\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n	\r\n	<!-- SliderPack Timer -->\r\n	<div class=\"wp-medium-3 wpcolumns\">\r\n		<div class=\"wpos-plugins\">\r\n			<div class=\"wpos-center\">\r\n				<a href=\"https://www.wponlinesupport.com/wp-plugin/inboundwp-marketing-plugin/\" target=\"_blank\">\r\n					<img src=\"https://www.wponlinesupport.com/wp-content/uploads/2019/04/inboundwp.png\" alt=\"InboundWP – Marketing Plugin\" />\r\n				</a>\r\n			</div>\r\n\r\n			<h3 class=\"wpos-plugin-title wpos-center\">InboundWP – Marketing Plugin</h3>\r\n			<p>InboundWP – Marketing Plugin has a positive and powerful impact on the customer’s mind as the customers are excited to read the attractive content/infographics/news displayed on your website (that is relevant to their interest). </p>\r\n			<a class=\"button button-primary wpos-plugin-buy-link\" href=\"https://www.wponlinesupport.com/wp-plugin/inboundwp-marketing-plugin/\" target=\"_blank\" title=\"InboundWP – Marketing Plugin\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Check Demo</a>\r\n		</div><!-- end .wpos-plugins -->\r\n	</div>\r\n\r\n	<div class=\"wp-medium-12 wpcolumns wpos-center\">\r\n		<a class=\"button button-primary wpos-all-plugin-link\" href=\"https://www.wponlinesupport.com/plugins/\" target=\"_blank\"><i class=\"dashicons dashicons-welcome-view-site\"></i> Browse all Plugins</a>\r\n	</div>\r\n\r\n</div><!-- end .wpos-plugins-wrp -->', 'no'),
(251, '_site_transient_timeout_theme_roots', '1580188937', 'no'),
(252, '_site_transient_theme_roots', 'a:4:{s:7:\"rekidea\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(254, 'wpsisac_slider-category_children', 'a:0:{}', 'yes'),
(256, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580187505;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(262, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1580188854;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(263, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580188855;s:7:\"checked\";a:4:{s:7:\"rekidea\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(264, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580188856;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:5:\"1.9.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2019-08-05 17:14:46\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.1.6/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/wp-slick-slider-and-image-carousel\";s:4:\"slug\";s:34:\"wp-slick-slider-and-image-carousel\";s:6:\"plugin\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/wp-slick-slider-and-image-carousel/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/wp-slick-slider-and-image-carousel.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(267, 'category_children', 'a:0:{}', 'yes');

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
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://rek.local/'),
(11, 5, '_menu_item_orphaned', '1579800147'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1579800147'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1579838583'),
(23, 2, '_wp_desired_post_slug', 'sample-page'),
(24, 8, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(25, 8, '_mail', 'a:8:{s:7:\"subject\";s:20:\"Rek \"[your-subject]\"\";s:6:\"sender\";s:25:\"Rek <wordpress@rek.local>\";s:4:\"body\";s:158:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rek (http://rek.local)\";s:9:\"recipient\";s:17:\"swd.admin@mail.ru\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(26, 8, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"Rek \"[your-subject]\"\";s:6:\"sender\";s:25:\"Rek <wordpress@rek.local>\";s:4:\"body\";s:100:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rek (http://rek.local)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:27:\"Reply-To: swd.admin@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(27, 8, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(28, 8, '_additional_settings', NULL),
(29, 8, '_locale', 'ru_RU'),
(30, 13, '_edit_last', '1'),
(31, 13, '_edit_lock', '1580141596:1'),
(32, 1, '_wp_trash_meta_status', 'publish'),
(33, 1, '_wp_trash_meta_time', '1580140842'),
(34, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(35, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(36, 18, '_edit_lock', '1580211144:1'),
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
(74, 26, '_edit_last', '1'),
(75, 26, '_edit_lock', '1580153231:1'),
(76, 26, 'wpsisac_slide_link', ''),
(77, 26, '_wp_trash_meta_status', 'publish'),
(78, 26, '_wp_trash_meta_time', '1580153378'),
(79, 26, '_wp_desired_post_slug', 'slide1'),
(80, 39, '_edit_last', '1'),
(81, 39, '_edit_lock', '1580188299:1'),
(82, 39, 'wpsisac_slide_link', ''),
(83, 39, '_thumbnail_id', '27'),
(84, 40, '_edit_last', '1'),
(85, 40, '_edit_lock', '1580207880:1'),
(86, 40, '_thumbnail_id', '27'),
(87, 40, 'wpsisac_slide_link', ''),
(88, 41, '_edit_lock', '1580209353:1'),
(89, 42, '_edit_last', '1'),
(90, 42, '_edit_lock', '1580210745:1'),
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
(169, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:27:\"2020/01/window_dressing.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"window_dressing-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(187, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:25:\"2020/01/auto_branding.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"auto_branding-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 78, '_edit_last', '1'),
(189, 78, 'link_thumbnail', '79'),
(190, 78, '_link_thumbnail', 'field_5e3019d8daf7d'),
(191, 81, 'link_thumbnail', '79'),
(192, 81, '_link_thumbnail', 'field_5e3019d8daf7d'),
(197, 82, 'link_thumbnail', '79'),
(198, 82, '_link_thumbnail', 'field_5e3019d8daf7d'),
(199, 83, '_edit_lock', '1580212592:1'),
(200, 84, '_wp_attached_file', '2020/01/infostands.png'),
(201, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:195;s:4:\"file\";s:22:\"2020/01/infostands.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"infostands-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 83, '_edit_last', '1'),
(203, 83, 'link_thumbnail', '84'),
(204, 83, '_link_thumbnail', 'field_5e3019d8daf7d'),
(205, 86, 'link_thumbnail', '84'),
(206, 86, '_link_thumbnail', 'field_5e3019d8daf7d'),
(209, 83, '_pingme', '1'),
(210, 83, '_encloseme', '1'),
(211, 87, 'link_thumbnail', '84'),
(212, 87, '_link_thumbnail', 'field_5e3019d8daf7d');

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
(1, 1, '2020-01-23 20:20:18', '2020-01-23 17:20:18', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2020-01-27 19:00:42', '2020-01-27 16:00:42', '', 0, 'http://rek.local/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-23 20:20:18', '2020-01-23 17:20:18', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://rek.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-01-24 07:03:03', '2020-01-24 04:03:03', '', 0, 'http://rek.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-23 20:20:18', '2020-01-23 17:20:18', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://rek.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-01-23 20:20:18', '2020-01-23 17:20:18', '', 0, 'http://rek.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-01-23 20:20:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-23 20:20:31', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?p=4', 0, 'post', '', 0),
(5, 1, '2020-01-23 20:22:27', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-23 20:22:27', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2020-01-23 20:22:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-23 20:22:27', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-01-24 07:03:03', '2020-01-24 04:03:03', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://rek.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-24 07:03:03', '2020-01-24 04:03:03', '', 2, 'http://rek.local/2020/01/24/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-01-27 16:44:25', '2020-01-27 13:44:25', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nRek \"[your-subject]\"\nRek <wordpress@rek.local>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rek (http://rek.local)\nswd.admin@mail.ru\nReply-To: [your-email]\n\n0\n0\n\nRek \"[your-subject]\"\nRek <wordpress@rek.local>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Rek (http://rek.local)\n[your-email]\nReply-To: swd.admin@mail.ru\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-01-27 16:44:25', '2020-01-27 13:44:25', '', 0, 'http://rek.local/?post_type=wpcf7_contact_form&p=8', 0, 'wpcf7_contact_form', '', 0),
(9, 1, '2020-01-27 16:46:19', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 16:46:19', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=acf-field-group&p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2020-01-27 18:27:08', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 18:27:08', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=acf-field-group&p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2020-01-27 18:27:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 18:27:49', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=acf-field-group&p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2020-01-27 18:31:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 18:31:30', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=acf-field-group&p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2020-01-27 18:52:15', '2020-01-27 15:52:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}i:1;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category:common\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'общие параметры', '%d0%be%d0%b1%d1%89%d0%b8%d0%b5-%d0%bf%d0%b0%d1%80%d0%b0%d0%bc%d0%b5%d1%82%d1%80%d1%8b', 'publish', 'closed', 'closed', '', 'group_5e2f0669d466c', '', '', '2020-01-27 19:15:35', '2020-01-27 16:15:35', '', 0, 'http://rek.local/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2020-01-27 18:52:15', '2020-01-27 15:52:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Электронная почта', 'email', 'publish', 'closed', 'closed', '', 'field_5e2f072a4555c', '', '', '2020-01-27 19:00:26', '2020-01-27 16:00:26', '', 13, 'http://rek.local/?post_type=acf-field&#038;p=14', 0, 'acf-field', '', 0),
(15, 1, '2020-01-27 19:00:26', '2020-01-27 16:00:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон 1', 'phone_1', 'publish', 'closed', 'closed', '', 'field_5e2f08bab1f49', '', '', '2020-01-27 19:00:26', '2020-01-27 16:00:26', '', 13, 'http://rek.local/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2020-01-27 19:00:26', '2020-01-27 16:00:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон 2', 'phone_2', 'publish', 'closed', 'closed', '', 'field_5e2f0904b1f4a', '', '', '2020-01-27 19:00:26', '2020-01-27 16:00:26', '', 13, 'http://rek.local/?post_type=acf-field&p=16', 2, 'acf-field', '', 0),
(17, 1, '2020-01-27 19:00:42', '2020-01-27 16:00:42', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-01-27 19:00:42', '2020-01-27 16:00:42', '', 1, 'http://rek.local/2020/01/27/1-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-01-27 19:03:11', '2020-01-27 16:03:11', '', 'Главная страница', '', 'publish', 'open', 'open', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2020-01-27 19:16:03', '2020-01-27 16:16:03', '', 0, 'http://rek.local/?p=18', 0, 'post', '', 0),
(19, 1, '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:03:02', '2020-01-27 16:03:02', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-01-27 19:03:13', '2020-01-27 16:03:13', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:03:13', '2020-01-27 16:03:13', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-01-27 19:15:35', '2020-01-27 16:15:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес', 'address', 'publish', 'closed', 'closed', '', 'field_5e2f0c96c43f3', '', '', '2020-01-27 19:15:35', '2020-01-27 16:15:35', '', 13, 'http://rek.local/?post_type=acf-field&p=23', 3, 'acf-field', '', 0),
(24, 1, '2020-01-27 19:16:03', '2020-01-27 16:16:03', '', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-01-27 19:16:03', '2020-01-27 16:16:03', '', 18, 'http://rek.local/2020/01/27/18-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-01-27 21:03:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 21:03:52', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=25', 0, 'slick_slider', '', 0),
(26, 1, '2020-01-27 21:14:39', '2020-01-27 18:14:39', '<img class=\"alignnone size-medium wp-image-27\" src=\"http://rek.local/wp-content/uploads/2020/01/top-banner-300x79.jpg\" alt=\"\" width=\"300\" height=\"79\" />', 'Slide1', '', 'trash', 'closed', 'closed', '', 'slide1__trashed', '', '', '2020-01-27 22:29:38', '2020-01-27 19:29:38', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=26', 0, 'slick_slider', '', 0),
(27, 1, '2020-01-27 21:13:35', '2020-01-27 18:13:35', '', 'top-banner', '', 'inherit', 'open', 'closed', '', 'top-banner', '', '', '2020-01-27 21:13:35', '2020-01-27 18:13:35', '', 26, 'http://rek.local/wp-content/uploads/2020/01/top-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-01-27 21:14:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 21:14:18', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=28', 0, 'slick_slider', '', 0),
(29, 1, '2020-01-27 21:14:46', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 21:14:46', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=29', 0, 'slick_slider', '', 0),
(30, 1, '2020-01-27 22:27:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:27:24', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=30', 0, 'slick_slider', '', 0),
(31, 1, '2020-01-27 22:27:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:27:48', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=31', 0, 'slick_slider', '', 0),
(32, 1, '2020-01-27 22:27:57', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:27:57', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=32', 0, 'slick_slider', '', 0),
(33, 1, '2020-01-27 22:29:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:29:48', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=33', 0, 'slick_slider', '', 0),
(34, 1, '2020-01-27 22:29:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:29:55', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=34', 0, 'slick_slider', '', 0),
(35, 1, '2020-01-27 22:31:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:31:37', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=35', 0, 'slick_slider', '', 0),
(36, 1, '2020-01-27 22:34:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:34:48', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=36', 0, 'slick_slider', '', 0),
(37, 1, '2020-01-27 22:39:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-27 22:39:53', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=37', 0, 'slick_slider', '', 0),
(38, 1, '2020-01-28 07:04:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-28 07:04:25', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?post_type=slick_slider&p=38', 0, 'slick_slider', '', 0),
(39, 1, '2020-01-28 07:56:41', '2020-01-28 04:56:41', '', 'slide1', '', 'publish', 'closed', 'closed', '', 'slide1', '', '', '2020-01-28 08:01:02', '2020-01-28 05:01:02', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=39', 0, 'slick_slider', '', 0),
(40, 1, '2020-01-28 08:14:22', '2020-01-28 05:14:22', '', 'slide 2', '', 'publish', 'closed', 'closed', '', 'slide-2', '', '', '2020-01-28 09:02:09', '2020-01-28 06:02:09', '', 0, 'http://rek.local/?post_type=slick_slider&#038;p=40', 0, 'slick_slider', '', 0),
(41, 1, '2020-01-28 14:04:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-28 14:04:39', '0000-00-00 00:00:00', '', 0, 'http://rek.local/?page_id=41', 0, 'page', '', 0),
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
(87, 1, '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 'инфостенды <br> режимы работы', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 83, 'http://rek.local/2020/01/28/83-revision-v1/', 0, 'revision', '', 0);

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
(5, 'Карточки', 'cards-block', 0);

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
(1, 1, 0),
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
(83, 5, 0);

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
(5, 5, 'category', '', 0, 8);

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
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bf147e95c4f0b6965012e59030f1f28a8b858d1e42866b4488427f004d183484\";a:4:{s:10:\"expiration\";i:1580304619;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1580131819;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(26, 1, 'wp_user-settings-time', '1580153093'),
(27, 1, 'closedpostboxes_slick_slider', 'a:1:{i:0;s:14:\"custom-metabox\";}'),
(28, 1, 'metaboxhidden_slick_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'meta-box-order_slick_slider', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,wpsisac_slider-categorydiv\";s:6:\"normal\";s:22:\"slugdiv,custom-metabox\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_slick_slider', '2'),
(31, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5e3017134b485\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

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

--
-- Индексы сохранённых таблиц
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
