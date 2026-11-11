<?php

namespace App\Utils;

// Author: Carlos Restrepo
class PartnerProduct
{
    /**
     * PARTNER PRODUCT ATTRIBUTES
     * $this->attributes['id'] - int - product id in the partner application
     * $this->attributes['name'] - string - product name
     * $this->attributes['brand'] - string - product brand
     * $this->attributes['price'] - float - product price
     * $this->attributes['stock'] - int - available units
     * $this->attributes['category'] - string - product category
     * $this->attributes['image'] - string - image url
     * $this->attributes['url'] - string - link to the product in the partner application
     */
    private array $attributes;

    public function __construct(array $attributes)
    {
        $this->attributes = $attributes;
    }

    /*
    |--------------------------------------------------------------------------
    | ATTRIBUTE GETTERS
    |--------------------------------------------------------------------------
    */

    public function getId(): int
    {
        return (int) ($this->attributes['id'] ?? 0);
    }

    public function getName(): string
    {
        return (string) ($this->attributes['name'] ?? '');
    }

    public function getBrand(): string
    {
        return (string) ($this->attributes['brand'] ?? '');
    }

    public function getPrice(): float
    {
        return (float) ($this->attributes['price'] ?? 0);
    }

    public function getStock(): int
    {
        return (int) ($this->attributes['stock'] ?? 0);
    }

    public function getCategory(): string
    {
        return (string) ($this->attributes['category'] ?? '');
    }

    public function getImage(): ?string
    {
        return $this->getWebUrl('image');
    }

    public function getUrl(): ?string
    {
        return $this->getWebUrl('url');
    }

    /*
    |--------------------------------------------------------------------------
    | BUSINESS LOGIC & UTILITIES
    |--------------------------------------------------------------------------
    */

    // Only allow http(s) links, so external data cannot inject unsafe ones like javascript
    private function getWebUrl(string $key): ?string
    {
        $url = (string) ($this->attributes[$key] ?? '');

        return preg_match('~^https?://~i', $url) ? $url : null;
    }
}
