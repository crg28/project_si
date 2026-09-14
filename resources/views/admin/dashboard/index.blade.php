@extends('layouts.admin')

@section('content')
    <h1>{{ __('messages.dashboard') }}</h1>
    <p class="text-muted">{{ __('messages.welcome_admin') }}, {{ Auth::user()->getName() }}.</p>

    <div class="row mt-4">
        <div class="col-md-3 mb-3">
            <div class="admin-card admin-stat-card p-4 text-center">
                <h2>{{ $totalInstruments }}</h2>
                <p class="text-muted mb-0">{{ __('messages.instruments') }}</p>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="admin-card admin-stat-card p-4 text-center">
                <h2>{{ $totalUsers }}</h2>
                <p class="text-muted mb-0">{{ __('messages.users') }}</p>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="admin-card admin-stat-card p-4 text-center">
                <h2>{{ $totalOrders }}</h2>
                <p class="text-muted mb-0">{{ __('messages.orders') }}</p>
            </div>
        </div>

        <div class="col-md-3 mb-3">
            <div class="admin-card admin-stat-card p-4 text-center">
                <h2>{{ $totalReviews }}</h2>
                <p class="text-muted mb-0">{{ __('messages.reviews') }}</p>
            </div>
        </div>
    </div>

    <p class="text-muted mt-4">{{ __('messages.use_sidebar_hint') }}</p>
@endsection