<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\GameSeeder;
use Database\Seeders\UserSeeder;
use Database\Seeders\GenreSeeder;
use Database\Seeders\PublisherSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call([
            // GenreSeeder::class,
            PublisherSeeder::class,
            UserSeeder::class,
            // GameSeeder::class
        ]);
    }
}
