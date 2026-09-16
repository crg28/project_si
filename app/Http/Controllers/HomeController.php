<?php

namespace App\Http\Controllers;

use Illuminate\View\View;

// Author: Carlos Restrepo
class HomeController extends Controller
{
    public function index(): View
    {
        $viewData = [];

        return view('home.index', $viewData);
    }
}
