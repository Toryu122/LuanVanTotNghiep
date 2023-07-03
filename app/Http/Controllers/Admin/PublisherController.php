<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Game;
use App\Models\Publisher;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class PublisherController extends Controller
{
    public function index()
    {
        $publishers = DB::table(Publisher::retrieveTableName())
            ->get();

        return view("admin.publisher.publisher", ['publishers' => $publishers]);
    }

    public function show($id)
    {
        $publisher = DB::table(Publisher::retrieveTableName())
            ->where('id', '=', $id)
            ->get();

        return $publisher;
    }

    public function create()
    {
        return view("admin.publisher.addpublisher");
    }

    public function store(Request $request)
    {
        $request->validate(
            [
                'name' => [
                    Rule::unique(Publisher::retrieveTableName()),
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

        DB::table(Publisher::retrieveTableName())
            ->insert(
                [
                    'name' => $name
                ]
            );

        return redirect()->route("adminpublisher");
    }

    public function edit($id)
    {
        $publisher = DB::table(Publisher::retrieveTableName())
            ->where('id', '=', $id)
            ->first();

        return view("admin.publisher.editpublisher", ['publisher' => $publisher]);
    }

    public function update(Request $request, $id)
    {
        $request->validate(
            [
                'name' => [
                    Rule::unique(Publisher::retrieveTableName())->ignore($id),
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

        DB::table(Publisher::retrieveTableName())
            ->where('id', '=', $id)
            ->update(
                [
                    'name' => $name,
                    'updated_at' => Carbon::now()
                ]
            );

        return redirect()->route('adminpublisher');
    }

    public function delete($id)
    {
        $isExist = DB::table(Game::retrieveTableName())
            ->where('publisher_id', '=', $id)
            ->exists();

        if ($isExist) {
            return redirect()->back()->with('game_existed', "Xóa thất bại, vẫn còn game thuộc nhà phát hành này");
        }
    
        Publisher::destroy($id);

        return redirect()->route('adminpublisher')->with('delete_success', "Xóa thành công");
    }
}
