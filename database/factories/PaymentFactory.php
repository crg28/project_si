<?php

namespace Database\Factories;

use App\Models\Order;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

// Author: Juan Cortes
class PaymentFactory extends Factory
{
    public function definition(): array
    {
        return [
            'cardNumber' => fake()->creditCardNumber(),
            'cardExpiration' => fake()->creditCardExpirationDate()->format('Y-m-d'),
            'cvv' => fake()->numberBetween(100, 999),
            'order_id' => Order::factory(),
            'user_id' => User::factory(),
        ];
    }
}
