<?php


namespace App\Http\Controllers;

use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    public function inforUser()
    {
        return view('inforUser');
    }
    public function editUser(Request $request)
    {
        $form = $request->get('form');
        if ($form == "1") {
            $path = $request->file('avatar');
            if (auth()->user()->avatar == null) {
                $img = "null.jpg";
            } else {
                $img = auth()->user()->avatar;
            }
            if ($path != null) {
                //Storage::delete(auth()->user()->avatar."jpg");
                $img = $request->user()->id . ".jpg";
                $request->file('avatar')->storeAs('avatars', $img);
                Storage::putFileAs('avatars', $request->file('avatar'), $img);
            }
            $request->validate(
                [
                    'name' => [
                        'required',
                        'string',
                        'max:255'
                    ]
                ],
                [

                    'name.required' => "Thiếu tên đăng nhập!",
                    'name.string' => "Tên đăng nhập cần phải là 1 chuỗi",
                    'name.max' => "Tên đăng nhập tối đa 255 ký tự",
                ]
            );

            DB::table('users')
                ->where('id', '=', auth()->user()->id)
                ->update([
                    'name' => $request->get('name'),
                    'biography' => $request->get('bio'),
                    'avatar' => $img
                ]);
        } else {
            $request->validate(
                [
                    'gender' => [
                        Rule::in(["Male", "Female", "Other"]),
                    ]
                ],
                [
                    'gender.in' => "Chọn giới tính!",
                ]
            );
            DB::table('users')
                ->where('id', '=', auth()->user()->id)
                ->update([
                    'gender' => $request->get('gender'),
                    'address' => $request->get('address')
                ]);
        }
        return redirect(route('inforUser'));
    }

    public function changePassword(Request $request)
    {
        // dd($request);
        $request->validate(
            [
                'old_password' => [
                    'required'
                ],
                'new_password' => [
                    'required',
                    'confirmed',
                    'min:8'
                ]
            ],
            [
                'old_password.required' => "Thiếu mật khẩu hiện tại!",

                'new_password.required' => "Thiếu mật khẩu mới!",
                'new_password.confirmed' => "Mật khẩu không trùng khớp với mật khẩu mới",
                'new_password.min' => "Mật khẩu phải từ 8 ký tự trở lên"
            ]
        );

        $user = Auth::user();
        $currentPassword = $request->get('old_password');
        if (!Hash::check($currentPassword, $user->password)) {
            return redirect(route('inforUser'))->with('old_password_mismatch', 'Mật khẩu không đúng!');
        }

        DB::table('users')
            ->where('id', '=', $user->id)
            ->update([
                'password' => Hash::make($request->get('new_password'))
            ]);

        // Logout the user
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        
        return redirect('/dang-nhap')->with('password_changed','Thay đổi mật khẩu thành công');
    }
}
