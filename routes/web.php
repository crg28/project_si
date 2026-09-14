<?php

use Illuminate\Support\Facades\Route;

// Authors: Juan Cortes & Carlos Restrepo

// Login routes
Auth::routes();

// Home route
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home.index');

// Instruments routes
Route::get('/instruments', [App\Http\Controllers\InstrumentController::class, 'index'])->name('instrument.index');
Route::get('/instruments/top-selling', [App\Http\Controllers\InstrumentController::class, 'topSelling'])->name('instrument.topSelling');
Route::get('/instruments/most-reviewed', [App\Http\Controllers\InstrumentController::class, 'mostReviewed'])->name('instrument.mostReviewed');
Route::get('/instruments/{id}', [App\Http\Controllers\InstrumentController::class, 'show'])->name('instrument.show');

// User Routes
Route::get('/user/detail/{id}', [App\Http\Controllers\UserController::class, 'detail'])->name('user.detail');

// Payment Routes
Route::middleware('auth')->group(function () {
    Route::get('/payments/create', [App\Http\Controllers\PaymentController::class, 'create'])->name('payment.create');
    Route::post('/payments', [App\Http\Controllers\PaymentController::class, 'store'])->name('payment.store');
    Route::delete('/payments/{id}', [App\Http\Controllers\PaymentController::class, 'destroy'])->name('payment.destroy');
});

// Cart routes
Route::get('/cart', [App\Http\Controllers\CartController::class, 'index'])->name('cart.index');
Route::post('/cart/add/{id}', [App\Http\Controllers\CartController::class, 'add'])->name('cart.add');
Route::delete('/cart/remove/{id}', [App\Http\Controllers\CartController::class, 'remove'])->name('cart.remove');
Route::post('/cart/checkout', [App\Http\Controllers\CartController::class, 'checkout'])->middleware('auth')->name('cart.checkout');

// Order routes
Route::get('/orders/{id}', [App\Http\Controllers\OrderController::class, 'show'])->middleware('auth')->name('order.show');
Route::get('/orders/{id}/pdf', [App\Http\Controllers\OrderController::class, 'downloadPdf'])->middleware('auth')->name('order.downloadPdf');

// Admin routes
Route::middleware(['auth', 'admin'])->prefix('admin')->name('admin.')->group(function () {

    // Dashboard routes
    Route::get('/', [App\Http\Controllers\Admin\AdminDashboardController::class, 'index'])->name('dashboard');

    // Instrument CRUD routes
    Route::get('/instruments', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'index'])->name('instrument.index');
    Route::get('/instruments/create', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'create'])->name('instrument.create');
    Route::post('/instruments', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'store'])->name('instrument.store');
    Route::get('/instruments/{id}', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'show'])->name('instrument.show');
    Route::get('/instruments/{id}/edit', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'edit'])->name('instrument.edit');
    Route::put('/instruments/{id}', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'update'])->name('instrument.update');
    Route::delete('/instruments/{id}', [App\Http\Controllers\Admin\AdminInstrumentController::class, 'destroy'])->name('instrument.destroy');

    // User CRUD routes
    Route::get('/users', [App\Http\Controllers\Admin\AdminUserController::class, 'index'])->name('user.index');
    Route::get('/users/create', [App\Http\Controllers\Admin\AdminUserController::class, 'create'])->name('user.create');
    Route::post('/users', [App\Http\Controllers\Admin\AdminUserController::class, 'store'])->name('user.store');
    Route::get('/users/{id}', [App\Http\Controllers\Admin\AdminUserController::class, 'show'])->name('user.show');
    Route::get('/users/{id}/edit', [App\Http\Controllers\Admin\AdminUserController::class, 'edit'])->name('user.edit');
    Route::put('/users/{id}', [App\Http\Controllers\Admin\AdminUserController::class, 'update'])->name('user.update');
    Route::delete('/users/{id}', [App\Http\Controllers\Admin\AdminUserController::class, 'destroy'])->name('user.destroy');
});
