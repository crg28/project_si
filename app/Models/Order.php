<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Collection;

// Author: Santiago Arellano
class Order extends Model
{
    use HasFactory;

    /**
     * ORDER ATTRIBUTES
     * $this->attributes['id'] - int
     * $this->attributes['date'] - string
     * $this->attributes['total'] - float
     * $this->attributes['user_id'] - int - fk user
     * $this->attributes['created_at'] - string - creation timestamp - by default
     * $this->attributes['updated_at'] - string - last update timestamp - by default
     */
    protected $fillable = [
        'date',
        'total',
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

    public function getDate(): string
    {
        return $this->attributes['date'];
    }

    public function setDate(string $date): void
    {
        $this->attributes['date'] = $date;
    }

    public function getTotal(): float
    {
        return $this->attributes['total'];
    }

    public function setTotal(float $total): void
    {
        $this->attributes['total'] = $total;
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
    public function instrumentItems(): HasMany
    {
        return $this->hasMany(InstrumentItem::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function payment(): HasOne
    {
        return $this->hasOne(Payment::class);
    }

    /*
    |--------------------------------------------------------------------------
    | RELATION GETTERS & SETTERS
    |--------------------------------------------------------------------------
    */
    public function getInstrumentItems(): Collection
    {
        return $this->instrumentItems;
    }

    public function setInstrumentItems(Collection $instrumentItems): void
    {
        $this->instrumentItems = $instrumentItems;
    }

    public function getUser(): User
    {
        return $this->user;
    }

    public function setUser(User $user): void
    {
        $this->user = $user;
    }

    public function getPayment(): Payment
    {
        return $this->payment;
    }

    public function setPayment(Payment $payment): void
    {
        $this->payment = $payment;
    }
    /*
    |--------------------------------------------------------------------------
    | BUSINESS LOGIC & UTILITIES
    |--------------------------------------------------------------------------
    */

    public function calculateTotal(): void
    {
        $subtotal = 0;

        foreach ($this->getInstrumentItems() as $instrumentItem) {
            $subtotal += $instrumentItem->calculateSubtotal();
        }

        $this->setTotal($subtotal);
        $this->save();
    }

    public function cancel(): bool
    {
        return (bool) $this->delete();
    }
}