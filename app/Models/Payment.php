<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

// Author: Juan Cortes
class Payment extends Model
{
    use HasFactory;

    /**
     * PAYMENT ATTRIBUTES
     * $this->attributes['id'] - int
     * $this->attributes['cardNumber'] - string
     * $this->attributes['cardExpiration'] - string
     * $this->attributes['cvv'] - int
     * $this->attributes['order_id'] - int|null - fk order (can be null)
     * $this->attributes['user_id'] - int - fk user
     * $this->attributes['created_at'] - string - creation timestamp - by default
     * $this->attributes['updated_at'] - string - last update timestamp - by default
     * 
     * PAYMENT RELATIONS
     * $this->order - Order|null - associated order
     * $this->user - User - associated user
     */
    protected $fillable = [
        'cardNumber',
        'cardExpiration',
        'cvv',
        'order_id',
        'user_id',
    ];

    /*
    |--------------------------------------------------------------------------
    | ATTRIBUTE GETTERS & SETTERS
    |--------------------------------------------------------------------------
    */

    public function getId(): int
    {
        return $this->attributes['id'];
    }

    public function getCardNumber(): string
    {
        return $this->attributes['cardNumber'];
    }

    public function setCardNumber(string $cardNumber): void
    {
        $this->attributes['cardNumber'] = $cardNumber;
    }

    public function getCardExpiration(): string
    {
        return $this->attributes['cardExpiration'];
    }

    public function setCardExpiration(string $cardExpiration): void
    {
        $this->attributes['cardExpiration'] = $cardExpiration;
    }

    public function getCvv(): int
    {
        return $this->attributes['cvv'];
    }

    public function setCvv(int $cvv): void
    {
        $this->attributes['cvv'] = $cvv;
    }

    public function getOrderId(): ?int
    {
        return $this->attributes['order_id'];
    }

    public function setOrderId(?int $orderId): void
    {
        $this->attributes['order_id'] = $orderId;
    }

    public function getUserId(): int
    {
        return $this->attributes['user_id'];
    }

    public function setUserId(int $userId): void
    {
        $this->attributes['user_id'] = $userId;
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

    /*
    |--------------------------------------------------------------------------
    | ELOQUENT RELATIONS
    |--------------------------------------------------------------------------
    */

    public function order(): BelongsTo
    {
        return $this->belongsTo(Order::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /*
    |--------------------------------------------------------------------------
    | RELATION GETTERS & SETTERS
    |--------------------------------------------------------------------------
    */

    public function getOrder(): ?Order
    {
        return $this->order;
    }

    public function setOrder(?Order $order): void
    {
        $this->order = $order;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser(User $user): void
    {
        $this->user = $user;
    }

    /*
    |--------------------------------------------------------------------------
    | BUSINESS LOGIC & UTILITIES
    |--------------------------------------------------------------------------
    */

    public function process(): bool
    {
        return true;
    }
}