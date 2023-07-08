<?php

namespace App\Http\Controllers\Admin;

use App\Models\Key;
use App\Models\Game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;

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
        $request->validate(
            [
                'cd_key' => [
                    'sometimes',
                    'string'
                ],
                'game_id' => [
                    'sometimes',
                    'integer'
                ],
                'expired_date' => [
                    'sometimes',
                    'date'
                ],
                'csv_file' => [
                    'nullable',
                    'file',
                    'mimes:csv,txt', // Ensure the uploaded file is a CSV or TXT file
                ],
            ],
            [
                'cd_key.required' => 'Thiếu key!',
                'cd_key.string' => 'Key không hợp lệ',
                'game_id.required' => 'Thiếu game!',
                'game_id.integer' => 'Game không hợp lệ',
                'expired_date.date' => 'Ngày hết hạn không hợp lệ',
                'csv_file.file' => 'File không hợp lệ',
                'csv_file.mimes' => 'File phải có định dạng CSV hoặc TXT',
            ]
        );

        if ($request->hasFile('csv_file')) {
            $file = $request->file('csv_file');

            if ($file->isValid() && $file->getClientOriginalExtension() === 'csv') {
                $filePath = $file->getRealPath();

                $file = fopen($filePath, 'r');
                if ($file) {
                    // Skip the header line
                    fgetcsv($file);

                    while (($row = fgetcsv($file)) !== false) {
                        // Process each row of the CSV file
                        // $row is an array containing the values of each column in the current row
                        // Access each value using $row[index]
                        $cdKey = $row[0];
                        $gameId = $row[1];
                        $expireDate = isset($row[2]) ? $row[2] : null;
                        DB::table(Key::retrieveTableName())
                            ->insert(
                                [
                                    'cd_key' => $cdKey,
                                    'game_id' => $gameId,
                                    'expire_date' => date('Y-m-d H:i:s', strtotime($expireDate)),
                                ]
                            );
                    }
                    fclose($file);
                }
            }

            toastr()->success('', 'Thêm thành công');
            return redirect()->back();
        } else {

            $key1 = '/^[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}$/';
            $key2 = '/^[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}$/';
            $cdKey = $request->get('cd_key');

            if (preg_match($key1, $cdKey)) {
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
            } elseif (preg_match($key2, $cdKey)) {
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
            } else {
                toastr()->error('', 'Key không hợp lệ');
                return redirect()->back();
            }
        }
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

        $key1 = '/^[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}$/';
        $key2 = '/^[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}-[A-Z0-9]{5}$/';
        $cdKey = $request->get('cd_key');

        // Check if the string matches either of the formats
        if (preg_match($key1, $cdKey)) {
            DB::table(Key::retrieveTableName())
                ->where('id', '=', $id)
                ->update(
                    [
                        'cd_key' => $cdKey,
                        'expire_date' => date('Y-m-d H:i:s', strtotime($request->input('expiredate')))
                    ]
                );

            toastr()->success('', 'Cập nhật thành công');
            return redirect()->back();
        } elseif (preg_match($key2, $cdKey)) {
            DB::table(Key::retrieveTableName())
                ->where('id', '=', $id)
                ->update(
                    [
                        'cd_key' => $cdKey,
                        'expire_date' => date('Y-m-d H:i:s', strtotime($request->input('expiredate')))
                    ]
                );

            toastr()->success('', 'Cập nhật thành công');
            return redirect()->back();
        } else {
            toastr()->error('', 'Key không hợp lệ');
            return redirect()->back();
        }
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
