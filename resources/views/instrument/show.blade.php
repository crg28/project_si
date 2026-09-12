@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $instrument->getName() }}</h1>
    <p><strong>{{ __('messages.category') }}:</strong> {{ $instrument->getCategory() }}</p>
    <p><strong>{{ __('messages.model') }}:</strong> {{ $instrument->getModel() }}</p>
    <p><strong>{{ __('messages.price') }}:</strong> ${{ number_format($instrument->getPrice(), 2) }}</p>
    <p><strong>{{ __('messages.stock') }}:</strong> {{ $instrument->getStock() }}</p>

    <a href="{{ route('instrument.index') }}" class="btn btn-secondary">{{ __('messages.back') }}</a>
</div>
@endsection