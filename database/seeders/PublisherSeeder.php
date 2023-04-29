<?php

namespace Database\Seeders;

use App\Models\Publisher;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PublisherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Re-Logic'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'PopCap Games'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Chucklefish'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'CD PROJEKT RED'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'SEGA'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Klei Entertainment'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Valve'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Ninja Kiwi'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'BlueTwelve Studio'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Ubisoft'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Supergiant Games'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'CAPCOM'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'tobyfox'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'ConcernedApe'
        ]);
        
        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'INTI CREATES'
        ]);
        
        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'Mojang'
        ]);

        DB::table(Publisher::retrieveTableName())->insert([
            'name' => 'FromSoftware Inc'
        ]);
    }
}
