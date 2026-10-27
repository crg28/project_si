<?php

namespace App\Http\Controllers;

use Illuminate\View\View;

// Author: Juan Cortes & Carlos Restrepo
class UserController extends Controller
{
    public function detail(): View
    {
        $user = auth()->user();

        $payments = $user->payments()
            ->whereNull('order_id')
            ->get();

        $viewData = [];
        $viewData['user'] = $user;
        $viewData['payments'] = $payments;

        return view('user.detail', $viewData);
    }
}
