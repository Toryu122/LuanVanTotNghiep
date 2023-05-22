<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\GameController;
use Laravel\Socialite\Facades\Socialite;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/dang-nhap', [AuthController::class, 'login'])->name('login');
Route::get('/dang-ky', [AuthController::class, 'signup'])->name('signup');
Route::post('/login', [AuthController::class, 'loginUser'])->name('loginUser');
Route::post('/createUser', [AuthController::class, 'createUser'])->name('createUser');
Route::get('/infor', [AuthController::class, 'inforUser'])->name('inforUser');
Route::get('/dang-xuat', [AuthController::class, 'logoutUser'])->name('logoutUser');

Route::get('/', [GameController::class, 'index'])->name('index');
Route::get('/game/fetch_data', [GameController::class, 'fetch_data']);
Route::get('/policy', function () {
    return view('policy');
})->name('policy');
Route::get('/tos', function () {
    return view('tos');
})->name('tos');

Route::get('/fb/chinhsachriengtu', function () {
    return '<h1>Chính sách riêng tư</h1>';
});
 
Route::get('/auth/fb', function () {
    return Socialite::driver('facebook')->redirect();
});

Route::get('/auth/fb/callback', function () {
    $user = Socialite::driver('facebook')->user();
    dd($user);
});

Route::get('/auth/gg', function () {
    return Socialite::driver('google')->redirect();
});

Route::get('/auth/gg/callback', function () {
    $user = Socialite::driver('google')->user();
    dd($user);
});