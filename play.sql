-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Abr-2022 às 23:46
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `play`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-27 11:29:39', '2021-10-27 14:29:39', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/play', 'yes'),
(2, 'home', 'http://localhost/play', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marcelobfariasjr@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:122:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:18:\"index.php/video/?$\";s:25:\"index.php?post_type=video\";s:48:\"index.php/video/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:43:\"index.php/video/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:35:\"index.php/video/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=video&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"index.php/video/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"index.php/video/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"index.php/video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"index.php/video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"index.php/video/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"index.php/video/([^/]+)/embed/?$\";s:38:\"index.php?video=$matches[1]&embed=true\";s:36:\"index.php/video/([^/]+)/trackback/?$\";s:32:\"index.php?video=$matches[1]&tb=1\";s:56:\"index.php/video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:51:\"index.php/video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:44:\"index.php/video/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&paged=$matches[2]\";s:51:\"index.php/video/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/video/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?video=$matches[1]&page=$matches[2]\";s:32:\"index.php/video/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"index.php/video/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"index.php/video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"index.php/video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/video/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"index.php/genero/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:52:\"index.php/genero/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?genero=$matches[1]&feed=$matches[2]\";s:33:\"index.php/genero/([^/]+)/embed/?$\";s:39:\"index.php?genero=$matches[1]&embed=true\";s:45:\"index.php/genero/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?genero=$matches[1]&paged=$matches[2]\";s:27:\"index.php/genero/([^/]+)/?$\";s:28:\"index.php?genero=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'play', 'yes'),
(41, 'stylesheet', 'play', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '21', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1650896945', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1650839396;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1650853794;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650853797;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650853798;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650896987;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650897325;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650908722;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651156188;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1635346020;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'Play', 'yes'),
(155, 'theme_mods_play', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:23;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1636563705;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(168, 'recovery_mode_email_last_sent', '1635525063', 'yes'),
(174, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'site_logo', '23', 'yes'),
(190, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":1,\"critical\":2}', 'yes'),
(211, 'category_children', 'a:0:{}', 'yes'),
(217, 'genero_children', 'a:0:{}', 'yes'),
(231, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1636563713;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(301, 'recently_activated', 'a:0:{}', 'yes'),
(326, 'db_upgraded', '', 'yes'),
(328, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"marcelobfariasjr@gmail.com\";s:7:\"version\";s:5:\"5.9.3\";s:9:\"timestamp\";i:1650722391;}', 'no'),
(660, 'can_compress_scripts', '1', 'no'),
(698, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1650836473;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(733, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650836476;s:7:\"checked\";a:2:{s:4:\"play\";s:0:\"\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(802, '_site_transient_timeout_php_check_26328e95a1a09d326a615e4b43668741', '1651327120', 'no'),
(803, '_site_transient_php_check_26328e95a1a09d326a615e4b43668741', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(804, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1650836469;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(821, '_site_transient_timeout_theme_roots', '1650838274', 'no'),
(822, '_site_transient_theme_roots', 'a:2:{s:4:\"play\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(823, '_transient_timeout_global_styles_play', '1650836806', 'no'),
(824, '_transient_global_styles_play', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_lock', '1647984982:1'),
(10, 9, '_edit_lock', '1635356665:1'),
(11, 11, '_edit_lock', '1635356686:1'),
(84, 21, '_wp_attached_file', '2021/10/favicon-32x32-1.png'),
(85, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:27:\"2021/10/favicon-32x32-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 23, '_wp_attached_file', '2021/10/logo.png'),
(89, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:432;s:6:\"height\";i:139;s:4:\"file\";s:16:\"2021/10/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 36, 'Duração', '181m'),
(108, 36, '_edit_last', '1'),
(109, 36, '_edit_lock', '1635525094:1'),
(110, 36, 'Duração', '181m'),
(111, 37, '_wp_attached_file', '2021/10/pexels-anastasia-shuraeva-4513214.jpg'),
(112, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4480;s:6:\"height\";i:5600;s:4:\"file\";s:45:\"2021/10/pexels-anastasia-shuraeva-4513214.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 38, '_wp_attached_file', '2021/10/pexels-andrea-piacquadio-3760259.jpg'),
(114, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:3942;s:4:\"file\";s:44:\"2021/10/pexels-andrea-piacquadio-3760259.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 39, '_wp_attached_file', '2021/10/pexels-burak-k-1253049.jpg'),
(116, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5472;s:6:\"height\";i:3648;s:4:\"file\";s:34:\"2021/10/pexels-burak-k-1253049.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 40, '_wp_attached_file', '2021/10/pexels-chris-peeters-12801.jpg'),
(118, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2386;s:6:\"height\";i:1591;s:4:\"file\";s:38:\"2021/10/pexels-chris-peeters-12801.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"18\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1409329312\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(119, 41, '_wp_attached_file', '2021/10/pexels-cottonbro-4753879.jpg'),
(120, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2832;s:6:\"height\";i:4240;s:4:\"file\";s:36:\"2021/10/pexels-cottonbro-4753879.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 42, '_wp_attached_file', '2021/10/pexels-dazzle-jam-1190208.jpg'),
(122, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:6000;s:4:\"file\";s:37:\"2021/10/pexels-dazzle-jam-1190208.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 43, '_wp_attached_file', '2021/10/pexels-ekaterina-belinskaya-4674351.jpg'),
(124, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2218;s:6:\"height\";i:3327;s:4:\"file\";s:47:\"2021/10/pexels-ekaterina-belinskaya-4674351.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1512618822\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(125, 44, '_wp_attached_file', '2021/10/pexels-francesco-ungaro-1525041.jpg'),
(126, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4000;s:4:\"file\";s:43:\"2021/10/pexels-francesco-ungaro-1525041.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-H1\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539964695\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"10\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 45, '_wp_attached_file', '2021/10/pexels-gabb-tapic-3568544.jpg'),
(128, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2624;s:6:\"height\";i:3936;s:4:\"file\";s:37:\"2021/10/pexels-gabb-tapic-3568544.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 46, '_wp_attached_file', '2021/10/pexels-gabriel-hohol-3593922.jpg'),
(130, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3915;s:6:\"height\";i:5872;s:4:\"file\";s:40:\"2021/10/pexels-gabriel-hohol-3593922.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 47, '_wp_attached_file', '2021/10/pexels-gabriel-pompeo-4338508.jpg'),
(132, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:5760;s:4:\"file\";s:41:\"2021/10/pexels-gabriel-pompeo-4338508.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 48, '_wp_attached_file', '2021/10/pexels-ivy-son-3490257.jpg'),
(134, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:34:\"2021/10/pexels-ivy-son-3490257.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 49, '_wp_attached_file', '2021/10/pexels-jayson-marquez-4850412.jpg'),
(136, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3264;s:6:\"height\";i:4896;s:4:\"file\";s:41:\"2021/10/pexels-jayson-marquez-4850412.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 50, '_wp_attached_file', '2021/10/pexels-jayson-marquez-4850421.jpg'),
(138, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3264;s:6:\"height\";i:4896;s:4:\"file\";s:41:\"2021/10/pexels-jayson-marquez-4850421.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:4:\"X-E2\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:6:\"0.0005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 51, '_wp_attached_file', '2021/10/pexels-jess-vide-5008377.jpg'),
(140, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4608;s:6:\"height\";i:8192;s:4:\"file\";s:36:\"2021/10/pexels-jess-vide-5008377.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 52, '_wp_attached_file', '2021/10/pexels-joey-kyber-134643.jpg'),
(142, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5851;s:6:\"height\";i:3901;s:4:\"file\";s:36:\"2021/10/pexels-joey-kyber-134643.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 53, '_wp_attached_file', '2021/10/pexels-karley-saagi-2062882.jpg'),
(144, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3686;s:6:\"height\";i:4607;s:4:\"file\";s:39:\"2021/10/pexels-karley-saagi-2062882.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 54, '_wp_attached_file', '2021/10/pexels-kehn-hermano-3849167.jpg'),
(146, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:6000;s:4:\"file\";s:39:\"2021/10/pexels-kehn-hermano-3849167.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 55, '_wp_attached_file', '2021/10/pexels-mati-mango-5533926.jpg'),
(148, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2926;s:6:\"height\";i:4096;s:4:\"file\";s:37:\"2021/10/pexels-mati-mango-5533926.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 56, '_wp_attached_file', '2021/10/pexels-maxime-francis-2246476.jpg'),
(150, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5464;s:6:\"height\";i:3643;s:4:\"file\";s:41:\"2021/10/pexels-maxime-francis-2246476.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D5200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1499276053\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"19\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:1:\"8\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 57, '_wp_attached_file', '2021/10/pexels-paul-kerby-genil-3703961.jpg'),
(152, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4000;s:6:\"height\";i:6000;s:4:\"file\";s:43:\"2021/10/pexels-paul-kerby-genil-3703961.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1580661578\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:8:\"0.000125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 58, '_wp_attached_file', '2021/10/pexels-perchek-industrie-5451980.jpg'),
(154, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2549;s:6:\"height\";i:3399;s:4:\"file\";s:44:\"2021/10/pexels-perchek-industrie-5451980.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 59, '_wp_attached_file', '2021/10/pexels-pixabay-2346.jpg'),
(156, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:2100;s:4:\"file\";s:31:\"2021/10/pexels-pixabay-2346.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 60, '_wp_attached_file', '2021/10/pexels-pixabay-277253.jpg'),
(158, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3581;s:6:\"height\";i:4013;s:4:\"file\";s:33:\"2021/10/pexels-pixabay-277253.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 61, '_wp_attached_file', '2021/10/pexels-rafael-paul-4797134.jpg'),
(160, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3430;s:6:\"height\";i:4287;s:4:\"file\";s:38:\"2021/10/pexels-rafael-paul-4797134.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 62, '_wp_attached_file', '2021/10/pexels-steve-682375.jpg'),
(162, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4288;s:6:\"height\";i:2848;s:4:\"file\";s:31:\"2021/10/pexels-steve-682375.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 63, '_wp_attached_file', '2021/10/pexels-thiago-matos-4576085.jpg'),
(164, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3230;s:6:\"height\";i:4038;s:4:\"file\";s:39:\"2021/10/pexels-thiago-matos-4576085.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 64, '_wp_attached_file', '2021/10/pexels-zachary-debottis-2568539.jpg'),
(166, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2624;s:6:\"height\";i:3936;s:4:\"file\";s:43:\"2021/10/pexels-zachary-debottis-2568539.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 36, '_thumbnail_id', '64'),
(168, 72, '_edit_last', '1'),
(169, 72, '_edit_lock', '1635535967:1'),
(170, 72, 'Duração', '180m'),
(171, 72, '_thumbnail_id', '59'),
(172, 73, '_edit_last', '1'),
(173, 73, '_edit_lock', '1648508703:1'),
(174, 73, 'Duração', '180m'),
(175, 73, '_thumbnail_id', '46'),
(176, 78, '_menu_item_type', 'custom'),
(177, 78, '_menu_item_menu_item_parent', '0'),
(178, 78, '_menu_item_object_id', '78'),
(179, 78, '_menu_item_object', 'custom'),
(180, 78, '_menu_item_target', ''),
(181, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 78, '_menu_item_xfn', ''),
(183, 78, '_menu_item_url', 'http://localhost/play/'),
(184, 78, '_menu_item_orphaned', '1647985147'),
(185, 79, '_menu_item_type', 'post_type'),
(186, 79, '_menu_item_menu_item_parent', '0'),
(187, 79, '_menu_item_object_id', '11'),
(188, 79, '_menu_item_object', 'page'),
(189, 79, '_menu_item_target', ''),
(190, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 79, '_menu_item_xfn', ''),
(192, 79, '_menu_item_url', ''),
(193, 79, '_menu_item_orphaned', '1647985148'),
(194, 80, '_menu_item_type', 'post_type'),
(195, 80, '_menu_item_menu_item_parent', '0'),
(196, 80, '_menu_item_object_id', '7'),
(197, 80, '_menu_item_object', 'page'),
(198, 80, '_menu_item_target', ''),
(199, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 80, '_menu_item_xfn', ''),
(201, 80, '_menu_item_url', ''),
(202, 80, '_menu_item_orphaned', '1647985149'),
(203, 81, '_menu_item_type', 'post_type'),
(204, 81, '_menu_item_menu_item_parent', '0'),
(205, 81, '_menu_item_object_id', '9'),
(206, 81, '_menu_item_object', 'page'),
(207, 81, '_menu_item_target', ''),
(208, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 81, '_menu_item_xfn', ''),
(210, 81, '_menu_item_url', ''),
(211, 81, '_menu_item_orphaned', '1647985150'),
(212, 1, '_edit_lock', '1648073998:1'),
(213, 82, '_edit_last', '1'),
(214, 82, '_edit_lock', '1648074886:1'),
(215, 38, '_wp_attachment_image_alt', 'Homem se preparando para correr'),
(216, 82, '_oembed_210b40a9630ef0bd9b4a2ff16b69e85e', '<iframe title=\"Don L - Enquanto Acaba (feat. Flora Matos)\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/m67SQ41zOz4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(217, 82, '_oembed_time_210b40a9630ef0bd9b4a2ff16b69e85e', '1648074565'),
(218, 82, 'Duração', '300s'),
(219, 82, '_oembed_ed7c2f4f50440f30e30cf09dc7ab3fb6', '<iframe title=\"Don L - Enquanto Acaba (feat. Flora Matos)\" width=\"786\" height=\"442\" src=\"https://www.youtube.com/embed/m67SQ41zOz4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(220, 82, '_oembed_time_ed7c2f4f50440f30e30cf09dc7ab3fb6', '1648074566'),
(221, 82, '_thumbnail_id', '38'),
(222, 82, '_oembed_d87fcddb9e523668481db539e6bc7d02', '<iframe title=\"Don L - Enquanto Acaba (feat. Flora Matos)\" width=\"790\" height=\"444\" src=\"https://www.youtube.com/embed/m67SQ41zOz4?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(223, 82, '_oembed_time_d87fcddb9e523668481db539e6bc7d02', '1648074570'),
(224, 83, '_edit_last', '1'),
(225, 83, '_edit_lock', '1648502053:1'),
(226, 84, '_edit_last', '1'),
(227, 84, '_edit_lock', '1648502792:1'),
(228, 48, '_wp_attachment_image_alt', 'Homem no cavalo'),
(229, 84, 'Duração', '123m'),
(230, 84, '_thumbnail_id', '48'),
(231, 85, '_edit_last', '1'),
(232, 85, '_edit_lock', '1648502750:1'),
(233, 42, '_wp_attachment_image_alt', 'Imagem filmes 3'),
(234, 85, 'Duração', '232 Min'),
(235, 85, '_thumbnail_id', '42'),
(236, 86, '_edit_last', '1'),
(237, 86, '_edit_lock', '1648502754:1'),
(238, 60, '_wp_attachment_image_alt', 'Imagem de colheres com temperos variádos.'),
(239, 86, '_thumbnail_id', '60'),
(240, 86, 'Duração', '180m');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-10-27 11:29:39', '2021-10-27 14:29:39', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-10-27 11:29:39', '2021-10-27 14:29:39', '', 0, 'http://localhost/play/?p=1', 0, 'post', '', 1),
(7, 1, '2021-10-27 14:46:14', '2021-10-27 17:46:14', '<!-- wp:paragraph -->\n<p>Página de filmes</p>\n<!-- /wp:paragraph -->', 'Filmes', '', 'publish', 'closed', 'closed', '', 'filmes', '', '', '2021-10-27 15:01:11', '2021-10-27 18:01:11', '', 0, 'http://localhost/play/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-10-27 14:46:14', '2021-10-27 17:46:14', '<!-- wp:paragraph -->\n<p>Página de filmes</p>\n<!-- /wp:paragraph -->', 'Filmes', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-10-27 14:46:14', '2021-10-27 17:46:14', '', 7, 'http://localhost/play/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-10-27 14:46:47', '2021-10-27 17:46:47', '<!-- wp:paragraph -->\n<p>Página de séries</p>\n<!-- /wp:paragraph -->', 'Séries', '', 'publish', 'closed', 'closed', '', 'series', '', '', '2021-10-27 14:46:47', '2021-10-27 17:46:47', '', 0, 'http://localhost/play/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-10-27 14:46:47', '2021-10-27 17:46:47', '<!-- wp:paragraph -->\n<p>Página de séries</p>\n<!-- /wp:paragraph -->', 'Séries', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-10-27 14:46:47', '2021-10-27 17:46:47', '', 9, 'http://localhost/play/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-10-27 14:47:09', '2021-10-27 17:47:09', '<!-- wp:paragraph -->\n<p>Página de documentários</p>\n<!-- /wp:paragraph -->', 'Documentários', '', 'publish', 'closed', 'closed', '', 'documentarios', '', '', '2021-10-27 14:47:09', '2021-10-27 17:47:09', '', 0, 'http://localhost/play/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-10-27 14:47:09', '2021-10-27 17:47:09', '<!-- wp:paragraph -->\n<p>Página de documentários</p>\n<!-- /wp:paragraph -->', 'Documentários', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-10-27 14:47:09', '2021-10-27 17:47:09', '', 11, 'http://localhost/play/?p=12', 0, 'revision', '', 0),
(21, 1, '2021-10-27 20:01:01', '2021-10-27 23:01:01', '', 'favicon-32x32', '', 'inherit', 'open', 'closed', '', 'favicon-32x32', '', '', '2021-10-27 20:01:01', '2021-10-27 23:01:01', '', 0, 'http://localhost/play/wp-content/uploads/2021/10/favicon-32x32-1.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-10-27 20:16:00', '2021-10-27 23:16:00', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-10-27 20:16:00', '2021-10-27 23:16:00', '', 0, 'http://localhost/play/wp-content/uploads/2021/10/logo.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2021-10-29 12:33:10', '2021-10-29 15:33:10', 'teste de post', 'Teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2021-10-29 12:33:10', '2021-10-29 15:33:10', '', 0, 'http://localhost/play/?post_type=video&#038;p=36', 0, 'video', '', 0),
(37, 1, '2021-10-29 12:32:07', '2021-10-29 15:32:07', '', 'pexels-anastasia-shuraeva-4513214', '', 'inherit', 'open', 'closed', '', 'pexels-anastasia-shuraeva-4513214', '', '', '2021-10-29 12:32:07', '2021-10-29 15:32:07', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-anastasia-shuraeva-4513214.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-10-29 12:32:08', '2021-10-29 15:32:08', 'Descrição documentário 1', 'Documentário 1', 'legenda documentário 1', 'inherit', 'open', 'closed', '', 'pexels-andrea-piacquadio-3760259', '', '', '2022-03-23 19:28:14', '2022-03-23 22:28:14', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-andrea-piacquadio-3760259.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-10-29 12:32:09', '2021-10-29 15:32:09', '', 'pexels-burak-k-1253049', '', 'inherit', 'open', 'closed', '', 'pexels-burak-k-1253049', '', '', '2021-10-29 12:32:09', '2021-10-29 15:32:09', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-burak-k-1253049.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-10-29 12:32:10', '2021-10-29 15:32:10', '', 'pexels-chris-peeters-12801', '', 'inherit', 'open', 'closed', '', 'pexels-chris-peeters-12801', '', '', '2021-10-29 12:32:10', '2021-10-29 15:32:10', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-chris-peeters-12801.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-10-29 12:32:11', '2021-10-29 15:32:11', '', 'pexels-cottonbro-4753879', '', 'inherit', 'open', 'closed', '', 'pexels-cottonbro-4753879', '', '', '2021-10-29 12:32:11', '2021-10-29 15:32:11', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-cottonbro-4753879.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-10-29 12:32:12', '2021-10-29 15:32:12', 'Criança fazendo careta', 'pexels-dazzle-jam-1190208', 'Imagem teste filme 3', 'inherit', 'open', 'closed', '', 'pexels-dazzle-jam-1190208', '', '', '2022-03-28 18:19:48', '2022-03-28 21:19:48', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-dazzle-jam-1190208.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-10-29 12:32:14', '2021-10-29 15:32:14', '', 'pexels-ekaterina-belinskaya-4674351', '', 'inherit', 'open', 'closed', '', 'pexels-ekaterina-belinskaya-4674351', '', '', '2021-10-29 12:32:14', '2021-10-29 15:32:14', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-ekaterina-belinskaya-4674351.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-10-29 12:32:17', '2021-10-29 15:32:17', '', 'pexels-francesco-ungaro-1525041', '', 'inherit', 'open', 'closed', '', 'pexels-francesco-ungaro-1525041', '', '', '2021-10-29 12:32:17', '2021-10-29 15:32:17', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-francesco-ungaro-1525041.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-10-29 12:32:18', '2021-10-29 15:32:18', '', 'pexels-gabb-tapic-3568544', '', 'inherit', 'open', 'closed', '', 'pexels-gabb-tapic-3568544', '', '', '2021-10-29 12:32:18', '2021-10-29 15:32:18', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-gabb-tapic-3568544.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-10-29 12:32:19', '2021-10-29 15:32:19', '', 'pexels-gabriel-hohol-3593922', '', 'inherit', 'open', 'closed', '', 'pexels-gabriel-hohol-3593922', '', '', '2021-10-29 12:32:19', '2021-10-29 15:32:19', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-gabriel-hohol-3593922.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-10-29 12:32:21', '2021-10-29 15:32:21', '', 'pexels-gabriel-pompeo-4338508', '', 'inherit', 'open', 'closed', '', 'pexels-gabriel-pompeo-4338508', '', '', '2021-10-29 12:32:21', '2021-10-29 15:32:21', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-gabriel-pompeo-4338508.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-10-29 12:32:25', '2021-10-29 15:32:25', '', 'pexels-ivy-son-3490257', 'Legenda imagem teste filme 2', 'inherit', 'open', 'closed', '', 'pexels-ivy-son-3490257', '', '', '2022-03-28 18:16:54', '2022-03-28 21:16:54', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-ivy-son-3490257.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-10-29 12:32:26', '2021-10-29 15:32:26', '', 'pexels-jayson-marquez-4850412', '', 'inherit', 'open', 'closed', '', 'pexels-jayson-marquez-4850412', '', '', '2021-10-29 12:32:26', '2021-10-29 15:32:26', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-jayson-marquez-4850412.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-10-29 12:32:30', '2021-10-29 15:32:30', '', 'pexels-jayson-marquez-4850421', '', 'inherit', 'open', 'closed', '', 'pexels-jayson-marquez-4850421', '', '', '2021-10-29 12:32:30', '2021-10-29 15:32:30', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-jayson-marquez-4850421.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-10-29 12:32:31', '2021-10-29 15:32:31', '', 'pexels-jess-vide-5008377', '', 'inherit', 'open', 'closed', '', 'pexels-jess-vide-5008377', '', '', '2021-10-29 12:32:31', '2021-10-29 15:32:31', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-jess-vide-5008377.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-10-29 12:32:34', '2021-10-29 15:32:34', '', 'pexels-joey-kyber-134643', '', 'inherit', 'open', 'closed', '', 'pexels-joey-kyber-134643', '', '', '2021-10-29 12:32:34', '2021-10-29 15:32:34', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-joey-kyber-134643.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-10-29 12:32:36', '2021-10-29 15:32:36', '', 'pexels-karley-saagi-2062882', '', 'inherit', 'open', 'closed', '', 'pexels-karley-saagi-2062882', '', '', '2021-10-29 12:32:36', '2021-10-29 15:32:36', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-karley-saagi-2062882.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-10-29 12:32:37', '2021-10-29 15:32:37', '', 'pexels-kehn-hermano-3849167', '', 'inherit', 'open', 'closed', '', 'pexels-kehn-hermano-3849167', '', '', '2021-10-29 12:32:37', '2021-10-29 15:32:37', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-kehn-hermano-3849167.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-10-29 12:32:40', '2021-10-29 15:32:40', '', 'pexels-mati-mango-5533926', '', 'inherit', 'open', 'closed', '', 'pexels-mati-mango-5533926', '', '', '2021-10-29 12:32:40', '2021-10-29 15:32:40', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-mati-mango-5533926.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-10-29 12:32:43', '2021-10-29 15:32:43', '', 'pexels-maxime-francis-2246476', '', 'inherit', 'open', 'closed', '', 'pexels-maxime-francis-2246476', '', '', '2021-10-29 12:32:43', '2021-10-29 15:32:43', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-maxime-francis-2246476.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-10-29 12:32:46', '2021-10-29 15:32:46', '', 'pexels-paul-kerby-genil-3703961', '', 'inherit', 'open', 'closed', '', 'pexels-paul-kerby-genil-3703961', '', '', '2021-10-29 12:32:46', '2021-10-29 15:32:46', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-paul-kerby-genil-3703961.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-10-29 12:32:50', '2021-10-29 15:32:50', '', 'pexels-perchek-industrie-5451980', '', 'inherit', 'open', 'closed', '', 'pexels-perchek-industrie-5451980', '', '', '2021-10-29 12:32:50', '2021-10-29 15:32:50', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-perchek-industrie-5451980.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-10-29 12:32:51', '2021-10-29 15:32:51', '', 'pexels-pixabay-2346', '', 'inherit', 'open', 'closed', '', 'pexels-pixabay-2346', '', '', '2021-10-29 12:32:51', '2021-10-29 15:32:51', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-pixabay-2346.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-10-29 12:32:52', '2021-10-29 15:32:52', 'Imagem de colheres com temperos variádos.', 'pexels-pixabay-277253', 'Legenda teste filmes 4 ', 'inherit', 'open', 'closed', '', 'pexels-pixabay-277253', '', '', '2022-03-28 18:23:11', '2022-03-28 21:23:11', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-pixabay-277253.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-10-29 12:32:53', '2021-10-29 15:32:53', '', 'pexels-rafael-paul-4797134', '', 'inherit', 'open', 'closed', '', 'pexels-rafael-paul-4797134', '', '', '2021-10-29 12:32:53', '2021-10-29 15:32:53', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-rafael-paul-4797134.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-10-29 12:32:56', '2021-10-29 15:32:56', '', 'pexels-steve-682375', '', 'inherit', 'open', 'closed', '', 'pexels-steve-682375', '', '', '2021-10-29 12:32:56', '2021-10-29 15:32:56', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-steve-682375.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 'pexels-thiago-matos-4576085', '', 'inherit', 'open', 'closed', '', 'pexels-thiago-matos-4576085', '', '', '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-thiago-matos-4576085.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 'pexels-zachary-debottis-2568539', '', 'inherit', 'open', 'closed', '', 'pexels-zachary-debottis-2568539', '', '', '2021-10-29 12:32:58', '2021-10-29 15:32:58', '', 36, 'http://localhost/play/wp-content/uploads/2021/10/pexels-zachary-debottis-2568539.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-10-29 16:35:06', '2021-10-29 19:35:06', 'Teste genero', 'Teste genero', '', 'publish', 'closed', 'closed', '', 'teste-genero', '', '', '2021-10-29 16:35:06', '2021-10-29 19:35:06', '', 0, 'http://localhost/play/?post_type=video&#038;p=72', 0, 'video', '', 0),
(73, 1, '2021-10-29 16:39:17', '2021-10-29 19:39:17', '', 'teste filmes', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet maximus massa. Nam tempor magna sem, a consequat massa efficitur lobortis. Vestibulum eleifend libero nunc, et vulputate lacus scelerisque a. Donec suscipit tristique lectus id imperdiet. Mauris sit amet nulla et augue vulputate efficitur quis quis tortor. Duis vestibulum justo vitae mauris sodales, aliquam malesuada nisl rutrum. Duis accumsan, ligula id pulvinar rutrum, neque arcu pellentesque dui, ac aliquet augue sem at lectus. Donec sagittis convallis mauris commodo porta.', 'publish', 'closed', 'closed', '', 'teste-filmes', '', '', '2022-03-28 18:15:31', '2022-03-28 21:15:31', '', 0, 'http://localhost/play/?post_type=video&#038;p=73', 0, 'video', '', 0),
(77, 1, '2022-03-22 18:38:11', '2022-03-22 21:38:11', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-play', '', '', '2022-03-22 18:38:11', '2022-03-22 21:38:11', '', 0, 'http://localhost/play/index.php/2022/03/22/wp-global-styles-play/', 0, 'wp_global_styles', '', 0),
(78, 1, '2022-03-22 18:39:06', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-22 18:39:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2022-03-22 18:39:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-22 18:39:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2022-03-22 18:39:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-22 18:39:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=80', 1, 'nav_menu_item', '', 0),
(81, 1, '2022-03-22 18:39:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-22 18:39:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/play/?p=81', 1, 'nav_menu_item', '', 0),
(82, 1, '2022-03-23 19:29:26', '2022-03-23 22:29:26', '[embed]https://youtu.be/m67SQ41zOz4?list=RDm67SQ41zOz4[/embed]', 'Teste documentário', 'Aenean lacinia aliquam tellus vitae commodo. Vivamus varius consequat ex tincidunt varius. Quisque rutrum dictum vestibulum. Quisque maximus nibh neque, id tempus lorem accumsan vitae. Aenean leo dolor, interdum a ligula ac, sollicitudin mollis risus. In purus tortor, congue non laoreet eu, elementum non libero. Vivamus ut sem at quam pulvinar volutpat id auctor purus. Praesent lacinia, neque vel aliquet gravida, sapien arcu suscipit augue, ut lacinia tortor metus sollicitudin tortor. Etiam commodo felis mattis vestibulum cursus. Donec suscipit, nisi sed vehicula pulvinar, quam lacus facilisis diam, eget ultricies erat erat at felis. Etiam tristique sollicitudin rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'publish', 'closed', 'closed', '', 'teste-documentario', '', '', '2022-03-23 19:29:26', '2022-03-23 22:29:26', '', 0, 'http://localhost/play/?post_type=video&#038;p=82', 0, 'video', '', 0),
(83, 1, '2022-03-28 18:14:13', '0000-00-00 00:00:00', '', 'teste', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-28 18:14:13', '2022-03-28 21:14:13', '', 0, 'http://localhost/play/?post_type=video&#038;p=83', 0, 'video', '', 0),
(84, 1, '2022-03-28 18:17:16', '2022-03-28 21:17:16', '', 'Teste filmes 2', 'Aenean nisi orci, feugiat ac odio nec, semper ultrices sem. Sed vitae magna vitae purus cursus fringilla. Integer in orci vitae ex ultricies mollis. Ut at efficitur mauris. In hac habitasse platea dictumst. Nulla ultrices quis nunc ut convallis. Mauris varius commodo orci at tincidunt. In in ex vitae erat lacinia bibendum. Nam laoreet leo ut enim eleifend lacinia. Donec id purus eget risus rutrum sollicitudin. Praesent placerat pellentesque lorem sed auctor.', 'publish', 'closed', 'closed', '', 'teste-filmes-2', '', '', '2022-03-28 18:28:50', '2022-03-28 21:28:50', '', 0, 'http://localhost/play/?post_type=video&#038;p=84', 0, 'video', '', 0),
(85, 1, '2022-03-28 18:19:53', '2022-03-28 21:19:53', '', 'Teste filmes 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ut metus rhoncus, rhoncus augue sit amet, molestie nisi. Quisque nec condimentum felis. Mauris interdum pellentesque blandit. Aliquam sed fringilla sem. Pellentesque feugiat condimentum quam ut commodo. Suspendisse tempor, ligula ut consequat dapibus, quam quam consectetur est, a pellentesque lorem dolor ac risus. Cras vitae accumsan felis, at tristique elit.', 'publish', 'closed', 'closed', '', 'teste-filmes-3', '', '', '2022-03-28 18:19:53', '2022-03-28 21:19:53', '', 0, 'http://localhost/play/?post_type=video&#038;p=85', 0, 'video', '', 0),
(86, 1, '2022-03-28 18:23:14', '2022-03-28 21:23:14', '', 'Teste filmes 4', 'Mauris in feugiat ex. Donec vitae tincidunt ligula. Curabitur molestie nibh lectus, vel eleifend neque dictum nec. Suspendisse ex quam, efficitur et velit sed, imperdiet tincidunt neque. Proin ultrices viverra est sed posuere. Nunc a sem sed dolor dignissim maximus eu eu erat. Praesent pulvinar nisl sed tortor pellentesque sagittis.', 'publish', 'closed', 'closed', '', 'teste-filmes-4', '', '', '2022-03-28 18:27:54', '2022-03-28 21:27:54', '', 0, 'http://localhost/play/?post_type=video&#038;p=86', 0, 'video', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Documentarios', 'documentarios', 0),
(3, 'Filmes', 'filmes', 0),
(4, 'Series', 'series', 0),
(5, 'play', 'play', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(72, 2, 0),
(73, 3, 0),
(77, 5, 0),
(84, 3, 0),
(85, 3, 0),
(86, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'genero', '', 0, 1),
(3, 3, 'genero', '', 0, 4),
(4, 4, 'genero', '', 0, 0),
(5, 5, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'marcelofariasjr'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a3fc609fa497e894fd572c06c53d8663cad8ae1cd4c96dca0b9a95a54fad4c1f\";a:4:{s:10:\"expiration\";i:1649194664;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.70\";s:5:\"login\";i:1647985064;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '76'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1648074395'),
(23, 1, 'closedpostboxes_video', 'a:0:{}'),
(24, 1, 'metaboxhidden_video', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'meta-box-order_video', 'a:3:{s:4:\"side\";s:32:\"submitdiv,generodiv,postimagediv\";s:6:\"normal\";s:40:\"postexcerpt,slugdiv,postcustom,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_video', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'marcelofariasjr', '$P$B1im2gqMH/Q7rKts9ySkElDmeSG2gh.', 'marcelofariasjr', 'marcelobfariasjr@gmail.com', 'http://localhost/play', '2021-10-27 14:29:33', '', 0, 'marcelofariasjr');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
