@extends('layouts.app')

@section('content')
<div class="container">
    <img src="{{ asset('storage/' . $instrument->getImagePath()) }}" alt="{{ $instrument->getName() }}" class="img-fluid rounded mb-3" style="max-height: 350px; object-fit: cover;">

    <h1>{{ $instrument->getName() }}</h1>

    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <p><strong>{{ __('messages.category') }}:</strong> {{ $instrument->getCategory() }}</p>
    <p><strong>{{ __('messages.model') }}:</strong> {{ $instrument->getModel() }}</p>
    <p><strong>{{ __('messages.price') }}:</strong> ${{ number_format($instrument->getPrice(), 2) }}</p>
    <p><strong>{{ __('messages.stock') }}:</strong> {{ $instrument->getStock() }}</p>

    <form method="POST" action="{{ route('cart.add', $instrument->getId()) }}" class="mt-3">
        @csrf
        <div class="mb-2" style="max-width: 150px;">
            <label for="quantity">{{ __('messages.quantity') }}</label>
            <input type="number" name="quantity" id="quantity" value="1" min="1" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">{{ __('messages.add_to_cart') }}</button>
    </form>

    <a href="{{ route('instrument.index') }}" class="btn btn-secondary mt-2">{{ __('messages.back') }}</a>

    <hr class="my-4">

    <h3>{{ __('messages.reviews') }}</h3>

    @forelse ($reviews as $review)
        <div class="border-bottom py-3">
            <strong>{{ $review->user->getName() }}</strong>
            <small class="text-muted">— {{ $review->getDate() }}</small>
            <p class="mb-0">{{ $review->getContent() }}</p>
        </div>
    @empty
        <p>{{ __('messages.no_reviews') }}</p>
    @endforelse
</div>
@endsection