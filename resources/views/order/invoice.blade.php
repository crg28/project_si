<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        body { font-family: sans-serif; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
    </style>
</head>
<body>
    <h1>{{ __('messages.invoice') }}</h1>
    <p><strong>{{ __('messages.order') }}:</strong> #{{ $order->getId() }}</p>
    <p><strong>{{ __('messages.order_date') }}:</strong> {{ $order->getDate() }}</p>

    <table>
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

    <h3 style="text-align: right;">{{ __('messages.total') }}: ${{ number_format($order->getTotal(), 2) }}</h3>
</body>
</html>