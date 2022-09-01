-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2022 at 04:55 PM
-- Server version: 5.7.39-0ubuntu0.18.04.2
-- PHP Version: 7.0.33-61+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oqila-wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(2, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[6]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-08-23 11:40:43', '2022-08-23 11:40:43', 0, NULL),
(3, 'action_scheduler/migration_hook', 'complete', '2022-08-23 11:58:49', '2022-08-23 11:58:49', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1661255929;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1661255929;}', 1, 1, '2022-08-23 11:59:28', '2022-08-23 11:59:28', 0, NULL),
(4, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[7]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-08-25 07:53:45', '2022-08-25 07:53:45', 0, NULL),
(5, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-08-29 07:57:23', '2022-08-29 07:57:23', 0, NULL),
(6, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-08-30 12:13:54', '2022-08-30 12:13:54', 0, NULL),
(7, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[2]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-08-31 13:08:18', '2022-08-31 13:08:18', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(4, 2, 'action created', '2022-08-23 11:40:42', '2022-08-23 11:40:42'),
(5, 2, 'action started via Async Request', '2022-08-23 11:40:42', '2022-08-23 11:40:42'),
(6, 2, 'action complete via Async Request', '2022-08-23 11:40:43', '2022-08-23 11:40:43'),
(7, 3, 'action created', '2022-08-23 11:57:49', '2022-08-23 11:57:49'),
(8, 3, 'action started via Async Request', '2022-08-23 11:59:28', '2022-08-23 11:59:28'),
(9, 3, 'action complete via Async Request', '2022-08-23 11:59:28', '2022-08-23 11:59:28'),
(10, 4, 'action created', '2022-08-25 07:51:33', '2022-08-25 07:51:33'),
(11, 4, 'action started via WP Cron', '2022-08-25 07:53:45', '2022-08-25 07:53:45'),
(12, 4, 'action complete via WP Cron', '2022-08-25 07:53:45', '2022-08-25 07:53:45'),
(13, 5, 'action created', '2022-08-29 07:57:22', '2022-08-29 07:57:22'),
(14, 5, 'action started via Async Request', '2022-08-29 07:57:22', '2022-08-29 07:57:22'),
(15, 5, 'action complete via Async Request', '2022-08-29 07:57:23', '2022-08-29 07:57:23'),
(16, 6, 'action created', '2022-08-30 12:13:53', '2022-08-30 12:13:53'),
(17, 6, 'action started via Async Request', '2022-08-30 12:13:53', '2022-08-30 12:13:53'),
(18, 6, 'action complete via Async Request', '2022-08-30 12:13:54', '2022-08-30 12:13:54'),
(19, 7, 'action created', '2022-08-31 13:08:17', '2022-08-31 13:08:17'),
(20, 7, 'action started via Async Request', '2022-08-31 13:08:18', '2022-08-31 13:08:18'),
(21, 7, 'action complete via Async Request', '2022-08-31 13:08:18', '2022-08-31 13:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://example.com', 'no'),
(2, 'home', 'http://example.com', 'no'),
(3, 'blogname', 'OQILA', 'yes'),
(4, 'blogdescription', 'Busienss website', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@mail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:33:\"admin-menu-editor/menu-editor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:43:\"disable-xml-rpc-api/disable-xml-rpc-api.php\";i:5;s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:53:\"webp-converter-for-media/webp-converter-for-media.php\";i:8;s:24:\"wordpress-seo/wp-seo.php\";i:9;s:35:\"wp-fastest-cache/wpFastestCache.php\";i:10;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:11;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-bootstrap-starter', 'yes'),
(41, 'stylesheet', 'wp-bootstrap-starter', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{s:43:\"disable-xml-rpc-api/disable-xml-rpc-api.php\";s:16:\"uninstall_action\";s:53:\"webp-converter-for-media/webp-converter-for-media.php\";a:2:{i:0;s:30:\"WebpConverter\\Plugin\\Uninstall\";i:1;s:22:\"load_uninstall_actions\";}s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1676806841', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:15:{i:1662033330;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1662033865;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1662034865;a:1:{s:16:\"webpc_cron_paths\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"webpc_cron_paths\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1662053277;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662064432;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662064433;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662064434;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662064461;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662064464;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662070585;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662097225;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662114334;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662150833;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1662615627;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1610656644;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(152, 'theme_mods_twentytwenty', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1610657816;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(156, 'current_theme', 'WP Bootstrap Starter', 'yes'),
(157, 'theme_switched', '', 'yes'),
(160, 'theme_mods_wp-bootstrap-starter', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'triggered_welcomet', '1', 'yes'),
(170, 'recently_activated', 'a:0:{}', 'yes'),
(177, 'acf_version', '5.12.3', 'yes'),
(219, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":4,\"critical\":1}', 'yes'),
(240, 'w3tc_state', '{\"common.install\":1611670206,\"common.install_version\":\"2.1.0\",\"license.status\":\"no_key\",\"license.next_check\":1612102206,\"license.terms\":\"\",\"license.community_terms\":\"decline\",\"common.show_note.flush_posts_needed\":false,\"common.show_note.flush_posts_needed.timestamp\":1611671235,\"common.show_note.plugins_updated\":false,\"common.show_note.plugins_updated.timestamp\":1611671235}', 'no'),
(243, 'w3tc_generic_widgetservices', '{\"content\":{\"items\":[{\"name\":\"Premium Support Response (Usually <1h First Response)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Premium Support Response (Usually <1h First Response)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Plugin Configuration\",\"parameter_name\":\"field4\",\"parameter_value\":\"Plugin Configuration\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"SSL Performance Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"SSL Performance Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Full Site Delivery Setup\",\"parameter_name\":\"field4\",\"parameter_value\":\"Full Site Delivery Setup\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Hosting Environment Troubleshooting\",\"parameter_name\":\"field4\",\"parameter_value\":\"Hosting Environment Troubleshooting\",\"form_hash\":\"m5pom8z0qy59rm\"},{\"name\":\"Performance Monitoring\",\"parameter_name\":\"field4\",\"parameter_value\":\"Performance Monitoring\",\"form_hash\":\"m5pom8z0qy59rm\"}],\"ui_strings\":{\"cdn.maxcdn.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.maxcdn.signUpAndSave.description\":\"MaxCDN is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"cdn.stackpath.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now and save!\",\"cdn.stackpath2.signUpAndSave\":\"Sign Up Now and save !\",\"cdn.stackpath2.signUpAndSave.description\":\"StackPath is a service that lets you speed up your site even more with W3 Total Cache. Sign up now to recieve a special offer!\",\"minify.general.header\":\"Reduce load time by decreasing the size and number of <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym> and <acronym title=\'JavaScript\'>JS<\\/acronym> files. Automatically remove unncessary data from <acronym title=\'Cascading Style Sheet\'>CSS<\\/acronym>, <acronym title=\'JavaScript\'>JS<\\/acronym>, feed, page and post <acronym title=\'Hypertext Markup Language\'>HTML<\\/acronym>.\",\"newrelic.general.header\":\"New Relic may not be installed or not active on this server. <a href=\'%s\' target=\'_blank\'>Sign up for a (free) account<\\/a>. Visit <a href=\'%s\' target=\'_blank\'>New Relic<\\/a> for installation instructions.\",\"reverseproxy.general.header\":\"A reverse proxy adds scale to an server by handling requests before WordPress does. Purge settings are set on the <a href=\'%s\'>Page Cache settings<\\/a> page and <a href=\'%s\'>Browser Cache settings<\\/a> are set on the browser cache settings page.\",\"cdnfsd.general.header\":\"Host the entire website with your compatible <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> provider to reduce page load time.\",\"cdn.general.header\":\"Host static files with your <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> to reduce page load time.\",\"cdn.stackpath.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.existing\":\"If you\'re an existing StackPath customer, enable <acronym title=\'Content Delivery Network\'>CDN<\\/acronym> and:\",\"cdn.stackpath2.widget.works_magically\":\"StackPath works magically with W3 Total Cache.\",\"cdn.stackpath.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\",\"cdn.stackpath2.widget.header\":\"Dramatically increase website speeds in just a few clicks! Add the StackPath content delivery network (<acronym title=\'Content Delivery Network\'>CDN<\\/acronym>) service to your site.\"}},\"expires\":1612276012}', 'no'),
(244, 'w3tc_setupguide_completed', '1611670716', 'no'),
(261, 'w3tc_pgcache_prime_offset', '0', 'no'),
(275, 'category_children', 'a:0:{}', 'yes'),
(295, 'wp-smush-settings', 'a:23:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:0;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:1;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:8:\"webp_mod\";b:0;s:4:\"bulk\";b:0;}', 'yes'),
(296, 'wp-smush-install-type', 'existing', 'no'),
(297, 'wp-smush-version', '3.8.2', 'no'),
(300, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:23:\"wp-smushit/wp-smush.php\";i:1611694434;}s:5:\"queue\";a:2:{s:32:\"7de3619981caadc55f30a002bfb299f6\";a:4:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1611694434;s:6:\"sticky\";b:1;}s:32:\"fc50097023d0d34c5a66f6cddcf77694\";a:3:{s:6:\"plugin\";s:23:\"wp-smushit/wp-smush.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1613501882;}}s:4:\"done\";a:0:{}}', 'no'),
(301, 'wpmudev_recommended_plugins_registered', 'a:1:{s:23:\"wp-smushit/wp-smush.php\";a:1:{s:13:\"registered_at\";i:1611694434;}}', 'no'),
(304, 'smush_global_stats', 'a:9:{s:11:\"size_before\";i:0;s:10:\"size_after\";i:0;s:7:\"percent\";d:0;s:5:\"human\";s:5:\"0.0 B\";s:5:\"bytes\";i:0;s:12:\"total_images\";i:0;s:12:\"resize_count\";i:0;s:14:\"resize_savings\";i:0;s:18:\"conversion_savings\";i:0;}', 'no'),
(305, 'dir_smush_stats', 'a:2:{s:9:\"dir_smush\";a:2:{s:5:\"total\";i:0;s:9:\"optimised\";i:0;}s:14:\"combined_stats\";a:0:{}}', 'no'),
(306, 'wp-smush-lazy_load', 'a:9:{s:6:\"format\";a:5:{s:4:\"jpeg\";b:1;s:3:\"png\";b:1;s:3:\"gif\";b:1;s:3:\"svg\";b:1;s:6:\"iframe\";b:1;}s:6:\"output\";a:4:{s:7:\"content\";b:1;s:7:\"widgets\";b:1;s:10:\"thumbnails\";b:1;s:9:\"gravatars\";b:1;}s:9:\"animation\";a:4:{s:8:\"selected\";s:6:\"fadein\";s:6:\"fadein\";a:2:{s:8:\"duration\";i:400;s:5:\"delay\";i:0;}s:7:\"spinner\";a:2:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}}s:11:\"placeholder\";a:3:{s:8:\"selected\";i:1;s:6:\"custom\";a:0:{}s:5:\"color\";s:7:\"#F3F3F3\";}}s:7:\"include\";a:7:{s:9:\"frontpage\";b:1;s:4:\"home\";b:1;s:4:\"page\";b:1;s:6:\"single\";b:1;s:7:\"archive\";b:1;s:8:\"category\";b:1;s:3:\"tag\";b:1;}s:13:\"exclude-pages\";a:0:{}s:15:\"exclude-classes\";a:0:{}s:6:\"footer\";b:1;s:6:\"native\";b:0;s:8:\"noscript\";b:0;}', 'yes'),
(307, 'skip-smush-setup', '1', 'yes'),
(308, 'wp-smush-hide_smush_welcome', '1', 'no'),
(309, 'wp-smush-resize_sizes', 'a:2:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;}', 'yes'),
(339, 'WPLANG', '', 'yes'),
(340, 'new_admin_email', 'info@mail.com', 'yes'),
(569, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(573, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(574, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:19:\"Service Unavailable\";}}', 'yes'),
(591, 'limit_login_activation_timestamp', '1627322545', 'no'),
(592, 'limit_login_notice_enable_notify_timestamp', '1624557746', 'no'),
(593, 'limit_login_logged', '', 'yes'),
(594, 'limit_login_gdpr', '0', 'yes'),
(595, 'limit_login_show_top_level_menu_item', '0', 'yes'),
(596, 'limit_login_allowed_retries', '3', 'yes'),
(597, 'limit_login_lockout_duration', '3600', 'yes'),
(598, 'limit_login_valid_duration', '86400', 'yes'),
(599, 'limit_login_allowed_lockouts', '4', 'yes'),
(600, 'limit_login_long_duration', '86400', 'yes'),
(601, 'limit_login_notify_email_after', '3', 'yes'),
(602, 'limit_login_active_app', 'local', 'yes'),
(603, 'limit_login_gdpr_message', 'By proceeding you understand and give your consent that your IP address and browser information might be processed by the security plugins installed on this site.', 'yes'),
(604, 'limit_login_admin_notify_email', '', 'yes'),
(605, 'limit_login_trusted_ip_origins', 'a:1:{i:0;s:11:\"REMOTE_ADDR\";}', 'yes'),
(606, 'limit_login_lockout_notify', '', 'yes'),
(650, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"19.6\";}', 'yes'),
(651, 'wpseo', 'a:88:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"19.6\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:0;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:0;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";b:0;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:11:\"/%postname%\";s:8:\"home_url\";s:19:\"http://oqila-wp.loc\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:0;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:5:{s:30:\"aioseo_custom_archive_settings\";b:1;s:31:\"aioseo_default_archive_settings\";b:1;s:23:\"aioseo_general_settings\";b:1;s:32:\"aioseo_posttype_default_settings\";b:1;s:24:\"aioseo_taxonomy_settings\";b:1;}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";b:0;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}', 'yes'),
(652, 'wpseo_titles', 'a:129:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:10:\"My Company\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";i:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:18:\"title-contact-info\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-contact-info\";s:0:\"\";s:20:\"noindex-contact-info\";b:1;s:31:\"display-metabox-pt-contact-info\";b:0;s:31:\"post_types-contact-info-maintax\";s:1:\"0\";s:29:\"schema-page-type-contact-info\";s:7:\"WebPage\";s:32:\"schema-article-type-contact-info\";s:4:\"None\";s:25:\"social-title-contact-info\";s:9:\"%%title%%\";s:31:\"social-description-contact-info\";s:0:\"\";s:29:\"social-image-url-contact-info\";s:0:\"\";s:28:\"social-image-id-contact-info\";i:0;s:19:\"title-header-footer\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-header-footer\";s:0:\"\";s:21:\"noindex-header-footer\";b:1;s:32:\"display-metabox-pt-header-footer\";b:0;s:32:\"post_types-header-footer-maintax\";s:1:\"0\";s:30:\"schema-page-type-header-footer\";s:7:\"WebPage\";s:33:\"schema-article-type-header-footer\";s:4:\"None\";s:26:\"social-title-header-footer\";s:9:\"%%title%%\";s:32:\"social-description-header-footer\";s:0:\"\";s:30:\"social-image-url-header-footer\";s:0:\"\";s:29:\"social-image-id-header-footer\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(653, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}', 'yes'),
(664, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1627537230;}', 'yes'),
(685, 'whl_page', 'boshqaruv', 'yes'),
(686, 'whl_redirect_admin', '404', 'yes'),
(711, 'wfls_last_role_change', '1627548733', 'no'),
(714, 'wordfence_installed', '', 'yes'),
(716, 'wf_plugin_act_error', '', 'yes'),
(742, 'dsxmlrpc-settings', 'a:15:{s:17:\"dsxmlrpc-switcher\";s:1:\"0\";s:11:\"xmlrpc-slug\";s:0:\"\";s:16:\"jetpack-switcher\";s:1:\"0\";s:16:\"disabled-methods\";a:4:{i:0;s:13:\"pingback.ping\";i:1;s:20:\"mt.getTrackbackPings\";i:2;s:32:\"pingback.extensions.getPingbacks\";i:3;s:10:\"x-pingback\";}s:14:\"White-list-IPs\";s:0:\"\";s:14:\"Black-list-IPs\";s:0:\"\";s:13:\"json-rest-api\";s:1:\"1\";s:13:\"remove-wp-ver\";s:1:\"1\";s:19:\"disable-code-editor\";s:1:\"1\";s:11:\"disable-wlw\";s:1:\"1\";s:14:\"slow-heartbeat\";s:1:\"1\";s:11:\"hotlink-fix\";s:1:\"1\";s:13:\"remove-emojis\";s:1:\"1\";s:10:\"remove-rss\";s:1:\"1\";s:14:\"disable-oembed\";s:1:\"1\";}', 'yes'),
(743, 'pand-d11620f70d71109ccdfdad0e8df1c84f', 'forever', 'no'),
(813, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(821, 'webpc_notice_thanks', '1642498958', 'yes'),
(822, 'webpc_is_new_installation', '0', 'yes'),
(823, 'webpc_latest_version', '5.0.0', 'yes'),
(824, 'webpc_errors_cache', 'a:0:{}', 'yes'),
(825, 'webpc_settings', 'a:7:{s:11:\"loader_type\";s:8:\"htaccess\";s:10:\"extensions\";a:2:{i:0;s:3:\"jpg\";i:1;s:4:\"jpeg\";}s:4:\"dirs\";a:3:{i:0;s:7:\"plugins\";i:1;s:6:\"themes\";i:2;s:7:\"uploads\";}s:6:\"method\";s:2:\"gd\";s:14:\"output_formats\";a:1:{i:0;s:4:\"webp\";}s:7:\"quality\";s:2:\"90\";s:8:\"features\";a:5:{i:0;s:12:\"only_smaller\";i:1;s:11:\"mod_expires\";i:2;s:12:\"cron_enabled\";i:3;s:15:\"cron_conversion\";i:4;s:13:\"debug_enabled\";}}', 'yes'),
(840, 'action_scheduler_hybrid_store_demarkation', '38', 'yes'),
(841, 'schema-ActionScheduler_StoreSchema', '6.0.1661422882', 'yes'),
(842, 'schema-ActionScheduler_LoggerSchema', '3.0.1661422883', 'yes'),
(843, 'wp_mail_smtp_initial_version', '2.9.0', 'no'),
(844, 'wp_mail_smtp_version', '2.9.0', 'no'),
(845, 'wp_mail_smtp', 'a:8:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:17:\"no-reply@oqila.uz\";s:9:\"from_name\";s:5:\"OQILA\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:15:\"smtp.yandex.com\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"user\";s:17:\"no-reply@oqila.uz\";s:4:\"pass\";s:76:\"zNoZvX3ZUqqBhf1bvkwJfZki1fczhSCWkNhLkbfMjWs9KWSY6gpDes7pZLRXYne5mddRMy3kc+k=\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:1;}}', 'no'),
(846, 'wp_mail_smtp_activated_time', '1627725391', 'no'),
(847, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1627725391;}', 'yes'),
(850, 'action_scheduler_lock_async-request-runner', '1662033344', 'yes'),
(851, 'wp_mail_smtp_migration_version', '5', 'yes'),
(855, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(856, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1639820560;s:9:\"dismissed\";b:1;}', 'yes'),
(860, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(861, 'wp_mail_smtp_mail_key', 'xZoQig9AvVTtP6M4audpz3/gzoHz/LuypHeYAR8StOA=', 'yes'),
(862, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1661951298;s:4:\"feed\";a:1:{i:0;a:6:{s:5:\"title\";s:33:\"Instant Alerts for Email Failures\";s:7:\"content\";s:269:\"Your website emails are critical. If they stop working, wouldn\'t you want to know? With WP Mail SMTP Pro, you can get immediate alerts if there’s a problem sending emails from your site. Get notified via email, SMS, Slack, or webhooks - whatever works best for you!\r\n\";s:4:\"type\";a:1:{i:0;s:4:\"lite\";}s:2:\"id\";i:29;s:4:\"btns\";a:2:{s:4:\"main\";a:2:{s:3:\"url\";s:176:\"https://wpmailsmtp.com/introducing-wp-mail-smtp-3-5-alert-notifications-are-here/?utm_source=WordPress&utm_campaign=liteplugin&utm_medium=Plugin Notification&utm_content=Alerts\";s:4:\"text\";s:10:\"Learn More\";}s:3:\"alt\";a:2:{s:3:\"url\";s:142:\"https://wpmailsmtp.com/wpmailsmtp-lite-upgrade/?utm_source=WordPress&utm_medium=liteplugin&utm_campaign=Plugin Notification&utm_content=Alerts\";s:4:\"text\";s:14:\"Upgrade to Pro\";}}s:5:\"start\";s:19:\"2022-08-29 00:00:00\";}}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(864, 'wp_mail_smtp_lite_sent_email_counter', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(904, 'ws_menu_editor', 'a:26:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";a:7:{s:4:\"tree\";a:20:{s:9:\"index.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"index.php>index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Home\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"index.php>update-core.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Updates <span class=\"update-plugins count-3\"><span class=\"update-count\">3</span></span>\";s:12:\"access_level\";s:11:\"update_core\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"update-core.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"update-core.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:22:\"index.php>llar-welcome\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:40:\"Welcome to Limit Login Attempts Reloaded\";s:10:\"menu_title\";s:28:\"Limit Login Attempts Welcome\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"llar-welcome\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"index.php?page=llar-welcome\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"Dashboard\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:43:\"menu-top menu-top-first menu-icon-dashboard\";s:8:\"hookname\";s:14:\"menu-dashboard\";s:8:\"icon_url\";s:19:\"dashicons-dashboard\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:4:\"read\";}s:23:\"edit.php?post_type=page\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:16:\"Umumiy sahifalar\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\">edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:47:\"edit.php?post_type=page>edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Pages\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:51:\"edit.php?post_type=page>post-new.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"post-new.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"post-new.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Pages\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:23:\"menu-top menu-icon-page\";s:8:\"hookname\";s:10:\"menu-pages\";s:8:\"icon_url\";s:20:\"dashicons-admin-page\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:10:\"edit_pages\";}s:38:\"/wp-admin/post.php?post=49&action=edit\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:8:\"Aloqalar\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";s:38:\"/wp-admin/post.php?post=49&action=edit\";s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:0:\"\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:1;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:16:{s:10:\"menu_title\";s:11:\"Custom Menu\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:10:\"page_title\";s:0:\"\";s:9:\"css_class\";s:8:\"menu-top\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:12:\"page_heading\";s:0:\"\";s:6:\"colors\";b:0;s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;s:14:\"is_always_open\";b:0;}s:29:\"required_capability_read_only\";s:4:\"read\";}s:32:\"edit.php?post_type=header-footer\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:33:\">edit.php?post_type=header-footer\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:65:\"edit.php?post_type=header-footer>edit.php?post_type=header-footer\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:21:\"All Yuqori &amp; Past\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:32:\"edit.php?post_type=header-footer\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:32:\"edit.php?post_type=header-footer\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:32:\"edit.php?post_type=header-footer\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:69:\"edit.php?post_type=header-footer>post-new.php?post_type=header-footer\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:36:\"post-new.php?post_type=header-footer\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:32:\"edit.php?post_type=header-footer\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:36:\"post-new.php?post_type=header-footer\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:17:\"Yuqori &amp; Past\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:32:\"edit.php?post_type=header-footer\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:32:\"menu-top menu-icon-header-footer\";s:8:\"hookname\";s:24:\"menu-posts-header-footer\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:32:\"edit.php?post_type=header-footer\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_6\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_6\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_6\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:8:\"edit.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:9:\"Maqolalar\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:9:\">edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:17:\"edit.php>edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Posts\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"edit.php>post-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"post-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"post-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=category\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Categories\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=category\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=category\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=post_tag\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Tags\";s:12:\"access_level\";s:16:\"manage_post_tags\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Posts\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:37:\"menu-top menu-icon-post open-if-no-js\";s:8:\"hookname\";s:10:\"menu-posts\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:10:\"edit_posts\";}s:17:\"edit-comments.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:7:\"Izohlar\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:18:\">edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:1:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:35:\"edit-comments.php>edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"All Comments\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"edit-comments.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:198:\"Comments <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 Comments in moderation</span></span>\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-comments\";s:8:\"hookname\";s:13:\"menu-comments\";s:8:\"icon_url\";s:24:\"dashicons-admin-comments\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";N;}s:31:\"edit.php?post_type=contact-info\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:32:\">edit.php?post_type=contact-info\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:63:\"edit.php?post_type=contact-info>edit.php?post_type=contact-info\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:16:\"All Contact info\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit.php?post_type=contact-info\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:31:\"edit.php?post_type=contact-info\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit.php?post_type=contact-info\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:67:\"edit.php?post_type=contact-info>post-new.php?post_type=contact-info\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:35:\"post-new.php?post_type=contact-info\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:31:\"edit.php?post_type=contact-info\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:35:\"post-new.php?post_type=contact-info\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:1;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Contact info\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit.php?post_type=contact-info\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:31:\"menu-top menu-icon-contact-info\";s:8:\"hookname\";s:23:\"menu-posts-contact-info\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit.php?post_type=contact-info\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:10:\"edit_posts\";}s:11:\"separator_7\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_7\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"upload.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:15:\"Rasm va fayllar\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:9;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\">upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"upload.php>upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Library\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"upload.php>media-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"media-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"media-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Media\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-media\";s:8:\"hookname\";s:10:\"menu-media\";s:8:\"icon_url\";s:21:\"dashicons-admin-media\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:12:\"upload_files\";}s:10:\"themes.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:12:\"Sayt dizayni\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:10;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\">themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:8:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"themes.php>themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:85:\"Themes <span class=\"update-plugins count-3\"><span class=\"theme-count\">3</span></span>\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>customize.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"Customize\";s:12:\"access_level\";s:9:\"customize\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:75:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:75:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:22:\"themes.php>widgets.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Widgets\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"widgets.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"widgets.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>nav-menus.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Menus\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"nav-menus.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"nav-menus.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:65:\"themes.php>customize.php?#038;autofocus%5Bcontrol%5D=header_image\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Header\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:116:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor&#038;autofocus%5Bcontrol%5D=header_image\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:111:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor&autofocus%5Bcontrol%5D=header_image\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:69:\"themes.php>customize.php?#038;autofocus%5Bcontrol%5D=background_image\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Background\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:120:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor&#038;autofocus%5Bcontrol%5D=background_image\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:115:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor&autofocus%5Bcontrol%5D=background_image\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>custom-header\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:6:\"Header\";s:10:\"menu_title\";s:6:\"Header\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"custom-header\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"themes.php?page=custom-header\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:28:\"themes.php>custom-background\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:10:\"Background\";s:10:\"menu_title\";s:10:\"Background\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"custom-background\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"themes.php?page=custom-background\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Appearance\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:29:\"menu-top menu-icon-appearance\";s:8:\"hookname\";s:15:\"menu-appearance\";s:8:\"icon_url\";s:26:\"dashicons-admin-appearance\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:13:\"switch_themes\";}s:11:\"plugins.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";s:7:\"Plugins\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:11;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:23:\"plugins.php>plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:17:\"Installed Plugins\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"plugins.php>plugin-install.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:15:\"install_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"plugin-install.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:18:\"plugin-install.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Plugins <span class=\"update-plugins count-0\"><span class=\"plugin-count\">0</span></span>\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-plugins\";s:8:\"hookname\";s:12:\"menu-plugins\";s:8:\"icon_url\";s:23:\"dashicons-admin-plugins\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";N;}s:9:\"users.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:12;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"users.php>users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Users\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:22:\"users.php>user-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:12:\"create_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"user-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"user-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"users.php>profile.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Profile\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"profile.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"profile.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Users\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-users\";s:8:\"hookname\";s:10:\"menu-users\";s:8:\"icon_url\";s:21:\"dashicons-admin-users\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"tools.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:13;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:7:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"tools.php>tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:15:\"Available Tools\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\"tools.php>import.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Import\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"import.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"import.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\"tools.php>export.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Export\";s:12:\"access_level\";s:6:\"export\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"export.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"export.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"tools.php>site-health.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:11:\"Site Health\";s:12:\"access_level\";s:23:\"view_site_health_checks\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"site-health.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"site-health.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:34:\"tools.php>export-personal-data.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:20:\"Export Personal Data\";s:12:\"access_level\";s:27:\"export_others_personal_data\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:24:\"export-personal-data.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"export-personal-data.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:33:\"tools.php>erase-personal-data.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:19:\"Erase Personal Data\";s:12:\"access_level\";s:26:\"erase_others_personal_data\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"erase-personal-data.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"erase-personal-data.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:26:\"tools.php>action-scheduler\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:17:\"Scheduled Actions\";s:10:\"menu_title\";s:17:\"Scheduled Actions\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"action-scheduler\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"tools.php?page=action-scheduler\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-tools\";s:8:\"hookname\";s:10:\"menu-tools\";s:8:\"icon_url\";s:21:\"dashicons-admin-tools\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:19:\"options-general.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:14;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\">options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:11:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"General\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-writing.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Writing\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-writing.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-writing.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-reading.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Reading\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-reading.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-reading.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:42:\"options-general.php>options-discussion.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Discussion\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:22:\"options-discussion.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:22:\"options-discussion.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:37:\"options-general.php>options-media.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Media\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"options-media.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"options-media.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:41:\"options-general.php>options-permalink.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Permalinks\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:21:\"options-permalink.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:21:\"options-permalink.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-privacy.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Privacy\";s:12:\"access_level\";s:22:\"manage_privacy_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-privacy.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-privacy.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:36:\"options-general.php>webpc_admin_page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:24:\"WebP Converter for Media\";s:10:\"menu_title\";s:14:\"WebP Converter\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"webpc_admin_page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:41:\"options-general.php?page=webpc_admin_page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:8;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:32:\"options-general.php>whl_settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:14:\"WPS Hide Login\";s:10:\"menu_title\";s:14:\"WPS Hide Login\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"whl_settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:37:\"options-general.php?page=whl_settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:9;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:9;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"options-general.php>limit-login-attempts\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:20:\"Limit Login Attempts\";s:10:\"menu_title\";s:20:\"Limit Login Attempts\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:20:\"limit-login-attempts\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:45:\"options-general.php?page=limit-login-attempts\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:10;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:10;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"options-general.php>menu_editor\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:11:\"Menu Editor\";s:10:\"menu_title\";s:11:\"Menu Editor\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"menu_editor\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:36:\"options-general.php?page=menu_editor\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Settings\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-settings\";s:8:\"hookname\";s:13:\"menu-settings\";s:8:\"icon_url\";s:24:\"dashicons-admin-settings\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:34:\"edit.php?post_type=acf-field-group\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:15;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:35:\">edit.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:69:\"edit.php?post_type=acf-field-group>edit.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:12:\"Field Groups\";s:10:\"menu_title\";s:12:\"Field Groups\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:34:\"edit.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:34:\"edit.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:73:\"edit.php?post_type=acf-field-group>post-new.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:7:\"Add New\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:38:\"post-new.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"post-new.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:44:\"edit.php?post_type=acf-field-group>acf-tools\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:5:\"Tools\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"acf-tools\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:49:\"edit.php?post_type=acf-field-group&page=acf-tools\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:13:\"Custom Fields\";s:10:\"menu_title\";s:13:\"Custom Fields\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:34:\"edit.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:53:\"menu-top toplevel_page_edit?post_type=acf-field-group\";s:8:\"hookname\";s:44:\"toplevel_page_edit?post_type=acf-field-group\";s:8:\"icon_url\";s:31:\"dashicons-welcome-widgets-menus\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:34:\"edit.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:12:\"wp-mail-smtp\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:16;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:13:\">wp-mail-smtp\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"wp-mail-smtp>wp-mail-smtp\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:18:\" &lsaquo; Settings\";s:10:\"menu_title\";s:8:\"Settings\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"wp-mail-smtp\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"wp-mail-smtp\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"admin.php?page=wp-mail-smtp\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"wp-mail-smtp>wp-mail-smtp-logs\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:9:\"Email Log\";s:10:\"menu_title\";s:9:\"Email Log\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"wp-mail-smtp-logs\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"wp-mail-smtp\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:32:\"admin.php?page=wp-mail-smtp-logs\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"wp-mail-smtp>wp-mail-smtp-tools\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:5:\"Tools\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"wp-mail-smtp-tools\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"wp-mail-smtp\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"admin.php?page=wp-mail-smtp-tools\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"wp-mail-smtp>wp-mail-smtp-about\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:8:\"About Us\";s:10:\"menu_title\";s:8:\"About Us\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"wp-mail-smtp-about\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"wp-mail-smtp\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"admin.php?page=wp-mail-smtp-about\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:12:\"WP Mail SMTP\";s:10:\"menu_title\";s:12:\"WP Mail SMTP\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"wp-mail-smtp\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:35:\"menu-top toplevel_page_wp-mail-smtp\";s:8:\"hookname\";s:26:\"toplevel_page_wp-mail-smtp\";s:8:\"icon_url\";s:902:\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9IiM5ZWEzYTgiIHdpZHRoPSI2NCIgaGVpZ2h0PSI2NCIgdmlld0JveD0iMCAwIDQzIDM0Ij48cGF0aCBkPSJNMC4wMDcsMy41ODVWMjAuNDIxcTAsMy41ODYsMy43NTEsMy41ODVMMjAsMjRWMTlIMzBWMTQuMDE0bDAuOTkxLTFMMzQsMTNWMy41ODVRMzQsMCwzMC4yNDksMEgzLjc1OFEwLjAwNywwLC4wMDcsMy41ODVoMFpNMy41MjQsNi4xNTdhMS40OSwxLjQ5LDAsMCwxLS41MDgtMC45MzUsMS41ODEsMS41ODEsMCwwLDEsLjI3NC0xLjIwOCwxLjQ0OSwxLjQ0OSwwLDAsMSwxLjA5NC0uNjYzLDEuNzU2LDEuNzU2LDAsMCwxLDEuMjUuMzEybDExLjQwOSw3LjcxNkwyOC4zNzQsMy42NjNhMS45NiwxLjk2LDAsMCwxLDEuMjg5LS4zMTIsMS41NDYsMS41NDYsMCwwLDEsMS4wOTQuNjYzLDEuNCwxLjQsMCwwLDEsLjI3MywxLjIwOCwxLjY3LDEuNjcsMCwwLDEtLjU0Ny45MzVMMTcuMDQzLDE3LjIyNVoiLz48cGF0aCBkPSJNMjIsMjhIMzJsLTAuMDA5LDQuNjI0YTEuMTI2LDEuMTI2LDAsMCwwLDEuOTIyLjhsOC4yNS04LjIzNmExLjEyNiwxLjEyNiwwLDAsMCwwLTEuNTk0bC04LjI1LTguMjQxYTEuMTI2LDEuMTI2LDAsMCwwLTEuOTIyLjh2NC44NjZMMjIsMjF2N1oiLz48L3N2Zz4=\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"admin.php?page=wp-mail-smtp\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_8\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:17;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_8\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_8\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:15:\"cptui_main_menu\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:18;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:16:\">cptui_main_menu\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:6:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"cptui_main_menu>cptui_manage_post_types\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:19:\"Add/Edit Post Types\";s:10:\"menu_title\";s:19:\"Add/Edit Post Types\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"cptui_manage_post_types\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:15:\"cptui_main_menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"admin.php?page=cptui_manage_post_types\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"cptui_main_menu>cptui_manage_taxonomies\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:19:\"Add/Edit Taxonomies\";s:10:\"menu_title\";s:19:\"Add/Edit Taxonomies\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"cptui_manage_taxonomies\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:15:\"cptui_main_menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"admin.php?page=cptui_manage_taxonomies\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"cptui_main_menu>cptui_listings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:26:\"Registered Types and Taxes\";s:10:\"menu_title\";s:22:\"Registered Types/Taxes\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"cptui_listings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:15:\"cptui_main_menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"admin.php?page=cptui_listings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:27:\"cptui_main_menu>cptui_tools\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:25:\"Custom Post Type UI Tools\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"cptui_tools\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:15:\"cptui_main_menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"admin.php?page=cptui_tools\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:29:\"cptui_main_menu>cptui_support\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:12:\"Help/Support\";s:10:\"menu_title\";s:12:\"Help/Support\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"cptui_support\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:15:\"cptui_main_menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=cptui_support\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"cptui_main_menu>cptui_main_menu\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:12:\"About CPT UI\";s:10:\"menu_title\";s:12:\"About CPT UI\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"cptui_main_menu\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:15:\"cptui_main_menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"admin.php?page=cptui_main_menu\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:17:\"Custom Post Types\";s:10:\"menu_title\";s:6:\"CPT UI\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"cptui_main_menu\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:38:\"menu-top toplevel_page_cptui_main_menu\";s:8:\"hookname\";s:29:\"toplevel_page_cptui_main_menu\";s:8:\"icon_url\";s:15:\"dashicons-forms\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"admin.php?page=cptui_main_menu\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:17:\"Security Settings\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:19;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:18:\">Security Settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:56:\"Security Settings>Security Settings#tab=xml-rpc-settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:16:\"XML-RPC Settings\";s:10:\"menu_title\";s:16:\"XML-RPC Settings\";s:12:\"access_level\";s:10:\"edit_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:38:\"Security Settings#tab=xml-rpc-settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"Security Settings\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:53:\"admin.php?page=Security Settings#tab=xml-rpc-settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:57:\"Security Settings>Security Settings#tab=security-settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:17:\"Security Settings\";s:10:\"menu_title\";s:17:\"Security Settings\";s:12:\"access_level\";s:10:\"edit_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:39:\"Security Settings#tab=security-settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"Security Settings\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:54:\"admin.php?page=Security Settings#tab=security-settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:58:\"Security Settings>Security Settings#tab=speed-up-wordpress\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:18:\"Speed Up WordPress\";s:10:\"menu_title\";s:18:\"Speed Up WordPress\";s:12:\"access_level\";s:10:\"edit_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:40:\"Security Settings#tab=speed-up-wordpress\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"Security Settings\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:55:\"admin.php?page=Security Settings#tab=speed-up-wordpress\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:63:\"Security Settings>Security Settings#tab=backup-restore-settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:23:\"Backup/Restore Settings\";s:10:\"menu_title\";s:23:\"Backup/Restore Settings\";s:12:\"access_level\";s:10:\"edit_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:45:\"Security Settings#tab=backup-restore-settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"Security Settings\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:60:\"admin.php?page=Security Settings#tab=backup-restore-settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:16:\"XML-RPC Security\";s:10:\"menu_title\";s:16:\"XML-RPC Security\";s:12:\"access_level\";s:10:\"edit_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"Security Settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:40:\"menu-top toplevel_page_Security Settings\";s:8:\"hookname\";s:31:\"toplevel_page_Security Settings\";s:8:\"icon_url\";s:20:\"dashicons-shield-alt\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:32:\"admin.php?page=Security Settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:6:\"format\";a:3:{s:4:\"name\";s:22:\"Admin Menu Editor menu\";s:7:\"version\";s:3:\"7.0\";s:13:\"is_normalized\";b:1;}s:13:\"color_presets\";a:0:{}s:20:\"component_visibility\";a:0:{}s:22:\"has_modified_dashicons\";b:0;s:16:\"last_modified_on\";s:25:\"2021-08-03T05:53:11+00:00\";s:21:\"prebuilt_virtual_caps\";a:2:{i:2;a:0:{}i:3;a:0:{}}}s:19:\"custom_network_menu\";N;s:18:\"first_install_time\";i:1627810882;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:14:\"manage_options\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:0;s:20:\"unused_item_position\";s:8:\"relative\";s:23:\"unused_item_permissions\";s:9:\"unchanged\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:20:\"wpml_support_enabled\";b:1;s:24:\"bbpress_override_enabled\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(960, 'cptui_new_install', 'false', 'yes'),
(1021, 'cptui_post_types', 'a:2:{s:12:\"contact-info\";a:30:{s:4:\"name\";s:12:\"contact-info\";s:5:\"label\";s:12:\"Contact info\";s:14:\"singular_label\";s:12:\"Contact info\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:5:\"false\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:5:\"false\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"header-footer\";a:30:{s:4:\"name\";s:13:\"header-footer\";s:5:\"label\";s:17:\"Yuqori &amp; Past\";s:14:\"singular_label\";s:17:\"Yuqori &amp; Past\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:5:\"false\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:5:\"false\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:5:\"false\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:1:{i:0;s:5:\"title\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(1120, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1202, 'limit_login_review_notice_shown', '1', 'yes'),
(1269, 'action_scheduler_migration_status', 'complete', 'yes'),
(1334, 'user_count', '1', 'no'),
(1335, 'db_upgraded', '', 'yes'),
(1337, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.2-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"6.0.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-rollback-1.zip\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"6.0.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1662032256;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1339, 'can_compress_scripts', '0', 'no'),
(1354, 'webpc_notice_cloudflare', '', 'yes'),
(1355, 'webpc_notice_litespeed', '', 'yes'),
(1356, '_site_transient_timeout_webpc_cron_paths', '1662035855', 'no'),
(1357, '_site_transient_webpc_cron_paths', 'a:0:{}', 'no'),
(1358, '_site_transient_timeout_webpc_cron_paths_skipped', '1662035855', 'no'),
(1359, '_site_transient_webpc_cron_paths_skipped', '0', 'no'),
(1363, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(1418, 'WpFc_api_key', 'a7495de22ffdca1f2392afc6f9b663c7', 'yes'),
(1421, 'WpFastestCache', '{\"wpFastestCachePreload_number\":\"4\",\"wpFastestCachePreload_order\":\"\",\"wpFastestCacheNewPost\":\"on\",\"wpFastestCacheNewPost_type\":\"all\",\"wpFastestCacheUpdatePost\":\"on\",\"wpFastestCacheUpdatePost_type\":\"post\",\"wpFastestCacheLanguage\":\"eng\"}', 'yes'),
(1422, 'wpfc-group', '', 'yes'),
(1448, '_transient_is_multi_author', '0', 'yes'),
(1485, '_site_transient_webpc_cron_request_id', '', 'no'),
(1631, 'webpc_stats_calculation_images', '28', 'yes'),
(1647, 'webpc_stats_regeneration_images', '0', 'yes'),
(1810, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1662032257;s:7:\"checked\";a:5:{s:14:\"twentynineteen\";s:3:\"1.9\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.2\";s:20:\"wp-bootstrap-starter\";s:5:\"3.3.6\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.3.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1822, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1662032260;s:8:\"response\";a:4:{s:33:\"admin-menu-editor/menu-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/admin-menu-editor\";s:4:\"slug\";s:17:\"admin-menu-editor\";s:6:\"plugin\";s:33:\"admin-menu-editor/menu-editor.php\";s:11:\"new_version\";s:6:\"1.10.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/admin-menu-editor/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/admin-menu-editor.1.10.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/admin-menu-editor/assets/icon-128x128.png?rev=1418604\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/admin-menu-editor/assets/banner-772x250.png?rev=1419590\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:53:\"webp-converter-for-media/webp-converter-for-media.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/webp-converter-for-media\";s:4:\"slug\";s:24:\"webp-converter-for-media\";s:6:\"plugin\";s:53:\"webp-converter-for-media/webp-converter-for-media.php\";s:11:\"new_version\";s:5:\"5.1.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/webp-converter-for-media/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/webp-converter-for-media.5.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/webp-converter-for-media/assets/icon-256x256.png?rev=2636288\";s:2:\"1x\";s:77:\"https://ps.w.org/webp-converter-for-media/assets/icon-128x128.png?rev=2636288\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/webp-converter-for-media/assets/banner-1544x500.png?rev=2757184\";s:2:\"1x\";s:79:\"https://ps.w.org/webp-converter-for-media/assets/banner-772x250.png?rev=2757184\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:43:\"w.org/plugins/limit-login-attempts-reloaded\";s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:6:\"plugin\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:11:\"new_version\";s:6:\"2.25.5\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/limit-login-attempts-reloaded/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/limit-login-attempts-reloaded.2.25.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-256x256.png?rev=2456910\";s:2:\"1x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-128x128.png?rev=2456910\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-1544x500.png?rev=2456910\";s:2:\"1x\";s:84:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-772x250.png?rev=2456910\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";b:0;}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"19.6.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.12.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.12.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:43:\"disable-xml-rpc-api/disable-xml-rpc-api.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/disable-xml-rpc-api\";s:4:\"slug\";s:19:\"disable-xml-rpc-api\";s:6:\"plugin\";s:43:\"disable-xml-rpc-api/disable-xml-rpc-api.php\";s:11:\"new_version\";s:7:\"2.1.4.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/disable-xml-rpc-api/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/disable-xml-rpc-api.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/disable-xml-rpc-api/assets/icon-256x256.png?rev=2391445\";s:2:\"1x\";s:72:\"https://ps.w.org/disable-xml-rpc-api/assets/icon-128x128.png?rev=2391445\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/disable-xml-rpc-api/assets/banner-1544x500.jpg?rev=2391445\";s:2:\"1x\";s:74:\"https://ps.w.org/disable-xml-rpc-api/assets/banner-772x250.jpg?rev=2391445\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:35:\"wp-fastest-cache/wpFastestCache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/wp-fastest-cache\";s:4:\"slug\";s:16:\"wp-fastest-cache\";s:6:\"plugin\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-fastest-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-fastest-cache.1.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-256x256.png?rev=2064586\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-128x128.png?rev=1068904\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-fastest-cache/assets/banner-772x250.jpg?rev=1064099\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}}s:7:\"checked\";a:12:{s:33:\"admin-menu-editor/menu-editor.php\";s:6:\"1.10.2\";s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:53:\"webp-converter-for-media/webp-converter-for-media.php\";s:5:\"5.0.0\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.12.1\";s:43:\"disable-xml-rpc-api/disable-xml-rpc-api.php\";s:7:\"2.1.4.3\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:6:\"2.25.4\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:5:\"1.0.4\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.5.2\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.6\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"19.6\";}}', 'no'),
(1835, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1662037697', 'no'),
(1836, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(1837, '_transient_timeout_wpseo_total_unindexed_general_items', '1662037697', 'no'),
(1838, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(1839, '_transient_timeout_wpseo_unindexed_post_link_count', '1662037697', 'no'),
(1840, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(1841, '_transient_timeout_wpseo_unindexed_term_link_count', '1662037697', 'no'),
(1842, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(1843, 'limit_login_lockouts', 'a:0:{}', 'yes'),
(1844, 'limit_login_retries', 'a:0:{}', 'yes'),
(1845, 'limit_login_retries_valid', 'a:0:{}', 'yes'),
(1967, '_site_transient_timeout_webpc_cron_locked', '1662032315', 'no'),
(1968, '_site_transient_webpc_cron_locked', '', 'no'),
(1969, '_site_transient_timeout_theme_roots', '1662034056', 'no'),
(1970, '_site_transient_theme_roots', 'a:5:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:20:\"wp-bootstrap-starter\";s:7:\"/themes\";}', 'no'),
(1971, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1662033157', 'no'),
(1972, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(1973, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1662033157', 'no'),
(1974, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(20, 2, '_edit_lock', '1612614559:1'),
(23, 2, '_edit_last', '1'),
(25, 29, '_edit_last', '1'),
(26, 29, '_edit_lock', '1628076273:1'),
(27, 33, '_edit_last', '1'),
(28, 33, '_edit_lock', '1628079391:1'),
(29, 33, '_wp_page_template', 'contact-page.php'),
(30, 33, 'primary-phone', ''),
(31, 33, '_primary-phone', 'field_6010ec69b3543'),
(32, 33, 'secondary-phone', ''),
(33, 33, '_secondary-phone', 'field_6010ecaab3544'),
(34, 33, 'email', ''),
(35, 33, '_email', 'field_6010ecebb3545'),
(36, 34, 'primary-phone', ''),
(37, 34, '_primary-phone', 'field_6010ec69b3543'),
(38, 34, 'secondary-phone', ''),
(39, 34, '_secondary-phone', 'field_6010ecaab3544'),
(40, 34, 'email', ''),
(41, 34, '_email', 'field_6010ecebb3545'),
(42, 47, '_edit_last', '1'),
(43, 47, '_edit_lock', '1627968407:1'),
(44, 47, 'primary-phone-number', ''),
(45, 47, '_primary-phone-number', 'field_6010ec69b3543'),
(46, 47, 'secondary-phone-number', ''),
(47, 47, '_secondary-phone-number', 'field_6010ecaab3544'),
(48, 47, 'email', ''),
(49, 47, '_email', 'field_6010ecebb3545'),
(50, 47, 'address-uz', ''),
(51, 47, '_address-uz', 'field_60110e148551d'),
(52, 47, 'address-ru', ''),
(53, 47, '_address-ru', 'field_6108cbd4a94b2'),
(54, 47, 'facebook-url', ''),
(55, 47, '_facebook-url', 'field_6108cbf6a94b3'),
(56, 47, 'instagram-url', ''),
(57, 47, '_instagram-url', 'field_6108cbfda94b4'),
(58, 47, 'telegram-url', ''),
(59, 47, '_telegram-url', 'field_6108cc0ba94b5'),
(60, 47, 'linkedin-url', ''),
(61, 47, '_linkedin-url', 'field_6108cc24a94b6'),
(62, 49, '_edit_last', '1'),
(63, 49, '_edit_lock', '1661422677:1'),
(64, 49, 'primary-phone-number', ''),
(65, 49, '_primary-phone-number', 'field_6010ec69b3543'),
(66, 49, 'secondary-phone-number', ''),
(67, 49, '_secondary-phone-number', 'field_6010ecaab3544'),
(68, 49, 'email', ''),
(69, 49, '_email', 'field_6010ecebb3545'),
(70, 49, 'address-uz', ''),
(71, 49, '_address-uz', 'field_60110e148551d'),
(72, 49, 'address-ru', ''),
(73, 49, '_address-ru', 'field_6108cbd4a94b2'),
(74, 49, 'facebook-url', ''),
(75, 49, '_facebook-url', 'field_6108cbf6a94b3'),
(76, 49, 'instagram-url', ''),
(77, 49, '_instagram-url', 'field_6108cbfda94b4'),
(78, 49, 'telegram-url', ''),
(79, 49, '_telegram-url', 'field_6108cc0ba94b5'),
(80, 49, 'linkedin-url', ''),
(81, 49, '_linkedin-url', 'field_6108cc24a94b6'),
(82, 51, '_edit_last', '1'),
(83, 51, '_edit_lock', '1627970173:1'),
(84, 54, '_edit_last', '1'),
(85, 54, '_edit_lock', '1627970300:1'),
(86, 57, '_edit_last', '1'),
(87, 57, '_edit_lock', '1627970336:1'),
(88, 59, '_edit_last', '1'),
(89, 59, '_edit_lock', '1627981787:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2021-01-14 20:33:50', '2021-01-14 20:33:50', '<!-- wp:paragraph -->\r\n<p>Hello, World</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote --><!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Home page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-01-26 21:03:26', '2021-01-26 21:03:26', '', 0, 'http://wp.loc/?page_id=2', 0, 'page', '', 0),
(13, 1, '2021-01-14 20:59:30', '2021-01-14 20:59:30', '<!-- wp:paragraph -->\n<p>Hello, World</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p></p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-14 20:59:30', '2021-01-14 20:59:30', '', 2, 'http://wp.loc/index.php/2021/01/14/2-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2021-01-26 21:00:53', '2021-01-26 21:00:53', '<!-- wp:paragraph -->\r\n<p>Hello, World</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p><img class=\"alignnone size-medium wp-image-20\" src=\"http://wp.loc/wp-content/uploads/2021/01/The-Beach-4-dragged-300x300.jpeg\" alt=\"\" width=\"300\" height=\"300\" /></p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Home page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-26 21:00:53', '2021-01-26 21:00:53', '', 2, 'http://wp.loc/2-revision-v1', 0, 'revision', '', 0),
(23, 1, '2021-01-26 21:01:59', '2021-01-26 21:01:59', '<!-- wp:paragraph -->\r\n<p>Hello, World</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p><img class=\"alignnone wp-image-20 size-full\" src=\"http://wp.loc/wp-content/uploads/2021/01/The-Beach-4-dragged-scaled.jpeg\" alt=\"\" width=\"2560\" height=\"2560\" /></p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Home page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-26 21:01:59', '2021-01-26 21:01:59', '', 2, 'http://wp.loc/2-revision-v1', 0, 'revision', '', 0),
(25, 1, '2021-01-26 21:03:26', '2021-01-26 21:03:26', '<!-- wp:paragraph -->\r\n<p>Hello, World</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote --><!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Home page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-26 21:03:26', '2021-01-26 21:03:26', '', 2, 'http://wp.loc/2-revision-v1', 0, 'revision', '', 0),
(27, 1, '2021-01-27 04:01:30', '2021-01-27 04:01:30', '<!-- wp:paragraph -->\n<p>Hello, World</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote --><!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<p>&nbsp;</p>\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2021-01-27 04:01:30', '2021-01-27 04:01:30', '', 2, 'http://wp.loc/2-autosave-v1', 0, 'revision', '', 0),
(29, 1, '2021-01-27 04:33:03', '2021-01-27 04:33:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"contact-info\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'DATA CONTACT INFO', 'data-contact-info', 'publish', 'closed', 'closed', '', 'group_6010eb0f0bf24', '', '', '2021-08-03 05:39:09', '2021-08-03 05:39:09', '', 0, 'http://wp.loc/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2021-01-27 04:33:03', '2021-01-27 04:33:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'primary-phone-number', 'primary-phone-number', 'publish', 'closed', 'closed', '', 'field_6010ec69b3543', '', '', '2021-08-03 05:26:37', '2021-08-03 05:26:37', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=30', 0, 'acf-field', '', 0),
(31, 1, '2021-01-27 04:33:03', '2021-01-27 04:33:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'secondary-phone-number', 'secondary-phone-number', 'publish', 'closed', 'closed', '', 'field_6010ecaab3544', '', '', '2021-08-03 05:26:37', '2021-08-03 05:26:37', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=31', 1, 'acf-field', '', 0),
(32, 1, '2021-01-27 04:33:04', '2021-01-27 04:33:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'email', 'email', 'publish', 'closed', 'closed', '', 'field_6010ecebb3545', '', '', '2021-08-03 05:26:37', '2021-08-03 05:26:37', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=32', 2, 'acf-field', '', 0),
(33, 1, '2021-01-27 04:33:49', '2021-01-27 04:33:49', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2021-01-27 04:33:49', '2021-01-27 04:33:49', '', 0, 'http://wp.loc/?page_id=33', 0, 'page', '', 0),
(34, 1, '2021-01-27 04:33:49', '2021-01-27 04:33:49', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-01-27 04:33:49', '2021-01-27 04:33:49', '', 33, 'http://wp.loc/33-revision-v1', 0, 'revision', '', 0),
(35, 1, '2021-01-27 07:09:01', '2021-01-27 07:09:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'address-uz', 'address-uz', 'publish', 'closed', 'closed', '', 'field_60110e148551d', '', '', '2021-08-03 05:26:37', '2021-08-03 05:26:37', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=35', 3, 'acf-field', '', 0),
(40, 1, '2021-08-03 05:00:27', '2021-08-03 05:00:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'address-ru', 'address-ru', 'publish', 'closed', 'closed', '', 'field_6108cbd4a94b2', '', '', '2021-08-03 05:26:37', '2021-08-03 05:26:37', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=40', 4, 'acf-field', '', 0),
(41, 1, '2021-08-03 05:00:28', '2021-08-03 05:00:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'facebook-url', 'facebook-url', 'publish', 'closed', 'closed', '', 'field_6108cbf6a94b3', '', '', '2021-08-03 05:26:37', '2021-08-03 05:26:37', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=41', 5, 'acf-field', '', 0),
(42, 1, '2021-08-03 05:00:29', '2021-08-03 05:00:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'instagram-url', 'instagram-url', 'publish', 'closed', 'closed', '', 'field_6108cbfda94b4', '', '', '2021-08-03 05:26:38', '2021-08-03 05:26:38', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=42', 6, 'acf-field', '', 0),
(43, 1, '2021-08-03 05:00:29', '2021-08-03 05:00:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'telegram-url', 'telegram-url', 'publish', 'closed', 'closed', '', 'field_6108cc0ba94b5', '', '', '2021-08-03 05:26:38', '2021-08-03 05:26:38', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=43', 7, 'acf-field', '', 0),
(44, 1, '2021-08-03 05:00:29', '2021-08-03 05:00:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'linkedin-url', 'linkedin-url', 'publish', 'closed', 'closed', '', 'field_6108cc24a94b6', '', '', '2021-08-03 05:26:38', '2021-08-03 05:26:38', '', 29, 'http://wp.loc/?post_type=acf-field&#038;p=44', 8, 'acf-field', '', 0),
(47, 1, '2021-08-03 05:24:40', '2021-08-03 05:24:40', '', 'General info', '', 'publish', 'closed', 'closed', '', 'general-info', '', '', '2021-08-03 05:24:40', '2021-08-03 05:24:40', '', 0, 'http://wp.loc/?post_type=general-info&#038;p=47', 0, 'general-info', '', 0),
(49, 1, '2021-08-03 05:39:51', '2021-08-03 05:39:51', '', 'Contact info', '', 'publish', 'closed', 'closed', '', 'contact-info', '', '', '2021-08-03 05:39:51', '2021-08-03 05:39:51', '', 0, 'http://wp.loc/?post_type=contact-info&#038;p=49', 0, 'contact-info', '', 0),
(51, 1, '2021-08-03 05:55:20', '2021-08-03 05:55:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"57\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'BLOCK HEADER', 'block-header', 'publish', 'closed', 'closed', '', 'group_6108da16967cc', '', '', '2021-08-03 05:58:35', '2021-08-03 05:58:35', '', 0, 'http://wp.loc/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(53, 1, '2021-08-03 05:55:20', '2021-08-03 05:55:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'slogan', 'slogan', 'publish', 'closed', 'closed', '', 'field_6108da31c0418', '', '', '2021-08-03 05:55:20', '2021-08-03 05:55:20', '', 51, 'http://wp.loc/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2021-08-03 05:56:10', '2021-08-03 05:56:10', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"59\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'BLOCK FOOTER', 'block-footer', 'publish', 'closed', 'closed', '', 'group_6108da5d7a8de', '', '', '2021-08-03 05:58:19', '2021-08-03 05:58:19', '', 0, 'http://wp.loc/?post_type=acf-field-group&#038;p=54', 0, 'acf-field-group', '', 0),
(56, 1, '2021-08-03 05:56:10', '2021-08-03 05:56:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'short-about', 'short-about', 'publish', 'closed', 'closed', '', 'field_6108da6938465', '', '', '2021-08-03 05:56:10', '2021-08-03 05:56:10', '', 54, 'http://wp.loc/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2021-08-03 05:56:41', '2021-08-03 05:56:41', '', 'Yuqori (header)', '', 'publish', 'closed', 'closed', '', 'yuqori-header', '', '', '2021-08-03 05:56:41', '2021-08-03 05:56:41', '', 0, 'http://wp.loc/?post_type=header-footer&#038;p=57', 0, 'header-footer', '', 0),
(59, 1, '2021-08-03 05:56:57', '2021-08-03 05:56:57', '', 'Past (footer)', '', 'publish', 'closed', 'closed', '', 'past-footer', '', '', '2021-08-03 05:56:57', '2021-08-03 05:56:57', '', 0, 'http://wp.loc/?post_type=header-footer&#038;p=59', 0, 'header-footer', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_smush_dir_images`
--

CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `file_time` int(10) UNSIGNED DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root_admin'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b12239f204345e4cfc7e2f9288973c9ca97e129a7b75371c91fcf23568dc972c\";a:4:{s:10:\"expiration\";i:1662464436;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:103.0) Gecko/20100101 Firefox/103.0\";s:5:\"login\";i:1661254836;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '61'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'mfold=o&ampampeditor=tinymce&ampamphidetb=0&ampamplibraryContent=browse&ampeditor=html'),
(23, 1, 'wp_user-settings-time', '1661776038'),
(24, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:60:\"postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_post', '2'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(28, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:59:\"commentstatusdiv,slugdiv,authordiv,revisionsdiv,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_page', '2'),
(30, 1, 'closedpostboxes_page', 'a:0:{}'),
(31, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(32, 1, 'w3tc_features_seen', 'a:2:{i:1;s:14:\"lazyload_gmaps\";i:2;s:11:\"setup_guide\";}'),
(33, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(34, 1, 'screen_layout_acf-field-group', '2'),
(35, 1, 'closedpostboxes_general-info', 'a:0:{}'),
(36, 1, 'metaboxhidden_general-info', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(37, 1, 'closedpostboxes_header-footer', 'a:0:{}'),
(38, 1, 'metaboxhidden_header-footer', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(39, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:332:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://oqila-wp.loc/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:10:\"root_super\";s:9:\"user_pass\";s:34:\"$P$BzCZwp87DQP4Hgc/7Am.97vqIgmRzp1\";s:13:\"user_nicename\";s:10:\"root_super\";s:10:\"user_email\";s:13:\"info@mail.com\";s:8:\"user_url\";s:13:\"http://wp.loc\";s:15:\"user_registered\";s:19:\"2021-01-14 20:33:48\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"root_super\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:66:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";s:10:\"89dbc18307\";s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root_super', '$P$BzCZwp87DQP4Hgc/7Am.97vqIgmRzp1', 'root_super', 'info@mail.com', 'http://wp.loc', '2021-01-14 20:33:48', '', 0, 'root_super');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_2fa_secrets`
--

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wfls_settings`
--

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wfls_settings`
--

INSERT INTO `wp_wfls_settings` (`name`, `value`, `autoload`) VALUES
('allow-xml-rpc', '', 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('enable-auth-captcha', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31363237353436333436, 'yes'),
('ntp-offset', 0x302e3832343734373536323430383435, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('shared-hash-secret', 0x37643031646362663937616435626535303566643439613830363864336663653930633832636238396261633230393261326161303838333634623162623363, 'yes'),
('shared-symmetric-secret', 0x33323631343532623932613162326435643034653738323436303863313435633931363065383765363737323765323739376231633634383234653238666461, 'yes'),
('use-ntp', '', 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://oqila-wp.loc/author/root_super', '37:fa668a881836b262f3e82d0f80c1631e', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/4798e8f8d047069a3a78c5f925704660?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/4798e8f8d047069a3a78c5f925704660?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 05:56:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-08-03 05:58:35', '2021-01-14 20:33:50'),
(2, 'http://oqila-wp.loc/?contact-info=contact-info', '46:6138284051dbd9fbd55a7e80e8e9db7a', 49, 'post', 'contact-info', 1, 0, NULL, NULL, 'Contact info', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:27:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-08-03 05:39:51', '2021-08-03 05:39:51'),
(3, 'http://oqila-wp.loc/?header-footer=yuqori-header', '48:d04d541d25d35b988710f75eef72567e', 57, 'post', 'header-footer', 1, 0, NULL, NULL, 'Yuqori (header)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:27:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-08-03 05:56:41', '2021-08-03 05:56:41'),
(4, 'http://oqila-wp.loc/?header-footer=past-footer', '46:2280b2f1241c8236b4471f2c273f7e2c', 59, 'post', 'header-footer', 1, 0, NULL, NULL, 'Past (footer)', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:27:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-08-03 05:56:57', '2021-08-03 05:56:57'),
(5, 'http://oqila-wp.loc/', '20:a21e6e56954f82db5e9b463e97e623c8', 2, 'post', 'page', 1, 0, NULL, NULL, 'Home page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 05:56:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-01-26 21:03:26', '2021-01-14 20:33:50'),
(6, 'http://oqila-wp.loc/contacts', '28:0c26bbdf98b18a8f72649a307878bd24', 33, 'post', 'page', 1, 0, NULL, NULL, 'Contacts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:27:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-01-27 04:33:49', '2021-01-27 04:33:49'),
(7, 'http://oqila-wp.loc/category/uncategorized', '42:0bf207408a940fa6528302e4619f5e04', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:27:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL),
(8, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:22:14', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(9, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:26:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(10, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:25:36', '2022-08-29 07:26:59', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(11, 'http://oqila-wp.loc/', '20:a21e6e56954f82db5e9b463e97e623c8', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Busienss website', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-08-25 10:28:11', '2022-08-29 05:56:13', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_smush_dir_images`
--
ALTER TABLE `wp_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`),
  ADD KEY `image_size` (`image_size`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_wfls_settings`
--
ALTER TABLE `wp_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1984;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `wp_smush_dir_images`
--
ALTER TABLE `wp_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
