<?php

namespace App\Http\Controllers;

use App\Models\Instrument;
use App\Models\InstrumentItem;
use App\Models\Order;
use App\Models\Payment;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\View\View;

// Author: Carlos Restrepo
class CartController extends Controller
{
    public function index(): View
    {
        $cart = Session::get('cart', []);

        $items = [];
        $total = 0;

        foreach ($cart as $instrumentId => $quantity) {
            $instrument = Instrument::find($instrumentId);

            if ($instrument === null) {
                continue;
            }

            $subtotal = $instrument->getPrice() * $quantity;
            $total += $subtotal;

            $items[] = [
                'instrument' => $instrument,
                'quantity' => $quantity,
                'subtotal' => $subtotal,
            ];
        }

        $payments = auth()->check()
            ? Payment::where('user_id', auth()->id())->whereNull('order_id')->get()
            : collect();

        $viewData = [];
        $viewData['items'] = $items;
        $viewData['total'] = $total;
        $viewData['payments'] = $payments;

        return view('cart.index', $viewData);
    }

    public function add(Request $request, int $id): RedirectResponse
    {
        $quantity = (int) $request->input('quantity', 1);

        $instrument = Instrument::find($id);

        if ($instrument === null) {
            return redirect()->route('instrument.index')
                ->with('error', __('messages.instrument_not_found'));
        }

        $cart = Session::get('cart', []);
        $currentQuantityInCart = $cart[$id] ?? 0;
        $totalRequestedQuantity = $currentQuantityInCart + $quantity;

        if ($instrument->getStock() < $totalRequestedQuantity) {
            return redirect()->back()
                ->with('error', __('messages.insufficient_stock', ['name' => $instrument->getName()]));
        }

        $cart[$id] = $totalRequestedQuantity;

        Session::put('cart', $cart);

        return redirect()->route('cart.index')
            ->with('success', __('messages.item_added_to_cart'));
    }

    public function remove(int $id): RedirectResponse
    {
        $cart = Session::get('cart', []);
        unset($cart[$id]);

        Session::put('cart', $cart);

        return redirect()->route('cart.index')
            ->with('success', __('messages.item_removed_from_cart'));
    }

    public function checkout(Request $request): RedirectResponse
    {
        $cart = Session::get('cart', []);

        if (empty($cart)) {
            return redirect()->route('cart.index')
                ->with('error', __('messages.cart_empty'));
        }

        $request->validate([
            'payment_id' => ['required', 'exists:payments,id'],
        ]);

        foreach ($cart as $instrumentId => $quantity) {
            $instrument = Instrument::find($instrumentId);

            if ($instrument === null) {
                continue;
            }

            if ($instrument->getStock() < $quantity) {
                return redirect()->route('cart.index')
                    ->with('error', __('messages.insufficient_stock', ['name' => $instrument->getName()]));
            }
        }

        $selectedPayment = Payment::where('id', $request->input('payment_id'))
            ->where('user_id', auth()->id())
            ->firstOrFail();

        $order = new Order();
        $order->setDate(now()->format('Y-m-d'));
        $order->setTotal(0);
        $order->setUserId(auth()->id());
        $order->save();

        foreach ($cart as $instrumentId => $quantity) {
            $instrument = Instrument::find($instrumentId);

            if ($instrument === null) {
                continue;
            }

            $instrumentItem = new InstrumentItem();
            $instrumentItem->setInstrumentId($instrument->getId());
            $instrumentItem->setOrderId($order->getId());
            $instrumentItem->setQuantity($quantity);
            $instrumentItem->setPrice($instrument->getPrice());
            $instrumentItem->save();

            $instrument->decreaseStock($quantity);
        }

        $order->calculateTotal();

        $orderPayment = new Payment();
        $orderPayment->setCardNumber($selectedPayment->getCardNumber());
        $orderPayment->setCardExpiration($selectedPayment->getCardExpiration());
        $orderPayment->setCvv($selectedPayment->getCvv());
        $orderPayment->setOrderId($order->getId());
        $orderPayment->setUserId(auth()->id());
        $orderPayment->save();

        Session::forget('cart');

        return redirect()->route('order.show', $order->getId())
            ->with('success', __('messages.order_created_successfully'));
    }
}