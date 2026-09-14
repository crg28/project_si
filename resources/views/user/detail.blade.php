@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('messages.userDetail') }}</div>
                <div class="card-body">
                    <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getName() }}" readonly>
                    <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getEmail() }}" readonly>
                    <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getAddress() }}" readonly>
                    <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getPhone() }}" readonly>

                    @if ($viewData['user']->getRole() === 'admin')
                        <a href="{{ route('admin.dashboard') }}" class="btn btn-outline-primary mt-2">
                            {{ __('messages.go_to_admin_panel') }}
                        </a>
                    @endif
                </div>
            </div>

            @if (session('success'))
                <div class="alert alert-success mt-3">{{ session('success') }}</div>
            @endif

            <div class="card mt-4">
                <div class="card-header">{{ __('messages.payments') }}</div>
                <div class="card-body">
                    @forelse ($viewData['payments'] as $payment)
                        <div class="d-flex justify-content-between align-items-center border-bottom py-2">
                            <span>{{ __('messages.card_ending_in') }} {{ substr($payment->getCardNumber(), -4) }}</span>

                            <form method="POST" action="{{ route('payment.destroy', $payment->getId()) }}">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-outline-danger">{{ __('messages.remove') }}</button>
                            </form>
                        </div>
                    @empty
                        <p>{{ __('messages.no_payments') }}</p>
                    @endforelse

                    <a href="{{ route('payment.create') }}" class="btn btn-primary mt-3">
                        {{ __('messages.add_payment') }}
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
