-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th7 03, 2023 lúc 04:53 PM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gamestore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `games_publisher_id_foreign` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `price`, `image`, `publisher_id`, `created_at`, `updated_at`) VALUES
(1, 'Bloons TD 5', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'bloons-td-5.webp', 8, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(2, 'Bloons TD 6', 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.', 120000, 'bloons-td-6.webp', 8, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(3, 'Cyberpunk 2077', 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.', 990000, 'cyberpunk-2077.webp', 4, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(4, 'Don\'t Starve Together', 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.', 165000, 'dont-starve-together.webp', 6, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(5, 'ELDEN RING', 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 800000, 'elden-ring.webp', 17, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(6, 'Azure Striker Gunvolt', 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.', 165000, 'azure-striker-gunvolt.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(7, 'Azure Striker Gunvolt 2', 'The ultra-refined 2D side-scrolling action you remember from \\\"Azure Striker Gunvolt\\\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!', 188000, 'azure-striker-gunvolt-2.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(8, 'Azure Striker Gunvolt 3', 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!', 705000, 'azure-striker-gunvolt-3.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(9, 'Hades', 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.', 321000, 'hades.webp', 11, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(10, 'Left 4 Dead 2', 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.', 142000, 'left-4-dead-2.webp', 7, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(11, 'Megaman 11', 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\\\'s speed and power for a new twist to the satisfying gameplay the series is known for.', 398000, 'megaman-11.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(12, 'Persona 5 Royal', 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!', 1380000, 'persona-5-royal.webp', 5, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(13, 'Plants vs. Zombies GOTY Edition', 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\\\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.', 70000, 'plants-vs-zombies-goty-edition.webp', 2, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(14, 'Starbound', 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.', 188000, 'starbound.webp', 3, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(15, 'Stardew Valley', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?', 165000, 'stardew-valley.webp', 14, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(16, 'Stray', 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.', 319000, 'stray.webp', 9, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(17, 'Terraria', 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!', 120000, 'terraria.webp', 1, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(18, 'Undertale', 'UNDERTALE! The RPG game where you don\'t have to destroy anyone.', 120000, 'undertale.webp', 13, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(19, 'Valiant Hearts: The Great War™', 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German', 249000, 'valiant-hearts-the-great-war.webp', 10, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(20, 'Mega Man X Legacy Collection', 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'megaman-x-legacy-collection.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(21, 'Mega Man X Legacy Collection 2', 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.', 276000, 'megaman-x-legacy-collection-2.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(22, 'Mega Man Zero/ZX Legacy Collection', 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.', 550000, 'megaman-zero-zx-legacy-collection.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(23, 'Mega Man Legacy Collection', 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.', 206000, 'megaman-legacy-collection.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(24, 'Mega Man Legacy Collection 2', 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.', 276000, 'megaman-legacy-collection-2.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(25, 'Dead by Daylight', 'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.', 230000, 'dead-by-daylight.webp', 18, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(26, 'Jump King', 'Take up the challenge and face true high-stakes platforming in Jump King! Struggle upwards in search of the Smoking Hot Babe of legend, but explore with care; a single missed jump could lead to a long fall back down...', 165000, 'jump-king.webp', 19, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(27, 'To the Moon', 'A story-driven experience about two doctors traversing backwards through a dying man\\\'s memories to artificially fulfill his last wish.', 142000, 'to-the-moon.webp', 20, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(28, 'UDONGEIN X', 'Help Reisen Udongein Inaba navigate through 14 action packed stages in this exhilarating 2D Bullet Hell Platformer based on Touhou Project!', 70000, 'udongein-x.webp', 21, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(29, 'A Dance of Fire and Ice', 'A Dance of Fire and Ice is a strict rhythm game. Keep your focus as you guide two orbiting planets along a winding path without breaking their perfect equilibrium.', 80000, 'adofai.webp', 22, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(30, 'Dying Light', 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.', 329000, 'dying-light.webp', 23, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(31, 'Mad Father', 'Witness the tale of a most foolish family. A remake of the classic horror exploration game makes its way to Steam.', 120000, 'mad-father.webp', 24, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(32, 'Angels of Death', '\"Please... kill me.\" \"Help me get outta here, and I\\\'ll kill you.\" ~ Angels of Death is a psychological horror-adventure game, consisting of four episodes.', 120000, 'angels-of-death.webp', 25, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(33, 'Blaster Master Zero', 'Mutant scum never learn! Blaster Master Zero makes its Steam debut! Blaster Master Zero is a 8-bit style top-down & sideview 2D action-adventure game that hearkens back to the golden age of the NES. The game features new gameplay elements such as improved gameplay, and a more robust scenario.', 120000, 'bmz1.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(34, 'Blaster Master Zero 2', 'Join Jason, Eve, and Fred on an intergalactic journey! The side-scrolling/top-down hybrid action adventure title \"Blaster Master Zero\" returns with its long-awaited sequel! Experience the yet-untold story of Jason and Eve after defeating Earth\\\'s mutant scourge in \"Blaster Master Zero\".', 120000, 'bmz2.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(35, 'Blaster Master Zero 3', 'The Pinnacle of Mutant Blasting Action Is Here! — Blaster Master Zero 3\\\'s hybrid of sidescrolling and top-down action is back for its 3rd chapter, and more intense than ever before!', 296500, 'bmz3.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(36, 'Necesse', 'Necesse is a top-down sandbox action-adventure game in a procedurally generated world. Progress your character\\\'s gear and settlement through fighting, mining, exploring, crafting, trading and more!', 120000, 'necesse.webp', 26, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(37, 'OneShot', 'OneShot is a surreal top down Puzzle/Adventure game with unique gameplay capabilities. You are to guide a child through a mysterious world on a mission to restore its long-dead sun. The world knows you exist.', 142000, 'oneshot.webp', 27, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(38, 'Impostor Factory', 'A bonkers time-loop tragicomedy murder mystery thriller featuring multiple casualties and a suspicious cat, from the creator of To the Moon & Finding Paradise.', 142000, 'impostor-factory.webp', 20, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(39, '20XX', '20XX is a roguelike action platformer that you can play with a friend. Jump and shoot your way through ever-changing levels, collect awesome new powers, and battle mighty bosses in the name of saving the human race maybe!', 165000, '20xx.webp', 28, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(40, '30XX', 'Jump, shoot, and slash your way through 30XX, the roguelike action platformer you can play with a friend! Explore lush, ever-changing worlds that mix precise platforming with fevered combat. Destroy fearsome Guardians. Master unique Powers. Rediscover the thousand years we\\\'ve lost.', 188000, '30xx.webp', 28, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(41, 'Gunvolt Chronicles: Luminous Avenger iX', 'Experience the apeX of 2D action! A new era of 2D action begins now! Get ready for high-speed, stylish 2D side-scrolling action like never before. Inti Creates presents the ultimate in classic 2D action with \"Luminous Avenger iX\"!', 165000, 'laix1.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(42, 'Gunvolt Chronicles: Luminous Avenger iX 2', 'Break into the new apeX of 2D action! INTI CREATES is proud to present new apeX of cutting-edge 2D action with Luminous Avenger iX 2!', 274000, 'laix2.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(43, 'Dead Cells', 'Dead Cells is a rogue-lite, metroidvania inspired, action-platformer. You\\\'ll explore a sprawling, ever-changing castle... assuming you’re able to fight your way past its keepers in 2D souls-lite combat. No checkpoints. Kill, die, learn, repeat. Regular free content updates!', 220000, 'dead-cells.webp', 29, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(44, 'The Death | Thần Trùng', 'The Death | Thần Trùng is a Viet Nam psychological horror adventure game made by three Vietnamese people from a tiny indie studio. The game takes place in Hanoi city in 2022.', 75000, 'the-death.webp', 30, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(45, 'The Forest of Drizzling Rain', 'Alas, it was the \"promised place,\" where Shiori was never meant to go. Finally, a remake of The Forest of Drizzling Rain, that masterpiece of an exploration horror game with multiple endings from the creator of the big hit Angels of Death!', 175000, 'the-forest-of-drizzling-rain.webp', 25, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(46, 'Forager', 'The highly popular and quirky \"idle game that you want to actively keep playing\". Explore, craft, gather & manage resources, find secrets and build your base out of nothing! Buy land to explore and expand!', 188000, 'forager.webp', 31, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(47, 'One Step From Eden', 'Build a powerful deck, cast spells on the fly, battle evolving enemies, find game-changing artifacts, make friends or make enemies, just make it to Eden.', 188000, 'one-step-from-eden.webp', 32, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(48, 'OMORI', 'Explore a strange world full of colorful friends and foes. When the time comes, the path you’ve chosen will determine your fate... and perhaps the fate of others as well.', 188000, 'omori.webp', 33, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(49, 'Katana ZERO', 'Katana ZERO is a stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. Slash, dash, and manipulate time to unravel your past in a beautifully brutal acrobatic display.', 205000, 'katana-zero.webp', 34, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(50, 'Core Keeper', 'Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.', 215000, 'core-keeper.webp', 35, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(51, 'ENDER LILIES: Quietus of the Knights', 'ENDER LILIES is a dark fantasy 2D action RPG about unraveling the mysteries of a destroyed kingdom. On this sorrowful journey, encounter horrific enemies against whom a moment of inattention could be fatal. Overcome these hardships and seek the truth with the help of fallen knights.', 240000, 'ender-lilies.webp', 36, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(52, 'Pocket Mirror ~ GoldenerTraum', 'Delve into the enthralling world of Pocket Mirror ~ GoldenerTraum, the acclaimed RPG Maker gothic horror game that\\\'ll take you on a moving journey of self-discovery.', 260000, 'pocket-mirror.webp', 37, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(53, 'Street Fighter™ 6', 'Here comes Capcom’s newest challenger! Street Fighter™ 6 launches worldwide on June 2nd, 2023 and represents the next evolution of the Street Fighter™ series! Street Fighter 6 spans three distinct game modes, including World Tour, Fighting Ground and Battle Hub.', 1322000, 'street-fighter-6.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(54, 'Grounded', 'The world is a vast, beautiful and dangerous place – especially when you have been shrunk to the size of an ant. Can you thrive alongside the hordes of giant insects, fighting to survive the perils of the backyard?', 649000, 'grounded.webp', 38, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(55, 'Call of Duty®: Modern Warfare®', 'Experience a visceral Campaign or assemble your team in the ultimate online playground with multiple Special Ops challenges and a mix of Multiplayer maps and modes.', 1490000, 'call-of-duty-modern-warfare.webp', 39, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(56, 'Call of Duty®: Modern Warfare® II', 'Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.', 1799000, 'call-of-duty-modern-warfare-2.webp', 39, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(57, 'Oblivion Override', 'Embark on a raw, fast-paced odyssey in Oblivion Override. Master 25+ weapons, embody the killerbot, and conquer war-torn wastelands. Inspired by Castlevania and Roguelikes, this action-packed adventure will test your mobility to the limit. Evade, dash, and dance amid shifting dungeon walls.', 239000, 'oblivion-override.webp', 40, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(58, 'The Forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.', 188000, 'the-forest.webp', 41, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(59, 'Sons Of The Forest', 'Sent to find a missing billionaire on a remote island, you find yourself in a cannibal-infested hellscape. Craft, build, and struggle to survive, alone or with friends, in this terrifying new open-world survival horror simulator.', 385000, 'son-of-the-forest.webp', 41, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(60, 'Hogwarts Legacy', 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.', 990000, 'hogwarts-legacy.webp', 42, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(61, 'Rust', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.', 510000, 'rust.webp', 43, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(62, 'MONSTER HUNTER RISE', 'Rise to the challenge and join the hunt! In Monster Hunter Rise, the latest installment in the award-winning and top-selling Monster Hunter series, you’ll become a hunter, explore brand new maps and use a variety of weapons to take down fearsome monsters as part of an all-new storyline.', 881000, 'monster-hunter-rise.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(63, 'Monster Hunter: World', 'Welcome to a new world! In Monster Hunter: World, the latest installment in the series, you can enjoy the ultimate hunting experience, using everything at your disposal to hunt monsters in a new world teeming with surprises and excitement.', 550000, 'monster-hunter-world.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(64, 'PowerWash Simulator', 'Release the Pressure with PowerWash Simulator! Wash away your worries with the soothing sounds of high-pressure water. Fire up your power washer and blast away every speck of dirt and grime you can find, all with the simple satisfaction of power-washing to a sparkling finish.', 570000, 'power-wash-simulator.webp', 44, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(65, 'Phasmophobia', 'Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and it’s up to you and your team to use all the ghost-hunting equipment at your disposal in order to gather as much evidence as you can.', 160000, 'phasmophobia.webp', 45, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(66, 'Project Zomboid', 'Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..', 260000, 'project-zomboid.webp', 46, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(67, 'Sea of Thieves 2023 Edition', 'Celebrate five years since Sea of Thieves\\\' launch with this special edition, including a copy of the game with all permanent content added since launch, plus a 10,000 gold bonus and a selection of Hunter cosmetics: the Hunter Cutlass, Pistol, Compass, Hat, Jacket and Sails.', 400000, 'sea-of-thieves.webp', 47, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(68, 'Devil May Cry 5', 'The ultimate Devil Hunter is back in style, in the game action fans have been waiting for.', 705000, 'devil-may-cry-5.webp', 12, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(69, 'Lobotomy Corporation | Monster Management Simulation', 'A roguelite monster-management simulation inspired by the likes of the SCP Foundation, Cabin in the Woods, and Warehouse 13. Order your employees to perform work with the creatures and watch as it unfolds; harness greater energy, and expand the facility.', 220000, 'lobotomy-corporation.webp', 48, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(70, 'Library Of Ruina', '\"May you find your book in this place.\" Combat between the guests and the librarians breaks out as if it were on a stage. Defeated guests turn into books, and the Library grows onward. And eventually, get your hands on… The one singular, perfect book.', 250000, 'library-of-ruina.webp', 48, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(71, 'Garry\'s Mod', 'Garry\\\'s Mod is a physics sandbox. There aren\\\'t any predefined aims or goals. We give you the tools and leave you to play.', 120000, 'garry-mod.webp', 43, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(72, 'DREDGE', 'DREDGE is a single-player fishing adventure with a sinister undercurrent. Sell your catch, upgrade your boat, and dredge the depths for long-buried secrets. Explore a mysterious archipelago and discover why some things are best left forgotten.', 500000, 'dredge.webp', 49, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(73, 'Among Us', 'An online and local party game of teamwork and betrayal for 4-15 players...in space!', 70000, 'among-us.webp', 50, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(74, 'Dragon Marked For Death', 'Dragon Marked For Death is a 2D side-scrolling action RPG game where up to 4 players can play together in online multiplayer. The characters, known as the Dragonblood Clan, have forged a pact with the Astral Dragon, which granted them special new powers.', 310000, 'dragon-marked-for-death.webp', 15, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(75, 'Darkest Dungeon®', 'Darkest Dungeon is a challenging gothic roguelike turn-based RPG about the psychological stresses of adventuring. Recruit, train, and lead a team of flawed heroes against unimaginable horrors, stress, disease, and the ever-encroaching dark. Can you keep your heroes together when all hope is lost?', 321000, 'darkest-dungeon-1.webp', 51, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(76, 'Darkest Dungeon® II', 'Darkest Dungeon II is a roguelike road trip of the damned. Form a party, equip your stagecoach, and set off across the decaying landscape on a last gasp quest to avert the apocalypse. The greatest dangers you face, however, may come from within...', 470000, 'darkest-dungeon-2.webp', 51, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(77, 'Pizza Tower', 'Pizza Tower is a fast paced 2D platformer inspired by the Wario Land series, with an emphasis on movement, exploration and score attack. Featuring highly stylized pixel art inspired by the cartoons from the \\\'90s, and a highly energetic soundtrack.', 188000, 'pizza-tower.webp', 52, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(78, 'DARK SOULS™: REMASTERED', 'Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.', 850000, 'dark-soul-remastered.webp', 17, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(79, 'DARK SOULS™ II', 'Developed by FROM SOFTWARE, DARK SOULS™ II is the highly anticipated sequel to the gruelling 2011 breakout hit Dark Souls. The unique old-school action RPG experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.', 650000, 'dark-soul-2.webp', 17, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(80, 'DARK SOULS™ III', 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!', 970000, 'dark-soul-3.webp', 17, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(81, 'Borderlands Game of the Year', 'Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op, Borderlands is a breakthrough experience that', 499000, 'borderlands-1.webp', 53, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(82, 'Borderlands 2', 'The Ultimate Vault Hunter’s Upgrade lets you get the most out of the Borderlands 2 experience.', 334500, 'borderlands-2.webp', 53, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(83, 'Borderlands 3', 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds and enemies as one of four new Vault Hunters.', 990000, 'borderlands-3.webp', 53, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(84, 'Hollow Knight', 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.', 205000, 'hollow-knight.webp', 54, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(85, 'Shovel Knight: Treasure Trove', 'Shovel Knight: Treasure Trove is the complete Shovel Knight collection, containing all 5 games in the epic saga! Dig, blast, slash, and bash your way through a fantastical, 8-bit inspired world of pixel-perfect platforming, memorable characters, and world-class action-adventure gameplay.', 310000, 'shovel-knight-treasure-trove.webp', 55, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(86, 'Shovel Knight: King of Cards', 'Step into the gilded boots of King Knight in the biggest and most regal Shovel Knight game of them all! Leap, Shoulder Bash, gather new subjects, and strategize your way through this prequel in your quest to become King of Cards!', 120000, 'shovel-knight-king-of-cards.webp', 55, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(87, 'Shovel Knight: Specter of Torment', 'Take control of Specter Knight, servant to the Enchantress, in a quest to recruit a cadre of knights and create the Order of No Quarter. Experience perfect platforming, world-class visuals, impeccable stage design, incredible music, and even meet a friend or two in Shovel Knight: Specter of Torment!', 120000, 'shovel-knight-specter-of-torment.webp', 55, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(88, 'Shovel Knight: Shovel of Hope', 'Shovel Knight is a sweeping classic action-adventure game with awesome gameplay, memorable characters, and an 8-bit retro aesthetic. If you love games with perfect platforming, beautiful art, infectious music, lovable bosses, humor and levity, and real heart… Shovel Knight is for you!', 165000, 'shovel-knight-shovel-of-hope.webp', 55, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(89, 'Cuphead', 'Cuphead is a classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.', 188000, 'cuphead.webp', 56, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(90, 'Vampire Survivors', 'Mow down thousands of night creatures and survive until dawn! Vampire Survivors is a gothic horror casual game with rogue-lite elements, where your choices can allow you to quickly snowball against the hundreds of monsters that get thrown at you.', 70000, 'vampire-survivors.webp', 57, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(91, 'Noita', 'Noita is a magical action roguelite set in a world where every pixel is physically simulated. Fight, explore, melt, burn, freeze and evaporate your way through the procedurally generated world using spells you\\\'ve created yourself.', 188000, 'noita.webp', 58, '2023-07-03 16:25:18', '2023-07-03 16:25:18'),
(92, 'Cult of the Lamb', 'Start your own cult in a land of false prophets, venturing out into diverse and mysterious regions to build a loyal community of woodland Followers and spread your Word to become the one true cult.', 400000, 'cult-of-the-lamb.webp', 59, '2023-07-03 16:25:18', '2023-07-03 16:25:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `game_genre`
--

DROP TABLE IF EXISTS `game_genre`;
CREATE TABLE IF NOT EXISTS `game_genre` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `game_id` int UNSIGNED NOT NULL,
  `genre_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_genre_game_id_genre_id_unique` (`game_id`,`genre_id`),
  KEY `game_genre_genre_id_foreign` (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `game_genre`
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
-- Cấu trúc bảng cho bảng `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genres_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `genres`
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
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2014_10_12_100000_create_password_resets_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2023_04_29_041141_create_base', 1),
(28, '2023_05_22_094848_add_social_columns_to_users', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `order_status` enum('Pending','Done','Canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `pay_type` enum('VNPAY','MoMo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id_ref` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED NOT NULL,
  `game_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_game_id_foreign` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Cấu trúc bảng cho bảng `publishers`
--

DROP TABLE IF EXISTS `publishers`;
CREATE TABLE IF NOT EXISTS `publishers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publishers_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Re-Logic', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(2, 'PopCap Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(3, 'Chucklefish', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(4, 'CD PROJEKT RED', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(5, 'SEGA', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(6, 'Klei Entertainment', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(7, 'Valve', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(8, 'Ninja Kiwi', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(9, 'BlueTwelve Studio', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(10, 'Ubisoft', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(11, 'Supergiant Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(12, 'CAPCOM', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(13, 'tobyfox', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(14, 'ConcernedApe', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(15, 'INTI CREATES', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(16, 'Mojang', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(17, 'FromSoftware Inc', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(18, 'Behaviour Interactive Inc', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(19, 'Nexile', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(20, 'Freebird Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(21, 'Bar Holographic Otaku', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(22, '7th Beat Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(23, 'Techland', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(24, 'sen', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(25, 'Vaka Game Magazine', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(26, 'Mads Skovgaard', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(27, 'Future Cat LLC', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(28, 'Batterystaple Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(29, 'Motion Twin', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(30, 'DUT Studio', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(31, 'HopFrog', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(32, 'Thomas Moon Kang', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(33, 'OMOCAT, LLC', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(34, 'Askiisoft', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(35, 'Pugstorm', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(36, 'Live Wire', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(37, 'AstralShift', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(38, 'Obsidian Entertainment', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(39, 'Infinity Ward', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(40, 'Humble Mill', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(41, 'Endnight Games Ltd', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(42, 'Avalanche Software', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(43, 'Facepunch Studios', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(44, 'FuturLab', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(45, 'Kinetic Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(46, 'The Indie Stone', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(47, 'Rare Ltd', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(48, 'ProjectMoon', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(49, 'Black Salt Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(50, 'Innersloth', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(51, 'Red Hook Studios', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(52, 'Tour De Pizza', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(53, 'Gearbox Software', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(54, 'Team Cherry', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(55, 'Yacht Club Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(56, 'Studio MDHR Entertainment Inc.', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(57, 'poncle', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(58, 'Nolla Games', '2023-07-03 16:25:17', '2023-07-03 16:25:17'),
(59, 'Massive Monster', '2023-07-03 16:25:17', '2023-07-03 16:25:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `verified`, `otp`, `password`, `last_sent`, `remember_token`, `gender`, `biography`, `address`, `created_at`, `updated_at`, `social`, `social_id`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$p.4PLu.n6Ptg9Qrl6p9gmefdq3UvihfRdw/dvqVuM78db3YDoLMI2', NULL, NULL, 'Male', NULL, NULL, '2023-07-03 16:25:18', '2023-07-03 16:25:18', 'None', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
