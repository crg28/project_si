<?php

namespace App\Providers;

use App\Interfaces\OrderReport;
use App\Utils\ExcelOrderReport;
use App\Utils\PdfOrderReport;
use Illuminate\Support\ServiceProvider;

// Author: Carlos Restrepo
class ReportServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        // The concrete report is chosen by the {format} segment of the route
        $this->app->bind(OrderReport::class, function ($app) {
            return match ($app['request']->route('format')) {
                'excel' => new ExcelOrderReport,
                default => new PdfOrderReport,
            };
        });
    }
}
