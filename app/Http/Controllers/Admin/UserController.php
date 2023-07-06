<?php

namespace App\Http\Controllers\Admin;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function index()
    {
        $users = User::with('roles')->get();
        $roles = Role::all();

        return view(
            'admin.user.user',
            [
                'users' => $users,
                'roles' => $roles
            ]
        );
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
                ],
                'roles' => [
                    'array'
                ]
            ],
            [
                'gender.in' => 'Giới tính không hợp lệ, vui lòng chọn lại!',
                'biography.string' => 'Tiểu sử không hợp lệ',
                'address.string' => 'Địa chỉ không hợp lệ',
                'name.string' => 'Tên không hợp lệ',
                'roles.array' => 'Role không hợp lệ'
            ]
        );

        $user = User::find($id);

        $data = [
            'name' => $request->filled('name') ? $request->input('name') : $user->name,
            'gender' => $request->filled('gender') ? $request->input('gender') : $user->gender,
            'biography' => $request->filled('biography') ? $request->input('biography') : $user->biography,
            'address' => $request->filled('address') ? $request->input('address') : $user->address,
            'verified' => $request->has('verified') ? 1 : 0
        ];

        $roles = $request->get('roles');

        if (count($roles) > 0) {
            if (count($user->getRoleNames()) <= count($roles)) {
                $user->assignRole($roles);
            } else {
                $user->syncRoles($roles);
            }
        }

        DB::table('users')->where('id', $id)->update($data);


        toastr()->success('', 'Cập nhật thành công');
        return redirect()->back();
    }

    public function delete($id)
    {
    }
}
