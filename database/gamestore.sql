-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2023 at 09:09 AM
-- Server version: 5.7.41
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `games_publisher_id_foreign` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `price`, `image`, `publisher_id`, `created_at`, `updated_at`) VALUES
(1, 'Bloons TD 5', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'bloons-td-5.webp', 8, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(2, 'Bloons TD 6', 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.', 120000, 'bloons-td-6.webp', 8, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(3, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 990000, 'cyberpunk-2077.webp', 4, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(4, 'Don\'t Starve Together', 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.', 165000, 'dont-starve-together.webp', 6, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(5, 'ELDEN RING', 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 800000, 'elden-ring.webp', 17, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(6, 'Azure Striker Gunvolt', 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.', 165000, 'azure-striker-gunvolt.webp', 15, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(7, 'Azure Striker Gunvolt 2', 'The ultra-refined 2D side-scrolling action you remember from \\\"Azure Striker Gunvolt\\\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!', 188000, 'azure-striker-gunvolt-2.webp', 15, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(8, 'Azure Striker Gunvolt 3', 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!', 705000, 'azure-striker-gunvolt-3.webp', 15, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(9, 'Hades', 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.', 321000, 'hades.webp', 11, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(10, 'Left 4 Dead 2', 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.', 142000, 'left-4-dead-2.webp', 7, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(11, 'Megaman 11', 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\'s speed and power for a new twist to the satisfying gameplay the series is known for.', 398000, 'megaman-11.webp', 12, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(12, 'Persona 5 Royal', 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!', 1380000, 'persona-5-royal.webp', 5, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(13, 'Plants vs. Zombies GOTY Edition', 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.', 70000, 'plants-vs-zombies-goty-edition.webp', 2, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(14, 'Starbound', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'starbound.webp', 3, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(15, 'Stardew Valley', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?', 165000, 'stardew-valley.webp', 14, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(16, 'Stray', 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.', 319000, 'stray.webp', 9, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(17, 'Terraria', 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!', 120000, 'terraria.webp', 1, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(18, 'Undertale', 'UNDERTALE! The RPG game where you don\'t have to destroy anyone.', 120000, 'undertale.webp', 13, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(19, 'Valiant Hearts: The Great War™', 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German', 249000, 'valiant-hearts-the-great-war.webp', 10, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(20, 'Mega Man X Legacy Collection', 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'megaman-x-legacy-collection.webp', 12, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(21, 'Mega Man X Legacy Collection 2', 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'megaman-x-legacy-collection-2.webp', 12, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(22, 'Mega Man Zero/ZX Legacy Collection', 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.', 550000, 'megaman-zero-zx-legacy-collection.webp', 12, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(23, 'Mega Man Legacy Collection', 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.', 206000, 'megaman-legacy-collection.webp', 12, '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(24, 'Mega Man Legacy Collection 2', 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.', 276000, 'megaman-legacy-collection-2.webp', 12, '2023-05-12 06:41:51', '2023-05-12 06:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `game_genre`
--

DROP TABLE IF EXISTS `game_genre`;
CREATE TABLE IF NOT EXISTS `game_genre` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `game_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_genre_game_id_foreign` (`game_id`),
  KEY `game_genre_genre_id_foreign` (`genre_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tower Defense', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(2, '3D', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(3, '2D', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(4, 'Survival', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(5, 'RPG', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(6, 'Action', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(7, 'Open World', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(8, 'Platformer', '2023-05-12 06:41:51', '2023-05-12 06:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_04_29_041141_create_base', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_game_id_foreign` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
CREATE TABLE IF NOT EXISTS `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Re-Logic', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(2, 'PopCap Games', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(3, 'Chucklefish', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(4, 'CD PROJEKT RED', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(5, 'SEGA', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(6, 'Klei Entertainment', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(7, 'Valve', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(8, 'Ninja Kiwi', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(9, 'BlueTwelve Studio', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(10, 'Ubisoft', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(11, 'Supergiant Games', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(12, 'CAPCOM', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(13, 'tobyfox', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(14, 'ConcernedApe', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(15, 'INTI CREATES', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(16, 'Mojang', '2023-05-12 06:41:51', '2023-05-12 06:41:51'),
(17, 'FromSoftware Inc', '2023-05-12 06:41:51', '2023-05-12 06:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_unique` (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$po3ECtLT76uSZAv8TKfpPeZuW/8aAc7.vOlnPGdvmz/tv1zgLbTla', NULL, '2023-05-12 06:41:51', '2023-05-12 06:41:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
