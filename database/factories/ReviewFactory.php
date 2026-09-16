<?php

namespace Database\Factories;

use App\Models\Instrument;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

// Author: Santiago Arellano
class ReviewFactory extends Factory
{
    public function definition(): array
    {
        $comments = [
            'Excelente calidad de sonido, superó mis expectativas.',
            'Muy buena construcción, cómodo de tocar.',
            'Buena relación calidad-precio, lo recomiendo.',
            'El tono es increíble, perfecto para presentaciones en vivo.',
            'Instrumento sólido, pequeños problemas de afinación.',
            'Excelente fabricación, llegó muy bien empacado.',
        ];

        return [
            'date' => fake()->dateTimeBetween('-3 months', 'now')->format('Y-m-d'),
            'content' => fake()->randomElement($comments),
            'user_id' => User::factory(),
            'instrument_id' => Instrument::inRandomOrder()->first()->getId(),
        ];
    }
}
