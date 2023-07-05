<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends BaseModel
{
    use HasFactory;

    const PERMISSIONS = [
        'addGame',
        'editGame',
        'deleteGame',

        'addGenre',
        'editGenre',
        'deleteGenre',

        'addPublisher',
        'editPublisher',
        'deletePublisher',

        'assignRole',
        'assignPermission',
        
        'addUser',
        'editUser',
        'deleteUser',

        'cancelOrder',
        'acceptOrder',
    ];
}
