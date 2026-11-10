<?php

namespace App\Utils;

use App\Interfaces\OrderReport;
use App\Models\Order;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\StreamedResponse;

// Author: Carlos Restrepo
class ExcelOrderReport implements OrderReport
{
    public function download(Order $order): Response
    {
        $sheet = (new Spreadsheet)->getActiveSheet();

        $sheet->fromArray([
            [__('messages.order'), '#'.$order->getId()],
            [__('messages.name'), $order->user->getName()],
            [],
            [__('messages.instrument'), __('messages.quantity'), __('messages.price'), __('messages.subtotal')],
        ]);

        $row = 5;
        foreach ($order->instrumentItems as $item) {
            $sheet->fromArray([
                $item->instrument->getName(),
                $item->getQuantity(),
                $item->getPrice(),
                $item->calculateSubtotal(),
            ], null, 'A'.$row++);
        }

        $sheet->fromArray([__('messages.total'), '', '', $order->getTotal()], null, 'A'.$row);

        $writer = new Xlsx($sheet->getParent());

        return new StreamedResponse(fn () => $writer->save('php://output'), 200, [
            'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
            'Content-Disposition' => 'attachment; filename="'.__('messages.invoice').'-'.$order->getId().'.xlsx"',
        ]);
    }
}
