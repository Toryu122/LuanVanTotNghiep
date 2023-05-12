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
    // public $model = Game::class;
    public $perPage = 12;

    public function index()
    {
        $games = DB::table(Game::retrieveTableName())
            ->paginate($this->perPage);
        
        return view('index', [
            'games' => $games
        ]);
    }

}
