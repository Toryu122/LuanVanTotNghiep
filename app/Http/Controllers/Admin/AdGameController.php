<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Game;
use App\View\Components\Admin\index;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;

class AdGameController extends Controller
{
    public function Index()
    {
        $games = DB::table('games')
            ->get();
        return view(
            'components.admin.game.game',
            ['games' => $games]
        );
    }
    public function add()
    {
        $pubs = DB::table('publishers')
            ->get();
        $genres = DB::table('genres')
            ->get();
        return view('components.admin.game.addgame', ['pubs' => $pubs, 'genres' => $genres]);
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
    public function edit(Request $request)
    {
        $game = DB::table('games')
            ->where('id', '=', $request['id'])
            ->first();
        $pubs = DB::table('publishers')
            ->get();
        $genres = DB::table('genres')
            ->get();
        return view(
            'components.admin.game.editgame',
            ['game' => $game, 'pubs' => $pubs, 'genres' => $genres]
        );
    }
    public function update(Request $request)
    {
        $game = $request->id;
        $request->validate([
            'img' => 'required|image|mimes:jpg,png,jpeg|max:5048',
            'game_name' => 'required',
            'price' => 'required',
            'description' => 'required',
            'pub_id' => 'required',
        ]);
        $img = $request->file('img');
        $ten_hinh = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
        $request->img->move(public_path('images'), $ten_hinh);
        $name = $request->game_name;
        $price = $request->price;
        $desc = $request->description;
        $pub = $request->pub_id;
        Game::findOrfail($game)->update([
            'name' => $name,
            'price' => $price,
            'description' => $desc,
            'publisher_id' => $pub,
            'image' => $ten_hinh,
            'updated_at' => Carbon::now(),
        ]);
        return redirect('admin/game');
    }
    public function del(Request $request)
    {
        Game::findOrfail($request->id)->delete();
        return redirect('admin/game');
    }
}
