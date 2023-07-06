<?php

namespace Database\Seeders;

use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tableNames = config('permission.table_names');
        foreach (Role::ROLES as $key => $value) {
            DB::table(Role::retrieveTableName())
                ->insert(
                    [
                        'name' => $value,
                        'guard_name' => 'web'
                    ]
                );
        }

        $adminRoleId = DB::table(Role::retrieveTableName())->where('name', '=', 'admin')->get('id');
        // Role admin
        foreach (Permission::PERMISSIONS as $key => $value) {
            DB::table($tableNames['role_has_permissions'])
                ->insert([
                    'permission_id' => ($key + 1),
                    'role_id' => $adminRoleId[0]->id
                ]);
        }
    }
}
