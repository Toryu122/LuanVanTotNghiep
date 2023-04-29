<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;
use App\Models\Game;
use App\Models\Genre;
use App\Models\Publisher;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class GameController extends Controller
{
    // public $model = Game::class;

    /**
     * @return BelongsTo
     */
    public function publisher() : BelongsTo
    {
        return $this->belongsTo(Publisher::class);
    }

    /**
     * @return BelongsToMany
     */
    public function genres() : BelongsToMany
    {
        return $this->belongsToMany(Genre::class);
    }
}
