@extends('layouts.app')

@section('content')
    <div class="container">
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item">
                    <a href="{{ route('instrument.index') }}">{{ __('messages.instruments') }}</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">{{ $instrument->getName() }}</li>
            </ol>
        </nav>

        @if (session('error'))
            <div class="alert alert-danger">{{ session('error') }}</div>
        @endif

        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        <div class="row g-4">
            {{-- Columna izquierda: imagen y video --}}
            <div class="col-lg-7">
                <img src="{{ asset('storage/' . $instrument->getImagePath()) }}" alt="{{ $instrument->getName() }}"
                    class="img-fluid rounded shadow-sm w-100 mb-4" style="aspect-ratio: 4 / 3; object-fit: cover;">

                @if ($instrument->youtube_embed_url)
                    <iframe src="{{ $instrument->youtube_embed_url }}" title="Demostración de {{ $instrument->getName() }}" style="aspect-ratio: 4 / 3; object-fit: cover;"
                        loading="lazy" allow="encrypted-media; picture-in-picture" allowfullscreen>
                    </iframe>
                @endif
            </div>

            {{-- Right column: information and purchase --}}
            <div class="col-lg-5">
                <span class="badge text-bg-secondary mb-2">{{ $instrument->getCategory() }}</span>
                <h1 class="h2 fw-bold mb-1">{{ $instrument->getName() }}</h1>
                <p class="text-muted mb-3">{{ __('messages.model') }}: {{ $instrument->getModel() }}</p>

                <p class="display-6 fw-semibold mb-2">${{ number_format($instrument->getPrice(), 2) }}</p>
                <p class="text-muted mb-4">{{ __('messages.stock') }}: {{ $instrument->getStock() }}</p>

                <form method="POST" action="{{ route('cart.add', $instrument->getId()) }}">
                    @csrf
                    <label for="quantity" class="form-label">{{ __('messages.quantity') }}</label>
                    <div class="d-flex gap-2">
                        <input type="number" name="quantity" id="quantity" value="1" min="1" class="form-control"
                            style="max-width: 110px;">
                        <button type="submit" class="btn btn-primary btn-lg flex-grow-1">
                            {{ __('messages.add_to_cart') }}
                        </button>
                    </div>
                </form>

                <a href="{{ route('instrument.index') }}" class="btn btn-outline-secondary mt-3">
                    {{ __('messages.back') }}
                </a>
            </div>
        </div>

        <hr class="my-4">

        <h3>{{ __('messages.reviews') }}</h3>

        <div class="card my-3">
            <div class="card-body">
                <h5 class="card-title mb-3">{{ __('messages.add_review') }}</h5>

                <form method="POST" action="{{ route('review.store', $instrument->getId()) }}">
                    @csrf

                    <div class="mb-3">
                        <label for="content" class="form-label">{{ __('messages.review_content') }}</label>
                        <textarea name="content" id="content" rows="3"
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
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <strong>{{ $review->getUser()->getName() }}</strong>
                        <small class="text-muted">— {{ $review->getCreatedAt() }}</small>
                    </div>

                    @if (auth()->check() && auth()->user()->getId() === $review->getUserId())
                        <div class="d-flex gap-2">
                            <a href="{{ route('review.edit', $review->getId()) }}" class="btn btn-sm btn-outline-secondary">
                                {{ __('messages.edit') }}
                            </a>

                            <form action="{{ route('review.delete', $review->getId()) }}" method="POST"
                                onsubmit="return confirm('{{ __('messages.confirm_delete_review') }}')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-outline-danger">
                                    {{ __('messages.delete') }}
                                </button>
                            </form>
                        </div>
                    @endif
                </div>

                <p class="mb-0 mt-1">{{ $review->getContent() }}</p>
            </div>
        @empty
            <p>{{ __('messages.no_reviews') }}</p>
        @endforelse
    </div>
@endsection