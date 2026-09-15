<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

// Author: Carlos Restrepo
class InstrumentFactory extends Factory
{
    protected static array $pool = [];

    public function definition(): array
    {
        if (empty(self::$pool)) {
            self::$pool = [
                ['name' => 'Fender Stratocaster', 'category' => 'Guitarra'],
                ['name' => 'Gibson Les Paul', 'category' => 'Guitarra'],
                ['name' => 'Ibanez RG', 'category' => 'Guitarra'],
                ['name' => 'Yamaha Pacifica', 'category' => 'Guitarra'],
                ['name' => 'PRS SE Custom 24', 'category' => 'Guitarra'],
                ['name' => 'Epiphone Casino', 'category' => 'Guitarra'],
                ['name' => 'Fender Precision Bass', 'category' => 'Bajo'],
                ['name' => 'Music Man StingRay', 'category' => 'Bajo'],
                ['name' => 'Ibanez SR300', 'category' => 'Bajo'],
                ['name' => 'Yamaha TRBX304', 'category' => 'Bajo'],
                ['name' => 'Squier Affinity Jazz Bass', 'category' => 'Bajo'],
                ['name' => 'Pearl Export Series', 'category' => 'Batería'],
                ['name' => 'Yamaha Stage Custom', 'category' => 'Batería'],
                ['name' => 'DW Performance Series', 'category' => 'Batería'],
                ['name' => 'Tama Imperialstar', 'category' => 'Batería'],
                ['name' => 'Mapex Tornado', 'category' => 'Batería'],
                ['name' => 'Yamaha P-125', 'category' => 'Teclado'],
                ['name' => 'Roland Juno-DS', 'category' => 'Teclado'],
                ['name' => 'Korg Kross 2', 'category' => 'Teclado'],
                ['name' => 'Casio Privia PX-160', 'category' => 'Teclado'],
                ['name' => 'Nord Stage 3', 'category' => 'Teclado'],
                ['name' => 'Yamaha YAS-280 Saxofón', 'category' => 'Viento'],
                ['name' => 'Bach Trompeta TR300', 'category' => 'Viento'],
                ['name' => 'Jupiter Clarinete JCL700', 'category' => 'Viento'],
                ['name' => 'Selmer Flauta Traversa', 'category' => 'Viento'],
                ['name' => 'Yamaha V3 Violín', 'category' => 'Cuerdas'],
                ['name' => 'Stentor Cello Estudiante', 'category' => 'Cuerdas'],
                ['name' => 'Cordoba C5 Guitarra Clásica', 'category' => 'Cuerdas'],
                ['name' => 'Cremona Viola SV-130', 'category' => 'Cuerdas'],
            ];
        }

        $randomIndex = array_rand(self::$pool);
        $chosen = self::$pool[$randomIndex];

        unset(self::$pool[$randomIndex]);

        return [
            'name' => $chosen['name'],
            'model' => fake()->bothify('MOD-####'),
            'price' => fake()->randomFloat(2, 150, 3500),
            'stock' => fake()->numberBetween(0, 50),
            'imagePath' => 'instruments/icon.jpg',
            'category' => $chosen['category'],
        ];
    }
}
