-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2023 at 04:23 AM
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
  `like` int(11) NOT NULL DEFAULT '0',
  `status` enum('In Stock','Out of Stock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'In Stock',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `games_publisher_id_foreign` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `price`, `image`, `publisher_id`, `like`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bloons TD 5', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'bloons-td-5.webp', 8, 412, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(2, 'Bloons TD 6', 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.', 120000, 'bloons-td-6.webp', 8, 409, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(3, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 990000, 'cyberpunk-2077.webp', 4, 413, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(4, 'Don\'t Starve Together', 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.', 165000, 'dont-starve-together.webp', 6, 690, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(5, 'ELDEN RING', 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 800000, 'elden-ring.webp', 17, 409, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(6, 'Azure Striker Gunvolt', 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.', 165000, 'azure-striker-gunvolt.webp', 15, 375, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(7, 'Azure Striker Gunvolt 2', 'The ultra-refined 2D side-scrolling action you remember from \\\"Azure Striker Gunvolt\\\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!', 188000, 'azure-striker-gunvolt-2.webp', 15, 939, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(8, 'Azure Striker Gunvolt 3', 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!', 705000, 'azure-striker-gunvolt-3.webp', 15, 73, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(9, 'Hades', 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.', 321000, 'hades.webp', 11, 843, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(10, 'Left 4 Dead 2', 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.', 142000, 'left-4-dead-2.webp', 7, 852, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(11, 'Mega Man 11', 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\\\'s speed and power for a new twist to the satisfying gameplay the series is known for.', 398000, 'mega-man-11.webp', 12, 553, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(12, 'Persona 5 Royal', 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!', 1380000, 'persona-5-royal.webp', 5, 46, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(13, 'Plants vs. Zombies GOTY Edition', 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\\\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.', 70000, 'plants-vs-zombies-goty-edition.webp', 2, 262, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(14, 'Starbound', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'starbound.webp', 3, 465, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(15, 'Stardew Valley', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?', 165000, 'stardew-valley.webp', 14, 189, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(16, 'Stray', 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.', 319000, 'stray.webp', 9, 884, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(17, 'Terraria', 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!', 120000, 'terraria.webp', 1, 850, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(18, 'Undertale', 'UNDERTALE! The RPG game where you don\'t have to destroy anyone.', 120000, 'undertale.webp', 13, 184, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(19, 'Valiant Hearts: The Great War™', 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German', 249000, 'valiant-hearts-the-great-war.webp', 10, 121, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(20, 'Mega Man X Legacy Collection', 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'mega-man-x-legacy-collection.webp', 12, 968, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(21, 'Mega Man X Legacy Collection 2', 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'mega-man-x-legacy-collection-2.webp', 12, 702, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(22, 'Mega Man Zero/ZX Legacy Collection', 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.', 550000, 'mega-man-zero-zx-legacy-collection.webp', 12, 720, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(23, 'Mega Man Legacy Collection', 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.', 206000, 'mega-man-legacy-collection.webp', 12, 56, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(24, 'Mega Man Legacy Collection 2', 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.', 276000, 'mega-man-legacy-collection-2.webp', 12, 919, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(25, 'Dead by Daylight', 'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.', 230000, 'dead-by-daylight.webp', 18, 662, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(26, 'Jump King', 'Take up the challenge and face true high-stakes platforming in Jump King! Struggle upwards in search of the Smoking Hot Babe of legend, but explore with care; a single missed jump could lead to a long fall back down...', 165000, 'jump-king.webp', 19, 885, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(27, 'To the Moon', 'A story-driven experience about two doctors traversing backwards through a dying man\\\'s memories to artificially fulfill his last wish.', 142000, 'to-the-moon.webp', 20, 19, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(28, 'UDONGEIN X', 'Help Reisen Udongein Inaba navigate through 14 action packed stages in this exhilarating 2D Bullet Hell Platformer based on Touhou Project!', 70000, 'udongein-x.webp', 21, 607, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(29, 'A Dance of Fire and Ice', 'A Dance of Fire and Ice is a strict rhythm game. Keep your focus as you guide two orbiting planets along a winding path without breaking their perfect equilibrium.', 80000, 'adofai.webp', 22, 444, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(30, 'Dying Light', 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.', 329000, 'dying-light.webp', 23, 584, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(31, 'Mad Father', 'Witness the tale of a most foolish family. A remake of the classic horror exploration game makes its way to Steam.', 120000, 'mad-father.webp', 24, 13, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(32, 'Angels of Death', '\"Please... kill me.\" \"Help me get outta here, and I\\\'ll kill you.\" ~ Angels of Death is a psychological horror-adventure game, consisting of four episodes.', 120000, 'angels-of-death.webp', 25, 267, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(33, 'Blaster Master Zero', 'Mutant scum never learn! Blaster Master Zero makes its Steam debut! Blaster Master Zero is a 8-bit style top-down & sideview 2D action-adventure game that hearkens back to the golden age of the NES. The game features new gameplay elements such as improved gameplay, and a more robust scenario.', 120000, 'bmz1.webp', 15, 522, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(34, 'Blaster Master Zero 2', 'Join Jason, Eve, and Fred on an intergalactic journey! The side-scrolling/top-down hybrid action adventure title \"Blaster Master Zero\" returns with its long-awaited sequel! Experience the yet-untold story of Jason and Eve after defeating Earth\\\'s mutant scourge in \"Blaster Master Zero\".', 120000, 'bmz2.webp', 15, 710, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(35, 'Blaster Master Zero 3', 'The Pinnacle of Mutant Blasting Action Is Here! — Blaster Master Zero 3\\\'s hybrid of sidescrolling and top-down action is back for its 3rd chapter, and more intense than ever before!', 296500, 'bmz3.webp', 15, 623, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(36, 'Necesse', 'Necesse is a top-down sandbox action-adventure game in a procedurally generated world. Progress your character\\\'s gear and settlement through fighting, mining, exploring, crafting, trading and more!', 120000, 'necesse.webp', 26, 628, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(37, 'OneShot', 'OneShot is a surreal top down Puzzle/Adventure game with unique gameplay capabilities. You are to guide a child through a mysterious world on a mission to restore its long-dead sun. The world knows you exist.', 142000, 'oneshot.webp', 27, 392, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(38, 'Impostor Factory', 'A bonkers time-loop tragicomedy murder mystery thriller featuring multiple casualties and a suspicious cat, from the creator of To the Moon & Finding Paradise.', 142000, 'impostor-factory.webp', 20, 302, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(39, '20XX', '20XX is a roguelike action platformer that you can play with a friend. Jump and shoot your way through ever-changing levels, collect awesome new powers, and battle mighty bosses in the name of saving the human race maybe!', 165000, '20xx.webp', 28, 154, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(40, '30XX', 'Jump, shoot, and slash your way through 30XX, the roguelike action platformer you can play with a friend! Explore lush, ever-changing worlds that mix precise platforming with fevered combat. Destroy fearsome Guardians. Master unique Powers. Rediscover the thousand years we\\\'ve lost.', 188000, '30xx.webp', 28, 20, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(41, 'Gunvolt Chronicles: Luminous Avenger iX', 'Experience the apeX of 2D action! A new era of 2D action begins now! Get ready for high-speed, stylish 2D side-scrolling action like never before. Inti Creates presents the ultimate in classic 2D action with \"Luminous Avenger iX\"!', 165000, 'laix1.webp', 15, 638, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(42, 'Gunvolt Chronicles: Luminous Avenger iX 2', 'Break into the new apeX of 2D action! INTI CREATES is proud to present new apeX of cutting-edge 2D action with Luminous Avenger iX 2!', 274000, 'laix2.webp', 15, 194, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(43, 'Dead Cells', 'Dead Cells is a rogue-lite, metroidvania inspired, action-platformer. You\\\'ll explore a sprawling, ever-changing castle... assuming you’re able to fight your way past its keepers in 2D souls-lite combat. No checkpoints. Kill, die, learn, repeat. Regular free content updates!', 220000, 'dead-cells.webp', 29, 209, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(44, 'The Death | Thần Trùng', 'The Death | Thần Trùng is a Viet Nam psychological horror adventure game made by three Vietnamese people from a tiny indie studio. The game takes place in Hanoi city in 2022.', 75000, 'the-death.webp', 30, 382, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(45, 'The Forest of Drizzling Rain', 'Alas, it was the \"promised place,\" where Shiori was never meant to go. Finally, a remake of The Forest of Drizzling Rain, that masterpiece of an exploration horror game with multiple endings from the creator of the big hit Angels of Death!', 175000, 'the-forest-of-drizzling-rain.webp', 25, 349, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(46, 'Forager', 'The highly popular and quirky \"idle game that you want to actively keep playing\". Explore, craft, gather & manage resources, find secrets and build your base out of nothing! Buy land to explore and expand!', 188000, 'forager.webp', 31, 714, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(47, 'One Step From Eden', 'Build a powerful deck, cast spells on the fly, battle evolving enemies, find game-changing artifacts, make friends or make enemies, just make it to Eden.', 188000, 'one-step-from-eden.webp', 32, 722, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(48, 'OMORI', 'Explore a strange world full of colorful friends and foes. When the time comes, the path you’ve chosen will determine your fate... and perhaps the fate of others as well.', 188000, 'omori.webp', 33, 846, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(49, 'Katana ZERO', 'Katana ZERO is a stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. Slash, dash, and manipulate time to unravel your past in a beautifully brutal acrobatic display.', 205000, 'katana-zero.webp', 34, 105, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(50, 'Core Keeper', 'Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.', 215000, 'core-keeper.webp', 35, 188, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(51, 'ENDER LILIES: Quietus of the Knights', 'ENDER LILIES is a dark fantasy 2D action RPG about unraveling the mysteries of a destroyed kingdom. On this sorrowful journey, encounter horrific enemies against whom a moment of inattention could be fatal. Overcome these hardships and seek the truth with the help of fallen knights.', 240000, 'ender-lilies.webp', 36, 997, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(52, 'Pocket Mirror ~ GoldenerTraum', 'Delve into the enthralling world of Pocket Mirror ~ GoldenerTraum, the acclaimed RPG Maker gothic horror game that\\\'ll take you on a moving journey of self-discovery.', 260000, 'pocket-mirror.webp', 37, 239, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(53, 'Street Fighter™ 6', 'Here comes Capcom’s newest challenger! Street Fighter™ 6 launches worldwide on June 2nd, 2023 and represents the next evolution of the Street Fighter™ series! Street Fighter 6 spans three distinct game modes, including World Tour, Fighting Ground and Battle Hub.', 1322000, 'street-fighter-6.webp', 12, 156, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(54, 'Grounded', 'The world is a vast, beautiful and dangerous place – especially when you have been shrunk to the size of an ant. Can you thrive alongside the hordes of giant insects, fighting to survive the perils of the backyard?', 649000, 'grounded.webp', 38, 507, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(55, 'Call of Duty®: Modern Warfare®', 'Experience a visceral Campaign or assemble your team in the ultimate online playground with multiple Special Ops challenges and a mix of Multiplayer maps and modes.', 1490000, 'call-of-duty-modern-warfare.webp', 39, 271, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(56, 'Call of Duty®: Modern Warfare® II', 'Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.', 1799000, 'call-of-duty-modern-warfare-2.webp', 39, 220, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(57, 'Oblivion Override', 'Embark on a raw, fast-paced odyssey in Oblivion Override. Master 25+ weapons, embody the killerbot, and conquer war-torn wastelands. Inspired by Castlevania and Roguelikes, this action-packed adventure will test your mobility to the limit. Evade, dash, and dance amid shifting dungeon walls.', 239000, 'oblivion-override.webp', 40, 606, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(58, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.', 188000, 'the-forest.webp', 41, 650, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(59, 'Sons Of The Forest', 'Sent to find a missing billionaire on a remote island, you find yourself in a cannibal-infested hellscape. Craft, build, and struggle to survive, alone or with friends, in this terrifying new open-world survival horror simulator.', 385000, 'son-of-the-forest.webp', 41, 535, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(60, 'Hogwarts Legacy', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 990000, 'hogwarts-legacy.webp', 42, 212, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(61, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 510000, 'rust.webp', 43, 625, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(62, 'MONSTER HUNTER RISE', 'Rise to the challenge and join the hunt! In Monster Hunter Rise, the latest installment in the award-winning and top-selling Monster Hunter series, you’ll become a hunter, explore brand new maps and use a variety of weapons to take down fearsome monsters as part of an all-new storyline.', 881000, 'monster-hunter-rise.webp', 12, 981, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(63, 'Monster Hunter: World', 'Welcome to a new world! In Monster Hunter: World, the latest installment in the series, you can enjoy the ultimate hunting experience, using everything at your disposal to hunt monsters in a new world teeming with surprises and excitement.', 550000, 'monster-hunter-world.webp', 12, 907, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(64, 'PowerWash Simulator', 'Release the Pressure with PowerWash Simulator! Wash away your worries with the soothing sounds of high-pressure water. Fire up your power washer and blast away every speck of dirt and grime you can find, all with the simple satisfaction of power-washing to a sparkling finish.', 570000, 'power-wash-simulator.webp', 44, 426, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(65, 'Phasmophobia', 'Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and it’s up to you and your team to use all the ghost-hunting equipment at your disposal in order to gather as much evidence as you can.', 160000, 'phasmophobia.webp', 45, 515, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(66, 'Project Zomboid', 'Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..', 260000, 'project-zomboid.webp', 46, 563, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(67, 'Sea of Thieves 2023 Edition', 'Celebrate five years since Sea of Thieves\\\' launch with this special edition, including a copy of the game with all permanent content added since launch, plus a 10,000 gold bonus and a selection of Hunter cosmetics: the Hunter Cutlass, Pistol, Compass, Hat, Jacket and Sails.', 400000, 'sea-of-thieves.webp', 47, 622, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(68, 'Devil May Cry 5', 'The ultimate Devil Hunter is back in style, in the game action fans have been waiting for.', 705000, 'devil-may-cry-5.webp', 12, 865, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(69, 'Lobotomy Corporation | Monster Management Simulation', 'A roguelite monster-management simulation inspired by the likes of the SCP Foundation, Cabin in the Woods, and Warehouse 13. Order your employees to perform work with the creatures and watch as it unfolds; harness greater energy, and expand the facility.', 220000, 'lobotomy-corporation.webp', 48, 380, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(70, 'Library Of Ruina', '\"May you find your book in this place.\" Combat between the guests and the librarians breaks out as if it were on a stage. Defeated guests turn into books, and the Library grows onward. And eventually, get your hands on… The one singular, perfect book.', 250000, 'library-of-ruina.webp', 48, 695, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(71, 'Garry\'s Mod', 'Garry\\\'s Mod is a physics sandbox. There aren\\\'t any predefined aims or goals. We give you the tools and leave you to play.', 120000, 'garry-mod.webp', 43, 207, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(72, 'DREDGE', 'DREDGE is a single-player fishing adventure with a sinister undercurrent. Sell your catch, upgrade your boat, and dredge the depths for long-buried secrets. Explore a mysterious archipelago and discover why some things are best left forgotten.', 500000, 'dredge.webp', 49, 209, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(73, 'Among Us', 'An online and local party game of teamwork and betrayal for 4-15 players...in space!', 70000, 'among-us.webp', 50, 111, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(74, 'Dragon Marked For Death', 'Dragon Marked For Death is a 2D side-scrolling action RPG game where up to 4 players can play together in online multiplayer. The characters, known as the Dragonblood Clan, have forged a pact with the Astral Dragon, which granted them special new powers.', 310000, 'dragon-marked-for-death.webp', 15, 640, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(75, 'Darkest Dungeon®', 'Darkest Dungeon is a challenging gothic roguelike turn-based RPG about the psychological stresses of adventuring. Recruit, train, and lead a team of flawed heroes against unimaginable horrors, stress, disease, and the ever-encroaching dark. Can you keep your heroes together when all hope is lost?', 321000, 'darkest-dungeon-1.webp', 51, 1000, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(76, 'Darkest Dungeon® II', 'Darkest Dungeon II is a roguelike road trip of the damned. Form a party, equip your stagecoach, and set off across the decaying landscape on a last gasp quest to avert the apocalypse. The greatest dangers you face, however, may come from within...', 470000, 'darkest-dungeon-2.webp', 51, 876, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(77, 'Pizza Tower', 'Pizza Tower is a fast paced 2D platformer inspired by the Wario Land series, with an emphasis on movement, exploration and score attack. Featuring highly stylized pixel art inspired by the cartoons from the \\\'90s, and a highly energetic soundtrack.', 188000, 'pizza-tower.webp', 52, 213, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(78, 'DARK SOULS™: REMASTERED', 'Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.', 850000, 'dark-souls-remastered.webp', 17, 216, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(79, 'DARK SOULS™ II', 'Developed by FROM SOFTWARE, DARK SOULS™ II is the highly anticipated sequel to the gruelling 2011 breakout hit Dark Souls. The unique old-school action RPG experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.', 650000, 'dark-souls-ii.webp', 17, 270, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(80, 'DARK SOULS™ III', 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!', 970000, 'dark-souls-iii.webp', 17, 190, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(81, 'Borderlands Game of the Year', 'Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op, Borderlands is a breakthrough experience that', 499000, 'borderlands-1.webp', 53, 354, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(82, 'Borderlands 2', 'The Ultimate Vault Hunter’s Upgrade lets you get the most out of the Borderlands 2 experience.', 334500, 'borderlands-2.webp', 53, 303, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(83, 'Borderlands 3', 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds and enemies as one of four new Vault Hunters.', 990000, 'borderlands-3.webp', 53, 182, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(84, 'Hollow Knight', 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.', 205000, 'hollow-knight.webp', 54, 209, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(85, 'Shovel Knight: Treasure Trove', 'Shovel Knight: Treasure Trove is the complete Shovel Knight collection, containing all 5 games in the epic saga! Dig, blast, slash, and bash your way through a fantastical, 8-bit inspired world of pixel-perfect platforming, memorable characters, and world-class action-adventure gameplay.', 310000, 'shovel-knight-treasure-trove.webp', 55, 176, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(86, 'Shovel Knight: King of Cards', 'Step into the gilded boots of King Knight in the biggest and most regal Shovel Knight game of them all! Leap, Shoulder Bash, gather new subjects, and strategize your way through this prequel in your quest to become King of Cards!', 120000, 'shovel-knight-king-of-cards.webp', 55, 596, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(87, 'Shovel Knight: Specter of Torment', 'Take control of Specter Knight, servant to the Enchantress, in a quest to recruit a cadre of knights and create the Order of No Quarter. Experience perfect platforming, world-class visuals, impeccable stage design, incredible music, and even meet a friend or two in Shovel Knight: Specter of Torment!', 120000, 'shovel-knight-specter-of-torment.webp', 55, 255, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(88, 'Shovel Knight: Shovel of Hope', 'Shovel Knight is a sweeping classic action-adventure game with awesome gameplay, memorable characters, and an 8-bit retro aesthetic. If you love games with perfect platforming, beautiful art, infectious music, lovable bosses, humor and levity, and real heart… Shovel Knight is for you!', 165000, 'shovel-knight-shovel-of-hope.webp', 55, 204, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(89, 'Cuphead', 'Cuphead is a classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.', 188000, 'cuphead.webp', 56, 61, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(90, 'Vampire Survivors', 'Mow down thousands of night creatures and survive until dawn! Vampire Survivors is a gothic horror casual game with rogue-lite elements, where your choices can allow you to quickly snowball against the hundreds of monsters that get thrown at you.', 70000, 'vampire-survivors.webp', 57, 60, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(91, 'Noita', 'Noita is a magical action roguelite set in a world where every pixel is physically simulated. Fight, explore, melt, burn, freeze and evaporate your way through the procedurally generated world using spells you\\\'ve created yourself.', 188000, 'noita.webp', 58, 387, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(92, 'Cult of the Lamb', 'Start your own cult in a land of false prophets, venturing out into diverse and mysterious regions to build a loyal community of woodland Followers and spread your Word to become the one true cult.', 400000, 'cult-of-the-lamb.webp', 59, 857, 'In Stock', '2023-07-17 04:21:32', '2023-07-17 04:21:32');

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
) ENGINE=MyISAM AUTO_INCREMENT=605 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `cd_key`, `game_id`, `is_redeemed`, `is_expired`, `expire_date`, `created_at`, `updated_at`) VALUES
(1, 'SSUKE-HWPVD-ZYAVN-D6ATE-GHWQB', 1, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(2, 'PYEUL-RETVP-7L245-TE7QQ-Z2ULE', 1, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(3, 'FTOPA-OFH64-V9GSR-OGNIJ-7XIWV', 1, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(4, 'EDRWP-Z9URD-OERNQ-M4XNL-IJC02', 1, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(5, 'G6DVA-JBKKA-U7RLP-DD8KL-6WVQG', 1, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(6, 'WC4IE-HSUDQ-NB1OY-N0VAI-XXTLX-L1WPZ-CBZWX-YC4UF', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(7, 'AFE6J-KPIGO-JKLUC-DYZJM-ZJFHT-JMT4Q-C5SLQ-FTHSA', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(8, 'OJR1P-6KMWQ-MLWFL-L4I0T-OIXVT-CQC8C-B8CZR-RAS6W', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(9, 'ATINE-YNYUD-JOVUM-PBRNN-4JECK-D8T1D-2VCJZ-JYEFJ', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(10, 'FPKXK-76BA9-9BMXI-QY2ER-UQGX7-7QABH-YGIMB-8INCQ', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(11, 'ANBHP-RQCS8-XVJAE-DOAX9-OIDX3-I2PVE-1N22P-B5OML', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(12, 'OP05A-TZTHF-GGNZE-O8AQ5-CE4DA-YDBEK-K6PTE-PMPZ6', 2, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(13, '2PC1A-VPI7W-K2SSF-IROFO-8ANXH', 3, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(14, 'CHKCF-AIEHR-MKCQE-JRX7B-SNCS1', 3, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(15, 'EDYOM-J4DLE-H10B0-SIWHW-FEXXO', 3, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(16, 'DA1QR-ZVCFT-GS21E-ESO8Z-40CRU', 3, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(17, 'DTU6P-IQ38B-HHBME-DCXJA-CC4DH', 3, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(18, '44N7X-3LSQZ-HB1OX-NDWUD-EEDE5-EFLIE-2TFOR-HIWBO', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(19, 'GGFFN-QNDSZ-3XGAK-SMKXA-OLSVD-MVA5R-OIQ7Q-6K0JA', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(20, 'N5QMP-YXWDN-IB9FY-IHNJB-SLSEB-WTVYK-6WICC-IHSTF', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(21, 'QCOJX-YMMC1-WA0TE-DKLQW-CXGGE-2CDLE-1O53Z-NBORH', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(22, '3VXN9-EFYGZ-OEYVT-FUADQ-WVHMN-YHM8C-3MXI3-Q16B1', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(23, 'MLJGX-SWBF1-1CIPM-VABNQ-LPH0T-JUFRI-FIDM5-RQ31Q', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(24, 'EOJVT-VOZJG-Y4XNI-NIOXN-EECZL-ABY22-GLJUG-TP0LY', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(25, 'IFO5M-T8R2Q-4HOUP-OFYNT-DZEWN-8EGKK-PFRGY-O38ID', 4, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(26, 'LWDDT-CCFHL-8IT70-HTRAV-IIHWL', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(27, 'GRXKP-DEZCF-WMWDV-Y2ZB0-GUSS2', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(28, 'C95FS-TEBV6-QGPWC-BATKO-4CYZ5', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(29, 'J1Q0S-G5W6W-YAWB3-5BN9S-0BDTG', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(30, 'YBJDX-2SVEF-YUH8G-MO5QH-IWZ2I', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(31, 'EWDZE-TDTY3-R4N3H-LXDKH-ZHWID', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(32, '4THWN-W8HIX-4ILOP-AZPBB-JMUDP', 5, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(33, 'NRVZD-GST8V-LCHOA-W5GBG-HX60U-NMIHP-XOLMG-DJROZ', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(34, 'E5REB-2I4HT-HDAOA-HV0C9-SQ7CI-U7DBI-OJLAB-IXIE5', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(35, 'LQAEQ-B2NQD-IU1ZR-HXOFY-OV4RP-MCAG4-O458M-NMLAY', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(36, 'KTPJU-32W0I-NMDUV-KWREJ-W3ZAK-9UHXB-JNTM7-H8RWS', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(37, 'P16RD-C0SLF-QS2LS-CISM8-RWT2L-VMK3E-PPHFM-8UGFA', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(38, 'ZKTZP-SE6PJ-GYBFR-0I6FF-LFZ9Z-IFWK0-MXQEU-OF6WF', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(39, 'J8V36-SRU0F-SRNDT-TUBWY-6NF3P-LLIJ0-OXLX8-7O5IY', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(40, 'MHCBB-VX5DA-PS93O-OXJ0G-CBAKK-9MIBE-TEZGC-UDNLR', 6, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(41, 'PRMHJ-53STI-P5FVG-2SI4R-Y50DN-1PJHE-0NGOA-U7ABQ', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(42, '7GEL9-2LFS5-5XSEH-IAQR0-MJNIG-BMTJY-9EXAC-2QKUM', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(43, 'S208M-WLQX4-ZI22W-TRY3M-WYYWK-I7UIV-TVKKK-YHP0P', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(44, 'DRISF-8SIA1-PSHE2-FTIIG-HEE44-AVW6B-ZRJGR-ECGMK', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(45, 'G8RON-EKRK1-OPXFM-AQ3AA-QC8FC-HVSBW-KFKL4-KHS1S', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(46, 'H65WP-D6SKP-MC1SM-97DU4-1FEZR-ALSZT-AJLLV-OS6NN', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(47, 'TF289-YJ1T1-GQORT-NQHXZ-NUNLF-O75KA-FRQ1V-CAGLU', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(48, 'DUJS6-WYYPN-USRFU-HV04E-KJOEF-HVBOY-NZTRG-EWJ3J', 7, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(49, 'NLZNU-ZC5XS-H7BJR-IQ08K-U8WJ5', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(50, 'PUHBC-TPX7X-ZUVCG-CM0WL-BDEQV', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(51, 'LYEWZ-0KCW2-1EUHZ-2PNLC-ACNZN', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(52, 'DJXBN-HN5VR-S3FOX-H5PZG-5CW0I', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(53, '5CD9B-EEEVU-4FI0P-GDPE8-7Z492', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(54, 'XO61Y-PRTNF-2RZ2C-KLIUT-E1XFW', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(55, 'MHJKU-FI4DP-58MYE-7CM5N-NO2VW', 8, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(56, 'NQPF0-CN4PL-R9UXZ-7BOD2-PGVJN', 9, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(57, 'UX6KB-7V7RC-KN7BE-8YOAL-UEIIF', 9, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(58, 'DHL4D-RNLSV-YYCRI-93JVY-GJHRF', 9, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(59, 'D5HLK-KVCPC-9BLXK-X4VMM-A7F8A', 9, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(60, 'GIOYM-LNWI6-ZBLZY-KPPI9-QLCU7', 9, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(61, 'FG2LT-FSRP2-N9Z8N-4K0RZ-QRLBD', 9, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(62, '8FHN4-VT2XG-H6JIK-LFDRN-S4H6J', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(63, 'B4ZIM-TRPJI-LGYBU-RG5PK-ON8KG', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(64, '5J3YF-DRWFY-JEXBI-13WCL-CKPQR', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(65, 'TFD0V-GTNTL-ZNOAN-TU8FB-HT48Z', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(66, '9ZTXV-OQPOO-GH1YK-XMJV8-RRK77', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(67, 'JTAIJ-X20WK-KJVJR-TUVCI-N1OV2', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(68, 'AKVRB-HUWTV-NXM9C-BUQAQ-1PD3I', 10, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(69, 'POJTT-QGKZH-6HXI0-HZXRM-7JD9M-DQZ6A-46G60-PQT71', 11, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(70, '0FZ6P-QQKTD-XPQTW-HD5YA-SMX4X-VV4TQ-SLNTP-H9GFM', 11, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(71, 'FXVAA-ZEIBW-SJE2B-PGQFQ-DYA4H-6Z07C-SZD9C-M3LDP', 11, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(72, 'DGYRJ-N1YQG-WKLYN-ZXZPK-KIDY0-TOHSX-RYZMZ-YDKJX', 11, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(73, 'G0CQQ-JACPP-O8BQA-DVZLP-E80PJ-DJXZ9-ZRNXF-NUUBQ', 11, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(74, 'VJRTI-OSH40-Z69YZ-B37OW-I1JOX-PTEBS-MCIHR-SJJCX', 11, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(75, 'WTNMJ-LHVQT-MGUSE-YNVOD-2UCZU-6HIAG-S8CRO-MQER9', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(76, '0FRDV-YD6YS-AEJI5-EJZHC-AOLZZ-SCWR0-TCUFY-YUAY0', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(77, 'SQZO7-XHN87-1CODB-ZJBY0-KUN4S-22ALA-ZVTTC-T2DGN', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(78, 'SFIXC-JSHSY-X8PCJ-LCWMQ-FHYAL-0EQMX-V24ON-DZEB8', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(79, 'H8VJO-EVBBT-6PHDD-T5LYN-NUBBN-CHKMK-WOXI5-AXFZ4', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(80, 'LFHK8-ASPFU-DD3SC-9WVZ9-QYP3C-RYPBJ-URZEF-EP8TC', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(81, 'ZEPUG-QSSMD-GELYC-M3K4G-NNO9N-Q1SN9-9VXWX-X6FNK', 12, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(82, 'GRYAV-SVIE3-EP1NA-DVRIW-8Y3FW', 13, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(83, '8SBUO-7FEFN-DYBUN-1PWWA-3ZV2B', 13, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(84, 'HP27D-ENH2F-P0YBU-7WUSS-Z5ASV', 13, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(85, 'VJD7U-HRQ7L-C4RWA-WQM9C-EXPN4', 13, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(86, 'YUO8R-SZDUG-DEWUF-BDA3B-ASKBT', 13, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(87, '2KG1J-WUX2K-FRGRI-CC2JW-MR0RM-M7LWZ-FQVQM-LFOHS', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(88, 'HBWZT-BJL2T-DFDZU-TUN4C-DGXX2-A48QG-GVIVO-CIZKE', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(89, 'OWIVM-NYIGT-X5TTA-YSIZS-LD0JQ-LFOEC-0JT1W-N6XGG', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(90, 'VJOHJ-OCC0E-8CA8K-9ZGIU-2CTUA-BHYBL-8H9DS-Q9G2Q', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(91, 'VXUT3-UWTQH-OSJQO-F3EWQ-FLJZM-VYGLU-YQ5BK-HER9A', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(92, 'PN6PG-W5Z25-VBICZ-PKTYD-IMN85-IUCWV-9VEME-Y2PP7', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(93, 'UBV2O-EJDM5-ZYVCJ-LUCTP-SA6I7-QTYAD-B9GU6-2RZOB', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(94, 'RUJGH-F62PN-P73DT-BIBB6-ZFS5I-EPMJB-NB5CX-OES9Y', 14, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(95, 'HMI6A-VATMS-HLJDV-F7UW5-YJCTU', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(96, 'NYORJ-KPY1U-AM7ET-IHXG8-XFW2N', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(97, '9LSFW-2IDAP-H3VLE-T5JT2-RFFF4', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(98, 'ADWAA-932U4-03MGP-OAE1O-CEFDC', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(99, 'MSPBF-5H9UU-LA7UC-GVFGV-FA9WP', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(100, 'WGBMF-CSMRU-O53XM-GO452-FXOPF', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(101, 'CAOHH-GSQWA-GV1FJ-BVW5H-QT3TI', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(102, 'S3SLL-YSRWO-NGMJE-TFTEK-CYK7D', 15, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(103, 'ZJAH1-949TK-KCCGX-9ZCDW-HOMOL', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(104, 'FPXZF-CUCX0-O22YU-BUUSS-JPWQQ', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(105, '5RVSY-WGX02-AS5X2-PZ4QO-TFVMX', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(106, 'ONIRM-RINAK-UYJFD-3ACEA-HI1RH', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(107, 'ZOWJW-EEBCG-UY0GJ-YZJKA-S2B9D', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(108, 'Z9PHJ-RPXM5-SVCVY-RPMEP-DGHCB', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(109, 'MORMD-RMVPG-AJEQK-SPXQH-ZXRRW', 16, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(110, 'YQEVD-ENALD-WEOEM-UUMB1-JLPWZ-BDUQA-ML1JO-630E2', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(111, 'DXVXN-KUBHX-16MO9-LIFLG-78WWI-2RZSU-UXKID-GCWPS', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(112, '8XQBO-C2JXN-C1IH0-WNUXP-8CQ7H-TCCFT-CDVLE-OYL8H', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(113, 'WMSTI-TRQHL-ZGANS-84N3B-EP6JY-FMOGL-ZGRYS-EIDDF', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(114, 'UEE14-VBGKG-AA6M5-PONOX-LYRSS-CGQDE-JIWVZ-OTQPO', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(115, 'FUBJ8-U0BR0-2R0W8-18KT5-GMFTL-RZ3OD-A7M91-KUYA7', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(116, 'WZTMT-1RE9J-DVKSB-UF7WS-CU7YS-FFC5F-W3MWS-XBQBN', 17, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(117, 'TWABM-8DDGI-BOFVW-OYUY0-YQBHD', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(118, 'NU0M7-XSKAH-MA5G4-92CLZ-XOKRV', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(119, '53YIX-RJM3J-JH9PQ-EOIKX-MJPED', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(120, 'KML7T-PGFWY-D3FLC-PRXXD-FAIPT', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(121, 'GWRRU-TQXTP-WKK5P-1TFQT-YOYIE', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(122, 'X3JLU-XL5YU-L4VMA-TPJ11-JSTHW', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(123, 'UF10M-KEQMK-5Q0RB-UK5DS-L1PZH', 18, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(124, '7BWXA-RN8LL-MM7MQ-E9OWF-2ADB7-TLAAB-U2XGR-SB6RN', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(125, 'SKBOT-ZTWQS-Y3WSS-TO5D3-VLW2L-UHY1E-RG0S6-LUAQY', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(126, 'EVHIR-RTWCE-UNAS1-FTFES-I2HTH-6CORH-B5CLC-CLCXN', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(127, '861HS-TNSVN-F1W8T-6AWVL-MEA3X-0GDFM-SNTFW-3BBE7', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(128, 'WJB78-CLUGE-8VUJ0-SZPLY-UQ3W5-YYE4L-IYB7S-EHPTQ', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(129, 'BX3XG-YWRB7-Q7TMU-L4WZQ-KTCAT-O13OT-VCHQV-NL2GD', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(130, 'MCMNX-TTXKR-76EK2-8Q9UY-6XWWX-ZQUDV-1XKOI-LEJZL', 19, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(131, 'QJ2WA-8F8DC-VVV3D-5MYYI-RUDOQ', 20, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(132, '6DRZ4-7WCML-KB3L3-PSRLA-45UJP', 20, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(133, 'GINWC-XGZXG-8JZT8-PKZQB-RUHED', 20, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(134, '5M1LJ-DCHMQ-C0E9S-NBTXP-VPU2A', 20, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(135, 'OCTZG-UTQL8-W51RN-GQQJ3-98CRB', 20, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(136, 'DLW01-MYCPE-E1SQD-LTJA5-ZNZH0', 20, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(137, '94CL4-6ZPHT-AUZEA-CYBPF-QNO29', 21, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(138, '7N63X-AKDIB-ODWKX-FAHRO-TQHOB', 21, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(139, '6OD2T-FJQTU-NMNGX-Y4QW9-LDELR', 21, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(140, 'YLU32-PWSBS-QXAQC-G4TM9-IOA8S', 21, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(141, 'AWEWO-MACRP-F0B3D-C6O5P-3KCOJ', 21, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(142, 'P3KKB-9FFK5-TZAW2-ZUNLC-MGIKS-0IN5D-DU2BE-PHQFH', 22, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(143, 'ZZVSN-6HRUS-JEYNL-56XOP-LPTMF-OFSJV-DBNJZ-NWCUI', 22, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(144, 'IDJP6-HMOXO-GREL9-1RNUD-34UD8-4N0CP-ZFJX3-GIISE', 22, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(145, 'FFKEF-IZTOR-WDPT7-TDXAD-NHNZJ-K4CMI-QZNKP-KNN0Q', 22, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(146, 'BH6TX-TW0K0-MGC2L-S6DC5-NB8LY-ZUVEE-RECNX-X6PYI', 22, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(147, 'LHS3W-TZBQ7-AD8NT-HKR5J-Y9BSZ', 23, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(148, 'WF7UL-OFKFB-32YEE-V4YMU-72N4Q', 23, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(149, 'SVIUN-NMLM9-TXNMF-W1RNJ-IIORW', 23, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(150, 'ULLFA-YK8M7-69MOC-GNRO7-HOKSW', 23, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(151, '2IGGT-CQA7L-QIZYB-2ISS2-L7WUV', 23, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(152, 'SUNH7-GNCFT-HTYSX-WVXFS-H5NJD', 24, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(153, 'Z5FXJ-8V2JY-VYTTA-FKIQQ-AW80L', 24, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(154, 'DHJV5-OUIJ3-TQSKO-YAKKM-AQRKR', 24, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(155, 'KR4RE-FE4SX-KXD0Z-7UHLM-BTK4P', 24, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(156, '4ZHHQ-WRDL1-IHEA7-PAQJP-SELOL', 24, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(157, 'XTO9X-XR4WM-7GDKX-0UUB3-NVLOR', 24, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(158, 'ZUELZ-EHSZ7-4RFWC-3KEGI-BB7F6', 25, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(159, 'WW2V3-BSBDV-ZHENM-0UVSE-P73ZJ', 25, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(160, 'WYDLC-CTABU-PN7HY-YF9HG-IVMOZ', 25, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(161, 'KXGE9-OWM09-5KO8P-C6DDO-J9W3A', 25, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(162, 'L2MIB-P1SJO-G1H2Y-YWJMJ-OHSX3', 25, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(163, 'XJGYM-5XSLK-OO817-TSXRP-L6EJL', 26, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(164, '4Z8WQ-YSJB5-MTOTZ-W0M3Q-XJK9V', 26, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(165, 'KVLDZ-ERF7U-CAVBG-3XXVH-DJBTV', 26, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(166, 'OLJBG-0J9ZK-TRHBE-JKDUH-EZDF1', 26, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(167, 'FRC6B-N7E8E-SRLSI-XGLCW-PRL7G', 26, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(168, 'RR8PC-BCTW3-SSTG3-SLPX3-FML6F', 26, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(169, 'ZPXGQ-SQGTT-NLIFJ-72TZU-1MEC5-CTXUN-CR4D6-DIHPB', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(170, 'KJNKX-I4IBM-1MZKG-5QTZZ-MA4QT-1BBTR-6IZKY-GQ5ZY', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(171, 'ZMDRC-WMXOR-IOGLI-ZIMYG-XRNTM-J9VDR-9Y8I7-2I75U', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(172, 'I8QXX-FZMZA-321VS-JJVAB-GECGK-5MPMJ-DQFXS-T9AX8', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(173, 'VXN0R-AKGXP-WJZYF-HJZI3-1QE4X-CL6T1-S27LA-NCPHM', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(174, 'XBPAX-YLTDP-WRHJQ-GIN8M-US478-PUG82-NXDKN-DIETY', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(175, 'GTKYA-MKGXJ-G3RUJ-81O1V-LRVOI-TINND-8FNPR-SHR8D', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(176, '2AK1F-GIQBB-3LEPO-B5N2G-71DUM-HSV5E-VY7HH-XRPDR', 27, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(177, 'DF2SN-DGWXK-B5UIK-QKOTF-VYJDU', 28, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(178, 'HHZT4-W35BN-8BOHI-MYJ9S-L6VW5', 28, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(179, 'EKUJU-FBCD5-C0NC3-I23ZG-UCMTQ', 28, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(180, 'PRSCU-H7JZ7-C18NK-XN23K-Z1UDK', 28, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(181, 'CKGU9-0F9CA-VKJ1A-GQDU0-LUWGC', 28, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(182, 'O7G5R-LNSBP-JUGCY-MOAZ9-PTDHE', 28, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(183, 'LZOBO-WRKUF-V7E0Y-XFPKE-VAPCX-HEZDP-MFQOH-3G5TY', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(184, 'AWQ0E-KNM7H-Y3I5T-7S52B-BXGQQ-N5RH7-AXVFW-QPIH2', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(185, 'QAFIC-3F6WN-TNBRN-UGLJI-GHAOU-PCP1A-VKA1G-18RJP', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(186, 'HT28N-I54XX-FSHY8-MNVJF-XMZD2-8LTKX-DRVZS-G4JXY', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(187, 'UP9VJ-EHI6D-TIQ7X-BPJXQ-FEOVS-4LPHR-X5HFK-3MB2Y', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(188, '5KHJR-HFAHS-TMGY8-8LMPD-WSXQ3-YWB1S-N8PRO-FPUV1', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(189, 'UAKVI-RLTAG-F3ZVW-PBGRV-ZUQOZ-DWGJS-VLP2V-WWEE2', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(190, '2VUBM-LUUM2-TBFIN-GW6NI-4O7IZ-T2RKU-AHKJI-IOIZR', 29, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(191, 'BNMEB-FY5HW-C7YBW-WJEZQ-ZTYNU', 30, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(192, 'YQPG5-R4P8W-MQ7XG-XER0C-THXA4', 30, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(193, '4TAYS-GBDYE-J2E2V-CSJGY-DCDSJ', 30, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(194, 'IVIEE-4XACM-UYESH-UBC0Y-YDPK4', 30, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(195, 'BILVK-TX8DI-IPMRY-DTCRI-E4204', 30, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(196, 'TF8SE-ECRRA-RT7SQ-FQFRN-PR3OX', 30, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(197, '0AKHH-QCVUX-NIUDB-GO2G8-M3LDD-UIWLS-KXIKB-V49SK', 31, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(198, 'XFTL5-ONSMR-B1CDR-0T2LI-GY5J7-ZGZBO-90SNW-VREEY', 31, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(199, 'RX77P-YCH5C-TSRT0-D5GDR-OMGKX-RZOB8-8GH9U-0NHRL', 31, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(200, 'P5LER-EF2VQ-QLQZI-9CHOX-X6M09-KXOOX-2XUMP-Y0EWR', 31, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(201, 'XYWVQ-ZO9WA-XN1J4-VTKHG-9AWD2-WNWGX-NPVWD-PKXAK', 31, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(202, 'ID7UP-CIPQQ-VM1Q1-ONZ3U-BDSKI-WVKYK-NF77I-TYQXV', 31, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(203, 'QDSSS-NRVCS-LAHNC-ESGL7-NTIXT', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(204, 'PQO4C-J9F1Z-0X0SC-SO2JF-R9NUU', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(205, 'OPTAI-VBFJL-LKGUC-PUNAR-V25KE', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(206, 'APPVU-S5GMK-JNP0G-XMSME-3OXYT', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(207, 'RJVQA-K5UAS-H6TMO-KZBFE-29GN5', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(208, '9NQ9O-GQXCC-LIDO7-3LP8B-N0K6G', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(209, 'CFPOE-PWJQF-IPEYE-ATFPL-QSASO', 32, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(210, 'J29EH-FYQVG-PEJCF-I6RQU-26E9Y', 33, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(211, 'QGZPG-M5MV7-XEN2S-BPWKG-XUKGT', 33, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(212, 'EOOWW-CK4DE-S8PN1-OENJU-7XU3Z', 33, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(213, 'ZEETG-NKIXT-SJ8TB-IWRZG-EQWUY', 33, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(214, 'QCMWG-MBXFB-CA26O-UKYF2-MS7PV', 33, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(215, 'FIDL3-I7BK5-4AIDW-YJ5HU-UDPDN', 33, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(216, 'XMU2N-XVUGV-PN0HZ-HX14L-OC9VY-E1QJ5-M1ASL-S0P4M', 34, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(217, 'OLJ64-DLX1S-QISF8-R0BRT-NJ6IV-Q4QWS-BJYBQ-YK3TE', 34, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(218, 'WBTSY-9PGYP-E5ZEC-JZPDQ-PPNSE-FHZ5B-I5A2Q-ILNQX', 34, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(219, 'GVFOX-HK8OX-JNNTC-FFREQ-6GQGA-0VQQA-7RTPG-RMZUJ', 34, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(220, 'GKEKR-SU2FN-VWGJK-HZZIP-WNTD6-JMESC-ELZNY-2OCQG', 34, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(221, 'GV5UM-FAAES-UMPCS-MVDQN-EQKYA', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(222, 'B2T1A-YJTOF-75IAR-TZYE6-B9OL9', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(223, '3W6FL-NHYU3-ARJWC-OU0FP-64NW3', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(224, 'KQMRG-2XMKA-OFNMS-UHMAP-CFGAX', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(225, 'W5BGX-HOQC3-MG0KS-PFD9Z-5JZBH', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(226, 'GLJMM-YRE15-P70L5-XJFHX-BDQGT', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(227, 'VI7YN-HUHSG-ES68H-1NXF6-NV1NF', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(228, 'QA6PV-C7SNE-PHMNV-WQEPQ-WWNPV', 35, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(229, 'QESLP-EANOW-LANPU-RRTRJ-BKF3N-CB0VH-MUHR7-XAB72', 36, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(230, '5H2SN-AAUWI-IYMUU-VVR0S-Q8RXM-TNOMY-WIVRQ-VJAGJ', 36, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(231, '6ZYKT-3DT9Q-IPS6Y-2FF83-I5GEM-AR4BQ-ET705-3X8BF', 36, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(232, 'UU2KD-3FX7M-DIFG0-FXU8Q-SVRZA-2WGEC-OVOCZ-ESASL', 36, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(233, 'Z3IQD-1BNEI-JDUOK-WWQRV-5MDR7-XGLER-2DCXJ-VIC7J', 36, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(234, 'IBIQK-IMTAU-DEKPA-CUAOD-78XNZ-TRPRV-TEPB0-9QE4K', 36, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(235, 'IPVXA-V1SED-P0AQ2-FWRW2-LVKYA', 37, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(236, 'BIGZA-5BR3B-UP4Z4-WBOPH-OSHAE', 37, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(237, 'WODOH-RTB13-P17Q3-3QTU7-PJA3N', 37, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(238, 'PPR7K-TRX38-H3VEA-7TGI3-XI4TZ', 37, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(239, 'VFJWV-MEUYO-L0YPF-OHC5F-B67FW', 37, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(240, 'W1MCM-JSZAT-FVDCX-H01P4-7Q8G1', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(241, '3JYIH-YGH0A-PS4GM-ZL70M-HLXU3', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(242, 'OCK5I-FLXC0-NZY2U-T8JMC-HUERV', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(243, '6GR8O-PFLCJ-M8NFI-ONLJZ-8V9SJ', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(244, 'QXHTT-JLYQG-CPIRA-S8AHP-D5FAH', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(245, 'S297P-DR465-SUUAX-HHDCH-HYA8Z', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(246, 'KMLLY-SA9GO-IF57E-G4EP4-GLTXF', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(247, 'TOKCE-2PB8H-EZGJA-FXHPZ-Y1MAU', 38, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(248, '0NLXL-TNUDG-XJWSN-B3CSE-PSN8L', 39, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(249, '7NE3T-X0X7H-GS38I-WWJ0V-8W78V', 39, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(250, 'JQQZR-Z5B0J-LMUTZ-XFY9Q-GDPLV', 39, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(251, 'EVJMX-ELECH-NC43B-OEBPO-RWYB6', 39, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(252, 'I6YWO-WSQM1-IWY5C-6QEVR-WKONR', 39, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(253, '32UYK-52MWY-INDL8-OLZIG-GHH09', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(254, 'CQOV3-A1YHP-AX0NB-DCAMM-XFMAY', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(255, 'IQFBP-F2XLR-ASCF9-N2PVZ-VEFK3', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(256, 'OLR8H-N2PM4-C6XE5-V0R9G-1X0OE', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(257, 'T3RIS-H0X2M-QGAUK-8EFVM-UMPQM', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(258, 'XOTYL-R0UXL-OF69P-WWJFW-E4NLC', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(259, 'BMQY4-Y4MIH-LY7DI-HXH9I-NFAE6', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(260, 'WSVB1-CMPUO-OTBYG-UJCAX-ZPTOQ', 40, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(261, 'LF8LI-PIARX-VBFGM-ELXAR-FRVNV', 41, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(262, 'R9NCS-EU2WW-ENXII-5ZDH9-FA1GM', 41, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(263, 'L7UM0-YHV8R-LA4YC-GDSID-GM0G8', 41, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(264, 'CNPTM-6RHIC-Z87EZ-7IGJR-UGGCH', 41, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(265, 'B2WYV-27S3X-40UEW-P8P3T-BIMS3', 41, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(266, 'OWVGP-V1CNG-NJAT9-TR41B-LGJII', 41, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(267, 'ZY0HA-MQAIM-TEFSO-RANTI-PFKQS', 42, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(268, 'C4WMK-VOIHS-XYXBA-4W5CX-BENGN', 42, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(269, 'RHKLK-M8RME-WUPF8-VAYVJ-XX4HO', 42, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(270, 'HN6X2-RVZDE-DNVVS-OKL5I-XILAT', 42, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(271, '3E2I6-47BZU-PBGSC-ST3YD-EQQ19', 42, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(272, 'LMGWM-FGNGD-WXISU-0PRAH-LDLEY', 42, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(273, 'SJJCQ-IYNSY-LYURV-CXEE9-N398K', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(274, '5TUXA-IFLSU-XCKSS-SK2CL-4A2UR', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(275, 'LMG7O-J4JB1-6NDH9-DIPHV-DGNOV', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(276, 'MZGVR-YHESY-TITZV-CBPUO-CGQG5', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(277, 'SOYLN-OPGGW-U7RSX-MKSBN-JYLP3', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(278, 'H2NTK-EZUIF-KUE4Z-EDE8Z-5IVDB', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(279, 'AZMOO-JQO7C-CTGND-BRFMH-WO3KS', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(280, 'HLGK5-PYMIP-XS51M-9FHJ3-0CERD', 43, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(281, 'PUCY7-SYAVV-OMYG4-UYBCI-RJ0GO-FQ1YW-K8H1I-JJ9NS', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(282, 'MFSFG-SXOZX-PF4NY-DVKUF-0O7EG-O0EDX-57EXD-DQJDM', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(283, '3KL04-Q0XC9-KOUUH-ER1OK-R5GBW-P7P6S-BMNTA-C4BFG', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(284, 'BVKFT-C5YAJ-ONF5Q-5UVM9-AHGJB-IRL12-8N2PQ-JEGEN', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(285, 'B0A4E-P448O-VED9P-JWBHG-7NAX4-N4OPS-BKP2C-F5CAW', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(286, 'HRLEA-VJKJF-SDDBW-WBDIP-FF9UE-WP1DJ-789PJ-NIAMJ', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(287, 'KFCH8-UHJJX-OJELD-K6PYR-PHTOU-ZIA9W-SZXSX-JQNSA', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(288, 'M38DT-SBNMR-HROAC-JRKSK-3CWOC-EE21Y-OAJKX-4RNFV', 44, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(289, 'RLEY9-LQAV8-QIDLY-KXVTS-P2NPV', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(290, 'WGKI6-94ZBJ-1MDKV-6X4FZ-G3R22', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(291, 'QVTJF-FVIZ4-61OAJ-NGRPH-PTAQC', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(292, 'XRT7Z-UEFNX-XPHRC-X5V8V-FXHJD', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(293, '8E7GH-LB88W-A1QQM-NJOHA-BBCJW', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(294, '7HDIC-COG3E-RCVER-EPCQK-DD0YD', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(295, 'ZJOQW-6EXJC-YTWKP-KT5SP-UI2LA', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(296, '7XXF5-0DRK3-08QVC-DHTBX-YZT75', 45, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(297, 'UXUGI-8NNLN-DF9LT-WVFD7-SBT0E', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(298, 'J2B28-A88MM-L2VOO-1XOFA-XJOJ1', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(299, 'UHFOD-IWVFQ-FGWR1-0FTWU-X5Q6I', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(300, 'N4KDS-8ENK6-EWVMK-1VALQ-8K6IE', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(301, 'KCUKT-PAD8M-LKIP4-WVNNO-M644W', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(302, 'HFYGP-Y1MCI-MNKCS-BL0TV-HVKQQ', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(303, 'ZBLKG-CVXBK-P3FXV-GLVNI-7ZQ42', 46, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(304, 'CZ3DO-QWIGF-YQDUL-CZ1EK-0DKL3-JAHSX-Y15CY-DNOBT', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(305, 'KENI2-N3H3B-PDXBC-YG4JG-KKCQG-WNEUD-OVJWH-3UJI8', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(306, 'WEEKB-BTMXR-MA25N-KOTXR-AXHFE-RXGNG-9C82H-EFZEA', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(307, 'K82XR-VQB54-V22NC-QWN0S-0Z5BY-QTQDO-FCFI1-IOVNY', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(308, 'OP5A4-ZAISW-DY03X-SKY4O-KRKIV-RK3VX-SYHRL-BBD42', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(309, '86XXU-MRYIA-XMO5B-0CS9M-5M85K-SSHC5-QPFYL-SYAVT', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(310, 'NLWU1-U9WMN-2C4U9-TRJ8S-2MEED-C1BRK-BYZHC-LP50M', 47, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(311, 'GIHZU-JYJKA-RF15N-NMPHI-PJBCR-KWVMQ-QLDQL-WT9Q8', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(312, 'FZLOX-G9APU-LFVKE-RWIUA-NUWKE-QSTGR-VB0MF-IWITQ', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(313, 'UBMJ3-AGXXP-ZPQDZ-07GNO-A4QIY-IVBWI-MRELW-JHLGM', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(314, 'DWKWL-LQ1YA-W33KB-UJFO5-1SXN7-GYEPU-GSMT7-XZWKP', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(315, 'F0XJ2-CP6SF-OFMRO-GGV4A-NIBGA-FH1FI-Z7UMR-TGSJH', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(316, 'IT0YM-BSLRA-XLMUN-HAMIL-M0MAS-21FKT-SC1XS-SWFG0', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(317, 'BPLUF-1Z3CL-W4GED-SZVGC-SG436-EX9H3-ZGYKW-2F0RW', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(318, 'MT3YB-PRIR7-JX50J-15DQS-API5H-CORE4-V819O-P4CVG', 48, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(319, 'S0CDJ-YQGO9-HPPFX-TLFAR-YY1ML-4RDP8-CJ2KQ-FDRZD', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(320, 'GHUIK-UQWYE-FHI3O-3YV6U-JQWMZ-KQGQ9-1PPPM-SSWUL', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(321, 'GBIKR-32NTY-HXTWQ-FFEJR-O17TK-D6JZF-XHUGB-9BU0Q', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(322, '6N94H-ZQMQR-PWL9Y-PXQNR-STKQR-ZOVIE-XLOB0-UXJ1Z', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(323, 'M74CH-JXSYN-N1PV5-SBW6O-ASZY6-BDCJI-Q6IPD-AYCPJ', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(324, '4NZ5V-9PPBQ-6Z9I7-YJ8ER-1SLAH-THKJ0-T5KMZ-ZV8HI', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(325, 'EBH8G-TTHFR-30TFB-QLWCW-YUEE5-JMIXO-BNL4A-IJJYD', 49, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(326, 'MZN5V-L6GDC-DNQDU-DOWNZ-HQ2MT-WABJE-QAEFH-HCNUU', 50, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(327, 'Z4RS3-RTINX-XSLIO-ZIVBE-UCRMK-UGHQZ-PBQOJ-4M7GW', 50, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(328, '6WSXA-SOJ0C-R0BA5-BQ0VT-KJ66L-NJZ9L-UG4KJ-SQWID', 50, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(329, 'XWWTZ-5YV7A-SI32K-BFXXQ-HWF3C-MLCSX-3ALKB-JRWQU', 50, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(330, '1T1MG-2KNQU-QKQVS-UYRW1-ABNQ9-G3QGZ-N6GF6-H0DE4', 50, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(331, '5QNFL-IEL9H-7WUX8-9DIYY-TORNM-3DLG8-6GJCL-ML5WY', 50, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(332, 'IYNGN-CRPNT-X6DWI-QWMUH-Y5W6S-BG4E7-CF4WO-GTEBQ', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(333, 'ZYYGZ-N3OXW-7VQWN-C9GHI-V6BBA-JCASC-T3BY6-FZ6BH', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(334, 'ZD7LZ-LKIHR-DEYDV-QPOW0-0Y8T5-HAQGH-BEATD-AAIPO', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(335, '0XSMQ-LXAEM-H4WY9-VUKF4-LLHDR-IFXYI-A1DMR-HDO2J', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(336, 'UITAT-DYX2Z-REIMV-IY4PJ-966UT-CE9FH-G2YF3-7KMLN', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(337, 'RWXGG-PK1FW-TIYAH-IOJWW-KG9MO-KGL5Q-T1ZX7-VGZ9K', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(338, 'ACVVV-Q0DDC-MKH0K-RGFMS-FOB2W-URCTF-VUIWK-BK7FU', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(339, 'H43NR-M532F-HUJKJ-RRHKT-VJ52R-DXCRK-GSIDX-K9PRM', 51, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(340, 'VDBFF-QCA1U-XP3NM-CY7N2-XLMOF-MOJZL-NDQJ5-GFQMP', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(341, 'ATREY-KCKAN-LHMXK-SVWJQ-AB69A-AU8YQ-BCY6I-YZVDT', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(342, 'ZTRT1-9ZW9V-8ZGIX-FGSVR-BBRV2-KJU2J-FIMUO-IDFHV', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(343, 'XXFF3-MTGN3-CNTSW-VD1GS-SDZVN-163G4-FE6SH-6XFFK', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(344, '671AQ-F5GYJ-RW7EA-RREXQ-6VFL1-TFWPL-UMIKM-FMKOC', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(345, 'I6XU5-WM12Q-NEF55-ATKHM-BMAJG-LE92L-R8BSK-CXCQC', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(346, 'YRSH6-ZRPHZ-SSXOH-MJFD3-60LYC-U9RBA-15HMO-WARYP', 52, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(347, 'UUK5M-G4LVG-PBWMT-FP1OJ-GJQQY', 53, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(348, '96A2G-LS8SQ-4WAQU-GXAK5-GUZEH', 53, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(349, 'E8UB7-O8VTA-RREQC-FLLC4-TX9YN', 53, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(350, 'UQQFJ-NQJC9-SF1EG-OU9TW-1Y11Z', 53, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(351, '0KWU9-NRVTO-BX7LE-VCKEH-CTTEW', 53, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(352, 'EWW1T-ETUTV-YZKYT-2Z42B-RPRO1', 53, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(353, 'IZ6HU-UZWVN-LBUDD-WXXMS-SGM2H', 54, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(354, 'YXX2N-JNFJD-2GD0H-RYRQ3-ZRCWU', 54, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(355, 'W9SYS-H5QV7-HCZ2O-BVAOU-FXCEE', 54, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(356, 'RHTPA-H8O3T-BCZEJ-STBYE-7HCP0', 54, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(357, 'DHE2U-FA2SS-GOQKK-N1RNJ-TWK88', 54, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(358, 'ERM4K-RTWV9-NPWVM-GQH0D-AV8KG', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(359, 'JGYQW-L3QEH-RPSLC-6BZPA-BALQJ', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(360, 'PSPVH-1K87G-BHNO0-CU6KD-QYTOB', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(361, 'YDD1L-3DNMJ-BMNUW-UBQPE-KQFPW', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(362, '1IWEU-IZWRJ-SYTIY-QOVHP-RZB7C', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(363, 'FCEME-ITQCY-37IZJ-EKVOD-W1JK5', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(364, 'RIW2S-AI8SS-LRTFZ-LHLJH-UZRYR', 55, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(365, 'C1WAM-U5AIN-FKEQE-NRRBH-6XXQF', 56, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(366, '7SBPO-Y1FWR-QGVCU-WETQI-LNOUJ', 56, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(367, 'GTTML-HLA2Z-WEEWV-IFORN-DO42G', 56, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(368, 'Z77KA-AL6WZ-MHFWT-1OPQL-CKYYJ', 56, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(369, 'T4TJO-VNL7G-N8JHE-GAW2C-MWD9T', 56, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(370, 'DHBAQ-RPMEG-AJHJL-C0NSU-SI4WO', 56, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(371, 'MPYIW-M7UJA-GE1XC-SVIIH-0DQJ0', 57, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(372, 'TUOLW-29XGB-1YD42-ENYWW-MY22X', 57, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(373, 'OJHSU-XJHT1-JKY4A-LM1DJ-KJ5MC', 57, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(374, '0BNQX-DXELI-0MR2R-SQ4FW-EGS0D', 57, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(375, 'PFTDP-UXTCM-EUS5E-LL0OU-ZJSC2', 57, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(376, 'JMMQK-KPCG3-L9OMZ-Z4KDS-RQUTQ', 57, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(377, 'WNTTW-HJAQV-0ALI4-BERAX-K6YG6-1WMFP-ATAH7-ZBW5O', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(378, 'KI7ST-YYOTA-ASRRX-KSMYO-T5EIE-DIJ7E-OJ0K9-4XK49', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(379, 'VREXH-D7SSR-9R5TG-P1YGN-TGBUD-S1JRJ-UW4QK-H87LY', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(380, 'VCSVO-XJUUN-BPFX7-F4EOA-9G5QV-LL8WZ-LW7PE-NKYYK', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(381, 'SRSUJ-VDZA3-EP8HO-AULM5-KRGAF-GV4UX-VB5JL-HKKUS', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(382, 'LIYXM-DLAZY-GTWRK-7GOIQ-ROTQO-WO0PA-TBUMX-D76IY', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(383, 'PTYHL-NMIKM-UM5TU-T1IGN-QGHDJ-CIIMW-JWOBO-BRSD3', 58, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(384, 'ZBSRE-PHJF4-WXPE9-AE2S6-FAEQI', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(385, '5KGFW-H4VFQ-O79LO-AIJSJ-NPRSI', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(386, 'LJCMB-OFLQ4-9XUHV-VNEXI-2AQJE', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(387, '1DL9K-URM9M-PDOHM-6BPWV-BXYI7', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(388, 'FQX4Z-HMPMS-W2SOR-TCFO4-4ANST', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(389, 'DPQLL-W3CT9-AYEYO-STYTK-BAK4I', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(390, 'VSKFM-RIMIL-EFDQM-KLSQV-XE718', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(391, 'FVBOI-I3IYO-S2VG0-JJ0OB-8XR8A', 59, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(392, 'U82WU-ZECXE-WINQF-FCH5K-UGD1O', 60, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(393, '9TBXF-6WPFD-NDKCU-FZFPX-FNDN6', 60, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(394, 'ZOJYT-K74IB-BSCIC-LMNLI-TOLOW', 60, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(395, 'BOIBN-BBPVH-7CZLH-FZ8AI-VLS0G', 60, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(396, 'M4HJO-IVEQF-JUU6P-UI4XV-PUKMK', 60, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(397, 'RTAAR-VI3IF-JZ9SC-AM95N-UB3MA-O7I7B-X1MHL-IUE1S', 61, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(398, 'WWKLQ-DX8XO-FTBVH-RXLUY-PQWFG-H3QGA-XB8KQ-YTLGC', 61, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(399, 'UQFFB-GAOMI-7MDBR-KJXZU-IARA5-IPALJ-2DVMR-KNDVH', 61, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(400, 'AI0VD-FDMP8-RMFTG-ANZVO-NUQC0-JZQ3H-RFSJJ-IQ2US', 61, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(401, 'ZPJ4G-JBB7H-WUDZC-E4E7T-RNHRI-0AT75-EG9W7-XYLSU', 61, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(402, 'SAUQS-U5DTG-EP1OW-WLLXT-PRIRH-QSCJC-GTBEX-LXH4C', 61, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(403, 'ELVBP-1A8IT-E3UI0-Q6G7Y-MERCP-CMAZ7-5K2O0-MA1ZF', 62, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(404, 'E14Y1-T9LWN-8EJLJ-29IKQ-VI2P2-PF4PO-Y5FTI-JJHC9', 62, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(405, 'KWRFX-P2WHZ-HIXKR-DAGNT-QCEP2-JQ4QR-QOCFI-PVA37', 62, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(406, 'RSZFF-TXB3D-PPF72-TUECM-8O3HU-LOMAN-JM2OQ-PVTGK', 62, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(407, 'GWUKE-B3TOV-YM9HT-D3IHL-MQL0F-QQPXR-GSVW0-H89RD', 62, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(408, 'CMKLO-SP1WS-M92L0-V3AA1-K365Q', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(409, 'D7PWO-QPLMS-5LP3X-WPYKK-O9DH6', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(410, 'TXDYV-RVD3L-WW5PH-QOD1P-BXVXY', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(411, 'AUU5N-ZJNIN-71BFM-1QZWL-9VFQW', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(412, 'FPV7O-169BZ-IEUR8-N39FQ-R079D', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(413, 'J5UH8-QKFKT-UJNNP-XWX44-XZNGR', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(414, 'BLP81-PGHJP-38T6G-1WD30-32TS6', 63, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(415, 'QYJBF-YSC2F-WNSBJ-VQNUV-1YJ3O-P0BQT-SLJAY-KSYDZ', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(416, 'PPIOA-HBFRN-W06SM-IW5BF-ARDWE-ECY2Y-ZPEOG-KRWF8', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(417, 'D7YDT-HWBEI-SVMRH-PID4S-ZLDL1-MFTCE-HGWYZ-H0SQL', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(418, 'HS7O4-DKCCK-SG2K5-NBFII-NFH5O-F569I-R2RUY-KUNBZ', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(419, 'QQNBS-9QUI8-TNOW4-SKFBQ-WDMFM-UNAAD-MFTKG-1DT3G', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(420, 'EOC8M-4KUGR-HQVSK-XAXTS-UJJRW-D57JO-WJN1H-MHON0', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(421, '26WIH-IUKQP-3V1QH-T8ISI-W4WIW-EPVBY-HKDM2-LJRL9', 64, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(422, 'BYP00-F9KFX-UPX9U-OR4FT-NK7XS', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(423, 'RLVRF-JKTAA-NM97B-S0SSH-DIVTV', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(424, 'WWMJV-KWHCQ-9L9EL-XUOIO-BXCVN', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(425, '5S8KG-ZZGHH-AGIBC-FIMOW-E2K3G', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(426, 'XHZ3D-MY0AH-DOZMD-D3LTR-X9VLU', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(427, 'Q7TNU-6ID55-NUE2R-O26DZ-Z6CAM', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(428, 'MOXFU-ZOCBF-JEX09-EDENN-9PBJN', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(429, 'MFHGS-VBAXL-ZTLFQ-MZXQU-KX0DN', 65, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(430, 'XG3RT-5U1VW-D0QHB-4MYUD-FWPQ8', 66, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(431, 'RYMFI-EN5DP-AEVMH-EUGHW-T35ST', 66, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(432, '5SNUB-U1NN4-AD448-2IX4F-ZPOXE', 66, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(433, 'HFU7N-B9NAO-I9VTL-UEG9W-KFSYK', 66, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(434, 'JKHTG-4F0ZR-IRX2P-AQQV6-ZGEGX', 66, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(435, 'SRNDS-LQHPM-HSA73-LOPZM-F2V8Q', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(436, 'LPMBZ-ZCNOY-F78BO-0QHYX-MZRKN', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(437, 'B9VY1-3PCDL-NAG9G-FRGXU-RKNIA', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(438, 'DBPD6-SBTPR-QG2XO-UDOOJ-YXAEP', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(439, 'YDW61-PCIAM-QBARJ-UCNDA-EWBLP', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(440, 'DQZTV-0TXEP-F4UGS-UNYCM-WQRHF', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(441, 'HKRXD-WOT0Z-CUO1X-WZKAI-3M1KQ', 67, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(442, 'KCAZ6-SSCA5-LDRT2-3GWL8-6W4F7-LIQKK-JLSDK-8DIDF', 68, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(443, 'BITWQ-TYDKM-MUXLJ-CLRFX-UMCPR-T2ECD-EI0XR-H284E', 68, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(444, 'O4BEN-UN5OW-QJ7VK-Q5YMH-YJDY4-YVRMN-6OGFR-WIRDB', 68, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(445, 'VSVUE-X8CQC-6Y215-VRTUP-MU2BG-PU2GG-FJPDG-ITGIO', 68, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(446, 'GCUNC-Z0BMD-EF4DZ-MFMB9-QZZRY-VJGAT-IRX7Y-EYRYT', 68, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(447, 'FZYHP-QHFR7-LG4U6-WEHBW-N6VTF-YVOAI-JMARR-MWDRH', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(448, 'UQG3T-DGE1B-QMSQU-AIRDG-BIM3S-EG26Z-PMCSO-NXVK2', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(449, 'K736B-Z7IIR-XNDIB-TLOTZ-GYNKL-VKMFM-CHU1E-WA3KC', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(450, '5ACDH-EOTC8-JI17Y-HAYTP-HEEHO-IITRG-BJXV2-U1PDA', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(451, 'IZRUU-W2DE7-93FMH-1AAMB-Y06BK-8OZDM-9JBFM-GTO4Y', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(452, 'NENYT-DOKKM-FYVKC-BUJFT-TNG3E-633W5-FXS4J-C22KC', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(453, 'VF3EW-TJXSH-YTCIZ-JA1XM-M255B-AXJC4-T4YPF-I5MLJ', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(454, 'YNO7S-ELNIC-CBM0A-PSCFW-HPG0O-XQDKH-LGQDC-WAFON', 69, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(455, '1R9EK-3RXUB-UNYLC-WJDHB-WWJJE-CK6FK-OEFCY-4BKGC', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(456, 'JXJJN-UQSWC-QAONQ-DMXDM-OJA7T-SCHVC-RLJ4N-3LAS0', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(457, 'XCBEF-FHJ9I-KKV3K-0U7YO-9ABHV-3MEQK-BZOTL-DZNUR', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(458, 'CE46Y-RTOPD-KMNRW-PGXUC-WHBYF-YSIE7-WHDHU-ZIEPW', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(459, '4QATH-VNNMU-WPFWS-5ZGD3-KUUZY-MVCFE-ODKHT-XQSUP', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(460, 'PRQKL-LVV3K-DWHDJ-VXAIW-RJXY6-7AIUZ-W7KGW-N2D4V', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(461, 'WYEUB-EC0QW-MKG9G-DXO06-JGIMV-NK5BE-24ERQ-X2RGP', 70, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(462, '6XGBF-AKKRS-U7A6N-3LJTN-EBZAP', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(463, 'GLLDP-2KJBJ-UQW9R-DTLIQ-NT7LR', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(464, 'JQ613-I2DHG-U02OH-L04CR-73F0B', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32');
INSERT INTO `keys` (`id`, `cd_key`, `game_id`, `is_redeemed`, `is_expired`, `expire_date`, `created_at`, `updated_at`) VALUES
(465, 'ZFC2G-BS0TA-CGBOP-NIHNI-JDOLA', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(466, 'CRWRX-XCL44-SLZZA-ELJ2W-BLOJP', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(467, '0CP7K-ALHIS-B3XSE-SCVSJ-HIIGJ', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(468, 'RWZLS-TEVGF-ZFL6V-8FJG4-EUW5Z', 71, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(469, '2CGLQ-BGQMU-E7PSB-PQMHM-2BVU9', 72, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(470, '0Q4TI-MBJYH-2DRY4-7ST4C-41862', 72, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(471, 'LRPKY-QZ3AP-9PAVS-SYPFN-FLBEY', 72, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(472, '1AUBJ-5PISM-LVN7D-VBDHG-5V6ZN', 72, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(473, 'S8HW5-OVROQ-JDDRD-CUCUE-CQCZT', 72, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(474, '4RUQ1-BFPOF-8FNPZ-DVWXW-DQ89Y', 72, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(475, 'BN55S-QTV35-CILRX-YCNGU-X8JAI', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(476, '1ZR7A-M2XQU-B7OMV-LYVZ2-WACNT', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(477, 'QOSKD-LYUJM-EGLMY-DHARM-R0DOR', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(478, 'YSXRB-7KUFV-7SQ6F-O2D9U-RPCNO', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(479, 'XM5P8-6ZAFO-I3PMZ-TU6KA-JHM1H', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(480, 'I8LYH-SGXZG-AUJVY-0RNZZ-9O8JK', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(481, 'XWUGU-MQC24-RPTEF-GOIXY-FG9RM', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(482, '4A2IQ-ENFBA-FZYWT-DZNP3-CAQSP', 73, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(483, 'PCVH3-HPBGO-DFFH8-EKRII-C8BUA', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(484, 'YYTOS-NK0WF-5GNA0-4DGH7-0GLZP', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(485, 'GBJNZ-AM4YY-LZPHK-RISOP-G3U4L', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(486, 'ZXCWS-RT3F9-PRCNQ-XRRWB-RVJYP', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(487, 'GHKDH-07NGC-ESCNW-DMPD1-OVRYE', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(488, '4GAGD-PT5KA-WOP2A-SMIHY-S5GEY', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(489, 'XATNE-E2VYC-SCP7D-BCIAN-LTGI0', 74, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(490, 'MKIVG-VVWZF-7QNFN-QWNRP-1GNIN', 75, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(491, 'T7LZW-QG0AJ-ILOKL-EUWJQ-7PMOB', 75, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(492, '78AH9-6RKVO-ZGLMP-4DPTJ-ISNON', 75, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(493, 'FQIVF-L9VBH-T0PYW-VSBBV-PIWLT', 75, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(494, 'XOPO8-SQTUQ-RD91Q-SGQPC-HHFFE', 75, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(495, 'TC5QL-OGWOS-NONVU-3U1MS-WBDKM', 76, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(496, 'PDGDW-H0AVF-SH7H8-IHNBZ-YKJQ4', 76, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(497, 'B2EZV-YCIPF-XN7GL-GFYQB-ZJINK', 76, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(498, 'LDPOD-3V2FW-J2Z8H-I0LHH-V9FXT', 76, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(499, 'ZNHYU-OFCUI-YQWMO-2JL7B-J4XM3', 76, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(500, 'DFF3H-OV8JK-B0ELH-UISWF-RHBVO', 76, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(501, 'UOLT8-USKYM-YKYKV-ZKFFI-UEF7F-I33B1-CM9FM-KMNSM', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(502, '6GCEQ-R1BPQ-MJSDH-50DWF-VUO9H-WAE5X-KWURS-NSI3D', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(503, '9WS3G-51J8S-1OEJ6-HLZQM-QWIFE-S3DM9-VAHGJ-A7K8L', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(504, 'EKH5A-KUBDR-ZKYJX-X1YVV-MW2PR-JZJIB-IWENQ-YAHMQ', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(505, 'P7FCZ-BUP1K-DLDJ2-TG51E-38RNL-74ZHV-SDA0F-VICGN', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(506, 'N3LLE-LELFT-GF4CK-M23UP-UXY5D-HKR4H-T2KH3-GUUDO', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(507, '2VDOC-PFVLL-TGSH2-XS7WL-YHYLH-QHQ1C-1PEKR-FNPVA', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(508, '71IGV-NWGTE-O0UUN-5UJ9P-XZNMA-ZNWVJ-EK7JV-2HWPR', 77, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(509, 'ISZX8-XHKH0-XKYL0-FYWF4-FDML0', 78, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(510, 'JDSCB-HPVRR-VAH8B-UOWIH-Y3RNR', 78, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(511, '4MVIA-5OBHQ-HGE5E-WZQ53-WW9YU', 78, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(512, 'G6YIG-2ZZ7D-YAXZI-HRNBX-MQSMD', 78, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(513, 'VOVUC-TWCOF-5AZRH-O9Y6C-EA3BV', 78, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(514, 'AFUTQ-LFM2E-HQG9Y-OSJKI-JFRDR', 78, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(515, '1QOYC-4A9QG-YY161-LDN3A-UVYF5', 79, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(516, 'SGP9G-ZXE9A-F0DT3-07UXK-I6SRI', 79, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(517, '4RRHP-JJ1T5-EFJBS-LREQL-RR6P0', 79, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(518, 'JVTR6-DKTWN-GNZQV-FQFMO-JPZ9D', 79, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(519, 'BRMOR-ZQWVS-3DD47-9UFXT-49IXR', 79, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(520, 'RVNSG-2SZ2G-TPRNN-NMQBL-WHOKU', 79, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(521, 'OFEF6-GS2ZU-VSTVE-P1EQI-GUBDQ-XWJWC-LDVQ6-DJ8NK', 80, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(522, 'OFCKS-QRI3C-LWIX7-VBJ19-UHMDM-QATRX-WMISU-XVZC1', 80, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(523, 'MDQGY-4Y99H-QGVV3-MFD7J-4P86H-TNMWB-DBHKZ-BXVMD', 80, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(524, 'D8OHR-AOIAO-B0W3V-KBUG3-MI4DO-7BVPO-5ACUS-B0C97', 80, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(525, 'WBZ9V-QOTYB-LQCQ8-7LJE5-ZJZ50-W3179-3PAOO-3QZWX', 80, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(526, 'DJQ2P-XGXHU-DQ8BG-M2E8W-O5AXM-RGTAC-6R2QR-WW9XP', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(527, '1MRIJ-OTAD4-HXB1G-9S7M5-RF1ZF-LEXWG-8KXMJ-EPYJT', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(528, 'OFMCH-SZJUH-GZ1LW-BLWMJ-VHSNR-K0FKG-O0PYV-YJGVD', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(529, 'WCIWV-6W15W-BIRFQ-CQSFP-2XLXZ-IHY2K-T1NBX-ZAJYR', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(530, '774HX-MZAL1-VMJZ8-5FSAF-MCCJO-9SQCD-SIRDJ-PET75', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(531, 'OI0L8-9MSIP-PESAU-BNIF7-ZN9NW-4MPSL-AXCGC-1MTHV', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(532, 'L4YAM-MYL7Z-HMWP9-O3FB0-XTGDU-X4UKP-AZOGW-IKYBM', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(533, 'BDFC5-J6RPI-F09VL-U7UVD-TGMZD-0VVKP-R1KRN-PDXI6', 81, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(534, 'S7ZFU-GYAGK-VCBL3-HASS7-VSPI3-YFDJE-1YW5D-AYYFO', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(535, 'LNK0N-VONBB-VBFKZ-MHNGE-BIQHE-S7OWW-M97MP-IWPYI', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(536, 'U4DXK-KMQV3-4R0FR-3QQ8H-HH8JP-YFOC3-HSLPB-JIEPD', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(537, 'K9ULW-8RD0Y-XCMXZ-CW9XK-877OZ-D6SN1-HMO5S-ZAWTK', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(538, 'S7VI3-CNKMQ-IOR3Z-HSMKL-AEYQX-CPWOX-QNDQQ-KCCAH', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(539, 'RDZLM-MJXDM-7BQ0U-SMLYI-4ECIR-44ATG-E775P-YSYTF', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(540, 'RDFCI-GAEKL-VOTNA-CY9P2-GNYP4-UIKCU-GCN2V-RTHJU', 82, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(541, 'QGRVO-5TMXR-ULFO0-12JBK-CGRVB-L4PMD-JJNTE-T4P2A', 83, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(542, 'QSKZO-NRKRB-ND5FI-IL5DI-YOKVA-CGBPR-BPKYN-IARJ8', 83, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(543, 'HKNPR-64IYK-TWF5C-RHXO9-F6YAM-JYSEZ-QU2GU-XHVRM', 83, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(544, 'W9ODF-3QSCS-FHVNP-M1YU1-RSQMG-LR74I-7NJC7-BE8R8', 83, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(545, 'NGVZ0-VHV8V-GAUWC-HAL2Y-1OWUZ-UMAXB-PPFTJ-9JY1Z', 83, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(546, 'BPYYF-QWSSP-S2ABO-4OXSA-HB2ZQ-UQT4A-Q0BZI-GFFAZ', 83, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(547, 'WG4ZT-WDHCP-DHGJB-NSZQE-H7DC3', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(548, 'GRBOS-XLXKE-AAGSF-WKJS2-ALFNF', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(549, '6TANA-JTNRP-OLNAN-T8AKL-CFZL4', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(550, 'P3JE5-MSBWJ-MO6K4-5DI2T-R4JXI', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(551, 'LGZ8F-PVAPF-LJ4KG-9VDCV-SIW75', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(552, '7G4MI-O1RLV-IWGMP-DQZWW-CLXRW', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(553, 'NQ5JB-H09EY-MYEP0-FM5ID-CF6MG', 84, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(554, 'NXUFL-YWD4G-FO9OF-OQNFH-3PV8M-OJWMD-KVNHK-TPVLF', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(555, 'PLHEO-3OW1P-BNQKU-EHF3G-CKVNR-DS8RN-EAB5S-KZFGX', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(556, 'LDUSL-5R2HF-6SZU5-JD6HW-CMTF0-KHFDD-R0RZB-VFNHT', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(557, 'SRNQ3-BJDA3-F5XTM-FKAGQ-G4LJP-JYDKJ-4SWU6-V3ZPW', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(558, 'CZP1A-I2WRR-OQXUU-ONCWV-VIKWC-K2YBM-YBF9M-YVVJR', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(559, 'INDLS-K5SRL-VU4GM-B78J4-VRN6G-OAR1W-GFXIS-BV4WE', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(560, '0OSQD-IFGLG-HQGLI-0RLWR-B9WSH-MTADI-VSWGI-SEZSE', 85, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(561, 'BSBUR-ID63V-SAA08-6U3VE-NZATR-3ZJJ6-LLHNJ-RSVBQ', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(562, 'G2XOV-TQ7VB-Q5UAH-HPDCL-XXALJ-2IHZQ-F6SYJ-ROR9Q', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(563, 'DD2DU-NDCD3-PORTA-HGZZT-I5DG9-0HNBY-ZPZ5S-YGZHD', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(564, 'QKBZN-NED28-N01XX-IIBNO-QM1ZW-0JPIW-79REB-SCO4S', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(565, 'YLG09-AUMXT-H8LRZ-AQDBO-SQDU3-FLY9U-GQU76-JO9IC', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(566, '5XCBR-RMZKF-X7S9U-BY3L8-IUC3M-I6XVI-EWMHU-TWNNI', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(567, '8IUCK-27ECH-OQOMK-LJ13O-MGVYR-H7R7G-LNCVV-DX6QW', 86, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(568, 'P39RG-SDQ4L-C3OZQ-TLLSI-1OFXJ', 87, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(569, 'BPQN6-WRWQP-GXVUY-EGY4X-NY7YS', 87, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(570, '30LRE-8QPGC-Y1HLM-P3MFU-TNCWY', 87, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(571, 'GQKDJ-MAZNK-SNETZ-WAD2K-ESP4D', 87, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(572, 'PURPP-VMRJN-QQ7LS-LCAKO-53L7M', 87, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(573, 'F2YW8-4HCNA-FQBI5-YADPX-I46RR', 87, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(574, 'WL0I0-R6CBQ-CIR5E-9K3ZV-DKJ0W-PMWCV-G1AZS-WETJE', 88, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(575, 'XVEJE-OAMKC-0NAW3-KZ8LR-UIVD6-EXUOG-5DWWC-AZOHP', 88, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(576, 'JHC2Q-7REAR-50L2J-1O1DC-OXECP-8LYSD-DDDQ8-YLQCH', 88, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(577, 'PMK1K-S9REV-L8HBV-ZM0I9-ZSJA4-JGBYR-O7C69-9O11P', 88, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(578, 'M4MIJ-NHPFZ-8OVKC-L3BQS-BZGZU-NPBDC-NQZ62-B7NQE', 88, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(579, 'VSKKK-VJZAF-U9RCW-3PGCF-SGBVQ', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(580, 'W8WFJ-YQLRV-ZVAWQ-SYNXV-GFXJJ', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(581, 'IYTUZ-IVYKM-PBRT6-N2Q6H-ENLS8', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(582, 'DBUHY-0HF1Y-UCMVO-E0MLO-JHBTR', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(583, 'YOJWX-PXOXF-EE1MS-VGFQ4-RQRCH', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(584, 'APJMJ-QO1L7-HONIJ-DTEWV-SWODJ', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(585, 'BTDNG-RKQOS-6OOAE-VGBJ4-BKRT4', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(586, 'HQCOH-JII0C-LXIFJ-HH1GD-CCFBI', 89, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(587, 'BDHE9-PXNRN-QVQJQ-PWGJP-BWN53-YU4ER-TVC9H-TPGPJ', 90, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(588, 'S80AF-EFCG3-KC8C2-VL4GP-KWS0M-BC4UF-RNIUM-Q5WAH', 90, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(589, 'Y8KPH-YAP2Q-FMFSZ-W8JKB-CZPR3-6SPUK-T55SF-EDBE1', 90, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(590, 'KWIFI-CTLTX-WUNGR-GJDKP-AHLHC-XTXNT-LYONE-N4CXU', 90, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(591, 'PK0AM-I7CTJ-HJ524-HLZBS-CTM79-D9TU4-JA00S-NHBAA', 90, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(592, 'VCJF0-3ATYS-QTBLK-2BTJ1-9ZNTW', 91, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(593, 'HJ2CS-1RU6P-WRPZ2-KOJSK-C2COH', 91, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(594, 'DY3E7-A4I7S-K4PBL-HN96M-0VXUA', 91, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(595, 'U9W9W-NE91X-LBIUA-6CSKN-W0JHF', 91, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(596, 'MVHNP-RSQET-QECS1-VWB1D-WLOCC', 91, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(597, '0DMC6-KGOFF-RI5UC-BHBX5-ZSMOQ', 91, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(598, '91UT1-JF1KZ-EWWXG-UOMON-Y62RC-DVSKH-CKVUS-V5CQE', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(599, 'NHDML-YCGPS-UBJRK-GJQ9X-JN3BS-WAVWN-0JZ34-M8JU7', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(600, 'RLBGG-VIKEB-VGCYO-2XHTL-PSSZE-A4ZYK-HTCBQ-VM2XU', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(601, 'S6CMC-YUQT5-4PF7V-FGYFB-TTYNO-QCMN5-IBMRV-IYRR0', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(602, 'QODRV-NSCRA-2NLNN-UHXBX-TLTXX-RJNYV-SUEI4-RMMP2', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(603, 'R6RL8-KFM4J-RTFAA-VM25L-17SCD-WPGYJ-FJZQV-JER0U', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(604, '2FKV9-XUISM-CFCEC-BZT3M-SWKEG-H7Q6F-6UZ9B-IRMUG', 92, 0, 0, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32');

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
(1, 'addGame', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(2, 'editGame', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(3, 'deleteGame', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(4, 'addGenre', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(5, 'editGenre', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(6, 'deleteGenre', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(7, 'addPublisher', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(8, 'editPublisher', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(9, 'deletePublisher', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(10, 'addRole', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(11, 'editRole', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(12, 'deleteRole', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(13, 'activateRole', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(14, 'addPermission', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(15, 'editPermission', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(16, 'deletePermission', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(17, 'activatePermission', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(18, 'addKey', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(19, 'editKey', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(20, 'deleteKey', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(21, 'assignRole', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(22, 'assignPermission', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(23, 'addUser', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(24, 'editUser', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(25, 'deleteUser', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(26, 'cancelOrder', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(27, 'acceptOrder', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32');

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
(1, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(2, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(3, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(4, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(5, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(6, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(7, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(8, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(9, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(10, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(11, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(12, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(13, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(14, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(15, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(16, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(17, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(18, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(19, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(20, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(21, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(22, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(23, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(24, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(25, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(26, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(27, 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(10, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(11, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(12, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(13, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(14, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(15, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(16, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(17, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(21, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(22, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(23, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(24, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(25, 3, '2023-07-17 04:21:32', '2023-07-17 04:21:32');

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
(1, 'Re-Logic', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(2, 'PopCap Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(3, 'Chucklefish', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(4, 'CD PROJEKT RED', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(5, 'SEGA', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(6, 'Klei Entertainment', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(7, 'Valve', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(8, 'Ninja Kiwi', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(9, 'BlueTwelve Studio', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(10, 'Ubisoft', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(11, 'Supergiant Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(12, 'CAPCOM', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(13, 'tobyfox', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(14, 'ConcernedApe', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(15, 'INTI CREATES', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(16, 'Mojang', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(17, 'FromSoftware Inc', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(18, 'Behaviour Interactive Inc', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(19, 'Nexile', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(20, 'Freebird Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(21, 'Bar Holographic Otaku', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(22, '7th Beat Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(23, 'Techland', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(24, 'sen', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(25, 'Vaka Game Magazine', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(26, 'Mads Skovgaard', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(27, 'Future Cat LLC', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(28, 'Batterystaple Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(29, 'Motion Twin', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(30, 'DUT Studio', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(31, 'HopFrog', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(32, 'Thomas Moon Kang', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(33, 'OMOCAT, LLC', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(34, 'Askiisoft', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(35, 'Pugstorm', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(36, 'Live Wire', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(37, 'AstralShift', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(38, 'Obsidian Entertainment', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(39, 'Infinity Ward', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(40, 'Humble Mill', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(41, 'Endnight Games Ltd', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(42, 'Avalanche Software', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(43, 'Facepunch Studios', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(44, 'FuturLab', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(45, 'Kinetic Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(46, 'The Indie Stone', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(47, 'Rare Ltd', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(48, 'ProjectMoon', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(49, 'Black Salt Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(50, 'Innersloth', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(51, 'Red Hook Studios', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(52, 'Tour De Pizza', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(53, 'Gearbox Software', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(54, 'Team Cherry', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(55, 'Yacht Club Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(56, 'Studio MDHR Entertainment Inc.', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(57, 'poncle', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(58, 'Nolla Games', '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(59, 'Massive Monster', '2023-07-17 04:21:32', '2023-07-17 04:21:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(2, 'leader', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(3, 'hr', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32'),
(4, 'finance', 'web', 1, '2023-07-17 04:21:32', '2023-07-17 04:21:32');

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
(1, 'App\\Models\\User', 1, '2023-07-17 04:21:33', '2023-07-17 04:21:33'),
(3, 'App\\Models\\User', 2, '2023-07-17 04:21:33', '2023-07-17 04:21:33'),
(2, 'App\\Models\\User', 2, '2023-07-17 04:21:33', '2023-07-17 04:21:33');

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
  UNIQUE KEY `users_id_unique` (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `verified`, `otp`, `password`, `last_sent`, `remember_token`, `gender`, `biography`, `address`, `created_at`, `updated_at`, `social`, `social_id`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$z.VluRXQLxdjRGQ.jrphKOlBNDq5DiTR0a8jM4I22L0WmNbledlee', NULL, NULL, 'Male', NULL, NULL, '2023-07-17 04:21:32', '2023-07-17 04:21:32', 'None', NULL),
(2, 'hr', 'hr@gmail.com', 1, NULL, '$2y$10$gZvU6cG.mvrfL0kIjUPy9e9qfP7q6HfjiUMcmX5Y0rfdoDLEI6lV2', NULL, NULL, 'Male', NULL, NULL, '2023-07-17 04:21:33', '2023-07-17 04:21:33', 'None', NULL),
(3, 'Toryu Kira', 'kiratoryu122@gmail.com', 1, NULL, '$2y$10$ZA.vjBPfETVwEo6vnNhLiuervQswSAqVMOV6hhRDqO9LczYuEJCsC', '2023-07-07 16:08:54', NULL, 'Male', NULL, NULL, '2023-07-07 14:45:15', '2023-07-07 14:45:15', 'Google', '101908197917112750588');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
