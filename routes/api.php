<?php

use App\Http\Controllers\Api\InstrumentApiController;
use Illuminate\Support\Facades\Route;

// Author: Santiago Arellano

// Instrument API routes
Route::get('/instruments', [InstrumentApiController::class, 'index'])->name('api.instrument.index');
