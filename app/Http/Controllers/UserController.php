<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\View\View;


// Author: Juan Cortes
class UserController extends Controller
{
    public function detail(string $id): View
    {
        $user = User::findOrFail($id);

        $viewData = [];
        $viewData['user'] = $user;

        return view('user.detail')->with('viewData', $viewData);
    }
}
