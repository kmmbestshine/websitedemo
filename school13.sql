-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 06:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school13`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_contents`
--

CREATE TABLE `about_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `why_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `key_point_2_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_2_content` longtext COLLATE utf8_unicode_ci,
  `key_point_3_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_3_content` longtext COLLATE utf8_unicode_ci,
  `key_point_4_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_4_content` longtext COLLATE utf8_unicode_ci,
  `key_point_5_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_5_content` longtext COLLATE utf8_unicode_ci,
  `about_us` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `who_we_are` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `intro_video_embed_code` text COLLATE utf8_unicode_ci NOT NULL,
  `video_site_link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_contents`
--

INSERT INTO `about_contents` (`id`, `why_content`, `key_point_1_title`, `key_point_1_content`, `key_point_2_title`, `key_point_2_content`, `key_point_3_title`, `key_point_3_content`, `key_point_4_title`, `key_point_4_content`, `key_point_5_title`, `key_point_5_content`, `about_us`, `who_we_are`, `intro_video_embed_code`, `video_site_link`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'Key point 1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', 'Key point 2', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', NULL, NULL, NULL, NULL, NULL, NULL, 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '<iframe src=\"https://www.youtube.com/embed/6sa1G_9jCb0\" frameborder=\"0\"  allowfullscreen></iframe>', 'https://www.youtube.com', '2020-08-23 19:53:11', '2020-08-23 19:53:11', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `about_sliders`
--

CREATE TABLE `about_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_sliders`
--

INSERT INTO `about_sliders` (`id`, `image`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '1.jpg', 1, '2020-08-23 19:53:11', '2020-08-23 19:53:11', 0, 0, NULL),
(2, '2.jpg', 2, '2020-08-23 19:53:11', '2020-08-23 19:53:11', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_open_for_admission` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `title`, `start_date`, `end_date`, `is_open_for_admission`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2020', '2020-01-01', '2020-12-31', 0, '1', '2020-08-23 19:53:51', '2020-08-23 19:53:51', NULL, 0, 0, NULL),
(2, '2020-21', '2020-01-01', '2020-12-31', 0, '1', '2020-08-24 02:07:39', '2020-08-24 02:07:39', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `type`, `amount`, `description`, `school_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ffff', 'expense', 101, 'ggggggggggggggggggggggggggggggggggg', NULL, 1, NULL, NULL),
(2, 'ffff', 'expense', 1000, 'sssssssssfffhhhh', NULL, 1, '2020-08-26 06:55:09', '2020-08-26 06:55:09'),
(3, 'ffff', 'expense', 2000, 'JJJJJJJJJJJJ', NULL, 1, '2020-08-26 07:51:30', '2020-08-26 07:51:30'),
(4, 'ffffssss', 'income', 12222, 'dddddddddddd', NULL, 1, '2020-08-26 08:49:58', '2020-08-26 08:49:58'),
(5, 'ffffssss', 'income', 1000, 'dddd', NULL, 1, '2020-08-26 08:51:02', '2020-08-26 08:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `account_sectors`
--

CREATE TABLE `account_sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_sectors`
--

INSERT INTO `account_sectors` (`id`, `name`, `type`, `school_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ffff', 'expense', NULL, 1, NULL, NULL),
(2, 'ddd', 'income', NULL, 1, NULL, NULL),
(3, 'ffffssss', 'income', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_metas`
--

CREATE TABLE `app_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_metas`
--

INSERT INTO `app_metas` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'institute_settings', '{\"logo\":\"logo-md.png\",\"logo_small\":\"logo-xs.png\",\"favicon\":\"favicon.png\",\"name\":\"KMM ACADEMY\",\"short_name\":\"KMM\",\"establish\":\"2019\",\"website_link\":\"http:\\/\\/bestshineeduapp.com\",\"email\":\"info@bestshineeduapp.com\",\"phone_no\":\"9003152804\",\"address\":\"kambur\"}', '2020-08-23 19:53:51', '2020-08-24 02:06:50', NULL, 1, 1, NULL),
(2, 'academic_year', '1', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(3, 'frontend_website', '1', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(4, 'language', 'en', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(5, 'disable_language', '1', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(6, 'institute_type', '3', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(7, 'shift_data', '{\"Morning\":{\"start\":\"9:00 am\",\"end\":\"11:00 am\"},\"Day\":{\"start\":\"11:00 am\",\"end\":\"1:00 pm\"},\"Evening\":{\"start\":\"1:00 pm\",\"end\":\"4:00 pm\"}}', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(8, 'weekends', '[\"0\",\"6\"]', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(9, 'week_start_day', '1', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(10, 'week_end_day', '5', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(11, 'total_casual_leave', '14', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(12, 'total_sick_leave', '10', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(13, 'total_maternity_leave', '90', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(14, 'total_special_leave', '5', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(15, 'board_name', 'STATE BOARD', '2020-08-23 19:53:51', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(16, 'result_default_grade_id', '1', '2020-08-23 19:54:11', '2020-08-24 02:06:51', NULL, 1, 1, NULL),
(17, 'report_show_logo', '1', '2020-08-24 02:08:19', '2020-08-24 02:08:19', NULL, 1, 1, NULL),
(18, 'report_background_color', '#000000', '2020-08-24 02:08:19', '2020-08-24 02:08:19', NULL, 1, 1, NULL),
(19, 'report_text_color', '#000000', '2020-08-24 02:08:19', '2020-08-24 02:08:19', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_profiles`
--

CREATE TABLE `class_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_sm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_lg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `outline` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_profiles`
--

INSERT INTO `class_profiles` (`id`, `name`, `slug`, `image_sm`, `image_lg`, `teacher`, `room_no`, `capacity`, `shift`, `short_description`, `description`, `outline`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Class Three', 'class-three', '1-sm.jpg', '1-lg.jpg', 'MC Smith', 'R301-R302', 60, 'Morning', 'Lorem ipsum text', NULL, NULL, '2020-08-23 19:53:12', '2020-08-23 19:53:12', NULL, 0, 0, NULL),
(2, 'Class Four', 'class-four', '2-sm.jpg', '2-lg.jpg', 'Jhon Doe', 'R401-R402', 70, 'Morning', 'Lorem ipsum text', NULL, NULL, '2020-08-23 19:53:12', '2020-08-23 19:53:12', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `id_card` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` tinyint(3) UNSIGNED DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date NOT NULL,
  `leave_date` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `duty_start` time DEFAULT NULL,
  `duty_end` time DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `role_id`, `id_card`, `name`, `designation`, `qualification`, `dob`, `gender`, `religion`, `email`, `phone_no`, `address`, `joining_date`, `leave_date`, `photo`, `signature`, `shift`, `duty_start`, `duty_end`, `status`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 6, 2, '0000000054', 'Aron Kohler', 7, 'quae', '27/02/2019', '2', '2', 'wuckert.elliott@example.com', '+5947138650798', '276 Rebeka Course\nNorth Jocelyn, AR 78324-7579', '2020-03-24', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:52', NULL, 1, 0, NULL),
(2, 7, 2, '0000000064', 'Joan Goldner', 10, 'quas', '17/06/2008', '2', '5', 'grimes.chanelle@example.net', '+8886322259141', '5556 Reichert Gateway\nAuerland, NE 05035', '2016-11-06', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(3, 8, 2, '0000000016', 'Ismael Rutherford', 3, 'est', '26/09/2010', '2', '5', 'suzanne.jones@example.com', '+6179101861865', '505 Von Port\nWest Jeanchester, KS 13059', '2015-11-01', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(4, 9, 2, '0000000011', 'Cecelia Schmitt', 6, 'qui', '27/06/2015', '2', '2', 'kailee.gleason@example.org', '+2167087064175', '535 Larson Pines\nProsaccohaven, NH 96238', '2016-01-09', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(5, 10, 2, '0000000018', 'Audra Monahan', 11, 'doloremque', '02/11/2015', '2', '1', 'forest.steuber@example.net', '+9654498448453', '49811 Boyle Isle Suite 775\nSporerchester, IL 86292', '2019-03-12', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(6, 11, 2, '0000000017', 'Mrs. Lauretta Rodriguez', 6, 'molestiae', '14/08/2020', '1', '1', 'uswaniawski@example.org', '+1301620827831', '9991 Lyda Canyon\nNew Othabury, PA 62306-2699', '2015-09-06', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(7, 12, 5, '0000000032', 'Alexzander Hessel', 9, 'in', '16/11/2014', '1', '3', 'ifeeney@example.net', '+7096246567796', '384 Nathaniel Flats Apt. 711\nSouth Alexandrebury, FL 55483', '2018-11-24', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:55', '2020-08-23 19:53:55', NULL, 1, 0, NULL),
(8, 13, 6, '0000000090', 'Miss Cleora Hammes Jr.', 6, 'impedit', '05/04/2002', '1', '1', 'pweimann@example.com', '+6027877401141', '9065 Smith Square\nSouth Aric, NH 46189', '2020-03-19', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:55', '2020-08-23 19:53:56', NULL, 1, 0, NULL),
(9, 14, 7, '0000000076', 'Nicole Bartell', 4, 'deserunt', '24/10/2010', '2', '5', 'bgreenfelder@example.org', '+5253975296685', '39712 Howard Lights\nNorth Robbieshire, NV 18657-8175', '2015-12-05', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2020-08-23 19:53:55', '2020-08-24 02:16:33', NULL, 1, 32, NULL),
(10, 30, 2, '0000000084', 'kmmteacher', 6, 'MA', '10/03/1977', '1', '2', 'pksgroups001@gmail.com', '9003152804', 'DDDDDDDDDDDDDDD', '2020-08-24', NULL, 'ySadB0nbjMZtzcjEsAsqAQoxPFHc1Qc1S3vM1yw0.jpeg', '', '1', NULL, NULL, '1', 2, '2020-08-24 01:07:24', '2020-08-24 01:07:24', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `working_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `attendance_date`, `in_time`, `out_time`, `working_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2020-08-09', '2020-08-09 00:00:00', '2020-08-09 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(2, 2, '2020-08-09', '2020-08-09 00:00:00', '2020-08-09 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(3, 3, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(4, 4, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(5, 5, '2020-08-09', '2020-08-09 00:00:00', '2020-08-09 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(6, 6, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(7, 7, '2020-08-09', '2020-08-09 00:00:00', '2020-08-09 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(8, 8, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(9, 9, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(10, 1, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(11, 2, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(12, 3, '2020-08-10', '2020-08-10 08:00:00', '2020-08-10 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(13, 4, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(14, 5, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(15, 6, '2020-08-10', '2020-08-10 08:00:00', '2020-08-10 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(16, 7, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(17, 8, '2020-08-10', '2020-08-10 08:00:00', '2020-08-10 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(18, 9, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(19, 1, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(20, 2, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(21, 3, '2020-08-11', '2020-08-11 08:00:00', '2020-08-11 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(22, 4, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(23, 5, '2020-08-11', '2020-08-11 08:00:00', '2020-08-11 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(24, 6, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(25, 7, '2020-08-11', '2020-08-11 08:00:00', '2020-08-11 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(26, 8, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(27, 9, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(28, 1, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(29, 2, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(30, 3, '2020-08-12', '2020-08-12 00:00:00', '2020-08-12 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(31, 4, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(32, 5, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(33, 6, '2020-08-12', '2020-08-12 00:00:00', '2020-08-12 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(34, 7, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(35, 8, '2020-08-12', '2020-08-12 00:00:00', '2020-08-12 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(36, 9, '2020-08-12', '2020-08-12 00:00:00', '2020-08-12 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(37, 1, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(38, 2, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(39, 3, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(40, 4, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(41, 5, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(42, 6, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(43, 7, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(44, 8, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(45, 9, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(46, 1, '2020-08-15', '2020-08-15 08:00:00', '2020-08-15 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(47, 2, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(48, 3, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(49, 4, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(50, 5, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(51, 6, '2020-08-15', '2020-08-15 08:00:00', '2020-08-15 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(52, 7, '2020-08-15', '2020-08-15 08:00:00', '2020-08-15 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(53, 8, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(54, 9, '2020-08-15', '2020-08-15 08:00:00', '2020-08-15 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(55, 1, '2020-08-16', '2020-08-16 08:00:00', '2020-08-16 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(56, 2, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(57, 3, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(58, 4, '2020-08-16', '2020-08-16 08:00:00', '2020-08-16 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(59, 5, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(60, 6, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(61, 7, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(62, 8, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(63, 9, '2020-08-16', '2020-08-16 08:00:00', '2020-08-16 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(64, 1, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(65, 2, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(66, 3, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(67, 4, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(68, 5, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(69, 6, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(70, 7, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(71, 8, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(72, 9, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(73, 1, '2020-08-18', '2020-08-18 00:00:00', '2020-08-18 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(74, 2, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(75, 3, '2020-08-18', '2020-08-18 00:00:00', '2020-08-18 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(76, 4, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(77, 5, '2020-08-18', '2020-08-18 00:00:00', '2020-08-18 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(78, 6, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(79, 7, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(80, 8, '2020-08-18', '2020-08-18 00:00:00', '2020-08-18 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(81, 9, '2020-08-18', '2020-08-18 00:00:00', '2020-08-18 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(82, 1, '2020-08-19', '2020-08-19 00:00:00', '2020-08-19 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(83, 2, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(84, 3, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(85, 4, '2020-08-19', '2020-08-19 00:00:00', '2020-08-19 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(86, 5, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(87, 6, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(88, 7, '2020-08-19', '2020-08-19 00:00:00', '2020-08-19 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(89, 8, '2020-08-19', '2020-08-19 00:00:00', '2020-08-19 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(90, 9, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(91, 1, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(92, 2, '2020-08-20', '2020-08-20 08:00:00', '2020-08-20 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(93, 3, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(94, 4, '2020-08-20', '2020-08-20 08:00:00', '2020-08-20 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(95, 5, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(96, 6, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(97, 7, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(98, 8, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(99, 9, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(100, 1, '2020-08-22', '2020-08-22 00:00:00', '2020-08-22 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(101, 2, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(102, 3, '2020-08-22', '2020-08-22 00:00:00', '2020-08-22 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(103, 4, '2020-08-22', '2020-08-22 00:00:00', '2020-08-22 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(104, 5, '2020-08-22', '2020-08-22 00:00:00', '2020-08-22 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(105, 6, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(106, 7, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(107, 8, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(108, 9, '2020-08-22', '2020-08-22 00:00:00', '2020-08-22 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(109, 1, '2020-08-23', '2020-08-23 08:00:00', '2020-08-23 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(110, 2, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(111, 3, '2020-08-23', '2020-08-23 08:00:00', '2020-08-23 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(112, 4, '2020-08-23', '2020-08-23 08:00:00', '2020-08-23 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(113, 5, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(114, 6, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(115, 7, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(116, 8, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(117, 9, '2020-08-23', '2020-08-23 08:00:00', '2020-08-23 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(118, 1, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(119, 2, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(120, 3, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(121, 4, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(122, 5, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(123, 6, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', '2020-08-23 20:24:42', NULL, 1, 1, NULL),
(124, 7, '2020-08-24', '2020-08-24 08:00:00', '2020-08-24 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(125, 8, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(126, 9, '2020-08-24', '2020-08-24 08:00:00', '2020-08-24 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_time` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slider_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_time`, `title`, `slug`, `cover_photo`, `cover_video`, `tags`, `description`, `slider_1`, `slider_2`, `slider_3`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2020-12-20 15:00:00', 'Annual function 2020', 'annual-function-2020', '1.jpg', '', 'annual,function', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '11.jpg', '22.jpg', '33.jpg', '2020-08-23 19:53:13', '2020-08-23 19:53:13', NULL, 0, 0, NULL),
(2, '2020-09-08 01:23:13', 'Farewell Party', 'farewell-party', NULL, '<iframe src=\"https://www.youtube.com/embed/pXfqbimmBhE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'farewell,party', '<p><b>Details:</b><br><ul><li><p>What restrooms are available prior to gates opening?</p><div>Angel Stadium restrooms are available prior to the gates opening; they are located in the parking lot near the Orangewood entrance.</div></li><li><div>Can I bring food or drinks into the stadium?</div><div>You can bring one unopened bottle of water per person into the stadium. No other food or drinks are permitted.</div></li><li><div>Will food be available for sale inside the stadium?</div><div>Yes. Concession stands will be open until Greg Laurie speaks. Alcohol will not be available.</div></li><li><div>Can I reserve or save seats?</div><div>No. Seating is first-come, first-served.</div></li></ul><br></p>', '11.jpg', '22.jpg', '33.jpg', '2020-08-23 19:53:13', '2020-08-23 19:53:13', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elective_subject_point_addition` decimal(5,2) NOT NULL DEFAULT '0.00',
  `marks_distribution_types` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `open_for_marks_entry` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `class_id`, `name`, `elective_subject_point_addition`, `marks_distribution_types`, `status`, `open_for_marks_entry`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 7, 'Aperiam aut eligendi.', '1.00', '[4,5,6]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(2, 7, 'Velit excepturi est sed.', '1.00', '[1,6,7]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(3, 5, 'Earum nihil corporis quo.', '2.00', '[1,3,5]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(4, 3, 'At vero delectus qui quia.', '1.00', '[1,6,7]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(5, 6, 'Beatae excepturi voluptatem.', '0.00', '[3,4,5]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(6, 7, 'Quis facilis laborum.', '1.00', '[3,4,6]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(7, 8, 'Eaque possimus aspernatur sed.', '2.00', '[3,6,7]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(8, 8, 'Soluta id nostrum.', '1.00', '[1,5,6]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(9, 2, 'Qui repellendus.', '0.00', '[2,4,5]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(10, 2, 'In sint provident iste.', '0.00', '[3,6,7]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(11, 1, '1st Term Exam', '0.00', '[1,2,7]', '1', 1, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(12, 1, 'Mid Term Exam', '2.00', '[1,2,5]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(13, 1, 'Final Exam', '0.00', '[1,2,7]', '1', 0, '2020-08-23 19:54:10', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(14, 11, 'kmmexam', '1.00', '[\"1\",\"2\",\"3\",\"4\"]', '1', 1, '2020-08-24 01:44:24', '2020-08-24 01:44:24', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_rules`
--

CREATE TABLE `exam_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `combine_subject_id` int(10) UNSIGNED DEFAULT NULL,
  `marks_distribution` text COLLATE utf8_unicode_ci NOT NULL,
  `passing_rule` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `total_exam_marks` int(11) NOT NULL DEFAULT '0',
  `over_all_pass` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_rules`
--

INSERT INTO `exam_rules` (`id`, `class_id`, `subject_id`, `exam_id`, `grade_id`, `combine_subject_id`, `marks_distribution`, `passing_rule`, `total_exam_marks`, `over_all_pass`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 11, 11, 1, 12, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":0},{\"type\":2,\"total_marks\":30,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 100, 33, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(2, 1, 12, 11, 2, NULL, '[{\"type\":1,\"total_marks\":35,\"pass_marks\":0},{\"type\":2,\"total_marks\":15,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 50, 17, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(3, 1, 13, 11, 1, 14, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":0},{\"type\":2,\"total_marks\":30,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 100, 33, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(4, 1, 14, 11, 2, NULL, '[{\"type\":1,\"total_marks\":35,\"pass_marks\":0},{\"type\":2,\"total_marks\":15,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 50, 17, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(5, 1, 15, 11, 1, NULL, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":25},{\"type\":2,\"total_marks\":30,\"pass_marks\":10},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '2', 100, 0, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(6, 1, 16, 11, 1, NULL, '[{\"type\":1,\"total_marks\":50,\"pass_marks\":25},{\"type\":2,\"total_marks\":30,\"pass_marks\":15},{\"type\":7,\"total_marks\":20,\"pass_marks\":10}]', '3', 100, 50, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(7, 11, 23, 14, 3, NULL, '[{\"type\":\"1\",\"total_marks\":\"75\",\"pass_marks\":\"50\"},{\"type\":\"2\",\"total_marks\":\"10\",\"pass_marks\":\"5\"},{\"type\":\"3\",\"total_marks\":\"10\",\"pass_marks\":\"5\"},{\"type\":\"4\",\"total_marks\":\"5\",\"pass_marks\":\"2\"}]', '3', 100, 0, '2020-08-24 01:50:28', '2020-08-24 01:50:28', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `rules`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '100 Marks', '[{\"grade\":1,\"point\":5,\"marks_from\":80,\"marks_upto\":100},{\"grade\":2,\"point\":4,\"marks_from\":70,\"marks_upto\":79},{\"grade\":3,\"point\":3.5,\"marks_from\":60,\"marks_upto\":69},{\"grade\":4,\"point\":3,\"marks_from\":50,\"marks_upto\":59},{\"grade\":5,\"point\":2,\"marks_from\":40,\"marks_upto\":49},{\"grade\":6,\"point\":1,\"marks_from\":33,\"marks_upto\":39},{\"grade\":7,\"point\":0,\"marks_from\":0,\"marks_upto\":32}]', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(2, '50 Marks', '[{\"grade\":1,\"point\":5,\"marks_from\":40,\"marks_upto\":50},{\"grade\":2,\"point\":4,\"marks_from\":35,\"marks_upto\":39},{\"grade\":3,\"point\":3.5,\"marks_from\":30,\"marks_upto\":34},{\"grade\":4,\"point\":3,\"marks_from\":25,\"marks_upto\":29},{\"grade\":5,\"point\":2,\"marks_from\":20,\"marks_upto\":24},{\"grade\":6,\"point\":1,\"marks_from\":17,\"marks_upto\":19},{\"grade\":7,\"point\":0,\"marks_from\":0,\"marks_upto\":16}]', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(3, 'kmmexam', '[{\"grade\":\"1\",\"point\":\"0\",\"marks_from\":\"80\",\"marks_upto\":\"100\"},{\"grade\":\"2\",\"point\":\"0\",\"marks_from\":\"50\",\"marks_upto\":\"79\"},{\"grade\":\"3\",\"point\":\"0\",\"marks_from\":\"30\",\"marks_upto\":\"49\"},{\"grade\":\"4\",\"point\":\"0\",\"marks_from\":\"0\",\"marks_upto\":\"29\"},{\"grade\":\"5\",\"point\":\"0\",\"marks_from\":\"0\",\"marks_upto\":\"0\"},{\"grade\":\"6\",\"point\":\"0\",\"marks_from\":\"0\",\"marks_upto\":\"0\"},{\"grade\":\"7\",\"point\":\"0\",\"marks_from\":\"0\",\"marks_upto\":\"0\"}]', '2020-08-24 01:46:29', '2020-08-24 01:46:29', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i_classes`
--

CREATE TABLE `i_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `have_selective_subject` tinyint(1) NOT NULL DEFAULT '0',
  `max_selective_subject` tinyint(3) UNSIGNED DEFAULT NULL,
  `have_elective_subject` tinyint(1) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `is_open_for_admission` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i_classes`
--

INSERT INTO `i_classes` (`id`, `name`, `numeric_value`, `order`, `group`, `duration`, `have_selective_subject`, `max_selective_subject`, `have_elective_subject`, `note`, `is_open_for_admission`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'One', 1, 1, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(2, 'Two', 2, 2, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(3, 'Three', 3, 3, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(4, 'Four', 4, 4, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(5, 'Five', 5, 5, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(6, 'Six', 6, 6, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(7, 'Seven', 7, 7, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(8, 'Eight', 8, 8, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(9, 'Nine Science', 90, 9, 'Science', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(10, 'Nine Humanities', 91, 10, 'Humanities', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
(11, 'kmmclass', 1, 1, 'Science', 2, 1, 2, 1, 'ssssssssssssssssssssssssssss', 0, '1', '2020-08-24 00:57:28', '2020-08-24 01:41:35', NULL, 1, 1, NULL);

--
-- Triggers `i_classes`
--
DELIMITER $$
CREATE TRIGGER `i_class__ai` AFTER INSERT ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'insert', NULL, d.* 
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `i_class__au` AFTER UPDATE ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'update', NULL, d.*
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `i_class_history`
--

CREATE TABLE `i_class_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `have_selective_subject` tinyint(1) NOT NULL DEFAULT '0',
  `max_selective_subject` tinyint(3) UNSIGNED DEFAULT NULL,
  `have_elective_subject` tinyint(1) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `is_open_for_admission` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i_class_history`
--

INSERT INTO `i_class_history` (`action`, `revision`, `id`, `name`, `numeric_value`, `order`, `group`, `duration`, `have_selective_subject`, `max_selective_subject`, `have_elective_subject`, `note`, `is_open_for_admission`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'One', 1, 1, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 2, 'Two', 2, 2, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 3, 'Three', 3, 3, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 4, 'Four', 4, 4, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 5, 'Five', 5, 5, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 6, 'Six', 6, 6, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 7, 'Seven', 7, 7, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 8, 'Eight', 8, 8, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 9, 'Nine Science', 90, 9, 'Science', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 10, 'Nine Humanities', 91, 10, 'Humanities', 1, 0, NULL, 0, 'demo test', 0, '1', '2020-08-23 19:53:51', NULL, NULL, 1, NULL, NULL),
('insert', 1, 11, 'kmmstudent', 1, 1, 'Science', 2, 1, 2, 1, 'ssssssssssssssssssssssssssss', 0, '1', '2020-08-24 00:57:28', '2020-08-24 00:57:28', NULL, 1, 1, NULL),
('update', 2, 11, 'kmmstudent', 1, 1, 'Science', 2, 1, 2, 1, 'ssssssssssssssssssssssssssss', 0, '0', '2020-08-24 00:57:28', '2020-08-24 00:58:42', NULL, 1, 1, NULL),
('update', 3, 11, 'kmmstudent', 1, 1, 'Science', 2, 1, 2, 1, 'ssssssssssssssssssssssssssss', 0, '1', '2020-08-24 00:57:28', '2020-08-24 00:58:44', NULL, 1, 1, NULL),
('update', 4, 11, 'kmmclass', 1, 1, 'Science', 2, 1, 2, 1, 'ssssssssssssssssssssssssssss', 0, '1', '2020-08-24 00:57:28', '2020-08-24 01:14:10', NULL, 1, 1, NULL),
('update', 5, 11, 'kmmclass', 1, 1, 'Science', 2, 1, 2, 1, 'ssssssssssssssssssssssssssss', 0, '1', '2020-08-24 00:57:28', '2020-08-24 01:41:35', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leave_type` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `leave_date` date NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type`, `leave_date`, `document`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 4, '2', '2020-08-09', NULL, 'Quam quidem dolorum in ut magnam soluta.', '1', '2020-08-23 19:54:09', '2020-08-23 19:54:09', NULL, 1, 0, NULL),
(2, 3, '1', '2020-08-18', NULL, 'Aut sit vel eum.', '3', '2020-08-23 19:54:09', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(3, 4, '2', '2020-08-02', NULL, 'Porro qui impedit recusandae sunt eveniet qui.', '1', '2020-08-23 19:54:09', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(4, 5, '1', '2020-08-08', NULL, 'Quis laudantium delectus voluptatem fugit laborum ducimus illum excepturi.', '1', '2020-08-23 19:54:09', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(5, 9, '1', '2020-08-13', NULL, 'Ad beatae mollitia reiciendis qui modi.', '1', '2020-08-23 19:54:09', '2020-08-23 19:54:10', NULL, 1, 0, NULL),
(6, 10, '1', '2020-08-25', '', NULL, '1', '2020-08-24 02:19:01', '2020-08-24 02:19:01', NULL, 32, 32, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `marks` text COLLATE utf8_unicode_ci NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `academic_year_id`, `class_id`, `section_id`, `registration_id`, `exam_id`, `subject_id`, `marks`, `total_marks`, `grade`, `point`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 12, 1, 11, 11, '{\"1\":43,\"2\":20,\"7\":0}', 63, 'A-', '3.50', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 12, 2, 11, 11, '{\"1\":31,\"2\":3,\"7\":0}', 34, 'D', '1.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 12, 3, 11, 11, '{\"1\":3,\"2\":0,\"7\":0}', 3, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 12, 4, 11, 11, '{\"1\":7,\"2\":26,\"7\":0}', 33, 'D', '1.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 12, 5, 11, 11, '{\"1\":67,\"2\":19,\"7\":0}', 86, 'A+', '5.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 12, 1, 11, 12, '{\"1\":8,\"2\":14,\"7\":0}', 22, 'C', '2.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 12, 2, 11, 12, '{\"1\":24,\"2\":5,\"7\":0}', 29, 'B', '3.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 12, 3, 11, 12, '{\"1\":34,\"2\":3,\"7\":0}', 37, 'A', '4.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 12, 4, 11, 12, '{\"1\":9,\"2\":6,\"7\":0}', 15, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 12, 5, 11, 12, '{\"1\":15,\"2\":8,\"7\":0}', 23, 'C', '2.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 12, 1, 11, 13, '{\"1\":23,\"2\":4,\"7\":0}', 27, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 12, 2, 11, 13, '{\"1\":44,\"2\":8,\"7\":0}', 52, 'B', '3.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 12, 3, 11, 13, '{\"1\":44,\"2\":9,\"7\":0}', 53, 'B', '3.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 12, 4, 11, 13, '{\"1\":50,\"2\":27,\"7\":0}', 77, 'A', '4.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 12, 5, 11, 13, '{\"1\":36,\"2\":4,\"7\":0}', 40, 'C', '2.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 12, 1, 11, 14, '{\"1\":10,\"2\":6,\"7\":0}', 16, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 12, 2, 11, 14, '{\"1\":22,\"2\":10,\"7\":0}', 32, 'A-', '3.50', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 12, 3, 11, 14, '{\"1\":24,\"2\":1,\"7\":0}', 25, 'B', '3.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 12, 4, 11, 14, '{\"1\":19,\"2\":3,\"7\":0}', 22, 'C', '2.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 12, 5, 11, 14, '{\"1\":28,\"2\":14,\"7\":0}', 42, 'A+', '5.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 12, 1, 11, 15, '{\"1\":9,\"2\":25,\"7\":0}', 34, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 12, 2, 11, 15, '{\"1\":53,\"2\":29,\"7\":0}', 82, 'A+', '5.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 12, 3, 11, 15, '{\"1\":27,\"2\":27,\"7\":0}', 54, 'B', '3.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 12, 4, 11, 15, '{\"1\":13,\"2\":5,\"7\":0}', 18, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 12, 5, 11, 15, '{\"1\":16,\"2\":25,\"7\":0}', 41, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 12, 1, 11, 16, '{\"1\":0,\"2\":27,\"7\":7}', 34, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 12, 2, 11, 16, '{\"1\":40,\"2\":29,\"7\":2}', 71, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 12, 3, 11, 16, '{\"1\":12,\"2\":7,\"7\":0}', 19, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 12, 4, 11, 16, '{\"1\":9,\"2\":22,\"7\":20}', 51, 'F', '0.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 12, 5, 11, 16, '{\"1\":25,\"2\":30,\"7\":15}', 70, 'A', '4.00', '1', '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_04_000000_create_roles_table', 1),
(2, '2018_03_05_000000_create_users_table', 1),
(3, '2018_03_05_000001_create_user_roles_table', 1),
(4, '2018_03_05_000002_create_permissions_table', 1),
(5, '2018_03_05_000003_create_users_permissions_table', 1),
(6, '2018_03_05_000004_create_roles_permissions_table', 1),
(7, '2018_03_05_000005_create_password_resets_table', 1),
(8, '2018_06_09_065945_create_sliders_table', 1),
(9, '2018_07_06_103920_create_about_content_tables', 1),
(10, '2018_07_08_110923_create_site_metas_table', 1),
(11, '2018_07_11_035714_create_testimonials_table', 1),
(12, '2018_07_14_115139_create_class_profiles_table', 1),
(13, '2018_07_14_155755_create_teacher_profiles_table', 1),
(14, '2018_07_14_180514_create_events_table', 1),
(15, '2018_08_11_092832_create_app_metas_table', 1),
(16, '2018_08_11_121754_create_academic_years_table', 1),
(17, '2018_08_14_052209_create_employees_table', 1),
(18, '2018_08_14_055151_create_i_classes_table', 1),
(19, '2018_08_14_064130_create_sections_table', 1),
(20, '2018_08_14_064556_create_students_table', 1),
(21, '2018_08_15_105155_create_registrations_table', 1),
(22, '2018_11_20_013140_create_notifications_table', 1),
(23, '2019_01_12_151224_create_subjects_table', 1),
(24, '2019_01_12_151240_create_student_subjects_table', 1),
(25, '2019_01_12_151250_create_teacher_subjects_table', 1),
(26, '2019_01_13_155559_create_student_attendances_table', 1),
(27, '2019_02_12_105853_create_leaves_table', 1),
(28, '2019_02_15_111855_create_employee_attendances_table', 1),
(29, '2019_02_23_194914_create_exams_table', 1),
(30, '2019_02_23_195038_create_grades_table', 1),
(31, '2019_02_23_195053_create_exam_rules_table', 1),
(32, '2019_02_23_203247_create_marks_table', 1),
(33, '2019_02_23_203658_create_results_table', 1),
(34, '2020_08_25_220021_create_accounts_table', 2),
(35, '2020_08_25_221623_create_account_sectors_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1dfbb570-5358-42c0-8795-be257caacbbb', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"kmmstudent student added by Super Admin\"}', '2020-08-24 01:32:26', '2020-08-24 01:30:06', '2020-08-24 01:32:26'),
('22131632-6fd0-4863-abe2-890ea177af84', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"kmmstudent class added by Super Admin\"}', '2020-08-24 01:32:26', '2020-08-24 00:57:29', '2020-08-24 01:32:26'),
('24f1d26e-46b8-48a7-abf3-8182dde5391b', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"kmmstudent student added by Super Admin\"}', NULL, '2020-08-24 01:30:07', '2020-08-24 01:30:07'),
('3b15e51d-4d8a-440f-a1bb-88248eb696b8', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"Report settings updated by Super Admin\"}', NULL, '2020-08-24 02:08:19', '2020-08-24 02:08:19'),
('44a33dee-64b4-4635-9c2a-d2b6b19ee005', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Exam rule added by Super Admin\"}', NULL, '2020-08-24 01:50:28', '2020-08-24 01:50:28'),
('49159a0f-5351-4c8f-9039-2faffc153063', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"maths section added by Super Admin\"}', NULL, '2020-08-24 01:10:53', '2020-08-24 01:10:53'),
('4c2a8cc0-d615-4650-935b-ee97eb8cf2de', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"kmmexam graded added by Super Admin\"}', NULL, '2020-08-24 01:46:29', '2020-08-24 01:46:29'),
('4d86b6d7-4a52-4896-b94e-f7da825c1f17', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Report settings updated by Super Admin\"}', NULL, '2020-08-24 02:08:19', '2020-08-24 02:08:19'),
('751c6d36-0d0f-457c-a00f-75acbc943d1a', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"kmmstudent class added by Super Admin\"}', NULL, '2020-08-24 00:57:29', '2020-08-24 00:57:29'),
('75600690-9fe2-4785-a871-6ff7dc382e97', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"kmmexam exam added by Super Admin\"}', NULL, '2020-08-24 01:44:25', '2020-08-24 01:44:25'),
('806b813e-3816-4c66-86b2-b9b865f2584b', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2020-08-24 02:06:51', '2020-08-24 02:06:51'),
('9531faa2-866b-49f3-8a16-26173e525092', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2020-08-24 02:06:51', '2020-08-24 02:06:51'),
('9fd35123-6876-4a55-9356-e5d76ab6f4da', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"maths subject added by Super Admin\"}', '2020-08-24 01:32:26', '2020-08-24 01:13:02', '2020-08-24 01:32:26'),
('9feb30a5-505f-40ee-95db-57d3639ef86c', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"maths subject added by Super Admin\"}', NULL, '2020-08-24 01:13:02', '2020-08-24 01:13:02'),
('a0063192-94f0-4ee3-a027-ff8251e36ebe', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"Exam rule added by Super Admin\"}', NULL, '2020-08-24 01:50:28', '2020-08-24 01:50:28'),
('b5b05acc-4790-4bf8-a075-5b6e996103d5', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"kmmteacher teacher added by Super Admin\"}', NULL, '2020-08-24 01:07:25', '2020-08-24 01:07:25'),
('c1d4c7f7-5b37-48ac-9424-5f2372b31539', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"kmmexam exam added by Super Admin\"}', NULL, '2020-08-24 01:44:25', '2020-08-24 01:44:25'),
('edda1d54-3eb3-4d2b-88be-b1526397aecd', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"kmmteacher teacher added by Super Admin\"}', '2020-08-24 01:32:26', '2020-08-24 01:07:24', '2020-08-24 01:32:26'),
('f1d44b8b-9d4d-4240-9ebe-58bda80ef8c8', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"kmmexam graded added by Super Admin\"}', NULL, '2020-08-24 01:46:29', '2020-08-24 01:46:29'),
('f8e4168f-a77d-4df8-8431-235772d22a11', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"maths section added by Super Admin\"}', '2020-08-24 01:32:26', '2020-08-24 01:10:53', '2020-08-24 01:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `group`, `created_at`) VALUES
(1, 'change_password', 'Change Password', 'Common', '2020-08-23 19:13:00'),
(2, 'user.dashboard', 'Dashboard', 'Common', '2020-08-23 19:13:00'),
(3, 'lockscreen', 'Lock Screen', 'Common', '2020-08-23 19:13:00'),
(4, 'logout', 'Logout', 'Common', '2020-08-23 19:13:00'),
(5, 'profile', 'Profile', 'Common', '2020-08-23 19:13:00'),
(6, 'user.notification_unread', 'Notification View', 'Common', '2020-08-23 19:13:00'),
(7, 'user.notification_read', 'Notification View', 'Common', '2020-08-23 19:13:00'),
(8, 'user.notification_all', 'Notification View', 'Common', '2020-08-23 19:13:00'),
(9, 'user.role_index', 'User Role View', 'Administration Exclusive', '2020-08-23 19:13:00'),
(10, 'user.role_destroy', 'User Role Delete', 'Administration Exclusive', '2020-08-23 19:13:00'),
(11, 'user.role_create', 'User Role Create', 'Administration Exclusive', '2020-08-23 19:13:00'),
(12, 'user.role_store', 'User Role Create', 'Administration Exclusive', '2020-08-23 19:13:00'),
(13, 'user.role_update', 'User Role Edit', 'Administration Exclusive', '2020-08-23 19:13:00'),
(14, 'administrator.user_index', 'System Admin View', 'Administration Exclusive', '2020-08-23 19:13:00'),
(15, 'administrator.user_create', 'System Admin Create', 'Administration Exclusive', '2020-08-23 19:13:00'),
(16, 'administrator.user_status', 'System Admin Edit', 'Administration Exclusive', '2020-08-23 19:13:00'),
(17, 'administrator.user_store', 'System Admin Create', 'Administration Exclusive', '2020-08-23 19:13:00'),
(18, 'administrator.user_update', 'System Admin Edit', 'Administration Exclusive', '2020-08-23 19:13:00'),
(19, 'administrator.user_destroy', 'System Admin Delete', 'Administration Exclusive', '2020-08-23 19:13:00'),
(20, 'administrator.user_edit', 'System Admin Edit', 'Administration Exclusive', '2020-08-23 19:13:00'),
(21, 'administrator.user_password_reset', 'User Password Edit', 'Administration Exclusive', '2020-08-23 19:13:00'),
(22, 'user.store', 'User Create', 'Administration', '2020-08-23 19:13:00'),
(23, 'user.index', 'User View', 'Administration', '2020-08-23 19:13:00'),
(24, 'user.create', 'User Create', 'Administration', '2020-08-23 19:13:00'),
(25, 'user.status', 'User Edit', 'Administration', '2020-08-23 19:13:00'),
(26, 'user.show', 'User View', 'Administration', '2020-08-23 19:13:00'),
(27, 'user.update', 'User Edit', 'Administration', '2020-08-23 19:13:00'),
(28, 'user.destroy', 'User Delete', 'Administration', '2020-08-23 19:13:00'),
(29, 'user.edit', 'User Edit', 'Administration', '2020-08-23 19:13:00'),
(30, 'user.permission', 'User Edit', 'Administration', '2020-08-23 19:13:00'),
(31, 'administrator.academic_year_destroy', 'Academic Year Delete', 'Administration', '2020-08-23 19:13:00'),
(32, 'administrator.academic_year', 'Academic Year View', 'Administration', '2020-08-23 19:13:00'),
(33, 'administrator.academic_year_store', 'Academic Year Create', 'Administration', '2020-08-23 19:13:00'),
(34, 'administrator.academic_year_create', 'Academic Year Create', 'Administration', '2020-08-23 19:13:00'),
(35, 'administrator.academic_year_edit', 'Academic Year Edit', 'Administration', '2020-08-23 19:13:00'),
(36, 'administrator.academic_year_status', 'Academic Year Edit', 'Administration', '2020-08-23 19:13:00'),
(37, 'administrator.academic_year_update', 'Academic Year Edit', 'Administration', '2020-08-23 19:13:00'),
(38, 'settings.institute', 'Institute Settings Edit', 'Administration', '2020-08-23 19:13:00'),
(39, 'settings.report', 'Report Settings Edit', 'Administration', '2020-08-23 19:13:00'),
(40, 'academic.class_destroy', 'Class Delete', 'Academic', '2020-08-23 19:13:00'),
(41, 'academic.class', 'Class View', 'Academic', '2020-08-23 19:13:00'),
(42, 'academic.class_store', 'Class Create', 'Academic', '2020-08-23 19:13:00'),
(43, 'academic.class_create', 'Class Create', 'Academic', '2020-08-23 19:13:00'),
(44, 'academic.class_edit', 'Class Edit', 'Academic', '2020-08-23 19:13:00'),
(45, 'academic.class_status', 'Class Edit', 'Academic', '2020-08-23 19:13:00'),
(46, 'academic.class_update', 'Class Edit', 'Academic', '2020-08-23 19:13:00'),
(47, 'academic.section_destroy', 'Section Delete', 'Academic', '2020-08-23 19:13:00'),
(48, 'academic.section', 'Section View', 'Academic', '2020-08-23 19:13:00'),
(49, 'academic.section_store', 'Section Create', 'Academic', '2020-08-23 19:13:00'),
(50, 'academic.section_create', 'Section Create', 'Academic', '2020-08-23 19:13:00'),
(51, 'academic.section_edit', 'Section Edit', 'Academic', '2020-08-23 19:13:00'),
(52, 'academic.section_status', 'Section Edit', 'Academic', '2020-08-23 19:13:00'),
(53, 'academic.section_update', 'Section Edit', 'Academic', '2020-08-23 19:13:00'),
(54, 'academic.subject_destroy', 'Subject Delete', 'Academic', '2020-08-23 19:13:00'),
(55, 'academic.subject', 'Subject View', 'Academic', '2020-08-23 19:13:00'),
(56, 'academic.subject_store', 'Subject Create', 'Academic', '2020-08-23 19:13:00'),
(57, 'academic.subject_create', 'Subject Create', 'Academic', '2020-08-23 19:13:00'),
(58, 'academic.subject_edit', 'Subject Edit', 'Academic', '2020-08-23 19:13:00'),
(59, 'academic.subject_status', 'Subject Edit', 'Academic', '2020-08-23 19:13:00'),
(60, 'academic.subject_update', 'Subject Edit', 'Academic', '2020-08-23 19:13:00'),
(61, 'student.store', 'Student Create', 'Academic', '2020-08-23 19:13:00'),
(62, 'student.index', 'Student View', 'Academic', '2020-08-23 19:13:00'),
(63, 'student.list_by_filter', 'Student View', 'Academic', '2020-08-23 19:13:00'),
(64, 'student.create', 'Student Create', 'Academic', '2020-08-23 19:13:00'),
(65, 'student.status', 'Student Edit', 'Academic', '2020-08-23 19:13:00'),
(66, 'student.destroy', 'Student Delete', 'Academic', '2020-08-23 19:13:00'),
(67, 'student.update', 'Student Edit', 'Academic', '2020-08-23 19:13:00'),
(68, 'student.show', 'Student View', 'Academic', '2020-08-23 19:13:00'),
(69, 'student.edit', 'Student Edit', 'Academic', '2020-08-23 19:13:00'),
(70, 'teacher.index', 'Teacher View', 'Academic', '2020-08-23 19:13:00'),
(71, 'teacher.store', 'Teacher Create', 'Academic', '2020-08-23 19:13:00'),
(72, 'teacher.create', 'Teacher Create', 'Academic', '2020-08-23 19:13:00'),
(73, 'teacher.status', 'Teacher Edit', 'Academic', '2020-08-23 19:13:00'),
(74, 'teacher.destroy', 'Teacher Delete', 'Academic', '2020-08-23 19:13:00'),
(75, 'teacher.update', 'Teacher Edit', 'Academic', '2020-08-23 19:13:00'),
(76, 'teacher.show', 'Teacher View', 'Academic', '2020-08-23 19:13:00'),
(77, 'teacher.edit', 'Teacher Edit', 'Academic', '2020-08-23 19:13:00'),
(78, 'student_attendance.index', 'Student Attendance View', 'Academic', '2020-08-23 19:13:00'),
(79, 'student_attendance.store', 'Student Attendance Create', 'Academic', '2020-08-23 19:13:00'),
(80, 'student_attendance.create', 'Student Attendance Create', 'Academic', '2020-08-23 19:13:00'),
(81, 'student_attendance.status', 'Student Attendance Edit', 'Academic', '2020-08-23 19:13:00'),
(82, 'class_profile.index', 'Class Profile View', 'Website', '2020-08-23 19:13:00'),
(83, 'class_profile.store', 'Class Profile Create', 'Website', '2020-08-23 19:13:00'),
(84, 'class_profile.create', 'Class Profile Create', 'Website', '2020-08-23 19:13:00'),
(85, 'class_profile.show', 'Class Profile View', 'Website', '2020-08-23 19:13:00'),
(86, 'class_profile.update', 'Class Profile Edit', 'Website', '2020-08-23 19:13:00'),
(87, 'class_profile.destroy', 'Class Profile Delete', 'Website', '2020-08-23 19:13:00'),
(88, 'class_profile.edit', 'Class Profile Edit', 'Website', '2020-08-23 19:13:00'),
(89, 'event.index', 'Event View', 'Website', '2020-08-23 19:13:00'),
(90, 'event.store', 'Event Create', 'Website', '2020-08-23 19:13:00'),
(91, 'event.create', 'Event Create', 'Website', '2020-08-23 19:13:00'),
(92, 'event.destroy', 'Event Delete', 'Website', '2020-08-23 19:13:00'),
(93, 'event.show', 'Event View', 'Website', '2020-08-23 19:13:00'),
(94, 'event.update', 'Event Edit', 'Website', '2020-08-23 19:13:00'),
(95, 'event.edit', 'Event Edit', 'Website', '2020-08-23 19:13:00'),
(96, 'teacher_profile.index', 'Teacher Profile View', 'Website', '2020-08-23 19:13:00'),
(97, 'teacher_profile.store', 'Teacher Profile Create', 'Website', '2020-08-23 19:13:00'),
(98, 'teacher_profile.create', 'Teacher Profile Create', 'Website', '2020-08-23 19:13:00'),
(99, 'teacher_profile.update', 'Teacher Profile Edit', 'Website', '2020-08-23 19:13:00'),
(100, 'teacher_profile.show', 'Teacher Profile View', 'Website', '2020-08-23 19:13:00'),
(101, 'teacher_profile.destroy', 'Teacher Profile Delete', 'Website', '2020-08-23 19:13:00'),
(102, 'teacher_profile.edit', 'Teacher Profile Edit', 'Website', '2020-08-23 19:13:00'),
(103, 'site.about_content', 'Site About Content Edit', 'Website', '2020-08-23 19:13:00'),
(104, 'site.about_content', 'Site About Content Edit', 'Website', '2020-08-23 19:13:00'),
(105, 'site.about_content_image', 'Site About Content Edit', 'Website', '2020-08-23 19:13:00'),
(106, 'site.about_content_image', 'Site About Content Edit', 'Website', '2020-08-23 19:13:00'),
(107, 'site.about_content_image_delete', 'Site About Content Delete', 'Website', '2020-08-23 19:13:00'),
(108, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2020-08-23 19:13:00'),
(109, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2020-08-23 19:13:00'),
(110, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2020-08-23 19:13:00'),
(111, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2020-08-23 19:13:00'),
(112, 'site.dashboard', 'Site Dashboard View', 'Website', '2020-08-23 19:13:00'),
(113, 'site.faq_delete', 'Site FAQ Delete', 'Website', '2020-08-23 19:13:00'),
(114, 'site.faq', 'Site FAQ Create', 'Website', '2020-08-23 19:13:00'),
(115, 'site.faq', 'Site FAQ Create', 'Website', '2020-08-23 19:13:00'),
(116, 'site.gallery', 'Site Gallery View', 'Website', '2020-08-23 19:13:00'),
(117, 'site.gallery_image', 'Site Gallery Create', 'Website', '2020-08-23 19:13:00'),
(118, 'site.gallery_image', 'Site Gallery Create', 'Website', '2020-08-23 19:13:00'),
(119, 'site.gallery_image_delete', 'Site Gallery Delete', 'Website', '2020-08-23 19:13:00'),
(120, 'site.service', 'Site Service Edit', 'Website', '2020-08-23 19:13:00'),
(121, 'site.service', 'Site Service Edit', 'Website', '2020-08-23 19:13:00'),
(122, 'site.settings', 'Site Settings Edit', 'Website', '2020-08-23 19:13:00'),
(123, 'site.settings', 'Site Settings Edit', 'Website', '2020-08-23 19:13:00'),
(124, 'site.statistic', 'Site Statistic Edit', 'Website', '2020-08-23 19:13:00'),
(125, 'site.statistic', 'Site Statistic Edit', 'Website', '2020-08-23 19:13:00'),
(126, 'site.subscribe', 'Site Subscriber View', 'Website', '2020-08-23 19:13:00'),
(127, 'site.testimonial', 'Site Testimonial View', 'Website', '2020-08-23 19:13:00'),
(128, 'site.testimonial_delete', 'Site Testimonial Delete', 'Website', '2020-08-23 19:13:00'),
(129, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2020-08-23 19:13:00'),
(130, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2020-08-23 19:13:00'),
(131, 'site.timeline', 'Site Timeline Create', 'Website', '2020-08-23 19:13:00'),
(132, 'site.timeline', 'Site Timeline Create', 'Website', '2020-08-23 19:13:00'),
(133, 'site.timeline_delete', 'Site Timeline Delete', 'Website', '2020-08-23 19:13:00'),
(134, 'slider.index', 'Slider View', 'Website', '2020-08-23 19:13:00'),
(135, 'slider.store', 'Slider Create', 'Website', '2020-08-23 19:13:00'),
(136, 'slider.create', 'Slider Create', 'Website', '2020-08-23 19:13:00'),
(137, 'slider.destroy', 'Slider Delete', 'Website', '2020-08-23 19:13:00'),
(138, 'slider.update', 'Slider Edit', 'Website', '2020-08-23 19:13:00'),
(139, 'slider.show', 'Slider View', 'Website', '2020-08-23 19:13:00'),
(140, 'slider.edit', 'Slider Edit', 'Website', '2020-08-23 19:13:00'),
(141, 'hrm.employee.index', 'Employee View', 'HRM', '2020-08-23 19:13:00'),
(142, 'hrm.employee.store', 'Employee Create', 'HRM', '2020-08-23 19:13:00'),
(143, 'hrm.employee.create', 'Employee Create', 'HRM', '2020-08-23 19:13:00'),
(144, 'hrm.employee.status', 'Employee Edit', 'HRM', '2020-08-23 19:13:00'),
(145, 'hrm.employee.destroy', 'Employee Delete', 'HRM', '2020-08-23 19:13:00'),
(146, 'hrm.employee.update', 'Employee Edit', 'HRM', '2020-08-23 19:13:00'),
(147, 'hrm.employee.show', 'Employee View', 'HRM', '2020-08-23 19:13:00'),
(148, 'hrm.employee.edit', 'Employee Edit', 'HRM', '2020-08-23 19:13:00'),
(149, 'hrm.leave.index', 'Leave View', 'HRM', '2020-08-23 19:13:00'),
(150, 'hrm.leave.store', 'Leave Create', 'HRM', '2020-08-23 19:13:00'),
(151, 'hrm.leave.create', 'Leave Create', 'HRM', '2020-08-23 19:13:00'),
(152, 'hrm.leave.destroy', 'Leave Delete', 'HRM', '2020-08-23 19:13:00'),
(153, 'hrm.leave.update', 'Leave Edit', 'HRM', '2020-08-23 19:13:00'),
(154, 'hrm.leave.show', 'Leave View', 'HRM', '2020-08-23 19:13:00'),
(155, 'hrm.leave.edit', 'Leave Edit', 'HRM', '2020-08-23 19:13:00'),
(156, 'hrm.policy', 'Policy View', 'HRM', '2020-08-23 19:13:00'),
(157, 'hrm.policy', 'Policy Create', 'HRM', '2020-08-23 19:13:00'),
(158, 'employee_attendance.index', 'Employee Attendance View', 'HRM', '2020-08-23 19:13:00'),
(159, 'employee_attendance.store', 'Employee Attendance Create', 'HRM', '2020-08-23 19:13:00'),
(160, 'employee_attendance.create', 'Employee Attendance Create', 'HRM', '2020-08-23 19:13:00'),
(161, 'employee_attendance.status', 'Employee Attendance Edit', 'HRM', '2020-08-23 19:13:00'),
(162, 'exam.index', 'Exam View', 'Exam', '2020-08-23 19:13:00'),
(163, 'exam.create', 'Exam Create', 'Exam', '2020-08-23 19:13:00'),
(164, 'exam.store', 'Exam Create', 'Exam', '2020-08-23 19:13:00'),
(165, 'exam.edit', 'Exam Edit', 'Exam', '2020-08-23 19:13:00'),
(166, 'exam.update', 'Exam Edit', 'Exam', '2020-08-23 19:13:00'),
(167, 'exam.status', 'Exam Edit', 'Exam', '2020-08-23 19:13:00'),
(168, 'exam.destroy', 'Exam Delete', 'Exam', '2020-08-23 19:13:00'),
(169, 'exam.grade.index', 'Grade View', 'Exam', '2020-08-23 19:13:00'),
(170, 'exam.grade.create', 'Grade Create', 'Exam', '2020-08-23 19:13:00'),
(171, 'exam.grade.store', 'Grade Create', 'Exam', '2020-08-23 19:13:00'),
(172, 'exam.grade.edit', 'Grade Edit', 'Exam', '2020-08-23 19:13:00'),
(173, 'exam.grade.update', 'Grade Edit', 'Exam', '2020-08-23 19:13:00'),
(174, 'exam.grade.destroy', 'Grade Delete', 'Exam', '2020-08-23 19:13:00'),
(175, 'exam.rule.index', 'Exam Rule View', 'Exam', '2020-08-23 19:13:00'),
(176, 'exam.rule.create', 'Exam Rule Create', 'Exam', '2020-08-23 19:13:00'),
(177, 'exam.rule.store', 'Exam Rule Create', 'Exam', '2020-08-23 19:13:00'),
(178, 'exam.rule.edit', 'Exam Rule Edit', 'Exam', '2020-08-23 19:13:00'),
(179, 'exam.rule.update', 'Exam Rule Edit', 'Exam', '2020-08-23 19:13:00'),
(180, 'exam.rule.destroy', 'Exam Rule Delete', 'Exam', '2020-08-23 19:13:00'),
(181, 'marks.index', 'Marks View', 'Exam', '2020-08-23 19:13:00'),
(182, 'marks.create', 'Marks Create', 'Exam', '2020-08-23 19:13:00'),
(183, 'marks.store', 'Marks Create', 'Exam', '2020-08-23 19:13:00'),
(184, 'marks.edit', 'Marks Edit', 'Exam', '2020-08-23 19:13:00'),
(185, 'marks.update', 'Marks Edit', 'Exam', '2020-08-23 19:13:00'),
(186, 'result.index', 'Result View', 'Exam', '2020-08-23 19:13:00'),
(187, 'result.create', 'Result Create', 'Exam', '2020-08-23 19:13:00'),
(188, 'result.delete', 'Result Delete', 'Exam', '2020-08-23 19:13:00'),
(189, 'promotion.create', 'Promotion Create', 'Exam', '2020-08-23 19:13:00'),
(190, 'promotion.store', 'Promotion Create', 'Exam', '2020-08-23 19:13:00'),
(191, 'report.student_monthly_attendance', 'Student Monthly Attendance View', 'Report', '2020-08-23 19:13:00'),
(192, 'report.student_list', 'Student List View', 'Report', '2020-08-23 19:13:00'),
(193, 'report.employee_list', 'Employee List View', 'Report', '2020-08-23 19:13:00'),
(194, 'report.employee_monthly_attendance', 'Employee Monthly Attendance View', 'Report', '2020-08-23 19:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `regi_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `shift` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_regi_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_promoted` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `old_registration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `regi_no`, `student_id`, `class_id`, `section_id`, `academic_year_id`, `roll_no`, `shift`, `card_no`, `board_regi_no`, `house`, `status`, `is_promoted`, `old_registration_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '201001', 1, 1, 12, 1, 1, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(2, '201002', 2, 1, 12, 1, 2, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(3, '201003', 3, 1, 12, 1, 3, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(4, '201004', 4, 1, 12, 1, 4, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(5, '201005', 5, 1, 12, 1, 5, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(6, '202001', 6, 2, 2, 1, 6, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(7, '202002', 7, 2, 2, 1, 7, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(8, '202003', 8, 2, 2, 1, 8, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(9, '202004', 9, 2, 2, 1, 9, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(10, '203001', 10, 3, 9, 1, 10, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(11, '203002', 11, 3, 9, 1, 11, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(12, '203003', 12, 3, 9, 1, 12, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(13, '204001', 13, 4, 10, 1, 13, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(14, '204002', 14, 4, 10, 1, 14, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(15, '204003', 15, 4, 10, 1, 15, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2020-08-23 19:54:00', NULL, NULL, 1, NULL, NULL),
(16, '201001', 16, 11, 15, 1, NULL, 'Day', NULL, NULL, '', '1', '0', NULL, '2020-08-24 01:30:06', '2020-08-24 01:30:06', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `subject_fail_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `academic_year_id`, `class_id`, `registration_id`, `exam_id`, `total_marks`, `grade`, `point`, `subject_fail_count`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, 11, 154, 'F', '0.75', 3, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, 11, 251, 'F', '2.50', 1, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, 11, 152, 'F', '1.50', 2, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, 11, 167, 'F', '0.88', 3, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, 11, 239, 'F', '2.75', 1, '2020-08-23 19:54:11', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_combines`
--

CREATE TABLE `result_combines` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_combines`
--

INSERT INTO `result_combines` (`id`, `registration_id`, `subject_id`, `exam_id`, `total_marks`, `grade`, `point`) VALUES
(1, 1, 11, 11, 85, 'B', '3.00'),
(2, 1, 13, 11, 43, 'F', '0.00'),
(3, 2, 11, 11, 63, 'C', '2.00'),
(4, 2, 13, 11, 84, 'B', '3.00'),
(5, 3, 11, 11, 40, 'F', '0.00'),
(6, 3, 13, 11, 78, 'B', '3.00'),
(7, 4, 11, 11, 48, 'F', '0.00'),
(8, 4, 13, 11, 99, 'A-', '3.50'),
(9, 5, 11, 11, 109, 'A', '4.00'),
(10, 5, 13, 11, 82, 'B', '3.00');

-- --------------------------------------------------------

--
-- Table structure for table `result_publish`
--

CREATE TABLE `result_publish` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_publish`
--

INSERT INTO `result_publish` (`id`, `academic_year_id`, `class_id`, `exam_id`, `publish_date`) VALUES
(1, 1, 1, 11, '2020-08-24'),
(2, 1, 11, 14, '2020-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `deletable`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Admin', 0, '2020-08-23 19:42:59', '2020-08-23 19:42:59', NULL, 0, 0, NULL),
(2, 'Teacher', 0, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, 0, 0, NULL),
(3, 'Student', 0, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, 0, 0, NULL),
(4, 'Parents', 0, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, 0, 0, NULL),
(5, 'Accountant', 0, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, 0, 0, NULL),
(6, 'Librarian', 0, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, 0, 0, NULL),
(7, 'Receptionist', 0, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 2, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 3, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 4, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 5, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 6, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 7, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 8, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 22, '2020-08-23 19:43:00', '2020-08-23 19:43:00', NULL, NULL, NULL, NULL),
(1, 23, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 24, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 25, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 26, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 27, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 28, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 29, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 30, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 31, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 32, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 33, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 34, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 35, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 36, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 37, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 38, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 39, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 40, '2020-08-23 19:43:01', '2020-08-23 19:43:01', NULL, NULL, NULL, NULL),
(1, 41, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 42, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 43, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 44, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 45, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 46, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 47, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 48, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 49, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 50, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 51, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 52, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 53, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 54, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 55, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 56, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 57, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 58, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 59, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 60, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 61, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 62, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 63, '2020-08-23 19:43:02', '2020-08-23 19:43:02', NULL, NULL, NULL, NULL),
(1, 64, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 65, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 66, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 67, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 68, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 69, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 70, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 71, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 72, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 73, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 74, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 75, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 76, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 77, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 78, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 79, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 80, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 81, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 82, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 83, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 84, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 85, '2020-08-23 19:43:03', '2020-08-23 19:43:03', NULL, NULL, NULL, NULL),
(1, 86, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 87, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 88, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 89, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 90, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 91, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 92, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 93, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 94, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 95, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 96, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 97, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 98, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 99, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 100, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 101, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 102, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 103, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 104, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 105, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 106, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 107, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 108, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 109, '2020-08-23 19:43:04', '2020-08-23 19:43:04', NULL, NULL, NULL, NULL),
(1, 110, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 111, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 112, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 113, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 114, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 115, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 116, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 117, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 118, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 119, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 120, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 121, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 122, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 123, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 124, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 125, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 126, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 127, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 128, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 129, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 130, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 131, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 132, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 133, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 134, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 135, '2020-08-23 19:43:05', '2020-08-23 19:43:05', NULL, NULL, NULL, NULL),
(1, 136, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 137, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 138, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 139, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 140, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 141, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 142, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 143, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 144, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 145, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 146, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 147, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 148, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 149, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 150, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 151, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 152, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 153, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 154, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 155, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 156, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 157, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 158, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 159, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 160, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 161, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 162, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 163, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 164, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 165, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 166, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 167, '2020-08-23 19:43:06', '2020-08-23 19:43:06', NULL, NULL, NULL, NULL),
(1, 168, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 169, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 170, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 171, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 172, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 173, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 174, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 175, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 176, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 177, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 178, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 179, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 180, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 181, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 182, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 183, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 184, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 185, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 186, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 187, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 188, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 189, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 190, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 191, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 192, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 193, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(1, 194, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 1, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 2, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 3, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 4, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 5, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 6, '2020-08-23 19:43:07', '2020-08-23 19:43:07', NULL, NULL, NULL, NULL),
(2, 7, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(2, 8, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 1, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 2, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 3, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 4, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 5, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 6, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 7, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(3, 8, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 1, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 2, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 3, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 4, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 5, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 6, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 7, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(4, 8, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 1, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 2, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 3, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 4, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 5, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 6, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 7, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(5, 8, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 1, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 2, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 3, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 4, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 5, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 6, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 7, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(6, 8, '2020-08-23 19:43:08', '2020-08-23 19:43:08', NULL, NULL, NULL, NULL),
(7, 1, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 2, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 3, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 4, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 5, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 6, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 7, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL),
(7, 8, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `capacity`, `class_id`, `teacher_id`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'T', 39, 3, 4, 'Fugiat accusamus sed quas.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(2, 'A', 23, 2, 2, 'Facere excepturi suscipit iure ut.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(3, 'H', 27, 5, 4, 'Commodi quidem ut consequuntur.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(4, 'G', 35, 10, 4, 'Quis aperiam doloremque atque quibusdam voluptatem.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(5, 'X', 38, 2, 2, 'Non neque qui neque qui in.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(6, 'U', 30, 2, 5, 'Cum optio libero accusantium vel architecto.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(7, 'B', 30, 2, 4, 'Possimus eveniet assumenda suscipit esse qui totam.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(8, 'Q', 29, 3, 3, 'Accusamus non fugit voluptatibus officiis.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(9, 'N', 27, 3, 4, 'Quis esse ut nihil at quae fuga eos.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(10, 'M', 35, 4, 5, 'Omnis ut ut qui odio placeat consectetur.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(11, 'W', 27, 4, 6, 'Dolorum minima ut est laborum consectetur.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(12, 'A', 21, 1, 3, 'Reiciendis iste cumque amet.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(13, 'B', 31, 1, 5, 'Maiores eveniet beatae amet ratione quibusdam alias.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(14, 'C', 36, 1, 2, 'Minus molestiae quisquam voluptatum voluptas commodi tempora pariatur error.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(15, 'maths', 20, 11, 10, 'sssssssssssssss', '1', '2020-08-24 01:10:52', '2020-08-24 01:10:52', NULL, 1, 1, NULL);

--
-- Triggers `sections`
--
DELIMITER $$
CREATE TRIGGER `section__ai` AFTER INSERT ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'insert', NULL, d.* 
    FROM sections AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `section__au` AFTER UPDATE ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'update', NULL, d.*
    FROM sections AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `section_history`
--

CREATE TABLE `section_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section_history`
--

INSERT INTO `section_history` (`action`, `revision`, `id`, `name`, `capacity`, `class_id`, `teacher_id`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'T', 39, 3, 4, 'Fugiat accusamus sed quas.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 2, 'A', 23, 2, 2, 'Facere excepturi suscipit iure ut.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 3, 'H', 27, 5, 4, 'Commodi quidem ut consequuntur.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 4, 'G', 35, 10, 4, 'Quis aperiam doloremque atque quibusdam voluptatem.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 5, 'X', 38, 2, 2, 'Non neque qui neque qui in.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 6, 'U', 30, 2, 5, 'Cum optio libero accusantium vel architecto.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 7, 'B', 30, 2, 4, 'Possimus eveniet assumenda suscipit esse qui totam.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 8, 'Q', 29, 3, 3, 'Accusamus non fugit voluptatibus officiis.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 9, 'N', 27, 3, 4, 'Quis esse ut nihil at quae fuga eos.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 10, 'M', 35, 4, 5, 'Omnis ut ut qui odio placeat consectetur.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 11, 'W', 27, 4, 6, 'Dolorum minima ut est laborum consectetur.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 12, 'A', 21, 1, 3, 'Reiciendis iste cumque amet.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 13, 'B', 31, 1, 5, 'Maiores eveniet beatae amet ratione quibusdam alias.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 14, 'C', 36, 1, 2, 'Minus molestiae quisquam voluptatum voluptas commodi tempora pariatur error.', '1', '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 15, 'maths', 20, 11, 10, 'sssssssssssssss', '1', '2020-08-24 01:10:52', '2020-08-24 01:10:52', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_metas`
--

CREATE TABLE `site_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_metas`
--

INSERT INTO `site_metas` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'settings', '{\"logo\":\"logo.png\",\"logo2x\":\"logo@2x.png\",\"favicon\":\"favicon.png\",\"name\":\"Cloud School\",\"short_name\":\"CloudSchool\",\"facebook\":\"#\",\"instagram\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\"}', '2020-08-23 19:53:10', '2020-08-23 19:53:10', NULL, 0, 0, NULL),
(2, 'timeline', '{\"t\":\"We Start Here\",\"d\":\"Lorem ipsum\",\"y\":\"2006\"}', '2020-08-23 19:53:10', '2020-08-23 19:53:10', NULL, 0, 0, NULL),
(3, 'timeline', '{\"t\":\"Top Score\",\"d\":\"We achive top result score in the state\",\"y\":\"2010\"}', '2020-08-23 19:53:10', '2020-08-23 19:53:10', NULL, 0, 0, NULL),
(4, 'faq', '{\"q\":\"How to apply for adminission?\",\"a\":\"Just e-mail us, or contact on hot line.\"}', '2020-08-23 19:53:10', '2020-08-23 19:53:10', NULL, 0, 0, NULL),
(5, 'contact_address', 'Dhaka-1207', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(6, 'contact_phone', '+880258685', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(7, 'contact_email', 'contact@cloudschoolbd.com', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(8, 'contact_latlong', '23.7340076,90.3841824', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(9, 'gallery', '1.jpg', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(10, 'gallery', '2.jpg', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(11, 'gallery', '3.jpg', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(12, 'statistic', '4000,150,18000,9800', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(13, 'our_service_text', 'Lorem ipsum', '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'First slider image', 'This is subtitle 1', '1.jpg', 1, '2020-08-23 19:53:12', '2020-08-23 19:53:12', NULL, 0, 0, NULL),
(2, 'Second slider image', 'This is subtitle 2', '2.jpg', 2, '2020-08-23 19:53:12', '2020-08-23 19:53:12', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sms_receive_no` smallint(6) NOT NULL DEFAULT '1',
  `siblings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `name`, `nick_name`, `dob`, `gender`, `religion`, `blood_group`, `nationality`, `photo`, `email`, `phone_no`, `extra_activity`, `note`, `father_name`, `father_phone_no`, `mother_name`, `mother_phone_no`, `guardian`, `guardian_phone_no`, `present_address`, `permanent_address`, `sms_receive_no`, `siblings`, `signature`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 15, 'General Herman', NULL, '02/08/2011', '1', '1', '5', 'Austria', NULL, 'howe.hal@example.net', '+4603948751210', '', '', 'Sonny Pfannerstill', '+1849888531264', 'Karlee Corkery', '+1068730141889', NULL, NULL, '70180 Wuckert Ford\nGerlachville, IA 97567', '5553 Effertz Springs Apt. 805\nEast Alek, KS 51204', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:05', NULL, 1, 0, NULL),
(2, 16, 'Ms. Heidi Emard', NULL, '08/01/2011', '2', '2', '5', 'Cook Islands', NULL, 'mmarks@example.com', '+3587273424880', '', '', 'Dr. Raul Johnson', '+5792949717994', 'Liliane Wiza', '+4327970300617', NULL, NULL, '465 Prosacco Canyon Apt. 391\nWest Ulisesmouth, NJ 43558-2246', '9638 Schroeder Terrace\nSchimmelland, OH 55792', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:05', NULL, 1, 0, NULL),
(3, 17, 'Glennie Schultz Sr.', NULL, '17/07/2011', '2', '2', '4', 'Zimbabwe', NULL, 'april15@example.com', '+1010188633089', '', '', 'Vicente Ledner', '+5409603983293', 'Sydnie Goyette', '+1590835924646', NULL, NULL, '82467 Otis Stream\nTrompport, KS 60098', '841 Natalia Light\nBergnaumview, IA 33249-7046', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:05', NULL, 1, 0, NULL),
(4, 18, 'Floy Lowe', NULL, '05/09/2010', '1', '5', '3', 'Isle of Man', NULL, 'mariane.mitchell@example.net', '+6120252450305', '', '', 'Reagan Murazik', '+5384480663183', 'Rosa Nienow', '+4581717636822', NULL, NULL, '5861 Howe Lodge Suite 720\nNew Ally, LA 66425', '7133 Loyal Lane\nLake Dell, AZ 75794-9550', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(5, 19, 'Aurelio Herzog DDS', NULL, '14/08/2013', '1', '1', '2', 'Uganda', NULL, 'bulah10@example.com', '+6404997823007', '', '', 'Mason Funk', '+8342930804166', 'Yasmeen Nader', '+1164934848303', NULL, NULL, '8667 Hilario Motorway Suite 423\nEast Clydefort, MS 68753-5489', '72372 Loy Isle\nNorth Karlie, NC 82675', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(6, 20, 'Mr. Daryl Jerde II', NULL, '06/01/2001', '2', '4', '6', 'Malaysia', NULL, 'cgleichner@example.net', '+8045580230212', '', '', 'Angel Lemke', '+2438440465039', 'Mireya Spencer', '+7380164442637', NULL, NULL, '21457 Dolly Green Suite 537\nNorth Aaron, IN 30909', '5984 Colleen Square Suite 015\nNew Davion, AZ 35424-3234', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(7, 21, 'Mariano Yundt III', NULL, '07/02/2005', '2', '4', '5', 'Romania', NULL, 'darian73@example.net', '+3286964971574', '', '', 'Armani Rice', '+5354896049633', 'Shawna Mueller', '+5682693686741', NULL, NULL, '1895 Hickle Flat Apt. 228\nEast Minnie, DE 18293', '356 Windler Spur\nEdmundhaven, AR 54106', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(8, 22, 'Mrs. Thea Mayer II', NULL, '20/10/2017', '2', '1', '6', 'Brazil', NULL, 'lesch.elinore@example.net', '+1600056011293', '', '', 'Prof. Ignatius Breitenberg', '+4220512326049', 'Mrs. Meaghan Wuckert I', '+1109034360534', NULL, NULL, '81416 Adelle Path Suite 147\nNathanville, OR 38411-1169', '916 Terry Village Apt. 504\nWisozkfort, IL 05506', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(9, 23, 'Mr. Orville McCullough', NULL, '19/03/2017', '2', '4', '5', 'Cote d\'Ivoire', NULL, 'mgutkowski@example.net', '+8074559650135', '', '', 'Hailey Bins', '+3003212154248', 'Aurelia Weber', '+9370004732112', NULL, NULL, '8937 Velma Pass Suite 405\nNew Fay, PA 26611', '209 Maximus Vista\nSouth Jodie, WI 22428-3247', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(10, 24, 'Prof. Justina Langosh', NULL, '07/07/2011', '1', '5', '3', 'Turks and Caicos Islands', NULL, 'kevin.schmeler@example.net', '+4492459207091', '', '', 'Mr. Ahmad Barton Sr.', '+5055597622757', 'Dr. Bridie Altenwerth', '+8390130370440', NULL, NULL, '1041 Evan Crest Apt. 856\nMonahanside, VT 22441-7807', '3000 Bethel Cliffs\nWest Keeganton, IL 80813-3779', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(11, 25, 'Reta Kilback', NULL, '22/04/2015', '1', '1', '2', 'Sri Lanka', NULL, 'pete.pouros@example.com', '+2904240162255', '', '', 'Mr. Abdiel Homenick', '+7111810833853', 'Daija Wuckert Sr.', '+8060867395422', NULL, NULL, '29478 Kuhlman Road Apt. 040\nFletcherhaven, MS 78037', '2929 Wilma Islands Suite 015\nJarrettton, NJ 25377-1716', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(12, 26, 'Kamron Skiles', NULL, '17/11/2005', '2', '2', '5', 'Mauritania', NULL, 'magdalena.fritsch@example.com', '+6110324435489', '', '', 'Murphy Ferry', '+8543464865087', 'Amaya Tromp', '+5634596408207', NULL, NULL, '1043 Conn Junctions\nHumbertomouth, GA 74528-7685', '982 Malvina Knolls Apt. 004\nStreichberg, DE 59775-8720', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(13, 27, 'Rita Schultz PhD', NULL, '17/03/2020', '2', '1', '1', 'Angola', NULL, 'bhoeger@example.org', '+8793771238428', '', '', 'Jo Kerluke', '+1854052661801', 'Georgette Gorczany', '+8482430252533', NULL, NULL, '9073 Nellie Vista\nWest Jazlynville, MS 83844', '3832 Hartmann Road Apt. 655\nLake Haydenburgh, ND 16661-2931', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(14, 28, 'Luis Heathcote', NULL, '26/09/2017', '2', '4', '3', 'Benin', NULL, 'nicolette.stokes@example.com', '+8467414738281', '', '', 'Archibald Mohr', '+2721288808219', 'Violet Luettgen', '+3635300770706', NULL, NULL, '445 Eino Highway Suite 220\nBettychester, KY 22147', '408 Funk Fords Apt. 934\nColinview, UT 77745-0956', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(15, 29, 'Tremaine Kreiger', NULL, '12/12/2007', '2', '1', '7', 'Kiribati', NULL, 'cronin.bennie@example.org', '+8574228102441', '', '', 'Prof. Johnathon Kemmer', '+2368192427887', 'Dr. Taya Koss III', '+3941768489855', NULL, NULL, '502 Della Fords\nLindseyhaven, HI 79997', '530 Friesen Course Suite 577\nBrakusborough, IA 67272', 1, NULL, NULL, '1', '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(16, 31, 'kmmstudent', 'kmm', '29/12/2014', '1', '2', '1', 'tamilnadu', 'A08f6OVTPAv9NcBo4p10Y3b2zCnUhUH8BBsxSp7j.jpeg', 'pksgroups002@gmail.com', '9003152804', NULL, NULL, 'appa', '9003152804', 'amma', NULL, NULL, NULL, 'zzzzzzzzzzz', 'ccccccccccccc', 1, NULL, NULL, '1', '2020-08-24 01:30:06', '2020-08-24 01:30:06', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `staying_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `academic_year_id`, `class_id`, `registration_id`, `attendance_date`, `in_time`, `out_time`, `staying_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, '2020-08-09', '2020-08-09 00:00:00', '2020-08-09 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, '2020-08-09', '2020-08-09 00:00:00', '2020-08-09 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, '2020-08-09', '2020-08-09 08:00:00', '2020-08-09 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 1, '2020-08-10', '2020-08-10 08:00:00', '2020-08-10 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 2, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 3, '2020-08-10', '2020-08-10 08:00:00', '2020-08-10 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 4, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 5, '2020-08-10', '2020-08-10 00:00:00', '2020-08-10 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 1, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 2, '2020-08-11', '2020-08-11 08:00:00', '2020-08-11 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 3, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 4, '2020-08-11', '2020-08-11 00:00:00', '2020-08-11 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 5, '2020-08-11', '2020-08-11 08:00:00', '2020-08-11 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 1, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 2, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 3, '2020-08-12', '2020-08-12 00:00:00', '2020-08-12 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 4, '2020-08-12', '2020-08-12 00:00:00', '2020-08-12 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 5, '2020-08-12', '2020-08-12 08:00:00', '2020-08-12 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 1, '2020-08-13', '2020-08-13 00:00:00', '2020-08-13 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 2, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 3, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 4, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 5, '2020-08-13', '2020-08-13 08:00:00', '2020-08-13 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 1, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 2, '2020-08-15', '2020-08-15 08:00:00', '2020-08-15 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 3, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 4, '2020-08-15', '2020-08-15 08:00:00', '2020-08-15 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 5, '2020-08-15', '2020-08-15 00:00:00', '2020-08-15 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(31, 1, 1, 1, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(32, 1, 1, 2, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(33, 1, 1, 3, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(34, 1, 1, 4, '2020-08-16', '2020-08-16 00:00:00', '2020-08-16 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(35, 1, 1, 5, '2020-08-16', '2020-08-16 08:00:00', '2020-08-16 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(36, 1, 1, 1, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(37, 1, 1, 2, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(38, 1, 1, 3, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(39, 1, 1, 4, '2020-08-17', '2020-08-17 08:00:00', '2020-08-17 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(40, 1, 1, 5, '2020-08-17', '2020-08-17 00:00:00', '2020-08-17 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(41, 1, 1, 1, '2020-08-18', '2020-08-18 00:00:00', '2020-08-18 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(42, 1, 1, 2, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(43, 1, 1, 3, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(44, 1, 1, 4, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(45, 1, 1, 5, '2020-08-18', '2020-08-18 08:00:00', '2020-08-18 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(46, 1, 1, 1, '2020-08-19', '2020-08-19 00:00:00', '2020-08-19 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(47, 1, 1, 2, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(48, 1, 1, 3, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(49, 1, 1, 4, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(50, 1, 1, 5, '2020-08-19', '2020-08-19 08:00:00', '2020-08-19 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(51, 1, 1, 1, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(52, 1, 1, 2, '2020-08-20', '2020-08-20 08:00:00', '2020-08-20 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(53, 1, 1, 3, '2020-08-20', '2020-08-20 08:00:00', '2020-08-20 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(54, 1, 1, 4, '2020-08-20', '2020-08-20 00:00:00', '2020-08-20 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(55, 1, 1, 5, '2020-08-20', '2020-08-20 08:00:00', '2020-08-20 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(56, 1, 1, 1, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(57, 1, 1, 2, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(58, 1, 1, 3, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(59, 1, 1, 4, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(60, 1, 1, 5, '2020-08-22', '2020-08-22 08:00:00', '2020-08-22 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(61, 1, 1, 1, '2020-08-23', '2020-08-23 08:00:00', '2020-08-23 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(62, 1, 1, 2, '2020-08-23', '2020-08-23 08:00:00', '2020-08-23 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(63, 1, 1, 3, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(64, 1, 1, 4, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(65, 1, 1, 5, '2020-08-23', '2020-08-23 00:00:00', '2020-08-23 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(66, 1, 1, 1, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(67, 1, 1, 2, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(68, 1, 1, 3, '2020-08-24', '2020-08-24 08:00:00', '2020-08-24 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(69, 1, 1, 4, '2020-08-24', '2020-08-24 00:00:00', '2020-08-24 00:00:00', '00:00:00', '', '0', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(70, 1, 1, 5, '2020-08-24', '2020-08-24 08:00:00', '2020-08-24 13:00:00', '05:00:00', '', '1', '2020-08-23 19:54:09', NULL, NULL, 1, NULL, NULL),
(71, 1, 11, 16, '2020-08-24', '2020-08-24 14:00:00', '2020-08-24 19:00:00', '05:00:00', '', '1', '2020-08-24 01:37:26', NULL, NULL, 1, NULL, NULL),
(72, 1, 11, 16, '2020-08-21', '2020-08-21 14:00:00', '2020-08-21 19:00:00', '05:00:00', '', '1', '2020-08-24 01:38:32', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_info_log`
--

CREATE TABLE `student_info_log` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `registration_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`registration_id`, `subject_id`, `subject_type`) VALUES
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(2, 16, 1),
(3, 11, 1),
(3, 12, 1),
(3, 13, 1),
(3, 14, 1),
(3, 15, 1),
(3, 16, 1),
(4, 11, 1),
(4, 12, 1),
(4, 13, 1),
(4, 14, 1),
(4, 15, 1),
(4, 16, 1),
(5, 11, 1),
(5, 12, 1),
(5, 13, 1),
(5, 14, 1),
(5, 15, 1),
(5, 16, 1),
(16, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `st_subjects_log`
--

CREATE TABLE `st_subjects_log` (
  `registration_id` int(10) UNSIGNED NOT NULL,
  `log` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `exclude_in_result` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `class_id`, `status`, `order`, `exclude_in_result`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Dolor qui ut.', '188', '1', 3, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(2, 'Quia quod et.', '108', '1', 10, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(3, 'Expedita sit natus tenetur.', '163', '1', 3, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(4, 'Provident minus assumenda dolor.', '200', '1', 7, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(5, 'Quas quis ipsam.', '196', '1', 8, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(6, 'Ab consequuntur eum amet.', '140', '2', 5, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(7, 'Tempore accusamus quaerat cum.', '114', '1', 3, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(8, 'Id dignissimos et.', '139', '1', 6, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(9, 'Officiis odit magnam corrupti.', '161', '1', 4, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(10, 'Ea animi saepe et.', '146', '2', 5, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
(11, 'Bangla 1st', '101', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(12, 'Bangla 2nd', '102', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(13, 'English 1st', '107', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(14, 'English 2nd', '108', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(15, 'Math', '111', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(16, 'Computer', '112', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(17, 'Bangla 1st', '101', '1', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(18, 'Magic Study', '102', '3', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(19, 'English 1st', '107', '1', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(20, 'Drawing', '108', '3', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
(21, 'Math', '111', '1', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:54:00', NULL, 1, 0, NULL),
(22, 'Computer', '112', '2', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:54:00', NULL, 1, 0, NULL),
(23, 'maths', '101', '1', 11, '1', 1, 0, '2020-08-24 01:13:02', '2020-08-24 01:21:46', NULL, 1, 1, NULL);

--
-- Triggers `subjects`
--
DELIMITER $$
CREATE TRIGGER `subject_ai` AFTER INSERT ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'insert', NULL, d.* 
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `subject_au` AFTER UPDATE ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'update', NULL, d.*
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subject_history`
--

CREATE TABLE `subject_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `exclude_in_result` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_history`
--

INSERT INTO `subject_history` (`action`, `revision`, `id`, `name`, `code`, `type`, `class_id`, `status`, `order`, `exclude_in_result`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'Dolor qui ut.', '188', '1', 3, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
('insert', 1, 2, 'Quia quod et.', '108', '1', 10, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 3, 'Expedita sit natus tenetur.', '163', '1', 3, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 4, 'Provident minus assumenda dolor.', '200', '1', 7, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 5, 'Quas quis ipsam.', '196', '1', 8, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 6, 'Ab consequuntur eum amet.', '140', '2', 5, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 7, 'Tempore accusamus quaerat cum.', '114', '1', 3, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 8, 'Id dignissimos et.', '139', '1', 6, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 9, 'Officiis odit magnam corrupti.', '161', '1', 4, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 10, 'Ea animi saepe et.', '146', '2', 5, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:58', NULL, 1, 0, NULL),
('insert', 1, 11, 'Bangla 1st', '101', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 12, 'Bangla 2nd', '102', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 13, 'English 1st', '107', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 14, 'English 2nd', '108', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 15, 'Math', '111', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 16, 'Computer', '112', '1', 1, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 17, 'Bangla 1st', '101', '1', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 18, 'Magic Study', '102', '3', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 19, 'English 1st', '107', '1', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 20, 'Drawing', '108', '3', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:53:59', NULL, 1, 0, NULL),
('insert', 1, 21, 'Math', '111', '1', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:54:00', NULL, 1, 0, NULL),
('insert', 1, 22, 'Computer', '112', '2', 2, '1', 0, 0, '2020-08-23 19:53:57', '2020-08-23 19:54:00', NULL, 1, 0, NULL),
('insert', 1, 23, 'maths', '101', '2', 11, '1', 1, 0, '2020-08-24 01:13:02', '2020-08-24 01:13:02', NULL, 1, 1, NULL),
('update', 2, 23, 'maths', '101', '1', 11, '1', 1, 0, '2020-08-24 01:13:02', '2020-08-24 01:21:46', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `qualification` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `name`, `designation`, `image`, `description`, `qualification`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Fakir Chand', 'Headmaster', '1.jpg', 'Super cool boy!', 'M.A in English', '#', '#', '#', '2020-08-23 19:53:12', '2020-08-23 19:53:12', NULL, 0, 0, NULL),
(2, 'Nosimon Beagum', 'Class Teacher', '2.jpg', '', 'Hons in English', '#', '#', '#', '2020-08-23 19:53:12', '2020-08-23 19:53:12', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`teacher_id`, `subject_id`) VALUES
(5, 1),
(6, 2),
(4, 3),
(4, 4),
(5, 5),
(2, 6),
(5, 7),
(2, 8),
(2, 9),
(4, 10),
(4, 11),
(4, 12),
(1, 13),
(5, 14),
(4, 15),
(3, 16),
(3, 17),
(4, 18),
(2, 19),
(5, 20),
(1, 21),
(5, 22),
(10, 23);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `writer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `writer`, `comments`, `avatar`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Shadhin', 'Awesome Academy', NULL, 1, '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL),
(2, 'HRS', 'Great school', NULL, 2, '2020-08-23 19:53:11', '2020-08-23 19:53:11', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone_no`, `password`, `remember_token`, `force_logout`, `status`, `is_super_admin`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Super Admin', 'superadmin', 'superadmin@bestshine.com', NULL, '$2y$10$czATXIQ3iKPW.e4bVc69uOjYbXt7uDiImbtUtwqwxL7pWggVLVs.2', NULL, 0, '1', 1, '2020-08-23 19:43:09', '2020-08-23 19:43:09', NULL, 0, 0, NULL),
(2, 'Mr. admin', 'admin', 'admin@bestshine.com', NULL, '$2y$10$ycHMFontDfXLD2eqpLc8yOz0ddXmxKuhE6ScfH32cjqSESZAUBSDa', NULL, 0, '1', 0, '2020-08-23 19:43:10', '2020-08-23 19:43:10', NULL, 0, 0, NULL),
(3, 'Miss Araceli Douglas', 'darby49', 'rosenbaum.alisha@example.com', NULL, '$2y$10$z2hD5ti1o..Rk6glI15JyOeUsoQHXEKjB/HEKtuAU1nSrwczi60Nu', 'DAq9tQiJqD', 0, '1', 0, '2020-08-23 19:53:48', '2020-08-23 19:53:49', NULL, 1, 0, NULL),
(4, 'Terry Stiedemann', 'ahmed.kutch', 'freeman.hintz@example.org', NULL, '$2y$10$SsL67LWQeW9f8XRDMb4fsueK6YzsbLhJJQCoJeVrKZuL0epK0yxWO', 'cUnosccYzD', 0, '1', 0, '2020-08-23 19:53:48', '2020-08-23 19:53:50', NULL, 1, 0, NULL),
(5, 'Prof. Trever Braun', 'chasity53', 'ernser.cooper@example.org', NULL, '$2y$10$b1qw9WsVi54chwD4Lp9NJOM8Axtlk3H9LDfyb3u3NuJ96TPZxvBJC', 'ETPS1CfPa4', 0, '1', 0, '2020-08-23 19:53:48', '2020-08-23 20:23:12', NULL, 1, 1, NULL),
(6, 'Larry Ortiz', 'ypadberg', 'wuckert.elliott@example.com', NULL, '$2y$10$q4wwtMABxgjT0Jv2qmEKTepPdsMdgaLN27zDn.RH6pm9SOH6ARXXW', 'NPgHSVSBt8', 0, '1', 0, '2020-08-23 19:53:52', '2020-08-23 19:53:52', NULL, 1, 0, NULL),
(7, 'Megane Hodkiewicz', 'foreilly', 'grimes.chanelle@example.net', NULL, '$2y$10$FE.aJNAf.bP.pbP5WZHsDe35yfYqN5DLKW/aRAxeUxwj5E6tPSIBy', '3octHjpe75', 0, '1', 0, '2020-08-23 19:53:53', '2020-08-23 19:53:53', NULL, 1, 0, NULL),
(8, 'Nettie Feeney', 'stephen.erdman', 'suzanne.jones@example.com', NULL, '$2y$10$ac11pzkRMic8kuixAIlUiO0sD.zo5Rk/4.DsgteaCmQfIoOtLXaki', 'RUPaTwULZp', 0, '1', 0, '2020-08-23 19:53:53', '2020-08-23 19:53:53', NULL, 1, 0, NULL),
(9, 'Graham Schneider', 'kristina.schoen', 'kailee.gleason@example.org', NULL, '$2y$10$t3STonyrG8y8D7ywo1j5zON1x7zMKQIleDmd90F5F.ZfWYz0PdssK', '0fYP73HQ53', 0, '1', 0, '2020-08-23 19:53:53', '2020-08-23 19:53:53', NULL, 1, 0, NULL),
(10, 'Prof. Francis Kautzer', 'jaskolski.okey', 'forest.steuber@example.net', NULL, '$2y$10$kLB5zLsdDnmt0zfg2.D9NOCsABYzQLNk0o9CtAXZVmm1YuuYuQpuu', '2RpPLTwWXX', 0, '1', 0, '2020-08-23 19:53:54', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(11, 'Crystal Ankunding', 'pbraun', 'uswaniawski@example.org', NULL, '$2y$10$GoWReek9mehgSnXhGtJCguScc0bI2BCgjvfDhrOCqvMS0Jr4IYhz2', 'WxGxBiA3BY', 0, '1', 0, '2020-08-23 19:53:54', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(12, 'Ashton Prosacco', 'okon.lenora', 'ifeeney@example.net', NULL, '$2y$10$ngqGsYBEKwfU6HQR0efnpeXnBwkrH0G0jGnWd1PRMJIRRab3FNWMm', 'O7qURIqOwy', 0, '1', 0, '2020-08-23 19:53:55', '2020-08-23 19:53:55', NULL, 1, 0, NULL),
(13, 'Mrs. Corrine Rath', 'drew82', 'pweimann@example.com', NULL, '$2y$10$9cllOECS6t1q9G2u28QgouKojCM01txmmqgVWWIK8QQuk3Odb/VGq', 'rZXTMbWUfm', 0, '1', 0, '2020-08-23 19:53:55', '2020-08-23 19:53:55', NULL, 1, 0, NULL),
(14, 'Cedrick Stokes', 'dbeatty', 'bgreenfelder@example.org', NULL, '$2y$10$NGj7XYU.RFjcqzGw3fG3Mu013GfElRuwXX7Ri/Y3Ojj0fJjGzLMBC', 'ZwdYDQq5eF', 0, '1', 0, '2020-08-23 19:53:56', '2020-08-23 19:53:56', NULL, 1, 0, NULL),
(15, 'Alicia Feeney', 'amir.king', 'howe.hal@example.net', NULL, '$2y$10$cr2IXKXzZAAeosLDUzLu0elZ/KjUmnNGqhNmQg1DKKQfV2.bfB3TS', 'NmDyqFX5PJ', 0, '1', 0, '2020-08-23 19:54:00', '2020-08-23 19:54:00', NULL, 1, 0, NULL),
(16, 'Otha Reynolds', 'hannah90', 'mmarks@example.com', NULL, '$2y$10$0ByL0QGWk93/VSO2b1pXE.WwQ7OnTypywIcJHU0mSFmDOjD1Qa9hq', 'oA9FLPb4GH', 0, '1', 0, '2020-08-23 19:54:00', '2020-08-23 19:54:00', NULL, 1, 0, NULL),
(17, 'Cleve Nader', 'cabbott', 'april15@example.com', NULL, '$2y$10$Kw5ck4rmM6tR6.LPWoeaa.GGirKcJWyeNn7TbkFZW4OiOfUjWuvwi', '4bDiuWKaUI', 0, '1', 0, '2020-08-23 19:54:01', '2020-08-23 19:54:01', NULL, 1, 0, NULL),
(18, 'Ozella Goldner', 'lhowell', 'mariane.mitchell@example.net', NULL, '$2y$10$AhjyAEvkjR/wLNU0NqaATe6tdvMociKQBNmXRBY/MSQKjcK..aWsW', 'L2WhvQ80Yl', 0, '1', 0, '2020-08-23 19:54:01', '2020-08-23 19:54:01', NULL, 1, 0, NULL),
(19, 'Kayden Ryan', 'charlene.sanford', 'bulah10@example.com', NULL, '$2y$10$qfpVgdRl5nFQVJOEaJNiF.41QpfBmQAdzI0uDgpTmwZOE85NoF26G', 'CMzVHoJ0du', 0, '1', 0, '2020-08-23 19:54:02', '2020-08-23 19:54:02', NULL, 1, 0, NULL),
(20, 'Carmel Larkin', 'eswift', 'cgleichner@example.net', NULL, '$2y$10$lnHFpNHogJ7Q/5X/vdaeQuMK5QhoeiC6hF6fqIA/j/ES884KQ5R0.', 'l019xcd976', 0, '1', 0, '2020-08-23 19:54:02', '2020-08-23 19:54:02', NULL, 1, 0, NULL),
(21, 'Tatum Ratke', 'xdonnelly', 'darian73@example.net', NULL, '$2y$10$Vk/Ve9Ybe6CHRGvM2aQLZu1yWPhGHIzV4IDbUtPpPO.o3.gPl7JDW', 'gaYHm0nJPO', 0, '1', 0, '2020-08-23 19:54:02', '2020-08-23 19:54:02', NULL, 1, 0, NULL),
(22, 'Prof. Herta Boehm', 'eichmann.eunice', 'lesch.elinore@example.net', NULL, '$2y$10$g0I2/Y2t5goJ/dDjo0I0hu7lK/veUJ9yFVfC0XvMDQ.OhOgRtDLlq', '19U3JRtcCw', 0, '1', 0, '2020-08-23 19:54:03', '2020-08-23 19:54:03', NULL, 1, 0, NULL),
(23, 'Elbert Kub', 'trantow.jaiden', 'mgutkowski@example.net', NULL, '$2y$10$n.hRqI60qZk1TyLL31mnIeiHFY1WE/oawHuw07KaQ5todXQVnj.ju', '5PxALTlvB5', 0, '1', 0, '2020-08-23 19:54:03', '2020-08-23 19:54:03', NULL, 1, 0, NULL),
(24, 'Raegan Little', 'zemard', 'kevin.schmeler@example.net', NULL, '$2y$10$o4d6tDwG079624eurVJQ0uhhfqXZm2jyNZkw5OoBpcgW4YUOvaZXe', 'LNQstLUzJy', 0, '1', 0, '2020-08-23 19:54:03', '2020-08-23 19:54:03', NULL, 1, 0, NULL),
(25, 'Marielle Streich', 'schaden.eva', 'pete.pouros@example.com', NULL, '$2y$10$QjqNQBrBOzVCxeXNgNn0iOWB1sJ7FHVt97A6aG/R866FJ.LyyclSO', 'SE0aFF3p0q', 0, '1', 0, '2020-08-23 19:54:04', '2020-08-23 19:54:04', NULL, 1, 0, NULL),
(26, 'Prof. Dax Hermann Jr.', 'reilly60', 'magdalena.fritsch@example.com', NULL, '$2y$10$gCQI8zNm28uIDiEZcGVX6et2pkPKcccrQ1HyDpVNPwZtTApiVMFaW', 'n5Qke8ODgN', 0, '1', 0, '2020-08-23 19:54:04', '2020-08-23 19:54:04', NULL, 1, 0, NULL),
(27, 'Sherwood Beier', 'oleta.kuhlman', 'bhoeger@example.org', NULL, '$2y$10$baYuPllK/x61YLKAFgpNdekvXSwWvDgsz.ywj5n6Zvas8DHVx4Gm6', 'Wb4AvFUWfm', 0, '1', 0, '2020-08-23 19:54:04', '2020-08-23 19:54:04', NULL, 1, 0, NULL),
(28, 'Marguerite Brown III', 'juana.jast', 'nicolette.stokes@example.com', NULL, '$2y$10$tbiyiabPGbMH3ss8tXPr1eCIu8FcRYpGd7B4vEdxHeuonhX8lScXC', 'mcXNNPR3ls', 0, '1', 0, '2020-08-23 19:54:05', '2020-08-23 19:54:05', NULL, 1, 0, NULL),
(29, 'Dr. Ariel White', 'providenci30', 'cronin.bennie@example.org', NULL, '$2y$10$cJbXjld1goi1d1UYC9HLV.m0eI5J7MO.ZYs4DRWCxSXmohZQSR6..', 'LnTxH2qmrQ', 0, '1', 0, '2020-08-23 19:54:05', '2020-08-23 19:54:05', NULL, 1, 0, NULL),
(30, 'kmmteacher', 'kmmTEACHER', 'pksgroups001@gmail.com', '9003152804', '$2y$10$k5exeVopIq8VLy/rIDH73O4vWaExYUX2pctHTDR0fHNbzYih4nM9K', NULL, 0, '1', 0, '2020-08-24 01:07:24', '2020-08-24 01:07:24', NULL, 1, 1, NULL),
(31, 'kmmstudent', 'kmmstudent', 'pksgroups002@gmail.com', '9003152804', '$2y$10$7v/5hpv8aRSVxMR2br19z.WB245.i2gTWcgRgtiSalAWyGNULtjga', NULL, 0, '1', 0, '2020-08-24 01:30:06', '2020-08-24 01:30:06', NULL, 1, 1, NULL),
(32, 'kmmadmin', 'kmmadmin', 'info@bestshineeduapp.com', '9003152804', '$2y$10$nk/SSN3r6doSxkKkYLCBx.Md34QwFNrqAU.rxpdL5.spghIXv3Bka', NULL, 0, '1', 0, '2020-08-24 02:10:44', '2020-08-24 02:10:44', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2020-08-23 19:43:10', '2020-08-23 19:43:10', NULL, 0, 0, NULL),
(2, 1, '2020-08-23 19:43:10', '2020-08-23 19:43:10', NULL, 0, 0, NULL),
(3, 2, '2020-08-23 19:53:48', '2020-08-23 19:53:50', NULL, 1, 0, NULL),
(4, 6, '2020-08-23 19:53:48', '2020-08-23 19:53:51', NULL, 1, 0, NULL),
(5, 4, '2020-08-23 19:53:48', '2020-08-23 19:53:51', NULL, 1, 0, NULL),
(6, 2, '2020-08-23 19:53:52', '2020-08-23 19:53:52', NULL, 1, 0, NULL),
(7, 2, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(8, 2, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(9, 2, '2020-08-23 19:53:52', '2020-08-23 19:53:54', NULL, 1, 0, NULL),
(10, 2, '2020-08-23 19:53:52', '2020-08-23 19:53:55', NULL, 1, 0, NULL),
(11, 2, '2020-08-23 19:53:52', '2020-08-23 19:53:55', NULL, 1, 0, NULL),
(12, 5, '2020-08-23 19:53:55', '2020-08-23 19:53:55', NULL, 1, 0, NULL),
(13, 6, '2020-08-23 19:53:55', '2020-08-23 19:53:56', NULL, 1, 0, NULL),
(14, 7, '2020-08-23 19:53:55', '2020-08-23 19:53:57', NULL, 1, 0, NULL),
(15, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(16, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(17, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(18, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(19, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:06', NULL, 1, 0, NULL),
(20, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(21, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(22, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(23, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(24, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(25, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(26, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(27, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(28, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(29, 3, '2020-08-23 19:54:00', '2020-08-23 19:54:07', NULL, 1, 0, NULL),
(30, 2, '2020-08-24 01:07:24', '2020-08-24 01:07:24', NULL, 1, 1, NULL),
(31, 3, '2020-08-24 01:30:06', '2020-08-24 01:30:06', NULL, 1, 1, NULL),
(32, 1, '2020-08-24 02:10:44', '2020-08-24 02:10:44', NULL, 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_contents_created_by_index` (`created_by`),
  ADD KEY `about_contents_updated_by_index` (`updated_by`),
  ADD KEY `about_contents_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `about_sliders`
--
ALTER TABLE `about_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_sliders_created_by_index` (`created_by`),
  ADD KEY `about_sliders_updated_by_index` (`updated_by`),
  ADD KEY `about_sliders_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_years_created_by_index` (`created_by`),
  ADD KEY `academic_years_updated_by_index` (`updated_by`),
  ADD KEY `academic_years_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_sectors`
--
ALTER TABLE `account_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_metas`
--
ALTER TABLE `app_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_metas_created_by_index` (`created_by`),
  ADD KEY `app_metas_updated_by_index` (`updated_by`),
  ADD KEY `app_metas_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `class_profiles`
--
ALTER TABLE `class_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_profiles_created_by_index` (`created_by`),
  ADD KEY `class_profiles_updated_by_index` (`updated_by`),
  ADD KEY `class_profiles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_id_card_unique` (`id_card`),
  ADD KEY `employees_user_id_foreign` (`user_id`),
  ADD KEY `employees_role_id_foreign` (`role_id`),
  ADD KEY `employees_created_by_index` (`created_by`),
  ADD KEY `employees_updated_by_index` (`updated_by`),
  ADD KEY `employees_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_attendances_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_attendances_created_by_index` (`created_by`),
  ADD KEY `employee_attendances_updated_by_index` (`updated_by`),
  ADD KEY `employee_attendances_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_created_by_index` (`created_by`),
  ADD KEY `events_updated_by_index` (`updated_by`),
  ADD KEY `events_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_class_id_foreign` (`class_id`),
  ADD KEY `exams_created_by_index` (`created_by`),
  ADD KEY `exams_updated_by_index` (`updated_by`),
  ADD KEY `exams_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `exam_rules`
--
ALTER TABLE `exam_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_rules_class_id_foreign` (`class_id`),
  ADD KEY `exam_rules_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_rules_grade_id_foreign` (`grade_id`),
  ADD KEY `exam_rules_combine_subject_id_foreign` (`combine_subject_id`),
  ADD KEY `exam_rules_created_by_index` (`created_by`),
  ADD KEY `exam_rules_updated_by_index` (`updated_by`),
  ADD KEY `exam_rules_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_created_by_index` (`created_by`),
  ADD KEY `grades_updated_by_index` (`updated_by`),
  ADD KEY `grades_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `i_classes`
--
ALTER TABLE `i_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_classes_created_by_index` (`created_by`),
  ADD KEY `i_classes_updated_by_index` (`updated_by`),
  ADD KEY `i_classes_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `i_class_history`
--
ALTER TABLE `i_class_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `i_classes_created_by_index` (`created_by`),
  ADD KEY `i_classes_updated_by_index` (`updated_by`),
  ADD KEY `i_classes_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`),
  ADD KEY `leaves_created_by_index` (`created_by`),
  ADD KEY `leaves_updated_by_index` (`updated_by`),
  ADD KEY `leaves_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marks_class_id_exam_id_registration_id_subject_id_unique` (`class_id`,`exam_id`,`registration_id`,`subject_id`),
  ADD KEY `marks_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_registration_id_foreign` (`registration_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_created_by_index` (`created_by`),
  ADD KEY `marks_updated_by_index` (`updated_by`),
  ADD KEY `marks_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_student_id_foreign` (`student_id`),
  ADD KEY `registrations_class_id_foreign` (`class_id`),
  ADD KEY `registrations_section_id_foreign` (`section_id`),
  ADD KEY `registrations_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `registrations_old_registration_id_foreign` (`old_registration_id`),
  ADD KEY `registrations_regi_no_index` (`regi_no`),
  ADD KEY `registrations_created_by_index` (`created_by`),
  ADD KEY `registrations_updated_by_index` (`updated_by`),
  ADD KEY `registrations_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `results_class_id_foreign` (`class_id`),
  ADD KEY `results_registration_id_foreign` (`registration_id`),
  ADD KEY `results_exam_id_foreign` (`exam_id`),
  ADD KEY `results_created_by_index` (`created_by`),
  ADD KEY `results_updated_by_index` (`updated_by`),
  ADD KEY `results_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `result_combines`
--
ALTER TABLE `result_combines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_combines_registration_id_foreign` (`registration_id`),
  ADD KEY `result_combines_subject_id_foreign` (`subject_id`),
  ADD KEY `result_combines_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_publish_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `result_publish_class_id_foreign` (`class_id`),
  ADD KEY `result_publish_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`),
  ADD KEY `roles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD KEY `roles_permissions_role_id_foreign` (`role_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `roles_permissions_created_by_index` (`created_by`),
  ADD KEY `roles_permissions_updated_by_index` (`updated_by`),
  ADD KEY `roles_permissions_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_class_id_foreign` (`class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sections_created_by_index` (`created_by`),
  ADD KEY `sections_updated_by_index` (`updated_by`),
  ADD KEY `sections_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `section_history`
--
ALTER TABLE `section_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `sections_class_id_foreign` (`class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sections_created_by_index` (`created_by`),
  ADD KEY `sections_updated_by_index` (`updated_by`),
  ADD KEY `sections_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `site_metas`
--
ALTER TABLE `site_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_metas_created_by_index` (`created_by`),
  ADD KEY `site_metas_updated_by_index` (`updated_by`),
  ADD KEY `site_metas_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_index` (`created_by`),
  ADD KEY `sliders_updated_by_index` (`updated_by`),
  ADD KEY `sliders_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_created_by_index` (`created_by`),
  ADD KEY `students_updated_by_index` (`updated_by`),
  ADD KEY `students_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendances_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `student_attendances_class_id_foreign` (`class_id`),
  ADD KEY `student_attendances_registration_id_foreign` (`registration_id`),
  ADD KEY `student_attendances_created_by_index` (`created_by`),
  ADD KEY `student_attendances_updated_by_index` (`updated_by`),
  ADD KEY `student_attendances_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `student_info_log`
--
ALTER TABLE `student_info_log`
  ADD KEY `student_info_log_student_id_foreign` (`student_id`),
  ADD KEY `student_info_log_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD UNIQUE KEY `student_subjects_registration_id_subject_id_unique` (`registration_id`,`subject_id`),
  ADD KEY `student_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `st_subjects_log`
--
ALTER TABLE `st_subjects_log`
  ADD KEY `st_subjects_log_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_created_by_index` (`created_by`),
  ADD KEY `subjects_updated_by_index` (`updated_by`),
  ADD KEY `subjects_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `subject_history`
--
ALTER TABLE `subject_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_created_by_index` (`created_by`),
  ADD KEY `subjects_updated_by_index` (`updated_by`),
  ADD KEY `subjects_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_profiles_created_by_index` (`created_by`),
  ADD KEY `teacher_profiles_updated_by_index` (`updated_by`),
  ADD KEY `teacher_profiles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD KEY `teacher_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `teacher_subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_created_by_index` (`created_by`),
  ADD KEY `testimonials_updated_by_index` (`updated_by`),
  ADD KEY `testimonials_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_by_index` (`created_by`),
  ADD KEY `users_updated_by_index` (`updated_by`),
  ADD KEY `users_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD KEY `users_permissions_user_id_foreign` (`user_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `users_permissions_created_by_index` (`created_by`),
  ADD KEY `users_permissions_updated_by_index` (`updated_by`),
  ADD KEY `users_permissions_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_created_by_index` (`created_by`),
  ADD KEY `user_roles_updated_by_index` (`updated_by`),
  ADD KEY `user_roles_deleted_by_index` (`deleted_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_sliders`
--
ALTER TABLE `about_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account_sectors`
--
ALTER TABLE `account_sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_metas`
--
ALTER TABLE `app_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `class_profiles`
--
ALTER TABLE `class_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `exam_rules`
--
ALTER TABLE `exam_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `i_classes`
--
ALTER TABLE `i_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `i_class_history`
--
ALTER TABLE `i_class_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `result_combines`
--
ALTER TABLE `result_combines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `result_publish`
--
ALTER TABLE `result_publish`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `section_history`
--
ALTER TABLE `section_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_metas`
--
ALTER TABLE `site_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subject_history`
--
ALTER TABLE `subject_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `employee_attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`);

--
-- Constraints for table `exam_rules`
--
ALTER TABLE `exam_rules`
  ADD CONSTRAINT `exam_rules_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `exam_rules_combine_subject_id_foreign` FOREIGN KEY (`combine_subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_rules_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `exam_rules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `marks_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `marks_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `registrations_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `registrations_old_registration_id_foreign` FOREIGN KEY (`old_registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `registrations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `results_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `results_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `result_combines`
--
ALTER TABLE `result_combines`
  ADD CONSTRAINT `result_combines_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `result_combines_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `result_combines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD CONSTRAINT `result_publish_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `result_publish_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `result_publish_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`);

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `student_attendances_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `student_info_log`
--
ALTER TABLE `student_info_log`
  ADD CONSTRAINT `student_info_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_info_log_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `student_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `st_subjects_log`
--
ALTER TABLE `st_subjects_log`
  ADD CONSTRAINT `st_subjects_log_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`);

--
-- Constraints for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD CONSTRAINT `teacher_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `teacher_subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
