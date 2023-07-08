<?php

namespace App\Http\Controllers\Admin;

use App\Models\Key;
use App\Models\Game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class KeyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $keys = Key::with('game')->get();
        $games = Game::all();

        return view(
            'admin.key.key',
            [
                'keys' => $keys,
                'games' => $games,
            ]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request);
        $request->validate(
            [
                'cd_key' => [
                    'required',
                    'string'
                ],
                'game_id' => [
                    'required',
                    'integer'
                ],
                'expired_date' => [
                    'sometimes',
                    'date'
                ]
            ],
            [
                'cd_key.required' => 'Thiếu key!',
                'cd_key.string' => 'Key không hợp lệ',
                'game_id.required' => 'Thiếu game!',
                'game_id.integer' => 'Game không hợp lệ',
                'expired_date.date' => 'Ngày hết hạn không hợp lệ'
            ]
        );


        DB::table(Key::retrieveTableName())
            ->insert(
                [
                    'cd_key' => $request->filled('cd_key') ? $request->input('cd_key') : "",
                    'game_id' => $request->filled('game_id') ? $request->input('game_id') : "",
                    'expire_date' => $request->filled('expiredate') ? date('Y-m-d H:i:s', strtotime($request->input('expiredate'))) : null,
                ]
            );

        toastr()->success('', 'Thêm thành công');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate(
            [
                'cd_key' => [
                    'string',
                ],
                'expire_date' => [
                    'date'
                ]
            ],
            [
                'cd_key.string' => 'Key không hợp lệ',
                'expire_date.date' => 'Ngày hết hạn không hợp lệ',
            ]
        );



        DB::table(Key::retrieveTableName())
            ->where('id', '=', $id)
            ->update(
                [
                    'cd_key' => $request->get('cd_key'),
                    'expire_date' => date('Y-m-d H:i:s', strtotime($request->input('expiredate')))
                ]
            );

        toastr()->success('', 'Cập nhật thành công');
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
