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

    <div class="card my-3">
        <div class="card-body">
            <h5 class="card-title mb-3">{{ __('messages.add_review') }}</h5>
            
            <form method="POST" action="{{ route('review.store', $instrument->getId()) }}">
                @csrf
                
                <input type="hidden" name="instrument_id" value="{{ $instrument->getId() }}">
                <div class="mb-3">
                    <label for="content" class="form-label">{{ __('messages.review_content') }}</label>
                    <textarea 
                        name="content" 
                        id="content" 
                        rows="3" 
                        class="form-control @error('content') is-invalid @enderror" 
                        placeholder="{{ __('messages.write_review_placeholder') }}" 
                        required>{{ old('content') }}</textarea>
                    
                    @error('content')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <button type="submit" class="btn btn-primary">
                    {{ __('messages.submit_review') }}
                </button>
            </form>
        </div>
    </div>

    @forelse ($reviews as $review)
        <div class="border-bottom py-3">
            <strong>{{ $review->getUser()->getName() }}</strong>
            <small class="text-muted">— {{ $review->getCreatedAt() }}</small>
            <p class="mb-0">{{ $review->getContent() }}</p>
        </div>
    @empty
        <p>{{ __('messages.no_reviews') }}</p>
    @endforelse
</div>
@endsection