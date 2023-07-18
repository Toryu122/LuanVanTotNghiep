-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2023 at 04:21 PM
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
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default.webp',
  `publisher_id` int(10) UNSIGNED NOT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `status` enum('In Stock','Out of Stock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'In Stock',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `games_name_unique` (`name`),
  KEY `games_publisher_id_foreign` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `price`, `image`, `publisher_id`, `like`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bloons TD 5', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'bloons-td-5.webp', 8, 701, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(2, 'Bloons TD 6', 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.', 120000, 'bloons-td-6.webp', 8, 468, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(3, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 990000, 'cyberpunk-2077.webp', 4, 644, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(4, 'Don\'t Starve Together', 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.', 165000, 'dont-starve-together.webp', 6, 573, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(5, 'ELDEN RING', 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 800000, 'elden-ring.webp', 17, 630, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(6, 'Azure Striker Gunvolt', 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.', 165000, 'azure-striker-gunvolt.webp', 15, 424, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(7, 'Azure Striker Gunvolt 2', 'The ultra-refined 2D side-scrolling action you remember from \\\"Azure Striker Gunvolt\\\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!', 188000, 'azure-striker-gunvolt-2.webp', 15, 60, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(8, 'Azure Striker Gunvolt 3', 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!', 705000, 'azure-striker-gunvolt-3.webp', 15, 177, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(9, 'Hades', 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.', 321000, 'hades.webp', 11, 299, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(10, 'Left 4 Dead 2', 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.', 142000, 'left-4-dead-2.webp', 7, 81, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(11, 'Mega Man 11', 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\\\'s speed and power for a new twist to the satisfying gameplay the series is known for.', 398000, 'mega-man-11.webp', 12, 738, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(12, 'Persona 5 Royal', 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!', 1380000, 'persona-5-royal.webp', 5, 740, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(13, 'Plants vs. Zombies GOTY Edition', 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\\\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.', 70000, 'plants-vs-zombies-goty-edition.webp', 2, 982, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(14, 'Starbound', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'starbound.webp', 3, 344, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(15, 'Stardew Valley', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?', 165000, 'stardew-valley.webp', 14, 393, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(16, 'Stray', 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.', 319000, 'stray.webp', 9, 206, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(17, 'Terraria', 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!', 120000, 'terraria.webp', 1, 653, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(18, 'Undertale', 'UNDERTALE! The RPG game where you don\'t have to destroy anyone.', 120000, 'undertale.webp', 13, 633, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(19, 'Valiant Hearts: The Great War™', 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German', 249000, 'valiant-hearts-the-great-war.webp', 10, 99, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(20, 'Mega Man X Legacy Collection', 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'mega-man-x-legacy-collection.webp', 12, 492, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(21, 'Mega Man X Legacy Collection 2', 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'mega-man-x-legacy-collection-2.webp', 12, 661, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(22, 'Mega Man Zero/ZX Legacy Collection', 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.', 550000, 'mega-man-zero-zx-legacy-collection.webp', 12, 338, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(23, 'Mega Man Legacy Collection', 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.', 206000, 'mega-man-legacy-collection.webp', 12, 359, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(24, 'Mega Man Legacy Collection 2', 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.', 276000, 'mega-man-legacy-collection-2.webp', 12, 752, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(25, 'Dead by Daylight', 'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.', 230000, 'dead-by-daylight.webp', 18, 339, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(26, 'Jump King', 'Take up the challenge and face true high-stakes platforming in Jump King! Struggle upwards in search of the Smoking Hot Babe of legend, but explore with care; a single missed jump could lead to a long fall back down...', 165000, 'jump-king.webp', 19, 117, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(27, 'To the Moon', 'A story-driven experience about two doctors traversing backwards through a dying man\\\'s memories to artificially fulfill his last wish.', 142000, 'to-the-moon.webp', 20, 749, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(28, 'UDONGEIN X', 'Help Reisen Udongein Inaba navigate through 14 action packed stages in this exhilarating 2D Bullet Hell Platformer based on Touhou Project!', 70000, 'udongein-x.webp', 21, 286, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(29, 'A Dance of Fire and Ice', 'A Dance of Fire and Ice is a strict rhythm game. Keep your focus as you guide two orbiting planets along a winding path without breaking their perfect equilibrium.', 80000, 'adofai.webp', 22, 463, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(30, 'Dying Light', 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.', 329000, 'dying-light.webp', 23, 982, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(31, 'Mad Father', 'Witness the tale of a most foolish family. A remake of the classic horror exploration game makes its way to Steam.', 120000, 'mad-father.webp', 24, 281, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(32, 'Angels of Death', '\"Please... kill me.\" \"Help me get outta here, and I\\\'ll kill you.\" ~ Angels of Death is a psychological horror-adventure game, consisting of four episodes.', 120000, 'angels-of-death.webp', 25, 752, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(33, 'Blaster Master Zero', 'Mutant scum never learn! Blaster Master Zero makes its Steam debut! Blaster Master Zero is a 8-bit style top-down & sideview 2D action-adventure game that hearkens back to the golden age of the NES. The game features new gameplay elements such as improved gameplay, and a more robust scenario.', 120000, 'bmz1.webp', 15, 99, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(34, 'Blaster Master Zero 2', 'Join Jason, Eve, and Fred on an intergalactic journey! The side-scrolling/top-down hybrid action adventure title \"Blaster Master Zero\" returns with its long-awaited sequel! Experience the yet-untold story of Jason and Eve after defeating Earth\\\'s mutant scourge in \"Blaster Master Zero\".', 120000, 'bmz2.webp', 15, 404, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(35, 'Blaster Master Zero 3', 'The Pinnacle of Mutant Blasting Action Is Here! — Blaster Master Zero 3\\\'s hybrid of sidescrolling and top-down action is back for its 3rd chapter, and more intense than ever before!', 296500, 'bmz3.webp', 15, 707, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(36, 'Necesse', 'Necesse is a top-down sandbox action-adventure game in a procedurally generated world. Progress your character\\\'s gear and settlement through fighting, mining, exploring, crafting, trading and more!', 120000, 'necesse.webp', 26, 536, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(37, 'OneShot', 'OneShot is a surreal top down Puzzle/Adventure game with unique gameplay capabilities. You are to guide a child through a mysterious world on a mission to restore its long-dead sun. The world knows you exist.', 142000, 'oneshot.webp', 27, 177, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(38, 'Impostor Factory', 'A bonkers time-loop tragicomedy murder mystery thriller featuring multiple casualties and a suspicious cat, from the creator of To the Moon & Finding Paradise.', 142000, 'impostor-factory.webp', 20, 156, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(39, '20XX', '20XX is a roguelike action platformer that you can play with a friend. Jump and shoot your way through ever-changing levels, collect awesome new powers, and battle mighty bosses in the name of saving the human race maybe!', 165000, '20xx.webp', 28, 890, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(40, '30XX', 'Jump, shoot, and slash your way through 30XX, the roguelike action platformer you can play with a friend! Explore lush, ever-changing worlds that mix precise platforming with fevered combat. Destroy fearsome Guardians. Master unique Powers. Rediscover the thousand years we\\\'ve lost.', 188000, '30xx.webp', 28, 65, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(41, 'Gunvolt Chronicles: Luminous Avenger iX', 'Experience the apeX of 2D action! A new era of 2D action begins now! Get ready for high-speed, stylish 2D side-scrolling action like never before. Inti Creates presents the ultimate in classic 2D action with \"Luminous Avenger iX\"!', 165000, 'laix1.webp', 15, 986, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(42, 'Gunvolt Chronicles: Luminous Avenger iX 2', 'Break into the new apeX of 2D action! INTI CREATES is proud to present new apeX of cutting-edge 2D action with Luminous Avenger iX 2!', 274000, 'laix2.webp', 15, 366, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(43, 'Dead Cells', 'Dead Cells is a rogue-lite, metroidvania inspired, action-platformer. You\\\'ll explore a sprawling, ever-changing castle... assuming you’re able to fight your way past its keepers in 2D souls-lite combat. No checkpoints. Kill, die, learn, repeat. Regular free content updates!', 220000, 'dead-cells.webp', 29, 645, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(44, 'The Death | Thần Trùng', 'The Death | Thần Trùng is a Viet Nam psychological horror adventure game made by three Vietnamese people from a tiny indie studio. The game takes place in Hanoi city in 2022.', 75000, 'the-death.webp', 30, 231, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(45, 'The Forest of Drizzling Rain', 'Alas, it was the \"promised place,\" where Shiori was never meant to go. Finally, a remake of The Forest of Drizzling Rain, that masterpiece of an exploration horror game with multiple endings from the creator of the big hit Angels of Death!', 175000, 'the-forest-of-drizzling-rain.webp', 25, 411, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(46, 'Forager', 'The highly popular and quirky \"idle game that you want to actively keep playing\". Explore, craft, gather & manage resources, find secrets and build your base out of nothing! Buy land to explore and expand!', 188000, 'forager.webp', 31, 485, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(47, 'One Step From Eden', 'Build a powerful deck, cast spells on the fly, battle evolving enemies, find game-changing artifacts, make friends or make enemies, just make it to Eden.', 188000, 'one-step-from-eden.webp', 32, 735, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(48, 'OMORI', 'Explore a strange world full of colorful friends and foes. When the time comes, the path you’ve chosen will determine your fate... and perhaps the fate of others as well.', 188000, 'omori.webp', 33, 437, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(49, 'Katana ZERO', 'Katana ZERO is a stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. Slash, dash, and manipulate time to unravel your past in a beautifully brutal acrobatic display.', 205000, 'katana-zero.webp', 34, 409, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(50, 'Core Keeper', 'Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.', 215000, 'core-keeper.webp', 35, 493, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(51, 'ENDER LILIES: Quietus of the Knights', 'ENDER LILIES is a dark fantasy 2D action RPG about unraveling the mysteries of a destroyed kingdom. On this sorrowful journey, encounter horrific enemies against whom a moment of inattention could be fatal. Overcome these hardships and seek the truth with the help of fallen knights.', 240000, 'ender-lilies.webp', 36, 815, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(52, 'Pocket Mirror ~ GoldenerTraum', 'Delve into the enthralling world of Pocket Mirror ~ GoldenerTraum, the acclaimed RPG Maker gothic horror game that\\\'ll take you on a moving journey of self-discovery.', 260000, 'pocket-mirror.webp', 37, 738, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(53, 'Street Fighter™ 6', 'Here comes Capcom’s newest challenger! Street Fighter™ 6 launches worldwide on June 2nd, 2023 and represents the next evolution of the Street Fighter™ series! Street Fighter 6 spans three distinct game modes, including World Tour, Fighting Ground and Battle Hub.', 1322000, 'street-fighter-6.webp', 12, 860, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(54, 'Grounded', 'The world is a vast, beautiful and dangerous place – especially when you have been shrunk to the size of an ant. Can you thrive alongside the hordes of giant insects, fighting to survive the perils of the backyard?', 649000, 'grounded.webp', 38, 255, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(55, 'Call of Duty®: Modern Warfare®', 'Experience a visceral Campaign or assemble your team in the ultimate online playground with multiple Special Ops challenges and a mix of Multiplayer maps and modes.', 1490000, 'call-of-duty-modern-warfare.webp', 39, 677, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(56, 'Call of Duty®: Modern Warfare® II', 'Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.', 1799000, 'call-of-duty-modern-warfare-2.webp', 39, 572, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(57, 'Oblivion Override', 'Embark on a raw, fast-paced odyssey in Oblivion Override. Master 25+ weapons, embody the killerbot, and conquer war-torn wastelands. Inspired by Castlevania and Roguelikes, this action-packed adventure will test your mobility to the limit. Evade, dash, and dance amid shifting dungeon walls.', 239000, 'oblivion-override.webp', 40, 765, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(58, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.', 188000, 'the-forest.webp', 41, 325, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(59, 'Sons Of The Forest', 'Sent to find a missing billionaire on a remote island, you find yourself in a cannibal-infested hellscape. Craft, build, and struggle to survive, alone or with friends, in this terrifying new open-world survival horror simulator.', 385000, 'son-of-the-forest.webp', 41, 110, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(60, 'Hogwarts Legacy', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 990000, 'hogwarts-legacy.webp', 42, 304, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(61, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 510000, 'rust.webp', 43, 286, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(62, 'MONSTER HUNTER RISE', 'Rise to the challenge and join the hunt! In Monster Hunter Rise, the latest installment in the award-winning and top-selling Monster Hunter series, you’ll become a hunter, explore brand new maps and use a variety of weapons to take down fearsome monsters as part of an all-new storyline.', 881000, 'monster-hunter-rise.webp', 12, 988, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(63, 'Monster Hunter: World', 'Welcome to a new world! In Monster Hunter: World, the latest installment in the series, you can enjoy the ultimate hunting experience, using everything at your disposal to hunt monsters in a new world teeming with surprises and excitement.', 550000, 'monster-hunter-world.webp', 12, 816, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(64, 'PowerWash Simulator', 'Release the Pressure with PowerWash Simulator! Wash away your worries with the soothing sounds of high-pressure water. Fire up your power washer and blast away every speck of dirt and grime you can find, all with the simple satisfaction of power-washing to a sparkling finish.', 570000, 'power-wash-simulator.webp', 44, 13, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(65, 'Phasmophobia', 'Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and it’s up to you and your team to use all the ghost-hunting equipment at your disposal in order to gather as much evidence as you can.', 160000, 'phasmophobia.webp', 45, 807, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(66, 'Project Zomboid', 'Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..', 260000, 'project-zomboid.webp', 46, 974, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(67, 'Sea of Thieves 2023 Edition', 'Celebrate five years since Sea of Thieves\\\' launch with this special edition, including a copy of the game with all permanent content added since launch, plus a 10,000 gold bonus and a selection of Hunter cosmetics: the Hunter Cutlass, Pistol, Compass, Hat, Jacket and Sails.', 400000, 'sea-of-thieves.webp', 47, 921, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(68, 'Devil May Cry 5', 'The ultimate Devil Hunter is back in style, in the game action fans have been waiting for.', 705000, 'devil-may-cry-5.webp', 12, 97, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(69, 'Lobotomy Corporation | Monster Management Simulation', 'A roguelite monster-management simulation inspired by the likes of the SCP Foundation, Cabin in the Woods, and Warehouse 13. Order your employees to perform work with the creatures and watch as it unfolds; harness greater energy, and expand the facility.', 220000, 'lobotomy-corporation.webp', 48, 296, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(70, 'Library Of Ruina', '\"May you find your book in this place.\" Combat between the guests and the librarians breaks out as if it were on a stage. Defeated guests turn into books, and the Library grows onward. And eventually, get your hands on… The one singular, perfect book.', 250000, 'library-of-ruina.webp', 48, 311, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(71, 'Garry\'s Mod', 'Garry\\\'s Mod is a physics sandbox. There aren\\\'t any predefined aims or goals. We give you the tools and leave you to play.', 120000, 'garry-mod.webp', 43, 895, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(72, 'DREDGE', 'DREDGE is a single-player fishing adventure with a sinister undercurrent. Sell your catch, upgrade your boat, and dredge the depths for long-buried secrets. Explore a mysterious archipelago and discover why some things are best left forgotten.', 500000, 'dredge.webp', 49, 559, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(73, 'Among Us', 'An online and local party game of teamwork and betrayal for 4-15 players...in space!', 70000, 'among-us.webp', 50, 340, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(74, 'Dragon Marked For Death', 'Dragon Marked For Death is a 2D side-scrolling action RPG game where up to 4 players can play together in online multiplayer. The characters, known as the Dragonblood Clan, have forged a pact with the Astral Dragon, which granted them special new powers.', 310000, 'dragon-marked-for-death.webp', 15, 656, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(75, 'Darkest Dungeon®', 'Darkest Dungeon is a challenging gothic roguelike turn-based RPG about the psychological stresses of adventuring. Recruit, train, and lead a team of flawed heroes against unimaginable horrors, stress, disease, and the ever-encroaching dark. Can you keep your heroes together when all hope is lost?', 321000, 'darkest-dungeon-1.webp', 51, 49, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(76, 'Darkest Dungeon® II', 'Darkest Dungeon II is a roguelike road trip of the damned. Form a party, equip your stagecoach, and set off across the decaying landscape on a last gasp quest to avert the apocalypse. The greatest dangers you face, however, may come from within...', 470000, 'darkest-dungeon-2.webp', 51, 62, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(77, 'Pizza Tower', 'Pizza Tower is a fast paced 2D platformer inspired by the Wario Land series, with an emphasis on movement, exploration and score attack. Featuring highly stylized pixel art inspired by the cartoons from the \\\'90s, and a highly energetic soundtrack.', 188000, 'pizza-tower.webp', 52, 252, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(78, 'DARK SOULS™: REMASTERED', 'Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.', 850000, 'dark-souls-remastered.webp', 17, 67, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(79, 'DARK SOULS™ II', 'Developed by FROM SOFTWARE, DARK SOULS™ II is the highly anticipated sequel to the gruelling 2011 breakout hit Dark Souls. The unique old-school action RPG experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.', 650000, 'dark-souls-ii.webp', 17, 934, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(80, 'DARK SOULS™ III', 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!', 970000, 'dark-souls-iii.webp', 17, 129, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(81, 'Borderlands Game of the Year', 'Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op, Borderlands is a breakthrough experience that', 499000, 'borderlands-1.webp', 53, 618, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(82, 'Borderlands 2', 'The Ultimate Vault Hunter’s Upgrade lets you get the most out of the Borderlands 2 experience.', 334500, 'borderlands-2.webp', 53, 65, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(83, 'Borderlands 3', 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds and enemies as one of four new Vault Hunters.', 990000, 'borderlands-3.webp', 53, 859, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(84, 'Hollow Knight', 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.', 205000, 'hollow-knight.webp', 54, 755, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(85, 'Shovel Knight: Treasure Trove', 'Shovel Knight: Treasure Trove is the complete Shovel Knight collection, containing all 5 games in the epic saga! Dig, blast, slash, and bash your way through a fantastical, 8-bit inspired world of pixel-perfect platforming, memorable characters, and world-class action-adventure gameplay.', 310000, 'shovel-knight-treasure-trove.webp', 55, 260, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(86, 'Shovel Knight: King of Cards', 'Step into the gilded boots of King Knight in the biggest and most regal Shovel Knight game of them all! Leap, Shoulder Bash, gather new subjects, and strategize your way through this prequel in your quest to become King of Cards!', 120000, 'shovel-knight-king-of-cards.webp', 55, 642, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(87, 'Shovel Knight: Specter of Torment', 'Take control of Specter Knight, servant to the Enchantress, in a quest to recruit a cadre of knights and create the Order of No Quarter. Experience perfect platforming, world-class visuals, impeccable stage design, incredible music, and even meet a friend or two in Shovel Knight: Specter of Torment!', 120000, 'shovel-knight-specter-of-torment.webp', 55, 753, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(88, 'Shovel Knight: Shovel of Hope', 'Shovel Knight is a sweeping classic action-adventure game with awesome gameplay, memorable characters, and an 8-bit retro aesthetic. If you love games with perfect platforming, beautiful art, infectious music, lovable bosses, humor and levity, and real heart… Shovel Knight is for you!', 165000, 'shovel-knight-shovel-of-hope.webp', 55, 343, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(89, 'Cuphead', 'Cuphead is a classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.', 188000, 'cuphead.webp', 56, 549, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(90, 'Vampire Survivors', 'Mow down thousands of night creatures and survive until dawn! Vampire Survivors is a gothic horror casual game with rogue-lite elements, where your choices can allow you to quickly snowball against the hundreds of monsters that get thrown at you.', 70000, 'vampire-survivors.webp', 57, 619, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(91, 'Noita', 'Noita is a magical action roguelite set in a world where every pixel is physically simulated. Fight, explore, melt, burn, freeze and evaporate your way through the procedurally generated world using spells you\\\'ve created yourself.', 188000, 'noita.webp', 58, 710, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(92, 'Cult of the Lamb', 'Start your own cult in a land of false prophets, venturing out into diverse and mysterious regions to build a loyal community of woodland Followers and spread your Word to become the one true cult.', 400000, 'cult-of-the-lamb.webp', 59, 23, 'In Stock', '2023-07-18 16:20:41', '2023-07-18 16:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `game_genre`
--

DROP TABLE IF EXISTS `game_genre`;
CREATE TABLE IF NOT EXISTS `game_genre` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `game_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_genre_game_id_genre_id_unique` (`game_id`,`genre_id`),
  KEY `game_genre_genre_id_foreign` (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_genre`
--

INSERT INTO `game_genre` (`id`, `game_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-07-03 16:28:28', '2023-07-03 16:28:28'),
(2, 1, 6, '2023-07-03 16:28:28', '2023-07-03 16:28:28'),
(3, 1, 11, '2023-07-03 16:28:28', '2023-07-03 16:28:28'),
(4, 1, 13, '2023-07-03 16:28:28', '2023-07-03 16:28:28'),
(5, 1, 14, '2023-07-03 16:28:28', '2023-07-03 16:28:28'),
(6, 2, 1, '2023-07-03 16:29:21', '2023-07-03 16:29:21'),
(7, 2, 11, '2023-07-03 16:29:21', '2023-07-03 16:29:21'),
(8, 2, 13, '2023-07-03 16:29:21', '2023-07-03 16:29:21'),
(9, 3, 5, '2023-07-03 16:30:26', '2023-07-03 16:30:26'),
(10, 3, 7, '2023-07-03 16:30:26', '2023-07-03 16:30:26'),
(11, 4, 4, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(12, 4, 5, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(13, 4, 6, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(14, 4, 7, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(15, 4, 11, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(16, 4, 13, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(17, 4, 15, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(18, 4, 16, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(19, 4, 17, '2023-07-03 16:32:51', '2023-07-03 16:32:51'),
(20, 5, 5, '2023-07-03 16:33:34', '2023-07-03 16:33:34'),
(21, 5, 6, '2023-07-03 16:33:34', '2023-07-03 16:33:34'),
(22, 5, 7, '2023-07-03 16:33:34', '2023-07-03 16:33:34'),
(23, 6, 3, '2023-07-03 16:34:23', '2023-07-03 16:34:23'),
(24, 6, 6, '2023-07-03 16:34:23', '2023-07-03 16:34:23'),
(25, 6, 8, '2023-07-03 16:34:23', '2023-07-03 16:34:23'),
(26, 6, 16, '2023-07-03 16:34:23', '2023-07-03 16:34:23'),
(27, 7, 3, '2023-07-03 16:34:59', '2023-07-03 16:34:59'),
(28, 7, 6, '2023-07-03 16:34:59', '2023-07-03 16:34:59'),
(29, 7, 8, '2023-07-03 16:34:59', '2023-07-03 16:34:59'),
(30, 7, 16, '2023-07-03 16:34:59', '2023-07-03 16:34:59'),
(31, 8, 3, '2023-07-03 16:35:42', '2023-07-03 16:35:42'),
(32, 8, 6, '2023-07-03 16:35:42', '2023-07-03 16:35:42'),
(33, 8, 8, '2023-07-03 16:35:42', '2023-07-03 16:35:42'),
(34, 8, 17, '2023-07-03 16:35:42', '2023-07-03 16:35:42'),
(35, 9, 5, '2023-07-03 16:36:08', '2023-07-03 16:36:08'),
(36, 9, 6, '2023-07-03 16:36:08', '2023-07-03 16:36:08'),
(37, 9, 16, '2023-07-03 16:36:08', '2023-07-03 16:36:08'),
(38, 10, 6, '2023-07-03 16:36:54', '2023-07-03 16:36:54'),
(39, 10, 11, '2023-07-03 16:36:54', '2023-07-03 16:36:54'),
(40, 10, 12, '2023-07-03 16:36:54', '2023-07-03 16:36:54'),
(41, 11, 6, '2023-07-03 16:38:19', '2023-07-03 16:38:19'),
(42, 11, 8, '2023-07-03 16:38:19', '2023-07-03 16:38:19'),
(43, 12, 5, '2023-07-03 16:39:04', '2023-07-03 16:39:04'),
(44, 13, 1, '2023-07-03 16:40:07', '2023-07-03 16:40:07'),
(45, 13, 13, '2023-07-03 16:40:07', '2023-07-03 16:40:07'),
(46, 14, 3, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(47, 14, 4, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(48, 14, 5, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(49, 14, 6, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(50, 14, 7, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(51, 14, 16, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(52, 14, 17, '2023-07-03 16:40:56', '2023-07-03 16:40:56'),
(53, 15, 5, '2023-07-03 16:43:22', '2023-07-03 16:43:22'),
(54, 15, 11, '2023-07-03 16:43:22', '2023-07-03 16:43:22'),
(55, 15, 15, '2023-07-03 16:43:22', '2023-07-03 16:43:22'),
(56, 15, 16, '2023-07-03 16:43:22', '2023-07-03 16:43:22'),
(57, 16, 16, '2023-07-03 16:44:01', '2023-07-03 16:44:01'),
(58, 16, 17, '2023-07-03 16:44:01', '2023-07-03 16:44:01'),
(59, 17, 3, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(60, 17, 4, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(61, 17, 5, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(62, 17, 6, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(63, 17, 7, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(64, 17, 16, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(65, 17, 17, '2023-07-03 16:44:40', '2023-07-03 16:44:40'),
(66, 18, 5, '2023-07-03 16:45:08', '2023-07-03 16:45:08'),
(67, 18, 16, '2023-07-03 16:45:08', '2023-07-03 16:45:08'),
(68, 19, 17, '2023-07-03 16:45:40', '2023-07-03 16:45:40'),
(69, 20, 3, '2023-07-03 16:46:20', '2023-07-03 16:46:20'),
(70, 20, 6, '2023-07-03 16:46:20', '2023-07-03 16:46:20'),
(71, 20, 8, '2023-07-03 16:46:20', '2023-07-03 16:46:20'),
(72, 21, 3, '2023-07-03 16:46:52', '2023-07-03 16:46:52'),
(73, 21, 6, '2023-07-03 16:46:52', '2023-07-03 16:46:52'),
(74, 21, 8, '2023-07-03 16:46:52', '2023-07-03 16:46:52'),
(75, 23, 3, '2023-07-03 16:47:29', '2023-07-03 16:47:29'),
(76, 23, 6, '2023-07-03 16:47:29', '2023-07-03 16:47:29'),
(77, 23, 8, '2023-07-03 16:47:29', '2023-07-03 16:47:29'),
(78, 22, 3, '2023-07-03 16:48:04', '2023-07-03 16:48:04'),
(79, 22, 5, '2023-07-03 16:48:04', '2023-07-03 16:48:04'),
(80, 22, 6, '2023-07-03 16:48:04', '2023-07-03 16:48:04'),
(81, 24, 6, '2023-07-03 16:48:34', '2023-07-03 16:48:34'),
(82, 24, 8, '2023-07-03 16:48:34', '2023-07-03 16:48:34'),
(83, 25, 4, '2023-07-03 16:49:05', '2023-07-03 16:49:05'),
(84, 25, 6, '2023-07-03 16:49:05', '2023-07-03 16:49:05'),
(85, 25, 11, '2023-07-03 16:49:05', '2023-07-03 16:49:05'),
(86, 26, 6, '2023-07-03 16:49:42', '2023-07-03 16:49:42'),
(87, 26, 8, '2023-07-03 16:49:42', '2023-07-03 16:49:42'),
(88, 26, 16, '2023-07-03 16:49:42', '2023-07-03 16:49:42'),
(89, 26, 17, '2023-07-03 16:49:42', '2023-07-03 16:49:42'),
(90, 27, 5, '2023-07-03 16:50:24', '2023-07-03 16:50:24'),
(91, 27, 16, '2023-07-03 16:50:24', '2023-07-03 16:50:24'),
(92, 27, 17, '2023-07-03 16:50:24', '2023-07-03 16:50:24'),
(93, 28, 3, '2023-07-03 16:50:53', '2023-07-03 16:50:53'),
(94, 28, 6, '2023-07-03 16:50:53', '2023-07-03 16:50:53'),
(95, 28, 8, '2023-07-03 16:50:53', '2023-07-03 16:50:53'),
(96, 28, 16, '2023-07-03 16:50:53', '2023-07-03 16:50:53'),
(97, 29, 16, '2023-07-03 16:51:19', '2023-07-03 16:51:19'),
(98, 30, 4, '2023-07-03 16:51:54', '2023-07-03 16:51:54'),
(99, 30, 5, '2023-07-03 16:51:54', '2023-07-03 16:51:54'),
(100, 30, 6, '2023-07-03 16:51:54', '2023-07-03 16:51:54'),
(101, 30, 11, '2023-07-03 16:51:54', '2023-07-03 16:51:54');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `genres_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tower Defense', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(2, '3D', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(3, '2D', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(4, 'Survival', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(5, 'RPG', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(6, 'Action', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(7, 'Open World', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(8, 'Platformer', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(9, 'Fantasy', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(10, 'PvP', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(11, 'Co-op', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(12, 'FPS', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(13, 'Strategy', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(14, 'Family Friendly', '2023-07-03 16:28:00', '2023-07-03 16:28:00'),
(15, 'Simulation', '2023-07-03 16:31:34', '2023-07-03 16:31:34'),
(16, 'Indie', '2023-07-03 16:31:46', '2023-07-03 16:31:46'),
(17, 'Adventure', '2023-07-03 16:32:02', '2023-07-03 16:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
CREATE TABLE IF NOT EXISTS `keys` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cd_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `is_redeemed` tinyint(1) NOT NULL DEFAULT '0',
  `is_expired` tinyint(1) NOT NULL DEFAULT '0',
  `expire_date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keys_cd_key_game_id_unique` (`cd_key`,`game_id`),
  KEY `keys_game_id_foreign` (`game_id`)
) ENGINE=MyISAM AUTO_INCREMENT=617 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `cd_key`, `game_id`, `is_redeemed`, `is_expired`, `expire_date`, `created_at`, `updated_at`) VALUES
(1, 'MmRVTFNBZEJkSlhmMnBUZWtpUTk0SmtxQ2dVTFl3NGlNVkxIT09UbUNKem8rR2JpTXlsWlpVMWhKOWNXa2JkeA==', 1, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(2, 'dU1CMk1xbjJkaG9ZNzdidVJ2Q1krOG1oMWJyR080a3I3VkU3RCsxUEc3bHo2VWRRTUFxUU5uVHR5Um5vQWhVag==', 1, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(3, 'VVZITUdpVTk5UER6cCtUMkZmWkZxK3pDbjJGSU1oU0NDZk5jV1ptKzVUNVY2NjB0aVpjM1NDN21TY0IwdEJ2cw==', 1, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(4, 'am52bVQxMFE1MDN3MmtZYUcyNVZTZVpkQXdnYzBzRnlOL0Qxbk8ycVZkczk3NlpPS25EWU83czB5WExzbGNMSA==', 1, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(5, 'Y2tseUJYWEhJcmZWU3hINzdJaVQvY1YxRHJtckdHanQ5ZktqUFYvYzh5eVRrbXQwYUVEOEd6VjZFVmU2ajRQMA==', 1, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(6, 'blhQVXlJTThiTExpSU9FbEtNcTU1L2hEdE9kbHN4QmVrbmVvNm5UenhJOD0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(7, 'bENTWkhhNnp2RFhmMmZPck0yMEdjL21xK0Zoc3JOV3o2dVBia0dObHgybz0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(8, 'L0FDb3FmcGlGZXQ5T3hiYXZFT082MzZtSHJpTms0WHF2M2ZRL0ptMXB2MD0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(9, 'S3FDQUpQZnlTaUNtaEhIMWhuWHJ1UTlZcTliTmxQTmxmTXpWbTVSSXZsRT0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(10, 'bllFSExCTVh5cVdaZ2ZsQitEZ3Jib1pacG9XdG83dWFjMlBkU3hUZDlOND0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(11, 'OG5FMHNyc2IwOFp0bUF2OXBzMk9uMEg1UUZCTWtZamNDMmFrQUZJU0thTT0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(12, 'Q0RUNzJnYnM5N3NPSFJOK1dxZWVwWm9URHlWK1VQR2dNenZ0S0NxWlkyQT0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(13, 'TFpVSVE3cG5XNDAwNHk1OUk4Y2tTUUlDWkUwOG5wOVBGUHlUcysrbmFXMD0=', 2, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(14, 'WVgydFdWdmZoRWVvckZaYTRDdEgybnFDaXB4U1pnOFpSQmxHeFlWSnFIa1BOeEI4TExsR2NWSUh6bDFlWi9QTQ==', 3, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(15, 'N2tPRmptaDdFR1VVcFVSaGUxZ0xjR3dzNUlsdTFVZ1hoUHVRdm9QUUE5YU5zOXBmVVBGMnpOVHcwM1krNDNRMg==', 3, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(16, 'Mkg5YjRpU1NuU3BLTE5YYXNDNlJIa1JYL0ZTRlN4RWVncldlWG5OY1JUWEtHZVJJNGdyWWIvZFg5Ymc2L3FDVg==', 3, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(17, 'ck9pUkJNNndqVCtqL1l4TXJMNDFmMWFySVJHWWFrOWJtS2RzUlRHNDFKZ1l0Tlo3ZmpqWWhwWFBqTVd3bkF2Rg==', 3, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(18, 'Z2wwdTRsbXdHLzI2VEtMWGkzQTdMeDFkMStOcDZVbzk1ZHVESVh4OHFNc0pjcUFGTk9LN0FOZTAremhseVJJUg==', 3, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(19, 'Q2pnb0RHUUFQbXlQdzBwMFFxYnVOdVVpMzZYaWtvU2NoUktmNFVTcHc5b3hmU25OYlZEN2tLa09VYzZnM28xOA==', 3, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(20, 'U1J1VmRCTTV3LzZqQ1BiRjRKTDcxVWwrcCtBVE5ncjhTVlFwT05iTjIxMkRHLzExbFc4Y09seVJ2alhkZlhZSw==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(21, 'aUQyMmxocFdmMVdoZmJGVVhyWkphKytXMzVtVXhkTVd3SEFqNnZwdGhmK0Y3cFpnS0YzOVFhUE5YcHQ2bTMzTw==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(22, 'MWRHU04zYnIveDlDcmxDMFpEeDdaSmVmeE5ZdmFnNmZwK09HRnVPc25ZcWNDWSt0dEZOOVhwV1JRakhMM0tWdw==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(23, 'L0t4SGxxYktrUis0ZndBdUF6ZythbGxsVCsyM0JHZDNkdFg4Rjh4bXBZUm1BZER6d2puVndNK2JmR3lFWlNjNQ==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(24, 'RE4vblFaL3M4U3NjY2dkNEF0SmhrY1prYlM5VHVzMytpNXQrV3o5b1paYVpxelpxb2JwdkQwWU5EbCs1U1JuOQ==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(25, 'dGdJemM4SGJKSDdoZ0J4b0tudjkrMkt2blQwZTkyeGMzUnhvRXY5bnZJNGRaamNiOURIOU5mZjFocmhGbHFzRQ==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(26, 'c3F6M0hzaWwvM0hwTkNaRlVXTC96Sy9odXJvUHV3Q2FQWTRKSENkNWxEdkQ3Y0RPSGRONy9aaWVuWUtmb2NEeQ==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(27, 'RHlmbXpMams2K0Z1N1ZOYUhyblZoakdDMk92UjJQSlBabkR3YlBKVFZkWjhMQTd0eFl5MmZjMXNCY1NYVTdPeA==', 4, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(28, 'WE9KSjhkSnNjOG1LYVh0RFJhUG9sTGxZOFFxVmRDYnBVaXdTdWpBZ1oxbz0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(29, 'ZlFaZlBHT3lIcUl3SjFYLzJ4TncweVl6UG82eFFEeTJyUjJtcHpCY3BhUT0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(30, 'S3VNdEdiWENKQ3NmVEJmbVBQTk1aZEVIVGdhMVpJU2wrQWN5SmFwQTNGST0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(31, 'bDFZei9KYWk3SUUvSUhZOU5mZlFxcWh5eSs2TEdSZERrSUUzcTRtQ3h3ND0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(32, 'RkQ2Tzk1bEphKy9QekIzMElpRjJ6VzdubzdSUlY5bVZuVnRDQnZFZTVabz0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(33, 'aVlWaG1nTUhHbXdDMkpaaFBPVHBIWTBHM0t5WjMwRWQ3WjZ4eHhEVkVNMD0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(34, 'K0xiR2lFRGk0TC9kOHg4S0s5Wkp2eGRGbXo2N29ybW9vRjNIeUpTKzdWUT0=', 5, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(35, 'cklqL0hlcC9SRGVRZ1J5SDVGUmpMWWZjdXUyRHpaV205NmFoNkV1YU1BTT0=', 6, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(36, 'NXhIMTc3MngvT2ViRVZkcXVYN09DcGFYWkNuQUprN0pOejRINWpvVTE4TT0=', 6, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(37, 'K1R5eiswL0NjaTIvUWZiN1VXaTM1aDlGOXdMWUR4OENLZHFiL2l4VUNyOD0=', 6, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(38, 'Wjl3RFpnZFFUWnFLeER5TStaMDkvWTIvU2YxQmxJK0FiWlVjNUFmQVdKMD0=', 6, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(39, 'MDFseHV5MEk1R0FLOUEySW4wMWswQVZ4aFlZTXdYTktOUHhITXJXenZpRT0=', 6, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(40, 'd3FEOEk3eFNGQmJ5SUJWTWUwVXhQdHJMVWxVM2cvd3owaDhmWk9qNG8yWT0=', 6, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(41, 'MktEZUFrZkxZc1RTYUIxOGFzTFV4MXpoMmpwMHZwNGloQWQxcXRXUjZscz0=', 7, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(42, 'cUZOM0hIdTdEUHo0dTY0eFJyUmVRZHdCK2FxWG4rNFhGWFVTclBsNFZlcz0=', 7, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(43, 'MWg2ZmFONlNRaTVvajNFakEzOXdETTFjb2YrVHFjMUFMdW1YVE50WVNrTT0=', 7, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(44, 'em1nNUp6NFNUSk1VeXdhYjk2N21JM2VSZy9CMG5qQTQrRjY0bi9IeW1kWT0=', 7, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(45, 'RnU1R1RLRXVHWmpVVXNvdDJrNDJaQkMvQ3ptaldad1F2Rlc2KzdKOFYzTT0=', 7, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(46, 'M2hzMkhteE45cVdJZmJWVGNGYlVZa013ZUpUenFOV3NSV1d4VmVCeXQ4Yz0=', 7, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(47, 'ODZzZ09WUzlVOVYzWlFYV2NkRHBuTGp0aFE1MUJkc0lFOEdpZmdnTTlHV0NUSHpOOWZMalJWSmp3YUdsczNMdQ==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(48, 'TzV4dER0aEcvQ0U1c0RLRUUvVUxYNWxlRXB6QTRDSlEzZ0ZIbGFqMktmdjgzbUVwRzFJeElzY3UvMUhHdDQwbw==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(49, 'NDdUVDNkR25KemVDdnVldjNaUzh0bmJMKzdNa3ZnYWNweXpWS1c5V1dGYlBSVW1JMWQyaDAyTXk2N1hDdGV6cQ==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(50, 'Zm9oU0NXNWV0Zm4ydFl5NTRrWTRZMy9qVUIyVFc0WXdlQklvcGc4TXhoUDFSYXJiclg4V1gwREpSeWZBTlErWQ==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(51, 'NWtId0Q5WE5pdmcrZFdUQ0RSY1U2OGJFM1ByVjIzSENHWTR5cURDQnFOVEdNMWdMZTFFMm5uYVhqdkZsN2FXVQ==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(52, 'WS9iUTdUU2lvbU92Skh5NHlWbFlWQ1RQa1RsTTlrdGV2UXBvRElLQWtpc2pFVUpRLzRxNXFjT1BFNjBDUTBFYQ==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(53, 'a284M1RLZytFVExPaURtZ0U4emxGajl1TS9MYkthNWR3elVoQzh4YWRYSTB6TVBxKzBXRUk2M1VXU2I1NDQxTA==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(54, 'K1dPK2ZnSGV0WUpET1RTWi9zcGtaa3AxZXJETjd5R0g3ZExuMjNTRHF6RHNaaVVpWnVEQWM2cEkvTXpDVlhUdQ==', 8, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(55, 'SFVibTVFZm00QmRudS9nWHhPb04vTVZPSEZYQVZVQms0Y2VqRXd2eEprSVUzcitRQ2hzY0g1UjdPY1lZUDZYSQ==', 9, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(56, 'dUpCTXJNZEsxVE1VU0xlcWkrZDhmOXRwV2hWQ1dzM0RVV3J1WjlMM2d1dzJ6M2dRMFNwZkZDZWhFb3pNRTdLcg==', 9, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(57, 'UlVUeFNyamsxYWxlZnRlRndTdno3U2dnalRYMzZuclVGZ2JoVlNRTjRqTTBseVRtRzQvTkVBVXdXUzI5QnFkTQ==', 9, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(58, 'SlF1c1FKTHV5eU9EL0N3QzIzSW84U2VHNWJmbXowekVMOEJaSzdiVTkzVjVwa05JUHA1cURNd2d1VE1lVk1RNQ==', 9, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(59, 'YVMvcThtKzBBNjZ4Z2FnTFlpN3lFS09wcWovUTBJditPMVVQZlVsbGZaMUVjVGFQZnZ6YkZna2t3V0k1VGZXUg==', 9, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(60, 'WnBiZlIzTU9mZWVKWXlMTGtVMDlteEEwRnV0bUVQbmwwajZYempkd1RwYTBTOFVaa2hHZkhTY04zbmlzMUU2dg==', 9, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(61, 'ZFp5eTRkTEE2MzgzTm1jS0dzNEdNVmxRTElvS1E3SlRwc0RnTVg0SDlZT2tjQUYrQnB2b1hMTWFsU3JMNG9teg==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(62, 'bGdWdUloRjFIUDQrYUNpODRjVlFjQmpEZzMvY2RlZXNoQWlUZWRFazF3M3hRUXUyRlhVVjJ2b1FOWUprcjRsZQ==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(63, 'YTNEMlFGbnVNZXAxb0dJS1grazRwV3ZjTGlzWU1IajFLOUJTOFlwMk1XWllTeWN3Z0ptMWZMTXBrNXRvWTZWdQ==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(64, 'MzlVeG1YaDltNlJyYXd6NjNIQjZWbk9HS2F4clJPVHdhUVhPVENQQW5UbWVkVyt2WVF3ZlIwNEFCQTYvZXpxQw==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(65, 'YVhrRTNVZHdMUzFpV3g3cG4wUFJlMWlkTWdEQkRwYkc4STROR1dHbU1WRnZoalV3Um5hbWIwQUhPRXBjcE9ZbA==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(66, 'WmxSeXlIemhKSTZKMUNaWkJXcW14NnJzWXVpMUg4RVRwa1RPMmhWbEc4QlhTVGpPMlprMlZveW5PampkVGlZdg==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(67, 'amNHUk9qUVdSYTFIRUlGbTJxNldCdU9UWEJsZm1Zc0kyNkZBU3E4VGdjQnJIM0xRQldyWDhkTGV6TnlWanNDVA==', 10, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(68, 'b0l6OVJSZTZhRitVRGxTclRlY1poMjNYdTh1SFdCUFZBT1lYMlpxdEhIND0=', 11, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(69, 'YldMV2xNcTV0TjJ1WFZISG9YZnRlRkoxRUhQTXovWnRaMGtmbTJpeEFQTT0=', 11, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(70, 'RFc0eTZ0STBLK1piVmY3VkZCSll4azBjS0JNVE9QZGVqOXU1dGNrcC9JOD0=', 11, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(71, 'REJaSXNJbUVTd0pBYzFNZ1prT0drV0JZU2U5bmRDOTdvYXcyMFlTWUxXTT0=', 11, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(72, 'L2xVWWVvNXZuTktyWTdKRExPYUlKT0NOT3pxTkZzVDdLOU84QmNHTEhhcz0=', 11, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(73, 'WW9tTXJHVDltdHBob2Zva0ozZVIwRHJXMVhyVzBIaDFmd0JVM3dTK0Q0WT0=', 11, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(74, 'S3YzVm1FeEZnVzVxMUh1TTB4TXNDeWJ2VDU3THJ6bTg4S0MrQmZTZWh5VThQV01jNXJQeU4yaS90cDlNV0o0ZA==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(75, 'cndRdEhwTGlKL1N4bUZkQnIyWlIzTnRPd1ZpdWVyUDdQdEk4VW16UVBKdGhsOWhYSzJNSXIzcElPemhjcXV0MA==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(76, 'YnJOQ2M5NHFoK0xsbmVWckprcnpTT0VTcHU4a25sTXBVdkduYU1OekpDUnRpVTdRRktmaVZhWE54TFdkQk1PNw==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(77, 'djlkU2V5NGdaZmFHNDRQcUxhMmNnVFFtQm5oY3o0a0JEdG5pNm5SMERuRnROZGYvbTJUZHRUTTZZdnJhZWE1Sw==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(78, 'UzRCOVdOMk0xQ2M5ZXlQamM3L1o4TTZkWVhHek8rOGQ5K3dqRTBzeWFPa0J1amI5Rk9pZnhjV3YvMGZ1ZFZRMw==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(79, 'ZFd3Ylp3TU5xSTA4cG5ZeVdCclJ6aThsY2JSNG5FSDlvcTNRNEltclFWci94VWlrRVZxSDJZYmFBWEdwejdJVQ==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(80, 'bGJkSDcwTjQ0VitRNkRyL0M5SnczK0tzRVBjNnpJYVpyaTg4M3JaWFZBN2dkOHFKMkZhU2YxRVNBYy8vUklKQg==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(81, 'akJGZkxnS0pQMVcyUFpZODNjUHN4MkFyWlZnc1hyaFJZc1RVblJMRWRYVkVmN3FJZHBlZXZsVHcrakJyZ0J3cQ==', 12, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(82, 'UmZRSkk2cHYyNzM2RWhFYmI3SzQyT3JUcElaWjBleW52RktsVEVSM0Q3Yz0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(83, 'VGl4eDJ5MTEydHJoUWI0OWlBOFRMbUhqMFBZdU5XTmptOWl2ZXcxaldmND0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(84, 'V3hpbU1sOGR4YnFMSlJheXNzRGZ6YWFRWVFSNnZNL0Qwa3N5MUF0MWtLVT0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(85, 'clVuMGM4N2JCRm93cU1VOEc4ZnJ2S1ZqYlR6aU82bDAvY2cyR0RjbTBvWT0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(86, 'ZnVvR3BRem9WZVdocUVqSW1MenRwOXo3L3RBOTdLL0hjaTZiY3JlUjZHTT0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(87, 'Y0twVXRCV0J2YmE0Ylo2clY3WVJxMmxIVTBhT0lINklaWDdPN25IZ2lTQT0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(88, 'eDVySlA4bzN1bUR3ZlR3Ynp0RWU4OTlyL0trM014RklSWlVucWtWazRmaz0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(89, 'L0pnb0NSY1h1bjRFMGRRVkxHS3BlUGdjS25KblJUQXRneEpTTUdENXJnND0=', 13, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(90, 'cktvcUFsQ0JRTExUOHhTWUY2TVNBbm1zRlZRWFVWcUgyQUNpUGZIYXU0MD0=', 14, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(91, 'UnkyQjhwcXczR0RzekIzWEJTWGRpV01uRHJXRVU1bDhwTW03U2doQXExaz0=', 14, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(92, 'QllOYlluS1hCU2NJTVFyUkI0QXZUeUtXTXl0OTc4SmF1VGRxNGQvQVUydz0=', 14, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(93, 'cU1MUXBHMHE5YitId2xsVUJadjZXeWRTMWJIUDN0aE54MEFiZDJDb1R2RT0=', 14, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(94, 'V3U0TnlpR042L0poZ0Zjb0xZOG5yUFNUemlJc1lCTTNUMVJGNUVMdzErbz0=', 14, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(95, 'R3hHU3pMN21NMEY1RlVTcmtMcTZvQ3FJL0daL0tYR3lFN2pxeDFvSGJzZz0=', 14, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(96, 'd3d6bFVnUjB2cytEcEZXV1NGOE55YjRyTHByMHNCSVZPb01SSUIwQ1F6az0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(97, 'M1lxZGJwVWpXdm1EZFMzcU5UbGUzdmU0YUZhRnY1QW9Tazd6REJ0OW81UT0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(98, 'WGdUUmVCdjdRdmpOUTVyZzRoYUJiUVp4ckRLdFJvdFgrcHNOUHAyeE9Edz0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(99, 'ZG9XZGZnUXNNM0RsWGFyUHc4U2lTelRiSktMd0laWEtYYTFYeGZ6bDl6TT0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(100, 'UWxjQ2M2ZTIyaytYMGVLOVpyd2NWbWFtdFhQdHF3aXV2RS92SS9kK2h5MD0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(101, 'SUFyM1BJQlpnS1N0ZkI1NTAxQjRGMEN5Slp4MmJFKzdnSkQ3QUMzRmpEQT0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(102, 'L2tBTmtoa01YMjBnQmdmNnR4U0FEK1BVVVFOdkdQU3JJRkxHc29yeEdGbz0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(103, 'YWd1c1M4VFJyVFJLdEtpR3lxaSt3VExkQ1JHU095eXJYODdsR1pJL0RSbz0=', 15, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(104, 'c1Fjcjd0T3VRa1Bua0hpaSt6aVo4aDNMZE9PU1RLRFdGcFl6L0h5OUttMD0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(105, 'QmdQTGpOTlN5ZGloSWFER1UxclBxNHpMVjRvZVFsRHFhNTBuSStGRyt1Zz0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(106, 'MmFaZkU3bFR6eEVWc1ozUlZlc1RvVUk3R29ZaXNqdWdKTzlTcThXVzBzRT0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(107, 'b0ZVdWFvMlZyOFVsem9pb3NseDBvc2VMNy9CTnJqa1BZL0wwODZzUEV2Zz0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(108, 'Um5DeWpwNlQ5emtKQW9CQ1FSY3dWNFdDcStMem9zTEUvb1FBMWszNS8vUT0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(109, 'WS9wZ3JzSnpLZDNPQU93Ti84bzVIZFU0UzIwdmJ4WGgwUFRXTDhRaVNwUT0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(110, 'RU5nTkVJbWEzRWZxbFFDbjhtVkJzZCs3NHRGQ0ZLOGJkcTNQY05oRnAzcz0=', 16, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(111, 'c3I0UkpJcmhTTkJYQ3pRdFVmWlFTcVNqMFJNNjE2UW80WmpZWG9aTzlEbz0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(112, 'eW8xQVUrbnRKVHRIUVphcUhpT0FQdTgrNzF4MDUzNVRjck0rTUt5ME1YZz0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(113, 'WUlUSVR2MG9Nb0FXNWFVMzFRd0VkTmFndXpBYW5TYk9VUVZLOEVVbEMxRT0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(114, 'MFcyMnNTWi9tVmNkdkRrcG82L0JjYmYxT2F2cWJXZ21HTkFMcmxqTmZmZz0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(115, 'TFlIaWxqZFIyS2RuTmVsTWJ6bEN6d1g0NWRUOEwwWlh3c2xCUjhtM2lrND0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(116, 'Y2pjNHBxZUNuRDE1TWlXbDhmQk9vSnBydHJSOVY2Q1llaWI4VUpMb3NrOD0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(117, 'T1VzcFREUXUvWmR1MDg5ZGxlV3d0Snd0dmNRdVNTS093VGJEaE1qT3E5Zz0=', 17, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(118, 'blJ0MW10RWNHUXVsbmFLUktTc0I5L0U5U24wai9TT2FyaDdNRlFod1Q5QjdtNmN3VEdKdXJ0VmVFRFRLNHh3Ng==', 18, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(119, 'WWd0QUQ5RHNVelZQQVl3Nk1UeTFKTkwzdmRJNW8waE5JcVVVdGc1SllBOXFNSjErNnY4Y3hZTk9GdFBWdjlrcA==', 18, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(120, 'WDNtOHAxdC9xMmtXalUvK1QrWnR6OUVCNFpxWVhOdGI0anNiSnFkb1paSmF5c3NuT3JCOEs4Z1ZQWEJmUVRxQg==', 18, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(121, 'UDZxTHIzWjUxZkFRK0FGcU5TQmpIeWgyNVhVa2pWRDV4V2wzUzMvS05mcy9iZEpGd3k1c0RSdmdLbGQ3TUVFcQ==', 18, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(122, 'a2pGcGw3ZEo1TkpxaXM1cGZKMGpJMjU0MkpueHFoTGJQMnlHNjF0VTZJNmpNOGNXM29nVDkvc2taN0ZMc2tRMQ==', 18, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(123, 'b3ljY0hoaVhXVU54K1FvMElMMlN2cEYyTUV1czlkd2xEZURMWWVWdjY2cVdhbHdJbHhnME16SW1BSzZzRGlVMA==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(124, 'TS81UjhRck1VUVBBQzk4SlhVWEF1WFRVL0FpWEJpUUZla3FyZ0psd09LTmlmN0MyNHBsa0ZNV1hic3JkSTc2dA==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(125, 'U1dJbTBuZ0VueFBncVZqalI3MEcxM1I2alZmVTN0N2wzdUVPTUJjQkdrTkVqaGQzZzZBMmlBc0U3YnpyZnNpaA==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(126, 'cGdaK0prWmtnZE5JZmx3bEtTdWpOcUJqRFpxM1E1Smh0UDErbkFNT29GOFZGM2FLQWtrd2Nod2VuYllHQmFYUg==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(127, 'dUFtcTVKZlJ4ajhMVjVNemxQMkZMVUlHRU4xZkN0dGRGem1zQlhDVjBHWGs3Ynp1dkREYU8zTWRmN0NrV1ZIbw==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(128, 'ckNNUERnZkZwNnRLYTEwR1pDRElJVHBrejJ4T3lqSFVLV0pRRmw5bjVVNi9uSVhoRkk3b2dRampGMGx6YzMwbA==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(129, 'TmN2aFd4UjFaSXZWSXBDdjlwazlJQUo5c2dqd3U4bGVFNndiZUNObVJ6Ulo4TndTQUxyd2RWVytBVVpGUHh1Zg==', 19, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(130, 'aElQYTNsbFlnMUxQcTBrNmtqYnhVa05WSExGRzdpZ29XTUZBVG5Yam5Zdz0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(131, 'aWJROG5CWW1lNTd3NjNFbllXN3ZWbnhMYTRxWTIrTFZ5Z1BqaDduek1TQT0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(132, 'eWVFZ3lFRWhaY1FQSTdWTzFLN2dkdHpPZWZtZXJPSWMrandPcDRCZUp2ND0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(133, 'OXQ1TTE3VHpzcXB5bjlNVTd1dURTVjBUcE1ualNlUi9JcGNmVFN2dVVsZz0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(134, 'ZFpuZlp5SVplSGdnRHFnU2NYZStJcitrY3pzNUZvaWxLTnVTN0FFZXZiZz0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(135, 'ZmRCWm1YV0xxVnFFVk5Hc2J6aUhNb3FmaE5KQkdGa29mV1VZak13ZCsvcz0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(136, 'Q1ozTlFVVXduVFBKWmJUQVlsUjZBS21hWU1mbmxjQ2R3SWY5aWtvNWNVMD0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(137, 'SkowU0lFS2tadEh0MW9CMTk2Y0VZMDZqL2hMWURFSWFheDIzKzRCaFAvND0=', 20, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(138, 'RGFyZVRMVnJWRzJZQ1B0M2hmbElEZlFaMnV4RUtjZ0dXamJtWVpTZlNNZz0=', 21, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(139, 'VXhwRE5oOVc3clB2QTJBSEdlaXhveUdtdGZHMkFkK0laSzRrUGtrSDlSaz0=', 21, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(140, 'Z1RjZHJJdU1udW5TNW1iM0hYQWFhMXFDQTFENHpSZ3QyRTU4Y3ZhZS8xST0=', 21, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(141, 'TDBIRGpXY1BWcUNVU3ZDUDVNQVppOW1WVkpJWTdtWXJoVEx2c0h6QTdGTT0=', 21, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(142, 'bnJXN3haenpqL3lHdWptYXpwMlUyemwzZVNDWE90cUxsYU9IVWRwd0R4UT0=', 21, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(143, 'b2dJTEJHOWxKYytaelBpbSttWmZybFBKMmEwaVExMWt1Wm44bFlNcHhmZz0=', 22, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(144, 'cHk2L3Rhc2xrSFhoYUZnVEJKUDgyYnM3SXg0dStTdFRBbTNMWjBUUnY0ST0=', 22, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(145, 'VndaUzFKT3NQYjVqU0dMWGJxdWY0UEhybnFENG81aFdNUzdmK2pPVjlhOD0=', 22, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(146, 'WFY2WXBQejh0R29OOVJtWTdLR1dqU3MzYkVGT3IzaGwwKzJhTm0vTG95Yz0=', 22, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(147, 'SUJraTNTYitQcVJydjZwK3B3VktNM0RneHRCRFN0WEhrOFVrRGVIMlRjMD0=', 22, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(148, 'dk5jdVJidkVjbmI4UnhNS3YxRVRCWU42WnUwMm1ybEgzemlkZ3k5dCtQVndBeFhSSnpYQ1ZQQjFwQ2MrM3kzQQ==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(149, 'WlRXQkNFcVRGK2dsL3RIRUlsUzNNZElKZVlWNFE2Z3BWOUZnMURpSGRkWU10UzVPdzFEM1lhLzE1UVBYTTNrdg==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(150, 'N2U5VDlJeGhUdndEQTFiVHhUUTMzTFIrb0F1TmF2clZXbXZIZmE4eG03LzQzMlJIZjk5L2lYVGtMaHUyRmErMA==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(151, 'Q0czT3JQbzcxRUt5SVYwMnlqUisrVkVDa3BXUGVVUllnM21pb2s4bzc3NldRQ09GVnR6SDBXbEJlemluMVNDaQ==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(152, 'WSsvMEU2d2k5ZFh3VkdXYUZFWHpSdVpKN3hrV014MkxvY3BXODMyQTZyVVJRcVBHQTVKM1FnMmZTb0lMSElobQ==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(153, 'SkxHWlFZL2F2anRna2pYd200MUExYTh1TkxuUFlLM1kyTHNIeUlNb2JBMXU2bmJ6N1doTXQxeVNLYS90ZmxxZg==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(154, 'eDBkaEF0TEkzdnhEeXpxN0NqMnRySVFmTFhFTmNkZHVKQ29wSWQvS1NpM0pvdGxZcUZrS3kwZWFKdU41Tno2aQ==', 23, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(155, 'clVsM3NxRkhzNmhHNlRoOEk1WUM3Q2VLSXJmdmxzeXZsVmt2UkQxTmFCTlk1OFZjNEh6MjdISnc5ZUsxL1JhOA==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(156, 'MnFkWVp6VUtQZEpwUnhMK2czQnlzSTVSYzZkY3d2dWNyOEVNWmtEc3YvN0E4dVQyU2YxTHlDUE5ud1pkcWJpcg==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(157, 'bzB0K1VJQW44Yi9Tc0JiYnp0SjJmZXc1Z1VRVXUybzlNSjFyVDgxSDBCblFDQUZ5MEw3MnBta0hBRVJrUTVyWA==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(158, 'L25jR0RIc3IrL1czV2VDdS9yY1NKWWh0aVVPbjh4Q3RMek5LNGxhbHlsNmxSY0ZLZkZ3RWtYVkxvdWc2UlZURA==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(159, 'UVdvTjlmakV0WXA1ZUJ0NENDcXI5M3ROTXhGczNjNmcwVHRlT2ZJNUNGUlZpK056V1FRSXpaYXNQRWVreE4vSg==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(160, 'V0dmazBINnVwbmhLdE94Q2hMaWU2WmFCUndiV3lKY2JjOUNJZVZYK0RIYzhyeTM4MENjTGdPcHoxaGYzeWpQdA==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(161, 'RmcycVBKKzZuN1hIM1RvR1lIOS85ZkoxWEtKeEljajlZYWRRVW9SYU56NUdkL1BVbzY2N3pISnczQnB4QkVnTQ==', 24, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(162, 'bitvV2JwZkhuSzZmVGQvMjFFUHl1cTV3TXc4UzFmckVZd1IwOXJkQ2thTUZRZDN3NWlDc0JWQnl1YUpFRXVwYg==', 25, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(163, 'VldjczFzQ05qczF1L0w5VHZyM1phTldPVnVZeG9Cc1U1bDZBRUQwVEo0UTdMQUt4THBaNWRNdS9iSTNJaWlvMg==', 25, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(164, 'UjRxVVhzSDh2VGhxNmxuZzdia0J2OXFGZWNFUXdKdWptVTFFSGZQOGlpbTBBeWNYK3gwWVU0OWIxbXZENVcrNA==', 25, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(165, 'Skl0eEJ3bGNFNWcyN1JRNWloTUNxM2pjOGV1dWw4eEY4Y09PYnl0dlFRSmJVTFZIWHlSRmtuYW96RDBiNnpiUA==', 25, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(166, 'OFRmTHliR3Q2UXh3RWRVSWRRNlNla2NjazMxR0RQMjByYWRQTVRKZTNtNGQ0U1RadmZRdmRvaE55QzR6S2NDOQ==', 25, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(167, 'MWZtUnQ0aGQyWWdIaWRvbmcxQmJKd0IrU3BsNEtOdEtTMlVJNTQ5NXRZQWJ3VzlMeVgrbnY3RTNoQ0NXN21qQQ==', 25, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(168, 'dWlGYkZGK0VRcHRDYmxyOUg5V1EzM3gxUERlZVN3LzJhSnlwTEtYbXNjYXZxVWtiTGVFemUzUnZqWHUzc0t5Zw==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(169, 'MVFUcWZFWXBGbXBZYitBNUx6b2RhR05SSk94cVp5N2ZibklZRzJ6dE53SEl1QTYvWHg0emR1aFU2RHdpbldrdw==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(170, 'cjZLKzVvZWxJWWFLN0FSWlVzNWN4Uitua1JnK09rbktqUDBldXhJQk1ocys2TmFBSUx4aGwwTmo5K1ArOFViNA==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(171, 'K00xTnVFczVnVGw1OXczNWxwWEltRVhrSnlxUlh4T1hKcnJ5RlhpV2dyYWpGMjBHMHRWMzRJRS9xVmhKRlQydg==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(172, 'ckVJQTB6QVV1M3pyckdyUjlqTU5qckh0a0lTUU9YdFY2czNtT2gwd3hCLzNpTGQ1RGdHZnBYT0NYdnNWUEVaag==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(173, 'NStaTUlCVEIxNUtQWmVuaFZ4RGdJaUY0TC9lQmRILzcreElTOUdVZUVKa21INlB4QjhRcDl1SXhVVi93Y0VpVg==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(174, 'NHhQWncrc2lEeXFpNVZTSXhuWDA0Z0FqTFBvMmtYQXZGZlpWN29IbWU3bUxiU2l5WER1blhnQ2pVUllNYm1BMg==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(175, 'YklCNFBuUTNVdmlBeE13RXBBWGVpK2VPbkhFM0dqUTV3WDRBSUJ0S0lIS2lHRWZrQ1hhRjhoMDJzcE5DNnlMaw==', 26, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(176, 'alRRWGk0RnlBWmZYZWJ0TWIwaS8vYkVockRkMGlSdEh3MWV1aERuM1ZWRjJ3a3NxN0FNVDcvdUFxRTNNb0tjdA==', 27, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(177, 'Yy9uSHJYRHJKYyttem9Pdmp5UTJlUTRWR1V3MWx5Q1JwYmlPZnF3RzBPRWV4QWlpMklsYTI4YlI2eWtaVGx6aw==', 27, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(178, 'eitBZXlVaWRRbm1OMFZxTEQwOFh1QmJOK05zV21kbWM4MjVKMkhIQlpxOTNlY3hJVHFiUDFzUkRrVkxFUVRLbQ==', 27, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(179, 'UVBOL01TUGowWERhS2dHQU5adkV1RzhQcnFTOXJRbHlTY3lDM0NxV05zdTM4WmRHbG9CaHBUMWFDZE1rOGkrVg==', 27, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(180, 'ZlkvcFhwc2JwVm1GN1ArSEY4WVVZWmhhYnZxeG1hTVptVit3YUNxVzV6UXUrbzlrQXJJRDRNVkxlVGlYQ2RuTg==', 27, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(181, 'MEtUS1VPbXVEaS8vV3pHd0FjYnpCZm50Wmp1TDl5TityZkxzYXBMK3E5Lzk1aS9lWGdKSlBGRXJBMk10TXo3OQ==', 28, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(182, 'alRYeXROV2I2djJGMlpHZlJNNGpQam5zSjBhcWdqN2crMlNZaDBuN2ZtTFo0TVBUdFhVRW5DS0R6VXZHYnFvQg==', 28, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(183, 'Ry82Z0cySTBGVEViWXRGQmk1dUZQT2thNWNJVHJJY3pza3daZWM0aVVXRmRoSXJSS1pQZFlkTmF2bkFrbUZrMQ==', 28, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(184, 'NGltU0xnT1dzWlV3ZUNBMGdiZldzVndVWmFwT0w3UVRNeHdKRDVOY1FyUFBLWFNEZlE5M21EbDRESTIrbVNpUA==', 28, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(185, 'S0dZRjF2YlVubnhKUkdlZWZvb2F0UU9rSzZPd3FPMWVQYTdkS1VlR0RPSXlENHFFY1BSNFZ5cHAvNEtCdDArSQ==', 28, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(186, 'SzhTNk5JaGQyYlRmSWp0RzU0KzQyb3NrakpjVXhIeVIybjdZL2lMbk1LdVJxS0JFZGpQV05JMGpJN2IvTUMySg==', 28, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(187, 'QmJIT2ZHYSthV09neHR2Q2U5b0JCN2swbHdrRWdGck5PejJzc1BCZGxyTmw2NUowQ0ZvMk9BR3FFSDhrVk80YQ==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(188, 'cTlEaG5lSTFrYm9hVjQrVzhyZHdOa2tteC9McEkvS2UrcHQ1VWUyNnEvU1NZN0RtNU9NQ2NheDBCZTEzaFlVSQ==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(189, 'Zk9ZeVFlUHpoSVd0NjVyUkVDQVBsN2pGV2tVbzgrY1dwQWc3MmZuQUFDaXFSR2QzS2E5RUw4WldiZnRHWHBBSQ==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(190, 'aW1Rc1Y5NHUxNVRFeHNtNDR5eVgvNXd0OVNoREhwM0s3dU5jQ1JCZWpvdGs1ZUFSV1FrdmdNZ1FzallwQWdXSw==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(191, 'a3NUc0ovTVc3YVo3SXR3ZitjOStoOGlTcGF3cmlJY2hEcjdWMngrK05KeENSZGpRUnFlaGUvblNrbDR3Mk5ZbA==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(192, 'YnNKVnBGaERhN1hZNVEzNVNXZmcyRURteWNEbDVReEZRRmZqM3Azc0FQNEQvemtNbW1TbWZHTGdHZ0UrdmNCYQ==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(193, 'RlcyV2l1Wm1rMHNNU3RLbzVUTEt6TmNUNlJMWmNTUVdRU0hTeFBhWHJpbjJJc2syd0Jwelp4Q3pWclRCZks2SA==', 29, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(194, 'WFZVQ29KZ25sRzZiR3NBT2pTdm9nd0FnQyswcTlzeEJ6TURKeW1ua2gxc0NNRUF2SHA4ODg1SC9uOUJwK29sNQ==', 30, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(195, 'M21vcXhXWWtFbllNT25rdUorSXJMbm1xYkRETDlwQW9kWFBIK1RVMTdqY3k4SFc1bzZOc1NQZGZvcHdHZHFmNQ==', 30, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(196, 'aEtMcU1Pcm5hRWpqdmczY0tIa0JCK0h2L3FxMWZUVW1hUHowWjM4Nm9xb05BZm0vNlp5cHZrcE1qcWpwWjk2Sw==', 30, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(197, 'cThuUkJ0c2NEWEZkYW1lazl0RnNzYzdKbU9FZEhQZWZrNjgzYnREeU5rcVQ5c1BUTkl5WW0zYWJmYUZnSkltcw==', 30, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(198, 'UHVWYnZuOFpyT0h5QnJyNUUxY2paeUJHWmNQK1JRRTM2Y1hVS2k2Z2YxL0JjNDRySTdkVnpMNHMwSXRad2RMSw==', 30, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(199, 'UFhQT00zM3p5a3QwVWlPSWJaRWN1QTFKZUVrWHlEYzJpSkgvdHlzZ1ZVdGJuRjRQeEdFOEtuYUw4Zk9Mc0NXVQ==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(200, 'dHN3QnpvT200Y25qZDlrdDdIKzNzT2k5aTB4aGtlSHJVQllJbHpLWnJwMXp2UXlJaVg2UC9xT005bk9RUEllag==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(201, 'RnlOdHNtL3BGY01DaklQZWJZWTZNQ2pBZm40SmdvV1ZxS2FCQU81eWVvcjhOdmdqakE0VE8vMFQrK2M2emgzRA==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(202, 'OUVKS0lFQ2t3S0x0UkRJdDVFcmNWR3NPd1VhQWNWdWF6bEl3T1dDTEx4OVFvdko2aCtOSXNHZmFGaDJGTHpyaA==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(203, 'akhPQm5udDZKSnVEQkNPYkJRRzlzZXkrMEx4bjBlMVFWSFp4S0lOUENTQmZaQnIzSjhDTmdmLzRpL0F1Q2lETw==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(204, 'bXpIcjR0ODROWExBT2V3dEdPYmJpa05UWUUyUEtlRVYrb2c2WGVEMEtjUDFLVXRxeG1oZ3B2UDVWRnZrbnlpcw==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(205, 'MlczeVBIWDNXUUgzRTRmL3pTSnNWaFF1NFAvbmVlazdONDlXbWtJczZ0ZjN6a0tIUzBpU1lLdjhtc2FoV2gvYQ==', 31, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(206, 'dUJ4NU0zZmdNOXNXait4SFdPQmoxV2pzT2RwT0Z3azZMZk9zSkRwaU1XOD0=', 32, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(207, 'SENPK1Y2ZG92TlV5M2FldkNwYW54U2o1Z3dzZ1NvQUI5WHB1Nlc1QUJDMD0=', 32, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(208, 'Njg5U0FRdm5YTXlsOW5kQnlTNzNEVnIwU3l0bEdBZHcxN216MzkxcmpSQT0=', 32, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(209, 'WVZpWDBMSnNKR1FTU3NuNEJEQmRMMHlPVTZMM09rNjNqekYvaWZuN2lVcz0=', 32, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(210, 'a0V5T3piemluSFNHY2tDbDB6eTdaaTFjWE81WDByS2tuS1ZvWWNVU2pWZz0=', 32, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(211, 'SnNNZTNpK3RjVXpiUlV2ZlhVRDBpWnFNR05nRnc3d0RTT015T2ZJV2NsMD0=', 32, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(212, 'NjNpUFpYL1E3VHN3YnRIOWVyZExXSU1OSldGRmZrblFXNWxjL2gzNTVQbz0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(213, 'WFo1cEhsQ0hnNERYNVh3RGh6RGk5dnQ0dUhXdDdIOTNwS3RYSWY4ZEErRT0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(214, 'VXE3aXhRNWpuNi9LU1MyWDh1aDNHNDBrenUvTktKa09PVnprUmNkalRKOD0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(215, 'djlzVkxVSGJvdTlNMnUvbStrSXRtd01SQS9tSVVCTnpiTXk0cGFYOVhvMD0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(216, 'VmFRNzhNY3NSSEllUlJaMFBpSzNaY0NId0NSdDRKbmdVbmZZTkxFN00rND0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(217, 'MzJzeUpMdU1DcGxNZEFNc2pHb3ZGSG8rZTJYUUdqNVFKTzBVVjhycTVvVT0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(218, 'NXA1cUhiejkralJ2VDQvTXM4OCs0dXNxSEZnTGtSVzZzT1Jiekd0VGVraz0=', 33, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(219, 'M010WDRqZFNwVzdzMEtjNW9zeDd3aitqRWJnOXY2MUxtRE5sczY1b050MD0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(220, 'Ris3V0pPRmprdXFtTU5QUzYzaUFqQUo2YTFOcDdvT29MS3MzSndoMzBJRT0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(221, 'N3N3c2JFeHZZTTVWekZxUTgyVTJMOGxnOG02NHo0YVhncTJHMUlGVmdQbz0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(222, 'TUVCcXlGdWtqckFHc0VlNlR5bCtnL01tVDArTG1ZSmJ0VUdRRk92dUREOD0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(223, 'ajBRcldYWGdqUUIwY1NlcjVqUmg3VkVmZEVjR3lOREZneEUrWFRQeFV0ST0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(224, 'WnRSMUsydTE3OGpVc1N0YU03eW9ZRnpHb0FqOEJmbVYycnRLVVpJaTBCQT0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(225, 'aTlCYmVqYVMrY1UzQWxFM2x5NW5yWW5qWDlEeHpUQlR2eTJRczJMSjErVT0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(226, 'NEZNWHAxQ0l6elpHSkcza1RLM1MrbEF5WGpMZjdhR2NaM1pURjlZKzUwQT0=', 34, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(227, 'RDRadW9ieTVldWI3bmVIaVJ6QWNBNHFtakRpODJ5VWZ1RlMvbytwL0k2aUNDNmhja0JidHRsMTlWRmFIeGF3ag==', 35, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(228, 'TFFZMkpRbmh6dzdvNjJvQWc1ZW9SOGZjTDVRd2JSRmF1MkhuSGlEampyRjc3UkJHakozL3hqaXp1czByYldkdg==', 35, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(229, 'VEl6WERweHNUWG9icHQ3cmVDbWRjTDA0Z0pRTGk4dlRxTHZNS3ZGbDNBMkZkbkpOd3AzTkZoZFZwRmx5WjcvWg==', 35, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(230, 'bXNSVjJUc295NURsOE1yN256Y3IyMTc4VkdsSFlhZjdDM0luTXllWUljNGlnOGZTbVhwMkI2dmFnRDY2MEVaSQ==', 35, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(231, 'dUF5UnVxYkhmL0MwSUtkamwwTUpFQTluKzNnRVdOalhwcXQxOXhDd3FXSDdnOHZVclkvRktGWkVqTTNtQm1MTQ==', 35, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(232, 'VzNGcWt1YXV2Zys3bm1PYVR5eG9XdXZIMnY3bDdWRFNtUG5kZG1sbHpqdXVGdDdqZGxSdFowZmZyUVF0OHVMSA==', 35, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(233, 'QlNhWmZNbzhISzJSQ1Q0eDFHbmhYTVRsMzNUWlUrZm42eU9kL3RQOEtFa1g2b05FNC9UWktFTmEvcDVJODVXZA==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(234, 'WU9mcjgvdHI4eDFhSEdGdGcrMFQvbG5yM0FxL1BrMlBXZ2Y5Z214N1c2bk5Kd2tLODJrRnlyMFEzZTFLV2RJYg==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(235, 'ZEthUGpsTnRUVVZLYXo4NGtWekVZODAzOUZRNVRsV0FXSUpFMUpWazg4R2d5RndoUngvSUhUWXQyRlJBcVBYeQ==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(236, 'dTZvbEVJZVplMXJZaTJCb1RQOVEraENnMEh4WTlLMituRU9SVFdxV1FSYjVVeDFZUzJySjd2ZzBLTlQxTWJkZg==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(237, 'NEZjaitvOWNPTy85Q2d2aG9Kb2tWZ3prampFWTBQSmlkd01uazdUNzd3RWJseXduVE1Cdk9jUHMrSURodi8xVA==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(238, 'dkVmUzRqNEY5OWlmOVc3VE5INy9ZUnBmZ1lJcGtZa0huTXBZUjljaHBCRmREN3ZDejNIK21CdDJWSVZQMU81Yw==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(239, 'V3BtZkFJSmIzRzltcXF5MVhJSHNzMy9OdXJSVkRKZEpXZUQzdmg0S1pnaVhSMUJoZUVObVBIQldRaFAzV1NieA==', 36, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(240, 'MVVaM3p6eDViZ3ZySE9GQW1jVFZJLytLZzJTSUhjWGVtcFJYbkpsaCsrVCs0N3RGNDE0NlZtaHRKTWxUSi9iOA==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(241, 'VEx6dGVJRXQ1SHc1MHZkRk1NWUlZd1c1Mm9JZ2Z2eGNOMnFWTzJnNWtud20wWUhvQlJybEErajc1Q3lhVlVIWQ==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(242, 'UXRQV3RvQVc0bmVUNVFFR29yVkEveVZ3MldOSDJFZ2hDTlJhRVBYcEgxVHBkTjd3MjFNZ3JGWVBVZVZUYzlkMg==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(243, 'a0MrclU4K2xaaUNTa1B5ZFZBL2Fack1nYzZIcEpWa3pFVllsVk5lUHhlWExpSVVtNTgrb01oQUxpVzlObmhxVA==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(244, 'V2FMQVc4dGw5R2taVkFFeERSS1NOSVlSalF3aTF6Tmh5VW1rZ29JK3phMHFQQ1Z2SDBubCtCVDlZc0VKTUEwLw==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(245, 'RmswRVBYSGMvdGNwb3VQQ2lMSnBmN2k5OUlJVFYrUHBjU1Fua0cyT0ZDYW1Yc3NqcER6dzRHUmdlVi9hSXp5TQ==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(246, 'SnNHWlU2cnVXOWVLc2hPMksrdllxdWdya0VMeVd3UUMwMmdaVTFyRkRmYjVEem93SmtRR0VqTmlzRzJQT2tNUg==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(247, 'ODMzZnd2S2NhZU1SeVYyNEdVQ0pzS2xPbmhJTlY4aFc4R3l2UUZwREQ5YTVPRXpPa1FTVXNpbElGWEpGWDRMaQ==', 37, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(248, 'Q2NUOWs4M3RvYkVZdWJ4SUZOSkJSQXhEeTNHWlhRcTdhTDBTMTdXcThvRG1NdXU0a1ZTUk9SVTNnVldEN3YvRg==', 38, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(249, 'NVpLS1RWdDRsTVRsaFJmbFpmamFKYy8xNHhuZ1pCS3ZXRE81S1p2TmtRaGwyNjVBclNGKzBlMW9vanBPTUZUMg==', 38, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(250, 'RnI4NEFBMUcvU01CVjVFSXBmYkdQM056bkJadGhwZXpOQjhBRUh4TzVzMTNCd2NBdTNMRWNyWXZhTG52VjBEaw==', 38, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(251, 'bmFMYjYwZGtMRllxLzJoVE40TmQvSTlGdFNRcm0zK0J3NmxzK1NrK20rSC9DTFFWUzRXTnB2R0dBU3ZoSUVFSQ==', 38, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(252, 'bmlRWGQzS3QrQmM5QnFlMmdENkZrNE05WFJVY2FtYjErTXcvRUdqM0RxRlVWcXFuN3NRSHpxNGtOSDMzR0pXNg==', 38, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(253, 'MHNBKzBGNVdNYUdTUGVDV09EbFRFTVlWeXF4eXo2R212dVNtMTJmaXU3c0hhMGxMeFRGdjRqcG5ZYVJMOWkxTg==', 38, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(254, 'elN6cUM3WStQVU1pRmRHZlBXamJFQ2FqNVh5Z2grcW9QK1Rkek9jVWhQZ05KTy9VVzhlcXdQN05HaDBWQjhDcw==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(255, 'ditDbi9SVG8rOS9DSCtJN09ZVjhDc0NMZ2VvU0lsWEl4QWFrdng1SitFYStBQkZINHAweVRtb0ZVdFJueU12eA==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(256, 'WkF6YjlxNHVNaTBJYUV6UTFmRzJGRmQwWW80UDlLR2pGU002OEVWNHZxVWEzcExZeGZQMWhQa1NKck9iNjRQRg==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(257, 'cC8zVGJKVVZudnNYNE5TRzRyb3FCUmdPOTVBWkw3d2FzS0VrUDFKbnVjR1J2cGgzaXp1VXJNZFlsYkdxRzEvOA==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(258, 'eDN5QitHdmx4Snc4WXVUV2l3ZlRUVFQ0MkNyUUpwRkhtQkYzZlE0eVRTOVlOMHRsT1JPSnRtdDlKNUQ1bWN5Yg==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(259, 'dzROd3NvNlJGZkd5TytTSTBVNE1pZmhMQ0kzYmNtcmVHREoxbjlualV1WWZkcDJ6TlNGQldPUDlncm9XMTJuMw==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(260, 'VWlESnduaThvTnVmc0dOUmlwSGN6R3VmQmE1blJrL1dpRVZhR0lFR21pSmcxT3dGd281RDgxQmNpZUh5bHRmMg==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(261, 'cThNc20yc29iTUQxOUNQemhUNlk4UW9ibEh4WHhPV0g1aGhSMEF5VTlyWjJ4bDNYclYvbHA3WENzZlJLWFoxUw==', 39, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(262, 'RStGeWF6RDdSZEo3dG84Z2RUR0M5NUVlS2JlL1MySmJ6eDd6MTF1SlBDcz0=', 40, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(263, 'TTA3ZHNqS3k2SkFsTUduNnVHbnVVaHU4enRJS3dpZHFyVlhPMUV4KzJPWT0=', 40, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(264, 'RHJYOFB0SHR0UTJGNGNQRzY3MzdXZnVTRVg0QTI5ZE1CNzQvTjk5bjZBbz0=', 40, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(265, 'bXRYWmJGWG9ucHNlWUlpVTAwaHRoZlNqYVpqaFgxWnMrNjBzUFFsaWZrRT0=', 40, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(266, 'TU5YcEFDQ25zdFdWbVE5cEduK0ZrejZrYkN0TUtIN0pLN1hEWUN5ZEJ5ND0=', 40, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(267, 'Um81V0t3elNZcnIzSXhWVWJEdXBjY1FrbG03SHl1MHdPYTc4YVczL3Vmdz0=', 40, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(268, 'V2c4TEs2QmRiNjBVbCtzQ29uTWZsandSWTZpRE45R1VWNWNVWmgwK3lVd1lzLzBnUVVTc2xPdG9BdjBFNTRaNg==', 41, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(269, 'dEdXSTRaalRHOWJlTXMxTkt6cWtlcStnVFZYSXRjQzVRYnJVZ3hkcGwrQUpyRXNKQmd6V3B5dVdiM1JYUWU2SA==', 41, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(270, 'VmVhOS9WOGFNTnltcHlRSjJMWGp1NHRXMjY2dGZSamEzUzBZT0ZNSUFIR3k5WmhzMzB1TG94MTk1WUVic0p5eg==', 41, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(271, 'NW1yZ2F1bTB2aXdVSk5WT0Rnd3NieHYvSHh4Y2g5WVAwMWZmdXoyYks4MEorU1BROGFRdGZTZktpdmFLaElibg==', 41, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(272, 'aElnZTlRMk1MVDFPcnkxNHluZFRmTkl2aXE4QVJyeWM2MEJHVXVWQTNsc1MwdkNiL1EzVEJvNzVVN0JNOVVtcw==', 41, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(273, 'eVRmd1NZd0E2TkQ5a0g0ckJoYnBlc2VwUVh3R3RPNUVhbWRmNkNEQ0N1Ti9jTmtSMGFkeEQ1K3ZTVmJ3bWNBZg==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(274, 'bGJrRnVETFA0dXlRRnNEUU85MXhCaFR6WGFYWURKQUZzMlZuRk1sK2tYemFQbFNVVkpjRis3YTJmdFM5OVl4QQ==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(275, 'OWNaYUhYQWUwdDQwTEJReHNubHNTVGtWUm9jWWFON2hsaU9TbFlSK1g2ZTNFNDdSUGs2SGJpN0NqRlVsbkVpMQ==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(276, 'QkFMVitkSjdLZ2ZKanc2cmY2UlZxOFd4a0pIS1B0RGRQK0JNRCtldXdKWjRXaERRZUNQNnlWOHdUaHVXUkY5SQ==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(277, 'dGRrNEZFK2RuUUUwTHJJWHZoNjJtZURjWmR5RHRvdWlwZTd2QU5UNmNzNEV3MUNYdUUxQ0psTTJWUXd1UVlMTg==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(278, 'aFh3c3E5c3hrREluSVZMYzYweDljVnA2OW42UzNzeGhIdVNNZC84TWJZL2lsNjRmdmloeG02eTZZMUlkS2MxZQ==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(279, 'Ymdmcmc5NjA1OFoyMmlZRmNpWitCUTZSSHRTRmFtWjVWczEvZnc0UFduQ2RuY0xwWWxHK251VVY2enVoNXR5YQ==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(280, 'anNnT0pkSDVubzFoYUJpY2F1cVd5K3BkYmdCL29LRUxiZnhIcUhTcnFsV0ZEN3FQRmtrRnFkaERjcndydkVZWg==', 42, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(281, 'eDRwdWsvY3EvQnM4QkxRTUlvMFpyZDNLZzg3dmcwRmoxOHIrN2YzVmVCYz0=', 43, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(282, 'ZGhuY2Qwb1FMK3QycFZRalFIKzVuZWRhY1JKYVJQMjM4ajgrMTNlSnJLbz0=', 43, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(283, 'SXkwVWhDRVlwaGQvL1JBcGUwa21EUWZlbnh5WlVBbXhmZStsUTk0SjcyVT0=', 43, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(284, 'U3Y1cDljeXF0N3F3T1h0aURIdFE2NzVFNTY5YndqUVhSTHkzVDJSNWxqcz0=', 43, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(285, 'blduelVrS3lVcmdxbDhMRkdmRXo5enM5QzZ0dFRPWkEvNUlUWXQ4eDYzND0=', 43, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(286, 'azJTdzNpVWk1aGVpeUtMajlGeXJ4b25ZZ29ERWVadHYwTm9hYTQ4dE96RT0=', 43, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(287, 'Zm1sTEtJREg4MGJ3RndITStNbTVja1hkSjJYN2VrTGw1aHR5QnZxak9TTT0=', 44, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(288, 'N1p6RWVlU0tXWHgyMFNlYzU1Z2o0T1JJQnZZL21CQkZPbTlnWUdpUW1oRT0=', 44, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(289, 'V2pFLzJjc1FMNE1vUGVlQVNPYmdwYlg2b2Q1SDhMZVJWcWt3TzFwY0d2UT0=', 44, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(290, 'ZGpCSFF3RGh1ZWlzZ2YvQmJUQXJ0QUxhbnZCVm9JYkRIbFNiTW11ZEswdz0=', 44, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(291, 'OHlPM1hieWhYaTc4TGwwU1AzV2h1K0NTd2N3VVk4WG9kQ2NYUXd0aGlVZz0=', 44, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(292, 'NkRLNzloRkhYS0J0cHpYaXIrUE44azJsZFVuQmo2UUk0TkZCeEtCSUNxZz0=', 44, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(293, 'bWtQRGNoSGNLcUFsc1k5MnhvOUFESGdud1hLdVR6bGVYVEhNd2MzN2s3azkzRnNxOUhMV2lMcXFwd2w0S2lTMQ==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(294, 'N08yUWdBdGEvOTh0MVRxbHJpckQ1STdWNmNRREc3SDNsK0ZUL25lcFk2blh6eENDd1c1YTZ3OCthUktmRjVPQw==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(295, 'UkdqOTJCakdWdEVrQlhSMzJpRk8wdU91YmJuTm1vV0k3NFdXTWU2TVY4Y0c1M09Ic01Dd2lBYkhGMzlKb1pOOA==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(296, 'aytiaUQ0UHRKUkhFNjJSQTdRb3VHbVFhcHNzYkU2ZnBtcUk3amtNbW1zcU45RDVaRSs5cHROWGJlWmxSS2Qzbw==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(297, 'cUNIcERXeloxNFRYOXdrQ0d6S09jTUZ0UlFaMlhKSHY2K3FrVklab0ZjaUpOM01vQmU1Q2FUYncrTWplUmpzZA==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(298, 'Sm93NnVVc3hPZEVQSVVxV01taW5naktWclpuMC93aEdhNlQ0NmwwSnRaa1dwalpCUFk4QnNQVzl6ZzBFZHNEag==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(299, 'aUNPTzZDWFpYSnlxMVVHUXA2aVRERStpWjFSQmJyZUNWV0o4WVM5MjhlYzR5MmJYUUoyTzcrUEZwclFEaHMzNA==', 45, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(300, 'QzlpYU5VTU9NbVpXUE5xa00wU1lveHZYbnVnYXY0dzVlMHd1UkdyNS9Gcz0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(301, 'UlFnVy81ZTlneHJ2QmNjY3NTbEp3azRicUlNWDZneDNUN3dWU0kxeGJWZz0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(302, 'N0JobDhlOXZZa1haZUREd0hrNW1SN3BrVFB6VU5pcFNMNDhINWNlTm1Uaz0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(303, 'VUxyaGtweUtUYVJKaXFxNGVtdHNORVJORTFSbk5aT3E3ZnhCTFpHaXU1MD0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(304, 'bjA5bkFHNVVPK25GeTR1SzRodUlKNUFJckgwdy8xM2tiUjE0NjQ5czdkND0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(305, 'WGRGNExzR0t3K3JRL0Z2TWF3c3lHZGMrRml2Nm53NkRhSExVRUxUUFFocz0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(306, 'blNSZW5VWEMrbk5Fd3RWaGZOd3FvMDRaQjdaZXdxRzNzdnVoaXBzaE5hdz0=', 46, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(307, 'M2xPUzdmUG83N0h0cTlVaXdUdWZOSUlJVHhNTHh3NzNUYmlmSVRKTGJtOD0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(308, 'enNjSktneWxka3dUU1FIdG1qSzRKRHUweGFYNGpZRDV4bitkM3hKQzhlbz0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(309, 'YTdQMk9zSjlYaXZtTkUyaWx2dXMweXhsMnludlpKRXZveiszM1l6S3c2bz0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(310, 'aks5S1Fxdy85YktVNDBrMVZvUWx3WGV2MS8rMHhkVE1wZWlOdUZ3WWlyYz0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(311, 'SGNQQWxIdGtVSUJKWjhCR3E0QStpd0dFYTVuTFZkVkh1WXNSZ3hiL0QyQT0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(312, 'anZ5ZjFsd3NBZ2x3TEg5b2lCdldXZXVnUTVNY1BjTFZCUnFlekkxV3BvST0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(313, 'WG0xQ0FtTkZQWnFuTkI2RWdUR2IvV3BkcVQxMlVzMlNlNko5QnVGemF1ND0=', 47, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(314, 'R0U5RmdFYmx5NklsUnovaUZBajFaWDhDOGhiV1QvdlFvMnpEdHMyUlZlZz0=', 48, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(315, 'SDk2Q2J6eUlOdXE0UmJLZXRkWTZ6M1RlTk1uMU1ZNUVad2VHbDR3V0IvRT0=', 48, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(316, 'MUtQWjFvdEhvQjVSSkpSTFVmU0M3ZHZEWHIzSzcxUmdUNWc4MFZNZytPUT0=', 48, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(317, 'V3J5M043S09idElvL2JDQWJXS1hsd0ppRUdFVXZ2OXJ5eW9veEFCdXRHOD0=', 48, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(318, 'QkxPcVV0SSsyRUZmUlVEamFZQkozdEd0QThINjRTdDNBN2xONjBkYU1uUT0=', 48, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(319, 'dU5vOWlVcTBleERWamh3b2FLNmhlc25HbUtFZXVHaklFWjRuVGVKb3V3TnlySTFhemRBalNLZEFJQjIrWCsvNQ==', 49, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(320, 'YlVwb1dZdHN0KzhyWW9QZHZoSjNHcEsxMzgvbWZnRURkL0JaVnVhRmFOZ2NqNlBpR1VFWGp0UlROZWJvQzZsYw==', 49, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(321, 'YU5xRE1HT244Um9HS0F0OXJjMzBuL2IvQmhsbDBsKzljODF4Vy91UjF0Y0dRSm1NUitzRXJtRmNlaGUzQWhyYg==', 49, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(322, 'ZURheG1xVmsweGk2aTVFQVNNK3NlcUgvOUNkajZ6eURwSnhsdXlyVkZZR3ZZYkNLcmNyVTdtSG42Y3A3VFZ3cQ==', 49, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(323, 'eWZyZFVpSDFDcEtqa1hSb28xNmFSTkVuYXcydncxNFFjTG1DOFp5dlNRc2haSlVqMUZaa1dCRWp2ZGpSWkFIWQ==', 49, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(324, 'VFErT1R5Z1g2RFJnWVFJU05NRG5uVURUUE9qWUt6SlpUUS85ZjBydzNVdFh3TkNxYzdyWE1uK3FGbFdnWndadA==', 49, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(325, 'ZVJ3QkM2MHBBZjNuYkNHaW04c0kzMjNmTURlU0RHWGpkYlpSalErcDFWTU1QZ3hRVlRvMzJ6TGNmcmJ5UXNQTA==', 50, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(326, 'WWZJVm0ybW51NE5McHEvVjRmR0ZZOTNtbnZZWUtWaURudUZYRzRzZGRTNjQxdzNnVjdKeThub0w5azBibFdESg==', 50, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(327, 'SkgrZFRqSnlHZ1pBWG9tM1BBOFBCRjc4aVVKWk9wQllzVHh3T0cxaVBIcWFhVUlmSnJhTVYxVGJLQ1NmWEtWWg==', 50, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(328, 'UnlMZDIzR1hlMTVMandrYy91YTY4QTZGUHNsdmVzTFJYUWFuNTN5ZmQ3TURFZDlVSFVXTFVsVXlMQjkrUkZ6dw==', 50, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(329, 'Sm1nQ2lyeEc4bm16NVhDZWdzN3FZYWZLaTB5SXM2R3pQM2NnRWI3NGxIQW8yZXdPM2IrYWlCQ0VZdkgySjNlZA==', 50, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(330, 'MmFQNUpWbTN4N0FZSmtwNGMrb28zU05GcFBod1ZBQ0tQMTloa0sxenJDdWpVRDREZjYreURFSkpMMUVHWEpXbw==', 51, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(331, 'dHpyTVNHbWEwSlE1NjRJNFN0cVYyc1IwMjRRTkNKdEJUVkZEZkh2U0ZSQktqd3VLUWh0ZkZnWFJtcUFGOUxlaw==', 51, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(332, 'ZEd4Nlc5dzlUU0FmZE1tVUlWV2REQWQ4WXdZc2xQa3UxZTh6MEQ5RURhczk3QSt2eURqaHZTbmUxKzdaU3NFOA==', 51, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(333, 'RHVOcDN6djJvMlY4Q0Y4c2ZZaEJLSk9uSXNNamU1T2R6V0Z6V2lVeVJjTjlyeG5CYmsxcnRqSWRBU3ZQeG45VQ==', 51, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(334, 'SGcvcFpSajN6N0F4SU04WWY2YkV0Q3JPbDZWNDhJdksrWDRMNmRZMkZybEVMa2F6aEY1UGVoUDZDRUwyY01KMQ==', 51, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(335, 'REluaHJ2bEZKZ2FOVWdsNFNUc2RVWDVyNUc2RlovcFY4ZGZxMmFLWHEwcHBHRmxwdXN0TmtoWXJwV3NnSzNoTg==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(336, 'bElHK2x0WDdPQkdEVFZvZm1iZHJsS2g4VHVoTDhPQ1dxMlZ1NWJpOW5BTW9ZWVN3U0tUbk1vckV0bWdzL2JlVg==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(337, 'QlVIY2tTSkk3cStFYlB6eVNURkVIcTFqcWZmUGxkQjN0YWtVSVZsS3BsUlRyT3ZPVEh1ZGp1RXlaYy9Kb0pRZg==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(338, 'VCtMUkpSK21qSVZFWG14S0ZZVXFROEc0dkdKbU1PSzBoOGFvSHMvUEd3QmdDNFFWNlFyeGRBTCtQSXdhVnVLdA==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(339, 'TnJCVVFOY2xaOHduRHBWdlBSczN5MURqUHRpR2VHT3B0aFpETEtiQzE3WThpZG9ia2Z6SlFWb1NPR3ZBRkkwZQ==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(340, 'NjI5SDRzRlpsUjAvbGVpcTBNSkk5bEgwZUwrMHJvV3dQZFM3cmgydTVwVVo1ckZLSU0rUis4ZmZldzBvVlNOWg==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41');
INSERT INTO `keys` (`id`, `cd_key`, `game_id`, `is_redeemed`, `is_expired`, `expire_date`, `created_at`, `updated_at`) VALUES
(341, 'ZXpacUM5UEo4TUd1ckhJaW9oZFpXNFlzWm82WjlmTW9PQmsyTE13dFY2NVJNYWJFK3pwM1lHeW5vOGpFWFF0aw==', 52, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(342, 'R2plZ1plZTRKRUhXaTdaaTZhVlNnd0RVeDU1VGs1OEgwdjRqbFhTcm5Ccz0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(343, 'cHA1bW9MMWFMbHBLSkRpZkVpRDk3c29DQ0szeXJtZ1Z5VSszaFJiRWczST0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(344, 'dEtZZjlqeWtRY1ZNUk1vRjcxNXhBaTZiK0w3cy94bjlLelQ2aklzVENYTT0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(345, 'VWJhYzIxVVBRNTZWM0lEUlVYL29WN0ZBU0lwYkRyZ3d0MnVKVmRyWXBXdz0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(346, 'RVdCa1lZT1U1MXZHOHFCaFlxa1BLWG0wRmJJQk03NXJUTmtseE9CU1BBWT0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(347, 'N2hDaWcxZythZzZPemQ3cHNjdm1GU3VUZGp2RTk4RXduWGQxZlVKdm1vQT0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(348, 'SXZFRTJYM1BRdUdCbjZkZkxOakR1TytRd1NkUWNDSEZnZHY0b2pZY0YrRT0=', 53, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(349, 'dFR3STJsclYyODNJcTdlVFE0YWJTT3FUUlowSDZMUThGc0s0dkJ5d1FlTT0=', 54, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(350, 'bTg3VEQ0ZXVXaS9CbDBRdjhlbC9wblMyS3EzTmhwaWU1aGRSMEFKSk1xST0=', 54, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(351, 'd1ROTytiSktueFUwU0RZdmkwQ25rK1U4ZTR1a2tZWUxPb1pwNExpdUxCdz0=', 54, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(352, 'ZVRweHlDVThhWTBoY01TOGhyRHI4aFB3VGs0RXViQWdhMmtSNDBFOCswWT0=', 54, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(353, 'TUpOTlZSdlYwT1hpeEpScm1zN3gyZDYrdGpmRmwxa2ozU3Q3TWo4UzFqQT0=', 54, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(354, 'bG1vVjY0YXBzb3RZV3VnL1VDdjc5VFpKSkFPZkF5WC9SczdZNVN3RHN1Wmwwcklmdm5pUCtyY2FHUlNMaHdDZg==', 55, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(355, 'YTlyWnZ6bTFRZEpPN2NBWmZvT1FkbGRwaGtSL0ZuMnNTRjVxKzFiMjNVck54Nk81MlRyVjZWVlZzcHFlUkJEbA==', 55, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(356, 'SFQ0UGxVSnQ0RHVjaUVGek9RMVJ2TnIwQkZ3WE9KNVRDNEtaYXNBaytMV1hRNHVOMnNRNlRMUlZSYTg3Qi95OA==', 55, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(357, 'dmt0YStUUjRpekI4bDhzZVVmUGFmSTlHdk03MHkrZ2k1ZldwMlFFWnUzSzFZSVpSMnp4UUhYeG92QUZPNUU2cQ==', 55, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(358, 'NDhvL2N1TGNhalZxdFdzemEvN2NMUWpDZEdid3pqTjZJZWZlMm50YVM1ZERYSStFUlFCRU9MTTNFMWd5UWhlNw==', 55, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(359, 'TzVlM2hPYWlLL3VXelFTczNRSDBUUHAyOUtBK095elhQMFdNZ29FUGladjEwWEZnUXRCbk5jUG1XNk1ZV0JiWQ==', 55, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(360, 'eTlFUjNhSmZuOTB0QzkvbDhqc1dQR3ZjSFlnNHVHSXI3MFVCajJuZDdsZVNhSnBLSmFSaUNqZFV0THdVd2pmTg==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(361, 'a2FheFBxczlMd0pNb0w2ZUdtcXB5ZEVuenVhRHZPUVF2U256Sy9nenpQQ0l1VDM4YnhLSnQxd2drS3VuT0h2VQ==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(362, 'YlhzOHFQYjMrdFIrQ2tCM2pJUE4zSUxVamM2aHVqQ2VoSmk2SGlHVlhyZWJxL3lyNGlNUS9IeFBuOXNTNEp5VQ==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(363, 'S2diTzhMVFVsYXhMU2hJVjBKdGRLSkR2WWh2RnQ4aUtkOUwzVUMwelgrNU9WL1MyOTNzZEZ4SEhDOE1tUW5uMA==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(364, 'alpvWWd3RHc5YUgwcEtiNEVHNUUxdmJ3VVJudkFnM3VwZG8xT2NGTnl2TFhtTTBRQ1lsOEljaTVpQkJ1cmRuKw==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(365, 'SW9KdVJtNjVYei8yN1B5Q1MvLzlkVk9sSVVWOElZS1ZvNWxPS0dFeG5heU1YT1NMdk5vZmp6QjZFOTJiaFoxVw==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(366, 'bjhWNjRDekx5RDJEeXBONzRuS0VrMXFUb2pEdWlmMVBvUHQvUVdvTk5ZRmFuaGhyU1VyVGRhUXZrVm5UY2Z5bg==', 56, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(367, 'YWJHQ1hPMk9CVUovYk90SERYbnNyQThOeTh3Z3N6NERHQXUxVGFINXpxdz0=', 57, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(368, 'MXBSYVBuTWdkSnl0T2h1MzRZeTlzVmFYSFhabmlaSmkwR2JEUTJLaS82OD0=', 57, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(369, 'QWpRbi9uL3l0VThHdjJ5SEUxeUhka1NsQ3duRFY3UkNjaElQUm43aG1Ccz0=', 57, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(370, 'L1lBVmJYU0w1Q2R1dDVQZUpHcnNMdCs3S3pWcjlYZ3hwUnZHWm1OZGUwUT0=', 57, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(371, 'U0IzaTNpNHB4T05mVTBBK2xQYXZKc1lKL09kbW8vd1hCbHdzTDlWZEpEMD0=', 57, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(372, 'VHVkK2xGc2R6R0tuZ0lSOFRGa0p2Z3hubHlDbmczeXBWeWlvVk00bW1yRT0=', 57, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(373, 'dE5mTmIrVTRaK3BEdkl5TlFRbjUyZGUweXJXQzR4ZHhUeXE1T1J5ZmlTWlZEdUtFUkZMRThraUpMMy9Ockgwcg==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(374, 'Q21XWG56MWJON2E5TDhGV0lIWFc1UGdKa2lUV2ZmWVhwTjdYeGNSR2lCdkhOd2NqRzduYXBpQnZzbHMwUERJZw==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(375, 'SjNYd3lQV1V4L254ZEdxanRhM2FOTk9zUDlxYmxxQjBqcnh1dThiMUhTaUZTUHhvbGZUSnNwVmh2L2trdjltZg==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(376, 'QUxFSUNVME1VYWtXQlAwL2daRTRtenptOENCRGY2bys1b1RKSjVnRmRkNVdLd2ZuaU9mVEtXaVQ0N3FvTDJSbg==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(377, 'NVdmV1k4d29UNTRyRzZmNUZCWHQ4RTJtWmE5cGk4c05rdkZFM3VPbVJVZHJ6eDFtblRENWFQV1Zadkg1ditRKw==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(378, 'UWhWa1VUY0NtZnFUcFVyeWl3NVhrV05LS3M4L3BMK2hMck9zTytBc21SdDR1cTd0NGFIZC9nRU10Z3V6YjJmWg==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(379, 'd2QwQVkxMnMwQkJUV2VkWm8vaUNLV3FsKzJRclVBZkFtMDZNOTZxaU9GS0hJRzVqMElLMEZiL1RzWXpNLy9JYw==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(380, 'WExhbWhzOXJsWkZYUExsclNYRlJDajBpNkc2SFJOMFNzbENqL25TYlYyZ0xZTjhpV3doQkh4SlA2L0xjWHlsVQ==', 58, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(381, 'YlNKN2xsSm92eitjZG04RWRYMER1dXNFUk1XODhLZkdDUGhxQzZ3bFJoemNFVlpRQW9RdWVWYXRlMWZnMWhveg==', 59, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(382, 'OGtML3Y0eEdaOURjNW5yQzduRC9ESXdDVzhBelhDMUFXYUU5YjlYcG5vV3pzYWJIL0FIOG5sMCt5QXVxR3lqUg==', 59, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(383, 'WTlXbTVtKzNvY25IL2NENmZnVVU5U2ZGVGo2NE5WLzBwZ1dOKzBiQjRtSm5MaStpUXRwOXJFZDVSbEV0WGZ6aw==', 59, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(384, 'MGh5Z1dlWm9oTUdJZUduMThFRnJ4aVRXb2t3L2dzU25CTGJSTTZYd2ZsVTVtaVUwUkhnaFBmZitaTGlTOGs4MA==', 59, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(385, 'eHQwM3U2ZVR3Nlk1eHZ5WHBPTmFMRngyUmFsM2RSUjExRDVaWHVyMkR3TmI2bXNxOVZoU0VnQ2dnTDJiOGhTMQ==', 59, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(386, 'NlhKVkt3cWxzM0tCM3B0S3pXZTRySDVkRGNUYzFCRFlSY1lhS2FsWGVTeldTci9QVHlpMGVFRllkSWFndElCbw==', 59, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(387, 'TnVBM2s4Uk5MdFg4Z2VCRGhkOUx2cUMrZDZvODBjN0pDZXM3WU5Mc0ZnVE8xYmRUVDZtdWxWdEZpTm1qdWFEcA==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(388, 'VnlZamlrdTZMOTlUc0lvZUx5Vk1IOGlZWXEwbitDVVpNR1ppY3prb2NKS0ZnQVFKdzBEU293NDdSTmVsR0I5aA==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(389, 'SVh3SHcvOVpZK1NtS2VNd1ZsUkp5aVNBZkpLNC8zY21zY09veHNQTk9JRWRiTHg5WHdYTzdCZENPb1JBOUZsbQ==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(390, 'TEpQVFQ2ZnI3QkQ3UnlDRVZ3aHk3bmFPSGwzZjRQNU5TY21KZGQzaHYxV2FKc3ZFbHJ0T0xwOHpUWWFpVVorRw==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(391, 'alllYUZBT2s1UXBIdm5Lejc1MVZmUUpGNytDaldaNllSTlhHck5Vayt6RWpMZkc3bmp2d0lSSGwzVTdNeGJTbw==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(392, 'dElxL0xyckNJQlBpK2lzeC9hajduQ2lWOXZGRENkcG0wTEd4TDBtd21aSXFnMGM1TWIrMWhrVzFCM3p6L0Q4OQ==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(393, 'MytZMklQNllYNXJ6STFlNnBUclY4UEhBOHlpdk1Ed1hZdGc1eXZiZ1Z4S0pOQVRQc2JjbncwL3ZWM1I0TFUrdw==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(394, 'cTY5bHNyM1lNTmEvOXhzakRtbFhQRkE3cmNzTkQ3TkFnZG9QNmJBZ3gwZlRTQWdwMExpTEpRNUtlb0M1U0ZFaA==', 60, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(395, 'eXpsai9xY3p3cHB2cFcydmIrc2pVZ2FudkRSbms3K2dtTEkxQmdYV2lGSlhXSnlyeFRFRlN0M2RhaC9ocS9WcA==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(396, 'MUlpbHhKT2FqcjQxSDgvaWVWcVBlaVEzN0tpNDR0akJwK0NwcUoyRUNlQWxRQUZ0b2pndEhRR0NKSVVkaS83bQ==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(397, 'L3dLaklkaEhtZ0E1YyttbGdQenpCOVF5UUlybnBIdWx3RWNVUDR2QW4rTlJDL3VYcGJyTGJMcDdIOVJmY3dUSg==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(398, 'dEc4Tmk1Wldwb1V2cmwzMFc1UStLcmZOZjNUck1zVDR4WFBVL21QV2tFUHB5TVhVVTFJeTZxdXpDa0IzL2k3SQ==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(399, 'ZHBpVHJkbXJBWVFLbnZBeFluRjRXRW53akJUc3JYTngzTVNHZlljM2NhYnd1NG9UYmtGMzE2a1hHM0NtNzBHbQ==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(400, 'bEhXSFh6Uld6N0g3UDhmZ3FVY0Rua3Y0S01JbHIwVWxFenJlcU9ROHBsVjQ3d3pmcEJYUTRkK0JKdnRVMUhUag==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(401, 'dVo3VVRGT3k0bmNRb0c1Y1ZkT3NOblB6YlhrSVRGRGdJN3VvbW40ODFWNW5YMDd6NHEzcDlrVXdFbGI5clp5Vw==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(402, 'Q3ZMcFZ2NHFnWkFaVHdDSzdmZXhnN2txczhJakR3YXNTek42YytTeXRIaDhqblVpVGxraWV4U3JUa1dSR29tNQ==', 61, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(403, 'WEJ6dXRMd21zMFZFcld3Wkc1UU8wejRQOHJ5S0U1ckVRZHRSSUpWREJ3Zz0=', 62, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(404, 'Vkh4TEFacFJ1SjlhTmp3SlNpdndpb1JnUzNwRDk0ZjhtR1M3czlEdzVLTT0=', 62, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(405, 'U2tLelA1Z0dIam83eWdqNzd0QXYyNHJ3cEI3blk0dVNKeWh0V3ljaW9Mbz0=', 62, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(406, 'Sy84eXVvSEdGUytydFUvYmFnOHZ4SlI1Y2E0bDlBaytxWXBzWDg0UzRkOD0=', 62, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(407, 'eTVWNTRSeWtHaEVOaEhnd3dYU2JWY0hIOHpSTzl1WGhteEVSTU1TcnExND0=', 62, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(408, 'N1E0elhZRThDaE9kcFIzajdnalhEdFdHMzFpQWNBUW9sZVl3VU0wRnNJVT0=', 62, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(409, 'aWpxbnJITUVFUDNEUDA1ZU11alp6T0kzTHVUanByZUFmNEJYTVg2dW1NWT0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(410, 'TFg3cmJWOWxQV0dnU3hESXZaWjFsT0l0N3NGVVlPdWZPMmhlWVYwUGJORT0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(411, 'UUx0VU94bk9SOG5FSy9lOVJjVXhOdFhsYWZTWVcrQ05hNTZrcEFMbFkrWT0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(412, 'cnBmRWN3bllFZEJQL0I1TVpDSE5QMEl0UzVjQ1piQVIxek51azREbVdHbz0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(413, 'WEI1dzBsSTMxT2JrQWlsWFpiNklVRGUxQmM1dFNpcGJOakU4WTRTMzNFcz0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(414, 'aWUyUUpvUzN1RGVlcFdLN3hhTENHdHByZkFpaER4azZ2QjlLMkd5Y2NDTT0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(415, 'WU00RUs3bE9vcklIVTREcGdiSUtFK3R3ZXBwTlJGWGQxbzZkN09IbTJlWT0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(416, 'VmM2VEdLbStPWEQreWVXU1ZBcmtIeXZOODVOZGdTNjRidEo1ZStFK0Joaz0=', 63, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(417, 'YllPYkQ5S0phOWdQMEVvMU1WaWk0TzFQdHlnT29EZ291RWx1aDdUMmVhU1Q4UDdSdTZiQlRNd1V4eDZ6Y2tIaw==', 64, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(418, 'YzBLN3RPNm1FQTNUd3hicTVrdUVCeFNjMldBdjR1ZWQwT1BtNy9PTll6MFlSME9laXo1ZUVtSi9PREJTR1BSOA==', 64, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(419, 'T2VKMGVRV09JTFA3OGRST2hQN1NyR0VWeTFhdzhaZUlMYm1mUExUaGZuUElLV2svanBlOFNxaVVSeHp1SFhxag==', 64, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(420, 'QUtzNkd2TGhXZWp0V0w3b2I0K3hMQlptRmNjcTJRNXE3TFovZHovUDZweXhPK0ZYYStmYUdORkJzTWdJZmI3NA==', 64, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(421, 'QjFuQ0syQVlOSXVCa2hrdXRuU3h2Q2x3cmVSOTFDOE9jdU1uaUQ1cHB3UGdNMktOSk03M2g4c2tlb2lBTk1lMQ==', 64, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(422, 'LzRVZTVKekRxbkNLYzlwMnJVRmdBS0lFaU1BSzVqdDFXc1lyNHBPcTVOMldzdXUwMm1pT3dnMW41R0pvQWc0Vw==', 64, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(423, 'VnJvYnBaNEx6TVFseVMralR0ZmNwelkxOXJ2SVU4NjNrQ3c0T3hMaWJSZ1Y0anJ4OG9nL2l3M0hWcy84RGdaMw==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(424, 'cVNiTWNaQ2YvM2g0R2ZXTXdkMFhZcjRudDBmTEZqek5lRnk0cUlQck9GajBueGlSRTU2cWZ2dXhMVEQ3N0hMRQ==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(425, 'eTdVb3VnYjJNb2R2bHk5VjRrR3JUbnpwL01ETDdJK3pmTFcrdy9kYTB2WVhhSFh3d29CbzFCSHMzV3A3R3V5VA==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(426, 'T1JXaGNkY05ZQmdlYWROdmdDMUhHczlKUWw4aGlYQnlpbXo2UEhtQ3BJeVhwZXVrd0F4TEgzbkxhVmR3Mnd5TA==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(427, 'UmtmWkh6bFZ3RENSODh2OG8wNTlCQ3ZRdm1vbWhhRTgwM1FkZEtVTHBCcFBUL2pwR0ticDZ1RWtRRFVDMmw0UA==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(428, 'TkJLZDVVK29QbWZYb3VYNlhSdVp6SnZxZWM0eGFJam1JTWJFdFFnUVVDQ0Y0S0ZtUGIyelRET2NZZ3dMSThtbA==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(429, 'S0VOTitNOVh0UkZBRld0d1phVmg0RFhWS3h2dnBKWGRJdGd6Q0pnQTFUcm92YmI1VTFaRXoxL3RCekQwRlVVbg==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(430, 'MlJtd2J3ZjF2dlFzallyM3dRVGhRZFZKa1ovZTdlaytHNVB3aDd5Z2sxZjg5L1IxWTViaGZEVnZUMSt4UFc4Zw==', 65, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(431, 'VWhRc0puSHBvbUhPNGljVys2VXZac3BEcTZnK3dKdStXT01Cakw0dlVKTT0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(432, 'NWorSHMxdld2WkMycUtOVXJRRlp4VFBQZ1A0aFg2ejhlNDBCUXNYSVVSMD0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(433, 'Nm5WTnl3dzU2b2ovaDc1Rm1lVTBvRmttZjY0di81WjhPUTZZb2tVMHZSUT0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(434, 'aUJYbThKSzBRODVOZmptRm1rWDVlWDNPaWRvWmFLdzFZNEx5U3ErOWE4VT0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(435, 'eFRxWFlFc0hYVUQ2QklEc2ZUbWFnK1hobHEvTWFoaXRLd0ttRHlDMmVkYz0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(436, 'ZktJTEF4dFRUZ2x3bDRNaHAvL05ocVk2a2dVNWxFai9xMmJXQlc5WXpaRT0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(437, 'QUxhZlN4cWhhU1BjeWpDQ3lEbXhESmNiUGhQOG8yZ3AyNURWY1FCaXEzQT0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(438, 'M2FDYlN3NWZYd2MrenhPNTd4U3BweXFRQXBCeXA1aGFPUGxGdnhMakJnND0=', 66, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(439, 'SDY3aUVnbHhGdS8vR2pCeDIwZlQrZENoT01pblFveUFRMk11d3NjamI0dE9jeGRkK0lTN2JWR2VTV3lvVDF1NQ==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(440, 'VkU2OGhVYkhxQkRZS2k3SHBrN0xVaFlBekJzTnJGRGNGYTFQSHhlckloVUxtclU4RFBIUDdSenZGQWFqSVZlWg==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(441, 'cStNYTMvdlhrcXhZdjdLMVN0WmkvS0dsei9Ic2cvMFNlSlNGYTVEWEJUQUV2SWdFbjF4R3NKKzZ1dGdueGJWNA==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(442, 'Zk9ZME1uL2hGdktqY05aQnd0Rkt1aHVYNEJ6dFlsVXM1SGhpWHdoQmp3bURyRU1reGgvL0FRQXpPQWZweUdwcQ==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(443, 'NHI5dEJBK3F3SUVRd2ZITFJ2NThNZnJtRktyQk5Ba3JtTjJnUVRMZUV5Ym9UYlJXb3E3NzQ4UzRzVkdoSmZ3QQ==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(444, 'NlRMTGpYbG10c25Gdjk1TWUrbUZDbDRsS1p1bkI4bG1OTGNhMmRDMFlNVitHLy9jME5ISW53UUc2ZXZWYzczeg==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(445, 'R2ZBM2ZxeWxaNUE3cUNSVkZUdUQwOC9WTHp6dWw1L0Npbk9ydGdidm9ndU9Va1VPVHlRSXhwdWN2S0Q5TmJVWQ==', 67, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(446, 'NlBYTDF2ZWpmMVR5S2JOTnB1VXFmblVXNy8wcHhGTEZETUVwdEVLRXpjVT0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(447, 'TVRhelhlN1NGSHMwWnd0aVczZUc4S1lnRWV2TW5LYUJsQ0F1V2RlcmNSVT0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(448, 'anlUTWZIVjVrWFdKMlQ1OFJjaHFHVTJnL0p0azI0eXMwem52akdRQXRLUT0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(449, 'ODI3MmRTZmRBUEFUd2VMRUhOTkpDNWFmM0ZyT0FTQVJCS214TnNLOHdTZz0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(450, 'Q0tNTXpFTDVnN05wblJLZGtzckJPNFFCVXBRbWlJQmJ5QVdPV2pVRlVRaz0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(451, 'bHBTeXN0K1N0djcwR1RhMXVQRjZyZzhCNUdUa0dqcE5vWWNjVXd4RVpFYz0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(452, 'dFlQMXZkRE4xbSsrNVFnTlpyNytoK2lqRGx0YW9sSTdkOUlkZzFOQXZIbz0=', 68, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(453, 'Q2duK1BIbXFiUDBqV3VBYURESGZYd2Q5YmtibHl4b2R6UjJuQjBlbkdvK0xRZTRoaVBYRnF4Q2FLeGNBTXhOeA==', 69, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(454, 'MjhGazZGb3NqVkpIMEo5bWlsVjBRbmFaRzBrci9kUDhVUVg5eGVYYWJBdlZpOGNweGhPcW1uTzNXMW5lYnh2bQ==', 69, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(455, 'cEk5amV6OHBhMWpTQXBwdU1LSWNmcXk4dDJJOHZzZnBCV3pwb3YxLzk5SXdaNGYzUTZ6Vkh0dEFlK0ZtQ291Lw==', 69, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(456, 'ZEc1QzVrTExQRG9XeWp0QlIxdERrNVY1bnVOSi9iVU5iajlTRXF3dXFKOXg5YURXaUQ4ZXdtbzhPdEVFOGcyKw==', 69, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(457, 'MHo4VGdJdVdWVi9oYm94dy91UVBWblFYcWFUdUQwWTVXdzFRVUJoaDRUWkM5NWpiTDdzU2hsUitPVkZDNUhGUw==', 69, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(458, 'czRlVU1mZDZzNEsyMDNKclNidW13MVdteGhWZS9tUVZjZnJ5TUd4K3BJczJrMTRVd3gvdUUxdDJ0N0plNU9STw==', 69, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(459, 'TVhpWmtOd3hUbUVXcGlqUGx5bFZXd1A2Z3hRSUozaEhtS3EwUzdtdmo3ST0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(460, 'azk5U1lKRWo2LzkzamdDU1h2UzZDM2dxN0ErYy8rVlVxSng4RUJjZjd5Zz0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(461, 'ckFtVWgxVnovVGp1bEwvUXFMck51S0V1NVdsQ2NpdlROL1prbDg0WjdOWT0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(462, 'NHJTQ09xUjJBL21sME5KbHdRaWViSHB1WWxBUlpvTzAzdnVpaXBSN3J5UT0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(463, 'L1JrYlJpVzAyOTZqMzNrdGpzcm5DVFkrTkpGVFBOQkE1bU5UTEFsQjJYaz0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(464, 'YTMvYWhqeW1Dd3lOc09OVGtLb0dDUG53R3lnNEJtL0ZoTy9YQy9seDlsQT0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(465, 'MUl4TTNEb1FUakNDTGwreHQyM0tySXlJY1YzcnhtZXhRUW41djl4eUI3Yz0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(466, 'UlhhYWhPRi9KdWNLdVZ3OXhkVHNURlVWQVJiTFNVT3FGZ05ybkdleW9yQT0=', 70, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(467, 'TGpWMS9GS08ydjBQNVdVVDFXaTA4R2RUTUdyWEtpc3YxY0hNdXl5UytlNWVSL1pVcGVidVBLNGVhWUdIUFdXRw==', 71, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(468, 'dUJFdUM1eFd6dWVQb1FsV0h3alFlR2VLb3hxWjVzeUNqNWFIYVJtRFUyL0g0L013MVQ2UE9RY2ZFNUpYUnZVRw==', 71, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(469, 'TEhIUWtOZU02TFI5aFRUZ3J0VzY3cW5XRmFSdjY0SmN1cjRiT0ROK2txVFF0RHZ2b3RndUxscEgrWmxndThNUQ==', 71, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(470, 'c1liSGJGSGZ6MDFxSHQ2K0IwRzJuenk1aE9nYkRNK2o5Qm5XcjZZSzhFZmYrNHpCdUQ3MnlLU0tXRG9mbzJIUQ==', 71, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(471, 'SWVaaUNSUTAwSmt4UDNnNWpIeHVtd3ZTamVsTm9ERTVHQXFPc0NNc3lMMVFUVzJhK1RQWmdSMzRDWXVxRmRCbA==', 71, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(472, 'bjg0eG9qQ0NzZzRPcUtOTGhpLy8wejJlYlVZZ25hL2xZZ0FpQXRCdElFd3RJRklyRkNUazR5VTJNcXRsbG81Yg==', 71, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(473, 'QmJCV2NDcEtHZmk2VVgyOFl6citoRHR1eUVCa2kwT0RobDZqZmE3aENXWUZWR1dPOWpIZUFGU0t3anhMeXp1cw==', 72, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(474, 'UFV0U2RrNTRIcHlBQXZzZWxtcHEveGNKb29ramhBRUNCTitTL0MxeWk3dmc5VkNLbUxWbUkzejRpdnNpN2JhYw==', 72, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(475, 'U3VhV0tHcFlSUFcxSDVCeXd0bktPNUpCbGpra082SXc4MmJmb0dSR2xoVVVwSlhFbmIvODMxbTh2TmpQVjRpeA==', 72, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(476, 'b25ocGFLVkdnSzllclRvWmUvbEdGTTNsNmNHVE5rekQrcUl1THA2cVpidnZ0dkwyMjlwbzRYWElVSEJ5a3BVYw==', 72, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(477, 'a1c1NWpOYWkwZmh2ejlkdzJSSC8yRXZVWVhmbUxmZUc1WEFxRi9KeWtTRVcxcFVJMHlZSzNGZVVXMEhPVzc4cA==', 72, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(478, 'REhMTUNIUHgzcWJObGNrK2xrTzJ5d0JjUmhpY2lBKzA4UngrZUV5cXIrM21YV1lnMTNUWWg0SGVpbmQvQ1ZlZg==', 72, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(479, 'OTN2MUVRMVgvZlRMOEdKZTQ5aWZLVFBCUVd1MFpscnRVeDV3Slg5V3c1UT0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(480, 'eWhFaUFSZ0xkNE54cTk0Rk9uUEVDVVhCTFdVdXNTUmMxb2Q3Nyt6VlMyVT0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(481, 'QTUyamc2STBmakdTS2FvMlNvVkVPZk03UElxSXNkYmtXYTNsQnBVcThrVT0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(482, 'YmZ4dVVSZENXazhlaUZ4UWY2eURQQmliZnpDYTVkM1NXVHM4QW80R010WT0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(483, 'VTNXVkxyZUtsdXJXWEY3dVhYZUNnWVJkS29VQXNoclhUcTE1Wk5LT3VuMD0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(484, 'U0lVZlNOUUNoT3FhREpZUk5KN2V0eXhNSDdQb05zVHFOSDFFWXdEWENUZz0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(485, 'VG82RDFreW5JczgySTJweVNoaGo4eXJ0WmM4NmhLaHpuclRhK2syMG54ND0=', 73, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(486, 'a1JVQWZQNEJUcTVyemFvT0Z2Mnc4azdsSm5lcTkxYmVjNjUweHQwRzJ3bzRzQ1lXb2JXa2MydXdPd0tZT05IQw==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(487, 'UjNrekR6VXF1M2puR3ZxeE54VnRQS1h0TEZ3UUNoYW1kUHlmb1hLY2gwMG1BSEd3RnZvSnduai9GSmNrS21ybg==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(488, 'S0U5bzR2MXAyZnBzTnJxQTluNzgzN2p0SkFCendxdno1bU1BQzRIN1AyV3JRRklDRkFmZDFZeFk2NUFnRW0yUA==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(489, 'ZzdGaTRjZWxTTUZYVDFSeDhpeTNUTDZnZVRDT003aDQ3Zk91cFlTUkx0STRRbU5JQlF5bllxVjhKR2taejJFcQ==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(490, 'N0gzYkhwYWpueFFDcHFtNXpnbnlQODZzV1pYWXF2MHdobHp4Qkppb0w3UDV1Q2ZVMTVEemtvQlVOWEhFTjdtcQ==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(491, 'cGhlV0F6N3VMRFNKV056Sk1sMFJJUzVSTm90c0ZNT1Q0WTU5K0xIMDlHSUQrQ0ZwSDV1dk5sTGlsMmJiU1JjNQ==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(492, 'NjBNT0JhandpTU1IeUtURkRRbThhT2c2OGtUK3AvcXJ0YTFLSVZSekJRN1BIa01kcHNzbGFya1QvMFNQcmwyWQ==', 74, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(493, 'YTBkTWpqN1RocDVqYzlydG9LK2JwTVQ2MEllNnp4aFVOdnI4bFdDbGZOUElJY005YXUvOC95TENUenh4NWwrNg==', 75, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(494, 'MSt2NVdLOGFGcTNVaUhhRUord3JiUVhqd3NWRnhMT05tMnpVNjJoNktxZUJmdjNBUDZJRnlJWklRamN0RUVTYQ==', 75, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(495, 'QlRUckFuWS9xUng4SUltWFY5TTBPMFNkS2xGQmxIMmFFV1NkUnRBN3E3d0QrZmUwaC9pemVDZXFpQ2lkQ1FtUg==', 75, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(496, 'YW9Pc3hndG9xaHBZMmQxMlZacXN3ZzJLY2ZaREdHK09LTy95YUxueDZUNWNYWGtTTlJGQ1RpVTY1WlNodVhxaw==', 75, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(497, 'WW5yVlU2T1Qreno1K0x2aTFwcThnRlJ6RVJBT2x2UzNJZXFGWWZJU2lmOEJvZDRpRC81MERzTC9mTlp1MHpYSA==', 75, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(498, 'cGliYnpuOERzWGplbGF1TE5RSkM2YkdaN3RMR2hTWDN4YmRUc2o1L2JaYTlNcVpycC9NMmlIMlFqcXZTY1NhZw==', 76, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(499, 'R3pqWWxybUlDTE1jU0NUbkZVWVVrRFlLRFJwQTJadUdUa0Z2a1EzcER6bVVLK2VsKzAraDJjcmpzU3lsTDVzVA==', 76, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(500, 'MmtqZzN6U1R6L2lmWEkzMHptK3JmT2JuMHVCTWFnMjdsa2YvbXYweGx1dG95RWdEOE1rMjZuRiszRnROMW9Reg==', 76, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(501, 'UExScUNkSnN1bWloRlRMdFpKd2NsdHZJbzRRRXhyaUVGOVAwRU0wRjJFMTdENk9OcGdKWFllclBBRWZIL3JKMg==', 76, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(502, 'S0tTd0lGU2FheTE4TVdkVy9MelNjMHRKS1ZIVldYckNPSHZ1eHlWNzVERGRMQ2RraEhPUVhXRC9TMllJS0tpLw==', 76, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(503, 'VTFZWGM4cUhyY0N0bjMvWnNLM0R2dFFKd2pOZUJtc2hvU2E3eWVqM0dmST0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(504, 'T0FiUitvaW0rRG96NFdGakQ4d2JQQ3FGT0hEbExxSk0yV2NOTWljamVEUT0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(505, 'Mnh5bDZ3cHRhemZtWlY2T2xRUTlpdmhsS3ZRYnJJeG1ydFNiVXNHT25jST0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(506, 'MjlwY0VOOUVXa0xlUnBZbzN5eXkrb20xS2lwVmtYSjlqMENvczhjVlJYOD0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(507, 'WkM2KzJZVU1JUStVR2FCNFNZc3Bpeis1MzlDNE9jcmNkMmtEQnliUzZEOD0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(508, 'SHc5cUZ3SGlXY1gzYllCaVgyTVFDUWdPWHI1aUZwbWdaNkg4alVIS2Vlaz0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(509, 'OU54Z1VjOHozSFB0OU52RHBkZkFBbXlJNERBd1pMTVhORzAyZ216NUdEdz0=', 77, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(510, 'V0l5Tm4vZHkzcWpxald2S1lvT3FyVGh6TWV2aVNaQVVQNEJBbyt5Y0NiRT0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(511, 'WHRPY3BCdUo0TUdTUk9Qd0FiNmVXeVlpbktMYVl6Y21WS2l6emRkTnQ0bz0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(512, 'Y3ZHa0tpSWRkS1JzS0VGVWtaSmRwLzB5M1NmTnVXOER6OUFsR2QrekkrST0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(513, 'RVNLNk1WeGpnMUVvUE9SNUEvSkdxcHk0TlIyUVlxaW5tRlB5dndwOGR6VT0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(514, 'ZHB4VjZlSHF1emNJN25HR2hwc25FbEJxNmVVTFRVMlJocVJsWlR0ZGt3cz0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(515, 'WDFCK1Z0OWlheFRrWDJGQ2dIaE0raUpncE4yYm43YTErSjFveTRIcVg4az0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(516, 'WW1LczFGck56Q3VCRzRtRHQrZVBYSjFhMXFWTThvaHp4L2FVUjQ3Q3U0az0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(517, 'NUlVd2NRbUx5VmN4NmQxcUhtRW9jbHNla1ZjRjE4UmRnRlJqamRVYTd1Yz0=', 78, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(518, 'c3JJSHoxRHUrMi93SVNWWVlORy9SbzF1L3QzTVRQQlBoSGE4dnduek5rND0=', 79, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(519, 'SzFPS1VxaGJ2cDJkeEtKMFZLOGI1YU1Da1NHWmNGVE9KcE9zcldCV3IvMD0=', 79, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(520, 'aTNxNTVUMkNqdEJMOWJ6d0dKUnNJUnMzSWcxNmhLa1FMd3lBM3lYd1Q3dz0=', 79, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(521, 'RTRUNjdZUThsSzIrbGUrRGF6dTZKNTNvQjM4VDAyMzJKSjU3R3FBUEdTZz0=', 79, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(522, 'QkZMN2F2SE0yS1RNdFQrbnp2dVlsT1JVZS9xTEF0NUNHRnI3Q1FTaDljbz0=', 79, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(523, 'NFNheHFxK1lkYkJ2SHVTVVlmRHRLZkNyeVI2ZjlxM0ZWZjc4QUtYV2ZPcWhjUmZVWEhiN25Oc0lHbW1CYzRsTg==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(524, 'NVVZN0xiSnMrd3FKOFNSVEVrSE9QMzI5ZlJJb0xJUkNxVHpna0NVTnphbTJQdXBXL1V0c0VITHFHY3lSVzA4Tg==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(525, 'ZGF6ZFR2ektxdkRoMGV3eXM1dUZMUUs2OUpUVE1HTG1talNkSUVmNEhnNkFzbmxWVmxzUGZVZUUrRFVTbjhlQQ==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(526, 'cGdreTVwWFVuaU05UEJEL2pzMEVnQ0FBbE4wSDNaRE1CY3RhLy83aS84YWNIY2htR05tdUZteGluRkNVamVaVw==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(527, 'L1I3TU05elVYa2NLdERIUXB4M0FDR2JXOStyRC9oWnRjYUV3N1VCRUtiRFFpNEFNZG03dlg2bEROZldaSERUdw==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(528, 'TEhYMzR1aS8vaXIwTlVCc2pXOXE5ZllDQ1NjMGc2V0xtNEJBTWZKd3dXYlRBLzlLQUFKbktOT2tMV0F1ZWJueA==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(529, 'RHczRVNpb28yS1BmamlTdnZQVVBDRldtV0VaVUNBelJjQVJtTlJBTXlsUWtIV1ovQXNPakIxS0F6SEg1NC9zdQ==', 80, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(530, 'bXgrVnlScG5jWWVUdHVJaXF1Y3lmWnBtekNuWnl6M0lCanJYcGpFcnlrS3AzUlk3TTZKL2grQ3ZRcGlCM1FKMQ==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(531, 'Z0psRUliWTFsODVSeUNRMzRhVFhwNWt4eGRxdmkzTFhMM1NycnJkTDhNVE8xZkN0dzJJZ0lMUW1vWFk4OXE3SQ==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(532, 'QkVsNloySGRGR2RmbUFoeHVlTVRxMnduMzg2Z09wdFZ5ZS9DKzNmejJXWU5xbnVMUDlmZjZUQUtMb2hkU1FydQ==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(533, 'TTd2WWRONGNwZ0Mrb04wbXNmb3FaNTk2c0FvSWhSMkhVaUZFZlJjMzV1eERZc2xrZm44MXBSdG94YVBsN2pNVA==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(534, 'bmdWMm5VWm9BVGQ0OFRTc3EyMnFKd09aL0E1VW54SXFndVZlMDF3Z01paXJseENGRUhTM3FkT2krTDQvOEZycw==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(535, 'c2V1ajNrSkE5QVczYzFCaHZ0WE55ZERGdnpmbVc0c3V1NXZqNFg3L1FvNjNRS0gxdGhjNHBvYVBxT1FXQk1tWg==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(536, 'UFpWSXVMbEZYTXVZK0FXaVdrZ0VVcUtKc3UzTUlSNmNvdEdFTThzUVVCb3kvOVNTRjl5eHBjY3hhNkVkbFFGag==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(537, 'Z2hxK0E0NGV1enNMRTVUVGc0eXcwdFhQUS9ERUxDYUQ5VVd4UVEyMktjdTc5WThaemVUeThoL09TN0xtVlhtbQ==', 81, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(538, 'Vmo5WjdnU09IMHYvaWp2UnY2TzB4UStLdnhiM09XQXFJdmJTUFlGNG1ubkV1Wjh1SjhQNldTNHJMdlhidCtpQw==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(539, 'RXhibjlhRjQzaU5nanVXNDVnZC9rcTQvQ0VTaFp5Q0tJa2V0bmJQd1U4MmVzUGRnRmRYcGZ6NHB0VEM5Vks5Rw==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(540, 'cHh3U2ExUkJvOTdQOWtYanRSeVhaQmVqR1FPM2c4VkNwLzJYRER6cUlpVEFDTGFNUFdiclFxSWNSQzJrLzNrTQ==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(541, 'Z05QcWFyMWVZam41bVpENXUxUWd4a01CbnB4NTZmWWM5M2VKeW9sNUJBS1U3UzZPelIraGw2eVdTNVdoL01YTw==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(542, 'TjZKRGdJUG50MmtEVlVybnJxM1lleGJvOGpINzNqZXI3bUZIckRkc3J1aVphS1BkWWg4VU9BOGQ2cVRvclR6dw==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(543, 'VG9JOFllRWRZeTJwSFZmTVUrYWRKSXo4TksycVNaNGsra1orYXlBUU5ISFZOUjVubEg5MDlGSThRSk9YWlBOTQ==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(544, 'ZkVsbmZhU0lJMm1FVnhETGhxZmtpU1hhYnV6dzJSSDlqOGRyalVmNHU2UTNVSlFtVm8wNkt0VFNXY0VFeTRsaA==', 82, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(545, 'NWRkV09CK0F4OXF1NGIrN0RFNW9aTWdOSUtmU0ZvOWlGQ01mU1k0dFlWdjV3SnBDSmdoelcycE44Y3hpb1JqcQ==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(546, 'R2diRnZPVWFZeUFzU2xzWWlKUXh2cTFvY0NsOFBGaUErZkxZb0QzZkhBMmt5c3Yxdm5HVkxsREZkK3poZU9NUw==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(547, 'Mi9OTGpFR2s5Sy9EN3BCd0tJMG1IaTlJUkJ4OFhBQ2tiZ2krVDZGdzhHTDNHSXgzbWlJYUlFSVFmSCtVN2pjQw==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(548, 'c3UwM1FZcDAvQzh6QUMwdHFUZlo4UGtKcmxOckRXS3BmRytyODQxa3UweTdFdnoyeldwNmNma0ExaFhjaG5zRQ==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(549, 'YXNpbXNweGFLaWRTbXoxKy84M1BPYWZWdDZQQ1RtUzFOcWg1clF2V1NUVWRIanhMU3ZBcWpEZE1rUWFjcWN4ag==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(550, 'YUI5U2RaYmhLc2NvWFY3bldyTExQbzRwZHR4R3Byb2syVnh0U3BRUHVnY2JBL3QvMExreGtRTjZuNEVLbTFGbw==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(551, 'VGpPbm5HemtEOFhGS2xtNWZyOHliTmZhL0RmZGx4cUxDSTZybjNRdlVpdXhVeHNUT1RxdE5iZ3RndVlGZzBkNA==', 83, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(552, 'RWU3eXk0VjhUVHBPRm53SXF5b3JtME5jRUZKWUxTVytxSmhZVWZwTmpLRUhMZHdIOXk4Z21sSXIzVmhKTjFmOA==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(553, 'ZXlLemgvR0VtNjZ1MUgxQnVncVk5VW5weUhkL1Y3QmFsMFoxMlNwTTVsQkM4VFFnUnVXZ1NFZ201TWxxeG1rQw==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(554, 'VDkyRTk5OWtGL3BrRngyS1ArSWN1SEJ1d0Y5eFhKVGdsaDRUNkFBdjJVYmhtc21mTTVqTmdQa3k1eENjV2IyWQ==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(555, 'b2lrOHBNVndCUnorQ3ZtQ1ZMMHBpdklSY0x5NTBwMU5HOUVqZjMyaUxYcno1T25PZzg3SHhNRW5vVzQ2SUVDaw==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(556, 'ek9vK3EyblI3SXZ3NUp3alZMOU1uVVRvYXRMWEdTVUhla2hGdXpEbWlZRTdOTzRXV3RqNFRRWEgyYU5PL3FUNQ==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(557, 'amJidmdhS1QzaTNzbnVHNXh0Sy9aL0Z2c0tJYzZlYlg1cnl5SHduVWtFS0hvUXFOLzlld2JwMFovOGtXK1A3Mw==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(558, 'U0tMSHNETzVLQ2d0c1Q4WFBCV2xSNHdjVk9JZWNEQTlKblByeHUxdy9LN2tSNHpaR3NOa1Y0RGxmV2ZLaVQ0Qw==', 84, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(559, 'Ny9YMVgrTWxDeENKMVFQOGZRd0RQdy9rVkhreGRxVHh1NkF3Nm9mRExGcGs4UEIrRlJ3UDlWbnBWNzRiR3NiVA==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(560, 'M3JsMVo4cENlZzl4Qm5QNC9YazRycFQ0Vk9sS0VrcFA1TUdFRXFsNExlTEZkZ1kveVM0bjVSV1pDYndhN0dYQQ==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(561, 'M25GSzVnZThqeWtOajUvbTJaWWFVZzU0S2hHWFprMnk5cUdSOEVWWFdtTW1ieXU4eTVTcS9QanZ3MUk1a2xkbg==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(562, 'eERSdGs3QTJrbnNORVhhZmZWckIzaWFwM0VhVmdIZ0FKRGlYYXJMWkVhSjZFRjBvaE5XM0owbTJURVllRFRsWQ==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(563, 'bmtNbkF6cFF4cmE3UWNvNmtBUzJTR0RFUzFZWnlFY0diY2dhcFJRRTZpdnR5S1diVXV2RWR2QjdEd3A0djViSw==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(564, 'RDlzNlIyZVp4NW1JWEt3WCtMWDl3ZmZqK2JmNE1SYUw2bjZOUzdjVkFsblRnMWFRNC9zODhEajVNQ1R1WldBUw==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(565, 'OTd1emg0OFBzMzc1Q2VTZldsK3lJeUxFRFdKbDFSMXgyZmZyVTRZMzZudThnNGVzVkg3ZjladnBLdy9ldGZJbA==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(566, 'Vy9Db0xUWi9sY1haLy9zVjN6c3FMT0tiZzdKU3NsWldjbE9rT1h2MTlBSTBGZ1hkRzlMeFFkSnJOZDlsUjJIdw==', 85, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(567, 'Q1VDeTJOQ2xOY1ZZTG5kMndmNFpCTExyRHFGUVdDRHNvQnBQNHVQTUJndz0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(568, 'dm14WURtZWZNSG1qVEZnYVdkYStVQ2lBc0FEK3IyVUtHdkdPWjVTYTI0az0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(569, 'UExKYWlqY0JIYy9mcG01RjBhRHlhNWNNSnlxZHhqajc5dVErcXptRUNETT0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(570, 'MHhHTzdKdmtZYXdWNlQ0Zys1T3Y2bFF5UU9FRzhHSmdFNGJXRGtBc1hZZz0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(571, 'Mnl0Ui9rRmdnL3RjREY2L245UGhIdHlWdFBQR2FINTBoNkw1Tm9vM0ZhYz0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(572, 'NURoTXZ4MDEyM2M0UEtqVnJiWFhvVzBlYVRNVWt3ZGtKcW9pc3JrZ3lSYz0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(573, 'citjekh2TitUbkxwMzR4a1NJRWV3U0EzUExjRjBFN2R0LzNjZjFPQ0Yydz0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(574, 'WDRoRWd5YTBDVTNCVGxhdXZxalhKd05vZ3VWL2dmcTBDQVFYY3VNdnJ1az0=', 86, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(575, 'UVIzdVRzUllUT2VWNXpkSndETHdOYmV3UFhFQmw0bThTaERZMHFPa05xTVZjUG5KNjhKR3pjNmk1ZFhRTkk1YQ==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(576, 'Z05lN1JWWWt3UUNZVmNyYlZMNVlVTFkxcC9IRW01KzJlME5IMWhkcmV5VG5xcHo1bVBoemJSNkdIS3JsQmZvOA==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(577, 'SURIU0FnaU5RK3BWT21lZTBwdy9vYnBka1NWcyt4azBHWEw1THZEcUxsSDQ3QVQrdFNWVEVwZUdMcXhIbHdxSg==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(578, 'Z2ZzNzQ2U1hIYlc0ZU80emgvS2Ztbk1CV1RWVUlEUEU2eVJyUjg1ci85YUx1NjErWFJPbW9XN2pZT0NqNTBZYQ==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(579, 'ZndVUjlQbUdHOEhaR3BnQU9uVjY0WnpYM1YyaHl2cTB0V0Ftb1JQaHQyWUYzcmJTR2ZycDhWM0U1UGpNMmhsZA==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(580, 'ZUVCSDNaajVPUVpSMmR5R2xOYkpFdFNFbmtrUmdLR25uckRnUlE4M0w3eUw3VndOQzQ3YWZqdldnT05NQW9MNw==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(581, 'ZW1adldPbFo3UDJZaVpCc3VqL0xUdDZXcGQ1TWl6eU8za1lJb2w1emFSU2lJNkJDcFRqcGlZYzhZQ1pvaHpTeA==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(582, 'Z1hJdkpPTkdsYzg0SHBjelp6UDhaZDdHWHNjWVBnUWhYK2RoNUFhTjN4c3VVMWhHR0hEYkU0RWtDUENwaWFoSw==', 87, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(583, 'NDNwc0d0SzZ4N2lFM3YxUHdYWGJJT2NrdVp5MGpENFpRNmZzYmlPZndwRG5Fb0RueGFWYzZlM2V5SnJpUjNLYg==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(584, 'OXdaMzgwRmEyNUo2bmtpcm5zYlY4eEFkOXRXYytaaTQxYXdsenRyVTlrcHFSZWdFSHEzNkxhREpRK0MvTEg4QQ==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(585, 'cnBBcTkzYm5iaG1iUGF4ZGdCZWw5TTErK2NJYktDNERUcmFya1JNMHR0aDJSbmZoZ2tKZ25nZXJ3UU0vQ0dMbg==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(586, 'aVpPcFVrYXJTL3d6eTNPNi9GeWM5bXdwOFdFdTdFU0JlRFVjZlZUV2FjK0x3ak13b3dHNFBhQkowcFBqTnYycg==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(587, 'c2VlTURoYmlXSjllSzJaR01GVHlzcThxRXJhVWFuV0pndUsyVHhocHJnWHQ4eGNsUk1iL1pXTHNtcVRwMGU4ZA==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(588, 'T3NRZ0xQK3NpTGNHcEtoL0sxcUE3N3MyUU1hK3ducVI4UWNMaVJBaDhabk8yL2RsVUVSaDh0RWZ4TEVLTjNpUQ==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(589, 'OGQrNXY2b2NWN2FpbzhKVkRuQTd1NEl6RUFrWG1UMXQ4Qm9VNkF3clJFZFdPZTAwcDM5ek94Z2s0ZWZHZTdnZg==', 88, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(590, 'SklJZHl0N1lnaVd5QjlSUnhzbGZLV0RQV0JsM0hHZituSnZPZDNoMnNibExzNlVENXEwNUM2N0Q1WXF2bytuWA==', 89, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(591, 'YXFlS2pxbjhGYjk1ZkJ0ZmVnRlFmN1Q0bWUwVzBuRmNxRkVuemZjYlZWZG5KMVNkZURPanhLSkhERGtzOU1XWA==', 89, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(592, 'MlIzQlNRNDJZVVNIVy83TTdpTlZIVFBZZVdySExmMXhGME8ybzFIS3NaeGtoL2pBZTNqSDQxbmR6VCtMR0JtZA==', 89, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(593, 'd0dGL1o3ZitDY1NDM0FIVytsL0w1TStLUE9xM3RVTE43SFhXSDcraXdLOGYySHNUN05HTjIzNS9XSGVZeEl0eA==', 89, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(594, 'V3h3SCttNU1YVDR1b09jQzVQc3pBYUR5UE5uNXBjU1Z5TkpnWHd1Ukp3YnBPaEw4TTRiTmM3QnlnVlBiZEk5OA==', 89, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(595, 'NE5ETTQvU3pUSngyMW9RdWpZb0tRQmZoZTBjRkh0MWdzVTZZdVF5RE1YTnRMY00xM3ZndlBLTW5mU213MlBIYg==', 89, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(596, 'cTZkS3BFbVlaTVFrNDNnL1RndDJWUmNDS1IrVFRXT2xQVCtUdVRJbE1acz0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(597, 'QVh4eEVVMWZCcEJQTlhnanFnQzREamQyTzFjY2xMbEpMVDlPRm02RlJ4MD0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(598, 'WEs2YUFTN2F1ZTc1TGxHMWNnNld6NXVucHRRYjh4TC9TcUpLZjhGeFIyTT0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(599, 'VWR6QndZd3R1WFp3TWFPNWJIYlIreGx1bVd0dGRFRGU4amIwWDlhVnNJYz0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(600, 'bkg2ZDlNNGhRYzZ4UFlxUjk0SVJtVitXYjdEODE2WjJ3QldhYjREY2xMbz0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(601, 'VHBJUWJCdFQ0cXhTbzFqdkt3eFVmOXFidXpWSkRId0c5MkxTNXNqdEFPZz0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(602, 'YnFnTUg3VzhiUHE0bzVySHFZdGhoSGUzaFlNZllmL3IrSUJmeFp4SmR4bz0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(603, 'RVlBcm8zYnArRytTNGl6NHJ1NHBQUHJMK1dBYm0rcGZWUkpKYVRHNTlGQT0=', 90, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(604, 'dUVObDhtK2pBc29Vc21BbjBXOE1RSVJFT1d4S2syUVpRQVp4WkxBUWh5TT0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(605, 'Q1ZFdjFjRlc5ODVTd3JROHhTT1ZzdktBb1Y0OTJkbFJabnJmZ200ZElEMD0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(606, 'aXp3OFBrSytYdWlXVUhPZWwrUFllM2oxS05iUFkyOE04WGFSUEVzVCs0MD0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(607, 'T3J0d3lKWG9iVnY1U3BXbVMwbUNSRTIvMEpWMUxIVWVad2Y5d0JxYSt0ST0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(608, 'UnJ6ajd6c3BpY2hUcllJZ0F4b1l1Zm9seGxVOW10emVCcUxJRkNqS3Eybz0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(609, 'T2krSkV6YTlvajNwWUIvV1E3b2I0ZjVzOGl4MVN5N3pzR0RDaVpzYXpqND0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(610, 'cC8rMU5qTHZaREJ6ZzZWL3Y2R1hGbzUrQTF5Vys2aGk2ZkY2eG1Hc1RQQT0=', 91, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(611, 'bXlwUUo5UHV5VmtGdFZINUg0WG1MNkZFQVJqNTd3MEJic2tuS0MvWDlpMFhwTzA2TGZUZkxnd0VPMkdvOVoyYw==', 92, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(612, 'K2tOUVF1VDBuM2UxZWNMSTRKL3YyUklSWGIwSW5leWRjN3lQajVIRm4renFUWXRvdEJ0T1VrRjh1QnQ0dWg1WQ==', 92, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(613, 'VVNaWHFmRzZsZzFDSFZUNEYwdkhtN1V6MmNTOVE1cFZHdUREbThYT2NvSVFBVlBJUndLYUlzcVdUcnpsYmlEVw==', 92, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(614, 'aFFZMTUvelZsTUM3RmpXYXJLdDY4MURHN25wRTk3dWV4b25yVWk1RXRpQ3luRjM2OWZPaFRwNm1wWnBqMDB1RQ==', 92, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(615, 'RVEzNjQyMXZFUXdaOVhNS1pvaE8xVkFvTnJJZDgvUWJrc0YzTGNvNFRTY3NQUTZLVGJrNHB2OFhOZnFaV2ZBZw==', 92, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(616, 'TnpSczhSSnhzd1VGTmJVRkx5Wkg4UjVXbkdsZnB5Z3ArVWNCaEFjYkNBblZSOTg2bHRyRndFRmk4blZjb25zYQ==', 92, 0, 0, NULL, '2023-07-18 16:20:41', '2023-07-18 16:20:41');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_04_29_041141_create_base', 1),
(4, '2023_05_22_094848_add_social_columns_to_users', 1),
(5, '2023_07_05_103027_create_permission_tables', 1);

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
  `order_status` enum('Pending','Done','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `pay_type` enum('VNPAY','MoMo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id_ref` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `email`, `total`, `order_status`, `pay_type`, `order_id_ref`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@gmail.com', 2495000, 'Pending', 'VNPAY', 'SRMDTA5L', '2023-07-01 03:13:20', '2023-07-01 03:13:20'),
(2, 2, 'nguoidungkten3@gmail.com', 250000, 'Pending', 'VNPAY', 'WJSCCMXP', '2023-07-01 03:17:05', '2023-07-01 03:17:05'),
(3, 2, 'nguoidungkten3@gmail.com', 541000, 'Pending', 'VNPAY', 'JNEFMTAW', '2023-07-01 03:19:22', '2023-07-01 03:19:22'),
(4, 2, 'nguoidungkten3@gmail.com', 398000, 'Pending', 'VNPAY', 'JZ4OQZIN', '2023-07-01 03:21:02', '2023-07-01 03:21:02'),
(5, 2, 'nguoidungkten3@gmail.com', 220000, 'Pending', 'VNPAY', 'HI3BOZFE', '2023-07-01 03:21:43', '2023-07-01 03:21:43'),
(6, 1, 'admin@gmail.com', 3014000, 'Pending', 'VNPAY', 'IHZA53II', '2023-07-01 03:24:22', '2023-07-01 03:24:22'),
(7, 1, 'admin@gmail.com', 1880000, 'Pending', 'VNPAY', 'SC0XPTAE', '2023-07-01 03:25:16', '2023-07-01 03:25:16'),
(8, 1, 'admin@gmail.com', 2400000, 'Pending', 'VNPAY', 'BDB2RPH1', '2023-07-01 03:25:48', '2023-07-01 03:25:48'),
(9, 1, 'admin@gmail.com', 420000, 'Pending', 'VNPAY', 'JYSP8L47', '2023-07-01 03:26:17', '2023-07-01 03:26:17'),
(10, 1, 'admin@gmail.com', 188000, 'Pending', 'VNPAY', '8RKISFLF', '2023-07-01 03:26:44', '2023-07-01 03:26:44'),
(11, 2, 'nguoidungkten3@gmail.com', 430000, 'Pending', 'VNPAY', 'AQEY5ZDK', '2023-07-01 03:30:02', '2023-07-01 03:30:02'),
(12, 2, 'nguoidungkten3@gmail.com', 1140000, 'Pending', 'VNPAY', '9B43MP9P', '2023-07-01 03:30:39', '2023-07-01 03:30:39'),
(13, 2, 'nguoidungkten3@gmail.com', 1324500, 'Pending', 'VNPAY', '5SY3O885', '2023-07-01 03:32:14', '2023-07-01 03:32:14'),
(14, 2, 'nguoidungkten3@gmail.com', 680000, 'Pending', 'VNPAY', 'TXTFOKFH', '2023-07-01 03:32:56', '2023-07-01 03:32:56'),
(15, 3, 'kiratoryu122@gmail.com', 1084000, 'Done', 'VNPAY', 'KGIW0ND8', '2023-07-07 14:59:50', '2023-07-07 14:59:50'),
(16, 3, 'kiratoryu122@gmail.com', 1845000, 'Done', 'VNPAY', 'D269KJW8', '2023-07-07 15:03:50', '2023-07-07 15:03:50'),
(17, 1, 'admin@gmail.com', 999999, 'Pending', 'VNPAY', 'XURGXTNK', '2023-06-01 16:23:51', '2023-07-07 16:23:51'),
(18, 1, 'admin@gmail.com', 846908, 'Pending', 'VNPAY', 'TQYAMHGX', '2023-06-02 16:24:28', '2023-06-02 16:24:28'),
(19, 1, 'admin@gmail.com', 949114, 'Pending', 'VNPAY', 'CQZVFBYH', '2023-06-03 16:24:28', '2023-06-02 16:24:28'),
(20, 1, 'admin@gmail.com', 25128, 'Pending', 'VNPAY', 'TORJDDRO', '2023-06-04 16:24:28', '2023-06-02 16:24:28'),
(21, 1, 'admin@gmail.com', 62473, 'Pending', 'VNPAY', 'FFKBLGUS', '2023-06-05 16:24:28', '2023-06-02 16:24:28'),
(22, 1, 'admin@gmail.com', 379218, 'Pending', 'VNPAY', 'BXRWDJDJ', '2023-06-06 16:24:28', '2023-06-02 16:24:28'),
(23, 1, 'admin@gmail.com', 313845, 'Pending', 'VNPAY', 'DWVDQTSC', '2023-06-07 16:24:28', '2023-06-02 16:24:28'),
(24, 1, 'admin@gmail.com', 692297, 'Pending', 'VNPAY', 'PPCAKXCU', '2023-06-08 16:24:28', '2023-06-02 16:24:28'),
(25, 1, 'admin@gmail.com', 376251, 'Pending', 'VNPAY', 'DQHVDHCA', '2023-06-09 16:24:28', '2023-06-02 16:24:28'),
(26, 1, 'admin@gmail.com', 98022, 'Pending', 'VNPAY', 'ELPKWLZF', '2023-06-10 16:24:28', '2023-06-02 16:24:28'),
(27, 1, 'admin@gmail.com', 698671, 'Pending', 'VNPAY', 'SGPGJMYU', '2023-06-11 16:24:28', '2023-06-02 16:24:28'),
(28, 1, 'admin@gmail.com', 750387, 'Pending', 'VNPAY', 'YWFECXLW', '2023-06-12 16:24:28', '2023-06-02 16:24:28'),
(29, 1, 'admin@gmail.com', 750387, 'Pending', 'VNPAY', 'MJPSUGLM', '2023-06-13 16:24:28', '2023-06-02 16:24:28'),
(30, 1, 'admin@gmail.com', 750387, 'Pending', 'VNPAY', 'WTVAUNLL', '2023-06-14 16:24:28', '2023-06-02 16:24:28'),
(31, 1, 'admin@gmail.com', 237160, 'Pending', 'VNPAY', 'BVERXEVZ', '2023-06-15 16:24:28', '2023-06-02 16:24:28'),
(32, 1, 'admin@gmail.com', 648589, 'Pending', 'VNPAY', 'EKVFMGEF', '2023-06-16 16:24:28', '2023-06-02 16:24:28'),
(33, 1, 'admin@gmail.com', 955595, 'Pending', 'VNPAY', 'XAXTNLQG', '2023-06-17 16:24:28', '2023-06-02 16:24:28'),
(34, 1, 'admin@gmail.com', 955595, 'Pending', 'VNPAY', 'GDRYOCWU', '2023-06-18 16:24:28', '2023-06-02 16:24:28'),
(35, 1, 'admin@gmail.com', 955595, 'Pending', 'VNPAY', 'BTFDXDMV', '2023-06-19 16:24:28', '2023-06-02 16:24:28'),
(36, 1, 'admin@gmail.com', 80149, 'Pending', 'VNPAY', 'SWRYNRNV', '2023-06-20 16:24:28', '2023-06-02 16:24:28'),
(37, 1, 'admin@gmail.com', 299261, 'Pending', 'VNPAY', 'JZVOVEMD', '2023-06-21 16:24:28', '2023-06-02 16:24:28'),
(38, 1, 'admin@gmail.com', 106690, 'Pending', 'VNPAY', 'DIBFOHUB', '2023-06-22 16:24:28', '2023-06-02 16:24:28'),
(39, 1, 'admin@gmail.com', 624190, 'Pending', 'VNPAY', 'FFVYTEKV', '2023-06-23 16:24:28', '2023-06-02 16:24:28'),
(40, 1, 'admin@gmail.com', 20766, 'Pending', 'VNPAY', 'JNQVUYIS', '2023-06-24 16:24:28', '2023-06-02 16:24:28'),
(41, 1, 'admin@gmail.com', 492679, 'Pending', 'VNPAY', 'GPLAFPQW', '2023-06-25 16:24:28', '2023-06-02 16:24:28'),
(42, 1, 'admin@gmail.com', 68328, 'Pending', 'VNPAY', 'MLPMWYBJ', '2023-06-26 16:24:28', '2023-06-02 16:24:28'),
(43, 1, 'admin@gmail.com', 559359, 'Pending', 'VNPAY', 'PEYWYAFF', '2023-06-27 16:24:28', '2023-06-02 16:24:28'),
(44, 1, 'admin@gmail.com', 559359, 'Pending', 'VNPAY', 'HLTPNZLO', '2023-06-28 16:24:28', '2023-06-02 16:24:28'),
(45, 1, 'admin@gmail.com', 559359, 'Pending', 'VNPAY', 'CHTONGXY', '2023-06-29 16:24:28', '2023-06-02 16:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(10) UNSIGNED NOT NULL,
  `game_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_game_id_foreign` (`game_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `game_id`, `name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 67, 'Sea of Thieves 2023 Edition', 400000, 5, '2023-07-01 03:13:20', '2023-07-01 03:13:20'),
(2, 1, 26, 'Jump King', 165000, 3, '2023-07-01 03:13:20', '2023-07-01 03:13:20'),
(3, 2, 70, 'Library Of Ruina', 250000, 1, '2023-07-01 03:17:05', '2023-07-01 03:17:05'),
(4, 3, 4, 'Don\'t Starve Together', 165000, 1, '2023-07-01 03:19:22', '2023-07-01 03:19:22'),
(5, 3, 89, 'Cuphead', 188000, 2, '2023-07-01 03:19:22', '2023-07-01 03:19:22'),
(6, 4, 11, 'Megaman 11', 398000, 1, '2023-07-01 03:21:02', '2023-07-01 03:21:02'),
(7, 5, 69, 'Lobotomy Corporation | Monster Management Simulation', 220000, 1, '2023-07-01 03:21:43', '2023-07-01 03:21:43'),
(8, 6, 42, 'Gunvolt Chronicles: Luminous Avenger iX 2', 274000, 11, '2023-07-01 03:24:22', '2023-07-01 03:24:22'),
(9, 7, 47, 'One Step From Eden', 188000, 10, '2023-07-01 03:25:16', '2023-07-01 03:25:16'),
(10, 8, 5, 'ELDEN RING', 800000, 3, '2023-07-01 03:25:48', '2023-07-01 03:25:48'),
(11, 9, 73, 'Among Us', 70000, 6, '2023-07-01 03:26:17', '2023-07-01 03:26:17'),
(12, 10, 40, '30XX', 188000, 1, '2023-07-01 03:26:44', '2023-07-01 03:26:44'),
(13, 11, 50, 'Core Keeper', 215000, 2, '2023-07-01 03:30:02', '2023-07-01 03:30:02'),
(14, 12, 71, 'Garry\'s Mod', 120000, 1, '2023-07-01 03:30:39', '2023-07-01 03:30:39'),
(15, 12, 61, 'Rust', 510000, 2, '2023-07-01 03:30:39', '2023-07-01 03:30:39'),
(16, 13, 82, 'Borderlands 2', 334500, 1, '2023-07-01 03:32:14', '2023-07-01 03:32:14'),
(17, 13, 83, 'Borderlands 3', 990000, 1, '2023-07-01 03:32:14', '2023-07-01 03:32:14'),
(18, 14, 29, 'A Dance of Fire and Ice', 80000, 7, '2023-07-01 03:32:56', '2023-07-01 03:32:56'),
(19, 14, 71, 'Garry\'s Mod', 120000, 1, '2023-07-01 03:32:56', '2023-07-01 03:32:56');

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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'addGame', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(2, 'editGame', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(3, 'deleteGame', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(4, 'addGenre', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(5, 'editGenre', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(6, 'deleteGenre', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(7, 'addPublisher', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(8, 'editPublisher', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(9, 'deletePublisher', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(10, 'addRole', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(11, 'editRole', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(12, 'deleteRole', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(13, 'activateRole', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(14, 'addPermission', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(15, 'editPermission', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(16, 'deletePermission', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(17, 'activatePermission', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(18, 'addKey', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(19, 'editKey', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(20, 'deleteKey', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(21, 'assignRole', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(22, 'assignPermission', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(23, 'addUser', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(24, 'editUser', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(25, 'deleteUser', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(26, 'cancelOrder', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(27, 'acceptOrder', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(2, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(3, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(4, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(5, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(6, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(7, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(8, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(9, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(10, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(11, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(12, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(13, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(14, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(15, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(16, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(17, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(18, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(19, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(20, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(21, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(22, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(23, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(24, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(25, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(26, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(27, 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(10, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(11, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(12, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(13, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(14, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(15, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(16, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(17, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(21, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(22, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(23, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(24, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(25, 3, '2023-07-18 16:20:41', '2023-07-18 16:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE IF NOT EXISTS `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`permission_id`,`user_id`,`model_type`),
  KEY `model_has_permissions_user_id_model_type_index` (`user_id`,`model_type`)
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `publishers_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Re-Logic', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(2, 'PopCap Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(3, 'Chucklefish', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(4, 'CD PROJEKT RED', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(5, 'SEGA', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(6, 'Klei Entertainment', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(7, 'Valve', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(8, 'Ninja Kiwi', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(9, 'BlueTwelve Studio', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(10, 'Ubisoft', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(11, 'Supergiant Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(12, 'CAPCOM', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(13, 'tobyfox', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(14, 'ConcernedApe', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(15, 'INTI CREATES', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(16, 'Mojang', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(17, 'FromSoftware Inc', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(18, 'Behaviour Interactive Inc', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(19, 'Nexile', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(20, 'Freebird Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(21, 'Bar Holographic Otaku', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(22, '7th Beat Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(23, 'Techland', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(24, 'sen', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(25, 'Vaka Game Magazine', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(26, 'Mads Skovgaard', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(27, 'Future Cat LLC', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(28, 'Batterystaple Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(29, 'Motion Twin', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(30, 'DUT Studio', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(31, 'HopFrog', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(32, 'Thomas Moon Kang', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(33, 'OMOCAT, LLC', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(34, 'Askiisoft', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(35, 'Pugstorm', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(36, 'Live Wire', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(37, 'AstralShift', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(38, 'Obsidian Entertainment', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(39, 'Infinity Ward', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(40, 'Humble Mill', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(41, 'Endnight Games Ltd', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(42, 'Avalanche Software', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(43, 'Facepunch Studios', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(44, 'FuturLab', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(45, 'Kinetic Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(46, 'The Indie Stone', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(47, 'Rare Ltd', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(48, 'ProjectMoon', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(49, 'Black Salt Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(50, 'Innersloth', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(51, 'Red Hook Studios', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(52, 'Tour De Pizza', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(53, 'Gearbox Software', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(54, 'Team Cherry', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(55, 'Yacht Club Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(56, 'Studio MDHR Entertainment Inc.', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(57, 'poncle', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(58, 'Nolla Games', '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(59, 'Massive Monster', '2023-07-18 16:20:41', '2023-07-18 16:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(2, 'leader', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(3, 'hr', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(4, 'finance', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41'),
(5, 'staff', 'web', 1, '2023-07-18 16:20:41', '2023-07-18 16:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'App\\Models\\User',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`,`user_id`,`model_type`),
  KEY `model_has_roles_user_id_model_type_index` (`user_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `model_type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '2023-07-18 16:20:42', '2023-07-18 16:20:42'),
(3, 'App\\Models\\User', 2, '2023-07-18 16:20:42', '2023-07-18 16:20:42'),
(2, 'App\\Models\\User', 2, '2023-07-18 16:20:42', '2023-07-18 16:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_sent` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `biography` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `social` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'None',
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_email_unique` (`name`,`email`),
  UNIQUE KEY `users_id_unique` (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `verified`, `otp`, `password`, `last_sent`, `remember_token`, `gender`, `biography`, `address`, `created_at`, `updated_at`, `social`, `social_id`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$/HDW8I2R16RWS7qiBoVvy.1o1lkPI4o0gpeSzdN/S3a/PV0IR1VtK', NULL, NULL, 'Male', NULL, NULL, '2023-07-18 16:20:42', '2023-07-18 16:20:42', 'None', NULL),
(2, 'hr', 'hr@gmail.com', 1, NULL, '$2y$10$zjvDttDVG/jfSVOoqKu7leZVvGsSmcjaq5GngOgcNCDYTSY4FRWVS', NULL, NULL, 'Male', NULL, NULL, '2023-07-18 16:20:42', '2023-07-18 16:20:42', 'None', NULL),
(3, 'Toryu Kira', 'kiratoryu122@gmail.com', 1, NULL, '$2y$10$ZA.vjBPfETVwEo6vnNhLiuervQswSAqVMOV6hhRDqO9LczYuEJCsC', '2023-07-07 16:08:54', NULL, 'Male', NULL, NULL, '2023-07-07 14:45:15', '2023-07-07 14:45:15', 'Google', '101908197917112750588');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
