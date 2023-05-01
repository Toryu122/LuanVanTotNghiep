<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Genre;
use App\Models\Publisher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\ApiController;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class GameController extends Controller
{
    public $model = Game::class;
    public $perPage = 8;

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

    public function index()
    {
        $games = DB::table(Game::retrieveTableName())
            ->paginate($this->perPage);
        
        return view('index', [
            'games' => $games
        ]);
    }

}
