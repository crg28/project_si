@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ __('messages.instruments') }}</h1>

    <form method="GET" action="{{ route('instrument.index') }}" class="row g-3 mb-4">
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
            <button type="submit" class="btn btn-primary w-100">{{ __('messages.search') }}</button>
        </div>
    </form>

    <div class="row">
        @forelse ($instruments as $instrument)
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">{{ $instrument->getName() }}</h5>
                        <p class="card-text">{{ $instrument->getCategory() }}</p>
                        <p class="card-text"><strong>${{ number_format($instrument->getPrice(), 2) }}</strong></p>
                        <a href="{{ route('instrument.show', $instrument->getId()) }}" class="btn btn-outline-primary">
                            {{ __('messages.view_details') }}
                        </a>
                    </div>
                </div>
            </div>
        @empty
            <p>{{ __('messages.no_results') }}</p>
        @endforelse
    </div>
</div>
@endsection
