<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

// Author: Santiago Arellano
class UserOrderCountResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'name' => $this->getName(),
            'email' => $this->getEmail(),
            'ordersCount' => (int) $this->orders_count,
        ];
    }
}
