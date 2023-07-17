-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2023 at 11:52 AM
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
(1, 'Bloons TD 5', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'bloons-td-5.webp', 8, 73, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 'Bloons TD 6', 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.', 120000, 'bloons-td-6.webp', 8, 968, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 990000, 'cyberpunk-2077.webp', 4, 481, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(4, 'Don\'t Starve Together', 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.', 165000, 'dont-starve-together.webp', 6, 308, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(5, 'ELDEN RING', 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 800000, 'elden-ring.webp', 17, 905, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(6, 'Azure Striker Gunvolt', 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.', 165000, 'azure-striker-gunvolt.webp', 15, 512, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(7, 'Azure Striker Gunvolt 2', 'The ultra-refined 2D side-scrolling action you remember from \\\"Azure Striker Gunvolt\\\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!', 188000, 'azure-striker-gunvolt-2.webp', 15, 298, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(8, 'Azure Striker Gunvolt 3', 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!', 705000, 'azure-striker-gunvolt-3.webp', 15, 513, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(9, 'Hades', 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.', 321000, 'hades.webp', 11, 971, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(10, 'Left 4 Dead 2', 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.', 142000, 'left-4-dead-2.webp', 7, 285, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(11, 'Mega Man 11', 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\\\'s speed and power for a new twist to the satisfying gameplay the series is known for.', 398000, 'mega-man-11.webp', 12, 479, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(12, 'Persona 5 Royal', 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!', 1380000, 'persona-5-royal.webp', 5, 426, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(13, 'Plants vs. Zombies GOTY Edition', 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\\\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.', 70000, 'plants-vs-zombies-goty-edition.webp', 2, 322, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(14, 'Starbound', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'starbound.webp', 3, 131, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(15, 'Stardew Valley', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?', 165000, 'stardew-valley.webp', 14, 312, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(16, 'Stray', 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.', 319000, 'stray.webp', 9, 310, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(17, 'Terraria', 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!', 120000, 'terraria.webp', 1, 174, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(18, 'Undertale', 'UNDERTALE! The RPG game where you don\'t have to destroy anyone.', 120000, 'undertale.webp', 13, 447, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(19, 'Valiant Hearts: The Great War™', 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German', 249000, 'valiant-hearts-the-great-war.webp', 10, 324, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(20, 'Mega Man X Legacy Collection', 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'mega-man-x-legacy-collection.webp', 12, 880, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(21, 'Mega Man X Legacy Collection 2', 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'mega-man-x-legacy-collection-2.webp', 12, 655, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(22, 'Mega Man Zero/ZX Legacy Collection', 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.', 550000, 'mega-man-zero-zx-legacy-collection.webp', 12, 318, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(23, 'Mega Man Legacy Collection', 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.', 206000, 'mega-man-legacy-collection.webp', 12, 184, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(24, 'Mega Man Legacy Collection 2', 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.', 276000, 'mega-man-legacy-collection-2.webp', 12, 601, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(25, 'Dead by Daylight', 'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.', 230000, 'dead-by-daylight.webp', 18, 104, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(26, 'Jump King', 'Take up the challenge and face true high-stakes platforming in Jump King! Struggle upwards in search of the Smoking Hot Babe of legend, but explore with care; a single missed jump could lead to a long fall back down...', 165000, 'jump-king.webp', 19, 318, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(27, 'To the Moon', 'A story-driven experience about two doctors traversing backwards through a dying man\\\'s memories to artificially fulfill his last wish.', 142000, 'to-the-moon.webp', 20, 275, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(28, 'UDONGEIN X', 'Help Reisen Udongein Inaba navigate through 14 action packed stages in this exhilarating 2D Bullet Hell Platformer based on Touhou Project!', 70000, 'udongein-x.webp', 21, 564, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(29, 'A Dance of Fire and Ice', 'A Dance of Fire and Ice is a strict rhythm game. Keep your focus as you guide two orbiting planets along a winding path without breaking their perfect equilibrium.', 80000, 'adofai.webp', 22, 85, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(30, 'Dying Light', 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.', 329000, 'dying-light.webp', 23, 963, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(31, 'Mad Father', 'Witness the tale of a most foolish family. A remake of the classic horror exploration game makes its way to Steam.', 120000, 'mad-father.webp', 24, 844, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(32, 'Angels of Death', '\"Please... kill me.\" \"Help me get outta here, and I\\\'ll kill you.\" ~ Angels of Death is a psychological horror-adventure game, consisting of four episodes.', 120000, 'angels-of-death.webp', 25, 855, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(33, 'Blaster Master Zero', 'Mutant scum never learn! Blaster Master Zero makes its Steam debut! Blaster Master Zero is a 8-bit style top-down & sideview 2D action-adventure game that hearkens back to the golden age of the NES. The game features new gameplay elements such as improved gameplay, and a more robust scenario.', 120000, 'bmz1.webp', 15, 701, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(34, 'Blaster Master Zero 2', 'Join Jason, Eve, and Fred on an intergalactic journey! The side-scrolling/top-down hybrid action adventure title \"Blaster Master Zero\" returns with its long-awaited sequel! Experience the yet-untold story of Jason and Eve after defeating Earth\\\'s mutant scourge in \"Blaster Master Zero\".', 120000, 'bmz2.webp', 15, 631, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(35, 'Blaster Master Zero 3', 'The Pinnacle of Mutant Blasting Action Is Here! — Blaster Master Zero 3\\\'s hybrid of sidescrolling and top-down action is back for its 3rd chapter, and more intense than ever before!', 296500, 'bmz3.webp', 15, 399, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(36, 'Necesse', 'Necesse is a top-down sandbox action-adventure game in a procedurally generated world. Progress your character\\\'s gear and settlement through fighting, mining, exploring, crafting, trading and more!', 120000, 'necesse.webp', 26, 686, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(37, 'OneShot', 'OneShot is a surreal top down Puzzle/Adventure game with unique gameplay capabilities. You are to guide a child through a mysterious world on a mission to restore its long-dead sun. The world knows you exist.', 142000, 'oneshot.webp', 27, 833, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(38, 'Impostor Factory', 'A bonkers time-loop tragicomedy murder mystery thriller featuring multiple casualties and a suspicious cat, from the creator of To the Moon & Finding Paradise.', 142000, 'impostor-factory.webp', 20, 253, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(39, '20XX', '20XX is a roguelike action platformer that you can play with a friend. Jump and shoot your way through ever-changing levels, collect awesome new powers, and battle mighty bosses in the name of saving the human race maybe!', 165000, '20xx.webp', 28, 363, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(40, '30XX', 'Jump, shoot, and slash your way through 30XX, the roguelike action platformer you can play with a friend! Explore lush, ever-changing worlds that mix precise platforming with fevered combat. Destroy fearsome Guardians. Master unique Powers. Rediscover the thousand years we\\\'ve lost.', 188000, '30xx.webp', 28, 485, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(41, 'Gunvolt Chronicles: Luminous Avenger iX', 'Experience the apeX of 2D action! A new era of 2D action begins now! Get ready for high-speed, stylish 2D side-scrolling action like never before. Inti Creates presents the ultimate in classic 2D action with \"Luminous Avenger iX\"!', 165000, 'laix1.webp', 15, 461, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(42, 'Gunvolt Chronicles: Luminous Avenger iX 2', 'Break into the new apeX of 2D action! INTI CREATES is proud to present new apeX of cutting-edge 2D action with Luminous Avenger iX 2!', 274000, 'laix2.webp', 15, 372, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(43, 'Dead Cells', 'Dead Cells is a rogue-lite, metroidvania inspired, action-platformer. You\\\'ll explore a sprawling, ever-changing castle... assuming you’re able to fight your way past its keepers in 2D souls-lite combat. No checkpoints. Kill, die, learn, repeat. Regular free content updates!', 220000, 'dead-cells.webp', 29, 368, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(44, 'The Death | Thần Trùng', 'The Death | Thần Trùng is a Viet Nam psychological horror adventure game made by three Vietnamese people from a tiny indie studio. The game takes place in Hanoi city in 2022.', 75000, 'the-death.webp', 30, 75, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(45, 'The Forest of Drizzling Rain', 'Alas, it was the \"promised place,\" where Shiori was never meant to go. Finally, a remake of The Forest of Drizzling Rain, that masterpiece of an exploration horror game with multiple endings from the creator of the big hit Angels of Death!', 175000, 'the-forest-of-drizzling-rain.webp', 25, 429, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(46, 'Forager', 'The highly popular and quirky \"idle game that you want to actively keep playing\". Explore, craft, gather & manage resources, find secrets and build your base out of nothing! Buy land to explore and expand!', 188000, 'forager.webp', 31, 250, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(47, 'One Step From Eden', 'Build a powerful deck, cast spells on the fly, battle evolving enemies, find game-changing artifacts, make friends or make enemies, just make it to Eden.', 188000, 'one-step-from-eden.webp', 32, 375, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(48, 'OMORI', 'Explore a strange world full of colorful friends and foes. When the time comes, the path you’ve chosen will determine your fate... and perhaps the fate of others as well.', 188000, 'omori.webp', 33, 924, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(49, 'Katana ZERO', 'Katana ZERO is a stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. Slash, dash, and manipulate time to unravel your past in a beautifully brutal acrobatic display.', 205000, 'katana-zero.webp', 34, 612, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(50, 'Core Keeper', 'Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.', 215000, 'core-keeper.webp', 35, 357, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(51, 'ENDER LILIES: Quietus of the Knights', 'ENDER LILIES is a dark fantasy 2D action RPG about unraveling the mysteries of a destroyed kingdom. On this sorrowful journey, encounter horrific enemies against whom a moment of inattention could be fatal. Overcome these hardships and seek the truth with the help of fallen knights.', 240000, 'ender-lilies.webp', 36, 1000, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(52, 'Pocket Mirror ~ GoldenerTraum', 'Delve into the enthralling world of Pocket Mirror ~ GoldenerTraum, the acclaimed RPG Maker gothic horror game that\\\'ll take you on a moving journey of self-discovery.', 260000, 'pocket-mirror.webp', 37, 653, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(53, 'Street Fighter™ 6', 'Here comes Capcom’s newest challenger! Street Fighter™ 6 launches worldwide on June 2nd, 2023 and represents the next evolution of the Street Fighter™ series! Street Fighter 6 spans three distinct game modes, including World Tour, Fighting Ground and Battle Hub.', 1322000, 'street-fighter-6.webp', 12, 217, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(54, 'Grounded', 'The world is a vast, beautiful and dangerous place – especially when you have been shrunk to the size of an ant. Can you thrive alongside the hordes of giant insects, fighting to survive the perils of the backyard?', 649000, 'grounded.webp', 38, 233, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(55, 'Call of Duty®: Modern Warfare®', 'Experience a visceral Campaign or assemble your team in the ultimate online playground with multiple Special Ops challenges and a mix of Multiplayer maps and modes.', 1490000, 'call-of-duty-modern-warfare.webp', 39, 290, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(56, 'Call of Duty®: Modern Warfare® II', 'Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.', 1799000, 'call-of-duty-modern-warfare-2.webp', 39, 202, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(57, 'Oblivion Override', 'Embark on a raw, fast-paced odyssey in Oblivion Override. Master 25+ weapons, embody the killerbot, and conquer war-torn wastelands. Inspired by Castlevania and Roguelikes, this action-packed adventure will test your mobility to the limit. Evade, dash, and dance amid shifting dungeon walls.', 239000, 'oblivion-override.webp', 40, 911, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(58, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.', 188000, 'the-forest.webp', 41, 391, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(59, 'Sons Of The Forest', 'Sent to find a missing billionaire on a remote island, you find yourself in a cannibal-infested hellscape. Craft, build, and struggle to survive, alone or with friends, in this terrifying new open-world survival horror simulator.', 385000, 'son-of-the-forest.webp', 41, 434, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(60, 'Hogwarts Legacy', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 990000, 'hogwarts-legacy.webp', 42, 127, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(61, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 510000, 'rust.webp', 43, 592, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(62, 'MONSTER HUNTER RISE', 'Rise to the challenge and join the hunt! In Monster Hunter Rise, the latest installment in the award-winning and top-selling Monster Hunter series, you’ll become a hunter, explore brand new maps and use a variety of weapons to take down fearsome monsters as part of an all-new storyline.', 881000, 'monster-hunter-rise.webp', 12, 616, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(63, 'Monster Hunter: World', 'Welcome to a new world! In Monster Hunter: World, the latest installment in the series, you can enjoy the ultimate hunting experience, using everything at your disposal to hunt monsters in a new world teeming with surprises and excitement.', 550000, 'monster-hunter-world.webp', 12, 387, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(64, 'PowerWash Simulator', 'Release the Pressure with PowerWash Simulator! Wash away your worries with the soothing sounds of high-pressure water. Fire up your power washer and blast away every speck of dirt and grime you can find, all with the simple satisfaction of power-washing to a sparkling finish.', 570000, 'power-wash-simulator.webp', 44, 640, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(65, 'Phasmophobia', 'Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and it’s up to you and your team to use all the ghost-hunting equipment at your disposal in order to gather as much evidence as you can.', 160000, 'phasmophobia.webp', 45, 831, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(66, 'Project Zomboid', 'Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..', 260000, 'project-zomboid.webp', 46, 873, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(67, 'Sea of Thieves 2023 Edition', 'Celebrate five years since Sea of Thieves\\\' launch with this special edition, including a copy of the game with all permanent content added since launch, plus a 10,000 gold bonus and a selection of Hunter cosmetics: the Hunter Cutlass, Pistol, Compass, Hat, Jacket and Sails.', 400000, 'sea-of-thieves.webp', 47, 361, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(68, 'Devil May Cry 5', 'The ultimate Devil Hunter is back in style, in the game action fans have been waiting for.', 705000, 'devil-may-cry-5.webp', 12, 377, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(69, 'Lobotomy Corporation | Monster Management Simulation', 'A roguelite monster-management simulation inspired by the likes of the SCP Foundation, Cabin in the Woods, and Warehouse 13. Order your employees to perform work with the creatures and watch as it unfolds; harness greater energy, and expand the facility.', 220000, 'lobotomy-corporation.webp', 48, 35, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(70, 'Library Of Ruina', '\"May you find your book in this place.\" Combat between the guests and the librarians breaks out as if it were on a stage. Defeated guests turn into books, and the Library grows onward. And eventually, get your hands on… The one singular, perfect book.', 250000, 'library-of-ruina.webp', 48, 992, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(71, 'Garry\'s Mod', 'Garry\\\'s Mod is a physics sandbox. There aren\\\'t any predefined aims or goals. We give you the tools and leave you to play.', 120000, 'garry-mod.webp', 43, 88, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(72, 'DREDGE', 'DREDGE is a single-player fishing adventure with a sinister undercurrent. Sell your catch, upgrade your boat, and dredge the depths for long-buried secrets. Explore a mysterious archipelago and discover why some things are best left forgotten.', 500000, 'dredge.webp', 49, 785, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(73, 'Among Us', 'An online and local party game of teamwork and betrayal for 4-15 players...in space!', 70000, 'among-us.webp', 50, 447, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(74, 'Dragon Marked For Death', 'Dragon Marked For Death is a 2D side-scrolling action RPG game where up to 4 players can play together in online multiplayer. The characters, known as the Dragonblood Clan, have forged a pact with the Astral Dragon, which granted them special new powers.', 310000, 'dragon-marked-for-death.webp', 15, 768, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(75, 'Darkest Dungeon®', 'Darkest Dungeon is a challenging gothic roguelike turn-based RPG about the psychological stresses of adventuring. Recruit, train, and lead a team of flawed heroes against unimaginable horrors, stress, disease, and the ever-encroaching dark. Can you keep your heroes together when all hope is lost?', 321000, 'darkest-dungeon-1.webp', 51, 343, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(76, 'Darkest Dungeon® II', 'Darkest Dungeon II is a roguelike road trip of the damned. Form a party, equip your stagecoach, and set off across the decaying landscape on a last gasp quest to avert the apocalypse. The greatest dangers you face, however, may come from within...', 470000, 'darkest-dungeon-2.webp', 51, 893, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(77, 'Pizza Tower', 'Pizza Tower is a fast paced 2D platformer inspired by the Wario Land series, with an emphasis on movement, exploration and score attack. Featuring highly stylized pixel art inspired by the cartoons from the \\\'90s, and a highly energetic soundtrack.', 188000, 'pizza-tower.webp', 52, 314, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(78, 'DARK SOULS™: REMASTERED', 'Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.', 850000, 'dark-souls-remastered.webp', 17, 110, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(79, 'DARK SOULS™ II', 'Developed by FROM SOFTWARE, DARK SOULS™ II is the highly anticipated sequel to the gruelling 2011 breakout hit Dark Souls. The unique old-school action RPG experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.', 650000, 'dark-souls-ii.webp', 17, 574, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(80, 'DARK SOULS™ III', 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!', 970000, 'dark-souls-iii.webp', 17, 543, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(81, 'Borderlands Game of the Year', 'Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op, Borderlands is a breakthrough experience that', 499000, 'borderlands-1.webp', 53, 667, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(82, 'Borderlands 2', 'The Ultimate Vault Hunter’s Upgrade lets you get the most out of the Borderlands 2 experience.', 334500, 'borderlands-2.webp', 53, 274, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(83, 'Borderlands 3', 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds and enemies as one of four new Vault Hunters.', 990000, 'borderlands-3.webp', 53, 329, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(84, 'Hollow Knight', 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.', 205000, 'hollow-knight.webp', 54, 326, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(85, 'Shovel Knight: Treasure Trove', 'Shovel Knight: Treasure Trove is the complete Shovel Knight collection, containing all 5 games in the epic saga! Dig, blast, slash, and bash your way through a fantastical, 8-bit inspired world of pixel-perfect platforming, memorable characters, and world-class action-adventure gameplay.', 310000, 'shovel-knight-treasure-trove.webp', 55, 384, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(86, 'Shovel Knight: King of Cards', 'Step into the gilded boots of King Knight in the biggest and most regal Shovel Knight game of them all! Leap, Shoulder Bash, gather new subjects, and strategize your way through this prequel in your quest to become King of Cards!', 120000, 'shovel-knight-king-of-cards.webp', 55, 757, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(87, 'Shovel Knight: Specter of Torment', 'Take control of Specter Knight, servant to the Enchantress, in a quest to recruit a cadre of knights and create the Order of No Quarter. Experience perfect platforming, world-class visuals, impeccable stage design, incredible music, and even meet a friend or two in Shovel Knight: Specter of Torment!', 120000, 'shovel-knight-specter-of-torment.webp', 55, 545, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(88, 'Shovel Knight: Shovel of Hope', 'Shovel Knight is a sweeping classic action-adventure game with awesome gameplay, memorable characters, and an 8-bit retro aesthetic. If you love games with perfect platforming, beautiful art, infectious music, lovable bosses, humor and levity, and real heart… Shovel Knight is for you!', 165000, 'shovel-knight-shovel-of-hope.webp', 55, 36, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(89, 'Cuphead', 'Cuphead is a classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.', 188000, 'cuphead.webp', 56, 68, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(90, 'Vampire Survivors', 'Mow down thousands of night creatures and survive until dawn! Vampire Survivors is a gothic horror casual game with rogue-lite elements, where your choices can allow you to quickly snowball against the hundreds of monsters that get thrown at you.', 70000, 'vampire-survivors.webp', 57, 711, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(91, 'Noita', 'Noita is a magical action roguelite set in a world where every pixel is physically simulated. Fight, explore, melt, burn, freeze and evaporate your way through the procedurally generated world using spells you\\\'ve created yourself.', 188000, 'noita.webp', 58, 304, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(92, 'Cult of the Lamb', 'Start your own cult in a land of false prophets, venturing out into diverse and mysterious regions to build a loyal community of woodland Followers and spread your Word to become the one true cult.', 400000, 'cult-of-the-lamb.webp', 59, 126, 'In Stock', '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
) ENGINE=MyISAM AUTO_INCREMENT=593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `cd_key`, `game_id`, `is_redeemed`, `is_expired`, `expire_date`, `created_at`, `updated_at`) VALUES
(1, 'NjNkc01tTHBqaHVYS25SZ1NkVFIvaXJUeEdIb0ovZUZTUDNjVUp2NlNPMD0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 'dzR4M0VXSUxHTCtjdlcvVk5kOFpKck9YcTFHWENaVFFxS08wd08xUStiUT0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 'ZXJQUStuZWpSOFRzd3l4WHB1OGkxREdBbEwwSmpoSDFxTFVMZ1RiWnRXcz0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(4, 'UEJTM3A1SFEyU3hZMUd6UnFGQmM4d0h1cDRBY0R6OWtWdHVmSGcwZmNzTT0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(5, 'dloyV0xtRGpjWmd1Z3l6dEdJY1BUTHdtcW5MVUU0VWZ5TlhxR1AzNEl2QT0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(6, 'akFFdS93YUl1MEhsZzhoMWJGclB5VU9sWnZKZWZGUWZhU0c0WFRFVXl3az0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(7, 'Wk1rcTU5UUZhUjh0S3J3Wk9wSEwza09janNWeC9EWlFZc0c3RnNaM0J5cz0=', 1, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(8, 'aVA3U3FBUmdabzZndGZvbStBNnFTV3hodGQxNFkxYVU1dUdIcTEyanFOVT0=', 2, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(9, 'K3JtLzZwbnp3VVdmOUFyV0hSZDROWWhzM1VDYzJUbmEyQWREaklEOTBybz0=', 2, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(10, 'azdhclJzTUxJV2ZybW0zRmk2VDRaMm9DdG1FcU83WkJOb2pMM0pJUDVIOD0=', 2, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(11, 'ZUtyUWJnd2lyNGQxSU1mQS8rdXdrZFA2L0xoZXJIZEZ4Y1lVcW00cURXRT0=', 2, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(12, 'c1BZVjVHanRTLzRINWhsSDJoMnlHWFRUMk1sWkhIaHZyK0NXVTVpc09iZz0=', 2, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(13, 'emhXNXlKWWJFT2VSVWdVV0k3czFqOW5DNUErbDFReGJ2dFBkNlhSMFVCN3c3TUFkUEhxYjBUVUtJOTV0RCtDcQ==', 3, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(14, 'TEZmNWJiSGNOVStaWTJkSkdTV3ByT2YzbDhJeWMvMjduTEF0VTBvd1dvdGJXT2krZ0trOW9RRXpKV3NNQy82eg==', 3, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(15, 'aktzblV2ZU84Nzg4bnRRYkpXMzVralFHNXdvRU04T0lpN2xSSHdvTkRJK3B6US9GQXA0aTZvWUE4S25lU0V0Nw==', 3, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(16, 'b2NRU1cwcDg1WEJJSTRvbGFWMWJvcnpKVC9yaytZcWRhR1MwV1pEWHRHUWtwRGhodEhtKzdqak8xa2oyK2J5Mg==', 3, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(17, 'T0xHQytjdkM0SnRVUDF5d1dxNGtoRWdxZ1F3d0w0elVaMk81Q1VzM3c3Q0NKcG0xTXpQYzlIOEZBdVRtWWxDcw==', 3, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(18, 'NG5NRmpuMENDK3ltTVNLa1RpN3R4aHI5TnRHbTRoRUZBRVVQdGliVEN2alhjb2I5TDY5b2JuR1dBQWsrR1ZsTA==', 3, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(19, 'a1NkWHRKR09TeXFMcnl6WXlRZEY4KzJZRFIyQmYzTDZHdFZVWW8zK1ozcz0=', 4, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(20, 'Tm5xK2oyZHA2Z3Z1bTEwSEtOSnY2elBRZHBTUUZhQ2NnRGljZ3FLR1U5Zz0=', 4, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(21, 'T1hvV3BlejNtc0c5YWE0NFFJcFc5R29wOHNOTGRlSlBlUlVSTEZVVmVWZz0=', 4, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(22, 'RHZHZDJycC9aWEpiUCtyTmtxY0J1VGtWbGtkMVZZUTA3ZXA5V05sb1V1ST0=', 4, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(23, 'dTNqQU9kS0dHNGxWZkNCRzBrWnlvckcrQnFpMFU3ZzZ2UFozWjdQUjc1VT0=', 4, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(24, 'blRxeFV2anI0UjBuWU9Fam9pOS9VeCtPQUtaWWdnWS9rUXlNbEN6eVpHND0=', 5, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(25, 'WU1oU3pCYXlGZldHd1BaVXlwWmNvS01RdVQ2aXcyaTRHRnQ5TEI3b2FyOD0=', 5, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(26, 'Mld1bmcwNy9KajNGKzYzTHRFR2IxQUFPdzJUSjBUZmtJOVpOdUpuUGQyND0=', 5, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(27, 'UVpBVTVTdFFMbTJ1MVQrVkdWNHJMVmlnTVQrZy9aYUhOQmhyWjZ5dmJsZz0=', 5, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(28, 'emVIcXpVTjZJRFZQT3lySVpQQjl5OWNneGMxcVUyTkI1eUIxYUxzRWZrTT0=', 5, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(29, 'RjMzMkxhQjRWVC81NXZSc1NYWTNGSVkwZFFObFp6NkFoYkkwZXBuMklDTT0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(30, 'Wm1wTE50andyU1Nrb2FGRWxpT1VINjR0ZzgwM2RkTStWMUpGNG1LU3NjVT0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(31, 'OXlaUUh6M1lEckVTVXkrL1JpK3JaV0NDYlVTbjlwTUEvS0dvSDRwMkpQOD0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(32, 'UDU3cHBvWGI2cmVVRFVDVXZrUEdMRlVQUitKd2JGeVdyeVZ1RExyZ1BLdz0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(33, 'dk9FbFNUTjlteUZMNVhydUlIS2llMWtIY042MkJRZGl0V0tkUnFsSEhQUT0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(34, 'R3BQKzNaMndmdWNLVlpEeUUzeFUwWkppbVphNU5VU0U4RWNpbGJ6M1kyRT0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(35, 'UWVZWnVJcnhkNTNFMEJTczBpS2NQL0U2bFZZOVNtblM1QjZ3UERYSVdOdz0=', 6, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(36, 'SUZHSXZZNFhWY3JwTEx0RlJNY1FwdXVVMDBGR3pqSGg2dmFYTmV5VHExSmpjTVZyMjR1U0F1dk9OUFVuUVBKcw==', 7, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(37, 'UnE3VjJZNCsyeFFtWWEySHAyOVVmajJYZk4xQms4OFd2YzNqa04zYU5SUU9hUTV1cThlQzhFU1FlSGNrWmFkKw==', 7, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(38, 'cTJodDRTRUlYbEthWk1RWWVmUWUxaEpXYXNZZWJBUGp6dUJUMmR3VGE1cHZMRDJGMnFNWUFIamVINGQveU1MNg==', 7, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(39, 'ZXVUZGdZUmc2T3IyN2lHTWZ4NGYzK1JXZWJKcEVENU01SmxtRStjQWxWSmZVVWtFSDJNSW9ENDQwc1hsTUZnaw==', 7, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(40, 'cW4rNXY1OWkvc2hjR01yWEFudHh1aEhJUitmZ05lbGNiQ2M2VG93cFZxTkI2VG8vcTJrVm5RdnRWYm5xTUZtag==', 7, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(41, 'NmRKYXZjbkFGQno5aFBBcFNIUWZwWW92aG45cmxwd2VxbWFpUnBkY3FSaW1TelF3UFNJQXV2eDlYY0VaSGZ6Yg==', 8, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(42, 'MGZZakhkbm4raVk5NEhBRUR3K3BmemRjV25jaUpIeEtBVkxRQkEyaXQ3KzdoZkFGbWFzcnBkZkErcFcrUUhZeQ==', 8, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(43, 'M2h0dkwvSFpxTkNqd01yS2J5bU1Kc09LNXBsbTVLS2YxUzJ5VkxKU3Uwdk5DMmw5SzFnUFR5UndTamVRbWtQNw==', 8, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(44, 'SFZUNFlzaDhFQUJ6bDlGaElYWit4Z2lzUEFsY2NibWozVkRzeUFRTDkzUFNKTk5MRXZnSnZkbjM2STdvVXhwcg==', 8, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(45, 'QURidjRlQlEzUmlNNFdiWUszcUcza1F5SHExanZ3WVdaVHU2Z1Q4NElBYzlDUUlrN3E3bjRURHdORmdabERPWQ==', 8, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(46, 'MlR2N2dKWnZPamJZL3hnQjQydHNFYWQ0RTVQNitodnp3cWdibzRodE40bz0=', 9, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(47, 'Y2xoa29XNy93UXQ3S3hsL05kYUJVbVIzajlRZWhDZklrbzc1ZnJhclFyND0=', 9, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(48, 'bEJhcVEvSTl0SldOUEU5S1p2UHhyZ25vQ3JGL1k4eGxjM2FicndRM21OUT0=', 9, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(49, 'UVFwRkQxUUt2UTRabjVUWElQVHJaalo1OUs5d3JBUXNvWFMxRktVUHlvUT0=', 9, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(50, 'SnhwK0tKQk56RmM2M3J5YXRQajYxenB5ZUJRQWF3M0srTUlNNThCVXJobz0=', 9, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(51, 'S0p0VElvbFhnRDVhVFFUWEhwSFBIQ1ZLSFlUY1F3SXBNUUEzV0kxQkxDND0=', 9, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(52, 'bzlhTUV3bEZ0WVcxcEdxKzhmRjQ5VXJmZ0pPWGIvUUVXaEU3MXRESVFRSmdhdU15VXN4eWhmeVNKcTFjVXM1WA==', 10, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(53, 'LzlENmJjMS9LNEFDbHdKMmFQWE02UkZ3eDNubHRIeGF6QXdzUTVVc2IrNUlVRkhiZjNlODI4ZXBPbFBUTmFrdw==', 10, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(54, 'SGdKKzJzcG1BTDd4c05sUEJUa1pycEkrUGxnYkw0bWNmU3NNc2tId3dlQkxpR3l2czl0NUFNc2hlZWQ1azlDeg==', 10, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(55, 'YmE2NFhiYzdqeFQ1ZURiUjRJYmcySFpiQTdEY0QyYytRMzR3STFpQ2JWOFdzTXpiYS8vRjBFWUdCSEY5MWtnQw==', 10, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(56, 'VUtCMEJSZDZFajJjUEI5a3V1ZEdmOWt2SmgwT0grNjE0ZzYyQ2REQ3RaVlNFYlczR0ZYRnd0Q090VWgvWVJXdQ==', 10, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(57, 'U2x0ZkVzOXc5bVlra2NtTjR4N2FWeWxKRTF5R3VpRWhpa21MR1lkYkEwWFRQNCtmL2tpTzd1OTBzTXVFZW9jWA==', 10, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(58, 'VFZ0ZXVYK1k4dXFaM0VoeUpyYm94Y1ZLKzNYNDl6Z2JvT2NlM05oRHBJcE5aY2o4NjMyNkVpd3NVZTUraktxRw==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(59, 'aGZ4ZlZ6Q0pxMmZUYTBab015WXB0RlVWYXQ2V2FNMmVJUDJOeXI1NHFwUW04VFVWK3M3MVZDVyszZWswWGxBSw==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(60, 'd0dUTDBkYkI3bFIzNkZ6NlhNVkhOOGYramxia2N6MExLUS9oM3lyREFqVHBYM2o5LzVBbVVxQ0RzcGs4dmJsZg==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(61, 'U3pETG05KzM0L0ZKb1U3RHdOVmt0cGcxbkQrVmJkSktiS0s4c0M4VFdsWDQ0dWlpQWxHWlJZeWpCbTRIR0NWVA==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(62, 'NXlhVjZxSmFyTWpFaW5yOTl1TEpTTnpUeU93N3VUZXVnbS9oVktNSzFkRW5wcXA4bVBUSm1jOUFlUUlaaGFlTw==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(63, 'czVrbnplVFVNenFHVENpUW9wdm1PQ3dUYWlXakFYd0oydEV6MkpJMWdUMmhWdk0zMElPRVVyY1FrcERIc3JLcw==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(64, 'Q1NCd3VPSG1VOFBLZGZ6ZzJUbDRXbWpuTElWb1R3ZG8wTHRpYVU3YlVhQ3Q3VDlUVGY2WmpFVlFWVXFQK3JEZQ==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(65, 'ZWowaVFBdENITmp5ZFUyMktDOGlnbnZqSXB4MWg5YVJYelRObVMvUU9EdDZMNHhYMnltOFBnWmJiSUtDRkorUw==', 11, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(66, 'S3ZGMXlZOU8wWFJoZEZWMk8rNWZMLzhWdjU1dzhyamRWNzN1NlI4Y0ZjWT0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(67, 'YnZudGFnYVhMK3dFYTIwSm0ySEhNSlQ1WnpZc0ZmdXRkTmRXd1greGd2Zz0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(68, 'MGZKRHNkWGpXOFZmT3hTTjV0dEczaDJtWmtiTHN4VDJZZXpzM29hOGdhaz0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(69, 'Y3JjSXdOS28vUHhoLzBSUmllSElQaCs5Uk9QVXAvSEtCRTIyaCtheEdvRT0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(70, 'WlNPQlZrWStTVmNDc0J1cEZlT0ZOZm9JdlI4b2l0TmZqeFMrQ1JDWEdGaz0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(71, 'cXZ3Y3R0c0pGQm4wZ0U1MjBzdlZ3VGpUMjNRQ1dDQndyQXN5WSs3S0FtMD0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(72, 'WDN1R2o4QSttRFhVNWl5bU9nSjYyT2NSMldNSDdyUmJJOHc5QlZUVmcrYz0=', 12, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(73, 'S2swc21CRHZUV2xQRURzWG5jR3hKTUNKUkNGaExEZCtEUUlsVVFZUHdDaWgydEdPTTUyRWNodldweFR0bEQxcA==', 13, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(74, 'Wkx2V1RUOVZ4MmFBc0NhUU9BWnVnODR5cW9qQU4rQVJOYzUzOE9wUzZ0T1dyRm81SXFUNnNKN1ZMaG13Rjc2Zw==', 13, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(75, 'VWR4NktKM3NaTWdzS25xOFc0U2NFWTU2S3JlSDAzL3o2MUxhSVFueWJBS1NRVDdTRm5xcnVJS1IwNFVKZ3hWdg==', 13, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(76, 'N0pVSkYyT0tXMHY2ZnR3TGs5Ums1SnJLay8vZndkMHYvUnoxcDVxZ2NwN2NFb0xkc0doZ3VMZEgxQUlxQkZFSg==', 13, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(77, 'dS9LcW1rZ0YzRmJYblc5Y2VjajNzOWxIVGJVVFdwd2lIS0NaKzRNcDJpbzVCM2xnYllYL2ZKRHYwUk0rNEZsbQ==', 13, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(78, 'REZWbjMwdlN2NFhFdkJ2YmphOWE4bVBvK3NXejNQalFqK3VWWWVIdDVTZWt2MHlZT0JSZmNpWFJjUHVFSDZ6NQ==', 13, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(79, 'eWllVk03ZFNlVU1QbndQbC9GbDk0UEFNUTVXRVN5MXdzRHBHTGdwTFZIST0=', 14, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(80, 'b3hBbjVLeWIrblhmaHNiQXlJK2NyMFdsV2VVc0xpcHVuTzUwRWlycUlEND0=', 14, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(81, 'YlBzREpNaVR1TWpiMGVHRnQxWTFucms4cS9CRDJvU2J0WnJ3dDBOb1J2ND0=', 14, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(82, 'eDltS2xZVS9TWnRHdUROQWhnTXRTM2tVY1dralV3TGV1bGFWa2NJSjBwWT0=', 14, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(83, 'a2tmc09mblRVK1RlenF3WmRrWUtIV2QxbE9VVnF6OC82RXNRTllXajNJMD0=', 14, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(84, 'SThvZyt2N1JiYk9kSmhRY0pIRHRYRWVqbDlrUHFLdDUwV3c4RmQrQzlpTT0=', 14, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(85, 'M1phYTQrczRqWERqaVhSdTFCUElzdHNPeFRlRkozOWlBM1V2LzcwRnNoVVpHSUF1d3ZtTVBMYkNMUUpWN1p2eA==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(86, 'cWl5S3VKNk4wR1Jtb0NUMWRxckhzR25ENHVGUlB1QjdWemRacHdiTnQ5QklOMVBtRDV5NDZVZmE3Y1IxTklrdQ==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(87, 'RU0wWWpqWS80V2M2NWFRVlJaR3dzcDgvQmhBS3g0emZvT2xIeXRzZmlycWVtZ2VXZUE5UFFGUEdrL1JrOFcyKw==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(88, 'ZVYzVW42Y1JpVXZRUHo5U3ZYa3R0dmdEL0dzMzBoSU8rNm5pR2RDQVZZS0xlZmV2QUVNM0plU1NpVlVVM0dzZA==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(89, 'WWhrTzJLZXFvMG92MjREdG9CM0FYWmxlL3MzWUg1T2xIR0tqeFpDTmhjRGR2U1Q3R003c1RNR0lEbzhpaFpwZw==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(90, 'b3pFZjZyZVpGTFdjWXBOQ1RzUEJGd1hUMmZmSHVLSXZ0MHVjbk45SStkWmhTSVlXT0NJcXdzNkNCWnN2cXlHZg==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(91, 'U0QvTUpDYzc4T00veVE4ZnMvbHpHa3YxN0hFNzdIVCtTTEttM3ZRaXkvdEZHRnRaY01xa25OVGNmaHhxYjdyRA==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(92, 'WjlRV3AyM2xOaEYyWVhGc0hEOUsvVVVhSVZ4RW1nakJmUUJaZGtwL3pTUytXYnVxekswTjN0emdsenQ2TWVNeg==', 15, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(93, 'Y05vYk92YnVacUh1ZUZxbzVJTjEyWGU2SnB0aVNUN1l0REdHbFdvUkkyZz0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(94, 'dTVraE56MVhPcEdlajdBWFFTT0E2cEVnMlQ2ekdUajdOaWhtR2hHci9jRT0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(95, 'L056Lzh5c29DMCtneG4xZnVrb2Vtc0FRMURHV1N2bUpRTUVjUjh4blBlMD0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(96, 'T1FrOWI0SXhYYzJuMnBYdHBXWG12S2krSDNBakZ2YXN2c3Q4NjVKVG5wVT0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(97, 'Z1hEWG52ZUVmWVFOSDI1VmdrSDVtQWtlSEZSZm5helhjYkRiMUhINDJBST0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(98, 'U3dyL2JXQzNWRFZhaEdxZGVmQTZ6NXJMeXQ0bzUxU2ZKWmM4YmpPTU5tYz0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(99, 'NWYzVWtNTU9KallDT0xnNkQ4V2pJNWpjNk8vNlZmcWd5WC9zTExDajVzdz0=', 16, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(100, 'bHcwZTZNa1AyY3pFMW0rY1RJRG5lQzVEWmhGTjBHUVhvVFRWQnBXam1OKzQzUGNKcWN6dlY1OVNWeXdMRDlGKw==', 17, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(101, 'WjF3aUpuckVxTkxoa294UWplRVFVRVhtelBveDlPVFhyTTBUSWsrM1A5dUI4QzBDc0FXRkFLd25qMGMyQ2hzNA==', 17, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(102, 'YWRGS1FjaEJUc000cnQ0dzNBSVp6b010L21mMlM5NVlaQkFNWnZQTjd1UkRBNWI2QXZNajIzN0RsUGVtb3g4bQ==', 17, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(103, 'TTEwRGdzSEg5Rll1VXhZVDJUcmpwZ1FIbE9zUTUweW5BR1hoQ1BRd3B4aW9LYWUvSkVzSzc4YTlrVnZoWDNrYQ==', 17, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(104, 'UFhlVzVyZ2t0citBUUVvR0JiY1lrdmk5VkgveVdreEo3SWxNYXNsNE5ud2s0eS9uRHR2b2NHNGNKemRCTmRnTg==', 17, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(105, 'WVc2Z3ZVS3R5UytPZGdRUGlqcVFtazJ1T2IycXhqeDJZTWRyWWxMTXlMWWc1cW5QcU1lRHZpUUdIY21VQjRSYQ==', 17, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(106, 'eW1hT3VGVzBpZzZabjRvTUI0RkhvbWtpaXFrUmREWTFhRXMxQWlxZ2Q1T3NQUXNGVGpWdkJYNmtFSHVGSTJFdA==', 18, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(107, 'dFN1eGVUZTgvR0g1eGhuN1hRV242RklRTlN6VjZqVDkzTndDQVhPZ0p3UkZWRlptcGExTlJ5WmhsNE5qazhSMg==', 18, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(108, 'NThCTHZZcE8zSXJmb25IcXA1bElZTHFPeVozSnorR3dybGlEOTFDTGNxRXN0NllFMlVxaUpEOFZOdS8xY2ZSVw==', 18, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(109, 'RUFJNlluZGtRcjZ4aW9IRnFXOEFienpTRWJYNnJBMFlOSzJxMzNnWEcxMkpBVGdMdVdkM1h2WWNZQzNpcUhPdg==', 18, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(110, 'QmxGWHVyTTlYNm8zYTJtYkNCL0tTZ2Z6dFpCM0YzekQ4WUZ4ditPRUduckVWeGJFektLZW9hZXB1dG9keXgxbA==', 18, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(111, 'WmZWZGxnTjFlOWxoUDZGNGFtcjJFQS9nZWJnVUQ5aHBGVDg4SllLSmpEQjQzMjJnbWpLL1FTdXUvYU9aUjZOcQ==', 19, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(112, 'S0dNYjNoVGZUd1o3T1U5aWZmZm9udmx1QlJtTUpjVXNIRjlSSEFKbTdjMmRxdW01TFAzTTNOMXZHYjczOEY1Qw==', 19, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(113, 'SHQrQnpZUGVtV0V0UEFEQVlyMzZxOXhUNmxxTlNyalRDaXFnWTFaWERoM2ZZd3JCUGxOWmZiaGZrUmdQUC9aNw==', 19, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(114, 'ZHZBRlVLQnVuRmdQZEloTVdTOXBSeUFSU3I0Q0FaeXBUNk5IVG9SLzRtUng5R01ob2kvR3plRW5tbUdzcUN3Uw==', 19, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(115, 'Q1ZYT25kRkR2alI1UFduSFdpYnV4RkJDTi8yMjNTNU91OUNVQmUrSFBMemZTVG9ITkpJdzZsQUgvZ2FlMjJBaQ==', 19, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(116, 'NkVlWFg2Mkl5YW5EVkpWazZZeDBkeGNod0xTU3Q5d0ZETGpnZHVpOXE2Yz0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(117, 'UEVleFZ5TVFVT0E4YWxtRGtzbUdkMzNSQmQrRHhhcFd0Tk9LWUptN3drcz0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(118, 'Mk9JNGZFTjRoN2ZNVFA3TEdlbkRSNWlxNFgwNlJFc1pSaC9BSlFOekRYZz0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(119, 'ejZMLzVhQnZYdEVSZVVqVlRhem9uR21kZ1FkYldVNjFUT0tuc29NS1plbz0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(120, 'R3dkS2hQS1ljQkNZWEx1TkJndlNxSmg4dzBtQlYrN0IwQkpsNkFzcjZHOD0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(121, 'MTlaK2tGSlFheURFNGtnWWZPTy95Yk9weDNidlEweDlYejJhNFFnVFhWOD0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(122, 'VGZkV3h2R0xlTnFpbDQvaU9NTzRzOEk4VlZ3QTdBUGUzZzFydVZGYmpiVT0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(123, 'cSs2RDRVdTgrcHBiMDV2K2w2Szl0bC82cmdXUDgxL1lXeWhsd0VmVm5ZOD0=', 20, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(124, 'NnhhemFtUnpLZUpNR0wrbVdjTTloNTVDTGx3RTdpMXNSUDlkVENtM3Rjbz0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(125, 'WXk3Vkh1RGlXWDRYd0NQK0Irb2RUNmc0V3NieFl1K3FsMGVmSzRZWjhjND0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(126, 'czIvVThRQ3VBcDd1T3ZhVXpiRzF1NmkxUVRzT2tkTmJOSG9ZS0xqTEtkQT0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(127, 'YXpZQ1p2ei8wTWFobkh6bVRqdEdYSGN2aEZUWXNWY2R2YU9acVN0Nkxzcz0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(128, 'TEhsSEJrWTBCbjN3UmRrSCtiZDE1TWJtLzlzcXZSNU1BYjNPNjdUKzVyQT0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(129, 'VE9hWXdvcnRZV3J2NFN3ZWdNTDh6YnptWGxlWkg4Y2Z6N1NuWTY0b2hMYz0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(130, 'YnAwd0RSZGNNaGxIV0tpamcrQkJDTHRuKzhMQWRmRS8raklpTmxIYXhrND0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(131, 'NFQzcWdwbUtiTzFRdURmNjJQamJ2WmZZakJvRjVzM0xBcG1qRndkM1M0QT0=', 21, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(132, 'clpNNFo1UElydzFVU2ZKSnRQRkZuLzZKT3hZaUFNa25RMWFubUw1eGhrbz0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(133, 'WHEyR1VVV1k4OW9TenJMTTBKUGhoL1pVRGRBSzdwak1vdHI1bmE3dzFZVT0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(134, 'SlVocmU1SmZ1dHhzdnl1QlJSNk9BcTFub08wVkQwOVp4TS9aR0oxd3Qxcz0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(135, 'ejRONzkyQjdoRHQrMWNkd2FTNTJ0NXRtc2FOZ2J1ZHpqVXI0MFBpbFQ4MD0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(136, 'NHJhRkZsZU5aUUJoQ25VM1ltbmlXK3p4bUl6ZkZUZXBBbFRHaUZ6Q3MrTT0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(137, 'aEJvelpWak5pZStpWnpHRkRTOGZtcEFoTXV2TmVNcm5JSHpRZVhuMmF5WT0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(138, 'b2tvZnNiai8yUzgxSkFIUmU5ZFQ3NTdSVWtQVVFvNWowNDBxcG8zWmRpND0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(139, 'aWlIUVgrblNDZ0VNR0h6bHU1SUM5L1JXS2wzejBjME12clVTcFlhc2dxQT0=', 22, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(140, 'WWN5Y3VUb0VudGxYcVFZMDl3MHA1SHdZRXN0SlAxanArV3B3dlJydS9DVT0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(141, 'Z3JHdE1PMXBvOGRRKzNySFdVT3FYQktJcWdmT0QzZWNTUlM2UVdWWTJwTT0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(142, 'eFZReDZ0Um8rQS9zaGlCNDljRHJ4STErY2NJSC9qeUo1UHQzbzdBQm1MUT0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(143, 'VzFQd0FBVlM4M0FKZGtsT3JmV292aUl2dkVLQkNrWnhTMVBrYmxEVUtGOD0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(144, 'L0x1YlBHVFp6ZU5MSG9TTS9MeEl2bjcrbEJPK2R0Q3hYQjFJQVE4TGNWUT0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(145, 'bmRPUDQ3clJac3dtcWh3eUJEZ3JibWtVYU04bVZTZ2ZWTStwUFZ6ZVEvUT0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(146, 'OGpkRGdoUVFWN01VNkp2MGdXaHI5VzBaeTlKY1Y0V2kyQmp4aEcyYkhIYz0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(147, 'ZUt3cUVIUnA0emZyblU0V09NVmpkV3U4OERhUFExcEpZdFJWRk9lM0tYbz0=', 23, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(148, 'dStLSFF0ZWIxeDd5Wm1CRmszVXk3eGVsWGwwYnpzZlhmVDE4RUNZWUxOVT0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(149, 'L2JZNDBLYk1NRnNoSHFEQjBpS3NUc3VFYUlPd09zY1RweEdPZ0hXZUtVMD0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(150, 'U2pUcndUeENvUitvNGNHSGhVb2d5NWU2SW56cnBnMERsNG4zRGlUYzg1QT0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(151, 'K0VqV0czTU9BOHQxaEhpKzBudG53WHloRUpSZUJ2T29ralhXcGFWYURadz0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(152, 'L0ZBbnNGWmhSTVA2KzJHUFV0Wm42RWdJTThnOE04NXc2dFZNZmc2azVHZz0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(153, 'eVF0OVdvU3F2QUh3R3ZQTWpUT1R0NkdWZzFEK1l0TWlqNkZGTmZhS2JLaz0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(154, 'SktUTlBFbkk1cGFuaWdqNkdyUkk2V29iOVNsL1BkdWtWUWVOUGZVV1F0TT0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(155, 'eEdISzhWOU82M3pZNWdXOEprN1hTM2M0UHdZOGdNdXRERzdSTDVLVTlwST0=', 24, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(156, 'MmpvbS9IWEJnRVdqbDNBS05rSVJJVEtjZmd3R1FIYktJZWgzUkJMdEZGaFJzUGdjOE1CaWFucnZYKy9LcnpPSg==', 25, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(157, 'aTBrdGNxVkNURzQ5VEFzTW1wSm9uVTM0c2prZWhiMWJ3S2svUDlSVWFldTY5TS8vaDR2bVE0YTI5dHVneFQyag==', 25, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(158, 'RUMrZ253WXpPNG9ZNW9YYjNpYWhDNFdHVHZlcHlOVStIUzNIME85dkI0YkptS2UyMXZqcG1PTW9GZ3FWWlFvag==', 25, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(159, 'L1R6Tm1TcEM4UnpWVHB6dTZmWGVTV2ZqdURBOWF0M1R4MUlsQVBpTDFlSFpNK1dJU0lPZ0lha0UyNWgwQjhZRA==', 25, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(160, 'S3A5V2doMU5KeXZld1hESHdqZUI2T0Nsc2lwWkdraFJmaWFGOG0yM2ZCTHJLRm1jZGRGckQvVWJnbk5LdWJWRw==', 25, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(161, 'VjJUOGV4MWRUK3poOHZsclk2eW1oYzkvSDQralJOTHlZUjg3eHFwRmxFST0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(162, 'YXlrai9JdzZMWEVaa29MYU5HazVBTzk2VGVNcEo4aVU4MTFuREpTeEF5RT0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(163, 'c2ZhN2pldEdvMGhTRTNDMWRLTDErSEc5bFlaUjFSRU1IZHh1UWJGbjFrcz0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(164, 'aFBka3cwZjRybWUvd0FBaGZGMUdIeGxoeTkvdk1iVlRMeGJnTDVlTUF6UT0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(165, 'bjRVQ2xnN0w2S291T3NFZC8vbG03eXl2U3pRaGlacGduRTA3ZVdVKzVjQT0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(166, 'cVZ3eWdrTTRUZ1dyamp3ZzEvK1dnbEFiNmpwaDh3U3VKZXR0Nko5enVGMD0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(167, 'bDgwUnlZWlI0V1Yrd0FmTlEyOG1IK2hkVmxqMEhINHFWczJkL3AyV2svYz0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(168, 'b0pXb2JCUG5YMHFtOU5XMUVvR2hKU3VQMUxJbGhFcTg1Sm5xYXVjRWMyYz0=', 26, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(169, 'YkRBMnFMY2NqaXV3dWN6SW1vK0lRb3dTV3Bkdm5zNGkydXJBd05ra20wYXhyMVQ3SXpnbWFqWHh1aVRXTDBPNA==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(170, 'STVPZmpSb1NqRkNjZzJhWmIwME5jRVRFSkZFVVdZZU1SdytmNVJWeTVOYTBOb3NMWXk4ek5oamRZNFU3WUJhLw==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(171, 'SjFnRXRHd1Nwbm9GRU1Sd05PYTNySEJUUXFNV29HRkJncU1Gbld4KzJaR3V0RWUreWhOQWlZMUswSWVZZWlGQg==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(172, 'T1BYdUVzd25Ba1FOMFRYR202UzFHc3Z4bktKcGxCa1hsN2dGZlVneFJEZVhXdVNsall4TkhRVW4yRGFDYW1xSw==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(173, 'dHh4UmpSbXRpZUZCWC9tclNnazRRSGtrSXRzdXA0SU43OVJuQk85L1ZYR2U0VHgzcmFZVmt5N1pzWUZuVzdXVg==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(174, 'dXVaSTYrNGcvVzFkNFZwK2VmR1RocVAvRU93T3VvbUp5TldpY25OdWJQbDMrb2draGdPRHNMQ2kxVkFOY0lKTg==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(175, 'S2JDbTUzQ0VzYktkWmE4cFZDWVNLZXBwV2I5aTRxb3RqcG1HanJZeEtGTTJVQTh6d2k4NVZSb0czQVVkUWtlcw==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(176, 'SEdOU3ZwVDUrODVDdHRhMEdGSUFKUUhFWUM3d2YzRFRlSHFuMXRZeEpNYUpHdnc0ZWVLaCtwOUJlUHJKV0NuQw==', 27, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(177, 'VHMzamhmUWdzSXVOVXFyejl2YWt2ODFDR1RZNVpsZVNmc1MxNE5ib3dlYz0=', 28, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(178, 'QjdjbGdkaTI0c0x0MEtteWJDL1l4RlV4VGRTYWxrcCt3ME5TMkY1YTFqRT0=', 28, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(179, 'UnY2eVNaU1VXeW40U0ZPVkFzVDNidm5SWlJDZnJXSHFiakpSQVorSVhQQT0=', 28, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(180, 'Vk5PK1VUSlc5YmhoUEN5OVAzWC9iSUUzZ0JDL2lxdVhDZHk4SDdpYklNST0=', 28, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(181, 'SUYyNTNBZUV0bGt5S1VnQmlvSHo2SElFeVZadU9obCtZU3FRa0lIZnZtND0=', 28, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(182, 'RFoyQUhkcnZsNFFuWERFc0Z3M1lkc3V5MkpkNnVwNVJVMFNsdXJLSERrRCtDQkN4eXArQVdzTzlPTmY0OXlXZQ==', 29, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(183, 'K0tyMHU2RFZ1WFRqY1VmdCtKMGZ6VWszeUFXTXJvM0FxNWVBUE1uRGxJdUxFdFdiSHdGT1RJcWhOOWVHalkzYQ==', 29, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(184, 'L2Uxc3JJRkQzMEEzNFhHV3lUaHh0RjdGSXFqV1h2YTd5eEpUVk1CUUNIUGdRbHFOOWRUL3phOU1WaGhCeHkvUg==', 29, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(185, 'dDF3Y1NVV2htUEl3UStOK3Noek5tanVoNFFkOExUdWg0QXN2NHM1OFVNZlllNysvMnRkMWY5RVpaYjNBRUdnYg==', 29, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(186, 'ZjN5VmpnOFFpRmhlbndHVHlBMTh1S01hVE0zekxMUWNZRjNmNFNoekVoSVpnZUlhR3c0QldxMVRoTXVZSjhudQ==', 29, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(187, 'TUxDRE82K1BRcWtMN1VyVzcvRi9SWEhyeDM5TlJIZUxZYUg1R3FlYjZ6bThsRHhDenQzZlFkZ0syTUtacnRFaA==', 29, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(188, 'QVJKem1GeWJ1cUMzeldacldSc1g4RDNTQi9mVUNPaFpsLzV5b2F2TUdYVHY2T0JPblRCTVo2MzErRXJydUs3Zw==', 30, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(189, 'SVZNNk1iempmUFpLYm5XU1c4RzdZMFNDYjhYdDlidk9KYnpEa2NFbkVTNTZHa2pnRTNtQ3p3OW1ybDEzejViNQ==', 30, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(190, 'RkI4Y29RN0V5OUpxTXNoUjRSOWVCTXhMNzhSdmoyT1RHN2JQVzhWTEZmK1RUTlg1WURKdnV2Uk1MQUlDZC9ESA==', 30, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(191, 'RUxzaUQrSzdENFZQcVVvWFU3dE1zQ2IxTnFwSzNOMndWVCtRazVBaENjQVB5MXBHOGFGSis1YksydE9HMHVXdw==', 30, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(192, 'aVVSU1N0dUdWbDNDK2ladUJqVm5yV1B3Q1JxSThWaWROcitHNXRjQTJIaExqVFZQeDFlYmZ3QndnR2Nra2lDVA==', 30, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(193, 'NW14SWUvYmkwZ3hUZlJiZk9LcE5aMGJLeGRpRTNjOFJTU3NrMEdiV1gzMD0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(194, 'OUoyaG93b3ZmeFk1NjRaWHRSUisxU2NtWkpMY3lyK09YWEpZcnYxaGxBYz0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(195, 'bVdkTTdqdFkzQ1ZiL3F5ZzlHdGxuRUhmQzRvL2NONTBXSSszM3pvMGQwRT0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(196, 'd0VNS3hZdGZlaWhNTWlDV2NvSHRTTnpLMWJLai9XQ29sRklkbndBc1pVZz0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(197, 'alc0dzNGT203Q2dMditWWkNjWUZCWTB3ZHAwZHdRcGYxTEhHVERleEVRaz0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(198, 'SGcrZysxVlo2OUZMdkNwd3JZUC9BRU5xNklMNytGYURHWDgvTnAwZnFOYz0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(199, 'cFJEa2tEYTFrTmR5VWVwTmYrMU9USHhlQnpYcDdUZE92eG9aV05RNEh3Yz0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(200, 'L2VCb01UbFRYZ3gyemtYb0NqYWVpQXpramE3NnV1d0dZNHZnbUJncG13TT0=', 31, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(201, 'MnJiTGtITW56MG1wNDYva000YTluN09ucUV1TndJVThkVzhkeFRFYlQvMFFlSlpHenhINnhzU3hYZmVVLzJlLw==', 32, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(202, 'RHJDT3FmTE93RDAwUDZrOS9OZjZ1SzJwaXBqVUF4cWpBMkliRTlTbVdaRDNGR1RHZmUxZlJweGZSbWcvR3Bvaw==', 32, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(203, 'MnFUSzNMVXhKcUhRQXQ0MkE5ZEtCKzlQNG5zRGRjNHN1Nlp2ZGp4K1Y1Rzhmc0dMS0M1SDJnTXlPaFF5QkQ4Mg==', 32, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(204, 'UGNidkVsbDFCeTFRRGhjYjluUEpKRElXSW5GVEpiZHY2dUpkOVlpcWpXL0FxZCtkK2ZUR25kb253RDlWS2Jkaw==', 32, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(205, 'aTVpRDBJMTJCc1I2TW0xMlFlVklMYTBaSVFWLzBBM3lySlJUclUzdU9XRi8wUjRiNUkvNUN3dGVMQlB3SVV1RA==', 32, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(206, 'VC9aUEtkTTQ5YStjU2RLYTg0TWJobnNmajBNMEZib3l4SnVwK0dCSXRjbzNKeHdoMmdjTXBJd1FLZ3JUR3Ntcg==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(207, 'MkE2MVQxbEF2NTJoRmdNSjRaYllQaHQvYUhwOFVHSTV1QTY1M0ZtdEM4N3Y3bnRGSGxWVFFRNklIZC9LWUxZVw==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(208, 'WFhreVJUckRteXJCQk9qajIzcmlKazhmMm5YTmhEWGpZTXZRenFSeXFWWDZQVkhiNHhya2VsUjMwcGZ0c2ZGdA==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(209, 'cW1PczNRZUxoZUVPejdJRCt0YmtKMVI1TE5zaERFSHpEZTdheCs0aXIvRG5IQktaU3plZXRldnlVQjFTQmt2SQ==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(210, 'T2c1T0g1QXhvdWYrc01SaEVRc3V2NExTVWlmejNNUTJBM0ZzQkNjSGZ6NFBGQzF6T0JKZVRYbTgzNm5XZ0F6dg==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(211, 'VitNakpzczY1KytHQ3NqVHJBYlJ1QllwTmNEaWRqN3I2Y0pmYjhkUFloYzhsMzAraS9HS3VubEhKWUl1YUQ2Yg==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(212, 'RW82bWZPUUk2QlI4RWVWUDgveGdJaTE3MDZ0dVByK29UbEVRVVZkMndlRTFQbzJKTS9WQzFldDRoWExTVXhwVA==', 33, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(213, 'cElDZHZET3RrdndQOE4yVi9vK1ZvSGo2NGJJSi80Q3hQVjNGcmNRbVJpSWp1bys2Q3B3MDJlKzFXYmg3SWc2SA==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(214, 'UTc5T0s3Uk5qUGVLUlVScFJqL3Uyb3NYVStwK2ZUbVZaZ0diR0xpSGpqeHBlcWNobWs5eFp2djNmKys0azF2Qg==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(215, 'enpWZ2g2NkI3dDdRbVlJMDZXV1puL3loZTRVNVQ0OGxDMzUvSzY0T01iS1JRbVpEbDMvZVo3YjlxaWdyUjZ6bg==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(216, 'QW5tY2phYlhCbXp5Sk1nWXFaZkpuZmZCQ1hZT3cvOUFYMkVLSW5lbDlSa0xJYlA4Q1RKOUNWc2N1VjFBTkp3Rw==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(217, 'cUQ0bzJrdDA5Z2t6Q2JZdnU1VFlITEtlNCtxc3hjMWlnMHBSZ3UyajQ0aDZ0TEZ6eXRNY1J0UkN5MStXUnZ5Sw==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(218, 'akY4alppUElWRnF2cjc2SGc4dG50M3FEcWUyUXg5Q3UzcHZqVUtpRWNqWi95TlVEVVZVK1lVNEVjT1JSYkt1cw==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(219, 'WG42NHhRNm1vbGJMZmFJUmZMSkwvNHNLTVdRUjFrRjN0UXFQeWRGdU5jU0Y0L0VCS2xIVEJGZW40aHVlelVKcQ==', 34, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(220, 'NzBJbGxGV09TOXFBZG05ZzJCaFFpbFlidmluMUtUZzlQbG1VMWo2bml2cz0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(221, 'UEtBY2QvSnFycm1WVmNsMDJzY3R0Sys1OGJtQjZicldRaVo1ZWw2N1RuYz0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(222, 'd09NakI4RUUveUo2K3ZralZVWDFJS3NBTUVkYUJDSEtXUHlLQWdaVkdGTT0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(223, 'd25CZm1HeEIyZStQUVhmaVh0MHhhSm1kQ204Zk1lVmhXMWU1WjBHQzlFcz0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(224, 'eVdBM1Z2VDg2MGd4VVoyb1FYZjc4SmY0RU5zdHBGVk1XdkMrcDE3bjA0UT0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(225, 'K2lzL3cwYlBxQ0RmVndCRzNIQWtLMUNRbUk5SEd1TTVXckYvK0lUdlI0ND0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(226, 'S0dDUVIwbEtlMHlDY1MzYTBWazVRZVVkb1BSQlJvN3ZwTnJnSllxOW9nTT0=', 35, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(227, 'NUtUbGU5SldjOFU4enRMVUY2S3JzSzVQV2RHNzJydTRxTjdPbml1TzlFOD0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(228, 'UzBwd3JZVzd1eXIybHRnTjNlREd5NWk0eG9RUUI0c2psMkM1QnNFbjRPWT0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(229, 'RnVDaTE3SGVQNGhYZVRiYjExOU5LaldjWDlXVWp3SW1qVE1sOHBidDVsRT0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(230, 'UnR4eHI4WXFaUzFuYVdwVVUvOHNDVHJkNFRiOVhPMFpjeXJNNVl1OFphaz0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(231, 'NElubXkrZWhBSXVLckFZaXJmcnFTTW03YU9NSTBuZVE5RG5UbHRMejQxWT0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(232, 'cGJNN2hPYkc0bG1WSXNvdVZ6WGpKRU0wYkRPa0JENlNJVmlHMmFtdjU3Yz0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(233, 'Y0twT2E4TW1SVVpjdlJ4THFZdDNVYnFxcFNYTERQR241dis2Yk4wdWpUST0=', 36, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(234, 'blRCRE85RVNldVZrUjl0RGc3NW9kamJHVm9Yc1AweU9zRHBPVllUS2JjYmI3bEh0b3BKeVlybGpEUTgvNFdQOA==', 37, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(235, 'U200ckZ5aXZBdGk2L1d6b3dQUnlTdk9mK2Z1emxWVm1xRm1zQk05Z2VkTWozSVVXaExmRFNJNFUvMEZVeHdxdg==', 37, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(236, 'OGYzTWVhKzV3NnlMaU9TRWFBaXo3dGE2akhhMHhqOVRVUGpuUnZDL0JVc0xYVXV1OHU5K2gxNWEyVnBaUDQ0Rg==', 37, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(237, 'UVlBUXF6UjU2T0Z3ckxqYW5BeWpDMmN6bENMNzBmakVmRTlNSU5ucTNFNEhFdE9vaDZOWTI1d3RLZXY2TDF0MQ==', 37, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(238, 'VzlhQ3ErYklDT3paVG14NlU5MVFONXZCTk1WMzBJc2JuUnErMGRPZGxVQ3dwVEFjVU1SSXJYcUdQL2d6Wjl4bQ==', 37, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(239, 'L1pJelBZZjhBMVBkU21hajM2ZnBNUk4xK2tOSWpTOFV5TGQ0SExtOHM0K2JOQitrMmlSZlRNTWpsUGRrVU5MMw==', 37, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(240, 'dUZsbFgyZXQ1clpuVmJ1cWNpVlQ5cVg1QjJUNWZIdGNWc0liMDMyQmwyZz0=', 38, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(241, 'N1phTmIyRkpSMGpHWGRZa3dmb2NnRVJ2ZWNkZ1cyUSs4bGg4R0g3ZFI3VT0=', 38, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(242, 'T0FyNWk3dFZVRVM1K1hXTlRxNVpKS1M2S1BGbzdNYkl1b0FCQVJ1UkhHND0=', 38, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(243, 'WVhkbjVBMUhoTk9LVUxJN3FzeWJNWjJXNWtoZS84eU54NFpOcXBsWnFhOD0=', 38, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(244, 'UXg5ZC9oSXZBbWVxbFA3TjlCNkxpNExmd3JNUVh6OXM1Y1dqVC8vSDRqaz0=', 38, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(245, 'QW13Y3VZMXJscVRJai9XZ2s0R1NNNTBZRzFWd1E5MmVkTForNlRoRmNsbz0=', 38, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(246, 'Y3lkeU9aUTNEeWc3cnZNZEtpNnkzRHF0TndLcHA0SjJuanpEWmwwdzV6ST0=', 39, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(247, 'NUVFOXU0V3lKM1NmQXJzUjNPVEtqMC9qY0s2QStxN3h1eUQ0UVpBS0NDaz0=', 39, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(248, 'Q3lJbTJMNFYyb1Zza2RYSkd3S1MrRlF4bFM2WUpNTi9TRytESXJvMHYxOD0=', 39, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(249, 'ZGdtM0U5VkRFUzluM0V1c2UyWWF4UkpEZU8wNUlTbG5uRWk5UG92b2xNMD0=', 39, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(250, 'd2dLOCsxM244N2VlOWhlNmgzc2krWk56VlZRbDcvSWxtMnhDclhKZldlRT0=', 39, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(251, 'MXlWc3hMVmlHVHhKdDNaU2VxbXNDSCtwNVNQcXZqbFVDdXJqQnhML1dnUWFxN00rR0lOeHcyOTd3NVpoNWV5dQ==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(252, 'TlJNV25jMmdnZ0RzcmZQMGtGbVFnY2dLK3E0ZjYrZWZFVlA4WWMyalhINVhpZm1MVmkwcHdNNzZONmQ5VkpGcg==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(253, 'UEFOVVA5YmhxTDZxd29pYk9vTXIwOFF6RWJ4RkQ5T0l1T1UvM2dPcXNLUUUvZWtBV1pSMnVqL1JWQzF1UGFKWg==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(254, 'WVlMbkpUSWV2WU9nek1UL25COWVBK0MyTjdxYmw3cllPa2hOblc5K1RqRXVRWjg5QklaM2Z2ZDlWVnVoY2lEZw==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(255, 'T3kvbWh6L3cwTUlKN1ROaHNpZE03Z1FGWWpZcXFkSTlMbDB5T1pWMjkxcXRDVGRwWktTVmNsUWRMc294UlRqRw==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(256, 'TGVrR2FxUVhLK2NFMEpDNmNGSENneEtnZlpmSVA4K1lzM3dBb29uQnhaQjVwWmFTd0s0cXBqdjFlQ0RPaG9Mcw==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(257, 'dTdtL29maDFXR2VjdU1OZTZlN1JyemlNYTU1eUx3VjhwYnBjeFV6bkNxQzRzaFpVY2xkNFpRQ043czVCUXNPRw==', 40, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(258, 'MG5LcDdOU1hUc0pMMW5Tc3kzdE84R2lZS2pUdlJ0ZWFESWdNREZISHdUOD0=', 41, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(259, 'dmNKSHhwRU8vZldVMVg5UElaYzRSUmdsQzl2K2ZYOVAzSlU0OXpzWE5TZz0=', 41, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(260, 'Z2V1NVBLb3huTUp4cnp1T2RvVnJ0MTc0VEEwQ3duMWdlcjhaNVhQVUZ2WT0=', 41, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(261, 'aGlsSVcyMFo1QmtVcHp4WWhQSWtLamlZRDZNNzcwNkdoMUlEaFZ5MmJ1az0=', 41, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(262, 'cERoT0ZpM015Nkl6VWxYZWVjRlpCdCt6VXU4WjNHUnRJa2dCcVhRaVRHST0=', 41, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(263, 'bVdrM2d0dFFNaTR1bkJXUTBONUNsMEVEWGkrTTZXYkNPa3BoQlgzdnh0Zz0=', 41, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(264, 'Q0pZLzdOZEM1b09KQ3lDbkEvQWIwZ2hzVFFaWlAwZXp3Qm5GV2V4cEg5ZC9aVTE4L2FwNytpRHRVdFUrOC9EZQ==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(265, 'TDYvOWFoeVJEa0pMT2tueW9ZOUJFYkVVUXhqaFg4cUdjTHZhREs2WStPR2F3eEtqSGdEQWtxeFRKUVRVNmU4MQ==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(266, 'TmhNUVhoSktFaTF0UExsOW1keThlMjdra0RLYlFaQmlzNEFid2J4dS9DS0hTdS80OHA1UmhJVkZOYTlOeDhybA==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(267, 'MnV3NzVFZ1RnRnZBNEVHdC9PN0FRZ2FmMEF1Z1Vmc1pLUUxpWGhDVURjUFlxMTlacS8xbXpmaGdySGUvcFcxTg==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(268, 'QkFTZ0FSUTJlQlpHUDJ2SGt2VEVJa0xhVEtHZkczL0hFbk5PcWsyM2RVZ3dxbEZJZnI5V0RlNGJJMXNVQWlhWg==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(269, 'c1FncCtUQk1jWWFrd0drQTJ0anhWeUg3NlBTY0dLL0dJckYyRXQvbFVpbFVSSEhmVFRZeUdycVBCbHd4aklHOQ==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(270, 'eXNldmdyV0RpQWh2VVRxcTR0V3NCWDcvblFvcUV4Ym9yYXdhVndnTVVvR01xakp2M25VeFVLQWN3SSswcDZnQQ==', 42, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(271, 'TUhObjJEY3o4TjNucnFabGtydzJwZ2JtbUJ5OVlmYXphL2QxMzlEU1daMD0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(272, 'ZFNnTUFrL0kraXJkZzRDRnZVaUJsQzlkeEJzSTJXeXM2SXJxMWxZRi9CZz0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(273, 'bm1wRTVqR1ZrcmJjTmk0Y3oxRzJFM0tBczkrdVg2VXdhUWM1RWJad3g5cz0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(274, 'S0FlZXB1VE14ZzNDL3FDNW52azdlVlplb1NsWHdTY0pkR0U5Zit0RlMwRT0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(275, 'djR6bnd4Z0t2bmRxK1FUOEEyclVNYmtWcjRvanVGVFFwMnFUY1J3VVJoVT0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(276, 'b1h2SlpRV1Mxa3Z4dm16VGdsR3NrUlRpcGkxTU44OUdzemtFU2RHVjlKaz0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(277, 'TVNGZ1NQUElsWXNHbndlT1ZGRlNibFlyZkxYdzl1VFNiNm13VW9uUWRXbz0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(278, 'eVlYODlQMkJMZ2VadTY5VmFkYTVKcXVMUmI2T1pKTFVmOHhHTVNFYlhYQT0=', 43, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(279, 'OGFwK3VxT0dWUVRpQ2lWZ0VzYWh6ZTV5RTB4WWR1UEl3aGY0Q0drL3V0M3Ntdm82L3JldkkxZnE3TFhidHp3bg==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(280, 'NUMwci9GRDBrT3NMYmdFTEl2c2lGK3pEZlAvK3FmbFdtemxOY2szUmlqUDMwdUFRZ3M5UUlRZGR1MWpmZVBMQw==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(281, 'bkF1M0wvZnNjR3VxVEhzZHNIZWJVVjFLdDVkSmphaDV4TGZQcXk2clhsTUdkZmFKMVBjTXo5ODFLSzc0RmZDbQ==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(282, 'VTYrQ1ozQlc3ZFBDZUpEM2p2c1ViaVJyT3J4dysvRmYvY1hqMWNrcjdWM29mSUNadFoxTlRibDY0RDkvalU1VQ==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(283, 'UVd1a0IvUHM3YUhWMnFZK05Oa29LR2tScFpHb3dCbXlQMk1lTU1iTkR5Y0YrRFo5c3dJZW12VVJkMjNXb29iZg==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(284, 'K2k0VVQwV1JVY0VDQnJVUGdVUmpGT2xDTTFHbjZVdXNuUGJiVis3bm9KNWt4VURaNm84bFBuMW9vMWlOOGZoeA==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(285, 'dzRVQXAyUlhqR2hSWkxreFphdWNyaWVNUHZsdDhvb0lxWGF4YXVnVzdSQkVuME9qcVJKRjM0OWo3Z0w2K0hyZA==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(286, 'U09SRlhhTjV5YVdMRWhXS1JHNnc3Tm1JR1NLYW9iaU1mTE5JRVRGeDdUR0pTUmNHRmlEZmZtc2dJY2NVRXNEQw==', 44, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(287, 'RE5yN01pTkJMRDV6TzkxN001YmFXQzFpd1FGR1hTeGFGSnZ3K2ZCRi9kWT0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(288, 'N2tNRkZld0dKNHZ1T1ozZ2lobDVzczczOXJrcFhEeGVZclBtRm9ubFUvTT0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(289, 'Z0JrbEU0eU9aeC9CbXhaZmhmajZ1aGpmdDZpMy9aUzJSK1dBVHVKOUgvdz0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(290, 'aWtuK0w2aG1VTXFmWHVJdVkzN1ZMeGU1OUVMMzU3ZFZNVG1hcG9XSVVyOD0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(291, 'UVpVcDdzbEhuVldtdTZBTVhkeTM5WVU4UWtUdFRabWVzdENtTGhHUFJ5VT0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(292, 'dXFvZXZEVXZieEpXWHZUemhKclJBUnZheSs4bzdKY3BjV1NlaCtsOXVzYz0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(293, 'bkUvTFJXNkpZN285UFkzMllkTHFqWjdUaTRIQWpCZVFoQ3VqMTI5UUV4WT0=', 45, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(294, 'YVJFNGVieUFhWXA5QUVCMjN3Z0FidDZZTzM1ZGtTWnVFVUFIRWF6R2d1Yz0=', 46, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(295, 'VTh6dyszYmZVelFBU3YzN0RaVEIzcFpUb3FFOHpDbVB2WEhDanl1N3hUWT0=', 46, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(296, 'QXIwcTdsVkNhVGMyam5sWWJla0tNWS85NWpoVzVkM0N1UUR4ZndMNkFCVT0=', 46, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(297, 'c3JESFVTamVYZG53Ri9KNVJiSVJGV25ZZHcyVHdCN01BNTlzSlZHYzlPZz0=', 46, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(298, 'NWpwZjRkSXMwODdKWThTRFczQlh0K3NvV1RlTHdWZFBOWm1GcGVnQVMrYz0=', 46, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(299, 'bTY2bTl5WDBKaUtodkYxUk5VTTkrdlVVUkhZMnlNWENuM1IyMmpkclpaZz0=', 46, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(300, 'cDN0RzNpV0NwMTJWdm96S2I3SE5tajVMVnZHT3BsUGFGM2dsM1hSZXh5cz0=', 47, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(301, 'MWJoQVpJYjVYSzUrZzB1RHdRNmNteUdpbVAvVnhlNjFQcFUzOVVCR1hZOD0=', 47, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(302, 'Q2xVaEJoZmVzZHZGaHVDOHNJdHo5TStyNmFGeGt3NFJlTDVoemN6dXE5MD0=', 47, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(303, 'UDA2b3NPeUI5MkNoUW5jQWJUME1kWFVzb3FYa2V4NGdxTjQxd3BRMzk3WT0=', 47, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(304, 'TnpDWDlZRkorcnZVTktwL1NlMGh0SXBEdWl4WmdLU0hVK2J4Ri9SKzg5az0=', 47, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(305, 'Nmx4VzBWMVZOaWY2YmZEZlF5czJNRWZWMVhQMCt5UGtzT0Fybk5VbzUyRT0=', 48, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(306, 'Y0ZpMWFQYmlOU0ZobUsrcEtRWXQ1VmdGQUdXU3ZRSHVtTnBEUTlQbTZVdz0=', 48, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(307, 'OVBQTnd3aTl6Ym9SNnVmT3pRdmQ5VkVrdzJVMjErVGt1RWM4eVJPYi9NOD0=', 48, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(308, 'RzBJZkx1ZHJPY2JXc0U3TlVpdmU3R2lkcXZzTjN4RnVVSnlnbzRWaEUwaz0=', 48, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(309, 'bnVZMzNwbmtGT2lZT283NWpDTHdkVTZ5Y3VYVE9yMGZnYU1rdlRqTFVzQT0=', 48, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(310, 'dmFLdUtYalpNbjlXR0tZMDNlMS8xOTJzWGJrUDlwU2xLNkZUdFVEZFlGYz0=', 48, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(311, 'VjljcHVLbzF3bExaTDh4VUw5dHE5WDV5RnA5ZUphN1I5RmJvOVlDb011bz0=', 49, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(312, 'NkhsN1R5c0oxU09CbVQzNVM1bmFqck9DNjNiMFF3M25xZ1pmOEtSQk1zZz0=', 49, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(313, 'bWoxaVQvaHFVOEVLZXREd0V6MTJWa2hjcEZwSWd4dVBhbEZwRkNWTXd2Yz0=', 49, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(314, 'cG1VN3FueUs3UXE1aTA4UmM4RW44akE5eTRpdS9KbjF4TW81S3VvSm9ibz0=', 49, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(315, 'bW92aVhFdjg1eEVqRTEvRmxLM21zeWgyOHZwRGRDaVZEbWxsNEF5dHBCUT0=', 49, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(316, 'cFAvNUtoZFBPTUIxRkVVV1p6QWZVR3ZLdWd3Q0JCMmRKaDYveDNHNTByOD0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(317, 'eUNzVU9jL2xFTEtzeE1nTkVzYndZWlpCRmxvamNRS2xqeERuWE81T2gxTT0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(318, 'b2R0SFZNSmFlUXdBejUxQlNPNWd1SmVmTW04WEVwQkUxWVZPd2FRRzNvTT0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(319, 'ZS9pK0FuaDM3RFE5M3ZBZ0xFRUtlYklxWnU3VVAyd0hFL2dYSjBHTU85UT0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(320, 'SGtsVFE0OURua2s1ekZvYk92WnV3cjM1VE52a2lXbTRqUFNMdFFDOGhlcz0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(321, 'ay8zbHhKUnNBUncyN215WDhCSGJIbENFcHdkL08wMkkzalYrdktjcExKND0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(322, 'RnpjeFh2YmNTUXBQZGErbElZNXRCdHVKNEkwdzNzbVRMNEJFaVZxM3huVT0=', 50, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(323, 'WTNnbGxLOGpERzhodlVJQis5d205YkFyNi83czdtQitwdTA3SVZOQ2tydz0=', 51, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(324, 'eDk3ZnhsSytIS3ZRMXhRUWNpazhTMzVuYUw3OG55R0xUMlg1RnArUWExbz0=', 51, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(325, 'V0pVK01mN3luazdHcXB4UWgyOFRrRTN3NERjVUZJd3hFOFF5VllDa2tPUT0=', 51, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(326, 'Yi9YeVpBRWJTTWl6UlhBbCs1eWp3Z2tySjIwSEFobFlEYXAzdXZOeWJ3VT0=', 51, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(327, 'dTZzOEdBcnpCNlFvQXJGblZ1VE8xbTU5OERMbTl0SmI1MWJ6WXo2b0lVYz0=', 51, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(328, 'VWQxYUJTUjIycDB2dGREYVE1TjNQRGFNT2h3UHpURGdqeUFIVEZWY3BoRT0=', 51, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(329, 'RXVnNnZvZllCcXpZYm5pRXJrQVFvMmdZV2dtbGpwQS9nWEZGTXlESXJ5WT0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(330, 'NTJleWZKaTNWNHdoSUZqTWtOYjBCeHFCWUErVkgvbzJNdjZWWWNOZjNmZz0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(331, 'a1dTekhxdk4rL283akVhYXdvTGk2WldJYkR4UDE1UGZ2bGRqTkVpR0ZpMD0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(332, 'bSsvQnlEMzlRQlY5NUdNZ1YwRGI0WGJ2M1dNSVpFRzhZTUNxa3J6cDI0WT0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(333, 'VHQxS0o1a3h0VTdHY0F3Z2tWeWVxZGlVMURxNCtQa1ZISlJHLzR3T3NlND0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(334, 'T3crb2x2WFBDdTJSeHhhNDByZVdTdmwvekJiVndicjB1cEZEVHBvVWhRST0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(335, 'NWFNbThFY0pZNlJGekd1dmNiMmVqelE5cWNyZG9GSStZQ04rMEF3ZG13Zz0=', 52, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(336, 'L0JYL3FQd0N0TDdLR1RnUDBnSzcxc3YraFBzVzNsMjh0RGdjcXhGMlUvMC9RYVFDRTRRS01pcEZxMkNGOXBXNg==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(337, 'ZFVLcG5wVzF1aWgzT2ZhR3RMQlpXOU9FQXZ0Z3pQaEdnY1RoZ2RjZDM4S21neVlHZEd2RWlNTG44blhiak16Vw==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(338, 'YUFGQW1YMEVndjZERWhkVWE0OXZPdjRwUDlZYzdTYlJrbU5sSUdFZXRzWTlQZnlWNUZkVWhscFhNT29wZVRrWg==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(339, 'cWxvY3hweXJhbTRyUmRUai9EMnk4Uk5qdjVZZmtsblNySHJtVlkzWTg1WllPTTY1aW9LNHMxMzRvZjJxbjhnZQ==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(340, 'SzJpRDJiWjJqaktuZXdvQmpWY0FwZHZacXByeDVEdWt1ZCt0QkdMYTM4MVNTb0hUQU85ZnI2UjZQYWVBSzNYcg==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(341, 'VHNUM0xnQkJhSTNLa29KTFRFYVo2cEZ4NWdqZVRCZ3drTElucHcrbjQ3cmtuelVMUDdLKzFBY1JHZ3RVVEdmRQ==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(342, 'WnR5ZXh4cG44NzVRcUZKRGJiYVlqV3dlS0VVUjVTWHU2OFI5amFZWDllYTV0Zm1QMndOU29VZXZqUjJmRlNJSg==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(343, 'MXg4d0E3SUlYd3dEeUxpWHc5QVpGT05iREdSR05Rc2VwSGc5bElra2pzSm1oY1hqOC9mTnZlRmEvcE9obmpQbg==', 53, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(344, 'ek9vemR2Z2k2bWRxNzJJcE5CSzNxMjM0aUNFWGltMVEzMWxjRlNCRlpEbktoU1VyeUdOaDNuL1dqZ0lCcGxJOQ==', 54, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(345, 'YytqRzBjWXBib0lzN3FMQy8rUUNBMi9RV0g3NWRVNzYxRS9tOWp1Z1YxT3c2UTJwbGJZb0liYTEva0lZTkxrcQ==', 54, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(346, 'cFU1S2IrSFFRdGNrMVYvYllQK05qU2ZvNkJBSlpuOHovRisxTDBiYjBPNWtDc3dGRGFNbm1QZTkzRE9qTnVjYQ==', 54, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(347, 'OGgzK2Q5NUE4b1dpdHRYNWlucDNja3NxLzJiZ3hMQXBrRGNvcVhSYkVDb21CaXlnaSs2Q3lNL3RHclU5dGMrag==', 54, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(348, 'VmpvalJMbEpoNkpVS3dqVjVhcDNUSFRRZXhYU2Z5MHVienJneDJnT2RWL0VWNWRYVzhyS0dqa2EvamcwVGRSNg==', 54, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(349, 'bU1TQkVhUTN4OG9qbjBqZDZaZjJab1lWOXo2UGoranYxbUlYSk5sMlBtSlc1aFpLVkRsRTRxQ0c3VU1HcTNrZw==', 54, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(350, 'MENDUk5NNTVPa2tOWnl4ekJCcGkvRjZmUmZBdkhPaVNYdk5xV3dWa09XOD0=', 55, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33');
INSERT INTO `keys` (`id`, `cd_key`, `game_id`, `is_redeemed`, `is_expired`, `expire_date`, `created_at`, `updated_at`) VALUES
(351, 'bUEyUDlpcDhwempFZVI2ajVZbDh5ckd5dWdBUExMeGhkMU50UWk5SUhLST0=', 55, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(352, 'R0lCODVnQ1NXVHVOQzZXUXVqRVF2blV1cURlZWxVL1M5b0hrQUoxQ3laOD0=', 55, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(353, 'OUxRWUJUM1pQR3NQby9QUG1xaWNvclR5aHBNWFlDTGlYU1FXaTVscEx4QT0=', 55, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(354, 'Q3I2bm96Ny9UMVhrbDlDcnVhK0xMaFkwYVB3WkFpeFlzejRoR21CVlhYWT0=', 55, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(355, 'MjZacnNYYi9KZGFFcC93c2VOcjFHZEFLeWVmN2oycC9yZWlxZ2J3VlMrcz0=', 55, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(356, 'eFpPdS9tbUdKTDNGL3pMZUxSNWhOWGlWRjVHYzJEMzF6bkdwOXpyWEpNaz0=', 56, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(357, 'OExxWHQrNVg4M05uQUtqdEFJd2hnN3BRYWRXbkdvMi9zcVBLTkpDYnlzaz0=', 56, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(358, 'cVlTT3Q1dmptOFN4L05wb3BDTjNJM2lFKzlnSytHRWFIN1BSdGZRMUMrbz0=', 56, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(359, 'SVVoNVlYOUlKQzFVN1FIOHM4eG5ZaFBXaVFEM0RwaVNaRGR2UEluWUorWT0=', 56, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(360, 'eXNaTW82dWozUTRmWlpNS0JyQXdNVFRoekJZS1JVcEU3Y1NoL0cvN1VLTT0=', 56, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(361, 'ZDl0QWVCQWttRTFqZDV1WFBpTTdPVXpIdGJqdytjRHRSS21MTjFOSWx6OD0=', 56, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(362, 'RVBVM2Vubkk0anBjZ3RDR0tBZTc1TW5WbWlDQnIzZ0VsekVBUTJEZmhYNVRhRjdjeXJ3MFB6Y1BzcndYN0IwMg==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(363, 'OWc2YUZNUXZiUFgzemlCVDBGL3B1WVcwK052Tnk3UVNlOXFWdGJadFpmN0psam1nWFJMUm55WkRJTnVMMlp6UQ==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(364, 'OFltKzVGZVBGdFc1WHhGZUpkbHBUcFhQdFFUeVM1U1FUUFhBSGsxZnp4YTVMU1Vsb3luYmxzRWJ6NHVVdEtKaA==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(365, 'REVkQmE4S0hUaGpyWFNmaW1nVVVaYmx0UWs2WUgvV1BuU2J4N1BYYTBaT2luK1RZL3NvU1RJa2J5VS9Sak1Dbg==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(366, 'aXhGWjEzbVpIVWNzSklBOUo3WHQ1U2xDL29ZYm5VaWwyTjdsbFF0TDJhdkpCM21zYXVzQWZxTVY3N0RtUmhSaA==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(367, 'QyszakowL05BVUw5N1I1bkJPRVMwU0MwM0psbmZDemY1NEU2bGxwa3BYclozdDh0TmpNbVhic3NqdkdsVFU3OQ==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(368, 'bkxINXNGWDJoYlk2MXV0aHNlTUdHOHNOV2I0dVNvcndHVTZuRUlSQUxwWVhJenV4QVJlY2dPL3NjYldCWSs2Rw==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(369, 'Um52RWxjMFJWaE1qRHJQb2E5OHlDZXJGUkRVRkx5SmVCcHZZQnVaWENHYzE0WE8rbkdMRzNJeE9xeTNRL1ZjZQ==', 57, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(370, 'RE1hUCtPaldQRThDVjVJbWJWdFlhMjFoVGZuZ3lyN3hJenkxQWpsZVJrMD0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(371, 'c1U5dGZlZUhUYUdSb0pKeVpKeE5VVWpvbXFKc091Z3R6Ump1ZmtIMm9ocz0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(372, 'aVFiaEsreFF4SHQ0anBFTXFEMFA2c3lvNFNSSUZjRmpmZjJNM3lMRWZROD0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(373, 'cGpRRm1kaU5MV3Zwdzc3dERGa3Vud0dwSk9PUmZRSVdYUHkwaHQxdElPZz0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(374, 'MDJLaWFGZ01kNllvcCszVG04UG13WUVPM2ZBbitRaXhkbFlaams1VmFtcz0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(375, 'SFNFTllKaFBDYTB5VFQ0WitObzRMeUY2ZmVwVkVhN3piNzQ1SXh6VXdiOD0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(376, 'ekJNUjRIZVplZHliTVpwVHo5dG5DOGVMVklnakhXNzFtTGpxemNkd0Z4QT0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(377, 'eVhyVzJhdG9TU1ZGenZpbkJQTi9wRGNJUkEyTE00MzBrWkQ0SDAzMjRCOD0=', 58, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(378, 'bUNsSHlkbW9vVVV1ZmxnRkVkUk1HbFNzNm5wRW5ndDdwT1l3U1R4cnVuZWV1YmhyTmFrK1Y5SjlxS3laVEhJcg==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(379, 'WThrRkt5WHd4eWFWVWIwV1RyOHNRQUlyUlJMRnFLODdmekdkd0Vkb1lNckU2WkFad0djcndqRmtPNk52L2RjTA==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(380, 'emVNNitlM0U2dGgrdEJyMkJiVmhFSDluYVNQSlVLYmprNFd0RVZlU2syamVuVkwybGZTeTVrTVNTdG1HZVM4Qw==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(381, 'OUFzb3VISUh5YUoyNWtNSVp1R2F1Z09ORjhDQVF2ckZsR1VqRXRJemVhMndJdjVrekdRaFV2dWFPS2Jvb0NYWg==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(382, 'amovUCtCWmJuN1oydkxjUGlpenFYMnp2TlVuYzE3VG1sbWhQTDMwM3FyaFk5OURsdFZKMnRzV2F5bnEycWptQQ==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(383, 'UDBtQTZob0ZvdEtoNWhlaERub0NrWFdiUlc5ZlBONUxKZWQ5UmloV2JOaTdhNDZYc01PMGl5VnRuY0N1UTlwcQ==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(384, 'emFOYStXeEVrY2ZyWG44Y2dJeWFwekFCMmRNVU0wQlZ4TDVtdFh3Mi9PMHpjQ1F2YTZXWHJ3T0FpckJrWksrWQ==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(385, 'U21oZUpRZHRtZTBuTmVESExEMlI2VzVVWjFkS1BBNDlPUjBKNTR3UlFtMlA5VTlYdEtNQlNrMklNQjUzcUg4Tw==', 59, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(386, 'UDFtTU5LcHBOUG1DZFpsNGFUWm5ocVFwRCtyazEraDk3Ym1DNXJEaDE5ST0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(387, 'Z292SG04S0JiVW9GVGFJV0UrdEhna3QzcTUraDZhQ2ZLRUQyZmtlY2dMbz0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(388, 'T1VKVVk3QWwvdUFyUlFoZG5Wcm5hOHMwNk9tSWQ4QXBsU1o0WE14MVhvRT0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(389, 'aDZEQkdHK2ZmMzVxMDVnVFgwMHhlYS9jM2t6a09ZN3RpOStabCtxaEF3WT0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(390, 'UFp5Rk1RbUpySTM1NXJZOTJjVmtFMlB5V1V0K0Z5NHNZWDJ6YWNPbkJtcz0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(391, 'ek4vaTd0ZVpCaHdaMUhlR042U0hyZ2tITzhmWUtabGR4b0l6WHE3cS92OD0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(392, 'UVljRUFwS25vZWl4RWc5MXhBQlptWW4rTHdzN3R5VnFBcSt5Ui9hMG5sUT0=', 60, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(393, 'S1Jna1QrbDE5UDZQY1dvcXVjNTJLdEp1dHdiQ1NxMG9wL1VsYzB0L1ZiZ0hRYXdCSmtpVUVKTkx6amt2R1g3Yw==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(394, 'RXF5cTBmeDJGRXdVOTE2M2RqR3NHZE9LVWdMSzVya29WRHpBUVNUeTFvNVNZV3YrSU44VGVCY094RDJUK0RGcA==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(395, 'N0hzaHRkNFRxdlRCcWs4RzR1bi9pZGgvbklSS0RtOFFTTDFpTUk2WXBhWXoyMTFZbGFVSHI3b21RU1lPSWVweA==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(396, 'WWwrR0ZITjI1YWJkTkZQaFZ5VUJDeFBzZHVwSm0rWE03QTdnV0ZEeWhab3dvVG0wcENyaDk1L0xNVlRjL3lmbg==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(397, 'NFhsNmlkS3pvb2lQYnNLdG1ucW5qZDFxUmlNZmxYaE13cURBMFVIZVRzWGJodmpxZ3RaTGZJUDJpYnBUdElOMA==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(398, 'UnZYUldZYWRGVjFyL1YvelVqQXBCYTE4WlJUOXEyYjdQUGhnM0Radm9ENjJFR0FFYk5oZk80cVlROGRLU1JmOA==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(399, 'UUpyci81cWpDMUhJNmdmb0JHWDk4L1l6SEFNQnk1TmpJc2xIWGJMdlgyMGVMREV5c1BtZ0ZiOEFPMjBJTEZUbQ==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(400, 'RnB6TEE3dEVibC83cnkwRzN0M1J1eUF1S01pKzNvTDZ1NWJ2K3NRZTkyRnlXNFU5RFpub3ZHcUZvTFNCcG03aw==', 61, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(401, 'cU1nZUw0Q3F0RTRiQWJNMVBiNUVxU29mdGJwN0c2ZEhEMG5xZTdDNHoyS1BqOUZOYnFQL1RzcFc3ODRPMVdSKw==', 62, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(402, 'RXZrNEU4UGh4RGhqSzZaT3IyM2hwcnp1dzZJTUw4dkN4TFF4UVRJaFJXTHZYR3FEWTlmYmlKMnVxclJrQ0ZncA==', 62, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(403, 'MENkSWhuWllmTjdUN2wzNU1CeFFYRlB0OWpRUTF0bzBzU0NTS1hwaEJINTFoVWI5N0NVY3E2RHkwcEpMZGJibw==', 62, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(404, 'TlJ6M3VSbEw0SWpxWG4zT2ZKaWxOTjFjTzg5WWZRWXc4YitwamNFSldQMnJmNzdEVUdyM1QrRUFrWWZiek1SYw==', 62, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(405, 'WXE0RmxrazhmTnByUEJxT3BzVXdEMHFvN0tXTm1zWXkyZVFBeU10ZVMxWjJWbHpJdllvZGQvRUx5Nms4djFTKw==', 62, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(406, 'Uzh4Q0FURWVuQnd3dUJ4YndvRFFkQ2NhZytWa1FTVFFWUkdHckxiSU5EQmdWT0tLZGpiNVNHOEN5elhwbTNyUA==', 62, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(407, 'MGNXN1BWMzJDQXU5R1hNMU03amw0dndZY2JhRWovUnRhdUNadzh4VFVtTT0=', 63, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(408, 'QU5NdnlFbVBzem5iNEVySlFSNVNteEEzS2RkUkxrQ2NNUFZLNlNLc1pjdz0=', 63, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(409, 'WWszcndQZHlXNG05emc3ZUpSWW5sUlYxRDNTS3pQcXhTVkhMYnBnSnluYz0=', 63, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(410, 'bXVoQUE1eS9KdHRUSTEzMnJIV0xXUjBlS2JXaWdZRGxFeFY4c080bHlzVT0=', 63, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(411, 'cHJDWHdRcEJ4bnN3c2dqeFhCek9XUktOemVlNW1vQlcvN01kWnROc0JqRT0=', 63, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(412, 'MFlkNlowTlRQdEdwakVJWmZwelNYR1JYSWJOSWtSVUh5aFRuMWlSVWhsaz0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(413, 'aThtNWdaSDBSZUJsTlhBSXhZL1JKZ1MxWEJwbUprU2xaaVhFWEVCckw1VT0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(414, 'UzlUeEZsYU1BSGYvYWJTUjUzMGlXZlFocExOMTBnOHY4MUhEN1Y4RDRLcz0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(415, 'MUlQQklLRXM3VUpIdytqNTFTRUZvNFdndWtBTUNXLzJrWVhhbGovU2lSYz0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(416, 'NDYvMTRSK1RNelU4OUpTUUV4SmQwSStyMXY2VkZEZ1UydHNvdElaVFFZTT0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(417, 'Vkl4dTFRb1BXUVJLMWptTHpMb3hMMExvbmZTUXYrRFNiUFpFNGoyR05mZz0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(418, 'NC9yYnBkbU1rU3hoODJNS292YmhvT2t4bG1ReFNyQkorUkUzYWN3U3p1cz0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(419, 'UER3OHYxRzBOdkJQalJISW9hM3VqOU9LSHdOb1RFcEFHd3FyWG1rdzZybz0=', 64, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(420, 'WGpCQ1F6SWptK1J6ZnpJeUNHeWs1Rkl6TmNha3BmaDJuaC9xc25LK0t1QT0=', 65, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(421, 'NElSVUJvdS82MXF6Smo3em5QVnR5ZjJmT0k0UjROVlVYYkF4R3h2d2hEMD0=', 65, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(422, 'UkZIQTdSK3VaaUxzQVFCTGtkTFlPUm1RZ0pYRWM5ZVg0cVdsVG50M0llZz0=', 65, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(423, 'RkFLUE5BbkVTTnliK3dzNXRKQ2xWYUM0S25La05zUUIwdXZyK1FlWkRhST0=', 65, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(424, 'VDFMK2xIQzFaNU05SUNXdURWa2ZFOVFveGZoaHBTR2w5OVZWZUZVNThuUT0=', 65, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(425, 'VzVJdTNZczcwcEJoLzVLaEdtOGNRZVVsNU13ZWptQUJsak5kZWUxRVpRMG5sYWJDOHBvWnplNTUxVytoQit5Mg==', 66, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(426, 'T29mRTR1eDBMRGxQV0s3Vml5Tm1NMm5HOUdtWmVKbWxLRSt0S3htb29kbnF2OWhJdEdnV09zVEJTVEtSanpFSw==', 66, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(427, 'd0duRk1KQ1JyTDBadmhQVGlESjhlS1NrRzlnaEhsQ0wrVExUZ0YwenJXaFE4WHBaTHE1TmtYc01nM3ZJdUdLMw==', 66, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(428, 'TmUzRnpoWFR4SWh2YWQvK2Yvcmtlc25oSGsySmhsZkFJdmdzTVJ5VXMxZDBRdGtGUmdheW9LU3lpVERNOEdLNA==', 66, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(429, 'WDJpM014bHNoZTdvTkhUWERmMytqYjVjN0Y2aGFBeDR5bFpEdHRnVHVRZWxGZG9aYWdZVzdXS1NCODcvYitacg==', 66, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(430, 'RTd1Q0FrTkpVcEllVWZXOEQyN2ZxN0FDMmt4SW9ibkQ3alE3a2hweno5ST0=', 67, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(431, 'bXRic2hEdGQ5aTlWK1hrUS82UmYzMEJnU3BjQlFMZWR6UGdsZzhGNTVuZz0=', 67, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(432, 'SWo3em0xTVdTYmtiV1AzTi9wVnVnWDZ0TW1BdjMvb0lVanUzcUlILytPMD0=', 67, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(433, 'MzVIUHpxamVtY1o2OUZxMFMxc2RLRzZYbm5iWVJvRHdVL0hLU2pWeUM2VT0=', 67, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(434, 'MGh2U3hnanlBK3FxaVE2T21vMGdGZUlta2FiSDZQL3FteS9PU1RUcXloVT0=', 67, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(435, 'a1VxT1JJSGtzSWIrUmtIWnVlK3RTaTBnNHpvbzJpR3JsS3Z6Z1AzQ1dTdz0=', 67, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(436, 'L3Y1cmg1YXVUeFVWaXJ1eFhUenlXZjEzUkRtbGNsQ1gvanZta3VYNWIxaz0=', 68, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(437, 'VnJkRnJScXludUxOWksyWFRyWDRBVkM4VG9nNzJwQ210b3hrbHd6ekNvRT0=', 68, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(438, 'aFlJSWRsZVk1VUhaOTQrL3crUGJqV3dzNVUzemo5T1JpK2lOQmE2cW80ND0=', 68, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(439, 'M2E4TWE0VVhmQStUZm9PV0l1L3lZRmRsL1BLZ0p3U21QSTd1OVVheHlzQT0=', 68, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(440, 'NEhFb1VMbXpHSURYVzJhajIrLzUyaEVVWW5VVFllV3lLVnErYnN6Q21CND0=', 68, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(441, 'ZWtuQmhWMThoUVRxdXhYcG1oRExNZjBsQjQxQnpiVUFDUkNCVlFyVXRWaG1DRVVzUUJ3aFd3b0RacTJYR2d5RA==', 69, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(442, 'd1dYellHVEtqTktGa0lzOEVGVDNERjAyN1J3WjBxSys4a0drUkM1a1RNaWJNajJSNkhvRHQxdTBjK0V1YW94eA==', 69, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(443, 'WUxyRmJmenJiaGpObi83c0NqTTFsRi80K2gxdmVwSlRlaUpnaEFyUGJzU0ZBUUhkUXZKQmdIRmoyV0RyR213bg==', 69, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(444, 'Z2k0R1l0Ri94eWROY21HSDRtUy94d2xWOVdkWFdQTmhmUmRZVGZMM0psNWtNL0t4ZndNY001R1VKeXpZV1dLVA==', 69, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(445, 'SmNjalRCb09EdU4zVGpjVGVXUHZaenBPdnBZSnZ6bkJGRmI2NlNkTWdla0NCRW15cm5jemR4K0lYdFFGUm56Zw==', 69, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(446, 'Njl4RjFKK3gzWGRSUkVFdGxTdGpnT3ZhamliclpRQzNhSE5FR29DcjJzS2JHekZEdWRDKzhYcHAxQTliem94eQ==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(447, 'LzFxbStCL0NEQStQQmZiQ096SWVxZmcvSTk0TFB4dW9GU3A3ejBxWFUvMHlJSVFVZExxdGRPYi84cGZmS0JiYQ==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(448, 'dXhYdXgyYnBRQWdJR3daZjlTeERNV3lDaGZhcTJmZkFFaGZFdTR2M3J4MXZDVWFpKzNqSjMvNG5mY05UUUdDTQ==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(449, 'R3prc2E1QmY3czhZeW15dWwvaU8xOHJacCtadHAwS0U0djBBSnpiZnV6Rm1SVUhyVnJNalA5eGdKM3RRWGZXTw==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(450, 'cmUwZXl1amVaSDR2cDB1OG41cmpCcXhWcjQrQ29qUFdPdm0vNnV3dHMwM3MyQ1lpZ2pXYWN5VnRHZ2h5bWZxQQ==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(451, 'NzZlMTFUY0FZdkRyeGVrN2ZHdGhxYzZ4dmpUVVZVRjZtd3NrMC8xbEhpVFp2cXBZbFhIeXJvY3hkdzhUMkV1bQ==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(452, 'TEsxNUZPSWwzRzVQMHM5SlZ5b3dlRHZIT2NNY0tldGZ6RDNkYlFtZ01HQVlIL2hzc2tZMnNWTWRHb2ljYWNSTg==', 70, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(453, 'VFB6SWtLZDRTL09LTjlnVk82QzFZTnBGdkFzaVRKdEw2MlRJTFlIZU9jN052RGdUeFUvNHlLREZUK0Ztc3JrNA==', 71, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(454, 'cmpTVWtyRVRlbmJDTGd0dUg5azF2eEUwbDRlZUsvc210bmxOK25FbkZtK0g0VElvRGV1eURpd2dBZ2RvdWJWQw==', 71, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(455, 'ek84cVJQTUFxRk44akZqbzRZZG9ZZ3JoZ2RPem9WOHRjOEJsMzFFMmVza2tMVG1SRW80VTBlUndiK3B0T3ZtRg==', 71, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(456, 'eHZ6K3Rwdlhrb1I2aENVaXBPTDZwc0lzcEdiSDFBSXBqcTl0Vk5wek9sTzNYTng1V0tqeXlMYVZQMzZPZmxDSQ==', 71, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(457, 'SGMzamt5WCtjckZ6N2dnWnBUY0hzRTRYdGhGTlBIU1cwSXZwbVVsZmlxWExJNjV5bkozNUpNVXYrYm1jZWlXcA==', 71, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(458, 'cjBpZVZCbHBkVTM1WjZMdEcyUmZvcTBtNml6RTFXM3J6R1hwQVBDZTAzOFR2QjhsQzB5RVlLM1RaMUdEVGtxNQ==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(459, 'Q0ZWVjZ1UHBZY2RKSmJHZ1IzZ3pQb0hPZTNlSWplNUFqa2YzYitoUzBQSUVwNGJMWE9qb01UTy81WkN2ejZEbQ==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(460, 'dEExa2RyS0RYZ1lzNE1TSkY5RGFPZDdDT2FXbGRYelJTd25Nczh4NHNRcmJzTlA5QUk1elVockFnUzFLWlpPYQ==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(461, 'c0xzdlNkNXUrNS9INWVlKzhCTnRXVE8waHhzV3FoOEdpNDBIT0sraXlGYmJTWGdyUS8rYnFlOStwK1JmMXJmdQ==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(462, 'NTJKblM2NUpsOVlXTWNJTENZaU51YndKY0lNbnZjb1ZWVStIN04wVzRUMkIrSzljOE1mVGlGMVM0Ylg1TXhZTg==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(463, 'VVRkUGJQSFBvdUROOGFZbWNvcEhmMVpmOVE2ak1XajhObXc4bUdZVG5Tcm04RnFONDAwSlg3YmlnNjhsM2JCRQ==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(464, 'V0hpMnBvbFowZjV6ZFlQc2pKTXU3YU9qMGhseTQvRDI1NTh2RVhFdG1LWDdwTXF3N0RUd2pSU2tmTHplUzJCaw==', 72, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(465, 'TzhFZ2NXNGlnV0hKYU8xVGdzUlo1K1BIQllScXVzc2U2cGdmYldaVWF6NVozL2Zoc2pEME1JT25wekVPWm90Ug==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(466, 'Wm5LOFowWWVoK1RZR2FGQURURlVaTmlhb2ZvdkVxNCtUck1mQU1CYUFVT0pOcUZHR2Z6UUNoM2dJeEx2Q3NQbA==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(467, 'TGFtQ3NLamVWZ0hTZnQ2K01RRjgzZzNoWXBwbE1ZNG5nS21tRnpkQUJlc1U3S1ErL2pMNGpTWnZQWURRYytIVw==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(468, 'aFhWVGlpOUVsMHlVTjBkaHpwMjZuZ2NqUWRaNmFiZTZJdVZkeC9xaXN3d0Y2OVg2OXpWUXIxV2xBb0FrWk9sZg==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(469, 'cmR4dTVIdTYyUnA2WnRlL2dYWmp3RVZhNEY4b2VSZkZHeXFTdGhKSlZMNjNFTnhGZXhocENGUHM0ZmJ5dkNjRg==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(470, 'ZTFTZzNBNjBIalcxOHZTWUxQTzhDS1dqZUsrMDRsZFg0SXhQMDlzbXBMZjJSY3l1TWo4LzhCUmlSYTNBdi9FVg==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(471, 'L2NzOUpuOXc2aHRQSmxRd2YxMEhKUUhPNVRXWE0wVFQ3d0Y2ZFdRV1lPaC9uRStxOUtpWUxFMjFXSU16Qnh5NQ==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(472, 'SXJ3Y1FFZzNuaUJNZ2xvTVVEMEI2ekFGVlJDZHQwY1VDb0FWcjRqZnJENDVLTkphVnN4MXJ6ajA5enhYSnJHag==', 73, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(473, 'WGRKZ2ozQmQreXROeXo0cU9ZNk82VkdMR0lwSkZoeGVFZkNOSFFjanZmSHpkYlE1d1o0RUl0VGs1UXhya0pNdg==', 74, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(474, 'emRwdTlWT21tL09QdnRBTmpGMUYwWWJnZDhzOEIrTFRyT1ZWd1hiQkdPZkxMazJDaVIwaWxTcEJGS2M1b0I5aQ==', 74, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(475, 'SG5jRWdiT21uUm4xWHdTbW9ITFpxZFRQMDIyYWFoaEVJT1lBK29qaXBza0tKUTBoaVlKQ2ZIS21Hckx3SVFoMQ==', 74, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(476, 'OU5ubnlKc2ZqRks1QkdaUTRGTU5uQVFGZkIvZ28zQ1FUUzlMdFR0VWhwczErZDZBZHc5OXV6cjlMUEJzZDFiTQ==', 74, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(477, 'ZzBadmVBR1JIZG5RcGdiZWljeDFqcDlYLzkwZ29GcllhWDQzNktiY1RUMjZhU2MvWEl5TFArZ3V6WmJQcDV1Sg==', 74, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(478, 'ZHIrZ0tMMmhLS2FPNWZ3Z1Y2K01tcCtldm1FK0dCZkdOZXlUMHdqb3pTWEN5OFAwbk5XdU8wUlRwSHdmalo2dw==', 74, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(479, 'Ky9xVjhaaTNER0JtYUVxQ2gzL0FSUEJFMzR0WERLdGJ2ZlJjNTJlaUhGNkZoeExzR3VxOG9xT1MwQU54TG16Yg==', 75, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(480, 'SytuQzFuaVRNcjdGMlBOdnZhVk0yT29zblhTTmd5SDRyQVhBQkRWQnZYMmhzblBPdmZrbGx0NWppWVlUMHNXSg==', 75, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(481, 'b3U0dXVrWlU1ZUttWVJ4M1ZuREdwS2ZaRHVpb0o3alpYbXc2RWFlV2UwdzQybVFCb1ZGbmdZbHZzM0N2VElOSA==', 75, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(482, 'U0U4VVpMaEs0MVR1dU94bHFUTzVQUGNnc2JWTjhOS3ZlVjlVVzlTbUpyZUE3L2lrOVFzUGplZE5GTDNxcEYxZA==', 75, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(483, 'bmUwK3pxMTh2VzB4aVZWN3paZjEra2MzOXBMbUg3TGNxZnJFYWN2MEwrQ1B4UWprSlR6NUNHS2JNNXFtUUtOQw==', 75, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(484, 'TE44NzJleHJDcThXakIydzd4Vlo1TVBXMVV2MTN5dUxRV21qYlpiQ2Z0az0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(485, 'RFNIaWh4WWx4K1RWRUw2Nk9ocHlkMXNqY3VJQ1QyUGNqODQxZDVMOFNaUT0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(486, 'R1lhY1RYNkZXY3Z5aGZNeEJXOUVCQjZoaFFTTkE2SjlOanc5K1NHT3NSdz0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(487, 'YjF1ZzBvK0liSUxPK20rU0xjbmRBZTd0L2xKVnZYYzhwMmF5MUdLREgzOD0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(488, 'VndMY21yODNnMllMNlNUdTFIZEVGcFlVKzdmeU90YUVNSDUwZnBJOVVqQT0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(489, 'bDVmNXFVRGt3ZEs2bE1TaVcvd0lMTTBBakRCQU9Wa1hYUTk2dGI5VTBVcz0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(490, 'QU1PZnMvVDQrSXdRRnR4UkgwMm5WTVFIckFiekdGelI4R3RTVmZUTmRNUT0=', 76, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(491, 'ZlhWWnBMYmF3UEdMdXltclh3S3crNFVLNTB3THJWSU1zNDdQUFY3eDJLSkowdDd2L2FSNmtxcWdjQ0o3K2FELw==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(492, 'Y0p3WFZRNUFwVEthRnArTElHYmdnWHI4M3RXcVgwU2tLVkZWaDF2cVcxSy8zVkZxUnR5WnpXK3FMZWxhRDVmTw==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(493, 'V2RwVnNJd0VubnBMdzhtY0NHZmdvRDczcW9KY1ZJb2tTMUl2S1FHSCthU1RweTF2TFlEVFp2aWNLek9sZkJaQQ==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(494, 'eGFvQXEyeWZXbWx5K25VdFVhN2x3MytocCsvM3BxbzJRM2NCV1Q1d0Jwd3dGU05MRkpmcmQrQ2kvdzVDUWtXZg==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(495, 'b3NLVm9RR2FnWHI0VVcxUWQxMlYzRjBzcDc2cTVGSmQ5M0xNL2tacEQ3QXJLaXZwQWlMMElVblk5VGJLTm0rQQ==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(496, 'bGJOUms4V2FaZGVOUndKdGUvSjJjV1JrNFVPUGRlOE5ReDE4V1AxUWVHOXBkYlZnd01GRWZRc3U2NW9nSHlzZA==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(497, 'MTEvNCtyT3NpeVhIZnBpVzE1bWhxYm93UFNkakpWSElYMm82MjBoWGpFWHROZ0RvZkFNc3k2K2txREdydFpWTA==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(498, 'czd3L3hDT3NrTG8vd1FYeTkveEtqVU1UN3pHMEtrVWk5eGdqS25hSXVvYjRZZG5rb05yb0V0RnIyVEduQzNOag==', 77, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(499, 'cEtWczMyQTBXOHlkSHVyYi9peEtsMTgzY2NXYndNamhlMHRQd29sYWVQcy8reE1iRFMyNlpvY0xPYmNDd0pkbw==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(500, 'SDhvVm5oWk5Sb3VzdUJUdS9kOHJYeXc0d0ZsNkJ0Qm1rN09NK20xZHlpQmd0QlMydGhONWd5YWgxVHZHcE5zWA==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(501, 'a1YrKzdjdzJEMEdEeEl3cENYcDhJRnlvS2xwNTRUcUVrMmczWFhPRnNPTXlIRUp6YzFWaG5GUTVEM3c3em0yTQ==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(502, 'a01udi9Fb01tbS82am5kTzJPSW01QmR1NmhSUnhlY3liQkxVclRwQXE3eHB3NHhmbVl1clpLRUlSNDQvQlNoUQ==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(503, 'MVMvRUdQQ2hKVksxdE5Vc3hHc3BRYW93MXhBRHFNaDh0b01IZllmZUpFbHFZTXRsMm9WcnVnam4zMU1mV1pMTA==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(504, 'cHdsOFgxQTQ1Rll1V3RveEtlb2VmdFlhSWNrdTM3SEVtUVRFMHFOMDkrdEhNQUl3dlNsc1MvN2NOMXBoVW5LVg==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(505, 'am5pLzhPTFpIb05rdmRpTjN2bkZYWkpmNFhTNE1kcXBoV3pXSHJsU2oxeC9YU2huSDg5cXhISGFSSHlhVUZ4WQ==', 78, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(506, 'QmJYdXlYTENwSzZSTTBpamN4eGpzR2laYWNzcmNUWjk2Vklqd2ltbzFIT2xNdVJYMUpKRDFNOHlPcFBUYWoxcw==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(507, 'MDQrN0lGQjNIVG5ST0dxd2MxUnpGWnJaZXdTeFlKZnN2emxxWTFTRDFHeXJ3M0tvL0t0dTNDOXBoM0pSVG93Nw==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(508, 'clhkeWVZQTBuVW1vRXpZWFRvckFlaVk2OGh2S1lZem5abUFMN05icCtjcHYwamxkeHdVa0MvRE5PemhmQTkrSg==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(509, 'TlpvWEhCNko0Uk9GWVc0WmFkeUpnMTVmMWNadDl3akdIWUJIci9xVG5qUGZmV1lwaDVJUE9PMjRpdkdrVlFtag==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(510, 'TlNrSGZNY3I0WDY2SnpZU2hwWGZWZlAzWVdNd0o3b2hZWUYvSTd3K3BkME90eFpTKzg3Rzl0Y2k5YXZXR3R2YQ==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(511, 'VGJOampSUEh4YTd5UWR4Qjk2bkNTOGl3bmcwTFZQWWpVYWtQbUNLdlhyQjEwNkdpck5ZYjkxZmJwQkk0NmhzRg==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(512, 'NlNTbzFuODZ6MitqN3l3UHU5YmxoRXJTcUV3UEU3SFJMZ3o0TjhqaFhGOWlWR0IzbVdXamM1eGljV0RsdHlCWA==', 79, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(513, 'd08zWVJoZ0pZSFRNNFBzNmxIcXRzbU8rOUphcWhIVDhuNDRLNVlrN2w4VT0=', 80, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(514, 'QlFtQm5VTThNZ1d2Zzd3WjdCTTJCZFAzbU44dmhsMXR6TDhqUXROUDdLcz0=', 80, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(515, 'N2VmSW9TVXJycXQ2Qi96cXg1bUtES0hpdzhzVG1vUVQybEpLMUNHSzBzUT0=', 80, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(516, 'UWhaeS94dTA1T0VzMDZnVC9BUEVMc2V2SkM2NFQ0c2RMMWxxRFVNRmJKbz0=', 80, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(517, 'cUFYQ0U0WDBLaDNZVkN4cVBKTjZ3blB2Nm5CTGtGeG42Zmt2OXg2b1dvMD0=', 80, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(518, 'SVBMNWRoRUF4OTBJWjk2OUwwRGNKRDlWdmREU0xPYzQ4Ry9UNGpKdjBwST0=', 80, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(519, 'YStSUEEycUNXeUxqSlFEZG5PeGZUWUNjUVc2VE5mMW9Xa0RlMGdHWnRWZz0=', 81, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(520, 'YnE1dkw5WmluNUErMk0wT3gycitvdnhxU2x5aTllNCtFTWNqTTJpZElPWT0=', 81, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(521, 'UW91VFJOTWduOE5Sa1BqZXN3NGpmeVdOd2xuRGpEVkJiVkhzNS91Y3pZND0=', 81, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(522, 'Q3dHbDhKd3JTVkJsWjk0SU1BSzg5V0xlRVdKbU1PRG5YaStmOTM5a0NBST0=', 81, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(523, 'MVpzclZicDF1cXdLb1ltaEh4TGdOajdZWHh5NUxwY2dCY0g2SWVhWWNVWT0=', 81, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(524, 'MENPWXFHd0JxY0lnOVIrQkRNd1pWeXJpVFQxTlRaUUZhRWxKMGRRUnpKZz0=', 82, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(525, 'cGhmdkY1akpGRnB4czdld1NrWXZBY01XaUhSb1RkQnRBdURwNmVGYlM0Yz0=', 82, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(526, 'dXpUcXU2WDVSQk4wdjFRRHpWcTJISmZPdStNUHVPMWs5UHBaRlhSdXdzVT0=', 82, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(527, 'dlU2YXVLb1BVa3Fna1F6T3V4N3NEUlp2VzhDWUl3cnk2N3AwRUxCMUpxOD0=', 82, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(528, 'U1lhMXg2UXMwUXhmVWlveTVRaXFQbUVoa3llUzR0SHViVmx6RkkxMlBKZz0=', 82, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(529, 'RHdPd0tWY0lpNGtUUDRSZnc4alVEY1g2dmpHM1hLVFR5MGtkaEpBSEdHRzkxUEpldVpZS0JlNVpkYUNNdlNQWQ==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(530, 'MDJicVpYNkRORitkZUVpL3pHaXpVdnZNL21jR05OTmZMa1NYaGdKL3lDWTBtajk0ZXlSR3pWbnFDZjRHTzBZRQ==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(531, 'SVJYblpiMlVWTTdtWU1rNkJjMHNpNjVlb2p6OHlienlLY2JVamdPWndGa0xkNTFBYmhKU0dTV2lsUUtkMjBuYQ==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(532, 'VEJtb2YvS3JCekNvTm16NEFWNy9LWnZSbVZPMnhaajBzY3RvODN4MXp4VlYvTytDK0JrZEE4MUJpVktzMjRnVw==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(533, 'R3Jrck9LUVNJOVVJRWladlJtLy9VUm5TUmczWUlVWkRmR3pkcFdGZWNDeGE1SVJZV21yMzVCaXk5ZWxsNVdQZw==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(534, 'alptekhacE8vUHE1bksrdXE2aVhJcnFQcmd5TU91UkgvNU1TU2ZNTTZNd2U5a2FWMG1hV1VCNkhTOTExd1pVSw==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(535, 'U3FIbmN2UnVUdk0zbVBwbjArZ1I3TWlFcDErVW1mK005TzJxU3V6UzN0bzlaLzNHRjArZmR2THJHSzJuamdadA==', 83, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(536, 'TUNQR2N2UisvNjBXMnZQNWhYTkVXbVhIZDBEMXo1WXdmNEl6SWExeEVSbz0=', 84, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(537, 'WEJFNjRnYy9zc3ZoNWRLU256ek5hc2dPd3RqZStOZzJ2dmhZNDF0OFp1Zz0=', 84, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(538, 'QTd2eGowd1dtUDFUMDlwSFZpdGp3Q2xZd3BPUnYwejh0Tk5KalQ2UmdnOD0=', 84, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(539, 'U2o3SU16b3F6Q21rZzVQNzhJSnU4bi9aZDJwOUpEc1hPL1lHMU1GWTNOND0=', 84, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(540, 'OTl4TlArcEFpanB4VzRrd1BkRzI3ZWZUU0ozUzQyQVBkNGlPWnBpOU90VT0=', 84, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(541, 'ellvOHQyQk1OdXl2VUdjQ1dMdGdQcFZLTkRGMlFHRnBMbXlxM0FTeE5LZz0=', 84, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(542, 'b3VlQ1Q4ZThHRi8zem15M3ZBY05heitORUFpaWpmNkViOU5zZUgyU2NGTEdTUGFBbEZ6V1lhVnYwUjhTYlBiUg==', 85, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(543, 'c21BSDZBc3hML3ZIUHhUdVFQaDliMksvK3U3Tjd2Q3Q1dGZic0RPR2ttOXhaWlhBRUZ2SmxNalBIbHkrNlVDcw==', 85, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(544, 'b3NDQmNTOFRiK2k4c2NBSFhpb3NUYzdUbmdnZ1M2K0hUZHdLT2Q2cmx0cGVYSnNzeW1LMTFqZm0wWnRlcjFaeQ==', 85, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(545, 'V3pQcktaY2Z6WGgvRFM5M2xZTWpJZ3EzZTExeFdtQjR5akFvT2I0MXBlV1J1bHpHM2hxT2QvVDQ4M3h4WGZqUQ==', 85, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(546, 'QmRRZjduV2dVWHdoM2w5ajJzWVdJZUZaNTk4dHJjb1BpNVk5RkQ4NEY4N3pQeFcvSjVFbDRIOTNKR1kyczBQTw==', 85, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(547, 'RlVBVngyNjBCWE9wSHRiTTVlN05yN3BlcmFSV3JoM21SbmVCWXcrVysyZz0=', 86, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(548, 'RGZEVkRJa0VCb0JTc0h0UHBBNTA1RmVqVTREc3IzcDg1Ym5EZGdkMTlSTT0=', 86, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(549, 'NGhBbDZtVnVrUms3MEJsckVvcEFEb2VzVUVnaDNCQmpRdUVGdC9CY2s0TT0=', 86, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(550, 'YTg5MVp2TjFXNHpsSkh4eGlqMmpPNHFSY01Cd2lXdTlkU1BGbTRBV3pvST0=', 86, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(551, 'c2MrejhtNlV0UHRKUzFnSDVNMk1LcjBWbUFqcEdlbjhoZkpFbmNDUWY3Yz0=', 86, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(552, 'dXFyNndrb002SkNXYlRuVnNTaFBlRElEdnFEbkNtQlcyU3Y1eUdHaEc2WT0=', 86, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(553, 'eTZ5ZU54c3BEMlFUaUNla2hGbHpad0Y2bFptb05jaDdzbTNlY0tnTzR6OWE0WHNxUXQrdlVsZmpnWEtOZmM1MA==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(554, 'Mm1MR1F0SkZ2UkZ5WFlLclQ0Nk1Ia0FSbHZMeWF0UU96RHlHSlNNckRzYXR5K0p6N052czF4Q3JrYm9ISEtpMA==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(555, 'b2RqVXFDRGwrZU5mRzZ0ci9jbk5IKzJ3Y09uQjBGWERFWWFqbVZ6WUg4c3gySkJLVitDWnBHRHRpMUtkNkxUZg==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(556, 'ekdJakhQV1piVWdoUExWRk9XZDRvWnBTbVNqWXRuNktOekZvMWxnTjhPR1lSN3FHT21RRHFqWDlpbXhhS2tvKw==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(557, 'K20wWm5IV096M1BLbEc3TUdyTmNZcWs5SWhvdFRxVGVMWEs1a3RQUmZIbGFlSXk0eEZKYkRqeHR4QUNUeDE3bg==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(558, 'L0ZpNExFRnZhN3JaenJqUkdZT3FiTENhdVRVeEoyL2hvSld3TzlRdWV2dDFDeFlIYlcyNWhwSmdnNlFvV2M4eg==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(559, 'clZsaGhvVUFlSU9jNkhheUxyUXRzQWhXQkltY2FXSkEwSTllOGNaM2IyOXBuOE03Umw2aXpGbm9OUElGOVFmUg==', 87, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(560, 'OWNiaDJscmVFdVZ5TUtvYXhxSkY4VzJIdzRVME1qRjJSYzFvU0Fra2dSYz0=', 88, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(561, 'SjlXdllBZkN0VWN3UjVjd3BQRERoZ2wycjdNSDFkK1dndUJiRnFvTnY0OD0=', 88, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(562, 'YUdBcHE0cElxeFllVDh1SUg1Nmt5Zjk2cjVUQkNjdGM5TXlqMGNlSFJucz0=', 88, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(563, 'aEVZdEsrSlFPQTFYd3lNY2VPQm5pZjdmZXN1UUozSzBGdWY0Uy9LWEdBOD0=', 88, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(564, 'eE9adkRIOUtncmFEbDlmUEtWUHV0cVZSR0UvQThkcUhsa0lpcFVjRGcyWT0=', 88, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(565, 'aTVVaVVDOXFRakV4NHdGV2JnTEZJQzBjTXVPQmRmOXp3dTJFMzIxY2pjWT0=', 88, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(566, 'alpSem01dWV5UjREZ0EwTXZyeDFWbjNxdElaLzc4dnJ4QytRQXoxeHZnczd5SGUrMlFPWFFJblZ2OUpXMDl2cA==', 89, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(567, 'aTZPbFFjZjdLRmZaNHY4dzRZbGFQdm4rL3JreTNibERsdWVJdWR6akNxdGVmMnFYVDRvcFZsWkxqaS9qbnBKVg==', 89, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(568, 'dE5ZVUgxSXBDY0RDSG1CZHlCUDZTeHUra1g0NE15ZGdsc0Q2STZQREFsU0NxRDBSM1B4UWNqa3ppOHYvRXFuWA==', 89, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(569, 'M1poanA5d2V6NnpIVTYwaFZjckhGK0JKWUJKTDRiTUg1c0d3U25QM1Z2VGgxOGYrZXN5WUJBZUlwUk4zN29RaA==', 89, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(570, 'TVp3KzkzS21tZ1hEdUc2a0J4Um83OUNrWE9mdkRkVVZNVjF2M1dKMHlTeVZadVpsbUZHSzF3RXBWY0dHSmV1eQ==', 89, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(571, 'a1ZySjdzTXZSeEZRN2R3cTFabDZGdzBXekR6bFF0YXlhWGo5YjlpTGhJST0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(572, 'b1dXQldTV0tQNjV0ZzBHZ21lOVh5ZHJiVXlJV0x6OGNuSlNkN3hmVysxTT0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(573, 'MEtQSXJCazB5OFQyZ3UzWWZEUnZrV2huZ0pPVXRMa1VSYzJkQ3NzelpDRT0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(574, 'ZFNWM29QdVRYUTVJd3ZkQ0kvVFpqY3Z4Nzk4Y000T3V6TXlqS0FIWVBHST0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(575, 'aEloRWdIYkRiMG5pNG1iN1NvTEFhQnpSZkxpeEtxV0tlUnFoN3ltdzhQYz0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(576, 'RDB4UHl6VDJ2RmVYK3RXWmNxUlBYeUpTbXBrMjVQUEFubFRMMVFDQjBtUT0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(577, 'RGE0Ym1yRk9UVHpHelhvWFFhU1NNZEcwZDJPTzR6SjFvNWszK0x1OUJYQT0=', 90, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(578, 'Q3JMSEFOMmQ4RVpWaWNSd2l5eW9TUzVmRXBYbmdaKzl0Y0tuUHBPR2JhTzNwbURvTmc3SnBLNzdBSTBiK3hTbQ==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(579, 'OEFNREM2TCsyUmp5Zzd4MFFzUE16Z0Q2M0xXNmJWOWsxdTJHZDBORkg5aG9paXVZdHFMMTh3cVRGV1llUlpmdw==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(580, 'YUF4ZFpxeW9tNmhnMzlRZnhrSGF5N2x2dHo5dlZNU0MvV3p0U1REVHZPMHBjSkVHY0IxNTBHVitGNDB6ZGFyVw==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(581, 'UEljMzJWa09sUnRXS29jNzhsOWd6MFJUT0pYcXpGY2FlMC9WWXVGdkZOSUZOWmNvRXlhd3ZSYkhvUEpNWkR1Uw==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(582, 'eUZ6K0xXMEtPK0JqUDljMnNFeWhoRnpyVW42OXljSDJoWVRyODdVNXZsZGI1L1BkeDZEdHp2RFFuZnl6dzh1TA==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(583, 'YlZtbG1JYldMUHZZWnN5VVhSdkVzUHlQOGpoTlR4SnIxMi8xN2E3R2grZkptRFhCQTBYYk4rcXBpOXdES2RvbA==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(584, 'dXMwcDA4Yk9DSDBrSGNodm1XTVI1cWU2VTdFeUZQemtWc1lXMUNiY0dBT3FoNEl1UUw4VGdzREh1eHJaVzdpbw==', 91, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(585, 'TDBpR2hVSExacXpxWTd1VVZPOVJZTWc4M0JZQkdSaVhxZlBGU1prcCtMSXVIakVQQm94ZXltczhJOVoyRTM0Yw==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(586, 'OTQ3c1BjcEE3bzByVmdYZHE0OXUzL2RyaGxKZDhDQ1FnZEpsNGFCQnVySEJiMlJRSCs0dTNpRHJ1RzVqQnlYRA==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(587, 'SDl3d3oveklWK3ltaGErcGVGckdkelpxYmhmWDlJMVZaN2pmSzlESFRHK2RqTmpvY3JuV0p1WnRxOGVLVW1Zbw==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(588, 'MC94a0N2V3ZuTXBjRDdKWHBDNUFJeW9XTGRSVUVlT2VtTnVjb0JMREovSU91T0M3RGpCZjZNRjdlNEh5WkY2NQ==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(589, 'MGsvZWFzOUEwWlQ4enA4Y08vRFpNUDZ2MUNVdkFENytkclpHaCs2eWhNN2FnMVRDYkc2NWJsUTFWRUZ2R29XNw==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(590, 'TElmM1V5ckpXQTB0NFVVRFl3NXV3UTZHa0lqT3E1a3pNNXRtMGU5a2orYXpMcTBDUUtmUVhWWC9ubVVzUkhxcw==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(591, 'WVkrdk5lSnMxZTNDNVZ2V2svRW91TkxBRFQrV2cra2JRWmk5a243bWdSSVZYSlNGQ0VIVjY4Tis4V05kTTZWWQ==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(592, 'SkE3UDhJWkkzaGM1VVB4UTB1dkNqMGJHMTV1aXF4YVFKZ0E3OXFkMlF4eWw2TFlMSzY5VFo4bE81N2dNVHRQbQ==', 92, 0, 0, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
(1, 'addGame', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 'editGame', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 'deleteGame', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(4, 'addGenre', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(5, 'editGenre', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(6, 'deleteGenre', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(7, 'addPublisher', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(8, 'editPublisher', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(9, 'deletePublisher', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(10, 'addRole', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(11, 'editRole', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(12, 'deleteRole', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(13, 'activateRole', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(14, 'addPermission', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(15, 'editPermission', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(16, 'deletePermission', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(17, 'activatePermission', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(18, 'addKey', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(19, 'editKey', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(20, 'deleteKey', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(21, 'assignRole', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(22, 'assignPermission', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(23, 'addUser', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(24, 'editUser', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(25, 'deleteUser', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(26, 'cancelOrder', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(27, 'acceptOrder', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
(1, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(4, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(5, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(6, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(7, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(8, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(9, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(10, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(11, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(12, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(13, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(14, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(15, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(16, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(17, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(18, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(19, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(20, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(21, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(22, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(23, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(24, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(25, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(26, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(27, 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(10, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(11, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(12, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(13, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(14, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(15, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(16, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(17, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(21, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(22, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(23, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(24, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(25, 3, '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
(1, 'Re-Logic', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 'PopCap Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 'Chucklefish', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(4, 'CD PROJEKT RED', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(5, 'SEGA', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(6, 'Klei Entertainment', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(7, 'Valve', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(8, 'Ninja Kiwi', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(9, 'BlueTwelve Studio', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(10, 'Ubisoft', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(11, 'Supergiant Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(12, 'CAPCOM', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(13, 'tobyfox', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(14, 'ConcernedApe', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(15, 'INTI CREATES', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(16, 'Mojang', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(17, 'FromSoftware Inc', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(18, 'Behaviour Interactive Inc', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(19, 'Nexile', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(20, 'Freebird Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(21, 'Bar Holographic Otaku', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(22, '7th Beat Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(23, 'Techland', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(24, 'sen', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(25, 'Vaka Game Magazine', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(26, 'Mads Skovgaard', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(27, 'Future Cat LLC', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(28, 'Batterystaple Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(29, 'Motion Twin', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(30, 'DUT Studio', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(31, 'HopFrog', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(32, 'Thomas Moon Kang', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(33, 'OMOCAT, LLC', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(34, 'Askiisoft', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(35, 'Pugstorm', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(36, 'Live Wire', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(37, 'AstralShift', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(38, 'Obsidian Entertainment', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(39, 'Infinity Ward', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(40, 'Humble Mill', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(41, 'Endnight Games Ltd', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(42, 'Avalanche Software', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(43, 'Facepunch Studios', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(44, 'FuturLab', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(45, 'Kinetic Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(46, 'The Indie Stone', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(47, 'Rare Ltd', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(48, 'ProjectMoon', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(49, 'Black Salt Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(50, 'Innersloth', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(51, 'Red Hook Studios', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(52, 'Tour De Pizza', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(53, 'Gearbox Software', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(54, 'Team Cherry', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(55, 'Yacht Club Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(56, 'Studio MDHR Entertainment Inc.', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(57, 'poncle', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(58, 'Nolla Games', '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(59, 'Massive Monster', '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
(1, 'admin', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 'leader', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 'hr', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(4, 'finance', 'web', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
(1, 'App\\Models\\User', 1, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(3, 'App\\Models\\User', 2, '2023-07-17 11:52:33', '2023-07-17 11:52:33'),
(2, 'App\\Models\\User', 2, '2023-07-17 11:52:33', '2023-07-17 11:52:33');

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
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$kgFu3P6IQUc1DdGN4nhdOOSpl3zY9KgalaXBJ4JY9lX.aAgJUMF3K', NULL, NULL, 'Male', NULL, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33', 'None', NULL),
(2, 'hr', 'hr@gmail.com', 1, NULL, '$2y$10$93OmKXFlLKaDT.Vxj6vOvucnfrtU8kct7lddhL9sPT4mZlhuqKkn2', NULL, NULL, 'Male', NULL, NULL, '2023-07-17 11:52:33', '2023-07-17 11:52:33', 'None', NULL),
(3, 'Toryu Kira', 'kiratoryu122@gmail.com', 1, NULL, '$2y$10$ZA.vjBPfETVwEo6vnNhLiuervQswSAqVMOV6hhRDqO9LczYuEJCsC', '2023-07-07 16:08:54', NULL, 'Male', NULL, NULL, '2023-07-07 14:45:15', '2023-07-07 14:45:15', 'Google', '101908197917112750588');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
