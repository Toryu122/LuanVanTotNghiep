<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rules\Password;

class AuthController extends Controller
{
    public function signup()
    {
        return view('signup');
    }

    public function login()
    {
        return view('login');
    }

    public function createUser(Request $request)
    {
        // dd($request->request);
        $request->validate(
            [
                'email' => [
                    'required',
                    'email'
                ],
                'name' => [
                    'required',
                    'string',
                    'max:255'
                ],
                'password' => [
                    'required',
                    'confirmed',
                    'min:8'
                ]
            ],
            [
                'email.required' => "Thiếu email!",
                'email.email' => "Email không hợp lệ!",

                'name.required' => "Thiếu tên đăng nhập!",
                'name.string' => "Tên đăng nhập cần phải là 1 chuỗi",
                'name.max' => "Tên đăng nhập tối đa 255 ký tự",

                'password.required' => "Thiếu mật khẩu!",
                'password.confirmed' => "Mật khẩu không trùng khớp",
                'password.min' => "Mật khẩu phải từ 8 ký tự trở lên"
            ]
        );

        $user = User::create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'password' => Hash::make($request->get('password'))
        ]);

        auth()->login($user);

        return redirect(route('index'));
    }

    public function loginUser(Request $request)
    {
        $credentials = $request->validate(
            [
                'email' => ['required', 'email'],
                'password' => ['required'],
            ],
            [
                'email.required' => "Thiếu email!",
                'email.email' => "Email không hợp lệ!",
                'password.required' => "Thiếu mật khẩu!"
            ]
        );

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            return redirect(route('index'));
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ])->onlyInput('email');
    }

    public function logoutUser(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
