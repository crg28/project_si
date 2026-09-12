<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

// Author: Carlos Restrepo
class OrderFactory extends Factory
{
    public function definition(): array
    {
        return [
            'date' => fake()->dateTimeBetween('-6 months', 'now')->format('Y-m-d'),
            'total' => 0,
            'user_id' => User::factory(),
        ];
    }
}
