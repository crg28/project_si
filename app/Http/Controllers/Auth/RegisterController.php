<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\RegisterRequest;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\View\View;

// Author: Carlos Restrepo
class RegisterController extends Controller
{
    use RegistersUsers;

    protected $redirectTo = '/';

    public function __construct()
    {
        $this->middleware('guest');
    }

    public function showRegistrationForm(): View
    {
        $viewData = [];

        return view('auth.register', $viewData);
    }

    public function register(RegisterRequest $request): RedirectResponse
    {
        $validated = $request->validated();

        $user = new User();
        $user->setName($validated['name']);
        $user->setEmail($validated['email']);
        $user->setPassword(Hash::make($validated['password']));
        $user->setPhone($validated['phone']);
        $user->setAddress($validated['address']);
        $user->setRole('user');
        $user->save();

        $this->guard()->login($user);

        return redirect($this->redirectTo);
    }
}
