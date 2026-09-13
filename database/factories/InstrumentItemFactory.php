<?php

namespace Database\Factories;

use App\Models\Instrument;
use App\Models\Order;
use Illuminate\Database\Eloquent\Factories\Factory;

// Author: Carlos Restrepo
class InstrumentItemFactory extends Factory
{
    public function definition(): array
    {
        $instrument = Instrument::inRandomOrder()->first();

        return [
            'quantity' => fake()->numberBetween(1, 3),
            'price' => $instrument->getPrice(),
            'instrument_id' => $instrument->getId(),
            'order_id' => Order::factory(),
        ];
    }
}
