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
            'image' => 'bt5.jpg',
            'publisher_id' => '8'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Bloons TD 6',
            'description' => 'Five-star tower defense with unrivaled depth and replayability. The Bloons are back in full HD glory and this time they mean business! Build awesome towers, choose your favorite upgrades, hire new Special Agents, and pop every last invading Bloon in the most popular tower defense series in history.',
            'price' => 120000,
            'image' => 'bt6.jpg',
            'publisher_id' => '8'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Cyberpunk 2077',
            'description' => 'Cyberpunk 2077 is an open-world, action-adventure RPG set in the dark future of Night City — a dangerous megalopolis obsessed with power, glamor, and ceaseless body modification.',
            'price' => 990000,
            'image' => 'cyberpunk.jpg',
            'publisher_id' => '4'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => "Don't Starve Together",
            'description' => 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.',
            'price' => 165000,
            'image' => 'dst.jpg',
            'publisher_id' => '6'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'ELDEN RING',
            'description' => 'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.',
            'price' => 800000,
            'image' => 'er.jpg',
            'publisher_id' => '17'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Azure Striker Gunvolt',
            'description' => 'A 2D action game featuring a young man with the power of lightning who stands for freedom against the evil ambitions of a massive organization. When lightning strikes, a new legend is born.',
            'price' => 165000,
            'image' => 'gv1.jpg',
            'publisher_id' => '15'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Azure Striker Gunvolt 2',
            'description' => 'The ultra-refined 2D side-scrolling action you remember from \"Azure Striker Gunvolt\" is recharged and better than ever! In Gunvolt 2, series anti-hero Copen joins the fray as a playable character! Copy abilities from defeated boss characters and use them as your own!',
            'price' => 188000,
            'image' => 'gv2.jpg',
            'publisher_id' => '15'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Azure Striker Gunvolt 3',
            'description' => 'The next installment in the high-speed 2D action Gunvolt series is finally here with Azure Striker Gunvolt 3. Balancing both an involving story and satisfying gameplay, Gunvolt 3 is the most extravagant entry in the series yet!',
            'price' => 705000,
            'image' => 'gv3.jpg',
            'publisher_id' => '15'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Hades',
            'description' => 'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.',
            'price' => 321000,
            'image' => 'hades.jpg',
            'publisher_id' => '11'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Left 4 Dead 2',
            'description' => 'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans.',
            'price' => 142000,
            'image' => 'l4d2.jpg',
            'publisher_id' => '7'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Megaman 11',
            'description' => 'Mega Man is back! The newest entry in this iconic series blends classic, challenging 2D platforming action with a fresh new visual style. The new Double Gear system boosts Mega Man\'s speed and power for a new twist to the satisfying gameplay the series is known for.',
            'price' => 398000,
            'image' => 'mm11.jpg',
            'publisher_id' => '12'
            
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Persona 5 Royal',
            'description' => 'Don the mask and join the Phantom Thieves of Hearts as they stage grand heists, infiltrate the minds of the corrupt, and make them change their ways!',
            'price' => 1380000,
            'image' => 'p5.jpg',
            'publisher_id' => '5'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Plants vs. Zombies GOTY Edition',
            'description' => 'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.',
            'price' => 70000,
            'image' => 'pvz.jpg',
            'publisher_id' => '2'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Starbound',
            'description' => 'The Bloons are back and better than ever! Get ready for a massive 3D tower defense game designed to give you hours and hours of the best strategy gaming available.',
            'price' => 188000,
            'image' => 'starbound.jpg',
            'publisher_id' => '3'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Stardew Valley',
            'description' => "You've inherited your grandfather's old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home?",
            'price' => 165000,
            'image' => 'stardew.jpg',
            'publisher_id' => '14'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Stray',
            'description' => 'Lost, alone and separated from family, a stray cat must untangle an ancient mystery to escape a long-forgotten cybercity and find their way home.',
            'price' => 319000,
            'image' => 'stray.jpg',
            'publisher_id' => '9'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Terraria',
            'description' => 'Dig, fight, explore, build! Nothing is impossible in this action-packed adventure game. Four Pack also available!',
            'price' => 120000,
            'image' => 'terraria.jpg',
            'publisher_id' => '1'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Undertale',
            'description' => "UNDERTALE! The RPG game where you don't have to destroy anyone.",
            'price' => 120000,
            'image' => 'undertale.jpg',
            'publisher_id' => '13'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Valiant Hearts: The Great War™',
            'description' => 'Valiant Hearts : The Great War is the story of 4 crossed destinies and a broken love in a world torn apart. Dive into a 2D animated comic book adventure, mixing exploration, action and puzzles. Lost in the middle of the trenches, play as each of the 4 strangers, relive the War and help a young German',
            'price' => 249000,
            'image' => 'valiant.jpg',
            'publisher_id' => '10'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man X Legacy Collection',
            'description' => 'Mega Man X Legacy Collection includes the legendary 16-bit titles and the series’ exciting foray into the 32-bit era: Mega Man X, Mega Man X2, Mega Man X3, and Mega Man X4. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.',
            'price' => 276000,
            'image' => 'xlc1.jpg',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man X Legacy Collection 2',
            'description' => 'Complete the exciting Mega Man X saga with four action-packed titles! This collection showcases the evolution of the series with Mega Man X5, Mega Man X6, Mega Man X7, and Mega Man X8. Test your skills in the new X Challenge mode, which pits players against two deadly bosses at once.',
            'price' => 276000,
            'image' => 'xlc2.jpg',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man Zero/ZX Legacy Collection',
            'description' => 'Mega Man Zero/ZX Legacy Collection brings together six classic titles in one game: Mega Man Zero 1, 2, 3 and 4, as well as Mega Man ZX and ZX Advent. The collection also features Z-Chaser, an exclusive new mode created just for this set of games.',
            'price' => 550000,
            'image' => 'z-zxlc.jpg',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man Legacy Collection',
            'description' => 'Mega Man Legacy Collection is a celebration of the 8-bit history of Capcom’s iconic Blue Bomber featuring faithful reproductions of the series’ origins with the original six Mega Man games.',
            'price' => 206000,
            'image' => 'mlc1.jpg',
            'publisher_id' => '12'
        ]);

        DB::table(Game::retrieveTableName())->insert([
            'name' => 'Mega Man Legacy Collection 2',
            'description' => 'The Blue Bomber is back in this second collection of classic Capcom titles! Featuring faithful reproductions of Mega Man 7, 8, 9, & 10, this collection is bursting with additional content, from time trials and remix challenges to a music player and an extensive gallery of rare illustrations.',
            'price' => 276000,
            'image' => 'mlc2.jpg',
            'publisher_id' => '12'
        ]);
    }
}
