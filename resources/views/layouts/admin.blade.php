<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', '440') }} - {{ __('messages.admin_panel') }}</title>

    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito:400,600,700" rel="stylesheet">

    @vite(['resources/sass/app.scss', 'resources/js/app.js'])

        <style>
        body {
            background-color: #f1f5f9;
            font-family: 'Nunito', sans-serif;
        }

        .admin-wrapper {
            min-height: 100vh;
        }

        .admin-sidebar {
            background-color: #6b7280;
            min-height: 100vh;
            width: 260px;
            flex-shrink: 0;
        }

        .admin-sidebar .brand,
        .admin-sidebar .brand:hover,
        .admin-sidebar .brand:focus {
            color: #ffffff;
            font-weight: 700;
            font-size: 1.35rem;
            padding: 1.75rem 1.75rem 2rem 1.75rem;
            display: flex;
            align-items: center;
            letter-spacing: 0.5px;
            text-decoration: none;
        }

        .admin-sidebar .brand img {
            border-radius: 0.375rem;
            margin-right: 0.65rem;
        }

        .admin-sidebar .nav-section-title {
            color: #f3f4f6;
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            padding: 0 1.75rem;
            margin-bottom: 0.5rem;
        }

        .admin-sidebar .nav-link,
        .admin-sidebar .nav-link:hover,
        .admin-sidebar .nav-link:focus {
            color: #f9fafb;
            padding: 0.65rem 1.75rem;
            font-size: 0.95rem;
            border-left: 3px solid transparent;
            transition: all 0.15s ease;
            text-decoration: none;
        }

        .admin-sidebar .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.15);
        }

        .admin-sidebar .nav-link.active {
            background-color: rgba(66, 153, 225, 0.25);
            border-left: 3px solid #4299e1;
            font-weight: 600;
        }

        .admin-topbar {
            background-color: #ffffff;
            border-bottom: 1px solid #e5e7eb;
            padding: 1.1rem 2rem;
        }

        .admin-topbar .page-title {
            font-weight: 700;
            color: #111827;
            font-size: 1.1rem;
            text-decoration: none;
        }

        .admin-content {
            padding: 2rem;
        }

        .admin-content h1 {
            font-weight: 700;
            font-size: 1.6rem;
            color: #111827;
        }

        .admin-card {
            background-color: #ffffff;
            border-radius: 0.75rem;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04), 0 1px 3px rgba(0, 0, 0, 0.06);
            border: 1px solid #f1f5f9;
        }

        .admin-stat-card h2 {
            font-weight: 700;
            font-size: 2rem;
            color: #111827;
            margin-bottom: 0.25rem;
        }

        .admin-stat-card p {
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .admin-content .table {
            font-size: 0.95rem;
        }

        .admin-content .table thead th {
            font-size: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            color: #6b7280;
            border-bottom: 2px solid #f1f5f9;
            font-weight: 700;
        }

        .admin-content .table td {
            vertical-align: middle;
        }

        .btn-primary {
            background-color: #4299e1;
            border-color: #4299e1;
        }

        .btn-primary:hover {
            background-color: #3182ce;
            border-color: #3182ce;
        }
    </style>
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