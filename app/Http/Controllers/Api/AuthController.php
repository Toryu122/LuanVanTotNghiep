<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Common\Helper;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\ApiController;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    const TOKEN_NAME = "API TOKEN";

    /**
     * Create User
     * @param Request $request
     * @return Response
     */
    public function createUser(Request $request): Response
    {
        try {
            $validateUser = Validator::make(
                $request->all(),
                [
                    'name' => 'required',
                    'email' => 'required|email|unique:users,email',
                    'password' => 'required'
                ]
            );

            if ($validateUser->fails()) {
                return Helper::getResponse(null, $validateUser->errors(), 401);
            }

            $user = User::create([
                'name' => $request['name'],
                'email' => $request['email'],
                'password' => Hash::make($request['password'])
            ]);

            return Helper::getResponse([
                'token' => $this->getToken($user, 'guest')
            ]);
        } catch (\Throwable $th) {
            return Helper::getResponse(null, $th->getMessage());
        }
    }

    /**
     * Login The User
     * @param Request $request
     * @return Response
     */
    public function loginUser(Request $request): Response
    {
        try {
            $validateUser = Validator::make(
                $request->all(),
                [
                    'email' => 'required|email',
                    'password' => 'required'
                ]
            );

            if ($validateUser->fails()) {
                return Helper::getResponse(null, $validateUser->errors(), 401);
            }

            if (!Auth::attempt($request->only(['email', 'password']))) {
                return Helper::getResponse(null, 'Credential not correct', 403);
            }

            $user = User::where('email', $request['email'])->first();

            return Helper::getResponse([
                'token' => $this->getToken($user, 'guest')
            ]);
        } catch (\Throwable $th) {
            return Helper::getResponse(null, $th->getMessage());
        }
    }

    /**
     * @param User $user
     * @param string $role
     * @return mixed|string
     */
    private function getToken(User $user, string $role)
    {
        return explode(
            '|',
            $user->createToken(self::TOKEN_NAME, [])->plainTextToken
        )[1];
    }
}
