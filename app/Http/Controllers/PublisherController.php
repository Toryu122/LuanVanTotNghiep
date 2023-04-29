<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Publisher;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Http\Request;

class PublisherController extends Controller
{
    // public $model = Publisher::class;

    /**
     * @return HasMany
     */
    public function games() : HasMany
    {
        return $this->hasMany(Game::class);
    }
}
