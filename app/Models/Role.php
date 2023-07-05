<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends BaseModel
{
    use HasFactory;

    // Temporary for now
    const ROLES = [
        'admin',
        'leader',
        'hr',
        'finance',
    ];
}
