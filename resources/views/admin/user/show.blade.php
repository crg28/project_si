@extends('layouts.admin')

@section('content')
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>{{ $user->getName() }}</h1>
        <a href="{{ route('admin.user.index') }}" class="btn btn-secondary">
            {{ __('messages.back') }}
        </a>
    </div>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <div class="admin-card p-4">
        <p><strong>{{ __('messages.email') }}:</strong> {{ $user->getEmail() }}</p>
        <p><strong>{{ __('messages.phone') }}:</strong> {{ $user->getPhone() }}</p>
        <p><strong>{{ __('messages.address') }}:</strong> {{ $user->getAddress() }}</p>
        <p><strong>{{ __('messages.role') }}:</strong> {{ $user->getRole() === 'admin' ? __('messages.role_admin') : __('messages.role_user') }}</p>

        <div class="mt-4">
            <a href="{{ route('admin.user.edit', $user->getId()) }}" class="btn btn-outline-secondary">
                {{ __('messages.edit') }}
            </a>

            <form method="POST" action="{{ route('admin.user.destroy', $user->getId()) }}" class="d-inline" onsubmit="return confirm('{{ __('messages.confirm_delete') }}');">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-outline-danger">
                    {{ __('messages.delete') }}
                </button>
            </form>
        </div>
    </div>
@endsection