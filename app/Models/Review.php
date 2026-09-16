<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

// Author: Santiago Arellano
class Review extends Model
{
    use HasFactory;

    /**
     * REVIEW ATTRIBUTES
     * $this->attributes['id'] - int
     * $this->attributes['date'] - string
     * $this->attributes['content'] - string
     * $this->attributes['user_id'] - int - fk user
     * $this->attributes['instrument_id'] - int - fk instrument
     * $this->attributes['created_at'] - string - creation timestamp - by default
     * $this->attributes['updated_at'] - string - last update timestamp - by default
     */
    protected $fillable = [
        'date',
        'content',
        'user_id',
        'instrument_id',
    ];

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

    public function getContent(): string
    {
        return $this->attributes['content'];
    }

    public function setContent(string $content): void
    {
        $this->attributes['content'] = $content;
    }

    public function getUserId(): int
    {
        return $this->attributes['user_id'];
    }

    public function setUserId(int $userId): void
    {
        $this->attributes['user_id'] = $userId;
    }

    public function getInstrumentId(): int
    {
        return $this->attributes['instrument_id'];
    }

    public function setInstrumentId(int $instrumentId): void
    {
        $this->attributes['instrument_id'] = $instrumentId;
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

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function instrument(): BelongsTo
    {
        return $this->belongsTo(Instrument::class);
    }
}
