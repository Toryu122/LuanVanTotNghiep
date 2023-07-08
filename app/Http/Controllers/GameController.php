<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Genre;
use App\Models\Publisher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\ApiController;
use App\Models\Role;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Http;

class GameController extends Controller
{
    // public $model = Game::class;
    public $perPage = 8;
    public $bestSellers;
    public $recommendThisWeek;
    public $topFavorite;

    public $apiUrl = "https://rawg.io/api/games";

    public function index()
    {
        // This is just temporary, must have an algorithm or something, idk
        // To take out 5 of each

        // Get the most sold game by counting quantity
        $games = DB::table('order_details')
            ->select('game_id', DB::raw('SUM(quantity) as total_quantity'))
            ->groupBy('game_id')
            ->orderByDesc('total_quantity')
            ->limit(5)
            ->get();

        $this->bestSellers = new Collection();

        foreach ($games as $game) {
            $gameId = $game->game_id;
            $totalQuantity = $game->total_quantity;

            // Retrieve game details using the relationship
            $gameDetails = Game::findOrFail($gameId);

            // Add game details to the collection
            $gameObj = (object) [
                'id' => $gameId,
                'name' => $gameDetails->name,
                'total_quantity' => $totalQuantity,
                'description' => $gameDetails->description,
                'price' => $gameDetails->price,
                'image' => $gameDetails->image,
                'publisher' => $gameDetails->publisher_id,
                'like' => $gameDetails->like
            ];

            $this->bestSellers->push($gameObj);
        }

        // Get randomly 5 game, and store it as a cache that can last 1 week
        $this->recommendThisWeek = Cache::remember('recommend_this_week', now()->addWeek(), function () {
            return DB::table(Game::retrieveTableName())->inRandomOrder()->limit(5)->get();
        });

        $this->topFavorite = DB::table(Game::retrieveTableName())
            ->orderByDesc('like')->limit(5)->get();


        return view('index', [
            'carousel' => $this->topFavorite,
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
            
        $name = basename($game->image, '.webp');

        $response = Http::get($this->apiUrl . "/$name?key=" . env('RAWG.IO_API_KEY'));

        $platform = null;
        $requirements = null;
        $minimum = null;
        $recommended = null;

        // Check if the game has Platforms key, mainly because the request fail
        // to fetch data
        if (array_key_exists('platforms', $response->json())) {
            $platform = $response['platforms'];
            // Only take the PC Requirements
            $result = array_filter($platform, function ($item) {
                return isset($item['platform']['name']) && $item['platform']['name'] === 'PC';
            });

            // Check if the game has 'requirements'
            if (!empty($result)) {
                $foundArray = reset($result); // Get the first matching array
                // Access the elements of the found array
                if (array_key_exists('requirements', $foundArray)) {
                    $requirements = $foundArray['requirements'];

                    // Check if has minimum
                    if (array_key_exists('minimum', $requirements)) {
                        $minimumIndex = strpos($requirements['minimum'], "Minimum:");
                        if ($minimumIndex !== false) {
                            $minimumString = substr($requirements['minimum'], $minimumIndex + strlen("Minimum:"));
                            $minimumString = trim($minimumString);
                            $minimum = explode("\n", $minimumString);
                        }
                    }

                    // Check if has recommended
                    if (array_key_exists('recommended', $requirements)) {
                        $recommendedIndex = strpos($requirements['recommended'], "Recommended:");
                        if ($recommendedIndex !== false) {
                            $recommendedString = substr($requirements['recommended'], $recommendedIndex + strlen("recommended:"));
                            $recommendedString = trim($recommendedString);
                            $recommended = explode("\n", $recommendedString);
                        }
                    }
                }
            }
        }

        return view('detail', [
            'game' => $game,
            'related' => $related,
            'minimum' => $minimum,
            'recommended' => $recommended
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

    public function likeGame($id)
    {
        $cacheKey = "like_game_" . $id;

        if (Cache::has($cacheKey)) {
            return redirect()->back();
        }

        $game = DB::table(Game::retrieveTableName())
            ->where('id', '=', $id)
            ->first();

        if ($game) {
            DB::table(Game::retrieveTableName())
                ->where('id', '=', $id)
                ->update(
                    [
                        'like' => $game->like + 1,
                        'updated_at' => Carbon::now()
                    ]
                );

            $rateLimitedDuration = 1800;
            Cache::put($cacheKey, true, $rateLimitedDuration);

            return redirect()->back()->with('liked');
        }

        return redirect()->back()->with('game_not_found', "Something went wrong!");
    }
}
