<?php

use Illuminate\Support\Facades\Route;


// Login routes
Auth::routes();

// Home route
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home.index');

// Instruments routes
Route::get('/instruments', [App\Http\Controllers\InstrumentController::class, 'index'])->name('instrument.index');
Route::get('/instruments/top-selling', [App\Http\Controllers\InstrumentController::class, 'topSelling'])->name('instrument.topSelling');
Route::get('/instruments/{id}', [App\Http\Controllers\InstrumentController::class, 'show'])->name('instrument.show');

// User Routes
Route::get('/user/detail/{id}', [App\Http\Controllers\UserController::class, 'detail'])->name('user.detail');

