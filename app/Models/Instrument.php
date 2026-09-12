<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

// Author: Carlos Restrepo
class Instrument extends Model
{
    use HasFactory;

    /**
     * INSTRUMENT ATTRIBUTES
     * $this->attributes['id'] - int
     * $this->attributes['name'] - string
     * $this->attributes['model'] - string
     * $this->attributes['price'] - float
     * $this->attributes['stock'] - int
     * $this->attributes['imagePath'] - string
     * $this->attributes['category'] - string
     * $this->attributes['created_at'] - string - creation timestamp - by default
     * $this->attributes['updated_at'] - string - last update timestamp - by default
     */

    protected $fillable = [
        'name',
        'model',
        'price',
        'stock',
        'imagePath',
        'category',
    ];

    public function getId(): int
    {
        return $this->attributes['id'];
    }

    public function getName(): string
    {
        return $this->attributes['name'];
    }

    public function setName(string $name): void
    {
        $this->attributes['name'] = $name;
    }

    public function getModel(): string
    {
        return $this->attributes['model'];
    }

    public function setModel(string $model): void
    {
        $this->attributes['model'] = $model;
    }

    public function getPrice(): float
    {
        return $this->attributes['price'];
    }

    public function setPrice(float $price): void
    {
        $this->attributes['price'] = $price;
    }

    public function getStock(): int
    {
        return $this->attributes['stock'];
    }

    public function setStock(int $stock): void
    {
        $this->attributes['stock'] = $stock;
    }

    public function getImagePath(): string
    {
        return $this->attributes['imagePath'] ?? '';
    }

    public function setImagePath(string $imagePath): void
    {
        $this->attributes['imagePath'] = $imagePath;
    }

    public function getCategory(): string
    {
        return $this->attributes['category'];
    }

    public function setCategory(string $category): void
    {
        $this->attributes['category'] = $category;
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

    public function instrumentItems(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(InstrumentItem::class);
    }

    public function reviews(): \Illuminate\Database\Eloquent\Relations\HasMany
    {
        return $this->hasMany(Review::class);
    }
}