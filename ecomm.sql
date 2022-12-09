-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 13, 2020 at 12:01 PM
-- Server version: 8.0.18
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `created_at`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2018-12-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(5, '57843.jpg', 'banner1', 'products/mouse', 1, '2020-03-12 16:40:03', '2020-03-12 16:40:03'),
(6, '43170.jpg', 'banner2', 'products/Accessory', 1, '2020-03-12 16:40:31', '2020-03-12 16:40:31'),
(7, '77567.jpg', 'banner3', 'products/Accessory', 1, '2020-03-12 16:40:48', '2020-03-12 16:40:48'),
(8, '93838.jpg', 'banner4', 'products/Laptops', 1, '2020-03-12 16:41:04', '2020-03-12 16:41:04'),
(9, '48062.png', 'banner5', 'products/Laptops', 1, '2020-03-12 16:41:20', '2020-03-12 16:41:20'),
(10, '90633.jpg', 'banner6', 'products/Laptops', 1, '2020-03-12 16:41:33', '2020-03-12 16:41:33'),
(11, '42955.jpg', 'banner7', 'products/Laptops', 1, '2020-03-12 16:41:47', '2020-03-12 16:41:47'),
(12, '26625.jpg', 'banner8', 'products/Laptops', 1, '2020-03-12 16:42:06', '2020-03-12 16:42:06'),
(13, '87444.jpg', 'banner9', 'products/mouse', 1, '2020-03-12 16:42:20', '2020-03-12 16:42:20'),
(14, '23479.jpg', 'banner10', 'products/mouse', 1, '2020-03-12 16:42:32', '2020-03-12 16:42:32'),
(15, '59926.jpg', 'banner11', 'products/mouse', 1, '2020-03-12 16:42:47', '2020-03-12 16:42:47'),
(16, '28950.jpg', 'banner12', 'products/Accessory', 1, '2020-03-12 16:43:04', '2020-03-12 16:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 0, 'LAPTOPS', NULL, 'laptops', 1, NULL, '2020-03-12 09:12:22', '2020-03-12 09:57:16'),
(10, 9, 'High End Laptops', NULL, 'Laptop', 1, NULL, '2020-03-12 09:12:40', '2020-03-12 09:57:32'),
(11, 9, 'Medium End Laptops', NULL, 'laptop1', 1, NULL, '2020-03-12 09:12:51', '2020-03-12 09:58:21'),
(13, 9, 'Low End Laptops', NULL, 'laptop2', 1, NULL, '2020-03-12 09:31:35', '2020-03-12 09:58:28'),
(14, 0, 'ACCESSORY', NULL, 'Accesories', 1, NULL, '2020-03-12 10:25:01', '2020-03-12 10:25:01'),
(15, 14, 'Keyboards', NULL, 'Accesories1', 1, NULL, '2020-03-12 10:25:21', '2020-03-12 10:25:21'),
(16, 14, 'Mouse', NULL, 'Accesories2', 1, NULL, '2020-03-12 10:39:11', '2020-03-12 10:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test15', 15, 'Percentage', '2018-08-31', 0, '2018-07-13 15:11:19', '2018-10-04 20:28:09'),
(3, 'test150', 150, 'Fixed', '2018-11-30', 1, '2018-07-16 16:57:39', '2018-11-04 03:03:50'),
(4, 'test10', 10, 'Percentage', '2018-10-31', 1, '2018-07-22 03:36:00', '2018-10-19 08:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

DROP TABLE IF EXISTS `delivery_addresses`;
CREATE TABLE IF NOT EXISTS `delivery_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `updated_at`) VALUES
(1, 2, 'amit100@yopmail.com', 'Amit Gupta', '12345 Civil Lines', 'Ludhiana', 'Punjab', 'India', '141001', '9700000000', '2018-12-30 03:03:29'),
(2, 8, 'steve@yopmail.com', 'Steve', 'Test Address', 'Ludhiana', 'Punjab', 'India', '141001', '08054711805', '2018-10-19 10:28:17'),
(3, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', 'India', '4156', '78945613256', '2020-03-13 06:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_18_090951_create_category_table', 2),
(4, '2018_03_18_100532_add_url_to_categories', 3),
(5, '2018_03_29_144354_create_products_table', 4),
(6, '2018_04_16_135232_create_products_attributes_table', 5),
(7, '2018_06_21_174929_create_cart_table', 6),
(8, '2018_07_09_150844_create_coupons_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_amount` float NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`) VALUES
(29, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 7100, '2020-03-12 16:58:30'),
(30, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 7100, '2020-03-12 16:59:00'),
(31, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 71420, '2020-03-12 17:22:30'),
(32, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 72419, '2020-03-12 17:31:04'),
(33, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 72419, '2020-03-12 17:33:21'),
(34, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 71420, '2020-03-12 17:33:46'),
(35, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 71420, '2020-03-12 17:33:52'),
(36, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 71420, '2020-03-12 17:34:32'),
(37, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 21490, '2020-03-12 17:38:55'),
(38, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 2999, '2020-03-12 17:41:20'),
(39, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 55350, '2020-03-12 17:46:47'),
(40, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 57868, '2020-03-13 03:06:10'),
(41, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 57868, '2020-03-13 03:08:27'),
(42, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 57868, '2020-03-13 03:09:18'),
(43, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 57868, '2020-03-13 03:10:36'),
(44, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 57868, '2020-03-13 03:11:01'),
(45, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 57868, '2020-03-13 03:11:13'),
(46, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 98418, '2020-03-13 03:14:14'),
(47, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 98418, '2020-03-13 03:14:31'),
(48, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 98418, '2020-03-13 03:14:41'),
(49, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 459599, '2020-03-13 08:25:50'),
(50, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 159000, '2020-03-13 11:54:21'),
(51, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'COD', 159000, '2020-03-13 11:55:43'),
(52, 17, 'suvarnasanath@gmail.com', 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', '4156', 'India', '78945613256', 0, '', 0, 'New', 'Paypal', 159000, '2020-03-13 11:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
CREATE TABLE IF NOT EXISTS `orders_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_qty`, `created_at`) VALUES
(47, 29, 17, 18, 'aaa', 'Microsoft Surface Laptop 2', 'hignend', 'Platinum', 7100, 1, '2020-03-12 16:58:30'),
(48, 30, 17, 18, 'aaa', 'Microsoft Surface Laptop 2', 'hignend', 'Platinum', 7100, 1, '2020-03-12 16:59:00'),
(49, 31, 17, 18, 'aaa', 'Microsoft Surface Laptop 2', 'hignend', 'Platinum', 71420, 1, '2020-03-12 17:22:30'),
(50, 32, 17, 18, 'aaa', 'Microsoft Surface Laptop 2', 'hignend', 'Platinum', 71420, 1, '2020-03-12 17:31:04'),
(51, 32, 17, 36, 'asa', 'Logitech M337', 'wireless', 'Red', 999, 1, '2020-03-12 17:31:04'),
(52, 34, 17, 18, 'aaa', 'Microsoft Surface Laptop 2', 'hignend', 'Platinum', 71420, 1, '2020-03-12 17:33:46'),
(53, 35, 17, 18, 'aaa', 'Microsoft Surface Laptop 2', 'hignend', 'Platinum', 71420, 1, '2020-03-12 17:33:52'),
(54, 37, 17, 31, 'nnn', 'Dell Inspiron 3595', 'low end', 'Natural Silver', 21490, 1, '2020-03-12 17:38:57'),
(55, 38, 17, 35, 'lml', 'Logitech Prodigy', 'wired', 'Black', 2999, 1, '2020-03-12 17:41:20'),
(56, 39, 17, 25, 'xcxc', 'Lenovo Ideapad S340', 'Medium', 'Platinum Grey', 55350, 1, '2020-03-12 17:46:47'),
(57, 40, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:06:10'),
(58, 41, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:08:27'),
(59, 42, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:09:19'),
(60, 43, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:10:36'),
(61, 44, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:11:01'),
(62, 45, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:11:14'),
(63, 46, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:14:15'),
(64, 46, 17, 28, 'dfdf', 'ASUS VivoBook', 'low end', 'Icicle Gold', 40550, 1, '2020-03-13 03:14:15'),
(65, 47, 17, 26, 'asdc', 'DELL Inspiron 5593', 'Medium', 'Platinum Silver', 57868, 1, '2020-03-13 03:14:31'),
(66, 47, 17, 28, 'dfdf', 'ASUS VivoBook', 'low end', 'Icicle Gold', 40550, 1, '2020-03-13 03:14:31'),
(67, 49, 17, 20, 'ccc', 'New Apple MacBook Pro 2', 'hignend', 'Space Grey', 229000, 1, '2020-03-13 08:25:50'),
(68, 49, 17, 37, 'kik', 'Logitech Pebble', 'wireless', 'Rose', 1599, 1, '2020-03-13 08:25:50'),
(69, 49, 17, 20, 'ccc', 'New Apple MacBook Pro 2', 'hignend', 'Space Grey', 229000, 1, '2020-03-13 08:25:50'),
(70, 50, 17, 19, 'bbb', 'New Apple MacBook Pro', 'hignend', 'Space Grey', 159000, 1, '2020-03-13 11:54:21'),
(71, 51, 17, 19, 'bbb', 'New Apple MacBook Pro', 'hignend', 'Space Grey', 159000, 1, '2020-03-13 11:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(18, 10, 'Microsoft Surface Laptop 2', '1769', 'Platinum', 'Intel core i5 8th Gen 13.5 inch Touchscreen Laptop (8GB/128GB/Windows 10 Home/Integrated Graphics/Platinum/1.252kg)', '1.6GHz Intel Core i5-8250U 8th gen processor\r\n    8GB LPDDR3 RAM\r\n    128GB hard drive\r\n    13.5-inch screen, Intel UHD Graphics 620 Graphics\r\n    Windows 10 Home operating system\r\n    14.5 hours battery life, 1.25kg laptop', 71420.00, '25803.jpg', 1, '2020-03-12 09:17:20', '2020-03-12 09:17:42'),
(19, 10, 'New Apple MacBook Pro', 'applepro1', 'Space Grey', 'Pro (13-inch, 8GB RAM, 512GB Storage, 2.4GHz Intel Core i5)', '8th-generation quad-core Intel Core i5 processor\r\n    Brilliant Retina display with True Tone technology\r\n    Touch Bar and Touch ID\r\n    Intel Iris Plus Graphics 655;Ultrafast SSD;Four Thunderbolt 3 (USB-C) ports;Up to 10 hours of battery life;802.11ac Wi-Fi;Latest Apple-designed keyboard;Force Touch trackpad\r\n    Mac OS operating system\r\n    2.300kg laptop\r\n    8th-generation quad-core Intel Core i5 processor\r\n\r\n    Brilliant Retina display with True Tone technology\r\n    Touch Bar and Touch ID\r\n    Intel Iris Plus Graphics 655\r\n    Ultrafast SSD\r\n    Four Thunderbolt 3 (USB-C) ports\r\n    Up to 10 hours of battery life\r\n    802.11ac Wi-Fi\r\n    Latest Apple-designed keyboard\r\n    Force Touch trackpad', 159000.00, '37232.jpg', 1, '2020-03-12 09:29:24', '2020-03-12 09:56:04'),
(20, 10, 'New Apple MacBook Pro 2', 'applepro2', 'Space Grey', '16-inch, 16GB RAM, 1TB Storage, 2.3GHz Intel Core i9', 'Ninth-generation 8-core Intel Core i9 processor\r\n    Stunning 16-inch Retina display with True Tone technology\r\n    Touch Bar and Touch ID\r\n    AMD Radeon Pro 5500M graphics with GDDR6 memory\r\n    Ultrafast SSD\r\n    Intel UHD Graphics 630\r\n    Six-speaker system with force-cancelling woofers\r\n\r\n    Four Thunderbolt 3 (USB-C) ports\r\n    Up to 11 hours of battery life\r\n    802.11ac Wi-Fi', 229000.00, '85109.jpg', 1, '2020-03-12 09:34:44', '2020-03-12 09:34:44'),
(21, 10, 'Lenovo Yoga C640', '81UE0034IN', 'Iron Grey', '13.3-inch FHD IPS Convertible Laptop (10th Gen CORE I5-10210U/8GB/512GB SSD/Windows 10/Microsoft Office/Integrated Graphics)', 'Processor: 10th Gen Intel Core i5 10210U processor, 1.6Ghz base speed, 4.2Ghz max speed, 4 cores, 6Mb Smart Cache\r\n    Operating System: Preloaded Windows 10 Home, with lifetime validity\r\n    Display: 13.3-inch screen with (1920X1080) full HD display | Anti Glare technology | IPS Display\r\n    Memory and Storage: 8 GB RAM | Storage 512 GB SSD\r\n    Design and Battery: 2 in 1 convertible laptop | Laptop Weight : 1.33Kg |Upto 15 Hours\r\n    This genuine Lenovo Laptop comes with 3 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\n    Pre-Installed Software: Windows 10 Home, Office Home and Student 2019 | Inside the box: Laptop, Charger, User Manual\r\n    Ports & CD drive: USB-C (DisplayPort, Power Delivery), 2 x USB-A 3.1 (Gen 1), microSIM card reader (with optional LTE only, where applicable), Power-in, Headphone/mic combo', 74993.00, '80122.jpg', 1, '2020-03-12 09:37:55', '2020-03-12 09:37:55'),
(22, 10, 'ASUS ROG Strix G', 'G731GT', 'Black', '17.3\" FHD Gaming Laptop GTX 1650 4GB Graphics (Core i7-9750H 9th Gen/8GB RAM/1TB SSHD + 256GB PCIe SSD/Windows 10/Black/2.85 Kg)', 'Processor: 9th Gen Intel Core i7-9750H Processor base speed 2.6GHz (12M Cache, up to 4.5GHz, 6 Cores)\r\n    Memory & Storage: 8GB DDR4 2666MHz RAM upgradeable up to 32GB RAM with | Storage: 1TB 5400RPM 2.5’ SSHD (FireCuda) + PCIe NVMe 256GB M.2 SSD\r\n    Graphics: NVIDIA GeForce GTX 1650 GDDR5 4GB VRAM\r\n    Display: 17.3-inch Full HD (1920x1080) Anti Glare IPS-level panel, Refersh Rate 60Hz, 100% sRGB | 81.5% screen-to-body ratio\r\n    Operating System: Pre-loaded Windows 10 Home with lifetime validity\r\n    Design & battery: Super-narrow bezels frame | RGB LEDs wrap around the rim of the chassis | Laptop weight 2.85kg | Lithium battery 3-Cell\r\n    Cooling System: Innovative 3D Flow Zone Design | 83 Blades Dual-Fan Architecture | Slim 0.1mm Thermal Fins | Powerful 12V Fans |Self-Cleaning Anti-Dust Tunnels | Imporved Airflow-Friendly Lid.\r\n\r\n    Keyboard: Highlighted WASD key group | All-Zone RGB Backlight| N-key rollover | 20 Million Key Presses | Curved Keycaps | ROG Overstroke technology | Aura Sync | Hotkeys (Volume down, volume up, mute, HyperFan, Armoury Crate)\r\n    Audio: Smart Amp technology | 6.5dBA Dynamic Range |up to 2.8X More Volume | up to 3X More Powerful Bass.\r\n    Ports and CD drive: 3 x Type A USB3.1 (GEN1) | 1 x HDMI 2.0b | 1 x 3.5mm Audio Jack | 1 x Audio Jack Mic-in | 1 x RJ45 LAN Jack | Without CD-Drive\r\n    Other: Armoury Crate | Intel 802.11ac (2x2) Gigabit Wi-Fi | Multi-Antenna Rangeboost technology | Without Webcam\r\n    Warranty: This genuine Asus laptop comes with 1 year Global Warranty and Onsite Domestic Warranty. For more details, see warranty section. For product related queries contact the brand at contact_us on: [ 18002090365 ]', 83999.00, '93622.jpg', 1, '2020-03-12 09:41:00', '2020-03-12 09:41:00'),
(23, 11, 'ASUS TUF Gaming', 'FX505DT', 'Stealth Black', '5.6\" FHD 120Hz Laptop GTX 1650 4GB Graphics (Ryzen 5-3550H/8GB RAM/512GB PCIe SSD/Windows 10/Stealth Black/2.20 Kg', 'Processor: AMD Ryzen 5-3550H processor, 2.1GHz Base speed (6MB cache, up to 3.7GHz)\r\n    Memory & Storage: 8GB DDR4 2400MHz RAM upgradeable upto 32GB RAM with| NVIDIA GeForce GTX 1650 GDDR5 4GB VRAM Graphics| Storage: PCIe NVMe 512GB M.2 SSD\r\n    Display: 15.6\" (16:9) LED-backlit FHD (1920x1080) 120Hz Anti-Glare IPS-level Panel with 45% NTSC\r\n    Operating System: Pre-loaded Windows 10 Home with lifetime validity\r\n    Design & battery: 6.5mm Thin bezel | Laptop weight 2.20kg | Lithium battery 3-Cell\r\n    Hypercool Technology: Anti-Dust Cooling | Powerful Dual Fan Design | HyperFan| Patented Trapezoid-cut Lid\r\n    Keyboard: Highlighted WASD key group| All-zone RGB Backlight| 20 Million Key Presses | 1.8mm Key Travel| 0.25mm Keycap Curve| Overstroke Technology| HyperStrike technology\r\n\r\n    Audio : DTS Headphone:X technology| Authentic 7.1-Channel Surround Sound| Audophile-Grade Equalizer Sound| Optimized Game/ Movie/ Sports Audio Profile\r\n    I/O Ports : 1x 3.5mm Comba audio jack | 1 x Type-A USB 2.0| 2x Type-A USB 3.1 (Gen 1)| 1x RJ45 LAN jack for LAN insert | 1x HDMI 2.0\r\n    Other: Tested and certified to meet military-grade MIL-STD-810G standards| Wi-Fi 5(802.11ac)| Kensington lock| HD 720p CMOS module Webcam\r\n    Warranty: This genuine Asus laptop comes with 1 year Global Warranty and Onsite Domestic Warranty. For more details, see warranty section\r\n    For product related queries contact the brand at contact_us on: [ 18002090365 ]\r\n    Manufacturer Detail: TECH FRONT ( CHONGQING) Computer Co. Ltd, NO 18 , Zongbao Road, Shapingba Dist,Chongquing, China\r\n    Packer Detail: TECH FRONT ( CHONGQING) Computer Co. Ltd, NO 18 , Zongbao Road, Shapingba Dist,Chongquing, China\r\n    Importer Details: ASUS INDIA PRIVATE LIMITED, 402, Supreme chambers, 17/18, Shah Industrial Estate, Veer Desai Road, Andheri (west), Mumbai 400053, India', 58999.00, '89113.jpg', 1, '2020-03-12 09:45:44', '2020-03-12 09:56:19'),
(24, 11, 'HP 14s core', '14s-cr2000tu', 'Natural Silver', 'core i5 10th Gen 14 inch FHD Laptop (8 GB/256 GB SSD/1TB HDD/Windows 10/MS Office 2019/Natural Silver /1.43kg)', 'Processor: 10th Gen Intel Core i5-10210U, 1.6 GHz up to 4.2 GHz, 6 MB cache, 4 cores)\r\n    Memory & Storage: 8GB DDR4 RAM, upgradeable up to 16GB RAM | Storage: 1 TB 5400 rpm SATA + 256 GB PCIe NVMe M.2 SSD\r\n    Display: 14.0\" (16:9) WLED-backlit FHD (1920x1080) IPS 60Hz Anti-Glare Panel with 45% NTSC, 250 nits\r\n    Preinstalled Software: Microsoft Office Home & Office 2016 | In the Box: Laptop with included battery and charger\r\n    Operating System: Pre-loaded Windows 10 Home with lifetime validity\r\n    Graphics: Intel UHD Graphics\r\n    Design & battery: Micro-Edge Bezel | 19.9 mm Thin body | Laptop weight 1.43 kg | Thin and Light Laptop | 41WHrs, Lithium battery 3-Cell, Battery life = Up to 8 hours, HP Fast Charge battery: 0 to 50% under 45 minutes\r\n\r\n    I/O Ports : 1 x combo audio jack | 2x USB 3.1 Type A (Gen1) | 1x USB 3.1 Type C (Gen 1) | 1x HDMI |1x Micro SD Card Reader | Comes without CD-Drive\r\n    Other: Backlit keyboard | Precision Touchpad | Web Camera | Wi-Fi 5(802.11ac) | Bluetooth 4.2\r\n    Warranty: This genuine HP laptop comes with a 1-year domestic warranty from HP covering manufacturing defects and not covering physical damage. For more details, see warranty section below or call: [1800 258 7170]', 53480.00, '39090.jpg', 1, '2020-03-12 09:48:24', '2020-03-12 09:48:24'),
(25, 11, 'Lenovo Ideapad S340', '81VV008TIN', 'Platinum Grey', 'Intel Core i5 10th Generation 14 inch FHD Thin and Light Laptop (8GB/1TB HDD + 256 GB SSD/Windows 10/MS Office/Platinum Grey/1.55Kg)', 'Processor: 10th Gen Intel Core i5-1035G1 processor, 1.0 Ghz base speed, 3.6 Ghz max speed, 4 Cores, 6Mb Smart Cache\r\n    Operating System: Pre-loaded Windows 10 Home with lifetime validity\r\n    Display: 14-inch screen with (1920X1080) full HD display | Anti Glare technology | IPS Screen\r\n    Memory and Storage: 8 GB RAM | Storage:1 TB HDD + 256 GB SSD\r\n    Design and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.55kg | Battery Life: Upto 8 hours as per MobileMark | with Backlit Keyboard\r\n    This genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\n    Pre-Installed Software: Microsoft Office Home and Student 2019 | Inside the box: Laptop, Charger, User Manual\r\n    Ports & CD drive: 2 USB 3.0 | 1 Type C (USB 3.0) | 1 HDMI 2.0 | 4-in-1 card reader (SD,SDHC,SDXC,MMC) | Combo audio and microphone jack | Without DVD-drive | Without LAN port', 55350.00, '81916.jpg', 1, '2020-03-12 09:51:05', '2020-03-12 09:51:05'),
(26, 11, 'DELL Inspiron 5593', 'dellinsp01', 'Platinum Silver', '15.6-inch Laptop (10th Gen Core i5-1035G1/8GB/512GB SSD/Windows 10 Home Plus/Intel UHD Graphics)', '1.00GHzGHz Intel Core i5-1035G1 10th Gen processor\r\n    8GB DDR4 RAM\r\n    512GB SSD\r\n    15.6-inch screen, Intel UHD Graphics\r\n    Windows 10 Home Plus operating system\r\n    6 hours battery life, 1.93kg laptop\r\n    512 GB SSD, 8GB DDR4 RAM,Intel UHD Graphics\r\n\r\n    15.6 inch, Windows 10 Home Plus ,MS Office H&S 2019\r\n    1 Year Manufacturer Warranty', 57868.00, '28586.jpg', 1, '2020-03-12 09:54:13', '2020-03-12 09:54:54'),
(27, 13, 'HP 14', '14q cs0017TU', 'Smoke Grey', 'Core i5 8th Gen 14-inch Thin and Light Laptop (8GB/1TB HDD/Windows 10 Home/MS Office/Smoke Gray/1.59 kg)', 'Processor: 8th Generation Intel Core i5-8265U processor(1.6 GHz base frequency, up to 3.9 GHz with Intel Turbo Boost Technology, 6 MB cache, 4 cores)\r\n    Operating System: Pre-loaded Windows 10 Home with lifetime validity\r\n    Display: 14-inch HD (1366x768) display\r\n    Memory & Storage: 8GB DDR4 |Storage:1TB HDD\r\n    Design & battery: Thin and light design | Laptop weight: 1.59 kg | Average battery life = 7 hours, Lithium battery\r\n    Warranty:This genuine HP laptop comes with 1 year domestic warranty from HP covering manufacturing defects and not covering physical damage. For more details, see Warranty section below.\r\n    Pre-installed Software: Microsoft Office Home & Student 2019 |In the box: Laptop with included battery, charger\r\n\r\n    Ports and CD drive: 1 USB 2.0,2 USB 3.0, 1 HDMI, 1 Audio-output | Without CD-Drive\r\n    Manufacturer Detail: HP India Sales pvt limited, 24 Salarpuria Arena, Hosur main road, Adugodi , Bangalore -560030.\r\n    Importer Details: HP India Sales pvt limited, 24 Salarpuria Arena, Hosur main road, Adugodi , Bangalore -560030.', 41000.00, '68945.jpg', 1, '2020-03-12 10:00:56', '2020-03-12 10:00:56'),
(28, 13, 'ASUS VivoBook', 'X507UF-EJ300T', 'Icicle Gold', 'ntel Core i5 8th Gen 15.6-inch FHD Thin and Light Laptop (8GB RAM/1TB HDD/Windows 10/2GB NVIDIA GeForce MX130 Graphics/Icicle Gold/1.68 kg)', 'Processor: 8th Gen Intel Core i5-8250U processor 1.6 GHz (6M Cache, up to 3.4 GHz, 4 Cores)\r\n    Memory & Storage: 8GB DDR4 RAM, upgradable upto 16GB RAM| Storage: 1TB 5400RPM 2.5\' HDD + 1x M.2 SSD Expansion Slot\r\n    Graphics: NVIDIA GeForce MX130 GDDR5 2GB VRAM\r\n    Display: 39.62cm(15.6) (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare Panel with 45% NTSC with ASUS Splendid | 75.4% screen-to-body ratio\r\n    Operating System: Pre-loaded Windows 10 Home with lifetime validity\r\n    Design & Battery: 8.1mm Thin bezel | Thin & light | Laptop weight 1.68 kg | Battery up to 8 hours\r\n    I/O Ports : 1 x COMBO audio jack |1 x Type-A USB 3.0 | 2 x USB 2.0 port | 1 x HDMI | 1 x MicroSD Card Reader | Comes without CD-Drive\r\n\r\n    Other: Fast-Charging |Chiclet Keyboard | Fingerprint Sensor with Windows Hello | Wi-Fi 4(802.11bgn)| VGA Webcam\r\n    Warranty: This genuine Asus laptop comes with 1 year Global Warranty and Onsite Domestic Warranty. For more details, see warranty section\r\n    For product related queries contact the brand at contact_us on: [ 18002090365 ]', 40550.00, '38047.jpg', 1, '2020-03-12 10:04:28', '2020-03-12 10:04:28'),
(29, 13, 'ASUS VivoBook 15', 'X512DA', 'Peacock Blue', '8GB DDR4 2400 Mhz.RAM (Expandable Upto 20 GB) and storage as 512 GB SSD.\r\nDisplay as 15.6\" (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare Panel with 45% NTSC. It also features Chiclet Keyboard and fingerprint sensor for one touch access', 'I/O PORTS: 1 x COMBO audio jack | 2 x USB 2.0 port(s) | 1 x USB 3.0 port(s) Type A |1 x USB 3.0 port(s) Type C |1 x HDMI,| 1 x Fingerprint reader | Fast Charging support 60% in 49 Min.\r\n    Vivobook 15 is a Windows 10 laptop powered by the AMD Ryzen 5 3500U processor. Weights just 1.7 kg. And 19.9 MM Thin.\r\n    Vivobook 15 features 8GB DDR4 2400 Mhz.RAM (Expandable Upto 20 GB) and storage as 512 GB SSD.\r\n    Display as 15.6\" (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare Panel with 45% NTSC. It also features Chiclet Keyboard and fingerprint sensor for one touch access.\r\n    ASUS Sonic Master is a combination of hardware, software and audio tuning designed with the goal of giving you the very best audio experiences. ASUS Audio Wizard is a powerful software suite that makes it easy to achieve the ideal audio balance for any type of content.', 42990.00, '15235.jpg', 1, '2020-03-12 10:08:49', '2020-03-12 10:08:49'),
(30, 13, 'Lenovo Ideapad S145', '81MV009JIN', 'Grey', 'Intel Core I3 8th Gen 15.6-inch FHD Thin and Light Laptop ( 4GB RAM / 1TB HDD / Windows 10 Home / Office Home and Student 2019 / Grey / 1.85kg )', 'Processor: 8th Generation Core Intel I3-8145U processor, 2.1 Ghz base speed, 3.9 Ghz max speed, 2 cores, 4Mb smart Cache\r\n    Operating System: Preloaded Windows 10 Home, with lifetime validity\r\n    Display: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\n    Memory and Storage: 4 GB RAM | Storage 1 TB HDD\r\n    Design and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark 2014\r\n    This genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\n    Pre-Installed Software: Windows 10 Home, Office Home and Student 2019 | Inside the box: Laptop, Charger, User Manual\r\n    Ports and Optical Drive: 1 HDMI, 2 USB 3.0, USB 2.0 |4-in-1 card reader (SD,SDHC,SDXC,MMC)|Combo audio and microphone jack |No Optical Drive', 30425.00, '15511.jpg', 1, '2020-03-12 10:20:17', '2020-03-12 10:20:17'),
(31, 13, 'Dell Inspiron 3595', 'dellins02', 'Natural Silver', '15.6-inch Laptop (A6-9225/4GB/1TB HDD/Windows 10 + MS Office/Radeon R4 Integrated Graphics/Silver)', '2GHz AMD A6-9225 processor\r\n    4GB DDR4 RAM\r\n    1TB 5400rpm hard drive\r\n    15.6-inch screen, Radeon R4 Integrated Graphics Graphics\r\n    Windows 10 Home operating system\r\n    6 hours battery life, 2.2kg laptop\r\n    Processor detail\r\n\r\n    1TB SATA HDD , 4GB DDR4 RAM,Radeon R4 Integrated Graphics\r\n    15.6 inch, Windows 10 Home,Microsoft office 2019\r\n    1 Year Manufacturer Warranty', 21490.00, '87791.jpg', 1, '2020-03-12 10:23:42', '2020-03-12 10:23:42'),
(32, 15, 'Logitech K400', 'logitek01', 'Black', 'Wireless Keyboard', 'USB receiver is inside the flap that opens the cardboard box from the middle or inside the batter component of the keyboard. Unifying receiver makes setup of your TV keyboard a snap with its plug and play design. USB port location is indicated on the packaging of the product - please refer to the image on the packaging and also refer to the 6th image on the website\r\n    Built-in 3.5 inch touchpad, Typing noise: Within 55 dBA for all keys\r\n    Enjoy effortless control of your TV-connected computer with the wireless keyboard\r\n    Compact and slIM design makes it perfect for the living room\r\n    Comfortable and quiet keys\r\n    10m wireless range ensures trouble-free connection in the largest room\r\n    Eliminate any learning curve while adding easy-access volume controls and arrow keys with the familiar, media-friendly key layout\r\n\r\n    18 months battery life,1yr Limited Hardware warranty\r\n    Works with Windows 7, 8, 10 or later as well as Android 5.0 or later and Chrome OS', 2599.00, '37192.jpg', 1, '2020-03-12 10:28:10', '2020-03-12 10:28:10'),
(33, 15, 'Logitech MK345', 'logicombo01', 'Black', 'Wireless Combo – Full-Sized Keyboard with Palm Rest and Comfortable Right-Handed Mouse', 'NOTE :The adapter of mouse is located at the bottom of the panel,USB port can be found by opening the battery cover at the back of the mouse\r\n    Skip a song, pause a video or mute audio instantly , Type on a full-size layout with 12 enhanced F-keys for media control\r\n    Enjoy an awesome 3-year keyboard and 18-month mouse battery life, provided by our energy efficient engineering\r\n    The generous palm rest, the contoured right-handed mouse and the adjustable keyboard height give you more comfort.\r\n    Wireless system: Advanced 2.4 GHz wireless connectivity\r\n    spill proof design so you don’t have to worry about accidental spills\r\n    The perfect combination of great comfort, modern design, powerful features and extra-long battery life\r\n\r\n    NOTE :The adapter of mouse is located at the bottom of the panel,USB port can be found by opening the battery cover at the back of the mouse\r\n    Note : In case of Wireless mouse, the USB receiver will be provided inside or along with the mouse\r\n    Skip a song, pause a video or mute audio instantly , Type on a full-size layout with 12 enhanced F-keys for media control', 1500.00, '42809.jpg', 1, '2020-03-12 10:31:07', '2020-03-12 10:31:07'),
(34, 15, 'Logitech Media Combo', 'MK200', 'Black', 'Full-Size Keyboard and High-Definition Optical Mouse Wired', 'nstant media and internet access\r\nEight shortcut keys\r\nFull-size keyboard\r\nComfortable, quiet typing\r\nInstant access to applications\r\n3-year limited hardware warranty\r\nHigh-definition optical mouse\r\nIf you\'re using a USB hub, try plugging the mouse or keyboard directly into the computer\'s USB port instead.', 527.00, '88348.jpg', 1, '2020-03-12 10:34:21', '2020-03-12 10:34:21'),
(35, 15, 'Logitech Prodigy', 'G213 RGB', 'Black', 'Wired Gaming Keyboard', 'Prodigy series Logitech G keyboard for advanced gaming-grade performance is up to 4x faster than standard keyboards, so every keypress is near instantaneous from fingers to screen\r\n    Brilliant color spectrum illumination lets you easily personalize up to 5 lighting zones from over 16.8 million colours to match your style and gaming gear\r\n    Tactile performance keys tuned for gaming with responsive and more\r\n    Dedicated media control let you quickly play, pause, skip and adjust the volume of music right from the keyboard\r\n    Easily customize key lighting, 12 function keys with custom commands and more with free Logitech gaming software', 2999.00, '53287.jpg', 1, '2020-03-12 10:37:01', '2020-03-12 10:37:01'),
(36, 16, 'Logitech M337', 'M337', 'Red', 'Wireless Mouse, Bluetooth, 1000 DPI Laser Grade Optical Sensor, 10-Month Battery Life, PC/Mac/Laptop - Red', 'Use with virtually any Bluetooth enabled computer, laptop or tablet: Connects to Mac, Windows, Chrome OS and Android\r\n    Slip the comfort M337 mouse into your laptop bag or pocket so you have it anywhere you need it\r\n    Comfortable curved shape for right or left hand use with rubber grips, keeps your hand feeling comfortable, even after long hours of use\r\n    10 month battery life helps you go longer between battery changes (battery life may vary based on user and computing conditions)\r\n    Navigation button and tilt wheel put control in the palm of your hand\r\n    Use with virtually any Bluetooth enabled computer, laptop or tablet: Connects to Mac, Windows, Chrome OS and Android\r\n    Note : In case of Wireless mouse, the USB receiver will be provided inside or along with the mouse\r\n\r\n    Slip the comfort M337 mouse into your laptop bag or pocket so you have it anywhere you need it\r\n    Comfortable curved shape for right or left hand use with rubber grips, keeps your hand feeling comfortable, even after long hours of use\r\n    10 month battery life helps you go longer between battery changes (battery life may vary based on user and computing conditions)', 999.00, '60000.jpg', 1, '2020-03-12 10:58:41', '2020-03-12 10:58:41'),
(37, 16, 'Logitech Pebble', 'M350', 'Rose', 'Wireless Mouse with Bluetooth or USB - Silent, Slim Computer Mouse with Quiet Click for Laptop, Notebook, PC and Mac', 'Modern, slim and beautiful Pebble shape Logitech Pebble has stand-out simplicity with a design that is nice to hold, feels great in your hand and is easy to carry around\r\n    Silent clicks and ultra-quiet scrolling. Enjoy the same click feel with over 90% noise reduction on the click sound\r\n    Dual connectivity. Connect the way you like via Bluetooth wireless technology or via the included tiny USB receiver\r\n    Long battery life. Logitech Pebble stays powered for up to 18 months on a single AA battery\r\n    High-precision optical tracking. Logitech Pebble tracks fast and accurately where you want to use it\r\n    Modern, slim and beautiful Pebble shape Logitech Pebble has stand-out simplicity with a design that is nice to hold, feels great in your hand and is easy to carry around\r\n    Note : In case of Wireless mouse, the USB receiver will be provided inside or along with the mouse\r\n\r\n    Silent clicks and ultra-quiet scrolling. Enjoy the same click feel with over 90% noise reduction on the click sound\r\n    Dual connectivity. Connect the way you like via Bluetooth wireless technology or via the included tiny USB receiver\r\n    Long battery life. Logitech Pebble stays powered for up to 18 months on a single AA battery', 1599.00, '11133.jpg', 1, '2020-03-12 11:02:33', '2020-03-12 11:02:33'),
(38, 16, 'Logitech wired mouse', 'logiwired011', 'Black', 'Logitech M100r Wired USB Mouse (Black)', 'Simple to set up and use\r\n    Full-size comfort, ambidextrous design\r\n    High-definition optical tracking\r\n    Compatible with: Windows XP, Windows Vista, or Windows 7, Windows 8 and Linux kernel 2.6 or later and Mac OS X 10.4 or later\r\n    Simple to set up and use\r\n    Note : In case of Wireless mouse, the USB receiver will be provided inside or along with the mouse\r\n    Full-size comfort, ambidextrous design\r\n\r\n    High-definition optical tracking\r\n    Compatible with: Windows XP, Windows Vista, or Windows 7, Windows 8 and Linux kernel 2.6 or later and Mac OS X 10.4 or later\r\n\r\nShow Less', 499.00, '10994.jpg', 1, '2020-03-12 11:05:25', '2020-03-12 11:05:25'),
(39, 16, 'Logitech B170', 'B170', 'Black', 'Wireless optical mouse', 'Reliable Wireless Connection : Enjoy a wireless connection up to 10m away thanks to a plug-and-forget USB mini-receiver\r\n    Optical Tracking : The advanced optical tracking features enable ultra precise moves on almost any surface.\r\n    12-Month Battery Life : Don’t worry about constant battery changes as this wired Logitech mouse has a 12-month battery life.\r\n    Quality Assured : Logitech are experts you can trust, and for more than 30 years we have created high-quality corded, cordless and Bluetooth products that help you get the most out of your Windows computer, laptop, Mac or Macbook\r\n    Reliable Wireless Connection : Enjoy a wireless connection up to 10m away thanks to a plug-and-forget USB mini-receiver\r\n    Note : In case of Wireless mouse, the USB receiver will be provided inside or along with the mouse\r\n    Optical Tracking : The advanced optical tracking features enable ultra precise moves on almost any surface.', 599.00, '28956.jpg', 1, '2020-03-12 11:08:00', '2020-03-12 11:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE IF NOT EXISTS `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(19, 27, 'lll', 'low', 41000.00, 10, '2020-03-12 10:01:16', '2020-03-12 11:36:34'),
(20, 27, 'jjj', 'low end', 41000.00, 10, '2020-03-12 10:04:50', '2020-03-12 11:36:34'),
(21, 29, 'kkk', 'low end', 42990.00, 10, '2020-03-12 10:17:53', '2020-03-12 11:37:42'),
(22, 30, 'mmm', 'low end', 30425.00, 10, '2020-03-12 10:20:43', '2020-03-12 11:38:06'),
(23, 31, 'nnn', 'low end', 21490.00, 5, '2020-03-12 10:24:06', '2020-03-12 11:38:28'),
(24, 32, 'ooo', 'wireless', 2599.00, 10, '2020-03-12 10:28:35', '2020-03-12 11:38:43'),
(25, 33, 'ppp', 'combo', 1500.00, 10, '2020-03-12 10:31:28', '2020-03-12 10:31:28'),
(26, 34, 'plp', 'wired combo', 527.00, 10, '2020-03-12 10:34:43', '2020-03-12 11:39:09'),
(27, 35, 'lml', 'wired', 2999.00, 5, '2020-03-12 10:37:26', '2020-03-12 11:39:20'),
(28, 36, 'asa', 'wireless', 999.00, 10, '2020-03-12 11:00:08', '2020-03-12 11:00:08'),
(29, 37, 'kik', 'wireless', 1599.00, 5, '2020-03-12 11:02:52', '2020-03-12 11:39:35'),
(30, 38, 'zaz', 'wired', 499.00, 10, '2020-03-12 11:05:42', '2020-03-12 11:39:42'),
(31, 39, 'cvc', 'wireless', 599.00, 15, '2020-03-12 11:08:33', '2020-03-12 11:08:33'),
(32, 18, 'aaa', 'hignend', 71420.00, 15, '2020-03-12 11:27:34', '2020-03-12 11:53:10'),
(33, 19, 'bbb', 'hignend', 159000.00, 10, '2020-03-12 11:29:56', '2020-03-12 11:32:58'),
(34, 20, 'ccc', 'hignend', 229000.00, 10, '2020-03-12 11:30:50', '2020-03-12 11:33:17'),
(35, 21, 'ddd', 'highend', 74299.00, 10, '2020-03-12 11:31:22', '2020-03-12 11:33:31'),
(36, 22, 'ere', 'highend', 83999.00, 10, '2020-03-12 11:31:48', '2020-03-12 11:33:44'),
(37, 23, 'ftf', 'medium', 58999.00, 10, '2020-03-12 11:34:28', '2020-03-12 11:34:28'),
(38, 24, 'qwqw', 'Medium', 53480.00, 10, '2020-03-12 11:34:52', '2020-03-12 11:34:52'),
(39, 25, 'xcxc', 'Medium', 55350.00, 10, '2020-03-12 11:35:33', '2020-03-12 11:35:33'),
(40, 26, 'asdc', 'Medium', 57868.00, 10, '2020-03-12 11:35:59', '2020-03-12 11:35:59'),
(41, 28, 'dfdf', 'low end', 40550.00, 10, '2020-03-12 11:37:07', '2020-03-12 11:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `created_at`) VALUES
(7, 18, '65545.jpg', '2020-03-12 14:56:03'),
(8, 18, '42081.jpg', '2020-03-12 14:56:08'),
(9, 18, '70137.jpg', '2020-03-12 14:56:35'),
(10, 19, '9202.jpg', '2020-03-12 15:00:39'),
(11, 19, '80721.jpg', '2020-03-12 15:00:44'),
(12, 19, '97919.jpg', '2020-03-12 15:00:49'),
(13, 21, '26372.jpg', '2020-03-12 15:08:30'),
(14, 21, '67202.jpg', '2020-03-12 15:08:36'),
(15, 21, '4068.jpg', '2020-03-12 15:08:44'),
(16, 22, '44282.jpg', '2020-03-12 15:11:31'),
(17, 22, '26266.jpg', '2020-03-12 15:11:38'),
(18, 22, '64488.jpg', '2020-03-12 15:11:45'),
(19, 23, '90794.jpg', '2020-03-12 15:16:21'),
(20, 23, '4700.jpg', '2020-03-12 15:16:25'),
(21, 23, '21732.jpg', '2020-03-12 15:16:30'),
(22, 24, '58024.jpg', '2020-03-12 15:18:49'),
(23, 24, '36656.jpg', '2020-03-12 15:18:53'),
(24, 24, '64156.jpg', '2020-03-12 15:18:58'),
(25, 24, '46336.jpg', '2020-03-12 15:19:02'),
(26, 25, '22659.jpg', '2020-03-12 15:21:36'),
(27, 25, '96502.jpg', '2020-03-12 15:21:40'),
(28, 25, '52057.jpg', '2020-03-12 15:21:44'),
(29, 25, '29007.jpg', '2020-03-12 15:21:49'),
(30, 26, '20047.jpg', '2020-03-12 15:25:04'),
(31, 26, '22124.jpg', '2020-03-12 15:25:08'),
(32, 26, '31340.jpg', '2020-03-12 15:25:13'),
(33, 26, '80367.jpg', '2020-03-12 15:25:18'),
(34, 27, '8017.jpg', '2020-03-12 15:32:12'),
(35, 27, '86905.jpg', '2020-03-12 15:32:17'),
(36, 27, '31473.jpg', '2020-03-12 15:32:21'),
(37, 27, '82253.jpg', '2020-03-12 15:35:02'),
(38, 27, '21725.jpg', '2020-03-12 15:35:13'),
(39, 27, '56257.jpg', '2020-03-12 15:35:18'),
(40, 27, '65473.jpg', '2020-03-12 15:35:23'),
(41, 29, '62145.jpg', '2020-03-12 15:48:12'),
(42, 29, '36069.jpg', '2020-03-12 15:48:16'),
(43, 29, '42849.jpg', '2020-03-12 15:48:20'),
(44, 30, '86468.jpg', '2020-03-12 15:50:56'),
(45, 30, '48679.jpg', '2020-03-12 15:51:03'),
(46, 30, '44947.jpg', '2020-03-12 15:51:07'),
(47, 31, '93374.jpg', '2020-03-12 15:54:24'),
(48, 31, '53103.jpg', '2020-03-12 15:54:28'),
(49, 31, '15790.jpg', '2020-03-12 15:54:33'),
(50, 32, '82326.jpg', '2020-03-12 15:59:12'),
(51, 32, '54054.jpg', '2020-03-12 15:59:16'),
(52, 32, '17436.jpg', '2020-03-12 15:59:20'),
(53, 33, '7157.jpg', '2020-03-12 16:01:40'),
(54, 33, '3439.jpg', '2020-03-12 16:01:45'),
(55, 33, '61819.jpg', '2020-03-12 16:01:50'),
(56, 34, '97628.jpg', '2020-03-12 16:04:56'),
(57, 35, '3840.jpg', '2020-03-12 16:07:38'),
(58, 35, '41653.jpg', '2020-03-12 16:07:43'),
(59, 35, '25137.jpg', '2020-03-12 16:07:47'),
(60, 36, '21539.jpg', '2020-03-12 16:30:28'),
(61, 36, '96418.jpg', '2020-03-12 16:30:32'),
(62, 36, '20939.jpg', '2020-03-12 16:30:37'),
(63, 37, '37981.jpg', '2020-03-12 16:33:05'),
(64, 37, '83787.jpg', '2020-03-12 16:33:09'),
(65, 37, '93190.jpg', '2020-03-12 16:33:13'),
(66, 37, '85081.jpg', '2020-03-12 16:33:17'),
(67, 38, '65541.jpg', '2020-03-12 16:35:55'),
(68, 38, '37778.jpg', '2020-03-12 16:35:59'),
(69, 38, '95081.jpg', '2020-03-12 16:36:04'),
(70, 39, '71902.jpg', '2020-03-12 16:38:46'),
(71, 39, '9997.jpg', '2020-03-12 16:38:51'),
(72, 39, '28232.jpg', '2020-03-12 16:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'SANATH SUVARNA', 'MIDC', 'Baramati', 'Maharshtra', 'India', '4156', '78945613256', 'suvarnasanath@gmail.com', '$2y$10$0vFUnNg5Pdq1gtzUmW5c8.umxrBwgHOIhp5IOxS2LeR8z7WPmp0t2', 0, 0, 'oU1vDPXyS1Oa7nvZzJsnW66QyM4GO8gmeLZAzHcr9jcDnLk2mLQDXwOdkVhr', '2020-03-12 09:11:48', '2020-03-13 06:24:09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
