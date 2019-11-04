-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 12:04 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_vuejs_pc1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `question`, `created_at`, `updated_at`) VALUES
(1, 'MD AB', 'mdalamin7816488@gmail.com', 'What is your plan?', '2019-11-04 03:45:27', '2019-11-04 03:45:27'),
(2, 'MD AB', 'mdalamin7816488@gmail.com', 'hi', '2019-11-04 03:48:53', '2019-11-04 03:48:53'),
(3, 'MD AB', 'mdalamin7816488@gmail.com', 'hlw', '2019-11-04 03:49:46', '2019-11-04 03:49:46'),
(4, 'MD AB', 'mdalamin7816488@gmail.com', 'test', '2019-11-04 04:38:09', '2019-11-04 04:38:09'),
(5, 'MD AB', 'mdalamin7816488@gmail.com', 'asd', '2019-11-04 04:43:16', '2019-11-04 04:43:16'),
(6, 'MD AB', 'mdalamin7816488@gmail.com', 'sdf', '2019-11-04 04:44:51', '2019-11-04 04:44:51'),
(7, 'MD AB', 'mdalamin7816488@gmail.com', 'sdf', '2019-11-04 04:47:13', '2019-11-04 04:47:13'),
(8, 'MD AB', 'mdalamin7816488@gmail.com', 'adsf', '2019-11-04 04:50:12', '2019-11-04 04:50:12'),
(9, 'MD AB', 'mdalamin7816488@gmail.com', 'asdfa', '2019-11-04 04:59:48', '2019-11-04 04:59:48');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2019_10_28_051353_create_projects_table', 1),
(5, '2019_10_31_043032_create_statuses_table', 2),
(6, '2019_11_01_101813_create_testimonials_table', 3),
(7, '2019_11_04_045057_create_series_table', 4),
(8, '2019_11_04_092446_create_contacts_table', 5);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'The standard Lorem Ipsum passage, used since the 1500s',
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Laravel v6.4.0 released', 'Laravel v6.4.0 is released in 2019/10/23, here are the changes we`ve merged into this release.', NULL, NULL),
(2, 'Laravel Snippet #16: Building An Audience\r\n', 'Topics: I continue my reflections on selling $10,000,000 worth of software by discussing how to build an audience.', '2019-10-28 00:21:35', '2019-10-28 00:21:35'),
(34, 'mdab', 'agv', '2019-10-30 01:53:56', '2019-10-30 01:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `series`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Php', '10 Techniques for Cleaner Code', '10_Techniques_for_Cleaner_Code', NULL, NULL),
(2, 'Php', 'Building Laracasts', 'Building_Laracasts', NULL, NULL),
(3, 'Php', 'Code Reflections', 'Code_Reflections', NULL, NULL),
(4, 'Php', 'Design Patterns in PHP', 'Design_Patterns_in_PHP', NULL, NULL),
(5, 'Php', 'Discover Symfony Components', 'Discover_Symfony_Components', NULL, NULL),
(6, 'Php', 'How Do I', 'How_Do_I', NULL, NULL),
(7, 'Php', 'How to Accept Payments', 'How_to_Accept_Payments', NULL, NULL),
(8, 'Php', 'How to Build Command-Line Apps', 'How_to_Build_Command_Line_Apps', NULL, NULL),
(9, 'Php', 'How to Read Code', 'How_to_Read_Code', NULL, NULL),
(10, 'Php', 'Object-Oriented Bootcamp', 'Object_Oriented_Bootcamp', NULL, NULL),
(11, 'Php', 'PHP 7 Up and Running', 'PHP_7_Up_and_Running', NULL, NULL),
(12, 'Php', 'PHP Bits', 'PHP_Bits', NULL, NULL),
(13, 'Php', 'Simple Rules for Simpler Code', 'Simple_Rules_for_Simpler_Code', NULL, NULL),
(14, 'Php', 'SOLID Principles in PHP', 'SOLID_Principles_in_PHP', NULL, NULL),
(15, 'Php', 'The PHP Practitioner', 'The_PHP_Practitioner', NULL, NULL),
(16, 'Php', 'What\'s New in PHP 7.1', 'Whats_New_in_PHP_7_1', NULL, NULL),
(17, 'Php', 'Whatcha Working On', 'Whatcha_Working_On', NULL, NULL),
(18, 'Php', 'Whip Monstrous Code Into Shape', 'Whip_Monstrous_Code_Into_Shape', NULL, NULL),
(19, 'Laravel', 'Advanced Eloquent', 'Advanced_Eloquent', NULL, NULL),
(20, 'Laravel', 'Build A Laravel App With TDD', 'Build_A_Laravel_App_With_TDD', NULL, NULL),
(21, 'Laravel', 'Charting and You', 'Charting_and_You', NULL, NULL),
(22, 'Laravel', 'Eloquent Relationships', 'Eloquent_Relationships', NULL, NULL),
(23, 'Laravel', 'Eloquent Techniques', 'Eloquent_Techniques', NULL, NULL),
(24, 'Laravel', 'Get Real With Laravel Echo', 'Get_Real_With_Laravel_Echo', NULL, NULL),
(25, 'Laravel', 'Hands On: Community Contributions', 'Hands_On_Community_Contributions', NULL, NULL),
(26, 'Laravel', 'How to Create Custom Laravel Presets', 'How_to_Create_Custom_Laravel_Presets', NULL, NULL),
(27, 'Laravel', 'Intermediate Laravel', 'Intermediate_Laravel', NULL, NULL),
(28, 'Laravel', 'Laravel 5.7 From Scratch', 'Laravel_5.7_From_Scratch', NULL, NULL),
(29, 'Laravel', 'Laravel 6 From Scratch', 'Laravel_6_From_Scratch', NULL, NULL),
(30, 'Laravel', 'Laravel Authentication Techniques', 'Laravel_Authentication_Techniques', NULL, NULL),
(32, 'Laravel', 'Laravel Explained', 'Laravel_Explained', NULL, NULL),
(33, 'Laravel', 'Laravel Nova Mastery', 'Laravel_Nova_Mastery', NULL, NULL),
(34, 'Laravel', 'Let\'s Build A Forum with Laravel and TDD', 'Lets_Build_A_Forum_with_Larave_ and TDD', NULL, NULL),
(35, 'Testing', 'Code Katas in PHP', 'Code_Katas_in_PHP', NULL, NULL),
(36, 'Testing', 'Intuitive Integration Testing', 'Intuitive_Integration_Testing', NULL, NULL),
(37, 'Testing', 'Testing Jargon', 'Testing_Jargon', NULL, NULL),
(38, 'Testing', 'Testing Laravel', 'Testing_Laravel', NULL, NULL),
(39, 'Testing', 'Testing Vue', 'Testing_Vue', NULL, NULL),
(40, 'Vue', 'Do You React?', 'Do_You_React', NULL, NULL),
(41, 'Vue', 'ES2015 Crash Course', 'ES2015_Crash_Course', NULL, NULL),
(42, 'Vue', 'text', 'text', NULL, NULL),
(43, 'Vue', 'HTML5 Video and VideoJS', 'HTML5_Video_and_VideoJS', NULL, NULL),
(44, 'Vue', 'Laravel, Vue and SPAs', 'Laravel_Vue_and_SPAs', NULL, NULL),
(45, 'Tooling', 'Be Awesome in PHPStorm', 'Be_Awesome_in_PHPStorm', NULL, NULL),
(46, 'Tooling', 'Build a Staging Server', 'Build_a_Staging_Server', NULL, NULL),
(47, 'Tooling', 'CSS Grids for Everyone', 'CSS_Grids_for_Everyone', NULL, NULL),
(48, 'Tooling', 'Envoyer', 'Envoyer', NULL, NULL),
(49, 'Tooling', 'Git Me Some Version Control', 'Git_Me_Some_Version_Control', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 1,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT 'Database Default Status...',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'BREAKING: The Washington Nationals just won their first ever World Series to become the 2019 champions', '2019-10-30 22:39:41', '2019-10-30 22:39:41'),
(2, 1, 'The Fed cut its benchmark interest rate today for the third consecutive time this year, by a quarter point, to between 1.5% and 1.75%.', '2019-10-30 22:41:32', '2019-10-30 22:43:29'),
(3, 1, 'More Americans are taking on debt in the form of personal loans, which are now outpacing credit cards and auto loans as the fastest-growing debt category in the U.S.', '2019-10-30 22:45:24', '2019-10-30 22:45:24'),
(4, 1, 'Former National Security Council staffer Catherine Croft and Ukraine expert Christopher Anderson testified before House impeachment committees Wednesday. Here are the key takeaways from their testimonies', '2019-10-30 22:46:58', '2019-10-30 22:46:58'),
(21, 1, 'mdab', '2019-11-01 00:10:25', '2019-11-01 00:10:25'),
(22, 1, 'mdab2', '2019-11-04 01:32:43', '2019-11-04 01:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Md ABBBBB',
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT 'hi',
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'https://placeimg.com/70/70/any',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `body`, `path`, `created_at`, `updated_at`) VALUES
(1, 'MD AB', 'Carriage quitting securing be appetite it declared. High eyes kept so busy feel call in. Would day nor ask walls known.', 'https://placeimg.com/70/70/any?1', '2019-11-01 04:32:05', '2019-11-01 04:32:05'),
(2, 'Betty H. Brown', 'But preserved advantage are but and certainty earnestly enjoyment. Passage weather as up am exposed. And natural related man subject. Eagerness get situation his was delighted.', 'https://placeimg.com/70/70/any?2', '2019-11-01 04:55:26', '2019-11-01 04:55:26'),
(3, 'Perry A. Foy', 'Sing long her way size. Waited end mutual missed myself the little sister one.', 'https://placeimg.com/70/70/any?3', '2019-11-01 04:56:39', '2019-11-01 04:56:39'),
(4, 'Shasta T. Torres', 'So in pointed or chicken cheered neither spirits invited.', 'https://placeimg.com/70/70/any?4', '2019-11-01 04:58:35', '2019-11-01 04:58:35'),
(5, 'Elisa Lucas', 'Marianne and him laughter civility formerly handsome sex use prospect.', 'https://placeimg.com/70/70/any?5', '2019-11-01 05:03:28', '2019-11-01 05:03:28'),
(6, 'Francis Townsend', 'Spite mirth money six above get going great own. Started now shortly had for assured hearing expense.', 'https://placeimg.com/70/70/any?6', NULL, NULL),
(7, 'May Wagner', 'Full held gay now roof whom such next was. Ham pretty our people moment put excuse narrow.', 'https://placeimg.com/70/70/any?7', NULL, NULL),
(8, 'Wendy Schmidt', 'Admitting an performed supposing by. Garden agreed matter are should formed temper had.', 'https://placeimg.com/70/70/any?8', NULL, NULL),
(9, 'Phyllis Santiago', 'Admitting an performed supposing by. Garden agreed matter are should formed temper had.', 'https://placeimg.com/70/70/any?9', NULL, NULL),
(10, 'Teresa Hansen', 'Subjects to ecstatic children he. Could ye leave up as built match. Dejection agreeable attention set suspected led offending.', 'https://placeimg.com/70/70/any?10', NULL, NULL),
(11, 'Renee Barker', 'Provided put unpacked now but bringing. ', 'https://placeimg.com/70/70/any?11', NULL, NULL),
(12, 'Jeffery Richards', 'Viewing hastily or written dearest elderly up weather it as. So direction so sweetness or extremity at daughters.', 'https://placeimg.com/70/70/any?12', NULL, NULL),
(13, 'Pat Curry', 'She although cheerful perceive screened throwing met not eat distance.', 'https://placeimg.com/70/70/any?13', NULL, NULL),
(14, 'Clayton Tran', 'As tolerably recommend shameless unfeeling he objection consisted.', 'https://placeimg.com/70/70/any?14', NULL, NULL),
(15, 'Lillie Hubbard', 'Perhaps far exposed age effects. Now distrusts you her delivered applauded affection out sincerity. ', 'https://placeimg.com/70/70/any?15', NULL, NULL),
(16, 'Jeannette Neal', 'Oh less girl no walk. At he spot with five of view.', 'https://placeimg.com/70/70/any?16', NULL, NULL),
(17, 'Doyle Saunders', 'Certain it waiting no entered is. Passed her indeed uneasy shy polite appear denied.', 'https://placeimg.com/70/70/any?17', NULL, NULL),
(18, 'Nicolas Daniels', 'Met the why particular devonshire decisively considered partiality.', 'https://placeimg.com/70/70/any?18', NULL, NULL),
(19, 'Vickie Oliver', 'Weeks views her sight old tears sorry. Additions can suspected its concealed put furnished.', 'https://placeimg.com/70/70/any?19', NULL, NULL),
(20, 'Jean Gibson', 'Two assure edward whence the was. Who worthy yet ten boy denote wonder.', 'https://placeimg.com/70/70/any?20', NULL, NULL),
(21, 'Johanna Benson', 'Me of soon rank be most head time tore. Colonel or passage to ability. ', 'https://placeimg.com/70/70/any?21', NULL, NULL),
(22, 'Evan Higgins', 'Property expenses yourself occasion endeavor two may judgment she.', 'https://placeimg.com/70/70/any?22', NULL, NULL),
(23, 'Jan Reed', 'Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house', 'https://placeimg.com/70/70/any?23', NULL, NULL),
(24, 'Philip Wilkins', 'In myself family as if be agreed.', 'https://placeimg.com/70/70/any?24', NULL, NULL),
(25, 'Earl Conner', 'For though result and talent add are parish valley. Songs in oh other avoid it hours woman style.', 'https://placeimg.com/70/70/any?25', NULL, NULL),
(26, 'Bessie Curtis', 'Blessing oh do pleasure as so formerly. Took four spot soon led size you.', 'https://placeimg.com/70/70/any?26', NULL, NULL),
(27, 'Armando Riley', 'Him yourself joy moderate off repeated laughter outweigh screened. ', 'https://placeimg.com/70/70/any?27', NULL, NULL),
(28, 'Chris Jensen', 'Saw how marianne graceful dissuade new outlived prospect followed.', 'https://placeimg.com/70/70/any?28', NULL, NULL),
(29, 'Diane Guerrero', 'Uneasy no settle whence nature narrow in afraid.', 'https://placeimg.com/70/70/any?29', NULL, NULL),
(30, 'Daryl Butler', 'At could merit by keeps child. While dried maids on he of linen in. ', 'https://placeimg.com/70/70/any?30', NULL, NULL),
(31, 'Erma Hogan', 'He as compliment unreserved projecting. Between had observe pretend delight for believe.', 'https://placeimg.com/70/70/any?31', NULL, NULL),
(32, 'Jesse Wilson', 'Do newspaper questions consulted sweetness do. Our sportsman his unwilling fulfilled departure law.', 'https://placeimg.com/70/70/any?32', NULL, NULL),
(33, 'June Washington', 'Now world own total saved above her cause table. Wicket myself her square remark the should far secure sex.', 'https://placeimg.com/70/70/any?33', NULL, NULL),
(34, 'Jennifer Holloway', 'Smiling cousins warrant law explain for whether. ', 'https://placeimg.com/70/70/any?34', NULL, NULL),
(35, 'Krystal Hanson', 'Far concluded not his something extremity. Want four we face an he gate. ', 'https://placeimg.com/70/70/any?35', NULL, NULL),
(36, 'Anna Hoffman', ' On he of played he ladies answer little though nature. Blessing oh do pleasure as so formerly.', 'https://placeimg.com/70/70/any?36', NULL, NULL),
(37, 'Hugo Harrison', 'Took four spot soon led size you. Outlived it received he material.', 'https://placeimg.com/70/70/any?37', NULL, NULL),
(38, 'Martin Norton', 'Particular unaffected projection sentiments no my. Music marry as at cause party worth weeks', 'https://placeimg.com/70/70/any?38', NULL, NULL),
(39, 'Dana Hill', 'Music marry as at cause party worth weeks', 'https://placeimg.com/70/70/any?39', NULL, NULL),
(40, 'Seth Adams', 'Sentiments nor everything off out uncommonly partiality bed. ', 'https://placeimg.com/70/70/any?40', NULL, NULL),
(41, 'Md ABBBBB', 'At of hardly sister favour. As society explain country raising weather of.?41', 'https://placeimg.com/70/70/any', NULL, NULL),
(42, 'Betty Wilson', 'Compact greater and demands mrs the parlors. Park be fine easy am size away. Him and fine bred knew.', 'https://placeimg.com/70/70/any?42', NULL, NULL),
(43, 'Randall Frank', 'View fine me gone this name an rank. ', 'https://placeimg.com/70/70/any?43', NULL, NULL),
(44, 'Susie Jones', 'Dare he feet my tell busy. Considered imprudence of he friendship boisterous. ', 'https://placeimg.com/70/70/any?44', NULL, NULL),
(45, 'Ellis Love', 'Concluded resembled suspected his resources curiosity joy. Led all cottage met enabled attempt through talking delight.', 'https://placeimg.com/70/70/any?45', NULL, NULL),
(46, 'Darryl Massey', 'To they four in love. Settling you has separate supplied bed.', 'https://placeimg.com/70/70/any?46', NULL, NULL),
(47, 'Sonya Reynolds', 'hi', 'https://placeimg.com/70/70/any?47', NULL, NULL),
(48, 'Md ABBBBB', 'Too any appearance announcing impossible one. Out mrs means heart ham tears shall power every. ', 'https://placeimg.com/70/70/any?48', NULL, NULL),
(49, 'Whitney Schneider', 'Advantages prosperous remarkably my inhabiting so reasonably be if.', 'https://placeimg.com/70/70/any?49', NULL, NULL),
(50, 'Md ABBBBB', 'Wallace Page', 'https://placeimg.com/70/70/any?50', NULL, NULL),
(51, 'Md ABBBBB', 'Rejoiced prospect yet material servants out answered men admitted. Sportsmen certainty prevailed suspected am as.', 'https://placeimg.com/70/70/any?51', NULL, NULL),
(52, 'Jesus Francis', 'Preserved defective offending he daughters on or.', 'https://placeimg.com/70/70/any?52', NULL, NULL),
(53, 'Chelsea Webster', 'Full held gay now roof whom such next was. Ham pretty our people moment put excuse narrow.', 'https://placeimg.com/70/70/any?53', NULL, NULL),
(54, 'Joey Caldwell', 'Admitting an performed supposing by. Garden agreed matter are should formed temper had.', 'https://placeimg.com/70/70/any?54', NULL, NULL),
(55, 'Christie Bowen', 'Dejection agreeable attention set suspected led offending.', 'https://placeimg.com/70/70/any?55', NULL, NULL),
(56, 'Greg Lynch', 'Subjects to ecstatic children he. Could ye leave up as built match.', 'https://placeimg.com/70/70/any?56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mckenzie Greenfelder', 'susie.eichmann@example.com', '2019-10-30 22:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uNiQ0csgJh', '2019-10-30 22:35:58', '2019-10-30 22:35:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
