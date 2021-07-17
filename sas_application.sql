-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2020 at 08:25 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sas_application`
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
(1, 1, 'WHY SAS APPS', '<p>SaS Application solutions enable your business to operate at the forefront of software development, management, operation and utilization</p>', '2020-09-04 14:02:44', '2020-09-04 14:02:44'),
(2, 1, 'How does my company engage with SASAPPS?', '<p>You can request a quotation or simply browse our our solutions/applications offering to determine which solution/application will help in the satifaction of your business requirement</p>', '2020-09-04 14:03:07', '2020-09-04 14:03:07');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `status`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'bizdev@sasapplication.com', '+609-318-0571', '<p>309 Fellowship Road, East Gate Center, Suite 200, Mount Laurel, NJ 08054</p>', '2020-09-03 01:28:01', '2020-09-03 01:32:43');

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
(2, 1, 'CashBox', '<p>cashBOX is cloud based Point of Sales (POS) system. It is very simple, user friendly, eye catching user interface, 0% error rate. A complete solution that is designed to help SMB&#39;s create a run a successful digita..</p>\r\n\r\n<ul>\r\n	<li>Multiple Shop Management</li>\r\n	<li>User Administration</li>\r\n	<li>Supplier Management</li>\r\n	<li>Customer Management</li>\r\n	<li>Product Management</li>\r\n	<li>Purchasing Management</li>\r\n	<li>Return &amp; Damage Management</li>\r\n	<li>Sales Management</li>\r\n	<li>Accounts Management</li>\r\n	<li>Reporting</li>\r\n</ul>', 'CashB-5f47d3fa99b6a.jpg', 'https://www.cashboxglobal.com/', '2020-08-27 09:40:42', '2020-08-27 12:48:16'),
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
(1, 1, '1', 'SUBCRIPTION', '1000', '/mo', NULL, '2020-08-30 10:24:11', '2020-08-30 10:52:24'),
(2, 1, '1', 'BUY', '200', NULL, NULL, '2020-08-30 10:24:32', '2020-08-30 10:24:32'),
(3, 1, '2', 'SUBCRIPTION', '149.99', '/mo', '<div class=\"features-list\">\r\n<ul>\r\n	<li>Multiple Shop Management</li>\r\n	<li>User Administration</li>\r\n	<li>Supplier Management</li>\r\n	<li>Customer Management</li>\r\n	<li>Product Management</li>\r\n	<li>Purchasing Management</li>\r\n	<li>Return &amp; Damage Management</li>\r\n	<li>Sales Management</li>\r\n	<li>Accounts Management</li>\r\n	<li>Reporting</li>\r\n</ul>\r\n</div>', '2020-08-30 10:25:33', '2020-08-30 10:52:40'),
(4, 1, '2', 'BUY', '2,500', NULL, '<div class=\"features-list\">\r\n<ul>\r\n	<li>Multiple Shop Management</li>\r\n	<li>User Administration</li>\r\n	<li>Supplier Management</li>\r\n	<li>Customer Management</li>\r\n	<li>Product Management</li>\r\n	<li>Purchasing Management</li>\r\n	<li>Return &amp; Damage Management</li>\r\n	<li>Sales Management</li>\r\n	<li>Accounts Management</li>\r\n	<li>Reporting</li>\r\n</ul>\r\n</div>', '2020-08-30 10:26:17', '2020-08-30 10:26:17'),
(5, 1, '3', 'SUBCRIPTION', '1,400', '/mo', '<div class=\"features-list\">\r\n<ul>\r\n	<li><span style=\"font-size:12px\">REGULAR FREE UPDATES</span></li>\r\n	<li><span style=\"font-size:12px\">EXPORT DATA IN PDF</span></li>\r\n	<li><span style=\"font-size:12px\">STUDENT FEES MANAGEMENT</span></li>\r\n	<li><span style=\"font-size:12px\">CLASS ROUTINE SCHEDULE</span></li>\r\n	<li><span style=\"font-size:12px\">CHART &amp; GRAPH ANALYSIS IN FEES</span></li>\r\n	<li><span style=\"font-size:12px\">TRANSPORT MANAGEMENT</span></li>\r\n	<li><span style=\"font-size:12px\">LIBRARY MANAGEMENT</span></li>\r\n	<li><span style=\"font-size:12px\">SIBLING MANAGEMENT</span></li>\r\n</ul>\r\n</div>', '2020-08-30 10:27:19', '2020-08-30 10:53:00'),
(6, 1, '3', 'BUY', '25,000', NULL, '<div class=\"features-list\">\r\n<ul>\r\n	<li>PRINT RECORDS</li>\r\n	<li>MANUAL PAYMENT</li>\r\n	<li>PROJECTS ONLINE</li>\r\n	<li>CODEIGNITER FRAMEWORK</li>\r\n	<li>EASY CUSTOMIZATION</li>\r\n	<li>HOME WORK DOCUMENT</li>\r\n	<li>EXAM MARKS MANAGEMENT</li>\r\n	<li>INTERNAL MESSAGING</li>\r\n	<li>CLASS-SECTION</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"clearfix\">&nbsp;</div>', '2020-08-30 10:28:00', '2020-08-30 10:28:00');

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
(1, 1, 'Fully Managed Applications & Environments', '<ul>\r\n	<li>Cloud Based Solutions For Forward Looking Organizations</li>\r\n	<li>Accounting-General Business</li>\r\n	<li>Analytics &amp; BI Enablement</li>\r\n	<li>Customer Relationship Management</li>\r\n	<li>Any</li>\r\n</ul>', '2020-09-04 13:13:44', '2020-09-04 13:13:44');

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
(1, 1, 'Category 1', '<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">IT+Administration</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Accounting</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Business Management</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Collaboration &amp; Productivity</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Operations &amp; Supply Chain</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Human Resources</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Data &amp; Information Mgt.</span></span></p>', '2020-08-26 14:10:12', '2020-09-04 02:19:00'),
(2, 1, 'Category 2', '<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Finance</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Customer Service </span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Healthcare</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Education</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Mobile</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Web-Containers</span></span></p>', '2020-08-26 14:13:47', '2020-09-04 02:16:02'),
(3, 1, 'Category 3', '<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Identity Management</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">DevOps</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Retail Management</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Analytics</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">AI+ Machine Learning</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Blockchain</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">Compute &amp; Storage</span></span><br />\r\n&nbsp;</p>', '2020-08-26 14:14:20', '2020-09-04 02:13:37');

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
(1, 1, 'aaa', 'hsblco_admin@gmail.com', 'aaaa', 'aaaaaaaaaaaaaaaaaaaa', '2020-09-02 08:24:30', '2020-09-02 08:24:30'),
(2, 1, 'ssss', 'shifat@gmail.com', 'sss', 'ssssssssssssss', '2020-09-02 08:25:50', '2020-09-02 08:25:50'),
(3, 1, 'sss', 'ssss@gmail.com', 'sss', 'sssssssssss', '2020-09-02 08:26:59', '2020-09-02 08:26:59'),
(4, 1, 'ddd', 'ddd@gmail.com', '0192829020', 'qqqqqqqqq', '2020-09-02 08:37:35', '2020-09-02 08:37:35'),
(5, 1, 'ssss', 'nipa@gmail.com', '19280082082', 'ssss', '2020-09-02 08:38:32', '2020-09-02 08:38:32'),
(6, 1, 'ddd', 'shifat@gmail.com', '12345678', 'sssssssss', '2020-09-04 00:18:52', '2020-09-04 00:18:52'),
(7, 1, 'ssss', 'ssss@gmail.com', '111234578899', 'sssssssssssssss', '2020-09-04 00:24:30', '2020-09-04 00:24:30'),
(8, 1, 'sssssssssss', 'hsblco_admin@gmail.com', '123456789', 'ssssssssssssssssss', '2020-09-04 00:26:15', '2020-09-04 00:26:15'),
(9, 1, 'DhoNkKtAsGzf', 'burnspercival18@gmail.com', '2214818889', 'yFehEfrRpuqxgm', '2020-09-04 06:14:41', '2020-09-04 06:14:41'),
(10, 1, 'iMQIFBHzhko', 'burnspercival18@gmail.com', '6616686771', 'zlPowAnOYUL', '2020-09-04 06:15:33', '2020-09-04 06:15:33');

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
(1, 1, 'Kevin Jackson', 'Vice President, FREEWORLD BRAND, LLC', '<p>SaS Application helped us create, launch and maintain our online marketplaces - FreeWorldImports (https://freeworldimports.com) and FreeWorldExports (https://freeworldexports.com). It was a pleasure to work with the SaS Applications team.</p>', 'Kevin-5f4d3aa244c31.png', '2020-08-31 12:00:02', '2020-08-31 12:00:02'),
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
(1, 1, 'SOFTACADEMIA-EDUCATION MANAGEMENT SOLUTION', 'A Comprehensive educational institution management solution that addresses all the major needs of k-12 student educational information management. This solution is designed to deliver and provide the key functionalities that are necessary to meet emerging and evolving educational information management requirements.', 'SOFTA-5f4cccfd53c9d.jpg', '2020-08-31 04:12:13', '2020-08-31 04:42:56'),
(2, 1, 'NETWORK POST PACKET CAPTURE ANALYSIS', '<p>This solution features Measure IT NetData which is considered to be the most penetrating and microscopic decoding, dissection &amp; analysis of Post Packet Capture flow activity available in today&#39;s market. Functionality include: Session Stiching, Stateful SQL Analysis, Model Queues and Packet Shaping, Network Modeling, TCP Sequence Gap Detection, L7 Message Sequence Gap Detection (e.g. MQTT, FIX), Multi-Tier Transaction Analysis.</p>', 'NETWO-5f4ccdcfdcc31.png', '2020-08-31 04:15:44', '2020-08-31 04:15:44'),
(3, 1, 'DATA QUALITY ASSESSMENT AND MONITORING', '<p>The Data Quality Assessment Manager (DQAM) guides a user through a comprehensive value-level assessment of a given data asset, thus enabling an organization to scale its data quality activities appropriately. The DQAM facilitates the data quality analyst&rsquo;s ability to competently employ advanced methods within their ﬁeld. The collaborative nature of both analysis and sharing of ﬁndings both internally and externally, with the broader organizational data community promotes a team dynamic among the organization&rsquo;s data quality analysts. Through these two capabilities, the DQAM is capable of doing something that the largest and most expensive tools on the market have yet to accomplish which constitute a normalized and empirical method for identifying data quality anomalies and making the process more visible and collaborative on a team and enterprise scale.</p>', 'DATA_-5f4cce6371729.jpg', '2020-08-31 04:18:11', '2020-08-31 04:18:11');

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
(1, 1, 'ABOUT SAS APPLICATION', 'Our SaaS portal features cloud based software categories to include: Analytics, Artificial Intelligencv, Collaboration, Customer Service, Finanance, Human Resources, IT+Administration, Internet of Things, Marketing, Operations + Supply Chain, Productivity and Sales. These solutions can be leveraged by companies / organizations accross all verticals/industries to include: Agriculture, Education, Entertainment, Distribution+Logistics, Financial Services, Government, Healthcare, Manufacturing, Profdressional Services, Retail and Telecommunications.', '2020-09-03 01:50:29', '2020-09-03 13:55:09');

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
(2, 'SoftAcademia', '#', '2020-09-03 02:06:15', '2020-09-04 04:23:18'),
(3, 'CashBox', '#', '2020-09-03 02:06:29', '2020-09-03 02:06:29'),
(4, 'SMARTCARE - Clinic', '#', '2020-09-03 02:06:47', '2020-09-03 02:06:47');

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
(1, 'Services', '#', '2020-09-03 01:57:17', '2020-09-03 01:57:17'),
(2, 'ANY SOURCE SYSTEM DATA', '#', '2020-09-03 01:58:45', '2020-09-03 01:58:45'),
(3, 'LATEST SERVERS', '#', '2020-09-03 01:59:10', '2020-09-03 01:59:10'),
(4, 'Web Development', '#', '2020-09-03 01:59:39', '2020-09-03 01:59:39'),
(5, 'Mobile Operating System', '#', '2020-09-03 02:00:09', '2020-09-03 02:00:09'),
(6, 'Mobile Security', '#', '2020-09-03 02:00:18', '2020-09-03 02:00:18');

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
(1, 1, 'What We Offer', NULL, '2020-09-02 02:27:12', '2020-09-02 03:51:37'),
(2, 1, 'POPULAR FEATURES', NULL, '2020-09-02 02:27:36', '2020-09-02 02:27:36'),
(3, 1, 'STUNNING SAAS AND IAAS SOLUTIONS', '<p>Our IaaS solutions enable you purchase resources on-demand and as-needed instead of having to buy</p>', '2020-09-02 02:28:08', '2020-09-02 02:28:08'),
(4, 1, 'SAS APPLICATIONS CATEGORIES', '<p>Find the right application for your business needs</p>', '2020-09-02 02:28:55', '2020-09-02 02:28:55'),
(5, 1, 'WHAT MAKES US DIFFERENT?', '<p>Complete Cloud based solutions related to Analytics and BI Enablement, IoT Enablement, IT Infrastructure Transformation, General computing and Cloud base application development packages.</p>', '2020-09-02 02:29:37', '2020-09-02 02:29:37'),
(6, 1, 'A LEADING PROVIDER OF CLOUD BASED DEVELOPMENT PLATFORMS', '<p>In collaboration with our partners, we are able to provide cloud developers with the ability to create, test and execute application and software code &ndash; entirely on cloud-based development tools and infrastructure.</p>', '2020-09-02 02:30:01', '2020-09-02 02:30:01'),
(7, 1, 'FEATURED SOLUTIONS - EASY START PACKAGES', '<p>Take advantage of our featured solutions - The solutions are agressivly priced.</p>', '2020-09-02 02:30:28', '2020-09-02 02:30:28'),
(8, 1, 'IT INFRASTRUCTURE TRANSFORMATION SERVICE PLANS', '<p>Let us help with your Cloud Adoption and Migration plans</p>', '2020-09-02 02:30:51', '2020-09-02 02:30:51'),
(9, 1, 'BLOGS', '<p>Review our BLOGS and FREQUENTLY ASKED QUESTIONS</p>', '2020-09-02 02:31:12', '2020-09-02 02:31:12'),
(10, 1, 'Frequently Asked Questions', NULL, '2020-09-02 02:31:24', '2020-09-02 02:31:24'),
(11, 1, 'WHAT OUR CUSTOMERS SAYS', NULL, '2020-09-02 02:31:39', '2020-09-02 02:31:39');

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
(1, 1, '1', 'laaS Solutions', '<p>We offer Cloud infrastructure services, known as Infrastructure as a Service (IaaS) which are made of highly scalable and automated compute resources. Our IaaS solutions are fully</p>', '2020-08-31 13:36:53', '2020-08-31 13:36:53'),
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
(1, 1, 'ANALYTICS & BI ENABLEMENT IN THE CLOUD', 'With all the attention on analytics and flashy data visualization and dashboards, one area is easily forgotten is that which relates to Data Quality Assurance and Source Systems Integration Efficiencies which is the less sexy engine underneath BI, Analytics and glitzy Dashboards. We refer to this area as Analytics and BI Enablement which consists of two (2) major areas, Data Virtualization and Data Quality Assurance. Data Virtualization: enable your company to connect, combine and publish data in all its formats from all data sources within the enterprise and beyond. Northbound consumers consisting of all BI, Analytics, Visualization, Archiving, Reporting, etc are able to take advantage of these virtual data sets through a robust Data Virtualization/Abstraction layer. Via this technology and approach one is able to create a unified and connected view of all underlying data sources. Systems/applications that need to consume this data only have to interact with the abstraction/data virtualization layer which is capable of accessing the entire enterprise data sources. Our Cloud based data abstraction layer a component of CloudFectiv&#39;s Converged Data Architecture enable enterprise data architects to easily create environments for all data consumers to access the data they need and trust in near real-time, in a format they understand, utilizing any data socialization tool/device they desire - Enterprise data availability anytime, anywhere. Data Quality Assurance: Historically this has consisted of data profiling tools which are used to determine data lineage and sample patterns which utilizes a tremendous amount of manual professional services effort to comb through myriads of data objects to look for non conformant patterns and anomalies. Our Cloud based continuous and automated data quality assessment solution that defines monitoring and transformation rules, enable data driven organizations to continuously monitor data comprehensively at the value level to identify and flag source systems data when certain quality attributes violate a threshold. This disruptive approach eliminates the time consuming and costly manual process of data quality assessment and offers close to real time detection of anomalies and security threats. ...Sports Organization Revenue Enablement Solutions and Services', '2020-08-26 13:19:34', '2020-08-27 04:00:03'),
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
(1, 1, 'Is machine learning will be the future technology?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:03:57', '2020-08-31 11:03:57'),
(2, 1, 'Do you want to know about IOT??', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:04:14', '2020-08-31 11:04:14'),
(3, 1, 'What\'s included with a FREE PLAN?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:04:33', '2020-08-31 11:04:33'),
(4, 1, 'What\'s included with a FREE PLAN?', '<p>Placeholder, Placeholder, Placeholder -- Must add proper content</p>', '2020-08-31 11:04:47', '2020-08-31 11:04:47');

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
(1, 1, 'Live Score - The Ultimate Gaming Solution', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam sapiente alias quasi, atque dignissimos amet dolores expedita, maxime consequuntur omnis consequatur ut repellendus labore tempora harum soluta? Veritatis quaerat accusamus soluta!</p>', NULL, 'Live_-5f4b7d83cace0.jpg', '2020-08-30 04:20:54', '2020-08-30 04:21:47'),
(2, 1, 'PSD To Wordpress Solutions', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam sapiente alias quasi, atque dignissimos amet dolores expedita, maxime consequuntur omnis consequatur ut repellendus labore tempora harum soluta? Veritatis quaerat accusamus soluta!</p>', NULL, 'PSD_T-5f4b7de6930e1.jpg', '2020-08-30 04:22:31', '2020-08-30 04:22:31'),
(3, 1, 'PSD To HTML Solutions', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam sapiente alias quasi, atque dignissimos amet dolores expedita, maxime consequuntur omnis consequatur ut repellendus labore tempora harum soluta? Veritatis quaerat accusamus soluta!</p>', NULL, 'PSD_T-5f4b7e189fb78.jpg', '2020-08-30 04:23:21', '2020-08-30 04:23:21');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer_ones`
--
ALTER TABLE `footer_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_threes`
--
ALTER TABLE `footer_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer_twos`
--
ALTER TABLE `footer_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
