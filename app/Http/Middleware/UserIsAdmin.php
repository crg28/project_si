<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

// Author: Carlos Restrepo
class UserIsAdmin
{
    public function handle(Request $request, Closure $next): Response
    {
        if (auth()->guest() || auth()->user()->getRole() !== 'admin') {
            abort(403, __('messages.unauthorized'));
        }

        return $next($request);
    }
}
