@extends('layouts.admin')

@section('content')
    <h1>{{ __('messages.create_user') }}</h1>

    <div class="admin-card p-4">
        <form method="POST" action="{{ route('admin.user.store') }}">
            @csrf

            <div class="mb-3">
                <label for="name" class="form-label">{{ __('messages.name') }}</label>
                <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}">
                @error('name') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">{{ __('messages.email') }}</label>
                <input type="email" name="email" id="email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}">
                @error('email') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">{{ __('messages.password') }}</label>
                <input type="password" name="password" id="password" class="form-control @error('password') is-invalid @enderror">
                @error('password') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="password_confirmation" class="form-label">{{ __('messages.confirm_password') }}</label>
                <input type="password" name="password_confirmation" id="password_confirmation" class="form-control">
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">{{ __('messages.phone') }}</label>
                <input type="text" name="phone" id="phone" class="form-control @error('phone') is-invalid @enderror" value="{{ old('phone') }}">
                @error('phone') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">{{ __('messages.address') }}</label>
                <input type="text" name="address" id="address" class="form-control @error('address') is-invalid @enderror" value="{{ old('address') }}">
                @error('address') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="role" class="form-label">{{ __('messages.role') }}</label>
                <select name="role" id="role" class="form-control @error('role') is-invalid @enderror">
                    <option value="user" {{ old('role') === 'user' ? 'selected' : '' }}>{{ __('messages.role_user') }}</option>
                    <option value="admin" {{ old('role') === 'admin' ? 'selected' : '' }}>{{ __('messages.role_admin') }}</option>
                </select>
                @error('role') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <button type="submit" class="btn btn-primary">{{ __('messages.save') }}</button>
            <a href="{{ route('admin.user.index') }}" class="btn btn-secondary">{{ __('messages.cancel') }}</a>
        </form>
    </div>
@endsection