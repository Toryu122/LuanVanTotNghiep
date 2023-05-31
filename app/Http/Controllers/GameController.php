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
    public $perPage = 8;

    public function index()
    {
        $games = DB::table(Game::retrieveTableName())
            ->paginate($this->perPage);

        return view('index', [
            'games' => $games
        ]);
    }

    public function detail_game($id)
    {
        $game = DB::table('games')
            ->where('id', '=', $id)
            ->first();
        $related = DB::table('games')
            ->whereNotIn('id',[$id])
            ->where('publisher_id','=',$game->publisher_id)
            ->get();
        return view('detail', [
            'game' => $game, 'related'=>$related
        ]);
    }
}
