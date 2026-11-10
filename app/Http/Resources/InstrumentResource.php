<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

// Author: Santiago Arellano
class InstrumentResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->getId(),
            'name' => $this->getName(),
            'model' => $this->getModel(),
            'price' => $this->getPrice(),
            'stock' => $this->getStock(),
            'category' => $this->getCategory(),
        ];
    }
}
