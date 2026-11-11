@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ __('messages.partner_products') }}</h1>

    @if ($serviceUnavailable)
        <div class="alert alert-warning">{{ __('messages.partner_service_unavailable') }}</div>
    @endif

    <div class="row">
        @forelse ($products as $product)
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    @if ($product->getImage())
                        <img src="{{ $product->getImage() }}" class="card-img-top" alt="{{ $product->getName() }}" style="height: 200px; object-fit: cover;">
                    @endif
                    <div class="card-body">
                        <h5 class="card-title">{{ $product->getName() }}</h5>
                        <p class="card-text">{{ __('messages.brand') }}: {{ $product->getBrand() }}</p>
                        <p class="card-text">{{ __('messages.category') }}: {{ $product->getCategory() }}</p>
                        <p class="card-text">{{ __('messages.stock') }}: {{ $product->getStock() }}</p>
                        <p class="card-text"><strong>${{ number_format($product->getPrice(), 2) }}</strong></p>
                        @if ($product->getUrl())
                            <a href="{{ $product->getUrl() }}" target="_blank" rel="noopener noreferrer" class="btn btn-outline-primary">
                                {{ __('messages.view_on_partner_site') }}
                            </a>
                        @endif
                    </div>
                </div>
            </div>
        @empty
            @unless ($serviceUnavailable)
                <p>{{ __('messages.no_results') }}</p>
            @endunless
        @endforelse
    </div>
</div>
@endsection
