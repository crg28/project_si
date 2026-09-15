<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Instrument;
use App\Models\Order;
use App\Models\Review;
use App\Models\User;
use Illuminate\View\View;

// Author: Carlos Restrepo
class AdminDashboardController extends Controller
{
    public function index(): View
    {
        $viewData = [];
        $viewData['totalInstruments'] = Instrument::count();
        $viewData['totalUsers'] = User::count();
        $viewData['totalOrders'] = Order::count();
        $viewData['totalReviews'] = Review::count();

        return view('admin.dashboard.index', $viewData);
    }
}
