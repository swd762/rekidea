-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 01 2020 г., 10:19
-- Версия сервера: 5.7.16
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rsht`
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
(1, 'siteurl', 'http://rsht.local', 'yes'),
(2, 'home', 'http://rsht.local', 'yes'),
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
(48, 'db_version', '44719', 'yes'),
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
(104, 'cron', 'a:6:{i:1580541619;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580577618;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580577619;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580577629;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580577631;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(145, 'theme_mods_rekidea', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580187437;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(186, '_site_transient_timeout_browser_1c6548c1e5fcdb35d7741fd2e4f5f61e', '1580736620', 'no'),
(187, '_site_transient_browser_1c6548c1e5fcdb35d7741fd2e4f5f61e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(192, 'recently_activated', 'a:0:{}', 'yes'),
(197, 'acf_version', '5.8.7', 'yes'),
(200, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1580143465;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(205, 'cptui_new_install', 'false', 'yes'),
(207, 'cptui_post_types', 'a:0:{}', 'yes'),
(231, 'wpos_anylc_redirect', '', 'yes'),
(232, 'wpos_anylc_site_uid', '08a997ccae2bcb49e1b4a2861312ed27', 'yes'),
(233, 'wpos_anylc_pdt_25', 'a:1:{s:6:\"status\";i:1;}', 'yes'),
(254, 'wpsisac_slider-category_children', 'a:0:{}', 'yes'),
(256, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580187505;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(267, 'category_children', 'a:0:{}', 'yes'),
(285, '_site_transient_timeout_browser_d939080b114a7b9883f6459477dce21a', '1580986322', 'no'),
(286, '_site_transient_browser_d939080b114a7b9883f6459477dce21a', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"72.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(287, '_site_transient_timeout_php_check_c10b24bcda05543594ded94839f19c88', '1580986322', 'no'),
(288, '_site_transient_php_check_c10b24bcda05543594ded94839f19c88', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(294, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(304, '_site_transient_timeout_theme_roots', '1580537321', 'no'),
(305, '_site_transient_theme_roots', 'a:1:{s:7:\"rekidea\";s:7:\"/themes\";}', 'no'),
(307, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580535523;s:7:\"checked\";a:1:{s:7:\"rekidea\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(308, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580535523;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.2\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:5:\"1.9.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/wp-slick-slider-and-image-carousel\";s:4:\"slug\";s:34:\"wp-slick-slider-and-image-carousel\";s:6:\"plugin\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:11:\"new_version\";s:5:\"1.9.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/wp-slick-slider-and-image-carousel/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/wp-slick-slider-and-image-carousel.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(309, 'db_upgraded', '', 'yes'),
(310, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.5.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.5\";s:7:\"version\";s:5:\"5.2.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1580536591;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-15 18:30:22\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(311, '_site_transient_timeout_php_check_c1087265602856b93bc71165bc9dc548', '1581141392', 'no'),
(312, '_site_transient_php_check_c1087265602856b93bc71165bc9dc548', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(313, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1580579796', 'no'),
(314, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:42:\"WP Moscow #12. Весенний митап\";s:3:\"url\";s:57:\"https://www.meetup.com/wordpress-moscow/events/268216933/\";s:6:\"meetup\";s:16:\"WordPress Moscow\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/wordpress-moscow/\";s:4:\"date\";s:19:\"2020-03-12 19:00:00\";s:8:\"end_date\";s:19:\"2020-03-12 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:20:\"Москва, Russia\";s:7:\"country\";s:2:\"ru\";s:8:\"latitude\";d:55.807910919189;s:9:\"longitude\";d:37.573364257812;}}}}', 'no'),
(315, 'can_compress_scripts', '1', 'no');

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
(212, 87, '_link_thumbnail', 'field_5e3019d8daf7d'),
(213, 88, '_menu_item_type', 'post_type'),
(214, 88, '_menu_item_menu_item_parent', '0'),
(215, 88, '_menu_item_object_id', '83'),
(216, 88, '_menu_item_object', 'post'),
(217, 88, '_menu_item_target', ''),
(218, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 88, '_menu_item_xfn', ''),
(220, 88, '_menu_item_url', ''),
(221, 88, '_menu_item_orphaned', '1580381814'),
(222, 89, '_menu_item_type', 'post_type'),
(223, 89, '_menu_item_menu_item_parent', '0'),
(224, 89, '_menu_item_object_id', '78'),
(225, 89, '_menu_item_object', 'post'),
(226, 89, '_menu_item_target', ''),
(227, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(228, 89, '_menu_item_xfn', ''),
(229, 89, '_menu_item_url', ''),
(230, 89, '_menu_item_orphaned', '1580381814'),
(231, 90, '_menu_item_type', 'post_type'),
(232, 90, '_menu_item_menu_item_parent', '0'),
(233, 90, '_menu_item_object_id', '71'),
(234, 90, '_menu_item_object', 'post'),
(235, 90, '_menu_item_target', ''),
(236, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(237, 90, '_menu_item_xfn', ''),
(238, 90, '_menu_item_url', ''),
(239, 90, '_menu_item_orphaned', '1580381814'),
(240, 91, '_menu_item_type', 'custom'),
(241, 91, '_menu_item_menu_item_parent', '0'),
(242, 91, '_menu_item_object_id', '91'),
(243, 91, '_menu_item_object', 'custom'),
(244, 91, '_menu_item_target', ''),
(245, 91, '_menu_item_classes', 'a:2:{i:0;s:4:\"bold\";i:1;s:7:\"w-arrow\";}'),
(246, 91, '_menu_item_xfn', ''),
(247, 91, '_menu_item_url', '#'),
(249, 92, '_edit_last', '1'),
(250, 92, '_edit_lock', '1580385817:1'),
(260, 91, 'класс', ''),
(261, 91, '_класс', 'field_5e32c35acb146'),
(264, 97, '_menu_item_type', 'custom'),
(265, 97, '_menu_item_menu_item_parent', '0'),
(266, 97, '_menu_item_object_id', '97'),
(267, 97, '_menu_item_object', 'custom'),
(268, 97, '_menu_item_target', ''),
(269, 97, '_menu_item_classes', 'a:1:{i:0;s:4:\"bold\";}'),
(270, 97, '_menu_item_xfn', ''),
(271, 97, '_menu_item_url', '#'),
(273, 98, '_menu_item_type', 'custom'),
(274, 98, '_menu_item_menu_item_parent', '0'),
(275, 98, '_menu_item_object_id', '98'),
(276, 98, '_menu_item_object', 'custom'),
(277, 98, '_menu_item_target', ''),
(278, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 98, '_menu_item_xfn', ''),
(280, 98, '_menu_item_url', '#'),
(282, 99, '_menu_item_type', 'custom'),
(283, 99, '_menu_item_menu_item_parent', '0'),
(284, 99, '_menu_item_object_id', '99'),
(285, 99, '_menu_item_object', 'custom'),
(286, 99, '_menu_item_target', ''),
(287, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 99, '_menu_item_xfn', ''),
(289, 99, '_menu_item_url', '#'),
(291, 100, '_menu_item_type', 'custom'),
(292, 100, '_menu_item_menu_item_parent', '0'),
(293, 100, '_menu_item_object_id', '100'),
(294, 100, '_menu_item_object', 'custom'),
(295, 100, '_menu_item_target', ''),
(296, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 100, '_menu_item_xfn', ''),
(298, 100, '_menu_item_url', '#'),
(300, 101, '_menu_item_type', 'custom'),
(301, 101, '_menu_item_menu_item_parent', '0'),
(302, 101, '_menu_item_object_id', '101'),
(303, 101, '_menu_item_object', 'custom'),
(304, 101, '_menu_item_target', ''),
(305, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 101, '_menu_item_xfn', ''),
(307, 101, '_menu_item_url', '#'),
(309, 102, '_menu_item_type', 'custom'),
(310, 102, '_menu_item_menu_item_parent', '0'),
(311, 102, '_menu_item_object_id', '102'),
(312, 102, '_menu_item_object', 'custom'),
(313, 102, '_menu_item_target', ''),
(314, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 102, '_menu_item_xfn', ''),
(316, 102, '_menu_item_url', '#'),
(318, 103, '_menu_item_type', 'custom'),
(319, 103, '_menu_item_menu_item_parent', '0'),
(320, 103, '_menu_item_object_id', '103'),
(321, 103, '_menu_item_object', 'custom'),
(322, 103, '_menu_item_target', ''),
(323, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(324, 103, '_menu_item_xfn', ''),
(325, 103, '_menu_item_url', '#'),
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
(361, 107, '_menu_item_url', '#'),
(363, 108, '_menu_item_type', 'custom'),
(364, 108, '_menu_item_menu_item_parent', '104'),
(365, 108, '_menu_item_object_id', '108'),
(366, 108, '_menu_item_object', 'custom'),
(367, 108, '_menu_item_target', ''),
(368, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(369, 108, '_menu_item_xfn', ''),
(370, 108, '_menu_item_url', '#'),
(372, 109, '_menu_item_type', 'custom'),
(373, 109, '_menu_item_menu_item_parent', '104'),
(374, 109, '_menu_item_object_id', '109'),
(375, 109, '_menu_item_object', 'custom'),
(376, 109, '_menu_item_target', ''),
(377, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(378, 109, '_menu_item_xfn', ''),
(379, 109, '_menu_item_url', '#'),
(381, 110, '_menu_item_type', 'custom'),
(382, 110, '_menu_item_menu_item_parent', '104'),
(383, 110, '_menu_item_object_id', '110'),
(384, 110, '_menu_item_object', 'custom'),
(385, 110, '_menu_item_target', ''),
(386, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 110, '_menu_item_xfn', ''),
(388, 110, '_menu_item_url', '#'),
(390, 111, '_menu_item_type', 'custom'),
(391, 111, '_menu_item_menu_item_parent', '104'),
(392, 111, '_menu_item_object_id', '111'),
(393, 111, '_menu_item_object', 'custom'),
(394, 111, '_menu_item_target', ''),
(395, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(396, 111, '_menu_item_xfn', ''),
(397, 111, '_menu_item_url', '#'),
(399, 112, '_menu_item_type', 'custom'),
(400, 112, '_menu_item_menu_item_parent', '104'),
(401, 112, '_menu_item_object_id', '112'),
(402, 112, '_menu_item_object', 'custom'),
(403, 112, '_menu_item_target', ''),
(404, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(405, 112, '_menu_item_xfn', ''),
(406, 112, '_menu_item_url', '#'),
(408, 113, '_menu_item_type', 'custom'),
(409, 113, '_menu_item_menu_item_parent', '104'),
(410, 113, '_menu_item_object_id', '113'),
(411, 113, '_menu_item_object', 'custom'),
(412, 113, '_menu_item_target', ''),
(413, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(414, 113, '_menu_item_xfn', ''),
(415, 113, '_menu_item_url', '#'),
(417, 114, '_menu_item_type', 'custom'),
(418, 114, '_menu_item_menu_item_parent', '105'),
(419, 114, '_menu_item_object_id', '114'),
(420, 114, '_menu_item_object', 'custom'),
(421, 114, '_menu_item_target', ''),
(422, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(423, 114, '_menu_item_xfn', ''),
(424, 114, '_menu_item_url', '#'),
(426, 115, '_menu_item_type', 'custom'),
(427, 115, '_menu_item_menu_item_parent', '105'),
(428, 115, '_menu_item_object_id', '115'),
(429, 115, '_menu_item_object', 'custom'),
(430, 115, '_menu_item_target', ''),
(431, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(432, 115, '_menu_item_xfn', ''),
(433, 115, '_menu_item_url', '#'),
(435, 116, '_menu_item_type', 'custom'),
(436, 116, '_menu_item_menu_item_parent', '105'),
(437, 116, '_menu_item_object_id', '116'),
(438, 116, '_menu_item_object', 'custom'),
(439, 116, '_menu_item_target', ''),
(440, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(441, 116, '_menu_item_xfn', ''),
(442, 116, '_menu_item_url', '/'),
(444, 117, '_menu_item_type', 'custom'),
(445, 117, '_menu_item_menu_item_parent', '105'),
(446, 117, '_menu_item_object_id', '117'),
(447, 117, '_menu_item_object', 'custom'),
(448, 117, '_menu_item_target', ''),
(449, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(450, 117, '_menu_item_xfn', ''),
(451, 117, '_menu_item_url', '/'),
(453, 118, '_menu_item_type', 'custom'),
(454, 118, '_menu_item_menu_item_parent', '105'),
(455, 118, '_menu_item_object_id', '118'),
(456, 118, '_menu_item_object', 'custom'),
(457, 118, '_menu_item_target', ''),
(458, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(459, 118, '_menu_item_xfn', ''),
(460, 118, '_menu_item_url', '/'),
(462, 119, '_menu_item_type', 'custom'),
(463, 119, '_menu_item_menu_item_parent', '105'),
(464, 119, '_menu_item_object_id', '119'),
(465, 119, '_menu_item_object', 'custom'),
(466, 119, '_menu_item_target', ''),
(467, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 119, '_menu_item_xfn', ''),
(469, 119, '_menu_item_url', '/'),
(471, 120, '_menu_item_type', 'custom'),
(472, 120, '_menu_item_menu_item_parent', '106'),
(473, 120, '_menu_item_object_id', '120'),
(474, 120, '_menu_item_object', 'custom'),
(475, 120, '_menu_item_target', ''),
(476, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(477, 120, '_menu_item_xfn', ''),
(478, 120, '_menu_item_url', '/'),
(480, 121, '_menu_item_type', 'custom'),
(481, 121, '_menu_item_menu_item_parent', '106'),
(482, 121, '_menu_item_object_id', '121'),
(483, 121, '_menu_item_object', 'custom'),
(484, 121, '_menu_item_target', ''),
(485, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(486, 121, '_menu_item_xfn', ''),
(487, 121, '_menu_item_url', '/'),
(489, 122, '_menu_item_type', 'custom'),
(490, 122, '_menu_item_menu_item_parent', '106'),
(491, 122, '_menu_item_object_id', '122'),
(492, 122, '_menu_item_object', 'custom'),
(493, 122, '_menu_item_target', ''),
(494, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(495, 122, '_menu_item_xfn', ''),
(496, 122, '_menu_item_url', '/'),
(498, 123, '_menu_item_type', 'custom'),
(499, 123, '_menu_item_menu_item_parent', '106'),
(500, 123, '_menu_item_object_id', '123'),
(501, 123, '_menu_item_object', 'custom'),
(502, 123, '_menu_item_target', ''),
(503, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(504, 123, '_menu_item_xfn', ''),
(505, 123, '_menu_item_url', '/'),
(507, 124, '_menu_item_type', 'custom'),
(508, 124, '_menu_item_menu_item_parent', '106'),
(509, 124, '_menu_item_object_id', '124'),
(510, 124, '_menu_item_object', 'custom'),
(511, 124, '_menu_item_target', ''),
(512, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(513, 124, '_menu_item_xfn', ''),
(514, 124, '_menu_item_url', '/'),
(516, 125, '_menu_item_type', 'custom'),
(517, 125, '_menu_item_menu_item_parent', '107'),
(518, 125, '_menu_item_object_id', '125'),
(519, 125, '_menu_item_object', 'custom'),
(520, 125, '_menu_item_target', ''),
(521, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(522, 125, '_menu_item_xfn', ''),
(523, 125, '_menu_item_url', '/'),
(525, 126, '_menu_item_type', 'custom'),
(526, 126, '_menu_item_menu_item_parent', '107'),
(527, 126, '_menu_item_object_id', '126'),
(528, 126, '_menu_item_object', 'custom'),
(529, 126, '_menu_item_target', ''),
(530, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(531, 126, '_menu_item_xfn', ''),
(532, 126, '_menu_item_url', '/'),
(534, 127, '_menu_item_type', 'custom'),
(535, 127, '_menu_item_menu_item_parent', '107'),
(536, 127, '_menu_item_object_id', '127'),
(537, 127, '_menu_item_object', 'custom'),
(538, 127, '_menu_item_target', ''),
(539, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(540, 127, '_menu_item_xfn', ''),
(541, 127, '_menu_item_url', '/'),
(543, 128, '_menu_item_type', 'custom'),
(544, 128, '_menu_item_menu_item_parent', '107'),
(545, 128, '_menu_item_object_id', '128'),
(546, 128, '_menu_item_object', 'custom'),
(547, 128, '_menu_item_target', ''),
(548, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(549, 128, '_menu_item_xfn', ''),
(550, 128, '_menu_item_url', '/'),
(552, 129, '_menu_item_type', 'custom'),
(553, 129, '_menu_item_menu_item_parent', '114'),
(554, 129, '_menu_item_object_id', '129'),
(555, 129, '_menu_item_object', 'custom'),
(556, 129, '_menu_item_target', ''),
(557, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(558, 129, '_menu_item_xfn', ''),
(559, 129, '_menu_item_url', '/'),
(561, 130, '_menu_item_type', 'custom'),
(562, 130, '_menu_item_menu_item_parent', '114'),
(563, 130, '_menu_item_object_id', '130'),
(564, 130, '_menu_item_object', 'custom'),
(565, 130, '_menu_item_target', ''),
(566, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(567, 130, '_menu_item_xfn', ''),
(568, 130, '_menu_item_url', '/'),
(570, 131, '_menu_item_type', 'custom'),
(571, 131, '_menu_item_menu_item_parent', '114'),
(572, 131, '_menu_item_object_id', '131'),
(573, 131, '_menu_item_object', 'custom'),
(574, 131, '_menu_item_target', ''),
(575, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(576, 131, '_menu_item_xfn', ''),
(577, 131, '_menu_item_url', '/'),
(579, 132, '_menu_item_type', 'custom'),
(580, 132, '_menu_item_menu_item_parent', '115'),
(581, 132, '_menu_item_object_id', '132'),
(582, 132, '_menu_item_object', 'custom'),
(583, 132, '_menu_item_target', ''),
(584, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(585, 132, '_menu_item_xfn', ''),
(586, 132, '_menu_item_url', '/'),
(588, 133, '_menu_item_type', 'custom'),
(589, 133, '_menu_item_menu_item_parent', '115'),
(590, 133, '_menu_item_object_id', '133'),
(591, 133, '_menu_item_object', 'custom'),
(592, 133, '_menu_item_target', ''),
(593, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(594, 133, '_menu_item_xfn', ''),
(595, 133, '_menu_item_url', '/'),
(597, 134, '_menu_item_type', 'custom'),
(598, 134, '_menu_item_menu_item_parent', '115'),
(599, 134, '_menu_item_object_id', '134'),
(600, 134, '_menu_item_object', 'custom'),
(601, 134, '_menu_item_target', ''),
(602, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(603, 134, '_menu_item_xfn', ''),
(604, 134, '_menu_item_url', '/'),
(606, 135, '_menu_item_type', 'custom'),
(607, 135, '_menu_item_menu_item_parent', '115'),
(608, 135, '_menu_item_object_id', '135'),
(609, 135, '_menu_item_object', 'custom'),
(610, 135, '_menu_item_target', ''),
(611, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(612, 135, '_menu_item_xfn', ''),
(613, 135, '_menu_item_url', '/'),
(615, 136, '_menu_item_type', 'custom'),
(616, 136, '_menu_item_menu_item_parent', '120'),
(617, 136, '_menu_item_object_id', '136'),
(618, 136, '_menu_item_object', 'custom'),
(619, 136, '_menu_item_target', ''),
(620, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(621, 136, '_menu_item_xfn', ''),
(622, 136, '_menu_item_url', '/'),
(624, 137, '_menu_item_type', 'custom'),
(625, 137, '_menu_item_menu_item_parent', '120'),
(626, 137, '_menu_item_object_id', '137'),
(627, 137, '_menu_item_object', 'custom'),
(628, 137, '_menu_item_target', ''),
(629, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(630, 137, '_menu_item_xfn', ''),
(631, 137, '_menu_item_url', '/'),
(633, 138, '_menu_item_type', 'custom'),
(634, 138, '_menu_item_menu_item_parent', '120'),
(635, 138, '_menu_item_object_id', '138'),
(636, 138, '_menu_item_object', 'custom'),
(637, 138, '_menu_item_target', ''),
(638, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(639, 138, '_menu_item_xfn', ''),
(640, 138, '_menu_item_url', '/'),
(642, 139, '_menu_item_type', 'custom'),
(643, 139, '_menu_item_menu_item_parent', '121'),
(644, 139, '_menu_item_object_id', '139'),
(645, 139, '_menu_item_object', 'custom'),
(646, 139, '_menu_item_target', ''),
(647, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(648, 139, '_menu_item_xfn', ''),
(649, 139, '_menu_item_url', '/'),
(651, 140, '_menu_item_type', 'custom'),
(652, 140, '_menu_item_menu_item_parent', '121'),
(653, 140, '_menu_item_object_id', '140'),
(654, 140, '_menu_item_object', 'custom'),
(655, 140, '_menu_item_target', ''),
(656, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(657, 140, '_menu_item_xfn', ''),
(658, 140, '_menu_item_url', '/'),
(660, 141, '_menu_item_type', 'custom'),
(661, 141, '_menu_item_menu_item_parent', '121'),
(662, 141, '_menu_item_object_id', '141'),
(663, 141, '_menu_item_object', 'custom'),
(664, 141, '_menu_item_target', ''),
(665, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(666, 141, '_menu_item_xfn', ''),
(667, 141, '_menu_item_url', '/'),
(669, 142, '_menu_item_type', 'custom'),
(670, 142, '_menu_item_menu_item_parent', '122'),
(671, 142, '_menu_item_object_id', '142'),
(672, 142, '_menu_item_object', 'custom'),
(673, 142, '_menu_item_target', ''),
(674, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 142, '_menu_item_xfn', ''),
(676, 142, '_menu_item_url', '/'),
(678, 143, '_menu_item_type', 'custom'),
(679, 143, '_menu_item_menu_item_parent', '122'),
(680, 143, '_menu_item_object_id', '143'),
(681, 143, '_menu_item_object', 'custom'),
(682, 143, '_menu_item_target', ''),
(683, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(684, 143, '_menu_item_xfn', ''),
(685, 143, '_menu_item_url', '/'),
(687, 144, '_menu_item_type', 'custom'),
(688, 144, '_menu_item_menu_item_parent', '0'),
(689, 144, '_menu_item_object_id', '144'),
(690, 144, '_menu_item_object', 'custom'),
(691, 144, '_menu_item_target', ''),
(692, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 144, '_menu_item_xfn', ''),
(694, 144, '_menu_item_url', '/'),
(696, 145, '_menu_item_type', 'custom'),
(697, 145, '_menu_item_menu_item_parent', '0'),
(698, 145, '_menu_item_object_id', '145'),
(699, 145, '_menu_item_object', 'custom'),
(700, 145, '_menu_item_target', ''),
(701, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 145, '_menu_item_xfn', ''),
(703, 145, '_menu_item_url', '#'),
(705, 146, '_menu_item_type', 'custom'),
(706, 146, '_menu_item_menu_item_parent', '0'),
(707, 146, '_menu_item_object_id', '146'),
(708, 146, '_menu_item_object', 'custom'),
(709, 146, '_menu_item_target', ''),
(710, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 146, '_menu_item_xfn', ''),
(712, 146, '_menu_item_url', '#'),
(714, 147, '_menu_item_type', 'custom'),
(715, 147, '_menu_item_menu_item_parent', '0'),
(716, 147, '_menu_item_object_id', '147'),
(717, 147, '_menu_item_object', 'custom'),
(718, 147, '_menu_item_target', ''),
(719, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 147, '_menu_item_xfn', ''),
(721, 147, '_menu_item_url', '#'),
(723, 148, '_menu_item_type', 'custom'),
(724, 148, '_menu_item_menu_item_parent', '0'),
(725, 148, '_menu_item_object_id', '148'),
(726, 148, '_menu_item_object', 'custom'),
(727, 148, '_menu_item_target', ''),
(728, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 148, '_menu_item_xfn', ''),
(730, 148, '_menu_item_url', '#'),
(732, 149, '_menu_item_type', 'custom'),
(733, 149, '_menu_item_menu_item_parent', '0'),
(734, 149, '_menu_item_object_id', '149'),
(735, 149, '_menu_item_object', 'custom'),
(736, 149, '_menu_item_target', ''),
(737, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 149, '_menu_item_xfn', ''),
(739, 149, '_menu_item_url', '#'),
(741, 150, '_menu_item_type', 'custom'),
(742, 150, '_menu_item_menu_item_parent', '0'),
(743, 150, '_menu_item_object_id', '150'),
(744, 150, '_menu_item_object', 'custom'),
(745, 150, '_menu_item_target', ''),
(746, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 150, '_menu_item_xfn', ''),
(748, 150, '_menu_item_url', '#'),
(750, 151, '_menu_item_type', 'custom'),
(751, 151, '_menu_item_menu_item_parent', '0'),
(752, 151, '_menu_item_object_id', '151'),
(753, 151, '_menu_item_object', 'custom'),
(754, 151, '_menu_item_target', ''),
(755, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 151, '_menu_item_xfn', ''),
(757, 151, '_menu_item_url', '#'),
(759, 152, '_menu_item_type', 'custom'),
(760, 152, '_menu_item_menu_item_parent', '0'),
(761, 152, '_menu_item_object_id', '152'),
(762, 152, '_menu_item_object', 'custom'),
(763, 152, '_menu_item_target', ''),
(764, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 152, '_menu_item_xfn', ''),
(766, 152, '_menu_item_url', '#'),
(768, 153, '_menu_item_type', 'custom'),
(769, 153, '_menu_item_menu_item_parent', '0'),
(770, 153, '_menu_item_object_id', '153'),
(771, 153, '_menu_item_object', 'custom'),
(772, 153, '_menu_item_target', ''),
(773, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(774, 153, '_menu_item_xfn', ''),
(775, 153, '_menu_item_url', '#'),
(777, 154, '_menu_item_type', 'custom'),
(778, 154, '_menu_item_menu_item_parent', '0'),
(779, 154, '_menu_item_object_id', '154'),
(780, 154, '_menu_item_object', 'custom'),
(781, 154, '_menu_item_target', ''),
(782, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 154, '_menu_item_xfn', ''),
(784, 154, '_menu_item_url', '#'),
(786, 155, '_menu_item_type', 'custom'),
(787, 155, '_menu_item_menu_item_parent', '0'),
(788, 155, '_menu_item_object_id', '155'),
(789, 155, '_menu_item_object', 'custom'),
(790, 155, '_menu_item_target', ''),
(791, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(792, 155, '_menu_item_xfn', ''),
(793, 155, '_menu_item_url', '#'),
(795, 156, '_menu_item_type', 'custom'),
(796, 156, '_menu_item_menu_item_parent', '0'),
(797, 156, '_menu_item_object_id', '156'),
(798, 156, '_menu_item_object', 'custom'),
(799, 156, '_menu_item_target', ''),
(800, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(801, 156, '_menu_item_xfn', ''),
(802, 156, '_menu_item_url', '#'),
(804, 157, '_menu_item_type', 'custom'),
(805, 157, '_menu_item_menu_item_parent', '0'),
(806, 157, '_menu_item_object_id', '157'),
(807, 157, '_menu_item_object', 'custom'),
(808, 157, '_menu_item_target', ''),
(809, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(810, 157, '_menu_item_xfn', ''),
(811, 157, '_menu_item_url', '#'),
(813, 158, '_menu_item_type', 'custom'),
(814, 158, '_menu_item_menu_item_parent', '0'),
(815, 158, '_menu_item_object_id', '158'),
(816, 158, '_menu_item_object', 'custom'),
(817, 158, '_menu_item_target', ''),
(818, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(819, 158, '_menu_item_xfn', ''),
(820, 158, '_menu_item_url', '#'),
(822, 159, '_menu_item_type', 'custom'),
(823, 159, '_menu_item_menu_item_parent', '0'),
(824, 159, '_menu_item_object_id', '159'),
(825, 159, '_menu_item_object', 'custom'),
(826, 159, '_menu_item_target', ''),
(827, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(828, 159, '_menu_item_xfn', ''),
(829, 159, '_menu_item_url', '#'),
(831, 160, '_menu_item_type', 'custom'),
(832, 160, '_menu_item_menu_item_parent', '0'),
(833, 160, '_menu_item_object_id', '160'),
(834, 160, '_menu_item_object', 'custom'),
(835, 160, '_menu_item_target', ''),
(836, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(837, 160, '_menu_item_xfn', ''),
(838, 160, '_menu_item_url', '#'),
(840, 161, '_menu_item_type', 'custom'),
(841, 161, '_menu_item_menu_item_parent', '0'),
(842, 161, '_menu_item_object_id', '161'),
(843, 161, '_menu_item_object', 'custom'),
(844, 161, '_menu_item_target', ''),
(845, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(846, 161, '_menu_item_xfn', ''),
(847, 161, '_menu_item_url', '#'),
(849, 162, '_menu_item_type', 'custom'),
(850, 162, '_menu_item_menu_item_parent', '0'),
(851, 162, '_menu_item_object_id', '162'),
(852, 162, '_menu_item_object', 'custom'),
(853, 162, '_menu_item_target', ''),
(854, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(855, 162, '_menu_item_xfn', ''),
(856, 162, '_menu_item_url', '#'),
(858, 163, '_menu_item_type', 'custom'),
(859, 163, '_menu_item_menu_item_parent', '0'),
(860, 163, '_menu_item_object_id', '163'),
(861, 163, '_menu_item_object', 'custom'),
(862, 163, '_menu_item_target', ''),
(863, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(864, 163, '_menu_item_xfn', ''),
(865, 163, '_menu_item_url', '#');

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
(87, 1, '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 'инфостенды <br> режимы работы', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-01-28 14:50:36', '2020-01-28 11:50:36', '', 83, 'http://rek.local/2020/01/28/83-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-01-30 13:56:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-30 13:56:54', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2020-01-30 13:56:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-30 13:56:54', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2020-01-30 13:56:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-30 13:56:54', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2020-01-30 14:52:15', '2020-01-30 11:52:15', '', 'Каталог рекламы', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%82%d0%b0%d0%bb%d0%be%d0%b3-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2020-01-30 14:52:07', '2020-01-30 11:52:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 'publish', 'closed', 'closed', '', 'group_5e32c3151260c', '', '', '2020-01-30 15:03:36', '2020-01-30 12:03:36', '', 0, 'http://rsht.local/?post_type=acf-field-group&#038;p=92', 0, 'acf-field-group', '', 0),
(94, 1, '2020-01-30 14:56:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-30 14:56:58', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?post_type=acf-field-group&p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2020-01-30 14:56:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-30 14:56:59', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?post_type=acf-field-group&p=95', 0, 'acf-field-group', '', 0),
(97, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Акции', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%ba%d1%86%d0%b8%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=97', 42, 'nav_menu_item', '', 0),
(98, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Услуги', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=98', 43, 'nav_menu_item', '', 0),
(99, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Цены', '', 'publish', 'closed', 'closed', '', '%d1%86%d0%b5%d0%bd%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=99', 44, 'nav_menu_item', '', 0),
(100, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Портфолио', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be', '', '', '2020-02-01 09:31:14', '2020-02-01 06:31:14', '', 0, 'http://rsht.local/?p=100', 45, 'nav_menu_item', '', 0),
(101, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Оплата и доставка', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0-%d0%b8-%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0', '', '', '2020-02-01 09:31:14', '2020-02-01 06:31:14', '', 0, 'http://rsht.local/?p=101', 46, 'nav_menu_item', '', 0),
(102, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Статьи', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8', '', '', '2020-02-01 09:31:14', '2020-02-01 06:31:14', '', 0, 'http://rsht.local/?p=102', 47, 'nav_menu_item', '', 0),
(103, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2020-02-01 09:31:14', '2020-02-01 06:31:14', '', 0, 'http://rsht.local/?p=103', 48, 'nav_menu_item', '', 0),
(104, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Разделитель', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d0%b8%d1%82%d0%b5%d0%bb%d1%8c', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=104', 2, 'nav_menu_item', '', 0),
(105, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Разделитель', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-2', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=105', 14, 'nav_menu_item', '', 0),
(106, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Разделитель', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-3', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=106', 28, 'nav_menu_item', '', 0),
(107, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Вывески', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=107', 3, 'nav_menu_item', '', 0),
(108, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Фотозона', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%b7%d0%be%d0%bd%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=108', 8, 'nav_menu_item', '', 0),
(109, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Пресс волл', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b5%d1%81%d1%81-%d0%b2%d0%be%d0%bb%d0%bb', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=109', 9, 'nav_menu_item', '', 0),
(110, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Промостойки', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be%d0%bc%d0%be%d1%81%d1%82%d0%be%d0%b9%d0%ba%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=110', 10, 'nav_menu_item', '', 0),
(111, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Баннерные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=111', 11, 'nav_menu_item', '', 0),
(112, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Ролл ап', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d0%bb%d0%bb-%d0%b0%d0%bf', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=112', 12, 'nav_menu_item', '', 0),
(113, 1, '2020-01-30 15:09:03', '2020-01-30 12:09:03', '', 'Аренда рекламных конструкций', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%bd%d1%8b%d1%85-%d0%ba%d0%be%d0%bd%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%86%d0%b8%d0%b9', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=113', 13, 'nav_menu_item', '', 0),
(114, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Световые панели', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=114', 15, 'nav_menu_item', '', 0),
(115, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Широкоформатная печать', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%b8%d1%80%d0%be%d0%ba%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%82%d0%bd%d0%b0%d1%8f-%d0%bf%d0%b5%d1%87%d0%b0%d1%82%d1%8c', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=115', 19, 'nav_menu_item', '', 0),
(116, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Лазерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%b7%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=116', 24, 'nav_menu_item', '', 0),
(117, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Ростовые фигуры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=117', 25, 'nav_menu_item', '', 0),
(118, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Брендирование транспорта', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=118', 26, 'nav_menu_item', '', 0),
(119, 1, '2020-01-30 15:10:46', '2020-01-30 12:10:46', '', 'Оклейка витрин и офисных перегородок', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=119', 27, 'nav_menu_item', '', 0),
(120, 1, '2020-01-30 15:12:35', '2020-01-30 12:12:35', '', 'Штендеры', '', 'publish', 'closed', 'closed', '', '%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=120', 29, 'nav_menu_item', '', 0),
(121, 1, '2020-01-30 15:12:35', '2020-01-30 12:12:35', '', 'Картины для дома и офиса', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b-%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=121', 33, 'nav_menu_item', '', 0),
(122, 1, '2020-01-30 15:12:35', '2020-01-30 12:12:35', '', 'Информационные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=122', 37, 'nav_menu_item', '', 0),
(123, 1, '2020-01-30 15:12:36', '2020-01-30 12:12:36', '', 'Разработка дизайн-макетов', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%ba%d0%b0-%d0%b4%d0%b8%d0%b7%d0%b0%d0%b9%d0%bd-%d0%bc%d0%b0%d0%ba%d0%b5%d1%82%d0%be%d0%b2', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=123', 40, 'nav_menu_item', '', 0),
(124, 1, '2020-01-30 15:12:36', '2020-01-30 12:12:36', '', 'Материалы для рекламы и творчества', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%82%d0%b5%d1%80%d0%b8%d0%b0%d0%bb%d1%8b-%d0%b4%d0%bb%d1%8f-%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d1%8b-%d0%b8-%d1%82%d0%b2%d0%be%d1%80%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=124', 41, 'nav_menu_item', '', 0),
(125, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Световые объемные буквы для уличных вывесок', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%be%d0%b1%d1%8a%d0%b5%d0%bc%d0%bd%d1%8b%d0%b5-%d0%b1%d1%83%d0%ba%d0%b2%d1%8b-%d0%b4%d0%bb%d1%8f-%d1%83%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d1%85-%d0%b2', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=125', 4, 'nav_menu_item', '', 0),
(126, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Интерьерные вывески', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d1%8c%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=126', 5, 'nav_menu_item', '', 0),
(127, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Аптечные кресты', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bf%d1%82%d0%b5%d1%87%d0%bd%d1%8b%d0%b5-%d0%ba%d1%80%d0%b5%d1%81%d1%82%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=127', 6, 'nav_menu_item', '', 0),
(128, 1, '2020-01-30 15:16:26', '2020-01-30 12:16:26', '', 'Панель-кронштейны', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d1%8c-%d0%ba%d1%80%d0%be%d0%bd%d1%88%d1%82%d0%b5%d0%b9%d0%bd%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=128', 7, 'nav_menu_item', '', 0),
(129, 1, '2020-01-30 15:17:43', '2020-01-30 12:17:43', '', 'Магнитные', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%bd%d0%b8%d1%82%d0%bd%d1%8b%d0%b5', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=129', 16, 'nav_menu_item', '', 0),
(130, 1, '2020-01-30 15:17:43', '2020-01-30 12:17:43', '', 'С клик профилем', '', 'publish', 'closed', 'closed', '', '%d1%81-%d0%ba%d0%bb%d0%b8%d0%ba-%d0%bf%d1%80%d0%be%d1%84%d0%b8%d0%bb%d0%b5%d0%bc', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=130', 17, 'nav_menu_item', '', 0),
(131, 1, '2020-01-30 15:17:43', '2020-01-30 12:17:43', '', 'Безрамочные', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b5%d0%b7%d1%80%d0%b0%d0%bc%d0%be%d1%87%d0%bd%d1%8b%d0%b5', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=131', 18, 'nav_menu_item', '', 0),
(132, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'На баннере, плёнке, фотобумаге', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b0-%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%b5-%d0%bf%d0%bb%d1%91%d0%bd%d0%ba%d0%b5-%d1%84%d0%be%d1%82%d0%be%d0%b1%d1%83%d0%bc%d0%b0%d0%b3%d0%b5', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=132', 20, 'nav_menu_item', '', 0),
(133, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'Ламинация и прикатка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%bc%d0%b8%d0%bd%d0%b0%d1%86%d0%b8%d1%8f-%d0%b8-%d0%bf%d1%80%d0%b8%d0%ba%d0%b0%d1%82%d0%ba%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=133', 21, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(134, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'Плоттерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%be%d1%82%d1%82%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=134', 22, 'nav_menu_item', '', 0),
(135, 1, '2020-01-30 15:18:43', '2020-01-30 12:18:43', '', 'Плакаты и постеры', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%bb%d0%b0%d0%ba%d0%b0%d1%82%d1%8b-%d0%b8-%d0%bf%d0%be%d1%81%d1%82%d0%b5%d1%80%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=135', 23, 'nav_menu_item', '', 0),
(136, 1, '2020-01-30 15:20:00', '2020-01-30 12:20:00', '', 'Прямой и круглый', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d1%8f%d0%bc%d0%be%d0%b9-%d0%b8-%d0%ba%d1%80%d1%83%d0%b3%d0%bb%d1%8b%d0%b9', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=136', 30, 'nav_menu_item', '', 0),
(137, 1, '2020-01-30 15:20:00', '2020-01-30 12:20:00', '', 'Меловой и маркерный', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d0%bb%d0%be%d0%b2%d0%be%d0%b9-%d0%b8-%d0%bc%d0%b0%d1%80%d0%ba%d0%b5%d1%80%d0%bd%d1%8b%d0%b9', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=137', 31, 'nav_menu_item', '', 0),
(138, 1, '2020-01-30 15:20:00', '2020-01-30 12:20:00', '', 'Нестандартные штендеры', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%b5%d1%81%d1%82%d0%b0%d0%bd%d0%b4%d0%b0%d1%80%d1%82%d0%bd%d1%8b%d0%b5-%d1%88%d1%82%d0%b5%d0%bd%d0%b4%d0%b5%d1%80%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=138', 32, 'nav_menu_item', '', 0),
(139, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Модульные картины', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%be%d0%b4%d1%83%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=139', 34, 'nav_menu_item', '', 0),
(140, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Для дома', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=140', 35, 'nav_menu_item', '', 0),
(141, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Для офисов, кафе и ресторанов', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%bb%d1%8f-%d0%be%d1%84%d0%b8%d1%81%d0%be%d0%b2-%d0%ba%d0%b0%d1%84%d0%b5-%d0%b8-%d1%80%d0%b5%d1%81%d1%82%d0%be%d1%80%d0%b0%d0%bd%d0%be%d0%b2', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=141', 36, 'nav_menu_item', '', 0),
(142, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'С плоскими и объемными карманами', '', 'publish', 'closed', 'closed', '', '%d1%81-%d0%bf%d0%bb%d0%be%d1%81%d0%ba%d0%b8%d0%bc%d0%b8-%d0%b8-%d0%be%d0%b1%d1%8a%d0%b5%d0%bc%d0%bd%d1%8b%d0%bc%d0%b8-%d0%ba%d0%b0%d1%80%d0%bc%d0%b0%d0%bd%d0%b0%d0%bc%d0%b8', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=142', 38, 'nav_menu_item', '', 0),
(143, 1, '2020-01-30 15:22:47', '2020-01-30 12:22:47', '', 'Режим работы', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d0%b6%d0%b8%d0%bc-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b', '', '', '2020-02-01 09:31:13', '2020-02-01 06:31:13', '', 0, 'http://rsht.local/?p=143', 39, 'nav_menu_item', '', 0),
(144, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Вывески', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b2%d0%b5%d1%81%d0%ba%d0%b8-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=144', 1, 'nav_menu_item', '', 0),
(145, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Световые панели', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b2%d0%b5%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d0%bf%d0%b0%d0%bd%d0%b5%d0%bb%d0%b8-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=145', 2, 'nav_menu_item', '', 0),
(146, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Широкоформатная печать', '', 'publish', 'closed', 'closed', '', '%d1%88%d0%b8%d1%80%d0%be%d0%ba%d0%be%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%82%d0%bd%d0%b0%d1%8f-%d0%bf%d0%b5%d1%87%d0%b0%d1%82%d1%8c-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=146', 3, 'nav_menu_item', '', 0),
(147, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Пресс волл', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%b5%d1%81%d1%81-%d0%b2%d0%be%d0%bb%d0%bb-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=147', 4, 'nav_menu_item', '', 0),
(148, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Фотозона', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%be%d1%82%d0%be%d0%b7%d0%be%d0%bd%d0%b0-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=148', 5, 'nav_menu_item', '', 0),
(149, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Баннерные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=149', 6, 'nav_menu_item', '', 0),
(150, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Ролл ап', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d0%bb%d0%bb-%d0%b0%d0%bf-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=150', 7, 'nav_menu_item', '', 0),
(151, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Ростовые фигуры', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%be%d1%81%d1%82%d0%be%d0%b2%d1%8b%d0%b5-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=151', 8, 'nav_menu_item', '', 0),
(152, 1, '2020-01-30 15:52:09', '2020-01-30 12:52:09', '', 'Брендирование транспорта', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%80%d0%b5%d0%bd%d0%b4%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d1%82%d1%80%d0%b0%d0%bd%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b0-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=152', 9, 'nav_menu_item', '', 0),
(153, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Оклейка витрин и офисных перегородок', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%ba%d0%bb%d0%b5%d0%b9%d0%ba%d0%b0-%d0%b2%d0%b8%d1%82%d1%80%d0%b8%d0%bd-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%bd%d1%8b%d1%85-%d0%bf%d0%b5%d1%80%d0%b5%d0%b3%d0%be%d1%80%d0%be%d0%b4%d0%be%d0%ba-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=153', 10, 'nav_menu_item', '', 0),
(154, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Картины для дома и офиса', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b-%d0%b4%d0%bb%d1%8f-%d0%b4%d0%be%d0%bc%d0%b0-%d0%b8-%d0%be%d1%84%d0%b8%d1%81%d0%b0-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=154', 11, 'nav_menu_item', '', 0),
(155, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Лазерная резка', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b0%d0%b7%d0%b5%d1%80%d0%bd%d0%b0%d1%8f-%d1%80%d0%b5%d0%b7%d0%ba%d0%b0-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=155', 12, 'nav_menu_item', '', 0),
(156, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Информационные стенды', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d0%b5-%d1%81%d1%82%d0%b5%d0%bd%d0%b4%d1%8b-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=156', 13, 'nav_menu_item', '', 0),
(157, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Разработка дизайн-макетов', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%ba%d0%b0-%d0%b4%d0%b8%d0%b7%d0%b0%d0%b9%d0%bd-%d0%bc%d0%b0%d0%ba%d0%b5%d1%82%d0%be%d0%b2-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=157', 14, 'nav_menu_item', '', 0),
(158, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Услуги', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=158', 15, 'nav_menu_item', '', 0),
(159, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Цены', '', 'publish', 'closed', 'closed', '', '%d1%86%d0%b5%d0%bd%d1%8b-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=159', 16, 'nav_menu_item', '', 0),
(160, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Портфолио', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=160', 17, 'nav_menu_item', '', 0),
(161, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Оплата и доставка', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0-%d0%b8-%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=161', 18, 'nav_menu_item', '', 0),
(162, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Статьи', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d0%b0%d1%82%d1%8c%d0%b8-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=162', 19, 'nav_menu_item', '', 0),
(163, 1, '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b-2', '', '', '2020-01-30 15:54:46', '2020-01-30 12:54:46', '', 0, 'http://rsht.local/?p=163', 20, 'nav_menu_item', '', 0),
(164, 1, '2020-02-01 08:56:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-01 08:56:32', '0000-00-00 00:00:00', '', 0, 'http://rsht.local/?p=164', 0, 'post', '', 0);

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
(5, 'Карточки', 'cards-block', 0),
(6, 'top', 'top', 0),
(7, 'Верхнее меню (Мобильное)', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e-%d0%bc%d0%be%d0%b1%d0%b8%d0%bb%d1%8c%d0%bd%d0%be%d0%b5', 0);

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
(83, 5, 0),
(91, 6, 0),
(97, 6, 0),
(98, 6, 0),
(99, 6, 0),
(100, 6, 0),
(101, 6, 0),
(102, 6, 0),
(103, 6, 0),
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
(159, 7, 0),
(160, 7, 0),
(161, 7, 0),
(162, 7, 0),
(163, 7, 0);

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
(6, 6, 'nav_menu', '', 0, 48),
(7, 7, 'nav_menu', '', 0, 20);

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
(16, 1, 'session_tokens', 'a:2:{s:64:\"3ca8546c07de773cfbf374c83605013e04f39345532b947cfc991e75237d1faf\";a:4:{s:10:\"expiration\";i:1580554320;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0\";s:5:\"login\";i:1580381520;}s:64:\"92b395a9c70a856117160bf2a9d108a2189b1730f9668262b0f800c02fa7a7fb\";a:4:{s:10:\"expiration\";i:1580709390;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko/20100101 Firefox/72.0\";s:5:\"login\";i:1580536590;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '164'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(26, 1, 'wp_user-settings-time', '1580153093'),
(27, 1, 'closedpostboxes_slick_slider', 'a:1:{i:0;s:14:\"custom-metabox\";}'),
(28, 1, 'metaboxhidden_slick_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'meta-box-order_slick_slider', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,wpsisac_slider-categorydiv\";s:6:\"normal\";s:22:\"slugdiv,custom-metabox\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_slick_slider', '2'),
(31, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:23:\"acf-group_5e3017134b485\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'nav_menu_recently_edited', '6');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
