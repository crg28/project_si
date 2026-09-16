@extends('layouts.app')

@section('content')
<div class="container text-center py-5">
    <h1 class="display-4 fw-bold mb-4">{{ __('messages.welcome') }}</h1>

    <img src="{{ asset('images/logoBig.jpg') }}" alt="{{ config('app.name', '440') }}" class="img-fluid mb-4" style="max-width: 300px;">

    <p class="lead">{{ __('messages.store_description') }}</p>

    <p class="text-muted">{{ __('messages.check_instruments_tab') }}</p>

    <hr class="my-5">

    <p class="text-muted small">{{ __('messages.developed_by') }} Carlos Restrepo, Santiago Arellano, Juan Cortes</p>
</div>
@endsection