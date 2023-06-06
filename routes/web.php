<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\UserController;
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

/**
 * Normal Login
 */
Route::get('/dang-nhap', [AuthController::class, 'login'])->name('login');
Route::get('/dang-ky', [AuthController::class, 'signup'])->name('signup');
Route::post('/login', [AuthController::class, 'loginUser'])->name('loginUser');
Route::post('/createUser', [AuthController::class, 'createUser'])->name('createUser');
Route::get('/dang-xuat', [AuthController::class, 'logoutUser'])->name('logoutUser');

/**
 * Social Login
 */
Route::get('/auth/gg', [AuthController::class, 'loginGoogle'])->name('loginGoogle');
Route::get('/auth/gg/callback', [AuthController::class, 'loginGoogleUser']);
Route::get('/auth/fb', [AuthController::class, 'loginFacebook'])->name('loginFacebook');
Route::get('/auth/fb/callback', [AuthController::class, 'loginFacebookUser']);

/**
 * 
 */
Route::get('/', [GameController::class, 'index'])->name('index');
Route::get('/game-detail/{id}', [GameController::class, 'detail_game'])->name('detailgame');
Route::get('/policy', function () {
    return view('policy');
})->name('policy');
Route::get('/tos', function () {
    return view('tos');
})->name('tos');

/**
 * User
 */
Route::get('user/infor', [UserController::class, 'inforUser'])->name('inforUser');
Route::post('user/edit', [UserController::class, 'editUser'])->name('editUser');
Route::put('user/changepassword', [UserController::class, 'changePassword'])->name('changePassword');

/**
 * Order
 */
Route::get('cart', [OrderController::class, 'index'])->name('cart');
Route::post('cart/add', [OrderController::class, 'addToCart'])->name('addToCart');