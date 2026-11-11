<?php

namespace App\Http\Controllers;

use App\Services\PartnerProductService;
use Illuminate\Support\Facades\Log;
use Illuminate\View\View;
use RuntimeException;

// Author: Carlos Restrepo
class PartnerProductController extends Controller
{
    public function index(PartnerProductService $partnerProductService): View
    {
        $viewData = [];
        $viewData['products'] = collect();
        $viewData['serviceUnavailable'] = false;

        try {
            $viewData['products'] = $partnerProductService->fetchProducts();
        } catch (RuntimeException $exception) {
            Log::warning($exception->getPrevious()?->getMessage() ?? $exception->getMessage());
            $viewData['serviceUnavailable'] = true;
        }

        return view('partner.products', $viewData);
    }
}
