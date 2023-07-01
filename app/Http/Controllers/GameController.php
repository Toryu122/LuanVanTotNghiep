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
use Illuminate\Pagination\LengthAwarePaginator;

class GameController extends Controller
{
    // public $model = Game::class;
    public $perPage = 8;
    public $bestSellers;
    public $recommendThisWeek;
    public $topFavorite;

    public function index()
    {
        // This is just temporary, must have an algorithm or something, idk
        // To take out 5 of each

        $this->bestSellers = DB::table(Game::retrieveTableName())
            ->inRandomOrder()->limit(5)->get();

        $this->recommendThisWeek = DB::table(Game::retrieveTableName())
            ->inRandomOrder()->limit(5)->get();

        $this->topFavorite = DB::table(Game::retrieveTableName())
            ->inRandomOrder()->limit(5)->get();

        $carousel = DB::table(Game::retrieveTableName())
            ->inRandomOrder()->limit(5)->get();

        return view('index', [
            'carousel' => $carousel,
            'bestSellers' => $this->bestSellers,
            'recommendThisWeek' => $this->recommendThisWeek,
            'topFavorite' => $this->topFavorite
        ]);
    }

    public function detail_game($id)
    {
        $game = DB::table(Game::retrieveTableName())
            ->where('id', '=', $id)
            ->first();
        $related = DB::table(Game::retrieveTableName())
            ->whereNotIn('id', [$id])
            ->where('publisher_id', '=', $game->publisher_id)
            ->get();
        return view('detail', [
            'game' => $game,
            'related' => $related
        ]);
    }

    public function search(Request $request)
    {
        // Get query parameter (query condition)
        $query = $request->get('q');
        $genre = $request->get('genre');
        $sortBy = $request->get('sortBy');
        $fromPrice = $request->get('fromPrice');
        $toPrice = $request->get('toPrice');

        // Start the query
        $game = Game::query();

        // Check if it exist
        if ($query) {
            $game = $game->where('name', 'like', '%' . $query . '%');
        }
        if ($fromPrice) {
            $game = $game->where('price', '>=', $fromPrice);
        }
        if ($toPrice) {
            $game = $game->where('price', '<=', $toPrice);
        }
        if ($genre) {
            $game = $game->whereHas('genres', function ($query) use ($genre) {
                $query->where('name', '=', $genre);
            });
        }

        if ($sortBy) {
            if ($sortBy == 'highest') {
                $game = $game->orderBy('price', 'desc');
            } elseif ($sortBy == 'lowest') {
                $game = $game->orderBy('price', 'asc');
            } elseif ($sortBy == 'AZ') {
                $game = $game->orderBy('name', 'asc');
            } elseif ($sortBy == 'ZA') {
                $game = $game->orderBy('name', 'desc');
            }
        }

        // Get current page, default is 1
        $currentPage = $request->query('page', 1);
        // Paginate the query
        $games = $game->paginate(20, columns: ['*'], pageName: 'page', page: $currentPage);
        // Append the query parameter to the URL
        $games->appends($request->except('page'));

        return view(
            'search',
            [
                'games' => $games,
                'query' => $game->toSql()
            ]
        );
    }
}
