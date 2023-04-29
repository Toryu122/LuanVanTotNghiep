<?php

namespace Database\Seeders;

use App\Models\Genre;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GenreSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table(Genre::retrieveTableName())->insert([
            'name' => 'Tower Defense'
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => '3D'
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => '2D'
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => 'Survival' 
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => 'RPG'
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => 'Action'
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => 'Open World'
        ]);

        DB::table(Genre::retrieveTableName())->insert([
            'name' => 'Platformer'
        ]);
    }
}
