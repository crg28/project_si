@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('messages.edit_review') }}</div>

                <div class="card-body">
                    <form action="{{ route('review.update', $review->getId()) }}" method="POST">
                        @csrf
                        @method('PUT')

                        <div class="mb-3">
                            <label for="content" class="form-label">{{ __('messages.review_content') }}</label>
                            <textarea 
                                name="content" 
                                id="content" 
                                rows="4" 
                                class="form-control @error('content') is-invalid @enderror" 
                                required>{{ old('content', $review->getContent()) }}</textarea>

                            @error('content')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="{{ route('instrument.show', $review->getInstrumentId()) }}" class="btn btn-secondary">
                                {{ __('messages.cancel') }}
                            </a>
                            <button type="submit" class="btn btn-primary">
                                {{ __('messages.update_review') }}
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection