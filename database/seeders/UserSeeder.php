<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tableNames = config('permission.table_names');

        $adminId = DB::table((new User)->getTable())->insertGetId([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('password'),
            'verified' => 1,
            'remember_token' => null,
        ]);

        $hrId = DB::table((new User)->getTable())->insertGetId(
            [
                'name' => 'hr',
                'email' => 'hr@gmail.com',
                'password' => Hash::make('password'),
                'verified' => 1,
                'remember_token' => null,
            ]
        );

        $adminRoleId = DB::table(Role::retrieveTableName())->where('name', '=', 'admin')->get('id');
        $hrRoleId = DB::table(Role::retrieveTableName())->where('name', '=', 'hr')->get('id');
        $leaderRoleId = DB::table(Role::retrieveTableName())->where('name', '=', 'leader')->get('id');

        // admin
        DB::table($tableNames['model_has_roles'])
            ->insert([
                'role_id' => $adminRoleId[0]->id,
                'model_type' => User::class,
                'user_id' => $adminId
            ]);

        // hr
        DB::table($tableNames['model_has_roles'])
            ->insert([
                'role_id' => $hrRoleId[0]->id,
                'model_type' => User::class,
                'user_id' => $hrId
            ]);

        DB::table($tableNames['model_has_roles'])
            ->insert([
                'role_id' => $leaderRoleId[0]->id,
                'model_type' => User::class,
                'user_id' => $hrId
            ]);
    }
}
