<?php

namespace App\Utils;

use App\Interfaces\OrderReport;
use App\Models\Order;
use Barryvdh\DomPDF\Facade\Pdf;
use Symfony\Component\HttpFoundation\Response;

// Author: Carlos Restrepo
class PdfOrderReport implements OrderReport
{
    public function download(Order $order): Response
    {
        $viewData = [];
        $viewData['order'] = $order;
        $viewData['items'] = $order->instrumentItems;
        $viewData['user'] = $order->user;

        return Pdf::loadView('order.invoice', $viewData)
            ->download(__('messages.invoice').'-'.$order->getId().'.pdf');
    }
}
