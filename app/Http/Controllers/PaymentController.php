<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePaymentRequest;
use App\Models\Payment;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;

// Author: Carlos Restrepo
class PaymentController extends Controller
{
    public function create(): View
    {
        $viewData = [];

        return view('payment.create', $viewData);
    }

    public function store(StorePaymentRequest $request): RedirectResponse
    {
        $validated = $request->validated();

        $payment = new Payment;
        $payment->setCardNumber($validated['cardNumber']);
        $payment->setCardExpiration($validated['cardExpiration']);
        $payment->setCvv((int) $validated['cvv']);
        $payment->setUserId(auth()->id());
        $payment->setOrderId(null);
        $payment->save();

        return redirect()->route('user.detail', auth()->id())
            ->with('success', __('messages.payment_added'));
    }

    public function destroy(int $id): RedirectResponse
    {
        $payment = Payment::where('id', $id)
            ->where('user_id', auth()->id())
            ->whereNull('order_id')
            ->firstOrFail();

        $payment->delete();

        return redirect()->route('user.detail', auth()->id())
            ->with('success', __('messages.payment_removed'));
    }
}
