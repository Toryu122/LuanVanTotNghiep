<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Game;
use App\Models\Genre;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Gate;

class GenreController extends Controller
{
    public function index()
    {
        $genres = DB::table(Genre::retrieveTableName())
            ->get();

        return view("admin.genre.genre", ['genres' => $genres]);
    }

    public function show($id)
    {
        $genre = DB::table(Genre::retrieveTableName())
            ->where('id', '=', $id)
            ->get();

        return $genre;
    }

    public function create()
    {
        return view("admin.genre.addgenre");
    }

    public function store(Request $request)
    {
        if (Gate::allows('addGenre')) {
            $request->validate(
                [
                    'name' => [
                        Rule::unique(Genre::retrieveTableName()),
                        'required',
                        'string'
                    ]
                ],
                [
                    'name.required' => "Không thể thiếu tên!",
                    'name.unique' => "Trùng tên!"
                ]
            );

            $name = $request->get('name');

            DB::table(Genre::retrieveTableName())
                ->insert(
                    [
                        'name' => $name
                    ]
                );

            return redirect()->route('admingenre');
        }

        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
    }

    public function edit($id)
    {
        $genre = DB::table(Genre::retrieveTableName())
            ->where('id', '=', $id)
            ->first();

        return view("admin.genre.editgenre", ['genre' => $genre]);
    }

    public function update(Request $request, $id)
    {
        if (Gate::allows('editGenre')) {
            $request->validate(
                [
                    'name' => [
                        Rule::unique(Genre::retrieveTableName())->ignore($id),
                        'required',
                        'string'
                    ]
                ],
                [
                    'name.required' => "Không thể thiếu tên!",
                    'name.unique' => "Trùng tên!"
                ]
            );

            $name = $request->get('name');

            DB::table(Genre::retrieveTableName())
                ->where('id', '=', $id)
                ->update(
                    [
                        'name' => $name,
                        'updated_at' => Carbon::now()
                    ]
                );

            return redirect()->route("admingenre");
        }

        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
    }

    public function delete($id)
    {
        if (Gate::allows('deleteGenre')) {
            $isExist = DB::table(Genre::INTERMEDIATE_TABLE[0])
                ->where('id', '=', $id)
                ->exists();

            if ($isExist) {
                return redirect()->back()->with('game_existed', "Xóa thất bại, vẫn còn game thuộc thể loại này");
            }

            Genre::destroy($id);

            return redirect()->route('admingenre')->with('delete_success', "Xóa thành công");
        }
                                
        toastr()->error('', 'Bạn không đủ quyền hạn');
        return redirect()->back();
    }
}
