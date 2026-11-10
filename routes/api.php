<?php

use App\Http\Controllers\Api\InstrumentApiController;
use App\Http\Controllers\Api\UserApiController;
use Illuminate\Support\Facades\Route;

// Author: Santiago Arellano

// Instrument API routes
Route::get('/instruments', [InstrumentApiController::class, 'index'])->name('api.instrument.index');
Route::get('/instruments/top-selling', [InstrumentApiController::class, 'topSelling'])->name('api.instrument.topSelling');

// User API routes
Route::get('/users/most-orders', [UserApiController::class, 'mostOrders'])->name('api.user.mostOrders');
