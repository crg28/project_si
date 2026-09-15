<?php

use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminInstrumentController;
use App\Http\Controllers\Admin\AdminUserController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InstrumentController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Authors: Juan Cortes & Carlos Restrepo
// Authentication routes
Auth::routes();

// Home route
Route::get('/', [HomeController::class, 'index'])->name('home.index');

// Instrument routes
Route::get('/instruments', [InstrumentController::class, 'index'])->name('instrument.index');
Route::get('/instruments/top-selling', [InstrumentController::class, 'topSelling'])->name('instrument.topSelling');
Route::get('/instruments/most-reviewed', [InstrumentController::class, 'mostReviewed'])->name('instrument.mostReviewed');
Route::get('/instruments/{id}', [InstrumentController::class, 'show'])->name('instrument.show');

// Cart routes
Route::get('/cart', [CartController::class, 'index'])->name('cart.index');
Route::post('/cart/add/{id}', [CartController::class, 'add'])->name('cart.add');
Route::delete('/cart/remove/{id}', [CartController::class, 'remove'])->name('cart.remove');
Route::post('/cart/checkout', [CartController::class, 'checkout'])->middleware('auth')->name('cart.checkout');

// User routes
Route::middleware('auth')->group(function () {

    // User detail route
    Route::get('/user/detail', [UserController::class, 'detail'])->name('user.detail');

    // Payment routes
    Route::get('/payments/create', [PaymentController::class, 'create'])->name('payment.create');
    Route::post('/payments', [PaymentController::class, 'store'])->name('payment.store');
    Route::delete('/payments/{id}', [PaymentController::class, 'destroy'])->name('payment.destroy');

    // Order routes
    Route::get('/orders/{id}', [OrderController::class, 'show'])->name('order.show');
    Route::get('/orders/{id}/pdf', [OrderController::class, 'downloadPdf'])->name('order.downloadPdf');
});

// Admin routes
Route::middleware(['auth', 'admin'])->prefix('admin')->name('admin.')->group(function ()
{
    // Dashboard routes
    Route::get('/', [AdminDashboardController::class, 'index'])->name('dashboard');

    // Dashboard routes
    Route::get('/', [AdminDashboardController::class, 'index'])->name('dashboard');

    // Instrument CRUD routes
    Route::get('/instruments', [AdminInstrumentController::class, 'index'])->name('instrument.index');
    Route::get('/instruments/create', [AdminInstrumentController::class, 'create'])->name('instrument.create');
    Route::post('/instruments', [AdminInstrumentController::class, 'store'])->name('instrument.store');
    Route::get('/instruments/{id}', [AdminInstrumentController::class, 'show'])->name('instrument.show');
    Route::get('/instruments/{id}/edit', [AdminInstrumentController::class, 'edit'])->name('instrument.edit');
    Route::put('/instruments/{id}', [AdminInstrumentController::class, 'update'])->name('instrument.update');
    Route::delete('/instruments/{id}', [AdminInstrumentController::class, 'destroy'])->name('instrument.destroy');

    // User CRUD routes
    Route::get('/users', [AdminUserController::class, 'index'])->name('user.index');
    Route::get('/users/create', [AdminUserController::class, 'create'])->name('user.create');
    Route::post('/users', [AdminUserController::class, 'store'])->name('user.store');
    Route::get('/users/{id}', [AdminUserController::class, 'show'])->name('user.show');
    Route::get('/users/{id}/edit', [AdminUserController::class, 'edit'])->name('user.edit');
    Route::put('/users/{id}', [AdminUserController::class, 'update'])->name('user.update');
    Route::delete('/users/{id}', [AdminUserController::class, 'destroy'])->name('user.destroy');
});
