-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2021 at 08:10 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sasapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_sas`
--

CREATE TABLE `about_sas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_sas`
--

INSERT INTO `about_sas` (`id`, `status`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'WHY SaaS APPLICATION?', '<p>SaS Application solutions enable your business to operate at the forefront of software development, management, operation and utilization.</p>', '2020-09-04 14:02:44', '2020-09-10 08:26:41'),
(2, 1, 'How does my company engage with SaaS APPLICATION?', '<p>You can request a quotation or simply browse our our solutions/applications offering to determine which solution/application will help in the satifaction of your business requirement.&nbsp;</p>', '2020-09-04 14:03:07', '2021-04-03 21:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `status`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `facebook`, `twitter`, `linkedin`) VALUES
(1, 1, NULL, 'bizdev@sasapplication.com', '+609-318-0571', '<p>309 Fellowship Road, East Gate Center, Suite 200, Mount Laurel, NJ 08054</p>', '2020-09-03 01:28:01', '2021-04-03 14:02:08', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `status`, `heading`, `sub_heading`, `photo`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'SMARTCARE - Clinic', '<p>Comprehensive Clinic and Hospital Management Solution</p>', '-5f47f84c0c3a4.jpg', '#', '2020-08-27 09:35:51', '2020-08-27 12:47:10'),
(2, 1, 'CashBox', '<p>cashBOX is cloud based Point of Sales (POS) system. It is very simple, user friendly, eye catching user interface, 0% error rate. A complete solution that is designed to help SMB&#39;s create a run a successful digita..</p>\r\n\r\n<ul>\r\n	<li>Multiple Shop Management</li>\r\n	<li>User Administration</li>\r\n	<li>Supplier Management</li>\r\n	<li>Customer Management</li>\r\n	<li>Product Management</li>\r\n	<li>Purchasing Management</li>\r\n	<li>Return &amp; Damage Management</li>\r\n	<li>Sales Management</li>\r\n	<li>Accounts Management</li>\r\n	<li>Reporting</li>\r\n</ul>', 'CashB-5f47d3fa99b6a.jpg', 'https://www.cashboxglobal.com/', '2020-08-27 09:40:42', '2021-04-03 13:03:26'),
(3, 1, 'Soft Academia', '<p>SoftAcademia is a comprehensive educational institution management solution that addresses all the major needs of an educational institution. This solution is designed to deliver and provide the key functionalities th..</p>\r\n\r\n<ul>\r\n	<li>REGULAR FREE UPDATES</li>\r\n</ul>\r\n\r\n<div class=\"list\">\r\n<ul>\r\n	<li>EXPORT DATA</li>\r\n</ul>\r\n</div>', 'Soft_-5f47d48a53746.jpg', 'https://www.softacademiaedu.com', '2020-08-27 09:43:07', '2020-08-27 14:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `application_views`
--

CREATE TABLE `application_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `application_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_views`
--

