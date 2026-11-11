<?php

use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminInstrumentController;
use App\Http\Controllers\Admin\AdminUserController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InstrumentController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PartnerProductController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Authors: Santiago Arellano, Juan Cortes & Carlos Restrepo

// Authentication routes
Auth::routes();

// Home route
Route::get('/', [HomeController::class, 'index'])->name('home.index');

// Instrument routes
Route::get('/instruments', [InstrumentController::class, 'index'])->name('instrument.index');
Route::get('/instruments/top-selling', [InstrumentController::class, 'topSelling'])->name('instrument.topSelling');
Route::get('/instruments/most-reviewed', [InstrumentController::class, 'mostReviewed'])->name('instrument.mostReviewed');
Route::get('/instruments/{id}', [InstrumentController::class, 'show'])->name('instrument.show');

// Partner products route (team 8 service)
Route::get('/partner-products', [PartnerProductController::class, 'index'])->name('partner.products');

// Cart routes
Route::get('/cart', [CartController::class, 'index'])->name('cart.index');
Route::post('/cart/add/{id}', [CartController::class, 'add'])->name('cart.add');
Route::delete('/cart/remove/{id}', [CartController::class, 'remove'])->name('cart.remove');

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
    Route::get('/orders/{id}/report/{format}', [OrderController::class, 'download'])
        ->whereIn('format', ['pdf', 'excel'])
        ->name('order.download');

    // Cart routes
    Route::post('/cart/checkout', [CartController::class, 'checkout'])->name('cart.checkout');

    // Reviews routes
    Route::post('/reviews/{id}', [ReviewController::class, 'store'])->name('review.store');
    Route::get('/reviews/{id}/edit', [ReviewController::class, 'edit'])->name('review.edit');
    Route::put('/reviews/{id}', [ReviewController::class, 'update'])->name('review.update');
    Route::delete('/reviews/{id}', [ReviewController::class, 'delete'])->name('review.delete');
});

// Admin routes
Route::middleware(['auth', 'admin'])->group(function () {
    // Dashboard route
    Route::get('/admin', [AdminDashboardController::class, 'index'])->name('admin.dashboard');

    // Instrument CRUD routes
    Route::get('/admin/instruments', [AdminInstrumentController::class, 'index'])->name('admin.instrument.index');
    Route::get('/admin/instruments/create', [AdminInstrumentController::class, 'create'])->name('admin.instrument.create');
    Route::post('/admin/instruments', [AdminInstrumentController::class, 'store'])->name('admin.instrument.store');
    Route::get('/admin/instruments/{id}', [AdminInstrumentController::class, 'show'])->name('admin.instrument.show');
    Route::get('/admin/instruments/{id}/edit', [AdminInstrumentController::class, 'edit'])->name('admin.instrument.edit');
    Route::put('/admin/instruments/{id}', [AdminInstrumentController::class, 'update'])->name('admin.instrument.update');
    Route::delete('/admin/instruments/{id}', [AdminInstrumentController::class, 'destroy'])->name('admin.instrument.destroy');

    // User CRUD routes
    Route::get('/admin/users', [AdminUserController::class, 'index'])->name('admin.user.index');
    Route::get('/admin/users/create', [AdminUserController::class, 'create'])->name('admin.user.create');
    Route::post('/admin/users', [AdminUserController::class, 'store'])->name('admin.user.store');
    Route::get('/admin/users/{id}', [AdminUserController::class, 'show'])->name('admin.user.show');
    Route::get('/admin/users/{id}/edit', [AdminUserController::class, 'edit'])->name('admin.user.edit');
    Route::put('/admin/users/{id}', [AdminUserController::class, 'update'])->name('admin.user.update');
    Route::delete('/admin/users/{id}', [AdminUserController::class, 'destroy'])->name('admin.user.destroy');
});

// Switch Language
Route::get('/lang/{locale}', [LanguageController::class, 'switch'])->name('lang.switch');
