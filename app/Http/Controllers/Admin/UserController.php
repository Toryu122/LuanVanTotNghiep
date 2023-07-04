<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();

        return view('admin.user.user', ['users' => $users]);
    }

    public function create()
    {
        return view('admin.user.user');
    }

    public function store(Request $request)
    {
    }

    public function edit($id)
    {
        $user = User::find($id);

        return view('admin.user.edituser', ['user' => $user]);
    }

    public function update(Request $request, $id)
    {
        // echo $id;
        // dd($request);
        $request->validate(
            [
                'name' => [
                    'string'
                ],
                'gender' => [
                    Rule::in(User::GENDERS)
                ],
                'biography' => [
                    'nullable',
                    'string'
                ],
                'address' => [
                    'nullable',
                    'string'
                ]
            ],
            [
                'gender.in' => 'Giới tính không hợp lệ, vui lòng chọn lại!',
                'biography.string' => 'Tiểu sử phải là 1 chuỗi',
                'address.string' => 'Địa chỉ phải là 1 chuỗi',
                'name.string' => 'Tên phải là 1 chuỗi'
            ]
        );

        $data = [
            'name' => $request->filled('name') ? $request->input('name') : null,
            'gender' => $request->filled('gender') ? $request->input('gender') : null,
            'biography' => $request->filled('biography') ? $request->input('biography') : null,
            'address' => $request->filled('address') ? $request->input('address') : null,
            'verified' => $request->has('verified') ? 1 : 0
        ];

        DB::table('users')->where('id', $id)->update($data);

        toastr()->success('', 'Cập nhật thành công');
        return redirect()->back();
    }

    public function delete($id)
    {
    }
}
