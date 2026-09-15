<?php

namespace App\Http\Controllers;

use App\Models\Payment;
use App\Models\User;
use Illuminate\View\View;

// Author: Juan Cortes & Carlos Restrepo
class UserController extends Controller
{
    public function detail(string $id): View
    {
        $user = User::findOrFail($id);

        $payments = Payment::where('user_id', $user->getId())
            ->whereNull('order_id')
            ->get();

        $viewData = [];
        $viewData['user'] = $user;
        $viewData['payments'] = $payments;

        return view('user.detail', $viewData);
    }
}