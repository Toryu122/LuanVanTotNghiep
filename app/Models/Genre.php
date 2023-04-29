<?php

namespace App\Models;

use App\Models\BaseModel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Genre extends BaseModel
{
    use HasFactory;

    const INTERMEDIATE_TABLE = [
        'game_genre'
    ];
}
