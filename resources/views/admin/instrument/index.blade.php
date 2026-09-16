@extends('layouts.admin')

@section('content')
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>{{ __('messages.instruments') }}</h1>
        <a href="{{ route('admin.instrument.create') }}" class="btn btn-primary">
            {{ __('messages.create') }}
        </a>
    </div>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <div class="admin-card p-3 mb-3">
        <form method="GET" action="{{ route('admin.instrument.index') }}" class="row g-3">
            <div class="col-md-5">
                <input type="text" name="name" class="form-control" placeholder="{{ __('messages.search') }}" value="{{ $selectedName }}">
            </div>

            <div class="col-md-4">
                <select name="category" class="form-control">
                    <option value="">{{ __('messages.category') }}</option>
                    @foreach ($categories as $category)
                        <option value="{{ $category }}" {{ $selectedCategory === $category ? 'selected' : '' }}>
                            {{ $category }}
                        </option>
                    @endforeach
                </select>
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
                    <th></th>
                    <th>{{ __('messages.name') }}</th>
                    <th>{{ __('messages.category') }}</th>
                    <th>{{ __('messages.price') }}</th>
                    <th>{{ __('messages.stock') }}</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @forelse ($instruments as $instrument)
                    <tr>
                        <td style="width: 60px;">
                            <img src="{{ asset('storage/' . $instrument->getImagePath()) }}" alt="{{ $instrument->getName() }}" style="width: 48px; height: 48px; object-fit: cover; border-radius: 0.375rem;">
                        </td>
                        <td>
                            <a href="{{ route('admin.instrument.show', $instrument->getId()) }}" class="text-decoration-none text-dark fw-semibold">
                                {{ $instrument->getName() }}
                            </a>
                        </td>
                        <td>{{ $instrument->getCategory() }}</td>
                        <td>${{ number_format($instrument->getPrice(), 2) }}</td>
                        <td>{{ $instrument->getStock() }}</td>
                        <td class="text-end">
                            <a href="{{ route('admin.instrument.show', $instrument->getId()) }}" class="btn btn-sm btn-outline-primary">
                                {{ __('messages.view_details') }}
                            </a>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="6" class="text-center text-muted py-4">{{ __('messages.no_results') }}</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
@endsection