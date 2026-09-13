<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Response;
use Illuminate\View\View;

// Author: Carlos Restrepo
class OrderController extends Controller
{
    public function show(int $id): View
    {
        $order = Order::findOrFail($id);

        $viewData = [];
        $viewData['order'] = $order;
        $viewData['items'] = $order->instrumentItems;
        $viewData['total'] = $order->getTotal();

        return view('order.show', $viewData);
    }

    public function downloadPdf(int $id): Response
    {
        $order = Order::findOrFail($id);

        $viewData = [];
        $viewData['order'] = $order;
        $viewData['items'] = $order->instrumentItems;

        $pdf = Pdf::loadView('order.invoice', $viewData);

        return $pdf->download('factura-pedido-' . $order->getId() . '.pdf');
    }
}