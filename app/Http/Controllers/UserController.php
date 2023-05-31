<?php


namespace App\Http\Controllers;

use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
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
}
