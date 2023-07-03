<?php

use App\Common\Helper;
use App\Common\Constant;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\GameController as AdminGameController;
use App\Http\Controllers\Admin\GenreController as AdminGenreController;
use App\Http\Controllers\Admin\OrderController as AdminOrderController;
use App\Http\Controllers\Admin\PublisherController as AdminPublicController;
use Illuminate\Support\Str;
use App\Http\Middleware\AuthStore;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\TestController;


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
 * Common Page
 */
Route::get('/', [GameController::class, 'index'])->name('index');
Route::get('/game-detail/{id}', [GameController::class, 'detail_game'])->name('detailgame');
Route::get('/tim-kiem', [GameController::class, 'search'])->name('searchPage');
Route::get('/policy', function () {
    return view('policy');
})->name('policy');
Route::get('/tos', function () {
    return view('tos');
})->name('tos');
Route::get('/tos', function () {
    return view('tos');
})->name('tos');

/**
 * Normal Authenticate
 */

Route::get('/dang-nhap', [AuthController::class, 'login'])->name('login');
Route::get('/dang-ky', [AuthController::class, 'signup'])->name('signup');
Route::post('/login', [AuthController::class, 'loginUser'])->name('loginUser');
Route::post('/createUser', [AuthController::class, 'createUser'])->name('createUser');
Route::get('/dang-xuat', [AuthController::class, 'logoutUser'])->name('logoutUser');
Route::get('/auth/verify', [AuthController::class, 'verifyAccount'])->name('verify');
Route::get('/verify', [AuthController::class, 'verifyAccount'])->name('verifyResult');
Route::get('forgot-password', [AuthController::class, 'forgotPassword'])->name('forgotPassword');
Route::post('/forgot-password/send', [AuthController::class, 'sendResetPasswordMail'])->name('reset-send');
Route::get('/resetPassword', [AuthController::class, 'resetPasswordForm'])->name('resetForm');
Route::put('/auth/resetPassword', [AuthController::class, 'resetPassword'])->name('resetPassword');

/**
 * Social Authenticate
 */
Route::get('/auth/gg', [AuthController::class, 'loginGoogle'])->name('loginGoogle');
Route::get('/auth/gg/callback', [AuthController::class, 'loginGoogleUser']);
Route::get('/auth/fb', [AuthController::class, 'loginFacebook'])->name('loginFacebook');
Route::get('/auth/fb/callback', [AuthController::class, 'loginFacebookUser']);


/**
 * Order
 */
Route::get('cart', [OrderController::class, 'index'])->name('cart');

// Only when login, these routes can be access
Route::middleware(['auth:sanctum', AuthStore::class])->group(function () {
    /**
     * Order
     */
    Route::delete('cart/remove', [OrderController::class, 'removeItemFromCart'])->name('removeItem');
    Route::put('cart/update', [OrderController::class, 'updateCart'])->name('updateCart');
    Route::post('cart/add', [OrderController::class, 'addToCart'])->name('addToCart');
    Route::post('cart/buyNow', [OrderController::class, 'buyNow'])->name('buyNow');
    Route::post('checkout/payMomo', [OrderController::class, 'payMomo'])->name('checkoutMomo');
    Route::post('checkout/payVnpay', [OrderController::class, 'payVnpay'])->name('checkoutVnpay');
    Route::get('checkout/successVnpay', [OrderController::class, 'vnpayCheckoutSuccess'])->name('vnpayCheckoutSuccess');
    Route::get('checkout/successMomo', [OrderController::class, 'momoCheckoutSuccess'])->name('momoCheckoutSuccess');

    /**
     * User
     */
    Route::get('user/infor', [UserController::class, 'inforUser'])->name('inforUser');
    Route::post('user/edit', [UserController::class, 'editUser'])->name('editUser');
    Route::put('user/changepassword', [UserController::class, 'changePassword'])->name('changePassword');
});

Route::get('/assignform', [TestController::class, 'form'])->name('genreAssign');
Route::post('/assign', [TestController::class, 'assignGen'])->name('assignGen');
Route::post('/addGen', [TestController::class, 'addGen'])->name('addGen');

//========================= ADMIN =========================//

Route::prefix('admin')->group(function () {
    Route::get('', [DashboardController::class, 'Index']);
    Route::get('/dashboard', [DashboardController::class, 'Index'])->name('admindashboard');

    Route::prefix('game')->group(function () {
        Route::get('', [AdminGameController::class, 'index'])->name('admingame');
        Route::get('/add', [AdminGameController::class, 'add'])->name('addgame');
        Route::post('/store', [AdminGameController::class, 'store'])->name('storegame');
        Route::get('/edit/{id}', [AdminGameController::class, 'edit'])->name('editgame');
        // "Post" method because Laravel can't handle update image with "Put" method
        Route::post('/update/{id}', [AdminGameController::class, 'update'])->name('updategame');
        Route::delete('/delete/{id}', [AdminGameController::class, 'delete'])->name('deletegame');
    });

    Route::prefix('genre')->group(function () {
        Route::get('', [AdminGenreController::class, 'index'])->name('admingenre');
        Route::get('/add', [AdminGenreController::class, 'create'])->name('addgenre');
        Route::post('/store', [AdminGenreController::class, 'store'])->name('storegenre');
        Route::get('/edit/{id}', [AdminGenreController::class, 'edit'])->name('editgenre');
        Route::put('/update/{id}', [AdminGenreController::class, 'update'])->name('updategenre');
        Route::delete('/delete/{id}', [AdminGenreController::class, 'delete'])->name('deletegenre');
    });

    Route::prefix('publisher')->group(function () {
        Route::get('', [AdminPublicController::class, 'index'])->name('adminpublisher');
        Route::get('/add', [AdminPublicController::class, 'create'])->name('addpublisher');
        Route::post('/store', [AdminPublicController::class, 'store'])->name('storepublisher');
        Route::get('/edit/{id}', [AdminPublicController::class, 'edit'])->name('editpublisher');
        Route::put('/update/{id}', [AdminPublicController::class, 'update'])->name('updatepublisher');
        Route::delete('/delete/{id}', [AdminPublicController::class, 'delete'])->name('deletepublisher');
    });
    Route::prefix('order')->group(function () {
        Route::get('', [AdminOrderController::class, 'index'])->name('adminorder');
        Route::get('/detail', [AdminOrderController::class, 'detail'])->name('adminorderdetail');
        Route::delete('/delete/{id}', [AdminOrderController::class, 'delete'])->name('deleteorder');
    });
});