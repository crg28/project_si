<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

// Author: Santiago Arellano
class OrderFactory extends Factory
{
    public function definition(): array
    {
        return [
            'total' => 0,
            'user_id' => User::factory(),
        ];
    }
}
