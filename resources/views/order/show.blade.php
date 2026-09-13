@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ __('messages.order') }} #{{ $order->getId() }}</h1>
    <p>{{ __('messages.order_date') }}: {{ $order->getDate() }}</p>

    <table class="table">
        <thead>
            <tr>
                <th>{{ __('messages.instrument') }}</th>
                <th>{{ __('messages.quantity') }}</th>
                <th>{{ __('messages.price') }}</th>
                <th>{{ __('messages.subtotal') }}</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($items as $item)
                <tr>
                    <td>{{ $item->instrument->getName() }}</td>
                    <td>{{ $item->getQuantity() }}</td>
                    <td>${{ number_format($item->getPrice(), 2) }}</td>
                    <td>${{ number_format($item->calculateSubtotal(), 2) }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h4>{{ __('messages.order_total') }}: ${{ number_format($order->getTotal(), 2) }}</h4>

    <a href="{{ route('order.downloadPdf', $order->getId()) }}" class="btn btn-outline-primary">
        {{ __('messages.download_invoice') }}
    </a>

    <a href="{{ route('instrument.index') }}" class="btn btn-secondary">
        {{ __('messages.back') }}
    </a>
</div>
@endsection