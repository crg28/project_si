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