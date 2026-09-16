@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ __('messages.cart') }}</h1>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

    @forelse ($items as $item)
        <div class="row align-items-center border-bottom py-3">
            <div class="col-md-6">
                <h5>{{ $item['instrument']->getName() }}</h5>
            </div>
            <div class="col-md-2">
                {{ __('messages.quantity') }}: {{ $item['quantity'] }}
            </div>
            <div class="col-md-2">
                ${{ number_format($item['subtotal'], 2) }}
            </div>
            <div class="col-md-2">
                <form method="POST" action="{{ route('cart.remove', $item['instrument']->getId()) }}">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-sm btn-outline-danger">{{ __('messages.remove') }}</button>
                </form>
            </div>
        </div>
    @empty
        <p>{{ __('messages.cart_empty') }}</p>
    @endforelse

    @if (count($items) > 0)
        <div class="text-end mt-3">
            <h4>{{ __('messages.total') }}: ${{ number_format($total, 2) }}</h4>
        </div>

        @auth
            @if ($payments->isEmpty())
                <div class="alert alert-warning mt-3">
                    {{ __('messages.no_payments_prompt') }}
                    <a href="{{ route('payment.create') }}">{{ __('messages.add_payment') }}</a>
                </div>
            @else
                <form method="POST" action="{{ route('cart.checkout') }}" class="row g-3 mt-3">
                    @csrf

                    <div class="col-md-8">
                        <select name="payment_id" class="form-control" required>
                            <option value="">{{ __('messages.select_payment') }}</option>
                            @foreach ($payments as $payment)
                                <option value="{{ $payment->getId() }}">
                                    {{ __('messages.card_ending_in') }} {{ substr($payment->getCardNumber(), -4) }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-primary w-100">{{ __('messages.checkout') }}</button>
                    </div>
                </form>
            @endif
        @else
            <div class="alert alert-info mt-3">
                {{ __('messages.login_to_checkout') }}
                <a href="{{ route('login') }}">{{ __('messages.login') }}</a>
            </div>
        @endauth
    @endif
</div>
@endsection