INSERT INTO `application_views` (`id`, `status`, `application_id`, `name`, `price`, `duration`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'SUBCRIPTION', '2500', '/mo', NULL, '2020-08-30 10:24:11', '2021-04-03 18:51:33'),
(2, 1, '1', 'BUY', '35000', NULL, '<p>A comprehensive healthcare information management solution which supports and augments all the major information management requirements of health facilities and organizations.&nbsp;This solution is designed to deliver and provide the key functionalities that are necessary for todays healthcare facilities and organization to plan, manage, and make decisions&nbsp;in to today&#39;s ever evolving health information management requirements.&nbsp;</p>', '2020-08-30 10:24:32', '2021-04-03 21:15:23'),
(3, 1, '2', 'SUBCRIPTION', '149.99', '/mo', '<div class=\"features-list\">\r\n<ul>\r\n	<li>Multiple Shop Management</li>\r\n	<li>User Administration</li>\r\n	<li>Supplier Management</li>\r\n	<li>Customer Management</li>\r\n	<li>Product Management</li>\r\n	<li>Purchasing Management</li>\r\n	<li>Return &amp; Damage Management</li>\r\n	<li>Sales Management</li>\r\n	<li>Accounts Management</li>\r\n	<li>Reporting</li>\r\n</ul>\r\n</div>', '2020-08-30 10:25:33', '2020-08-30 10:52:40'),
(4, 1, '2', 'BUY', '2500', NULL, '<div class=\"features-list\">\r\n<ul>\r\n	<li>Multiple Shop Management</li>\r\n	<li>User Administration</li>\r\n	<li>Supplier Management</li>\r\n	<li>Customer Management</li>\r\n	<li>Product Management</li>\r\n	<li>Purchasing Management</li>\r\n	<li>Return &amp; Damage Management</li>\r\n	<li>Sales Management</li>\r\n	<li>Accounts Management</li>\r\n	<li>Reporting</li>\r\n</ul>\r\n</div>', '2020-08-30 10:26:17', '2020-08-30 10:26:17'),
(5, 1, '3', 'SUBCRIPTION', '1400', '/mo', '<div class=\"features-list\">\r\n<ul>\r\n	<li><span style=\"font-size:12px\">REGULAR FREE UPDATES</span></li>\r\n	<li><span style=\"font-size:12px\">EXPORT DATA IN PDF</span></li>\r\n	<li><span style=\"font-size:12px\">STUDENT FEES MANAGEMENT</span></li>\r\n	<li><span style=\"font-size:12px\">CLASS ROUTINE SCHEDULE</span></li>\r\n	<li><span style=\"font-size:12px\">CHART &amp; GRAPH ANALYSIS IN FEES</span></li>\r\n	<li><span style=\"font-size:12px\">TRANSPORT MANAGEMENT</span></li>\r\n	<li><span style=\"font-size:12px\">LIBRARY MANAGEMENT</span></li>\r\n	<li><span style=\"font-size:12px\">SIBLING MANAGEMENT</span></li>\r\n</ul>\r\n</div>', '2020-08-30 10:27:19', '2020-08-30 10:53:00'),
(6, 1, '3', 'BUY', '25000', NULL, '<div class=\"features-list\">\r\n<ul>\r\n	<li>PRINT RECORDS</li>\r\n	<li>MANUAL PAYMENT</li>\r\n	<li>PROJECTS ONLINE</li>\r\n	<li>CODEIGNITER FRAMEWORK</li>\r\n	<li>EASY CUSTOMIZATION</li>\r\n	<li>HOME WORK DOCUMENT</li>\r\n	<li>EXAM MARKS MANAGEMENT</li>\r\n	<li>INTERNAL MESSAGING</li>\r\n	<li>CLASS-SECTION</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>', '2020-08-30 10:28:00', '2020-08-30 10:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `status`, `heading`, `sub_heading`, `feature`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Game Score - IoS and Android Enabled', '<div class=\"clearfix\">\r\n<p>Doing a great job and achieving the desired end result is our primary motivation. With over 8+ years of professional web experience; we understand that real business goals requires a tapestry of on-brand design, functional development, lead generation channels, user experience tailoring and conversion optimization couched in solid strategy. Let&#39;s work together!</p>\r\n</div>', '<ul>\r\n	<li>Mailchimp</li>\r\n	<li>Paypal</li>\r\n	<li>Vimeo</li>\r\n	<li>W3 Total Cache</li>\r\n</ul>', 'Game_-5f49474bca80f.png', '2020-08-28 12:05:00', '2020-08-28 12:05:00'),
(2, 1, 'Game Score2 - IoS and Android Enabled', '<div class=\"clearfix\">\r\n<p>Our IaaS solutions enable you purchase resources on-demand and as-needed instead of having to buy.Our IaaS solutions enable you purchase resources on-demand and as-needed instead of having to buy.Our IaaS solutions enable you purchase resources on-demand and as-needed instead of having to buy.Our IaaS solutions enable you purchase resources on-demand and as-needed instead of having to buy.</p>\r\n</div>', '<ul>\r\n	<li>All in One SEO Pack</li>\r\n	<li>Amazon</li>\r\n	<li>Contact Form 7</li>\r\n	<li>Facebook</li>\r\n</ul>', 'Game_-5f4947f2d755a.jpg', '2020-08-28 12:07:48', '2020-08-28 12:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `apps_views`
--

CREATE TABLE `apps_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `apps_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps_views`
--

INSERT INTO `apps_views` (`id`, `status`, `apps_id`, `name`, `price`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Basic', '300', '<div class=\"features-list\">\r\n<ul>\r\n	<li>Mailchimp</li>\r\n	<li>Paypal</li>\r\n	<li>Vimeo</li>\r\n	<li>W3 Total Cache</li>\r\n	<li>WooCommerce</li>\r\n	<li>WordPress SEO by Yoast</li>\r\n	<li>Youtube</li>\r\n</ul>\r\n</div>', '2020-08-28 13:03:04', '2020-08-28 13:03:04'),
(2, 1, '1', 'Standard', '100', '<ul>\r\n	<li>Mailchimp</li>\r\n	<li>Paypal</li>\r\n	<li>Vimeo</li>\r\n	<li>W3 Total Cache</li>\r\n	<li>WooCommerce</li>\r\n	<li>WordPress SEO by Yoast</li>\r\n	<li>Youtube</li>\r\n</ul>', '2020-08-28 13:06:35', '2020-08-28 13:06:35'),
(3, 1, '1', 'Premium', '200', '<ul>\r\n	<li>Mailchimp</li>\r\n	<li>Paypal</li>\r\n	<li>Vimeo</li>\r\n	<li>W3 Total Cache</li>\r\n	<li>WooCommerce</li>\r\n	<li>WordPress SEO by Yoast</li>\r\n	<li>Youtube</li>\r\n</ul>', '2020-08-28 13:07:44', '2020-08-28 13:07:44'),
(4, 1, '2', 'Basic', '150', '<div class=\"features-list\">\r\n<ul>\r\n	<li>All in One SEO Pack</li>\r\n	<li>Amazon</li>\r\n	<li>Contact Form 7</li>\r\n	<li>Facebook</li>\r\n	<li>Getresponse</li>\r\n	<li>Gravity Forms</li>\r\n	<li>Instagram</li>\r\n</ul>\r\n</div>', '2020-08-28 13:09:13', '2020-08-28 13:09:13'),
(5, 1, '2', 'Standard', '250', '<div class=\"features-list\">\r\n<ul>\r\n	<li>All in One SEO Pack</li>\r\n	<li>Amazon</li>\r\n	<li>Contact Form 7</li>\r\n	<li>Facebook</li>\r\n	<li>Getresponse</li>\r\n	<li>Gravity Forms</li>\r\n	<li>Instagram</li>\r\n</ul>\r\n</div>', '2020-08-28 13:09:50', '2020-08-28 13:09:50'),
(6, 1, '2', 'Premium', '300', '<div class=\"features-list\">\r\n<ul>\r\n	<li>All in One SEO Pack</li>\r\n	<li>Amazon</li>\r\n	<li>Contact Form 7</li>\r\n	<li>Facebook</li>\r\n	<li>Getresponse</li>\r\n	<li>Gravity Forms</li>\r\n	<li>Instagram</li>\r\n</ul>\r\n</div>', '2020-08-28 13:10:30', '2020-08-28 13:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `status`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fully Managed Cloud Based Applications & Environments', '<ul>\r\n	<li>Cloud Based Solutions For Forward Looking Organizations</li>\r\n	<li>Accounting-General Business</li>\r\n	<li>Analytics &amp; BI Enablement</li>\r\n	<li>Customer Relationship Management</li>\r\n	<li>and many more solutions&nbsp;</li>\r\n</ul>', '2020-09-04 13:13:44', '2020-09-10 08:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `category_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `status`, `category_id`, `heading`, `sub_heading`, `author`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Multi-Tier High Capacity  PCAP Analytics', '<h2 style=\"font-style:italic\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#333e48\"><em>NetData has the most&nbsp;comprehensive TCP analytics in the industry. It&nbsp;reconstructs, measures and characterizes all transactions, including requests without responses.&nbsp; It enable you to:</span></span></span></h2>\r\n\r\n<ul>\r\n	<li style=\"text-align:left\">Fully parses all the Application messages</li>\r\n	<li style=\"text-align:left\">Carries extensive state information including SQL statements with the thousands of cursors established in each database session</li>\r\n	<li style=\"text-align:left\">Associate the database transactions with particular user transactions</li>\r\n	<li style=\"text-align:left\">Combine all aspects of a multi-tiered application</li>\r\n	<li style=\"text-align:left\">Pinpoint exactly where in the application chain a problem occurred</li>\r\n	<li style=\"text-align:left\">Analyze Information that is garnered simply from PCAP files&nbsp;</li>\r\n	<li style=\"text-align:left\">No system agent is neededModel different network conditions to determine how latency and bandwidth might affect end user performance. &nbsp;</li>\r\n</ul>', 'Admin', '-5f5202f944668.jpg', '2020-08-30 13:07:00', '2020-09-04 14:56:59'),
(2, 1, '2', 'How to Monetize your IoT initiative', '<h2 style=\"font-style:italic\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong><span style=\"color:#2c3e50\"><em>UNLOCKING REAL REVENUE POTENTIAL FROM YOUR IoT INITIATIVE</em></span></strong></span></span></h2>\r\n\r\n<p>As organisations move from pilots and trials into larger scale deployment, monetisation of the Internet of Things (IoT) is&nbsp;&nbsp;being given far greater attention. That attention critically must cut across the entire business and engage all stakeholders&nbsp;because IoT monetisation means complete business transformation that will turn traditional business models on their&nbsp;head, turning products into services. Early cost saving projects are a red herring; the real IoT deal is IoT transformation.</p>', 'Admin', '-5f52030caae0c.jpg', '2020-08-30 13:07:45', '2020-09-04 13:04:12'),
(3, 1, '3', 'Analytics and Business Intelligence (BI) Enablement', '<h2 style=\"font-style:italic\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This&nbsp; document will&nbsp;provide CloudFectiv&rsquo;s high level Solution Vision &ndash; <em>Analytics and Business&nbsp; Intelligence (BI) Enablement</em> as it relates to the development of present day business solutions:</span></span></h2>\r\n\r\n<p><strong>CloudFectiv&nbsp;</strong>offers an Analytics and Business Intelligence (BI) Enablement solution which includes:<strong><em>&nbsp;Near-Real-time Data Integration, Socialization &amp; Consumption, leveraging CloudFectiv data and information management&nbsp;tool-kit</em></strong><em>)</em>&nbsp;that will enable companies to: &nbsp;</p>\r\n\r\n<ul>\r\n	<li>Leverage the full power of a scalable architecture with actionable, scalable data lakes with managed ingestion and metadata management.</li>\r\n	<li>Improved data visibility, reliability, and quality to reduce time-to-insight.</li>\r\n	<li>Protection and Safeguard sensitive data conformant with regulatory compliance requirements.</li>\r\n	<li>Foster a data-driven business through self-service data discovery and preparation.</li>\r\n</ul>\r\n\r\n<p>Our team consists of highly qualified domain experts coupled with advanced technical experts utilizing the latest technological breakthroughs. We bring to the CUSTOMER the highest business value and a solid return on investment in an adaptive and collaborative ecosystem.</p>', 'Admin', '-5f520322de71e.jpg', '2020-08-30 13:08:22', '2020-09-04 13:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE `blogs_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`id`, `status`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Network Performance Monitoring', '2020-08-30 12:27:56', '2020-08-30 12:27:56'),
(2, 1, 'IoT Enablement', '2020-08-30 12:28:22', '2020-08-30 12:28:22'),
(3, 1, 'Analytics & BI Enablement', '2020-08-30 12:28:39', '2020-08-30 12:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `status`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'Category 1', '<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">IT+Administration Solutions</span><br />\r\n<a href=\"https://cashboxglobal.com/\" target=\"_blank\"><u><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Accounting Solutions</span></span></u></a><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Business Management Solutions</span><br />\r\n<u><a href=\"https://barthabahok.com/login\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Collaboration &amp; Productivity Solutions</span></span></a></u><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Operations &amp; Supply Chain Solutions</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Human Resources Solutions</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Data &amp; Information Mgt. Solutions</span><br />\r\n<u><a href=\"https://brandszone.com.bd/\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">eCommerce Solutions</span> </span></a></u></span></p>', '2020-08-26 14:10:12', '2020-09-10 09:59:14'),
(2, 1, 'Category 2', '<p><span style=\"font-size:16px\"><u><a href=\"https://epaymaker.com/\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Finance Solutions</span></span></a></u><br />\r\n<u><a href=\"https://vpos.sasgeneral.com/login\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Customer Service&nbsp;Solutions</span></span></a></u><br />\r\n<u><a href=\"https://sitelock.com/\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Cybersecurity&nbsp;Solutions</span></span></a></u><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Healthcare Solutions</span><br />\r\n<u><a href=\"https://softacademiaedu.com/\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Education Solutions</span></span></a></u><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Mobile Applications</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Web-Containers</span></span></p>', '2020-08-26 14:13:47', '2020-09-10 09:41:08'),
(3, 1, 'Category 3', '<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Identity Management Solutions</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">DevOps Solutions</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Retail Management Solutions</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Analytics &amp; BI Enablement Solutions</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">AI+ Machine Learning Solutions</span><br />\r\n<u><a href=\"https://projectbloc.io\" target=\"_blank\"><span style=\"color:#3498db\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Blockchain Solutions</span></span></a></u><br />\r\n<u><span style=\"font-family:Arial,Helvetica,sans-serif\"><a href=\"https://infrascale.com/\" target=\"_blank\"><span style=\"color:#3498db\">Data Protection &amp; Storage</span></a></span></u></span></p>', '2020-08-26 14:14:20', '2020-09-10 09:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `chechkout_forms`
--

CREATE TABLE `chechkout_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cloud_baseds`
--

CREATE TABLE `cloud_baseds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cloud_baseds`
--

INSERT INTO `cloud_baseds` (`id`, `status`, `heading`, `sub_heading`, `icon`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'MACHINE LEARNING', '<p>Robust solutions and methods that will enable organizations create algorithms capable of learning through data, without programming explicit routines or rules.</p>', 'MACHI-5f4cb8a374486.png', 'MACHI-5f4cb8a17673c.jpeg', '2020-08-31 02:45:23', '2020-08-31 02:45:23'),
(2, 1, 'ADVANCED AI', '<p>Advanced AI systems and solutions that will enable forward looking companies to create and manage patterns and attitudes</p>', 'ADVAN-5f4cc09e4885d.png', 'ADVAN-5f4cc09d3c0e9.jpeg', '2020-08-31 03:19:26', '2020-08-31 03:42:35'),
(3, 1, 'solenoid', '<p>A lighting fast implementation of solenoid</p>', 'solen-5f4cc1339be83.png', 'solen-5f4cc132f4086.jpg', '2020-08-31 03:21:55', '2020-08-31 03:21:55'),
(4, 1, 'GITLAB', '<p>Shorten development cycles and innovate faster with reliability through DevOps automation</p>', 'GITLA-5f4cc1df9f0a9.png', 'GITLA-5f4cc1df23fcc.png', '2020-08-31 03:24:47', '2020-08-31 03:24:47'),
(5, 1, 'CLOUDBEES', '<p>CloudBees Jenkins Distribution provides development teams with a highly dependable</p>', '-5f4cc2cf01403.png', '-5f4cc2ce42ea2.jpg', '2020-08-31 03:28:19', '2020-08-31 03:43:19'),
(6, 1, 'DATA MINING', '<p>Tools and solutions that will enable forward looking organizations to examine large volumes of data in order to generate and gain actionable insights.</p>', 'DATA_-5f4cc33f5ca9f.png', 'DATA_-5f4cc33e7e966.png', '2020-08-31 03:30:39', '2020-08-31 03:43:40'),
(7, 1, 'DATA INTEGRATION', '<p>Robust solutions and systems that will enable forward looking organization to connect combine and publish data residing in different sources, providing data consumers users with a unified view of these data sets.</p>', 'DATA_-5f4cc3c680bb1.png', 'DATA_-5f4cc3c5a9009.png', '2020-08-31 03:32:54', '2020-08-31 03:44:03'),
(8, 1, 'DATA QUALITY ASSESSMENT & MONITORING', '<p>Solutions and systems that will enable organizations to scientifically process and statistically evaluate data in order to determine whether the data sets meet the quality required for projects or business processes and are of the right type and quantity to be able to support their intended use.</p>', 'DATA_-5f4cc41a6f591.png', 'DATA_-5f4cc419c3914.jpg', '2020-08-31 03:34:18', '2020-08-31 03:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `status`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(9, 1, 'DhoNkKtAsGzf', 'burnspercival18@gmail.com', '2214818889', 'yFehEfrRpuqxgm', '2020-09-04 06:14:41', '2020-09-04 06:14:41'),
(10, 1, 'iMQIFBHzhko', 'burnspercival18@gmail.com', '6616686771', 'zlPowAnOYUL', '2020-09-04 06:15:33', '2020-09-04 06:15:33'),
(11, 1, 'Gregorydog', 'yourmail@gmail.com', '83539317613', 'Hello. And Bye.', '2020-09-08 20:24:21', '2020-09-08 20:24:21'),
(12, 1, 'ArthurKib', 'kurbatakifev1987957akp@inbox.ru', '81575199353', 'Nvdfjhdficj efiuwdiwrhfduehfjei kfksdjaksdhsjfhwkjf https://mail.ru/?ddjfsjfuwfw', '2020-09-16 18:18:26', '2020-09-16 18:18:26'),
(13, 1, 'ArthurKib', 'kurbatakifev1987957akp@inbox.ru', '82965789169', 'Nvdfjhdficj efiuwdiwrhfduehfjei kfksdjaksdhsjfhwkjf https://mail.ru/?ddjfsjfuwfw', '2020-09-16 18:18:30', '2020-09-16 18:18:30'),
(14, 1, 'ArthurKib', 'kurbatakifev1987957akp@inbox.ru', '81971173898', 'Nvdfjhdficj efiuwdiwrhfduehfjei kfksdjaksdhsjfhwkjf https://mail.ru/?ddjfsjfuwfw', '2020-09-16 18:18:32', '2020-09-16 18:18:32'),
(15, 1, 'ArthurKib', 'kurbatakifev1987957akp@inbox.ru', '82521952573', 'Nvdfjhdficj efiuwdiwrhfduehfjei kfksdjaksdhsjfhwkjf https://mail.ru/?ddjfsjfuwfw', '2020-09-16 18:18:33', '2020-09-16 18:18:33'),
(16, 1, 'ArthurKib', 'kurbatakifev1987957akp@inbox.ru', '88467198658', 'Nvdfjhdficj efiuwdiwrhfduehfjei kfksdjaksdhsjfhwkjf https://mail.ru/?ddjfsjfuwfw', '2020-09-16 18:18:35', '2020-09-16 18:18:35'),
(17, 1, 'Нeу hоt guy! Nоw I\'m in уоur сitу аnd I wаnt to hаvе fun, I rеаllу love sеx: http://freeurlredirect.com/3d7ni', 'imsolonimy@hotmail.com', '88832735476', 'Hеy hot guу! Now I\'m in yоur сity and I rеаllу want to hаvе fun, I rеallу lоve sеx: https://darknesstr.com/37h76', '2020-09-20 14:36:04', '2020-09-20 14:36:04'),
(18, 1, 'Нeу hоt guy! Nоw I\'m in уоur сitу аnd I wаnt to hаvе fun, I rеаllу love sеx: http://freeurlredirect.com/3d7ni', 'kovacova.januska@gmail.com', '87524568614', 'Hеy hot guу! Now I\'m in yоur сity and I rеаllу want to hаvе fun, I rеallу lоve sеx: https://darknesstr.com/37h76', '2020-09-20 14:36:07', '2020-09-20 14:36:07'),
(19, 1, 'Нeу hоt guy! Nоw I\'m in уоur сitу аnd I wаnt to hаvе fun, I rеаllу love sеx: http://freeurlredirect.com/3d7ni', 'jellermell@aol.com', '89742964467', 'Hеy hot guу! Now I\'m in yоur сity and I rеаllу want to hаvе fun, I rеallу lоve sеx: https://darknesstr.com/37h76', '2020-09-20 14:36:10', '2020-09-20 14:36:10'),
(20, 1, 'Нeу hоt guy! Nоw I\'m in уоur сitу аnd I wаnt to hаvе fun, I rеаllу love sеx: http://freeurlredirect.com/3d7ni', 'slaveali@gmail.com', '81217172867', 'Hеy hot guу! Now I\'m in yоur сity and I rеаllу want to hаvе fun, I rеallу lоve sеx: https://darknesstr.com/37h76', '2020-09-20 14:36:12', '2020-09-20 14:36:12'),
(21, 1, 'Нeу hоt guy! Nоw I\'m in уоur сitу аnd I wаnt to hаvе fun, I rеаllу love sеx: http://freeurlredirect.com/3d7ni', 'oscars1982@hotmail.com', '82746247399', 'Hеy hot guу! Now I\'m in yоur сity and I rеаllу want to hаvе fun, I rеallу lоve sеx: https://darknesstr.com/37h76', '2020-09-20 14:36:19', '2020-09-20 14:36:19'),
(22, 1, 'mMVzcRCpfXQ', 'initiegentnb@gmail.com', '3375543260', 'HEsvJcuQC', '2020-09-27 02:35:54', '2020-09-27 02:35:54'),
(23, 1, 'OJnQFSPRGXrClZEq', 'initiegentnb@gmail.com', '6857534054', 'PRryJUoNzuTEB', '2020-09-27 02:36:00', '2020-09-27 02:36:00'),
(24, 1, 'UpQNdEJCR', 'poundtinccentsub871@gmail.com', '5093759612', 'BLtZekgOGmcd', '2020-10-03 09:05:58', '2020-10-03 09:05:58'),
(25, 1, 'MXPhadcCojn', 'poundtinccentsub871@gmail.com', '7323435934', 'thliyDGkdU', '2020-10-03 09:06:00', '2020-10-03 09:06:00'),
(26, 1, 'VNEDwZPJWIsdgk', 'noshimorinamidara@gmail.com', '4721007050', 'UWiQfZbqPrR', '2020-10-06 22:52:31', '2020-10-06 22:52:31'),
(27, 1, 'CGcglXDyHvLjQw', 'noshimorinamidara@gmail.com', '9821458545', 'NqLjoCheGHgpRMx', '2020-10-06 22:52:34', '2020-10-06 22:52:34'),
(28, 1, 'PIQneriyfZVABT', 'inintatoov@gmail.com', '4299518418', 'pXvnLihm', '2020-10-16 00:14:16', '2020-10-16 00:14:16'),
(29, 1, 'TeDGPLIrfsdVAijz', 'inintatoov@gmail.com', '3996234603', 'RGeXbBSu', '2020-10-16 00:14:20', '2020-10-16 00:14:20'),
(30, 1, 'ONLINE VERDIENEN VON 9758 EURO IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: http://xsle.net/3gixy', 'philippkluge95@web.de', '87282897811', 'PASSIVES EINKOMMEN IM INTERNET VOR 8956 EUR AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES HAUS KAUFEN: https://links.wtf/VJT3', '2020-10-16 07:34:24', '2020-10-16 07:34:24'),
(31, 1, 'ONLINE VERDIENEN VON 9758 EURO IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: http://xsle.net/3gixy', 'bo-bob@t-online.de', '86992169234', 'PASSIVES EINKOMMEN IM INTERNET VOR 8956 EUR AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES HAUS KAUFEN: https://links.wtf/VJT3', '2020-10-16 07:34:26', '2020-10-16 07:34:26'),
(32, 1, 'ONLINE VERDIENEN VON 9758 EURO IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: http://xsle.net/3gixy', 'gosltd@vodafone.de', '88256133717', 'PASSIVES EINKOMMEN IM INTERNET VOR 8956 EUR AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES HAUS KAUFEN: https://links.wtf/VJT3', '2020-10-16 07:34:29', '2020-10-16 07:34:29'),
(33, 1, 'ONLINE VERDIENEN VON 9758 EURO IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: http://xsle.net/3gixy', 'neuhaeusler95@hotmail.de', '89964521737', 'PASSIVES EINKOMMEN IM INTERNET VOR 8956 EUR AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES HAUS KAUFEN: https://links.wtf/VJT3', '2020-10-16 07:34:31', '2020-10-16 07:34:31'),
(34, 1, 'ONLINE VERDIENEN VON 9758 EURO IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: http://xsle.net/3gixy', 'lukaswolframm@web.de', '89672287565', 'PASSIVES EINKOMMEN IM INTERNET VOR 8956 EUR AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES HAUS KAUFEN: https://links.wtf/VJT3', '2020-10-16 07:34:33', '2020-10-16 07:34:33'),
(35, 1, 'ONLINE VERDIENEN VOR 3757 EUR IN DER WOCHE - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: http://asq.kr/PwwOlQBidpmg', 'busseypenguins@gmail.com', '82279126464', 'ONLINE VERDIENEN VON 7766 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://gmy.su/:z2cub', '2020-10-18 07:37:52', '2020-10-18 07:37:52'),
(36, 1, 'ONLINE VERDIENEN VOR 3757 EUR IN DER WOCHE - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: http://asq.kr/PwwOlQBidpmg', 'matt.mcgraw@steemer.com', '87977178117', 'ONLINE VERDIENEN VON 7766 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://gmy.su/:z2cub', '2020-10-18 07:37:55', '2020-10-18 07:37:55'),
(37, 1, 'ONLINE VERDIENEN VOR 3757 EUR IN DER WOCHE - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: http://asq.kr/PwwOlQBidpmg', 'gordeprasad@gmail.com', '85763532146', 'ONLINE VERDIENEN VON 7766 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://gmy.su/:z2cub', '2020-10-18 07:37:57', '2020-10-18 07:37:57'),
(38, 1, 'ONLINE VERDIENEN VOR 3757 EUR IN DER WOCHE - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: http://asq.kr/PwwOlQBidpmg', 'mpratt@netcom.ca', '85457114354', 'ONLINE VERDIENEN VON 7766 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://gmy.su/:z2cub', '2020-10-18 07:37:59', '2020-10-18 07:37:59'),
(39, 1, 'ONLINE VERDIENEN VOR 3757 EUR IN DER WOCHE - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: http://asq.kr/PwwOlQBidpmg', 'pnn@europe.com', '83687986937', 'ONLINE VERDIENEN VON 7766 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://gmy.su/:z2cub', '2020-10-18 07:38:01', '2020-10-18 07:38:01'),
(40, 1, 'PASSIVES EINKOMMEN ONLINE VOR 5067 EUR IN DER WOCHE - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: http://freeurlredirect.com/3jssp', 'starbuckscoffee1@live.co.uk', '89422138481', 'PASSIVES EINKOMMEN ONLINE VON 8055 EUR AM TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://slimex365.com/3gqcu', '2020-10-23 17:33:23', '2020-10-23 17:33:23'),
(41, 1, 'PASSIVES EINKOMMEN ONLINE VOR 5067 EUR IN DER WOCHE - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: http://freeurlredirect.com/3jssp', 'shania194udainty@yahoo.co.uk', '86957298878', 'PASSIVES EINKOMMEN ONLINE VON 8055 EUR AM TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://slimex365.com/3gqcu', '2020-10-23 17:33:27', '2020-10-23 17:33:27'),
(42, 1, 'PASSIVES EINKOMMEN ONLINE VOR 5067 EUR IN DER WOCHE - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: http://freeurlredirect.com/3jssp', 'jcolquhoun@ilegroup.co.uk', '81455782621', 'PASSIVES EINKOMMEN ONLINE VON 8055 EUR AM TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://slimex365.com/3gqcu', '2020-10-23 17:33:30', '2020-10-23 17:33:30'),
(43, 1, 'PASSIVES EINKOMMEN ONLINE VOR 5067 EUR IN DER WOCHE - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: http://freeurlredirect.com/3jssp', 'kylegosnell@yahoo.com', '81964593937', 'PASSIVES EINKOMMEN ONLINE VON 8055 EUR AM TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://slimex365.com/3gqcu', '2020-10-23 17:33:32', '2020-10-23 17:33:32'),
(44, 1, 'PASSIVES EINKOMMEN ONLINE VOR 5067 EUR IN DER WOCHE - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: http://freeurlredirect.com/3jssp', 'joehinkins@yahoo.co.uk', '89554834315', 'PASSIVES EINKOMMEN ONLINE VON 8055 EUR AM TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://slimex365.com/3gqcu', '2020-10-23 17:33:33', '2020-10-23 17:33:33'),
(45, 1, 'eliseabark', 'elisejhavronja@qmall.tk', '86791646424', 'Speaking frankly, you are absolutely right. \r\nhttp://www.jedy.com', '2020-10-27 22:43:41', '2020-10-27 22:43:41'),
(46, 1, 'IKXhWNbjtqwasGHo', 'mizuruhonshi@gmail.com', '5955018823', 'MOznfPGgh', '2020-10-28 18:34:28', '2020-10-28 18:34:28'),
(47, 1, 'PASSIVES EINKOMMEN VON 5848 EURO PRO TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://28569euro.page.link/MsgZETjqf8eAa8WK9', 'kil1983@web.de', '85591916354', 'EINNAHMEN IM INTERNET VOR 3955 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://3526589euro.page.link/xRZkd4B3raxGAprJ6', '2020-10-30 07:29:13', '2020-10-30 07:29:13'),
(48, 1, 'PASSIVES EINKOMMEN VON 5848 EURO PRO TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://28569euro.page.link/MsgZETjqf8eAa8WK9', 'marion-esser@nvvonline.de', '87121256567', 'EINNAHMEN IM INTERNET VOR 3955 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://3526589euro.page.link/xRZkd4B3raxGAprJ6', '2020-10-30 07:29:15', '2020-10-30 07:29:15'),
(49, 1, 'PASSIVES EINKOMMEN VON 5848 EURO PRO TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://28569euro.page.link/MsgZETjqf8eAa8WK9', 'Gaara5689@web.de', '87515933446', 'EINNAHMEN IM INTERNET VOR 3955 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://3526589euro.page.link/xRZkd4B3raxGAprJ6', '2020-10-30 07:29:18', '2020-10-30 07:29:18'),
(50, 1, 'PASSIVES EINKOMMEN VON 5848 EURO PRO TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://28569euro.page.link/MsgZETjqf8eAa8WK9', 'pascalmoenninghoff@yahoo.de', '87965288355', 'EINNAHMEN IM INTERNET VOR 3955 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://3526589euro.page.link/xRZkd4B3raxGAprJ6', '2020-10-30 07:29:20', '2020-10-30 07:29:20'),
(51, 1, 'PASSIVES EINKOMMEN VON 5848 EURO PRO TAG - DIE BESTE INVESTITIONSMOGLICHKEIT: https://28569euro.page.link/MsgZETjqf8eAa8WK9', 'rabenvogelsklang@web.de', '89622929797', 'EINNAHMEN IM INTERNET VOR 3955 EURO AM TAG - IN EINEM MONAT KONNEN SIE SICH EIN TEURES AUTO KAUFEN: https://3526589euro.page.link/xRZkd4B3raxGAprJ6', '2020-10-30 07:29:23', '2020-10-30 07:29:23'),
(52, 1, 'PASSIVES EINKOMMEN VOR 5878 EUR AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://8523658euro.page.link/mZQ2y31C1x6T6uBP9', 'fishneck_jnr@yahoo.com', '81255674124', 'ONLINE VERDIENEN VOR 7877 EURO AM TAG - INNERHALB EINER WOCHE SIND SIE FINANZIELL UNABHANGIG: https://8569euro.page.link/oJ7xg84GqoQ3tEEp6', '2020-10-31 22:36:23', '2020-10-31 22:36:23'),
(53, 1, 'PASSIVES EINKOMMEN VOR 5878 EUR AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://8523658euro.page.link/mZQ2y31C1x6T6uBP9', 'canhaj2002@yahoo.com', '83122625759', 'ONLINE VERDIENEN VOR 7877 EURO AM TAG - INNERHALB EINER WOCHE SIND SIE FINANZIELL UNABHANGIG: https://8569euro.page.link/oJ7xg84GqoQ3tEEp6', '2020-10-31 22:36:45', '2020-10-31 22:36:45'),
(54, 1, 'PASSIVES EINKOMMEN VOR 5878 EUR AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://8523658euro.page.link/mZQ2y31C1x6T6uBP9', 'drmawson@gmail.com', '83927553199', 'ONLINE VERDIENEN VOR 7877 EURO AM TAG - INNERHALB EINER WOCHE SIND SIE FINANZIELL UNABHANGIG: https://8569euro.page.link/oJ7xg84GqoQ3tEEp6', '2020-10-31 22:36:57', '2020-10-31 22:36:57'),
(55, 1, 'RjxDOeqYzUwsrH', 'conscumiic@gmail.com', '8412106845', 'rFcuYbgZqyw', '2020-11-02 00:54:52', '2020-11-02 00:54:52'),
(56, 1, 'JwvIYKXWkUBOtM', 'conscumiic@gmail.com', '2716996157', 'eIuTDzOlAmHVofv', '2020-11-02 00:54:55', '2020-11-02 00:54:55'),
(57, 1, 'EINNAHMEN IM INTERNET VON 5758 EURO PRO TAG - KEINE BERUFSERFAHRUNG: https://856253euro.page.link/425yuheou83xqweX8', 'bgeorge@c21mm.com', '89212678219', 'PASSIVES EINKOMMEN VON 4045 EURO IN DER WOCHE - KEINE BERUFLICHEN FAHIGKEITEN: https://8569euro.page.link/fyLKm4CoKaMFWSXr5', '2020-11-02 11:40:42', '2020-11-02 11:40:42'),
(58, 1, 'EINNAHMEN IM INTERNET VON 5758 EURO PRO TAG - KEINE BERUFSERFAHRUNG: https://856253euro.page.link/425yuheou83xqweX8', 'lori-larry@comcast.net', '87182195646', 'PASSIVES EINKOMMEN VON 4045 EURO IN DER WOCHE - KEINE BERUFLICHEN FAHIGKEITEN: https://8569euro.page.link/fyLKm4CoKaMFWSXr5', '2020-11-02 11:40:44', '2020-11-02 11:40:44'),
(59, 1, 'EINNAHMEN IM INTERNET VON 5758 EURO PRO TAG - KEINE BERUFSERFAHRUNG: https://856253euro.page.link/425yuheou83xqweX8', 'crubinstein@hotmail.com', '81979835255', 'PASSIVES EINKOMMEN VON 4045 EURO IN DER WOCHE - KEINE BERUFLICHEN FAHIGKEITEN: https://8569euro.page.link/fyLKm4CoKaMFWSXr5', '2020-11-02 11:40:46', '2020-11-02 11:40:46'),
(60, 1, 'EINNAHMEN IM INTERNET VON 5758 EURO PRO TAG - KEINE BERUFSERFAHRUNG: https://856253euro.page.link/425yuheou83xqweX8', 'tamalexandra@hotmail.com', '81197914492', 'PASSIVES EINKOMMEN VON 4045 EURO IN DER WOCHE - KEINE BERUFLICHEN FAHIGKEITEN: https://8569euro.page.link/fyLKm4CoKaMFWSXr5', '2020-11-02 11:40:50', '2020-11-02 11:40:50'),
(61, 1, 'EINNAHMEN IM INTERNET VON 5758 EURO PRO TAG - KEINE BERUFSERFAHRUNG: https://856253euro.page.link/425yuheou83xqweX8', 'pjmasias@msn.com', '85325293499', 'PASSIVES EINKOMMEN VON 4045 EURO IN DER WOCHE - KEINE BERUFLICHEN FAHIGKEITEN: https://8569euro.page.link/fyLKm4CoKaMFWSXr5', '2020-11-02 11:40:51', '2020-11-02 11:40:51'),
(62, 1, 'DiksDOm', 'fah.igor@yandex.ru', '84176196338', 'https://jakjon.com/\r\n \r\nНовый рейтинг казино онлайн с быстрой моментальной выплатой и супер большой отдачей. \r\nhttps://jakjon.com/\r\n \r\nNew online casino rating with fast instant payouts and super big returns.', '2020-11-02 16:24:20', '2020-11-02 16:24:20'),
(63, 1, 'PASSIVE INCOME ONLINE BEFORE 4734 EUR IN WEEK - IN A MONTH, YOU CAN BUY YOURSELF AN EXPENSIVE HOUSE: https://onlineuniversalwork.com/3nt5k', 'issazy@msn.com', '85487596639', 'PASSIVE INCOME ON THE INTERNET BEFORE 6736 EUR IN WEEK - NO WORK EXPERIENCE: http://wunkit.com/DDYoAA', '2020-11-05 19:09:33', '2020-11-05 19:09:33'),
(64, 1, 'PASSIVE INCOME ONLINE BEFORE 4734 EUR IN WEEK - IN A MONTH, YOU CAN BUY YOURSELF AN EXPENSIVE HOUSE: https://onlineuniversalwork.com/3nt5k', 'monicastocker74@yahoo.com', '87735798663', 'PASSIVE INCOME ON THE INTERNET BEFORE 6736 EUR IN WEEK - NO WORK EXPERIENCE: http://wunkit.com/DDYoAA', '2020-11-05 19:09:36', '2020-11-05 19:09:36'),
(65, 1, 'PASSIVE INCOME ONLINE BEFORE 4734 EUR IN WEEK - IN A MONTH, YOU CAN BUY YOURSELF AN EXPENSIVE HOUSE: https://onlineuniversalwork.com/3nt5k', 'pattib@bendbroadband.com', '87796632831', 'PASSIVE INCOME ON THE INTERNET BEFORE 6736 EUR IN WEEK - NO WORK EXPERIENCE: http://wunkit.com/DDYoAA', '2020-11-05 19:09:38', '2020-11-05 19:09:38'),
(66, 1, 'PASSIVE INCOME ONLINE BEFORE 4734 EUR IN WEEK - IN A MONTH, YOU CAN BUY YOURSELF AN EXPENSIVE HOUSE: https://onlineuniversalwork.com/3nt5k', 'leabugwv@msn.com', '85828471332', 'PASSIVE INCOME ON THE INTERNET BEFORE 6736 EUR IN WEEK - NO WORK EXPERIENCE: http://wunkit.com/DDYoAA', '2020-11-05 19:09:40', '2020-11-05 19:09:40'),
(67, 1, 'PASSIVE INCOME ONLINE BEFORE 4734 EUR IN WEEK - IN A MONTH, YOU CAN BUY YOURSELF AN EXPENSIVE HOUSE: https://onlineuniversalwork.com/3nt5k', 'jgiantoni@aol.com', '89348425867', 'PASSIVE INCOME ON THE INTERNET BEFORE 6736 EUR IN WEEK - NO WORK EXPERIENCE: http://wunkit.com/DDYoAA', '2020-11-05 19:09:42', '2020-11-05 19:09:42'),
(68, 1, 'PASSIVE INCOME ONLINE BEFORE 3369 EUR PER DAY - THE BEST WAY TO MAKE MONEY ONLINE: https://jtbtigers.com/3kbp3', 'b280skix@earthlink.net', '87211238199', 'EARNING ONLINE FROM 5473 EUR IN WEEK - YOU WILL PAY OFF ALL YOUR LOANS IN A WEEK: http://wunkit.com/YCsoAA', '2020-11-07 13:31:52', '2020-11-07 13:31:52'),
(69, 1, 'PASSIVE INCOME ONLINE BEFORE 3369 EUR PER DAY - THE BEST WAY TO MAKE MONEY ONLINE: https://jtbtigers.com/3kbp3', 'a.j.kendrick@dundee.ac.uk', '86634794127', 'EARNING ONLINE FROM 5473 EUR IN WEEK - YOU WILL PAY OFF ALL YOUR LOANS IN A WEEK: http://wunkit.com/YCsoAA', '2020-11-07 13:32:02', '2020-11-07 13:32:02'),
(70, 1, 'PASSIVE INCOME ONLINE BEFORE 3369 EUR PER DAY - THE BEST WAY TO MAKE MONEY ONLINE: https://jtbtigers.com/3kbp3', 'aarnaud335@126.com', '87881332837', 'EARNING ONLINE FROM 5473 EUR IN WEEK - YOU WILL PAY OFF ALL YOUR LOANS IN A WEEK: http://wunkit.com/YCsoAA', '2020-11-07 13:32:04', '2020-11-07 13:32:04'),
(71, 1, 'PASSIVE INCOME ONLINE BEFORE 3369 EUR PER DAY - THE BEST WAY TO MAKE MONEY ONLINE: https://jtbtigers.com/3kbp3', 'briannainman28@gmail.com', '88612895725', 'EARNING ONLINE FROM 5473 EUR IN WEEK - YOU WILL PAY OFF ALL YOUR LOANS IN A WEEK: http://wunkit.com/YCsoAA', '2020-11-07 13:32:07', '2020-11-07 13:32:07'),
(72, 1, 'PASSIVE INCOME ONLINE BEFORE 3369 EUR PER DAY - THE BEST WAY TO MAKE MONEY ONLINE: https://jtbtigers.com/3kbp3', 'drmhajian@yahoo.com', '89754429718', 'EARNING ONLINE FROM 5473 EUR IN WEEK - YOU WILL PAY OFF ALL YOUR LOANS IN A WEEK: http://wunkit.com/YCsoAA', '2020-11-07 13:32:09', '2020-11-07 13:32:09'),
(73, 1, 'PASSIVES EINKOMMEN IM INTERNET VOR 9967 EURO AM TAG - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: https://352658euro.page.link/RR2uqbxK3U26HSmN8', 'spinni50@t-online.de', '84528417529', 'PASSIVES EINKOMMEN ONLINE VON 9845 EUR IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: https://3526589euro.page.link/5piBa5eKVZ9mB8c19', '2020-11-10 08:02:15', '2020-11-10 08:02:15'),
(74, 1, 'PASSIVES EINKOMMEN IM INTERNET VOR 9967 EURO AM TAG - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: https://352658euro.page.link/RR2uqbxK3U26HSmN8', 'thorbencool99@hotmail.de', '89182219967', 'PASSIVES EINKOMMEN ONLINE VON 9845 EUR IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: https://3526589euro.page.link/5piBa5eKVZ9mB8c19', '2020-11-10 08:02:20', '2020-11-10 08:02:20'),
(75, 1, 'PASSIVES EINKOMMEN IM INTERNET VOR 9967 EURO AM TAG - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: https://352658euro.page.link/RR2uqbxK3U26HSmN8', 'anita.lachner@gmx.ch', '81292229513', 'PASSIVES EINKOMMEN ONLINE VON 9845 EUR IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: https://3526589euro.page.link/5piBa5eKVZ9mB8c19', '2020-11-10 08:02:24', '2020-11-10 08:02:24'),
(76, 1, 'PASSIVES EINKOMMEN IM INTERNET VOR 9967 EURO AM TAG - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: https://352658euro.page.link/RR2uqbxK3U26HSmN8', 'runi@paderborn.com', '89576134577', 'PASSIVES EINKOMMEN ONLINE VON 9845 EUR IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: https://3526589euro.page.link/5piBa5eKVZ9mB8c19', '2020-11-10 08:02:26', '2020-11-10 08:02:26'),
(77, 1, 'PASSIVES EINKOMMEN IM INTERNET VOR 9967 EURO AM TAG - SIE WERDEN ALLE IHRE KREDITE IN EINER WOCHE ZURUCKZAHLEN: https://352658euro.page.link/RR2uqbxK3U26HSmN8', 'g0ldrapp3r@web.de', '85977619533', 'PASSIVES EINKOMMEN ONLINE VON 9845 EUR IN DER WOCHE - DIE BESTE INVESTITIONSMOGLICHKEIT: https://3526589euro.page.link/5piBa5eKVZ9mB8c19', '2020-11-10 08:02:30', '2020-11-10 08:02:30'),
(78, 1, 'Evlampijrajabette', 'evlampijraja@wmail.ml', '88748368916', 'www.lilili.gq  I apologise, but this variant does not approach me. Perhaps there are still variants?', '2020-11-12 03:28:17', '2020-11-12 03:28:17'),
(79, 1, 'PASSIVES EINKOMMEN IM INTERNET VON 3048 EURO PRO TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://758965euro.page.link/cqo25WhRqop2uci2A', 'brianclement82@yahoo.ca', '81144627349', 'PASSIVES EINKOMMEN VON 9868 EURO AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://28569euro.page.link/6sKJf2ZD8gcDztnM6', '2020-11-13 08:38:57', '2020-11-13 08:38:57'),
(80, 1, 'PASSIVES EINKOMMEN IM INTERNET VON 3048 EURO PRO TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://758965euro.page.link/cqo25WhRqop2uci2A', 'gosiagemza@yahoo.co.uk', '84972129277', 'PASSIVES EINKOMMEN VON 9868 EURO AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://28569euro.page.link/6sKJf2ZD8gcDztnM6', '2020-11-13 08:39:03', '2020-11-13 08:39:03'),
(81, 1, 'PASSIVES EINKOMMEN IM INTERNET VON 3048 EURO PRO TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://758965euro.page.link/cqo25WhRqop2uci2A', 'myselftheother@yahoo.ca', '89172675966', 'PASSIVES EINKOMMEN VON 9868 EURO AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://28569euro.page.link/6sKJf2ZD8gcDztnM6', '2020-11-13 08:39:06', '2020-11-13 08:39:06'),
(82, 1, 'PASSIVES EINKOMMEN IM INTERNET VON 3048 EURO PRO TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://758965euro.page.link/cqo25WhRqop2uci2A', 'bkathryn.clarence.ac.uk@yahoo.com', '89535663625', 'PASSIVES EINKOMMEN VON 9868 EURO AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://28569euro.page.link/6sKJf2ZD8gcDztnM6', '2020-11-13 08:39:08', '2020-11-13 08:39:08'),
(83, 1, 'PASSIVES EINKOMMEN IM INTERNET VON 3048 EURO PRO TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://758965euro.page.link/cqo25WhRqop2uci2A', 'corderwashington1021@yahoo.co.uk', '84456731623', 'PASSIVES EINKOMMEN VON 9868 EURO AM TAG - IN EINEM MONAT KONNEN SIE IHREN JOB SICHER KUNDIGEN: https://28569euro.page.link/6sKJf2ZD8gcDztnM6', '2020-11-13 08:39:10', '2020-11-13 08:39:10'),
(84, 1, 'РќРµy РњachРѕ! IСЃh bin nРѕСЃh JungfrР°u, Р°bРµr iСЃh mГ¶СЃhtРµ wirkliСЃh, dass du miСЃh in dРµn Arsch ziРµhst: https://onlineuniversalwork.com/3pd93', 'sberend@gmx.de', '85554843492', 'Hallo hРµiГџer Kerl! Wenn du miСЃh auf dРµinРµm StРѕcРє ficРєРµn willst, schrРµib mir, wРѕ wir uns treffen kГ¶nnen. SСЃhrРµibe hiРµr eine NaСЃhriСЃht: https://qspark.me/NqPjJP', '2020-11-14 17:06:21', '2020-11-14 17:06:21'),
(85, 1, 'РќРµy РњachРѕ! IСЃh bin nРѕСЃh JungfrР°u, Р°bРµr iСЃh mГ¶СЃhtРµ wirkliСЃh, dass du miСЃh in dРµn Arsch ziРµhst: https://onlineuniversalwork.com/3pd93', 'peter260902@web.de', '87213589389', 'Hallo hРµiГџer Kerl! Wenn du miСЃh auf dРµinРµm StРѕcРє ficРєРµn willst, schrРµib mir, wРѕ wir uns treffen kГ¶nnen. SСЃhrРµibe hiРµr eine NaСЃhriСЃht: https://qspark.me/NqPjJP', '2020-11-14 17:06:25', '2020-11-14 17:06:25'),
(86, 1, 'РќРµy РњachРѕ! IСЃh bin nРѕСЃh JungfrР°u, Р°bРµr iСЃh mГ¶СЃhtРµ wirkliСЃh, dass du miСЃh in dРµn Arsch ziРµhst: https://onlineuniversalwork.com/3pd93', 's.Vogt@ludwigslust.de', '84395235533', 'Hallo hРµiГџer Kerl! Wenn du miСЃh auf dРµinРµm StРѕcРє ficРєРµn willst, schrРµib mir, wРѕ wir uns treffen kГ¶nnen. SСЃhrРµibe hiРµr eine NaСЃhriСЃht: https://qspark.me/NqPjJP', '2020-11-14 17:06:27', '2020-11-14 17:06:27'),
(87, 1, 'РќРµy РњachРѕ! IСЃh bin nРѕСЃh JungfrР°u, Р°bРµr iСЃh mГ¶СЃhtРµ wirkliСЃh, dass du miСЃh in dРµn Arsch ziРµhst: https://onlineuniversalwork.com/3pd93', 'labina1880cla@web.de', '86985536224', 'Hallo hРµiГџer Kerl! Wenn du miСЃh auf dРµinРµm StРѕcРє ficРєРµn willst, schrРµib mir, wРѕ wir uns treffen kГ¶nnen. SСЃhrРµibe hiРµr eine NaСЃhriСЃht: https://qspark.me/NqPjJP', '2020-11-14 17:06:28', '2020-11-14 17:06:28'),
(88, 1, 'РќРµy РњachРѕ! IСЃh bin nРѕСЃh JungfrР°u, Р°bРµr iСЃh mГ¶СЃhtРµ wirkliСЃh, dass du miСЃh in dРµn Arsch ziРµhst: https://onlineuniversalwork.com/3pd93', 'pajtim-mr.lover@hotmail.de', '87966557846', 'Hallo hРµiГџer Kerl! Wenn du miСЃh auf dРµinРµm StРѕcРє ficРєРµn willst, schrРµib mir, wРѕ wir uns treffen kГ¶nnen. SСЃhrРµibe hiРµr eine NaСЃhriСЃht: https://qspark.me/NqPjJP', '2020-11-14 17:06:36', '2020-11-14 17:06:36'),
(89, 1, 'xtNLHOzBskd', 'gatachigurami@gmail.com', '4751667746', 'bKRThqLOZngMB', '2020-11-16 10:30:46', '2020-11-16 10:30:46'),
(90, 1, 'Allison Magnuson', 'sasapplication.com@sasapplication.com', '0951 96 48 20', 'This notice is in regards to sasapplication.com / SasApplication\r\n\r\nNov 17, 2020\r\n\r\n\r\n\r\nPlease Go To:  https://domainbly.com/?web=sasapplication.com\r\n\r\n\r\nThank you.\r\n\r\n11172020003804', '2020-11-17 10:47:11', '2020-11-17 10:47:11'),
(91, 1, 'UQpXnZbLk', 'bundmigre424@gmail.com', '5471073129', 'SZuJGUxEyWfhBcHk', '2020-11-29 08:37:50', '2020-11-29 08:37:50'),
(92, 1, 'Leandro Guenther', 'leandro.guenther50@hotmail.com', '23-99-61-33', 'Good morning,\r\nI\'m ,\r\nHow are you doing regarding your Business Reviews?\r\nGoogle reviews influence purchase decisions. Online Google reviews might be what exactly a consumer needs to push them from consideration to get.\r\nhttps://frama.link/googlereviews986068', '2020-12-18 12:12:10', '2020-12-18 12:12:10'),
(93, 1, 'HenryAmuse', 'jr.allende@gmail.com', '89036732400', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. \r\nLink - http://18twink.com/cgi-bin/out.cgi?req=1&t=60t%3F&url=https://hdredtube3.mobi/btsmart', '2020-12-19 09:31:25', '2020-12-19 09:31:25'),
(94, 1, 'HGDbWnzsVMZB', 'naomicarpenter179@gmail.com', '7842871691', 'gJjMwkCt', '2020-12-31 01:17:53', '2020-12-31 01:17:53'),
(95, 1, 'JYfLoEBC', 'naomicarpenter179@gmail.com', '2709452834', 'DOUtCzNyjGMmRTl', '2020-12-31 01:17:55', '2020-12-31 01:17:55'),
(96, 1, 'Peter Gate', 'no-replyNus@gmail.com', '81227715946', 'Good Day \r\n \r\nSEO Rivals not playing the game fair and square? \r\nNow you can fight back. \r\n \r\nNegative SEO, to make their SEO be ruined \r\nhttps://blackhat.to/ \r\n \r\nContact us for any queries: \r\nsupport@blackhat.to', '2020-12-31 17:35:57', '2020-12-31 17:35:57'),
(97, 1, 'iUZeblQg', 'gowens228@gmail.com', '3764406569', 'rLPjCDNhJVTnkXmG', '2021-01-03 20:47:19', '2021-01-03 20:47:19'),
(98, 1, 'RFGdzBmwvZ', 'gowens228@gmail.com', '6303493143', 'rpmlzeDitMwyEI', '2021-01-03 20:47:23', '2021-01-03 20:47:23'),
(99, 1, 'Collin Brabyn', 'collin.brabyn63@msn.com', '724-347-0276', 'Good morning people at sasapplication.com,\r\nHope you’re great. \r\nI\'m ,\r\nHope you’re excellent, and that the company is profitable. \r\n\r\nDo you want to impress your customers? We can add your organization logo on a Lamborghini!\r\nhttps://onlineuniversalwork.com/companylogo176789\r\nRegards,', '2021-01-14 02:57:54', '2021-01-14 02:57:54'),
(100, 1, 'gJQzAEeyNmtUZ', 'pamelarichard10072@gmail.com', '2384851363', 'SrQTBqiVbnCu', '2021-01-18 13:06:22', '2021-01-18 13:06:22'),
(101, 1, 'GCvIzJQRXMVAk', 'pamelarichard10072@gmail.com', '7574414403', 'RVhWEgKyzDTqG', '2021-01-18 13:06:24', '2021-01-18 13:06:24'),
(102, 1, 'Williemae Hyett', 'hyett.williemae@googlemail.com', '476 77 425', 'Hi \r\nHope you’re well, and that the company is good.\r\nLook at this tool to help you get new clients, asap out of your website visitors. \r\nhttps://slimex365.com/backlinks146935\r\nWith best regards,', '2021-01-23 15:14:10', '2021-01-23 15:14:10'),
(103, 1, 'Lorie Simms', 'lorie.simms@gmail.com', '041 428 57 11', 'Good morning \r\nHope you’re well, and that the company is good.\r\nThe only service you\'ll want to improve your business:\r\nhttps://jtbtigers.com/backlinks173813\r\nWith best regards,\r\n\r\nP.S.May you have thousands of new clients this year.', '2021-01-29 01:14:24', '2021-01-29 01:14:24'),
(104, 1, 'ToEcHrlmpObg', 'dannieducs96@gmail.com', '9289304271', 'LCbaOwuDqiBTZk', '2021-02-02 16:49:08', '2021-02-02 16:49:08'),
(105, 1, 'FAtHjVNEbkqP', 'dannieducs96@gmail.com', '8417152282', 'tBVTXehw', '2021-02-02 16:49:11', '2021-02-02 16:49:11'),
(106, 1, 'David Song', 'noreply@googlemail.com', '89666699516', 'Hello, \r\nOur Investors wishes to invest in your company by offering debt financing in any viable Project presented by your Management,Kindly send your Business Project Presentation Plan Asap. \r\n \r\ndavidsong2030@gmail.com \r\n \r\nRegards, \r\nMr.David Song', '2021-02-12 17:38:17', '2021-02-12 17:38:17'),
(107, 1, 'uZyhfjxLmse', 'bergnaumhmezg07@gmail.com', '6371505812', 'DBLKuIxcPphJlkYe', '2021-02-15 09:52:14', '2021-02-15 09:52:14'),
(108, 1, 'RXNjUBnueIKDA', 'bergnaumhmezg07@gmail.com', '3090371989', 'hnBlYasgxR', '2021-02-15 09:52:17', '2021-02-15 09:52:17'),
(109, 1, 'PatricksoN', 'cfbobsinbobx@bestbuysteesss.ru', '89734342166', '<br> \r\n<br> \r\n<a href=\"https://google.com?mmmbnbnbm\"> <img src=\"https://1.bp.blogspot.com/-J5OYitPTZ_4/X-ZGf_FtA_I/AAAAAAAAAZs/1udOpuxRlTwRlAw2OX1REdd62uxlRHzLgCLcBGAsYHQ/s1024/06.jpg?qw=lv\r\n\" /> </a> \r\n<br> \r\n<br> \r\nsasapplication.com,vvvvccccbfffffrrrreeeeeee \r\n<br> \r\n<br>', '2021-02-21 08:02:07', '2021-02-21 08:02:07'),
(110, 1, 'Tammara Neilsen', 'tammara.neilsen@googlemail.com', '06-22575435', 'Do you want to find out how you can build your own online business selling stuff for commission payments? Check out: http://bit.ly/make--money-with-affiliate-marketing', '2021-02-24 08:05:52', '2021-02-24 08:05:52'),
(111, 1, 'Albertina Lodewyckx', 'albertina@stardatagroup.com', 'NA', 'Do you need more clients? \r\n\r\nWe have amazing databases starting at $9.99 until the end of the Month!\r\n\r\nVisit us at StarDataGroup.com', '2021-02-24 15:51:19', '2021-02-24 15:51:19'),
(112, 1, 'rZKHwCqxAefLbTQ', 'flrlyons@gmail.com', '9525617420', 'LOtlTeMwKZ', '2021-02-25 01:18:37', '2021-02-25 01:18:37'),
(113, 1, 'uiAKTXOBVHkxsM', 'traceyclarke9036@gmail.com', '2494699499', 'PSGogTsau', '2021-02-28 14:09:44', '2021-02-28 14:09:44'),
(114, 1, 'tnIRJaeZXx', 'traceyclarke9036@gmail.com', '2365589459', 'yszgMnNqielK', '2021-02-28 14:09:47', '2021-02-28 14:09:47'),
(115, 1, 'Lance Muscio', 'lance.muscio@gmail.com', '0325 9563833', 'How would you like to promote your website for free? Have a look at this: http://bit.ly/free-ad-submissions', '2021-03-02 23:13:22', '2021-03-02 23:13:22'),
(116, 1, 'Henry Filson', 'filson.henry@gmail.com', '416-651-3024', 'Tired of paying for clicks and getting lousy results? Now you can post your ad on 5000 ad sites and it\'ll cost you less than $40. Never pay for traffic again! \r\n\r\nGet more info by visiting: http://bit.ly/zero--cost--traffic', '2021-03-07 02:05:48', '2021-03-07 02:05:48'),
(117, 1, 'lAiUEXndZ', 'dorisrfbib00@gmail.com', '4124245226', 'FGYLeNdb', '2021-03-08 20:01:23', '2021-03-08 20:01:23'),
(118, 1, 'Archie Pegues', 'wordpres.s.2.0.021988+homograf@gmail.com', '708-519-9499', 'Hi There,\r\n\r\nAre you utilising Wordpress/Woocommerce or maybe maybe you intend to work with it as time goes on ? We currently provide much more than 2500 premium plugins along with themes to download : https://shortso.xyz/lWleV\r\n\r\nThank You,\r\n\r\nArchie', '2021-03-11 20:03:15', '2021-03-11 20:03:15'),
(119, 1, 'Dixie High', 'high.dixie17@gmail.com', '71-76-95-64', 'Advertise your online business, local shop/service or blog for totally free. This post examines some cool online tools to use to get lots of free ad exposure for your business: https://bit.ly/5waystoadvertisefree', '2021-03-12 07:52:36', '2021-03-12 07:52:36'),
(120, 1, 'Kitty Hedditch', 'kitty@bestlocaldata.com', 'NA', 'Hello,\r\n\r\nBestLocalData.com has a special package you get any group of databases for $49 or $249 for all 16 databases and unlimited emails for a year(Domain, IP, Dashboard included).\r\n\r\nYou can purchase it on BestLocalData.com and see samples if you are interested.', '2021-03-24 17:05:25', '2021-03-24 17:05:25'),
(121, 1, 'CTqGUDxf', 'johncameron796@gmail.com', '9340770321', 'uoilVGnRE', '2021-03-25 00:21:40', '2021-03-25 00:21:40'),
(122, 1, 'uOZLdIXxYySWNCgs', 'johncameron796@gmail.com', '7394664454', 'PIAxjpCOgYW', '2021-03-25 00:21:42', '2021-03-25 00:21:42'),
(123, 1, 'Maybell D\'Albertis', 'dalbertis.maybell@gmail.com', '466 51 478', 'Would you like completely free advertising for your website? Take a look at this: http://bit.ly/advertise-your-site-for-free', '2021-03-25 02:40:40', '2021-03-25 02:40:40'),
(124, 1, 'IyoiXNWAbOw', 'botharombelq@gmail.com', '9002284465', 'VPwFraxHiLSnOku', '2021-04-01 03:10:08', '2021-04-01 03:10:08'),
(125, 1, 'lUgJHFEO', 'botharombelq@gmail.com', '2970343439', 'sWeHObCVGDcUxZRh', '2021-04-01 03:10:11', '2021-04-01 03:10:11'),
(126, 1, 'JesusBix', 'bakhrashkandaurov1988861gib@inbox.ru', '83963597227', 'sasapplication.com oiotugorvygivbjfguefiugehiwjfeoswifehgidjwifhge', '2021-04-02 16:55:27', '2021-04-02 16:55:27'),
(127, 1, 'LirryBousa', 'yugtyghy@gmail.com', '89551988218', 'loli girl PT¦¦¦HC C¦¦¦P offline forum \r\n \r\n===>>> https://biturl.top/BnIVna <<<===', '2021-04-02 18:55:23', '2021-04-02 18:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `status`, `name`, `position`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kevin Jackson', 'Vice President, FREEWORLD BRAND, LLC', '<p>SaS Application helped us create, launch and maintain our online marketplaces - FreeWorldImports (https://freeworldimports.com) and FreeWorldExports (https://freeworldexports.com). It was a pleasure to work with the SaaS Application&nbsp;team.</p>', 'Kevin-5f4d3aa244c31.png', '2020-08-31 12:00:02', '2020-09-10 08:29:51'),
(2, 1, 'Donnovan Allen', 'CTO & Vice President, VRDUSA', '<p>SaS Application hosting solution is the backbone behind the services and solutions provided by Virtual Route Distribution USA, Inc. - VRDUSA (https://vrdusa.com). We could not do what we do without the SaS Application team.</p>', 'Donno-5f4d3acddeb10.jpeg', '2020-08-31 12:00:45', '2020-08-31 12:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `differents`
--

CREATE TABLE `differents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `differents`
--

INSERT INTO `differents` (`id`, `status`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'CLOUD BASED DATA QUALITY ASSESSMENT AND MONITORING', '456.333', '2020-08-31 02:09:42', '2020-08-31 02:09:42'),
(2, 1, 'CLOUD BASED ANALYTICS & BI ENABLEMENT', '1000.00', '2020-08-31 02:10:31', '2020-08-31 02:10:31'),
(3, 1, 'CLOUD BASED APPLICATIONS & SOLUTIONS', '4563.00', '2020-08-31 02:11:26', '2020-08-31 02:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_solutions`
--

CREATE TABLE `featured_solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_solutions`
--

INSERT INTO `featured_solutions` (`id`, `status`, `heading`, `sub_heading`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'SOFTACADEMIA-EDUCATION MANAGEMENT SOLUTION', '<p>A comprehensive educational institution management solution that addresses all the major needs of k-12 student educational information management. This solution is designed to deliver and provide the key functionalities that are necessary to meet emerging and evolving educational information management requirements.</p>', 'SOFTA-5f4cccfd53c9d.jpg', '2020-08-31 04:12:13', '2021-04-03 20:29:21'),
(2, 1, 'NETWORK POST PACKET CAPTURE ANALYSIS', '<p>This solution features Measure IT NetData which is considered to be the most penetrating and microscopic decoding, dissection &amp; analysis of Post Packet Capture flow activity available in today&#39;s market. Functionality include: Session Stiching, Stateful SQL Analysis, Model Queues and Packet Shaping, Network Modeling, TCP Sequence Gap Detection, L7 Message Sequence Gap Detection (e.g. MQTT, FIX), Multi-Tier Transaction Analysis.</p>', 'NETWO-5f4ccdcfdcc31.png', '2020-08-31 04:15:44', '2020-08-31 04:15:44'),
(4, 1, 'SMARTCARE - HEALTHCARE INFORMATION MANAGEMENT SOLUTION', '<p>A comprehensive healthcare information management solution which supports and augments all the major information management requirements of health facilities and organizations.&nbsp;This solution is designed to deliver and provide the key functionalities that are necessary for todays healthcare facilities and organization to plan, manage, and make decisions in to todays ever evolving health information management environment.&nbsp;<br />\r\n&nbsp;</p>', 'SMART-60689b826ad89.jpg', '2021-04-03 20:44:50', '2021-04-03 20:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `footer_ones`
--

CREATE TABLE `footer_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_ones`
--

INSERT INTO `footer_ones` (`id`, `status`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'ABOUT SAS APPLICATION', '<p><span style=\"color:#bdc3c7\">Our SaaS portal features cloud based software solutions to include: Analytics, Artificial Intelligence, Collaboration, Customer Service, Finance, Human Resources, IT+Administration, Internet of Things, Marketing, Operations + Supply Chain, Productivity and Sales. These solutions can be leveraged by companies / organizations across all verticals/industries to include: Agriculture, Education, Entertainment, Distribution+Logistics, Financial Services, Government, Healthcare, Manufacturing, Professional Services, Retail and Telecommunications.</span></p>', '2020-09-03 01:50:29', '2020-09-10 09:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `footer_threes`
--

CREATE TABLE `footer_threes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_threes`
--

INSERT INTO `footer_threes` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Software Solutions', '#', '2020-09-03 02:05:35', '2020-09-04 04:22:45'),
(2, 'SoftAcademia', 'https://sasapplication.com/webapplication_view/3', '2020-09-03 02:06:15', '2021-04-03 21:21:54'),
(3, 'CashBox', 'https://sasapplication.com/webapplication_view/2', '2020-09-03 02:06:29', '2021-04-03 21:21:08'),
(4, 'SMARTCARE - Clinic', '#', '2020-09-03 02:06:47', '2020-09-03 02:06:47'),
(5, 'Laajim', '#', '2020-09-10 09:08:06', '2020-09-10 09:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `footer_twos`
--

CREATE TABLE `footer_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_twos`
--

INSERT INTO `footer_twos` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Solutions & Services', '#', '2020-09-03 01:57:17', '2020-09-10 07:49:59'),
(2, 'Analytics & BI Enablement', '#', '2020-09-03 01:58:45', '2020-09-10 08:52:45'),
(3, 'Cloud Based Applications & Environments', '#', '2020-09-03 01:59:10', '2020-09-10 08:54:11'),
(4, 'Data Protection and Storage', '#', '2020-09-03 01:59:39', '2020-09-10 08:59:56'),
(5, 'Collaboration & Productivity Solutions', '#', '2020-09-03 02:00:09', '2020-09-10 08:57:32'),
(6, 'Cybersecurity Solutions', '#', '2020-09-03 02:00:18', '2020-09-10 09:01:01'),
(7, 'Data & Information Management', '#', '2020-09-10 09:02:11', '2020-09-10 09:02:11'),
(8, 'Networking & Development Tools', '#', '2020-09-10 09:03:47', '2020-09-10 09:03:47'),
(9, 'Mobile & Hybrid Applications', '#', '2020-09-10 09:05:26', '2020-09-10 09:05:26'),
(10, 'Web Services', '#', '2020-09-10 09:06:20', '2020-09-10 09:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `status`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'WHAT DO WE OFFER?', NULL, '2020-09-02 02:27:12', '2020-09-10 07:59:54'),
(2, 1, 'POPULAR SOLUTIONS', NULL, '2020-09-02 02:27:36', '2020-09-10 08:01:30'),
(3, 1, 'STUNNING SAAS AND IAAS SOLUTIONS', '<p>Our IaaS and SaaS solutions enable you purchase resources and solutions on-demand and as-needed instead of having to buy.</p>', '2020-09-02 02:28:08', '2021-04-03 21:12:17'),
(4, 1, 'SaaS APPLICATION SOLUTION CATEGORIES', '<p>Find the right solution for your business needs</p>', '2020-09-02 02:28:55', '2020-09-10 08:31:52'),
(5, 1, 'WHAT MAKES US DIFFERENT?', '<p>Complete Cloud based solutions related to Analytics and BI Enablement, IoT Enablement, IT Infrastructure Transformation, General computing and Cloud base application development packages.</p>', '2020-09-02 02:29:37', '2020-09-02 02:29:37'),
(6, 1, 'A LEADING PROVIDER OF CLOUD BASED DEVELOPMENT PLATFORMS', '<p>In collaboration with our partners, we are able to provide cloud developers with the ability to create, test and execute application and software code &ndash; entirely on cloud-based development tools and infrastructure.</p>', '2020-09-02 02:30:01', '2020-09-02 02:30:01'),
(7, 1, 'FEATURED SOLUTIONS - EASY STARTERS', '<p>Take advantage of our featured solutions - They are agressively priced.</p>', '2020-09-02 02:30:28', '2020-09-10 08:05:15'),
(8, 1, 'IT INFRASTRUCTURE TRANSFORMATION SERVICE PLANS', '<p>Let us help with your Cloud Adoption and Migration plans</p>', '2020-09-02 02:30:51', '2020-09-02 02:30:51'),
(9, 1, 'BLOG POST', '<p>Review our BLOGS and FREQUENTLY ASKED QUESTIONS</p>', '2020-09-02 02:31:12', '2020-09-10 07:57:17'),
(10, 1, 'Frequently Asked Questions', NULL, '2020-09-02 02:31:24', '2020-09-02 02:31:24'),
(11, 1, 'WHAT OUR CUSTOMERS ARE SAYING', NULL, '2020-09-02 02:31:39', '2020-09-10 08:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `hostings`
--

CREATE TABLE `hostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostings`
--

INSERT INTO `hostings` (`id`, `status`, `heading`, `price`, `sub_heading`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shared Hosting', '3.95', '<p>Our most popular solution provideseverything you need to get started.</p>', '<div class=\"pricetable-holder-4\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>Great for a new website or blog</li>\r\n	<li>Easy-to-use customer dashboard</li>\r\n	<li>Fully managed solution</li>\r\n</ul>\r\n</div>\r\n</div>', '2020-08-28 05:25:05', '2020-08-28 05:25:05'),
(2, 1, 'VPS', '19.99', '<p>Power, control, and flexibility.Run a server the way you want.</p>', '<div class=\"pricetable-holder-4\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>Great for moderate to high traffic</li>\r\n	<li>Scalable with on-demand resources</li>\r\n	<li>Full root access for additional control</li>\r\n</ul>\r\n</div>\r\n</div>', '2020-08-28 05:26:10', '2020-08-28 05:26:10'),
(3, 1, 'Dedicated', '79.99', '<p>Dedicated hosting provides improved security and complete customization.</p>', '<div class=\"pricetable-holder-4\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>Great for websites with high traffic</li>\r\n	<li>For resource-intensive needs</li>\r\n	<li>Ultimate security and performance</li>\r\n</ul>\r\n</div>\r\n</div>', '2020-08-28 05:26:51', '2020-08-28 05:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `hosting_plans`
--

CREATE TABLE `hosting_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `hosting_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hosting_plans`
--

INSERT INTO `hosting_plans` (`id`, `status`, `hosting_id`, `name`, `price`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Basic', '3.95', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>1 Website</li>\r\n	<li>50 GB SSD Storage</li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unmetered</span></a> Bandwidth</li>\r\n	<li>Free SSL Certificate</li>\r\n	<li>Standard Performance</li>\r\n	<li>1 Included Domain</li>\r\n	<li>5 Parked Domains &nbsp;</li>\r\n	<li>25 Sub Domains</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>', '2020-09-03 13:18:17', '2020-09-03 13:19:27'),
(2, 1, '1', 'Standard', '5.95', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Websites</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> SSD Storage</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unmetered</span></a><span style=\"color:#777777\"> Bandwidth</span></li>\r\n	<li><span style=\"color:#777777\">Free SSL Certificate</span></li>\r\n	<li><span style=\"color:#777777\">Standard Performance</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Domains</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Parked Domains</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Sub Domains</span></li>\r\n	<li><span style=\"color:#777777\">Spam Experts</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-ms-mailbox\"><span style=\"color:#777777\">1 Office 365 Mailbox - Free 30 Days</span></a></li>\r\n</ul>\r\n</div>\r\n</div>', '2020-09-03 13:21:07', '2020-09-03 13:21:07'),
(3, 1, '1', 'Pro', '13.95', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Websites</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> SSD Storage</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unmetered</span></a><span style=\"color:#777777\"> Bandwidth</span></li>\r\n	<li><span style=\"color:#777777\">Free SSL Certificate</span></li>\r\n	<li><span style=\"color:#777777\">High Performance </span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Domains</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Parked Domains</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-usage-policies\"><span style=\"color:#777777\">Unlimited</span></a><span style=\"color:#777777\"> Sub Domains</span></li>\r\n	<li><span style=\"color:#777777\">2 Spam Experts</span></li>\r\n	<li><span style=\"color:#777777\">Domain Privacy + Protection</span></li>\r\n	<li><span style=\"color:#777777\">Site Backup - CodeGuard Basic</span></li>\r\n	<li><span style=\"color:#777777\">Dedicated IP</span></li>\r\n	<li><a href=\"https://sas.pashamarket.com/web-hosting/plan/1#modal-ms-mailbox\"><span style=\"color:#777777\">1 Office 365 Mailbox - Free 30 Days</span></a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>', '2020-09-03 13:22:14', '2020-09-03 13:22:14'),
(4, 1, '2', 'Standard', '19.99', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>2 Cores</li>\r\n	<li>30 GB SSD Storage</li>\r\n	<li>2 GB RAM</li>\r\n	<li>1 TB Bandwidth</li>\r\n	<li>1 IP Address</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>', '2020-09-03 13:23:32', '2020-09-03 13:23:32'),
(5, 1, '2', 'Enhanced', '29.99', '<ul>\r\n	<li>2 Cores</li>\r\n	<li>30 GB SSD Storage</li>\r\n	<li>2 GB RAM</li>\r\n	<li>1 TB Bandwidth</li>\r\n	<li>1 IP Address</li>\r\n</ul>', '2020-09-03 13:24:37', '2020-09-03 13:24:37'),
(6, 1, '2', 'Ultimate', '59.99', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>4 Cores</li>\r\n	<li>120 GB SSD Storage</li>\r\n	<li>8 GB RAM</li>\r\n	<li>3 TB Bandwidth</li>\r\n	<li>2 IP Addresses</li>\r\n</ul>\r\n</div>\r\n</div>', '2020-09-03 13:25:13', '2020-09-03 13:25:13'),
(7, 1, '3', 'Standard', '79.99', '<ul>\r\n	<li>4 cores @ 2.3 GHz</li>\r\n	<li>500GB (Mirrored) Storage</li>\r\n	<li>4 GB RAM</li>\r\n	<li>5 TB Bandwidth</li>\r\n	<li>3 IP Addresses</li>\r\n</ul>', '2020-09-03 13:26:44', '2020-09-03 13:26:44'),
(8, 1, '3', 'Enhanced', '99.99', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>4 cores @ 2.5 GHz</li>\r\n	<li>1TB (Mirrored) Storage</li>\r\n	<li>8 GB RAM</li>\r\n	<li>10 TB Bandwidth</li>\r\n	<li>4 IP Addresses</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>', '2020-09-03 13:27:14', '2020-09-03 13:27:14'),
(9, 1, '3', 'Premium', '119.99', '<div class=\"price-circle\">\r\n<div class=\"features-list\">\r\n<ul>\r\n	<li>4 cores @ 3.3 GHz</li>\r\n	<li>1TB (Mirrored) Storage</li>\r\n	<li>16 GB RAM</li>\r\n	<li>15 TB Bandwidth</li>\r\n	<li>5 IP Addresses</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>\r\n</div>', '2020-09-03 13:27:53', '2020-09-03 13:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `hosting_titles`
--

CREATE TABLE `hosting_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `banner_title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hosting_titles`
--

INSERT INTO `hosting_titles` (`id`, `status`, `banner_title`, `photo`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'Work For Digital World Make Your Life Easier ', '-5f4f69d2622de.png', NULL, NULL, '2020-09-02 03:45:57', '2020-09-02 03:45:57'),
(2, 1, 'The Perfect Place to Host Your Website', 'Which-5f4f6a3a2d6de.png', 'Which plan is right for you?', '<p>There&#39;s no one-size-fits-all solution for web hosting. So we&#39;ve got specific plans to fit your specific needs.</p>', '2020-09-02 03:47:40', '2020-09-02 03:47:40'),
(3, 1, 'Work For Digital World Make Your Life Easier', '-5f4f6a7128d37.png', NULL, NULL, '2020-09-02 03:48:34', '2020-09-02 03:48:34'),
(4, 1, 'Work For Digital World Make Your Life Easier', '-5f4f6aaa13e46.png', NULL, NULL, '2020-09-02 03:49:32', '2020-09-02 03:49:32'),
(5, 1, 'All Blogs', '-5f4f6ae6d88ac.png', NULL, NULL, '2020-09-02 03:50:33', '2020-09-02 03:50:33'),
(6, 1, 'Contact Us', '-5f4f6b08f16eb.png', NULL, NULL, '2020-09-02 03:51:06', '2020-09-02 03:51:06'),
(7, 1, 'Order Now', '-5f50df23889b8.png', NULL, NULL, '2020-09-03 06:18:45', '2020-09-03 06:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `laas_solutions`
--

CREATE TABLE `laas_solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `apps_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laas_solutions`
--

INSERT INTO `laas_solutions` (`id`, `status`, `apps_id`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'laaS Solutions', '<p>We offer Cloud infrastructure services, known as Infrastructure as a Service (IaaS) which are made of highly scalable and automated compute resources. Our IaaS solutions are fully managed cloud based applications and environments.</p>', '2020-08-31 13:36:53', '2021-04-03 19:18:51'),
(2, 1, '2', 'PaaS Solutions', '<p>Our PaaS Solutions leverages cloud computing services which eanble us to provide a platform that allow our customers to develop, run, and manage applications without the complexity of building</p>', '2020-08-31 13:37:17', '2020-08-31 13:37:17'),
(3, 1, '3', 'SaaS Solutions', '<p>Our comprehensive SaaS applications marketplace enable you to purchase state-of-the-art software applications from various categories to include: Analytics, Artificial Intelligencv, Collabora</p>', '2020-08-31 13:38:31', '2020-08-31 13:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `status`, `title`, `logo`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 'SasApplication', '-5f456b762933f.png', '-5f46b0826923e.png', '2020-06-15 09:56:29', '2020-08-26 12:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `mail_addresses`
--

CREATE TABLE `mail_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_13_131124_create_football__professionals_table', 2),
(5, '2020_06_13_142135_create_football_professionals_table', 3),
(6, '2020_06_14_174208_create_football_colleges_table', 4),
(7, '2020_06_14_180130_create_football_clubs_table', 5),
(8, '2020_06_14_184206_create_basketball_clubs_table', 6),
(9, '2020_06_14_184247_create_basketball_colleges_table', 6),
(10, '2020_06_14_184331_create_basketball_professionals_table', 6),
(11, '2020_06_14_190026_create_soccer_professionals_table', 7),
(12, '2020_06_14_190310_create_soccer_colleges_table', 7),
(13, '2020_06_14_190408_create_soccer_clubs_table', 7),
(15, '2020_06_14_192056_create_football_results_table', 8),
(16, '2020_06_14_202758_create_basketball_results_table', 9),
(17, '2020_06_14_203603_create_soccer_results_table', 10),
(20, '2020_06_15_151319_create_logos_table', 11),
(21, '2020_06_15_160101_create_banners_table', 12),
(22, '2020_06_15_193307_create_week_matches_table', 13),
(24, '2020_06_15_195514_create_week_headings_table', 14),
(25, '2020_06_15_204255_create_coming_headings_table', 15),
(26, '2020_06_15_205217_create_coming_matches_table', 16),
(29, '2020_06_16_184414_create_home_footballs_table', 17),
(30, '2020_06_16_192141_create_playing_footballs_table', 18),
(31, '2020_06_16_192747_create_playing_basketballs_table', 19),
(32, '2020_06_16_192837_create_playing_soccers_table', 19),
(33, '2020_06_16_195219_create_user_roles_table', 20),
(34, '2020_06_17_140906_create_footer_addresses_table', 21),
(35, '2020_06_17_153631_create_footer_links_table', 22),
(36, '2020_06_17_164152_create_footer_connects_table', 23),
(37, '2020_06_17_171158_create_contact_addresses_table', 24),
(38, '2020_06_17_173704_create_contact_us_table', 25),
(39, '2020_06_17_190447_create_about_us_table', 26),
(40, '2020_06_17_194058_create_all_headings_table', 27),
(42, '2020_06_17_195344_create_home_headings_table', 28),
(43, '2020_06_17_200453_create_playing_headings_table', 28),
(50, '2020_07_17_151524_create_missions_table', 29),
(51, '2020_07_17_151538_create_abouts_table', 29),
(52, '2020_07_17_161229_create_visions_table', 29),
(53, '2020_07_18_144639_create_clients_table', 30),
(54, '2020_07_18_160642_create_footers_table', 31),
(55, '2020_07_18_182900_create_product_items_table', 32),
(58, '2020_07_18_191153_create_product_adds_table', 33),
(59, '2020_07_19_104349_create_service_categories_table', 34),
(62, '2020_07_19_105303_create_service_adds_table', 35),
(64, '2020_07_19_155236_create_contact_us_table', 36),
(65, '2020_07_19_161547_create_career_messages_table', 37),
(66, '2020_07_19_191725_create_page_banners_table', 38),
(67, '2020_07_19_195100_create_single_prod_images_table', 39),
(68, '2020_07_19_201039_create_single_prod_details_table', 40),
(69, '2020_07_21_161926_create_vacancy_controllers_table', 41),
(70, '2020_07_21_163148_create_vacancy_categories_table', 42),
(71, '2020_07_21_163309_create_vacancy_adds_table', 43),
(73, '2020_07_21_212109_create_cart_msgs_table', 44),
(74, '2020_07_31_092312_create_check_outs_table', 45),
(75, '2020_07_31_100534_create_orders_table', 46),
(76, '2020_07_31_100624_create_order_details_table', 46),
(78, '2020_08_19_081431_create_checkout_forms_table', 47),
(79, '2020_08_19_145550_create_checkout_details_table', 47),
(84, '2020_08_19_161749_create_orders_table', 48),
(85, '2020_08_19_161847_create_order_details_table', 48),
(86, '2020_08_19_184502_create_units_table', 49),
(87, '2020_08_23_092710_create_supports_table', 50),
(89, '2020_08_23_105443_create_differents_table', 51),
(90, '2020_08_23_145746_create_pricings_table', 52),
(92, '2020_08_23_181153_create_contacts_table', 53),
(93, '2020_08_23_185755_create_mail_addresses_table', 54),
(96, '2020_08_24_154656_create_watches_table', 55),
(97, '2020_08_25_160054_create_footer_abouts_table', 56),
(99, '2020_08_25_162837_create_footer_others_table', 57),
(100, '2020_08_25_165547_create_footer_supports_table', 58),
(101, '2020_08_25_171644_create_footer_contacts_table', 59),
(102, '2020_08_25_183334_create_questions_table', 60),
(103, '2020_08_26_190214_create_offers_table', 61),
(105, '2020_08_26_193807_create_popular_features_table', 62),
(106, '2020_08_26_200352_create_categories_table', 63),
(107, '2020_08_27_152251_create_applications_table', 64),
(108, '2020_08_27_203159_create_hostings_table', 65),
(109, '2020_08_28_114115_create_hosting_plans_table', 66),
(112, '2020_08_28_130005_create_hosting_titles_table', 67),
(114, '2020_08_28_174744_create_apps_table', 68),
(117, '2020_08_28_184152_create_apps_views_table', 69),
(118, '2020_08_30_084922_create_services_table', 70),
(119, '2020_08_30_084959_create_service_views_table', 70),
(120, '2020_08_30_161754_create_application_views_table', 71),
(121, '2020_08_30_180540_create_blogs_table', 72),
(122, '2020_08_30_180801_create_blogs_categories_table', 72),
(123, '2020_08_31_075644_create_differents_table', 73),
(124, '2020_08_31_082906_create_cloud_baseds_table', 74),
(125, '2020_08_31_100037_create_featured_solutions_table', 75),
(126, '2020_08_31_163617_create_transformation_plans_table', 76),
(127, '2020_08_31_165636_create_questions_table', 77),
(128, '2020_08_31_174500_create_customers_table', 78),
(130, '2020_08_31_191737_create_laas_solutions_table', 79),
(131, '2020_09_02_081005_create_headers_table', 80),
(132, '2020_09_02_133937_create_contacts_table', 81),
(133, '2020_09_03_064330_create_addresses_table', 82),
(134, '2020_09_03_073416_create_footer_ones_table', 83),
(135, '2020_09_03_073935_create_footer_twos_table', 84),
(136, '2020_09_03_080043_create_footer_threes_table', 85),
(137, '2020_09_03_142012_create_chechkout_forms_table', 86),
(138, '2020_09_03_190631_create_hosting_plans_table', 87),
(139, '2020_09_04_190207_create_banners_table', 88),
(140, '2020_09_04_195402_create_about_sas_table', 89);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `status`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'ANALYTICS & BI ENABLEMENT IN THE CLOUD', '<p>With all the attention on analytics and flashy data visualization and dashboards, one area is easily forgotten is that which relates to Data Quality Assurance and Source Systems Integration Efficiencies which is the less sexy engine underneath BI, Analytics and glitzy Dashboards. We refer to this area as Analytics and BI Enablement which consists of two (2) major areas, Data Virtualization and Data Quality Assurance. Data Virtualization: enable your company to connect, combine and publish data in all its formats from all data sources within the enterprise and beyond. Northbound consumers consisting of all BI, Analytics, Visualization, Archiving, Reporting, etc are able to take advantage of these virtual data sets through a robust Data Virtualization/Abstraction layer. Via this technology and approach one is able to create a unified and connected view of all underlying data sources. Systems/applications that need to consume this data only have to interact with the abstraction/data virtualization layer which is capable of accessing the entire enterprise data sources. Our Cloud based data abstraction layer a component of CloudFectiv&#39;s Converged Data Architecture enable enterprise data architects to easily create environments for all data consumers to access the data they need and trust in near real-time, in a format they understand, utilizing any data socialization tool/device they desire - Enterprise data availability anytime, anywhere. Data Quality Assurance: Historically this has consisted of data profiling tools which are used to determine data lineage and sample patterns which utilizes a tremendous amount of manual professional services effort to comb through myriads of data objects to look for non conformant patterns and anomalies. Our Cloud based continuous and automated data quality assessment solution that defines monitoring and transformation rules, enable data driven organizations to continuously monitor data comprehensively at the value level to identify and flag source systems data when certain quality attributes violate a threshold. This disruptive approach eliminates the time consuming and costly manual process of data quality assessment and offers close to real time detection of anomalies and security threats. ...Sports Organization Revenue Enablement Solutions and Services.</p>', '2020-08-26 13:19:34', '2021-04-03 18:57:11'),
(2, 1, 'CLOUD BASED APPLICATIONS', 'CloudFectiv Cloud based applications include: SoftAcademia (Education Management Solution), SmatCARE (Clinic / Hospital Management Solution), cashBOX (Integrated Point of Sales Solution) along with applications from other leading Cloud based software solution providers.', '2020-08-26 13:23:35', '2020-08-27 03:58:59'),
(3, 1, 'NETWORK POST PACKET CAPTURE ANALYSIS', 'Featuring Measure IT - NetData the most penetrating and microscopic decoding, dissection &amp; analysis of Post Capture packet flow activity available. Solution include: Session Stitching, Stateful SQL Analysis, Model Queues and Packet Shaping, Network Modeling, TCP Sequence Gap Detection, L7 Message Sequence Gap Detection (e.g. MQTT, FIX), Multi-Tier Transaction Analysis.', '2020-08-26 13:23:59', '2020-08-27 03:59:42'),
(4, 1, 'DATA QUALITY ASSESSMENT & MONITORING', 'The Data Quality Assessment Manager (DQAM) in the Cloud guides a user through a comprehensive value-level assessment of a given data asset, thus enabling an organization to scale its data quality activities appropriately. The DQAM facilitates the data quality analyst&rsquo;s ability to competently employ advanced methods within their ﬁeld. Moreover, by facilitating the collaborative nature of both analysis and sharing of ﬁndings both internally and externally, with the broader organizational data community, the DQAM also promotes a team dynamic among the organization&rsquo;s data quality analysts. Through these two capabilities, the DQAM is capable of doing something that the largest and most expensive tools on the market have yet to accomplish&mdash;constitute a normalized and empirical method for identifying data quality anomalies, and making the process more visible and collaborative on a team and enterprise scale.', '2020-08-26 13:24:39', '2020-08-27 04:05:35'),
(5, 1, 'COLLABORATION & PRODUCTIVITY SOFTWARE', 'Office Collaboration &amp; Productivity Software from leading Cloud based software providers.', '2020-08-26 13:25:04', '2020-08-27 04:05:54'),
(6, 1, 'COMPUTE, STORAGE, NETWORKING & DEV. TOOLS', 'SOLUTIONS: Scalable Compute Services, Kubernetes: Manage Kubernetes clusters, Databases: Worry-free setup and maintenance, Storage: Simple object storage.', '2020-08-26 13:25:30', '2020-08-27 04:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `checkout_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_total` double(8,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `checkout_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popular_features`
--

CREATE TABLE `popular_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_features`
--

INSERT INTO `popular_features` (`id`, `status`, `heading`, `sub_heading`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Analytics and BI Enablement', '<ul>\r\n	<li>\r\n	<p>Solutions created and assembled for forward looking organizations</p>\r\n	</li>\r\n	<li>\r\n	<p>One of the most comprehensive library of Analytics &amp; BI enablement solutions in the Cloud</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting From $1,000</p>\r\n	</li>\r\n</ul>', '-5f529526f13c0.png', '2020-08-26 13:38:39', '2020-09-04 13:27:35'),
(2, 1, 'IT Infrastructure Transformation', '<ul>\r\n	<li>\r\n	<p>Pre-Configured Environments</p>\r\n	</li>\r\n	<li>\r\n	<p>Save time with preconfigured environments that already have all the prerequisites installed&mdash;which removes the hassle of spinning up and provisioning servers</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting From $45.66</p>\r\n	</li>\r\n</ul>', '-5f52955390337.png', '2020-08-26 13:40:05', '2020-09-04 13:28:20'),
(3, 1, 'IoT Enablement Solutions', '<ul>\r\n	<li>\r\n	<p>Common Ingestion, Scalable storage, Seamless Integration, Fast Analysis, Contextualization and Dissemination of IoT and other data.</p>\r\n	</li>\r\n	<li>\r\n	<p>Leveraging the CloudFectiv Converged Data Architecture within the cloud, enterprise architects can easily create environments for all their IoT data consumers to access the IoT data they need and trust in near-real-time, in a format they understand, utilizing any tool/device they desire &ndash; Enterprise IoT data availability anytime, anywhere</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting From $45.66</p>\r\n	</li>\r\n</ul>', '-5f52985217119.png', '2020-08-26 13:40:39', '2020-09-04 13:41:06'),
(4, 1, 'Cloud Based Development Tools', '<ul>\r\n	<li>\r\n	<p>Accelerate Cloud based app development and collaboration with PaaS, containerization, CI/CD, and more</p>\r\n	</li>\r\n	<li>\r\n	<p>Deploy pre-built applications very quickly, leverage best of breed developer tools such as CloudBees Jenkins Distribution, GitLab and others.</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting From $45.66</p>\r\n	</li>\r\n</ul>', '-5f529635472e5.png', '2020-08-26 13:41:00', '2020-09-04 13:32:06'),
(5, 1, 'Data Quality Assessment & Monitoring', '<ul>\r\n	<li>\r\n	<p>Sensitive Data Discovery (SDD)</p>\r\n	</li>\r\n	<li>\r\n	<p>Placeholder</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting From $45.66</p>\r\n	</li>\r\n</ul>', '-5f52965b62149.png', '2020-08-26 13:41:27', '2020-09-04 13:32:43'),
(6, 1, 'SMB Software Solutions', '<ul>\r\n	<li>\r\n	<p>Cloud Based Software Solutions for SMBs</p>\r\n	</li>\r\n	<li>\r\n	<p>Prescription Management Solution (PMS) Inventory and Stock Management Solution - (ISMS) Accounting Management Solution - (AMS) Clinic / Hospital Management Solution (SmartCare) School Management Software Solution - (SoftAcademia) Point of Sales System for SMB&#39;s (cashBOX) Hospitality / Restaurant Management (H/RM) Productivity &amp; Collaboration</p>\r\n	</li>\r\n	<li>\r\n	<p>Starting From $45.63</p>\r\n	</li>\r\n</ul>', '-5f5297297a32d.png', '2020-08-26 13:41:52', '2020-09-04 13:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_unit` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_two` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_three` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_four` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_five` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `status`, `name`, `price`, `code`, `category_id`, `sub_category_id`, `product_qty`, `product_unit`, `details`, `feature`, `photo`, `photo_two`, `photo_three`, `photo_four`, `photo_five`, `created_at`, `updated_at`) VALUES
(1, 1, 'Product 1', '100', '11111', '1', '3', NULL, '1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!</p>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!', '-5f3a97e52b6af.jpg', '-5f3b9f0415068.jpg', '-5f3b9f04c31b9.png', NULL, NULL, '2020-08-17 08:44:54', '2020-08-18 03:27:33'),
(2, 1, 'Product  5', '200', 'qssd', '2', '1', NULL, '2', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!</p>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!', '-5f3a983c575c1.jpg', '-5f3a983ca3c7b.jpg', '-5f3a983cc01a2.jpg', NULL, NULL, '2020-08-17 08:46:20', '2020-08-17 08:46:20'),
(3, 1, 'Product 4', '100', 'asxd', '3', '2', NULL, '1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!</p>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!', '-5f3a98a129e48.jpg', '-5f3a98a187e46.jpg', '-5f3a98a1abc86.jpg', NULL, NULL, '2020-08-17 08:48:01', '2020-08-17 08:48:01'),
(4, 1, 'Product 3', '300', 'ssss', '1', '3', NULL, '2', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!</p>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!', '-5f3a98cb7d3f5.jpg', '-5f3a98cbf1b59.jpg', '-5f3a98cc3f008.jpg', NULL, NULL, '2020-08-17 08:48:44', '2020-08-17 08:48:44'),
(5, 1, 'Product 2', '100', 'sfaaa', '2', '1', NULL, '1', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!</p>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!', '-5f3a990763b77.jpg', '-5f3a99079065a.jpg', '-5f3a9907b19a2.jpg', NULL, NULL, '2020-08-17 08:49:43', '2020-08-17 08:49:43'),
(6, 1, 'Product 6', '200', '1ffsaef', '3', '5', NULL, '2', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!</p>', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione iusto modi animi quisquam, cum porro hic cupiditate aperiam quaerat saepe!', '-5f3a992c8bc95.jpg', '-5f3a992ce0051.jpg', '-5f3a992d13302.jpg', NULL, NULL, '2020-08-17 08:50:21', '2020-08-17 08:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `status`, `heading`, `sub_heading`, `created_at`, `updated_at`) VALUES
(1, 1, 'What type of solutions are available from SaaS APPLICATION?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:03:57', '2020-09-10 08:41:45'),
(2, 1, 'Does SaaS APPLICATION provide IoT Solutions?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:04:14', '2020-09-10 08:42:47'),
(3, 1, 'How Does one engage with SaaS APPLICATION?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:04:33', '2020-09-10 08:44:08'),
(4, 1, 'Can I customize  SaaS APPLICATION solutions?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:04:47', '2020-09-10 08:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `heading` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `status`, `heading`, `sub_heading`, `feature`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Live Score - The Ultimate Gaming Solution', '<p>Coming Soon !&nbsp; &nbsp;--&nbsp;&nbsp;Interested parties are encouraged to contact us via email : <u><strong>bizdev@sasapplication.com</strong></u></p>', NULL, 'Live_-5f4b7d83cace0.jpg', '2020-08-30 04:20:54', '2021-04-03 22:20:47'),
(2, 1, 'PSD To Wordpress Solutions', '<p>Interested parties are encouraged to contact us via email : <u><strong>bizdev@sasapplication.com</strong></u></p>', NULL, 'PSD_T-5f4b7de6930e1.jpg', '2020-08-30 04:22:31', '2021-04-03 22:20:06'),
(3, 1, 'PSD To HTML Solutions', '<p>Interested parties are encouraged to contact us via email : <u><strong>bizdev@sasapplication.com</strong></u></p>', NULL, 'PSD_T-5f4b7e189fb78.jpg', '2020-08-30 04:23:21', '2021-04-03 22:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `service_views`
--

CREATE TABLE `service_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `service_id` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_views`
--

INSERT INTO `service_views` (`id`, `status`, `service_id`, `name`, `price`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'package1', '111', NULL, '2020-08-30 04:26:48', '2020-08-30 04:26:48'),
(2, 1, '2', 'package2', '111', NULL, '2020-08-30 04:27:05', '2020-08-30 04:27:05'),
(3, 1, '3', 'package3', '111', NULL, '2020-08-30 04:27:28', '2020-08-30 04:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `status`, `name`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Video Conferencing', '<p>The solution enables student and teachers to interact directly. Such interaction can be one-on-one sessions or class like formats where multiple students connect and interact with the teacher live.</p>', '2020-08-23 03:54:32', '2020-08-23 03:54:32'),
(2, 1, 'On Demand Instruction/Learning', '<p>Course based repository which enables on-demand instruction/learning models- Ideal for learners with other demands on their time.</p>', '2020-08-23 03:54:56', '2020-08-23 03:54:56'),
(3, 1, 'Fixed Schedule', '<p>Supports a delivery model where students are required to visit a specific virtual location at a set time and place. This gives students from anywhere in the world to connect and interact in a class setting.</p>', '2020-08-23 03:55:19', '2020-08-23 03:55:19'),
(4, 1, 'Hybrid Instruction Model', '<p>Supports a blended instructions model where students can learn the same lesson in real-time (i.e. synchronous distance learning) where some students are physically present with the instructor while others are learning remotely</p>', '2020-08-23 03:55:42', '2020-08-23 03:55:42'),
(5, 1, 'Multi-Device Compatibility', '<p>Institutions are able to deliver educational content to their students on computers, tablets, smart televisions, phones and other mobile devices.</p>', '2020-08-23 03:56:09', '2020-08-23 03:56:09'),
(6, 1, 'Direct Student Teacher Communication', '<p>Leveraging best of breed technologies, we are able to facilitate direct communications between students and teachers,student to student in multiple locations/settings</p>', '2020-08-23 03:56:30', '2020-08-23 03:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `transformation_plans`
--

CREATE TABLE `transformation_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transformation_plans`
--

INSERT INTO `transformation_plans` (`id`, `status`, `name`, `price`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dedicated Server - 2xCPU Xenon (24MB Cache)', '99.99', '<ul>\r\n	<li>32GB ECC RAM</li>\r\n	<li>50GB SSD Space</li>\r\n	<li>Unlimited Bandwidth</li>\r\n</ul>', '2020-08-31 10:41:19', '2020-08-31 10:41:19'),
(2, 1, 'Cloud Server - 2xCPU Dual Core', '79.99', '<ul>\r\n	<li>32GB ECC RAM</li>\r\n	<li>50GB SSD Space</li>\r\n	<li>Unlimited Bandwidth</li>\r\n</ul>', '2020-08-31 10:42:00', '2020-08-31 10:42:00'),
(3, 1, 'Virtual Server - 2xCPU Xenon L3 12MB Cache', '49.99', '<ul>\r\n	<li>32GB ECC RAM</li>\r\n	<li>50GB SSD Space</li>\r\n	<li>Unlimited Bandwidth</li>\r\n</ul>', '2020-08-31 10:42:34', '2020-08-31 10:42:34'),
(4, 1, 'Dedicated Server - 2xCPU Xenon (24MB Cache)', '599.99', '<ul>\r\n	<li>72GB ECC RAM</li>\r\n	<li>500GB SSD Space</li>\r\n	<li>Unlimited Bandwidth</li>\r\n</ul>', '2020-08-31 10:43:04', '2020-08-31 10:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `status`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kg', '2020-08-19 12:59:40', '2020-08-19 12:59:40'),
(2, 1, 'Ton', '2020-08-19 13:00:45', '2020-08-19 13:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '5',
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `status`, `email`, `email_verified_at`, `role_id`, `photo`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'hsblco', NULL, 1, 'hsblco_admin@gmail.com', NULL, 1, 'user_3_1592587370.png', '$2y$10$HW2RotK4P4FRpKos0sibYezLV28qF2B2Y6fhr/dMrcxuIILFrxgpq', NULL, '2020-06-19 11:22:50', '2020-06-19 11:22:50'),
(4, 'Nipa', NULL, 1, 'nipa@gmail.com', NULL, 1, 'user_4_1598287274.png', '$2y$10$BaokI7neb0ShaP/jlyun2e2ukzDEWFpa.WfLGodgSI4xJbMA3tsJO', NULL, '2020-08-24 10:41:14', '2020-08-24 10:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 1, '2019-10-27 22:00:00', NULL),
(2, 'Admin', 1, '2019-10-27 23:00:00', NULL),
(3, 'Author', 1, '2019-10-28 00:00:00', NULL),
(4, 'Editor', 1, '2019-10-27 23:00:00', NULL),
(5, 'Subscriber', 1, '2019-10-28 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_sas`
--
ALTER TABLE `about_sas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_views`
--
ALTER TABLE `application_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps_views`
--
ALTER TABLE `apps_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chechkout_forms`
--
ALTER TABLE `chechkout_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloud_baseds`
--
ALTER TABLE `cloud_baseds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `differents`
--
ALTER TABLE `differents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_solutions`
--
ALTER TABLE `featured_solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_ones`
--
ALTER TABLE `footer_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_threes`
--
ALTER TABLE `footer_threes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_twos`
--
ALTER TABLE `footer_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostings`
--
ALTER TABLE `hostings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hosting_plans`
--
ALTER TABLE `hosting_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hosting_titles`
--
ALTER TABLE `hosting_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laas_solutions`
--
ALTER TABLE `laas_solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_addresses`
--
ALTER TABLE `mail_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `popular_features`
--
ALTER TABLE `popular_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_views`
--
ALTER TABLE `service_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transformation_plans`
--
ALTER TABLE `transformation_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `user_roles_role_name_unique` (`role_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_sas`
--
ALTER TABLE `about_sas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_views`
--
ALTER TABLE `application_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apps_views`
--
ALTER TABLE `apps_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chechkout_forms`
--
ALTER TABLE `chechkout_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cloud_baseds`
--
ALTER TABLE `cloud_baseds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `differents`
--
ALTER TABLE `differents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_solutions`
--
ALTER TABLE `featured_solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer_ones`
--
ALTER TABLE `footer_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_threes`
--
ALTER TABLE `footer_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `footer_twos`
--
ALTER TABLE `footer_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hostings`
--
ALTER TABLE `hostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hosting_plans`
--
ALTER TABLE `hosting_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hosting_titles`
--
ALTER TABLE `hosting_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `laas_solutions`
--
ALTER TABLE `laas_solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mail_addresses`
--
ALTER TABLE `mail_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popular_features`
--
ALTER TABLE `popular_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_views`
--
ALTER TABLE `service_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transformation_plans`
--
ALTER TABLE `transformation_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
