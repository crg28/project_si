@extends('layouts.admin')

@section('content')
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h1>{{ $instrument->getName() }}</h1>
        <a href="{{ route('admin.instrument.index') }}" class="btn btn-secondary">
            {{ __('messages.back') }}
        </a>
    </div>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <div class="admin-card p-4">
        <div class="row">
            <div class="col-md-3">
                <img src="{{ asset('storage/' . $instrument->getImagePath()) }}" alt="{{ $instrument->getName() }}" class="img-fluid rounded">
            </div>

            <div class="col-md-9">
                <p><strong>{{ __('messages.category') }}:</strong> {{ $instrument->getCategory() }}</p>
                <p><strong>{{ __('messages.model') }}:</strong> {{ $instrument->getModel() }}</p>
                <p><strong>{{ __('messages.price') }}:</strong> ${{ number_format($instrument->getPrice(), 2) }}</p>
                <p><strong>{{ __('messages.stock') }}:</strong> {{ $instrument->getStock() }}</p>

                <div class="mt-4">
                    <a href="{{ route('admin.instrument.edit', $instrument->getId()) }}" class="btn btn-outline-secondary">
                        {{ __('messages.edit') }}
                    </a>

                    <form method="POST" action="{{ route('admin.instrument.destroy', $instrument->getId()) }}" class="d-inline" onsubmit="return confirm('{{ __('messages.confirm_delete') }}');">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-outline-danger">
                            {{ __('messages.delete') }}
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection