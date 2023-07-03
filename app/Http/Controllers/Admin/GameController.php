<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Game;
use App\Models\Genre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class GameController extends Controller
{
    public function index()
    {
        $games = DB::table('games')
            ->get();
        return view(
            "admin.game.game",
            ['games' => $games]
        );
    }

    public function add()
    {
        $pubs = DB::table('publishers')
            ->get();
        $genres = DB::table('genres')
            ->get();
        return view("admin.game.addgame", ['pubs' => $pubs, 'genres' => $genres]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'game_name' => 'required',
            'price' => 'required',
            'description' => 'required',
            'pub_id' => 'required',
            'img' => 'required|image|mimes:jpg,png,jpeg|max:5048',
        ]);
        $img = $request->file('img');
        $ten_hinh = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
        $request->img->move(public_path('images'), $ten_hinh);
        $img_url = $ten_hinh;

        $flag = Game::insert([
            'name' => $request->game_name,
            'price' => $request->price,
            'description' => $request->description,
            'publisher_id' => $request->pub_id,
            'image' => $img_url,
            'updated_at' => Carbon::now(),
        ]);
        if ($flag == false)
            return redirect('admin/game/add')->with('message', 'Thêm sản phẩm thất bại!');
        return redirect('admin/game')->with('message', 'Thêm sản phẩm thành công!');
    }

    public function edit($id)
    {
        $game = DB::table('games')
            ->where('id', '=', $id)
            ->first();
        $pubs = DB::table('publishers')
            ->get();
        $genres = DB::table('genres')
            ->get();
        $game_genres = DB::table('game_genre')
            ->get();
        return view(
            "admin.game.editgame",
            [
                'game' => $game,
                'pubs' => $pubs,
                'genres' => $genres,
                'game_genres' => $game_genres,
            ]
        );
    }

    public function update(Request $request, $id)
    {
        // $request->validate([
        //     'img' => 'required|image|mimes:jpg,png,jpeg,webp|max:5048',
        //     'game_name' => 'required',
        //     'price' => 'required',
        //     'description' => 'required',
        //     'pub_id' => 'required',
        // ]);
        // $img = $request->file('img');
        // $ten_hinh = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
        // $request->img->move(public_path('images'), $ten_hinh);
        // $name = $request->game_name;
        // $price = $request->price;
        // $desc = $request->description;
        // $pub = $request->pub_id;
        // Game::findOrfail($id)->update([
        //     'name' => $name,
        //     'price' => $price,
        //     'description' => $desc,
        //     'publisher_id' => $pub,
        //     'image' => $ten_hinh,
        //     'updated_at' => Carbon::now(),
        // ]);
        //sua the loai cho game

        DB::table('game_genre')
            ->where('game_id', '=', $id)
            ->delete();
        foreach ($request->genres as $genre) {
            if ($genre == 0)
                continue;
            DB::table('game_genre')
                ->insert(
                    [
                        'game_id' => $id,
                        'genre_id' => $genre
                    ]
                );
        }
        return redirect('admin/game');
    }

    public function delete($id)
    {
        Game::findOrfail($id)->delete();
        return redirect('admin/game');
    }

    public function assignGenre(Request $request)
    {
        // dd($request);
        $gameId = DB::table(Game::retrieveTableName())
            ->where('name', '=', $request->get('name'))
            ->first();
        $genreId = DB::table(Genre::retrieveTableName())
            ->where('name', '=', $request->get('genre'))
            ->first();

        DB::table(Genre::INTERMEDIATE_TABLE[0])
            ->insert(
                [
                    'game_id' => $gameId->id,
                    'genre_id' => $genreId->id
                ]
            );

        return redirect()->back();
    }
}
