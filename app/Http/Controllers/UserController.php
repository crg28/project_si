<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use Illuminate\View\View;

// Author: Juan Cortes & Carlos Restrepo
class UserController extends Controller
{
    public function detail(): View
    {
        $user = auth()->user();

        $payments = Payment::where('user_id', $user->getId())
            ->whereNull('order_id')
            ->get();

        $viewData = [];
        $viewData['user'] = $user;
        $viewData['payments'] = $payments;

        return view('user.detail', $viewData);
    }
}
