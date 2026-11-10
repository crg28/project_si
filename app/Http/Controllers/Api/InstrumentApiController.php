<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\FilterInstrumentRequest;
use App\Http\Resources\InstrumentResource;
use App\Models\Instrument;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\JsonResponse;

// Author: Santiago Arellano
class InstrumentApiController extends Controller
{
    private const SUPPORTED_LOCALES = ['es', 'en'];

    private const DEFAULT_LOCALE = 'es';

    private const TOP_SELLING_LIMIT = 3;

    public function index(FilterInstrumentRequest $request): JsonResponse
    {
        $query = Instrument::query()->where('stock', '>', 0);

        $this->applyFilters($query, $request);

        return response()->json(InstrumentResource::collection($query->get()), 200);
    }

    public function topSelling(): JsonResponse
    {
        $instruments = Instrument::query()
            ->withSum('instrumentItems', 'quantity')
            ->orderByDesc('instrument_items_sum_quantity')
            ->take(self::TOP_SELLING_LIMIT)
            ->get();

        return response()->json(InstrumentResource::collection($instruments), 200);
    }

    private function applyFilters(Builder $query, FilterInstrumentRequest $request): void
    {
        $locale = $this->resolveLocale();

        if ($request->filled('name')) {
            $query->whereRaw(
                "LOWER(JSON_UNQUOTE(JSON_EXTRACT(name, '$.\"{$locale}\"'))) LIKE ?",
                ['%'.mb_strtolower($request->input('name')).'%']
            );
        }

        if ($request->filled('model')) {
            $query->where('model', 'like', '%'.$request->input('model').'%');
        }

        if ($request->filled('category')) {
            $query->whereRaw(
                "LOWER(JSON_UNQUOTE(JSON_EXTRACT(category, '$.\"{$locale}\"'))) = ?",
                [mb_strtolower($request->input('category'))]
            );
        }

        if ($request->filled('minPrice')) {
            $query->where('price', '>=', $request->input('minPrice'));
        }

        if ($request->filled('maxPrice')) {
            $query->where('price', '<=', $request->input('maxPrice'));
        }

        if ($request->filled('minStock')) {
            $query->where('stock', '>=', $request->input('minStock'));
        }
    }

    private function resolveLocale(): string
    {
        $locale = app()->getLocale();

        return in_array($locale, self::SUPPORTED_LOCALES, true) ? $locale : self::DEFAULT_LOCALE;
    }
}
