<?php

namespace Database\Seeders;

use App\Models\Game;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Bloons TD 5',
            'description' => 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.',
            'price' => 188000,
            'image' => 'bloons-td-5.webp',
            'publisher_id' => '8'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Bloons TD 6',
            'description' => 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.',
            'price' => 120000,
            'image' => 'bloons-td-6.webp',
            'publisher_id' => '8'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Cyberpunk 2077',
            'description' => 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.',
            'price' => 990000,
            'image' => 'cyberpunk-2077.webp',
            'publisher_id' => '4'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => "Don't Starve Together",
            'description' => 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.',
            'price' => 165000,
            'image' => 'dont-starve-together.webp',
            'publisher_id' => '6'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'ELDEN RING',
            'description' => 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.',
            'price' => 800000,
            'image' => 'elden-ring.webp',
            'publisher_id' => '17'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Azure Striker Gunvolt',
            'description' => 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.',
            'price' => 165000,
            'image' => 'azure-striker-gunvolt.webp',
            'publisher_id' => '15'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Azure Striker Gunvolt 2',
            'description' => 'The ultra-refined 2D side-scrolling action you remember from \"Azure Striker Gunvolt\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!',
            'price' => 188000,
            'image' => 'azure-striker-gunvolt-2.webp',
            'publisher_id' => '15'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Azure Striker Gunvolt 3',
            'description' => 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!',
            'price' => 705000,
            'image' => 'azure-striker-gunvolt-3.webp',
            'publisher_id' => '15'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Hades',
            'description' => 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.',
            'price' => 321000,
            'image' => 'hades.webp',
            'publisher_id' => '11'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Left 4 Dead 2',
            'description' => 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.',
            'price' => 142000,
            'image' => 'left-4-dead-2.webp',
            'publisher_id' => '7'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Megaman 11',
            'description' => 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\'s speed and power for a new twist to the satisfying gameplay the series is known for.',
            'price' => 398000,
            'image' => 'megaman-11.webp',
            'publisher_id' => '12'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Persona 5 Royal',
            'description' => 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!',
            'price' => 1380000,
            'image' => 'persona-5-royal.webp',
            'publisher_id' => '5'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Plants vs. Zombies GOTY Edition',
            'description' => 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.',
            'price' => 70000,
            'image' => 'plants-vs-zombies-goty-edition.webp',
            'publisher_id' => '2'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Starbound',
            'description' => 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.',
            'price' => 188000,
            'image' => 'starbound.webp',
            'publisher_id' => '3'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Stardew Valley',
            'description' => "You've inherited your grandfather's old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?",
            'price' => 165000,
            'image' => 'stardew-valley.webp',
            'publisher_id' => '14'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Stray',
            'description' => 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.',
            'price' => 319000,
            'image' => 'stray.webp',
            'publisher_id' => '9'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Terraria',
            'description' => 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!',
            'price' => 120000,
            'image' => 'terraria.webp',
            'publisher_id' => '1'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Undertale',
            'description' => "UNDERTALE! The RPG game where you don't have to destroy anyone.",
            'price' => 120000,
            'image' => 'undertale.webp',
            'publisher_id' => '13'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Valiant Hearts: The Great War™',
            'description' => 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German',
            'price' => 249000,
            'image' => 'valiant-hearts-the-great-war.webp',
            'publisher_id' => '10'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man X Legacy Collection',
            'description' => 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.',
            'price' => 276000,
            'image' => 'megaman-x-legacy-collection.webp',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man X Legacy Collection 2',
            'description' => 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.',
            'price' => 276000,
            'image' => 'megaman-x-legacy-collection-2.webp',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man Zero/ZX Legacy Collection',
            'description' => 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.',
            'price' => 550000,
            'image' => 'megaman-zero-zx-legacy-collection.webp',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man Legacy Collection',
            'description' => 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.',
            'price' => 206000,
            'image' => 'megaman-legacy-collection.webp',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man Legacy Collection 2',
            'description' => 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.',
            'price' => 276000,
            'image' => 'megaman-legacy-collection-2.webp',
            'publisher_id' => '12'
        ]);

        // new seeder
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Dead by Daylight',
            'description' => 'Dead by Daylight is a multiplayer (4vs1) horror game where one player takes on the role of the savage Killer, and the other four players play as Survivors, trying to escape the Killer and avoid being caught and killed.',
            'price' => 230000,
            'image' => 'dead-by-daylight.webp',
            'publisher_id' => '18'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Jump King',
            'description' => 'Take up the challenge and face true high-stakes platforming in Jump King! Struggle upwards in search of the Smoking Hot Babe of legend, but explore with care; a single missed jump could lead to a long fall back down...',
            'price' => 165000,
            'image' => 'jump-king.webp',
            'publisher_id' => '19'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'To the Moon',
            'description' => 'A story-driven experience about two doctors traversing backwards through a dying man\'s memories to artificially fulfill his last wish.',
            'price' => 142000,
            'image' => 'to-the-moon.webp',
            'publisher_id' => '20'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'UDONGEIN X',
            'description' => 'Help Reisen Udongein Inaba navigate through 14 action packed stages in this exhilarating 2D Bullet Hell Platformer based on Touhou Project!',
            'price' => 70000,
            'image' => 'udongein-x.webp',
            'publisher_id' => '21'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'A Dance of Fire and Ice',
            'description' => 'A Dance of Fire and Ice is a strict rhythm game. Keep your focus as you guide two orbiting planets along a winding path without breaking their perfect equilibrium.',
            'price' => 80000,
            'image' => 'adofai.webp',
            'publisher_id' => '22'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Dying Light',
            'description' => 'First-person action survival game set in a post-apocalyptic open world overrun by flesh-hungry zombies. Roam a city devastated by a mysterious virus epidemic. Scavenge for supplies, craft weapons, and face hordes of the infected.',
            'price' => 329000,
            'image' => 'dying-light.webp',
            'publisher_id' => '23'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mad Father',
            'description' => 'Witness the tale of a most foolish family. A remake of the classic horror exploration game makes its way to Steam.',
            'price' => 120000,
            'image' => 'mad-father.webp',
            'publisher_id' => '24'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Angels of Death',
            'description' => '"Please... kill me." "Help me get outta here, and I\'ll kill you." ~ Angels of Death is a psychological horror-adventure game, consisting of four episodes.',
            'price' => 120000,
            'image' => 'angels-of-death.webp',
            'publisher_id' => '25'
        ]);
                
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Blaster Master Zero',
            'description' => 'Mutant scum never learn! Blaster Master Zero makes its Steam debut! Blaster Master Zero is a 8-bit style top-down & sideview 2D action-adventure game that hearkens back to the golden age of the NES. The game features new gameplay elements such as improved gameplay, and a more robust scenario.',
            'price' => 120000,
            'image' => 'bmz1.webp',
            'publisher_id' => '15'
        ]);
                
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Blaster Master Zero 2',
            'description' => 'Join Jason, Eve, and Fred on an intergalactic journey! The side-scrolling/top-down hybrid action adventure title "Blaster Master Zero" returns with its long-awaited sequel! Experience the yet-untold story of Jason and Eve after defeating Earth\'s mutant scourge in "Blaster Master Zero".',
            'price' => 120000,
            'image' => 'bmz2.webp',
            'publisher_id' => '15'
        ]);
                
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Blaster Master Zero 3',
            'description' => 'The Pinnacle of Mutant Blasting Action Is Here! — Blaster Master Zero 3\'s hybrid of sidescrolling and top-down action is back for its 3rd chapter, and more intense than ever before!',
            'price' => 296500,
            'image' => 'bmz3.webp',
            'publisher_id' => '15'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Necesse',
            'description' => 'Necesse is a top-down sandbox action-adventure game in a procedurally generated world. Progress your character\'s gear and settlement through fighting, mining, exploring, crafting, trading and more!',
            'price' => 120000,
            'image' => 'necesse.webp',
            'publisher_id' => '26'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'OneShot',
            'description' => 'OneShot is a surreal top down Puzzle/Adventure game with unique gameplay capabilities. You are to guide a child through a mysterious world on a mission to restore its long-dead sun. The world knows you exist.',
            'price' => 142000,
            'image' => 'oneshot.webp',
            'publisher_id' => '27'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Impostor Factory',
            'description' => 'A bonkers time-loop tragicomedy murder mystery thriller featuring multiple casualties and a suspicious cat, from the creator of To the Moon & Finding Paradise.',
            'price' => 142000,
            'image' => 'impostor-factory.webp',
            'publisher_id' => '20'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => '20XX',
            'description' => '20XX is a roguelike action platformer that you can play with a friend. Jump and shoot your way through ever-changing levels, collect awesome new powers, and battle mighty bosses in the name of saving the human race maybe!',
            'price' => 165000,
            'image' => '20xx.webp',
            'publisher_id' => '28'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => '30XX',
            'description' => 'Jump, shoot, and slash your way through 30XX, the roguelike action platformer you can play with a friend! Explore lush, ever-changing worlds that mix precise platforming with fevered combat. Destroy fearsome Guardians. Master unique Powers. Rediscover the thousand years we\'ve lost.',
            'price' => 188000,
            'image' => '30xx.webp',
            'publisher_id' => '28'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Gunvolt Chronicles: Luminous Avenger iX',
            'description' => 'Experience the apeX of 2D action! A new era of 2D action begins now! Get ready for high-speed, stylish 2D side-scrolling action like never before. Inti Creates presents the ultimate in classic 2D action with "Luminous Avenger iX"!',
            'price' => 165000,
            'image' => 'laix1.webp',
            'publisher_id' => '15'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Gunvolt Chronicles: Luminous Avenger iX 2',
            'description' => 'Break into the new apeX of 2D action! INTI CREATES is proud to present new apeX of cutting-edge 2D action with Luminous Avenger iX 2!',
            'price' => 274000,
            'image' => 'laix2.webp',
            'publisher_id' => '15'
        ]);
                
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Dead Cells',
            'description' => 'Dead Cells is a rogue-lite, metroidvania inspired, action-platformer. You\'ll explore a sprawling, ever-changing castle... assuming you’re able to fight your way past its keepers in 2D souls-lite combat. No checkpoints. Kill, die, learn, repeat. Regular free content updates!',
            'price' => 220000,
            'image' => 'dead-cells.webp',
            'publisher_id' => '29'
        ]);
                
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'The Death | Thần Trùng',
            'description' => 'The Death | Thần Trùng is a Viet Nam psychological horror adventure game made by three Vietnamese people from a tiny indie studio. The game takes place in Hanoi city in 2022.',
            'price' => 75000,
            'image' => 'the-death.webp',
            'publisher_id' => '30'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'The Forest of Drizzling Rain',
            'description' => 'Alas, it was the "promised place," where Shiori was never meant to go. Finally, a remake of The Forest of Drizzling Rain, that masterpiece of an exploration horror game with multiple endings from the creator of the big hit Angels of Death!',
            'price' => 175000,
            'image' => 'the-forest-of-drizzling-rain.webp',
            'publisher_id' => '25'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Forager',
            'description' => 'The highly popular and quirky "idle game that you want to actively keep playing". Explore, craft, gather & manage resources, find secrets and build your base out of nothing! Buy land to explore and expand!',
            'price' => 188000,
            'image' => 'forager.webp',
            'publisher_id' => '31'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'One Step From Eden',
            'description' => 'Build a powerful deck, cast spells on the fly, battle evolving enemies, find game-changing artifacts, make friends or make enemies, just make it to Eden.',
            'price' => 188000,
            'image' => 'one-step-from-eden.webp',
            'publisher_id' => '32'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'OMORI',
            'description' => 'Explore a strange world full of colorful friends and foes. When the time comes, the path you’ve chosen will determine your fate... and perhaps the fate of others as well.',
            'price' => 188000,
            'image' => 'omori.webp',
            'publisher_id' => '33'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Katana ZERO',
            'description' => 'Katana ZERO is a stylish neo-noir, action-platformer featuring breakneck action and instant-death combat. Slash, dash, and manipulate time to unravel your past in a beautifully brutal acrobatic display.',
            'price' => 205000,
            'image' => 'katana-zero.webp',
            'publisher_id' => '34'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Core Keeper',
            'description' => 'Explore an endless cavern of creatures, relics and resources in a mining sandbox adventure for 1-8 players. Mine, build, fight, craft and farm to unravel the mystery of the ancient Core.',
            'price' => 215000,
            'image' => 'core-keeper.webp',
            'publisher_id' => '35'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'ENDER LILIES: Quietus of the Knights',
            'description' => 'ENDER LILIES is a dark fantasy 2D action RPG about unraveling the mysteries of a destroyed kingdom. On this sorrowful journey, encounter horrific enemies against whom a moment of inattention could be fatal. Overcome these hardships and seek the truth with the help of fallen knights.',
            'price' => 240000,
            'image' => 'ender-lilies.webp',
            'publisher_id' => '36'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Pocket Mirror ~ GoldenerTraum',
            'description' => 'Delve into the enthralling world of Pocket Mirror ~ GoldenerTraum, the acclaimed RPG Maker gothic horror game that\'ll take you on a moving journey of self-discovery.',
            'price' => 260000,
            'image' => 'pocket-mirror.webp',
            'publisher_id' => '37'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Street Fighter™ 6',
            'description' => 'Here comes Capcom’s newest challenger! Street Fighter™ 6 launches worldwide on June 2nd, 2023 and represents the next evolution of the Street Fighter™ series! Street Fighter 6 spans three distinct game modes, including World Tour, Fighting Ground and Battle Hub.',
            'price' => 1322000,
            'image' => 'street-fighter-6.webp',
            'publisher_id' => '12'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Grounded',
            'description' => 'The world is a vast, beautiful and dangerous place – especially when you have been shrunk to the size of an ant. Can you thrive alongside the hordes of giant insects, fighting to survive the perils of the backyard?',
            'price' => 649000,
            'image' => 'grounded.webp',
            'publisher_id' => '38'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Call of Duty®: Modern Warfare®',
            'description' => 'Experience a visceral Campaign or assemble your team in the ultimate online playground with multiple Special Ops challenges and a mix of Multiplayer maps and modes.',
            'price' => 1490000,
            'image' => 'call-of-duty-modern-warfare.webp',
            'publisher_id' => '39'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Call of Duty®: Modern Warfare® II',
            'description' => 'Call of Duty®: Modern Warfare® II drops players into an unprecedented global conflict that features the return of the iconic Operators of Task Force 141.',
            'price' => 1799000,
            'image' => 'call-of-duty-modern-warfare-2.webp',
            'publisher_id' => '39'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Oblivion Override',
            'description' => 'Embark on a raw, fast-paced odyssey in Oblivion Override. Master 25+ weapons, embody the killerbot, and conquer war-torn wastelands. Inspired by Castlevania and Roguelikes, this action-packed adventure will test your mobility to the limit. Evade, dash, and dance amid shifting dungeon walls.',
            'price' => 239000,
            'image' => 'oblivion-override.webp',
            'publisher_id' => '40'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'The Forest',
            'description' => 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants. Build, explore, survive in this terrifying first person survival horror simulator.',
            'price' => 188000,
            'image' => 'the-forest.webp',
            'publisher_id' => '41'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Sons Of The Forest',
            'description' => 'Sent to find a missing billionaire on a remote island, you find yourself in a cannibal-infested hellscape. Craft, build, and struggle to survive, alone or with friends, in this terrifying new open-world survival horror simulator.',
            'price' => 385000,
            'image' => 'son-of-the-forest.webp',
            'publisher_id' => '41'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Hogwarts Legacy',
            'description' => 'Hogwarts Legacy is an immersive, open-world action RPG. Now you can take control of the action and be at the center of your own adventure in the wizarding world.',
            'price' => 990000,
            'image' => 'hogwarts-legacy.webp',
            'publisher_id' => '42'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Rust',
            'description' => 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.',
            'price' => 510000,
            'image' => 'rust.webp',
            'publisher_id' => '43'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'MONSTER HUNTER RISE',
            'description' => 'Rise to the challenge and join the hunt! In Monster Hunter Rise, the latest installment in the award-winning and top-selling Monster Hunter series, you’ll become a hunter, explore brand new maps and use a variety of weapons to take down fearsome monsters as part of an all-new storyline.',
            'price' => 881000,
            'image' => 'monster-hunter-rise.webp',
            'publisher_id' => '12'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Monster Hunter: World',
            'description' => 'Welcome to a new world! In Monster Hunter: World, the latest installment in the series, you can enjoy the ultimate hunting experience, using everything at your disposal to hunt monsters in a new world teeming with surprises and excitement.',
            'price' => 550000,
            'image' => 'monster-hunter-world.webp',
            'publisher_id' => '12'
        ]);
            
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'PowerWash Simulator',
            'description' => 'Release the Pressure with PowerWash Simulator! Wash away your worries with the soothing sounds of high-pressure water. Fire up your power washer and blast away every speck of dirt and grime you can find, all with the simple satisfaction of power-washing to a sparkling finish.',
            'price' => 570000,
            'image' => 'power-wash-simulator.webp',
            'publisher_id' => '44'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Phasmophobia',
            'description' => 'Phasmophobia is a 4 player online co-op psychological horror. Paranormal activity is on the rise and it’s up to you and your team to use all the ghost-hunting equipment at your disposal in order to gather as much evidence as you can.',
            'price' => 160000,
            'image' => 'phasmophobia.webp',
            'publisher_id' => '45'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Project Zomboid',
            'description' => 'Project Zomboid is the ultimate in zombie survival. Alone or in MP: you loot, build, craft, fight, farm and fish in a struggle to survive. A hardcore RPG skillset, a vast map, massively customisable sandbox and a cute tutorial raccoon await the unwary. So how will you die? All it takes is a bite..',
            'price' => 260000,
            'image' => 'project-zomboid.webp',
            'publisher_id' => '46'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Sea of Thieves 2023 Edition',
            'description' => 'Celebrate five years since Sea of Thieves\' launch with this special edition, including a copy of the game with all permanent content added since launch, plus a 10,000 gold bonus and a selection of Hunter cosmetics: the Hunter Cutlass, Pistol, Compass, Hat, Jacket and Sails.',
            'price' => 400000,
            'image' => 'sea-of-thieves.webp',
            'publisher_id' => '47'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Devil May Cry 5',
            'description' => 'The ultimate Devil Hunter is back in style, in the game action fans have been waiting for.',
            'price' => 705000,
            'image' => 'devil-may-cry-5.webp',
            'publisher_id' => '12'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Lobotomy Corporation | Monster Management Simulation',
            'description' => 'A roguelite monster-management simulation inspired by the likes of the SCP Foundation, Cabin in the Woods, and Warehouse 13. Order your employees to perform work with the creatures and watch as it unfolds; harness greater energy, and expand the facility.',
            'price' => 220000,
            'image' => 'lobotomy-corporation.webp',
            'publisher_id' => '48'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Library Of Ruina',
            'description' => '"May you find your book in this place." Combat between the guests and the librarians breaks out as if it were on a stage. Defeated guests turn into books, and the Library grows onward. And eventually, get your hands on… The one singular, perfect book.',
            'price' => 250000,
            'image' => 'library-of-ruina.webp',
            'publisher_id' => '48'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Garry\'s Mod',
            'description' => 'Garry\'s Mod is a physics sandbox. There aren\'t any predefined aims or goals. We give you the tools and leave you to play.',
            'price' => 120000,
            'image' => 'garry-mod.webp',
            'publisher_id' => '43'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'DREDGE',
            'description' => 'DREDGE is a single-player fishing adventure with a sinister undercurrent. Sell your catch, upgrade your boat, and dredge the depths for long-buried secrets. Explore a mysterious archipelago and discover why some things are best left forgotten.',
            'price' => 500000,
            'image' => 'dredge.webp',
            'publisher_id' => '49'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Among Us',
            'description' => 'An online and local party game of teamwork and betrayal for 4-15 players...in space!',
            'price' => 70000,
            'image' => 'among-us.webp',
            'publisher_id' => '50'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Dragon Marked For Death',
            'description' => 'Dragon Marked For Death is a 2D side-scrolling action RPG game where up to 4 players can play together in online multiplayer. The characters, known as the Dragonblood Clan, have forged a pact with the Astral Dragon, which granted them special new powers.',
            'price' => 310000,
            'image' => 'dragon-marked-for-death.webp',
            'publisher_id' => '15'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Darkest Dungeon®',
            'description' => 'Darkest Dungeon is a challenging gothic roguelike turn-based RPG about the psychological stresses of adventuring. Recruit, train, and lead a team of flawed heroes against unimaginable horrors, stress, disease, and the ever-encroaching dark. Can you keep your heroes together when all hope is lost?',
            'price' => 321000,
            'image' => 'darkest-dungeon-1.webp',
            'publisher_id' => '51'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Darkest Dungeon® II',
            'description' => 'Darkest Dungeon II is a roguelike road trip of the damned. Form a party, equip your stagecoach, and set off across the decaying landscape on a last gasp quest to avert the apocalypse. The greatest dangers you face, however, may come from within...',
            'price' => 470000,
            'image' => 'darkest-dungeon-2.webp',
            'publisher_id' => '51'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Pizza Tower',
            'description' => 'Pizza Tower is a fast paced 2D platformer inspired by the Wario Land series, with an emphasis on movement, exploration and score attack. Featuring highly stylized pixel art inspired by the cartoons from the \'90s, and a highly energetic soundtrack.',
            'price' => 188000,
            'image' => 'pizza-tower.webp',
            'publisher_id' => '52'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'DARK SOULS™: REMASTERED',
            'description' => 'Then, there was fire. Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning high-definition detail running at 60fps.',
            'price' => 850000,
            'image' => 'dark-soul-remastered.webp',
            'publisher_id' => '17'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'DARK SOULS™ II',
            'description' => 'Developed by FROM SOFTWARE, DARK SOULS™ II is the highly anticipated sequel to the gruelling 2011 breakout hit Dark Souls. The unique old-school action RPG experience captivated imaginations of gamers worldwide with incredible challenge and intense emotional reward.',
            'price' => 650000,
            'image' => 'dark-soul-2.webp',
            'publisher_id' => '17'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'DARK SOULS™ III',
            'description' => 'Dark Souls continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. Prepare yourself and Embrace The Darkness!',
            'price' => 970000,
            'image' => 'dark-soul-3.webp',
            'publisher_id' => '17'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Borderlands Game of the Year',
            'description' => 'Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op, Borderlands is a breakthrough experience that',
            'price' => 499000,
            'image' => 'borderlands-1.webp',
            'publisher_id' => '53'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Borderlands 2',
            'description' => 'The Ultimate Vault Hunter’s Upgrade lets you get the most out of the Borderlands 2 experience.',
            'price' => 334500,
            'image' => 'borderlands-2.webp',
            'publisher_id' => '53'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Borderlands 3',
            'description' => 'The original shooter-looter returns, packing bazillions of guns and a mayhem-fueled adventure! Blast through new worlds and enemies as one of four new Vault Hunters.',
            'price' => 990000,
            'image' => 'borderlands-3.webp',
            'publisher_id' => '53'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Hollow Knight',
            'description' => 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.',
            'price' => 205000,
            'image' => 'hollow-knight.webp',
            'publisher_id' => '54'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Shovel Knight: Treasure Trove',
            'description' => 'Shovel Knight: Treasure Trove is the complete Shovel Knight collection, containing all 5 games in the epic saga! Dig, blast, slash, and bash your way through a fantastical, 8-bit inspired world of pixel-perfect platforming, memorable characters, and world-class action-adventure gameplay.',
            'price' => 310000,
            'image' => 'shovel-knight-treasure-trove.webp',
            'publisher_id' => '55'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Shovel Knight: King of Cards',
            'description' => 'Step into the gilded boots of King Knight in the biggest and most regal Shovel Knight game of them all! Leap, Shoulder Bash, gather new subjects, and strategize your way through this prequel in your quest to become King of Cards!',
            'price' => 120000,
            'image' => 'shovel-knight-king-of-cards.webp',
            'publisher_id' => '55'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Shovel Knight: Specter of Torment',
            'description' => 'Take control of Specter Knight, servant to the Enchantress, in a quest to recruit a cadre of knights and create the Order of No Quarter. Experience perfect platforming, world-class visuals, impeccable stage design, incredible music, and even meet a friend or two in Shovel Knight: Specter of Torment!',
            'price' => 120000,
            'image' => 'shovel-knight-specter-of-torment.webp',
            'publisher_id' => '55'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Shovel Knight: Shovel of Hope',
            'description' => 'Shovel Knight is a sweeping classic action-adventure game with awesome gameplay, memorable characters, and an 8-bit retro aesthetic. If you love games with perfect platforming, beautiful art, infectious music, lovable bosses, humor and levity, and real heart… Shovel Knight is for you!',
            'price' => 165000,
            'image' => 'shovel-knight-shovel-of-hope.webp',
            'publisher_id' => '55'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Cuphead',
            'description' => 'Cuphead is a classic run and gun action game heavily focused on boss battles. Inspired by cartoons of the 1930s, the visuals and audio are painstakingly created with the same techniques of the era, i.e. traditional hand drawn cel animation, watercolor backgrounds, and original jazz recordings.',
            'price' => 188000,
            'image' => 'cuphead.webp',
            'publisher_id' => '56'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Vampire Survivors',
            'description' => 'Mow down thousands of night creatures and survive until dawn! Vampire Survivors is a gothic horror casual game with rogue-lite elements, where your choices can allow you to quickly snowball against the hundreds of monsters that get thrown at you.',
            'price' => 70000,
            'image' => 'vampire-survivors.webp',
            'publisher_id' => '57'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Noita',
            'description' => 'Noita is a magical action roguelite set in a world where every pixel is physically simulated. Fight, explore, melt, burn, freeze and evaporate your way through the procedurally generated world using spells you\'ve created yourself.',
            'price' => 188000,
            'image' => 'noita.webp',
            'publisher_id' => '58'
        ]);
        
        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Cult of the Lamb',
            'description' => 'Start your own cult in a land of false prophets, venturing out into diverse and mysterious regions to build a loyal community of woodland Followers and spread your Word to become the one true cult.',
            'price' => 400000,
            'image' => 'cult-of-the-lamb.webp',
            'publisher_id' => '59'
        ]);
    }
}
