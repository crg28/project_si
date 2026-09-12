<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

// Author: Carlos Restrepo
class Payment extends Model
{
    use HasFactory;

    /**
     * PAYMENT ATTRIBUTES
     * $this->attributes['id'] - int
     * $this->attributes['cardNumber'] - string
     * $this->attributes['cardExpiration'] - date
     * $this->attributes['cvv'] - int
     * $this->attributes['order_id'] - int - fk order
     * $this->attributes['user_id'] - int - fk user
     * $this->attributes['created_at'] - string - creation timestamp - by default
     * $this->attributes['updated_at'] - string - last update timestamp - by default
     */

    protected $fillable = [
        'cardNumber',
        'cardExpiration',
        'cvv',
        'order_id',
        'user_id',
    ];

    public function getId(): int
    {
        return $this->attributes['id'];
    }

    public function setId($id): void
    {
        $this->attributes['id'] = $id;
    }

    public function getCardNumber(): string
    {
        return $this->attributes['cardNumber'];
    }

    public function setCardNumber($cardNumber): void
    {
        $this->attributes['cardNumber'] = $cardNumber;
    }

    public function getCardExpiration(): string
    {
        return $this->attributes['cardExpiration'];
    }

    public function setCardExpiration($cardExpiration): void
    {
        $this->attributes['cardExpiration'] = $cardExpiration;
    }

    public function getCvv(): int
    {
        return $this->attributes['cvv'];
    }

    public function setCvv($cvv): void
    {
        $this->attributes['cvv'] = $cvv;
    }

    public function process(): bool
    {
        return true;
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
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
}
