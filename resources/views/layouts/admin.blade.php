<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', '440') }} - {{ __('messages.admin_panel') }}</title>

    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="resources/css/admin.css" rel="stylesheet">
    

    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body>
    <div class="d-flex admin-wrapper">
        <div class="admin-sidebar">
            <a class="brand" href="{{ route('home.index') }}">
                <img src="{{ asset('images/logoSmall.jpg') }}" alt="{{ config('app.name', '440') }}" width="36" height="36">
                {{ config('app.name', '440') }}
            </a>

            <div class="nav-section-title">{{ __('messages.admin_panel') }}</div>
            <nav class="nav flex-column mb-4">
                <a class="nav-link {{ request()->routeIs('admin.dashboard') ? 'active' : '' }}" href="{{ route('admin.dashboard') }}">
                    {{ __('messages.dashboard') }}
                </a>
                @if (Route::has('admin.instrument.index'))
                    <a class="nav-link {{ request()->routeIs('admin.instrument.*') ? 'active' : '' }}" href="{{ route('admin.instrument.index') }}">
                        {{ __('messages.instruments') }}
                    </a>
                @endif
                @if (Route::has('admin.user.index'))
                    <a class="nav-link {{ request()->routeIs('admin.user.*') ? 'active' : '' }}" href="{{ route('admin.user.index') }}">
                        {{ __('messages.users') }}
                    </a>
                @endif
            </nav>
        </div>

        <div class="flex-grow-1">
            <div class="admin-topbar d-flex justify-content-between align-items-center">
                <span class="page-title">{{ __('messages.admin_panel') }}</span>

                <div class="dropdown">
                    <a class="dropdown-toggle text-dark text-decoration-none" href="#" role="button" data-bs-toggle="dropdown">
                        {{ Auth::user()->getName() }}
                    </a>
                    <div class="dropdown-menu dropdown-menu-end">
                        <a class="dropdown-item" href="{{ route('instrument.index') }}">{{ __('messages.back_to_store') }}</a>
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault(); document.getElementById('admin-logout-form').submit();">
                            {{ __('messages.logout') }}
                        </a>
                        <form id="admin-logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                </div>
            </div>

            <div class="admin-content">
                @yield('content')
            </div>
        </div>
    </div>
</body>
</html>