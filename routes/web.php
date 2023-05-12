<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\GameController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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
Route::get('/dang-xuat', [AuthController::class, 'logoutUser'])->name('logoutUser');

Route::get('/', [GameController::class, 'index'])->name('index');
