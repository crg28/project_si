<?php

namespace App\Http\Controllers;

use App\Interfaces\OrderReport;
use App\Models\Order;
use Illuminate\View\View;
use Symfony\Component\HttpFoundation\Response;

// Author: Santiago Arellano
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

    public function download(int $id, OrderReport $report): Response
    {
        return $report->download(Order::findOrFail($id));
    }
}
