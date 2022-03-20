-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 01:24 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_transections`
--

CREATE TABLE `bank_transections` (
  `id` int(10) UNSIGNED NOT NULL,
  `bank_account_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `available_balance` double(10,2) NOT NULL DEFAULT '0.00',
  `status` enum('c','d') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_transections`
--

INSERT INTO `bank_transections` (`id`, `bank_account_id`, `description`, `amount`, `available_balance`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'rTn4L5cjQDlDPLD3S16J7y3YPqAtnTUcOZPgDyyX6GTk1OBEQU', 708.00, 708.00, 'c', '2022-01-06 19:30:00', '2022-01-06 19:30:00', NULL),
(2, 1, 'nHy7PRc702zZaRxYdS4i8nujtwEKUQOk9hq1IsSYi0IPqVcLV0', 406.00, 1114.00, 'c', '2022-01-07 19:30:00', '2022-01-07 19:30:00', NULL),
(3, 1, 'bynEuiRY1QX2xhBbFbA5ZvS0GfVPDEN3dJnU3X4IexvfXZXz8U', 29.00, 1143.00, 'c', '2022-01-08 19:30:00', '2022-01-08 19:30:00', NULL),
(4, 1, 'QJKoA0lgrQxWJjaKavb7ndc6965By4CoosvomlUqs6NeobLPxt', 599.00, 1742.00, 'c', '2022-01-09 19:30:00', '2022-01-09 19:30:00', NULL),
(5, 1, 'XfljmGMRTHZIcRtZXwtJW9d8pqOPwdqh5h5vtZz8AbaVyXTNwL', 981.00, 761.00, 'd', '2022-01-10 19:30:00', '2022-01-10 19:30:00', NULL),
(6, 1, 'gnrDuzLY8MijqCsyBohsHO02aAsCpGzuh4LntFE5ZxprMU7T3n', 697.00, 1458.00, 'c', '2022-01-11 19:30:00', '2022-01-11 19:30:00', NULL),
(7, 1, 'KJtQV094N7Ufo9t92zut5itTfXZHNHUPuDhcozlYNEFI8nPFRS', 481.00, 1939.00, 'c', '2022-01-12 19:30:00', '2022-01-12 19:30:00', NULL),
(8, 1, 'R9si8gPCJmDVwyP1psFjaXfISpCs9ZJmhyGv3kLtnTDcgvHwTN', 178.00, 2117.00, 'c', '2022-01-13 19:30:00', '2022-01-13 19:30:00', NULL),
(9, 1, 'BUeiO9ex3hyYbeZkYchRcyghpdKXhmEMhgmzYrD1aSik3TodN5', 829.00, 2946.00, 'c', '2022-01-14 19:30:00', '2022-01-14 19:30:00', NULL),
(10, 1, 'kdanmFp89SBHGbCGrhNzP560noEIq88SlYmcjwJnixjOZOmKRR', 36.00, 2910.00, 'd', '2022-01-15 19:30:00', '2022-01-15 19:30:00', NULL),
(11, 1, '6VdGFvBGOT7h1MwEvTbgdoRbOuPLPMjM9JQMt93rWIO0KVkTv6', 980.00, 3890.00, 'c', '2022-01-16 19:30:00', '2022-01-16 19:30:00', NULL),
(12, 1, 'vZNOEY2GGZSuGjsALWnum9k1F3XuBQWuEMb3TxRjWtur6CXoOK', 603.00, 3287.00, 'd', '2022-01-17 19:30:00', '2022-01-17 19:30:00', NULL),
(13, 1, 'GEHDBMERrUQ2JF72VLst1Q3CWUwHcecT3UGCR8duvSufNbmBlH', 231.00, 3056.00, 'd', '2022-01-18 19:30:00', '2022-01-18 19:30:00', NULL),
(14, 1, '0KtSOC1NyTGI15n6nBKOZjnhQXIIcPkx6m0qum9QSQu2wOgc7R', 848.00, 3904.00, 'c', '2022-01-19 19:30:00', '2022-01-19 19:30:00', NULL),
(15, 1, 'PBAZbxn5Vaez249NZEqtQ2YMXOI4q55OrrUVw6I7bfsblj4J9p', 622.00, 4526.00, 'c', '2022-01-20 19:30:00', '2022-01-20 19:30:00', NULL),
(16, 1, 'edlqKglfly85s89APnPdTAMKgK20tdVW6zn9JOI279eUY0GgQ6', 346.00, 4180.00, 'd', '2022-01-21 19:30:00', '2022-01-21 19:30:00', NULL),
(17, 1, 'XUYvX3GFlUoUsaK0lDemurPOFQJUGcpacXwyhVByfpE2hLnfaB', 270.00, 4450.00, 'c', '2022-01-22 19:30:00', '2022-01-22 19:30:00', NULL),
(18, 1, '5qycbnRb09KLnbdjyjk7wu9vKApig5iG1qvK3wxjG6HXM5kqge', 982.00, 5432.00, 'c', '2022-01-23 19:30:00', '2022-01-23 19:30:00', NULL),
(19, 1, 'HHLI3RJz1VlnQqRoh7LVtfwJJf93bwEMHVrtfmjLGqn2uRIvAZ', 173.00, 5259.00, 'd', '2022-01-24 19:30:00', '2022-01-24 19:30:00', NULL),
(20, 1, 'EABfdMKzcTUZ5oQEmYeMPNsoGzWzZfpwRl5wRDo02nIqkf3fPr', 396.00, 5655.00, 'c', '2022-01-25 19:30:00', '2022-01-25 19:30:00', NULL),
(21, 1, 'l8OD0Sxx5FUpFx53TqBQlY6veUFGsLBqNY5SFbEgp6rSyobLri', 168.00, 5823.00, 'c', '2022-01-26 19:30:00', '2022-01-26 19:30:00', NULL),
(22, 1, '3nHQ0XRwm0tTBB0uBf4MZJrRHRE04xnbA4XPf6frLOgEHySpbq', 974.00, 6797.00, 'c', '2022-01-27 19:30:00', '2022-01-27 19:30:00', NULL),
(23, 1, 'rSxUxrA81xKx6f1hHqMGy4DTjeqJQgRVS9dKA3Ueg0oCkfkkMf', 907.00, 7704.00, 'c', '2022-01-28 19:30:00', '2022-01-28 19:30:00', NULL),
(24, 1, 'OJsxeeRz28pjc7PYZcuRVeLCJ7nH3KiiWcyRlFn188uq0vRak4', 240.00, 7464.00, 'd', '2022-01-29 19:30:00', '2022-01-29 19:30:00', NULL),
(25, 1, 'rXTlp8Cg5IVa9JZ7ia1GNA0zEdunBK3IAxI1blS25eWbLA0xt0', 284.00, 7180.00, 'd', '2022-01-30 19:30:00', '2022-01-30 19:30:00', NULL),
(26, 1, '30zFPIsanCjuQ51QWh8fdETvqufTHZh4ZBVLSR70HIa78Z2FbD', 672.00, 6508.00, 'd', '2022-01-31 19:30:00', '2022-01-31 19:30:00', NULL),
(27, 1, '6JcJ960vyvfrweopxsPSe1ulTGHnE3ze8sx6II3RHK6Is1wTez', 768.00, 7276.00, 'c', '2022-02-01 19:30:00', '2022-02-01 19:30:00', NULL),
(28, 1, 'UltChsBc19b1cAmqjcASgPjzPPh1y4YcVwY0nNbtU8yC3TftV6', 628.00, 7904.00, 'c', '2022-02-02 19:30:00', '2022-02-02 19:30:00', NULL),
(29, 1, 'm8PLuYSqoygb3WdLuwAuDmrkUNScLzws32JXd44m6JFn9Xpwfv', 741.00, 7163.00, 'd', '2022-02-03 19:30:00', '2022-02-03 19:30:00', NULL),
(30, 1, 'cXzXmVgqJ9PbjKDt0Qwac4tX8QRucwQ0NDayBsxQtEamvQeoXm', 819.00, 7982.00, 'c', '2022-02-04 19:30:00', '2022-02-04 19:30:00', NULL),
(31, 1, 'G8FfXYDiy29YBHYybxiohESkMmb8MSjBKTamp0w90vopUcxtqw', 510.00, 7472.00, 'd', '2022-02-05 19:30:00', '2022-02-05 19:30:00', NULL),
(32, 1, 'Z5vkYE4oag1UpxSGhh4h9UYf4KRr5OH4NYxF7NqkA3rvm9Pltb', 869.00, 8341.00, 'c', '2022-02-06 19:30:00', '2022-02-06 19:30:00', NULL),
(33, 1, '921x3PNYZFE72Ho7pxKBvXrQHV1GazjLU451B3PKMoWcjYClBD', 611.00, 7730.00, 'd', '2022-02-07 19:30:00', '2022-02-07 19:30:00', NULL),
(34, 1, 'VvR4t8xW6KY7vjOQYOu18ZC2iuUwdRrJ8EY807Zu5RGtOX1Ukf', 66.00, 7664.00, 'd', '2022-02-08 19:30:00', '2022-02-08 19:30:00', NULL),
(35, 1, 'SS9JY0TLYUUykMpBAUgzlccadXgEsLN5dyRmKLigWYflVunNvO', 36.00, 7628.00, 'd', '2022-02-09 19:30:00', '2022-02-09 19:30:00', NULL),
(36, 1, 'T4mD97IlQWgB78LzXIb4WCnPglv2AxJikrH8kty8glz01Hn5xe', 33.00, 7661.00, 'c', '2022-02-10 19:30:00', '2022-02-10 19:30:00', NULL),
(37, 1, 'KoKOeImn1Bjl90YkqmLXkDrRV030dkxl7qfIzFiTsadYQfbgwN', 563.00, 7098.00, 'd', '2022-02-11 19:30:00', '2022-02-11 19:30:00', NULL),
(38, 1, 'xgOE8jrz4OuabkZ8ehujQiA2ZzbDLRPMlNro6Jje8xdEOFD2sA', 58.00, 7156.00, 'c', '2022-02-12 19:30:00', '2022-02-12 19:30:00', NULL),
(39, 1, 'MqQW66eni8YLdss5G5vlMUmAFmSkkJ4If8C4quUprQmW5S9riZ', 710.00, 6446.00, 'd', '2022-02-13 19:30:00', '2022-02-13 19:30:00', NULL),
(40, 1, 'tFMqjR1mwcchKKGacyszlPNyN13E0GNKjm6X6cMjRDVjBTcc93', 474.00, 6920.00, 'c', '2022-02-14 19:30:00', '2022-02-14 19:30:00', NULL),
(41, 1, 'um4FYPgjRa40G6IO1gUNOr2Ur72R69pyUD2Q5oUZfSSB59kS9U', 124.00, 7044.00, 'c', '2022-02-15 19:30:00', '2022-02-15 19:30:00', NULL),
(42, 1, 'y87op7n7AZXUKU8J1PrBBliPF7DXRowGtBGbC4O7EhMB5cZews', 807.00, 7851.00, 'c', '2022-02-16 19:30:00', '2022-02-16 19:30:00', NULL),
(43, 1, 'DqIGwBPyYkwQqy5uT9eNWPbwL6dbZ6bgSvRUKVCk43k7eJn2gj', 114.00, 7965.00, 'c', '2022-02-17 19:30:00', '2022-02-17 19:30:00', NULL),
(44, 1, 'X4g45IEcxLM7Ie8RMyFEzUTd3DHv2YgNkZ6k20XLtYbGQRTnBW', 836.00, 7129.00, 'd', '2022-02-18 19:30:00', '2022-02-18 19:30:00', NULL),
(45, 1, 'mOLbKISyBB6Ndn4AvotazzQYun8MPcwym6UN7DHoqVblKxzzU5', 816.00, 6313.00, 'd', '2022-02-19 19:30:00', '2022-02-19 19:30:00', NULL),
(46, 1, 'Dowf5qO5d6MqIRfvXGZRdkwtXkxFfwJzcsmTtMmiY3rgfZxuPA', 452.00, 6765.00, 'c', '2022-02-20 19:30:00', '2022-02-20 19:30:00', NULL),
(47, 1, 'WLMZgac9N6Y517pta7KkJZBgGvonkzvdCfpvbjvoPUCKdjizRZ', 605.00, 7370.00, 'c', '2022-02-21 19:30:00', '2022-02-21 19:30:00', NULL),
(48, 1, 'xUwK2kK4eTCkxKcsOCRxx9wU7CbuHonbtnwwXmmRyRHZXQiOrY', 202.00, 7168.00, 'd', '2022-02-22 19:30:00', '2022-02-22 19:30:00', NULL),
(49, 1, 'tnDOad4RESWsuDt2HkFl5CZJ9O2xNQaWSnLoMOUHABFHBvOCXm', 166.00, 7334.00, 'c', '2022-02-23 19:30:00', '2022-02-23 19:30:00', NULL),
(50, 1, 'DzG4JY9FcieVwcLf7cmcRf9jmkUASKc8sbM6pWyvyr42rWxqKX', 642.00, 7976.00, 'c', '2022-02-24 19:30:00', '2022-02-24 19:30:00', NULL),
(51, 1, 'yhAKUJI1w6eEImqPEEQUosjatDMSbpU1ixj1HsI7ZdIM7N3OzA', 501.00, 7475.00, 'd', '2022-02-25 19:30:00', '2022-02-25 19:30:00', NULL),
(52, 1, '0etoi9a4sgl6lCvIhTM17maJVH0NkfW67LaQJiC5Y5ZjERZCHP', 621.00, 8096.00, 'c', '2022-02-26 19:30:00', '2022-02-26 19:30:00', NULL),
(53, 1, 'ixNMUR2U94Z4kwiEHZNGRlsvLkTv7Kb5bPdOVizyRUAFpVMTw7', 639.00, 8735.00, 'c', '2022-02-27 19:30:00', '2022-02-27 19:30:00', NULL),
(54, 1, 'DDf9eSRjt36GmKfY9IPKMS9oiLqtSNAxHVpE8eT8lHoYXKL7Nu', 672.00, 8063.00, 'd', '2022-02-28 19:30:00', '2022-02-28 19:30:00', NULL),
(55, 1, '5XEkxJU06DGqXE3tZt4Z0iV2Q0Hm0mlp59fojh9bltXaSO4kBS', 733.00, 7330.00, 'd', '2022-03-01 19:30:00', '2022-03-01 19:30:00', NULL),
(56, 1, 'wOXKHVpMpo1wduZ6juRVcqEc1T70zMrQCpvdKTn6JWKb5OctDn', 673.00, 6657.00, 'd', '2022-03-02 19:30:00', '2022-03-02 19:30:00', NULL),
(57, 1, 'xnU9IUEHuGwmIv5zXpY6bnxOW2nmtuWenaV9n65jIiwJ6UtJne', 874.00, 7531.00, 'c', '2022-03-03 19:30:00', '2022-03-03 19:30:00', NULL),
(58, 1, '07y28VyFctrYKVmHjsLeWv0OseSHSMZdVNc6IocR9L9uZ2J3Ql', 909.00, 6622.00, 'd', '2022-03-04 19:30:00', '2022-03-04 19:30:00', NULL),
(59, 1, 'VbJ74VFU813NPWOghi8Ay4PObcs4AhNFSwOj0SuFko22S9kFxH', 674.00, 7296.00, 'c', '2022-03-05 19:30:00', '2022-03-05 19:30:00', NULL),
(60, 1, 'nTs0m4ee38vQZy6zCDRTLT3hxCsHqV53bJLhs09jnEfftIvG49', 745.00, 8041.00, 'c', '2022-03-06 19:30:00', '2022-03-06 19:30:00', NULL),
(61, 1, 'MVawLH49ghECFEfIybeh33cr3tALZLKdbAItQNfmPdzCV8zROJ', 624.00, 7417.00, 'd', '2022-03-07 19:30:00', '2022-03-07 19:30:00', NULL),
(62, 1, 'KdsBagk5vPw8eiZK0Y7uPRRkgrgRXn8meeZlr748DIrRe21KUJ', 582.00, 7999.00, 'c', '2022-03-08 19:30:00', '2022-03-08 19:30:00', NULL),
(63, 1, 'cSwSKI4NVsuulJvz9gl59XWqA1vWSckwnMX5tPnlVGgjPTImvV', 465.00, 8464.00, 'c', '2022-03-09 19:30:00', '2022-03-09 19:30:00', NULL),
(64, 1, 'K2Wjjib4yJzIF6vBM72sS13b6UIJlY8gdHx2AJTB7DHytOFpa9', 513.00, 8977.00, 'c', '2022-03-10 19:30:00', '2022-03-10 19:30:00', NULL),
(65, 1, 'YtVm3JQgqUmRM7KyMWH39SWuuP1zIwCua9BlH56iVFty7B45B2', 306.00, 8671.00, 'd', '2022-03-11 19:30:00', '2022-03-11 19:30:00', NULL),
(66, 1, 'oIl0lYZUBN8II76jRCdG7YqojAGMPuyqgZpQ6kZZx6ApUhgRTn', 464.00, 8207.00, 'd', '2022-03-12 19:30:00', '2022-03-12 19:30:00', NULL),
(67, 1, 'IuJ0njb3YaZGyKUDCW5dj13U1VYJuK07JCRFL3HAUkDtLpYTNL', 244.00, 7963.00, 'd', '2022-03-13 19:30:00', '2022-03-13 19:30:00', NULL),
(68, 1, 'QjyFvvKpLOkr2MtrWeSjXi6ruG7lG755jysKJ7xENnz4x38q8V', 803.00, 8766.00, 'c', '2022-03-14 19:30:00', '2022-03-14 19:30:00', NULL),
(69, 1, 'gXGYQTEd7VYO8iPT9eCTu4HrGIPogOUNqy1obbhVsM5kmMfkUI', 865.00, 7901.00, 'd', '2022-03-15 19:30:00', '2022-03-15 19:30:00', NULL),
(70, 1, 'yXy6EnDQBv0UObk4a23ijI9pvNXWGC4rQiK4zioQ1rMcBKnkki', 174.00, 8075.00, 'c', '2022-03-16 19:30:00', '2022-03-16 19:30:00', NULL),
(71, 1, 'D0ON7u6z75FP382frhwLA6kDoHNgy4E4l8V7PDRox5gfv9BG9S', 810.00, 8885.00, 'c', '2022-03-17 19:30:00', '2022-03-17 19:30:00', NULL),
(72, 1, 'gfKzEzl9zwLJwWwmhV2QYJFcIENoMaTJrvlCHmWXc682w2OFVt', 822.00, 8063.00, 'd', '2022-03-18 19:30:00', '2022-03-18 19:30:00', NULL),
(73, 1, 'fBofguRuYneaK2zpJw17MiBOvMuGnw6OTTFDYEJwSUVWTitEBx', 808.00, 7255.00, 'd', '2022-03-19 19:30:00', '2022-03-19 19:30:00', NULL),
(74, 1, 'YAoI8ZN8U1hQf1aCeePEjq0HgTTfqT97DjkZbt9rVehZwdxfDn', 414.00, 6841.00, 'd', '2022-03-20 19:30:00', '2022-03-20 19:30:00', NULL),
(75, 1, 'fruOfZpuK5MMnsZE1MaSzTFfBSK0YpO9lMjMbq7V1tInwrwlek', 766.00, 7607.00, 'c', '2022-03-21 19:30:00', '2022-03-21 19:30:00', NULL);

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_03_17_100513_create_bank_transections_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_transections`
--
ALTER TABLE `bank_transections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_transections`
--
ALTER TABLE `bank_transections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
