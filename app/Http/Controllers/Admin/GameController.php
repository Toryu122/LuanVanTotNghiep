<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Tinify\Tinify;
use App\Models\Game;
use App\Models\Genre;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use WebPConvert\WebPConvert;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Gate;
use Intervention\Image\ImageManager;
use Spatie\LaravelImageOptimizer\Facades\ImageOptimizer;

class GameController extends Controller
{
    public function index()
    {
        $games = DB::table('games')
            ->get();
        $pubs = DB::table('publishers')
            ->get();
        $genres = DB::table('genres')
            ->get();
        return view(
            "admin.game.game",
            [
                'games' => $games,
                'pubs' => $pubs,
                'genres' => $genres
            ]
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
        if (Gate::allows('addGame')) {
            $request->validate(
                [
                    'game_name' => [
                        'required',
                        'unique:games,name'
                    ],
                    'price' => [
                        'required',
                        'min:0'
                    ],
                    'description' => 'required',
                    'pub_id' => 'required',
                    'img' => 'required|image|mimes:jpg,png,jpeg|max:5048',
                ],
                [
                    'game_name.required' => 'Thiếu tên game!',
                    'game_name.unique' => 'Game đã tồn tại!',
                    'price.required' => 'Thiếu giá của game!',
                    'price.min' => 'Giá tiền âm!',
                    'description.required' => 'Thiếu mô tả game!',
                    'pub_id.required' => 'Thiếu nhà phát hành',
                    'img.required' => 'Thiếu hình ảnh!',
                    'img.image' => 'Hình ảnh không hợp lệ',
                    'img.mimes' => 'Định dạng không hợp lệ!',
                    'img.max' => 'Hình ảnh không quá 5MB!'
                ]
            );

            // Duh, why? Laravel literally have Laravel Validation
            // $name_vali=DB::table('games')
            // ->where('name', '=', $request->game_name)
            // ->get();
            // if ($name_vali != null)
            //     return redirect('admin/game')->with('message', 'Trung ten game!');
            // if((float)$request->price<0)
            //     return redirect('admin/game')->with('message', 'Gia game khong dung!');

            $img = $request->file('img');
            /* Uncomment this to do normal image upload without optimizing */
            $ten_hinh = hexdec(uniqid()) . '.' . $img->getClientOriginalExtension();
            $request->img->move(public_path('images/games/'), $ten_hinh);
            $img_url = $ten_hinh;

            /* Comment this to disabled optimize image upload */
            // $savePath = public_path('images/games/');
            // $image_name = $this->optimize($img, $savePath, $request->get('game_name'));


            $flag = Game::insert([
                'name' => $request->game_name,
                'price' => $request->price,
                'description' => $request->description,
                'publisher_id' => $request->pub_id,
                'image' => $img_url, //$img_url
                'updated_at' => Carbon::now(),
            ]);
            if ($flag == false)
                return redirect('admin/game/add')->with('message', 'Thêm sản phẩm thất bại!');
            toastr()->success('', 'Thêm sản phẩm thành công!');
            return redirect()->back();
        }

        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
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
        if (Gate::allows('editGame')) {
            $request->validate([
                'img' => 'required|image|mimes:jpg,png,jpeg,webp|max:5048',
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
            Game::findOrfail($id)->update([
                'name' => $name,
                'price' => $price,
                'description' => $desc,
                'publisher_id' => $pub,
                'image' => $ten_hinh,
                'updated_at' => Carbon::now(),
            ]);
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

        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
    }

    public function delete($id)
    {
        if (Gate::allows('deleteGame')) {
            Game::findOrfail($id)->delete();

            toastr()->success('', 'Xóa thành công');
            return redirect()->back();
        }

        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
    }

    public function assignGenre(Request $request)
    {
        // dd($request);
        if (Gate::allows('editGame')) {
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

        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
    }

    public function optimize(
        $file,
        $savePath,
        $game_name,
        $width = null,
        $height = null,
    ) {
        // Set up the necessary dependencies and keys
        Tinify::setKey(env('TINIFY_API_KEY'));
        $manager = new ImageManager(['driver' => 'imagick']);

        // Get the original file name and extension
        $originalName = $file->getClientOriginalName();
        $extension = $file->getClientOriginalExtension();

        // Save the uploaded file
        $file->move($savePath, $originalName);

        // Optimize the uploaded image
        $optimizedPath = $savePath . $originalName;
        ImageOptimizer::optimize($optimizedPath);

        // Convert the optimized image to WebP format
        $name = Str::slug($game_name);
        $destination = $savePath . $name . '.webp';
        WebPConvert::convert($optimizedPath, $destination);

        // Delete the optimized image (not the original)
        unlink($optimizedPath);

        // Compress the converted WebP image using Tinify
        $source = \Tinify\fromFile($destination);
        $source->toFile($destination);

        if (isset($width) && isset($height)) {
            // Resize the image if width and height are provided
            $image = $manager->make($destination)->resize($width, $height);
            $image->save($destination);
        }

        return $name . '.webp';
    }

    public function testOptimze(Request $request)
    {
        $request->validate([
            'img' => 'required|image|mimes:jpg,png,jpeg|max:5048',
        ]);

        $file = $request->file('img');
        $savePath = public_path('/images/optimized/');

        $this->optimize($file, $savePath, 'some name here');

        return redirect()->back()->with('success', 'Image uploaded and optimized successfully');
    }
}
