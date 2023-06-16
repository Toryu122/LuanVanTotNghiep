<?php

namespace App\Http\Controllers;

use App\Common\Helper;
use App\Models\User;
use App\Common\Constant;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Contracts\Session\Session;
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

    public function sendSignupMail($email, $otp)
    {
        $htmlFilePath = base_path() . '\resources/html/mailVerify.html';
        $htmlContent = file_get_contents($htmlFilePath);

        $link = env('APP_URL') . '/auth/verify?email=' . $email . "&otp=$otp";

        $htmlContent = str_replace('{{linkVerify}}', $link, $htmlContent);
        Helper::sendMail($email, 'Verify Account', $htmlContent);
    }

    public function verifyAccount(Request $request)
    {
        try {
            $validate = Validator::make(
                $request->all(),
                [
                    'email' => [
                        'required',
                        'email'
                    ],
                    'otp' => [
                        'required'
                    ]
                ]
            );

            if ($validate->fails()) {
                toastr()->error('', $validate->errors());
                return redirect()->route('index');
            }

            $user = User::where('email', '=', $request->get('email'))->first();
            if ($user->verified === 1) {
                toastr()->error('', 'Tài khoản của bạn đã được xác thực từ trước!');
                return redirect()->route('index');
            } else {
                User::where('email', '=', $user->email)
                    ->update(
                        [
                            'verified' => 1
                        ]
                    );
                toastr()->success('', 'Xác thực thành công');
                return redirect()->route('index');
            }
        } catch (\Exception $ex) {
            Helper::getResponse('', $ex->getMessage());
            toastr()->error("Nếu bạn thấy thông báo này hãy báo lỗi", "Something went wrong");
            return redirect()->route('index');
        }
    }

    public function createUser(Request $request)
    {
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

                'name.required' => "Thiếu họ và tên!",
                'name.string' => "Tên đăng nhập cần phải là 1 chuỗi ký tự chữ",
                'name.max' => "Tên đăng nhập tối đa 255 ký tự",

                'password.required' => "Thiếu mật khẩu!",
                'password.confirmed' => "Mật khẩu không trùng khớp",
                'password.min' => "Mật khẩu phải từ 8 ký tự trở lên"
            ]
        );

        $userExist = DB::table('users')
            ->where('email', '=', $request->get('email'))
            ->first();

        if ($userExist == null) {
            try {
                $otp = Str::random(Constant::OTP_LENGTH);
                User::create([
                    'name' => $request->get('name'),
                    'email' => $request->get('email'),
                    'otp' => $otp,
                    'password' => Hash::make($request->get('password'))
                ]);

                $this->sendSignupMail($request->get('email'), $otp);
            } catch (\Exception $ex) {
                Helper::changeKey();
                $this->createUser($request);
            }

            return redirect()->back()->with('signup_success', 'Đăng ký thành công');;;
        }

        return redirect(route('signup'))->with('user_already_exist', 'Email đã tồn tại!');;
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

        return redirect(route('login'))->with('user_not_found', 'Tài khoản không tồn tại, vui lòng đăng ký!');
    }

    public function logoutUser(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }

    public function loginGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function loginGoogleUser()
    {
        $userGoogle = Socialite::driver('google')->user();

        $userExist = DB::table('users')
            ->where('social_id', '=', $userGoogle->getId())
            ->first();

        if (!$userExist) {
            $user = DB::table('users')
                ->insertGetId(
                    [
                        'name' => $userGoogle->getName(),
                        'email' => $userGoogle->getEmail(),
                        'password' => Hash::make(Str::random(8)),
                        'social' => User::SOCIALS[2],
                        'social_id' => $userGoogle->getId(),
                    ]
                );

            Auth::loginUsingId($user);
            return redirect(route('index'));
        }

        Auth::loginUsingId($userExist->id);

        return redirect(route('index'));
    }

    public function loginFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function loginFacebookUser()
    {
        $userFB = Socialite::driver('facebook')->user();

        $userExist = DB::table('users')
            ->where('social_id', '=', $userFB->getId())
            ->first();

        if (!$userExist) {
            $user = DB::table('users')
                ->insertGetId(
                    [
                        'name' => $userFB->getName(),
                        'email' => $userFB->getEmail(),
                        'password' => Hash::make(Str::random(8)),
                        'social' => User::SOCIALS[1],
                        'social_id' => $userFB->getId(),
                    ]
                );

            Auth::loginUsingId($user);
            return redirect(route('index'));
        }

        Auth::loginUsingId($userExist->id);

        return redirect(route('index'));
    }
}
