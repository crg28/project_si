<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserOrderCountResource;
use App\Models\User;
use Illuminate\Http\JsonResponse;

// Author: Santiago Arellano
class UserApiController extends Controller
{
    private const TOP_BUYERS_LIMIT = 10;

    public function mostOrders(): JsonResponse
    {
        $users = User::query()
            ->withCount('orders')
            ->has('orders')
            ->orderByDesc('orders_count')
            ->take(self::TOP_BUYERS_LIMIT)
            ->get();

        return response()->json(UserOrderCountResource::collection($users), 200);
    }
}
