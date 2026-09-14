@extends('layouts.admin')

@section('content')
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>{{ __('messages.users') }}</h1>
        <a href="{{ route('admin.user.create') }}" class="btn btn-primary">
            {{ __('messages.create') }}
        </a>
    </div>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

    <div class="admin-card p-3 mb-3">
        <form method="GET" action="{{ route('admin.user.index') }}" class="row g-3">
            <div class="col-md-9">
                <input type="text" name="email" class="form-control" placeholder="{{ __('messages.search_by_email') }}" value="{{ $selectedEmail }}">
            </div>

            <div class="col-md-3">
                <button type="submit" class="btn btn-outline-secondary w-100">{{ __('messages.search') }}</button>
            </div>
        </form>
    </div>

    <div class="admin-card p-3">
        <table class="table table-hover mb-0">
            <thead>
                <tr>
                    <th>{{ __('messages.name') }}</th>
                    <th>{{ __('messages.email') }}</th>
                    <th>{{ __('messages.role') }}</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @forelse ($users as $user)
                    <tr>
                        <td>
                            <a href="{{ route('admin.user.show', $user->getId()) }}" class="text-decoration-none text-dark fw-semibold">
                                {{ $user->getName() }}
                            </a>
                        </td>
                        <td>{{ $user->getEmail() }}</td>
                        <td>
                            <span class="badge {{ $user->getRole() === 'admin' ? 'bg-primary' : 'bg-secondary' }}">
                                {{ $user->getRole() === 'admin' ? __('messages.role_admin') : __('messages.role_user') }}
                            </span>
                        </td>
                        <td class="text-end">
                            <a href="{{ route('admin.user.show', $user->getId()) }}" class="btn btn-sm btn-outline-primary">
                                {{ __('messages.view_details') }}
                            </a>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4" class="text-center text-muted py-4">{{ __('messages.no_results') }}</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
@endsection