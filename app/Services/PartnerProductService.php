<?php

namespace App\Services;

use App\Utils\PartnerProduct;
use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Client\RequestException;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Http;
use RuntimeException;

// Author: Carlos Restrepo
class PartnerProductService
{
    private const REQUEST_TIMEOUT_SECONDS = 5;

    /**
     * Fetches the products published by the partner team.
     *
     * @return Collection<int, PartnerProduct>
     *
     * @throws RuntimeException when the partner service cannot be reached or answers with an error.
     */
    public function fetchProducts(): Collection
    {
        try {
            $responseJson = Http::timeout(self::REQUEST_TIMEOUT_SECONDS)
                ->acceptJson()
                ->get(config('services.partner.products_url'))
                ->throw()
                ->json();
        } catch (RequestException|ConnectionException $exception) {
            throw new RuntimeException(__('messages.partner_service_unavailable'), previous: $exception);
        }

        $productsData = is_array($responseJson['data'] ?? null) ? $responseJson['data'] : [];

        return collect($productsData)
            ->filter(fn ($productData): bool => is_array($productData))
            ->map(fn (array $productData): PartnerProduct => new PartnerProduct($productData))
            ->values();
    }
}
