<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

// Author: Carlos Restrepo
class InstrumentItem extends Model
{
    use HasFactory;

    /**
     * INSTRUMENT ITEM ATTRIBUTES
     * $this->attributes['id'] - int
     * $this->attributes['quantity'] - int
     * $this->attributes['price'] - float
     * $this->attributes['instrument_id'] - int -fk instrument
     * $this->attributes['order_id'] - int - fk order
     * $this->attributes['created_at'] - string - creation timestamp - by default
     * $this->attributes['updated_at'] - string - last update timestamp - by default
     */

    protected $fillable = [
        'quantity',
        'price',
        'instrument_id',
        'order_id',
    ];

    public function getId(): int
    {
        return $this->attributes['id'];
    }

    public function getQuantity(): int
    {
        return $this->attributes['quantity'];
    }

    public function setQuantity(int $quantity): void
    {
        $this->attributes['quantity'] = $quantity;
    }

    public function getPrice(): float
    {
        return $this->attributes['price'];
    }

    public function setPrice(float $price): void
    {
        $this->attributes['price'] = $price;
    }

    public function getInstrumentId(): int
    {
        return $this->attributes['instrument_id'];
    }

    public function setInstrumentId(int $instrumentId): void
    {
        $this->attributes['instrument_id'] = $instrumentId;
    }

    public function getOrderId(): int
    {
        return $this->attributes['order_id'];
    }

    public function setOrderId(int $orderId): void
    {
        $this->attributes['order_id'] = $orderId;
    }

    public function getCreatedAt(): string
    {
        return $this->attributes['created_at'];
    }

    public function setCreatedAt($createdAt): void
    {
        $this->attributes['created_at'] = $createdAt;
    }

    public function getUpdatedAt(): string
    {
        return $this->attributes['updated_at'];
    }

    public function setUpdatedAt($updatedAt): void
    {
        $this->attributes['updated_at'] = $updatedAt;
    }

    public function calculateSubtotal(): float
    {
        return $this->getQuantity() * $this->getPrice();
    }

    public function instrument(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Instrument::class);
    }

    public function order(): \Illuminate\Database\Eloquent\Relations\BelongsTo
    {
        return $this->belongsTo(Order::class);
    }
}