@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('messages.add_payment') }}</div>
                <div class="card-body">
                    <form method="POST" action="{{ route('payment.store') }}">
                        @csrf

                        <div class="mb-3">
                            <label for="cardNumber" class="form-label">{{ __('messages.card_number') }}</label>
                            <input type="text" name="cardNumber" id="cardNumber" class="form-control @error('cardNumber') is-invalid @enderror" value="{{ old('cardNumber') }}" required>
                            @error('cardNumber')
                                <span class="invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="cardExpiration" class="form-label">{{ __('messages.card_expiration') }}</label>
                            <input type="date" name="cardExpiration" id="cardExpiration" class="form-control @error('cardExpiration') is-invalid @enderror" value="{{ old('cardExpiration') }}" required>
                            @error('cardExpiration')
                                <span class="invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="cvv" class="form-label">{{ __('messages.cvv') }}</label>
                            <input type="text" name="cvv" id="cvv" class="form-control @error('cvv') is-invalid @enderror" value="{{ old('cvv') }}" required>
                            @error('cvv')
                                <span class="invalid-feedback">{{ $message }}</span>
                            @enderror
                        </div>

                        <button type="submit" class="btn btn-primary">{{ __('messages.save') }}</button>
                        <a href="{{ route('user.detail', auth()->id()) }}" class="btn btn-secondary">{{ __('messages.cancel') }}</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection