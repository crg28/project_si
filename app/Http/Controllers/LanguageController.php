<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;

// Author: Juan Cortes
class LanguageController extends Controller
{
    public function switch(string $locale): RedirectResponse
    {
        if (in_array($locale, ['es', 'en'])) {
            session()->put('locale', $locale);
        }

        return redirect()->back();
    }
}