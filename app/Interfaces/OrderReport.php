<?php

namespace App\Interfaces;

use App\Models\Order;
use Symfony\Component\HttpFoundation\Response;

// Author: Carlos Restrepo
interface OrderReport
{
    public function download(Order $order): Response;
}
