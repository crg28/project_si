@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ __('messages.top_selling') }}</h1>

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
