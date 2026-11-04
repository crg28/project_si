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
                // Guitarras
                [
                    'name' => ['es' => 'Fender Stratocaster', 'en' => 'Fender Stratocaster'],
                    'category' => ['es' => 'Guitarra', 'en' => 'Guitar'],
                ],
                [
                    'name' => ['es' => 'Gibson Les Paul', 'en' => 'Gibson Les Paul'],
                    'category' => ['es' => 'Guitarra', 'en' => 'Guitar'],
                ],
                [
                    'name' => ['es' => 'Ibanez RG', 'en' => 'Ibanez RG'],
                    'category' => ['es' => 'Guitarra', 'en' => 'Guitar'],
                ],
                [
                    'name' => ['es' => 'Yamaha Pacifica', 'en' => 'Yamaha Pacifica'],
                    'category' => ['es' => 'Guitarra', 'en' => 'Guitar'],
                ],
                [
                    'name' => ['es' => 'PRS SE Custom 24', 'en' => 'PRS SE Custom 24'],
                    'category' => ['es' => 'Guitarra', 'en' => 'Guitar'],
                ],
                [
                    'name' => ['es' => 'Epiphone Casino', 'en' => 'Epiphone Casino'],
                    'category' => ['es' => 'Guitarra', 'en' => 'Guitar'],
                ],

                // Bajos
                [
                    'name' => ['es' => 'Fender Precision Bass', 'en' => 'Fender Precision Bass'],
                    'category' => ['es' => 'Bajo', 'en' => 'Bass'],
                ],
                [
                    'name' => ['es' => 'Music Man StingRay', 'en' => 'Music Man StingRay'],
                    'category' => ['es' => 'Bajo', 'en' => 'Bass'],
                ],
                [
                    'name' => ['es' => 'Ibanez SR300', 'en' => 'Ibanez SR300'],
                    'category' => ['es' => 'Bajo', 'en' => 'Bass'],
                ],
                [
                    'name' => ['es' => 'Yamaha TRBX304', 'en' => 'Yamaha TRBX304'],
                    'category' => ['es' => 'Bajo', 'en' => 'Bass'],
                ],
                [
                    'name' => ['es' => 'Squier Affinity Jazz Bass', 'en' => 'Squier Affinity Jazz Bass'],
                    'category' => ['es' => 'Bajo', 'en' => 'Bass'],
                ],

                // Baterías
                [
                    'name' => ['es' => 'Pearl Export Series', 'en' => 'Pearl Export Series'],
                    'category' => ['es' => 'Batería', 'en' => 'Drums'],
                ],
                [
                    'name' => ['es' => 'Yamaha Stage Custom', 'en' => 'Yamaha Stage Custom'],
                    'category' => ['es' => 'Batería', 'en' => 'Drums'],
                ],
                [
                    'name' => ['es' => 'DW Performance Series', 'en' => 'DW Performance Series'],
                    'category' => ['es' => 'Batería', 'en' => 'Drums'],
                ],
                [
                    'name' => ['es' => 'Tama Imperialstar', 'en' => 'Tama Imperialstar'],
                    'category' => ['es' => 'Batería', 'en' => 'Drums'],
                ],
                [
                    'name' => ['es' => 'Mapex Tornado', 'en' => 'Mapex Tornado'],
                    'category' => ['es' => 'Batería', 'en' => 'Drums'],
                ],

                // Teclados
                [
                    'name' => ['es' => 'Yamaha P-125', 'en' => 'Yamaha P-125'],
                    'category' => ['es' => 'Teclado', 'en' => 'Keyboard'],
                ],
                [
                    'name' => ['es' => 'Roland Juno-DS', 'en' => 'Roland Juno-DS'],
                    'category' => ['es' => 'Teclado', 'en' => 'Keyboard'],
                ],
                [
                    'name' => ['es' => 'Korg Kross 2', 'en' => 'Korg Kross 2'],
                    'category' => ['es' => 'Teclado', 'en' => 'Keyboard'],
                ],
                [
                    'name' => ['es' => 'Casio Privia PX-160', 'en' => 'Casio Privia PX-160'],
                    'category' => ['es' => 'Teclado', 'en' => 'Keyboard'],
                ],
                [
                    'name' => ['es' => 'Nord Stage 3', 'en' => 'Nord Stage 3'],
                    'category' => ['es' => 'Teclado', 'en' => 'Keyboard'],
                ],

                // Viento
                [
                    'name' => ['es' => 'Yamaha YAS-280 Saxofón', 'en' => 'Yamaha YAS-280 Saxophone'],
                    'category' => ['es' => 'Viento', 'en' => 'Wind'],
                ],
                [
                    'name' => ['es' => 'Bach Trompeta TR300', 'en' => 'Bach TR300 Trumpet'],
                    'category' => ['es' => 'Viento', 'en' => 'Wind'],
                ],
                [
                    'name' => ['es' => 'Jupiter Clarinete JCL700', 'en' => 'Jupiter JCL700 Clarinet'],
                    'category' => ['es' => 'Viento', 'en' => 'Wind'],
                ],
                [
                    'name' => ['es' => 'Selmer Flauta Traversa', 'en' => 'Selmer Flute'],
                    'category' => ['es' => 'Viento', 'en' => 'Wind'],
                ],

                // Cuerdas
                [
                    'name' => ['es' => 'Yamaha V3 Violín', 'en' => 'Yamaha V3 Violin'],
                    'category' => ['es' => 'Cuerdas', 'en' => 'Strings'],
                ],
                [
                    'name' => ['es' => 'Stentor Cello Estudiante', 'en' => 'Stentor Student Cello'],
                    'category' => ['es' => 'Cuerdas', 'en' => 'Strings'],
                ],
                [
                    'name' => ['es' => 'Cordoba C5 Guitarra Clásica', 'en' => 'Cordoba C5 Classical Guitar'],
                    'category' => ['es' => 'Cuerdas', 'en' => 'Strings'],
                ],
                [
                    'name' => ['es' => 'Cremona Viola SV-130', 'en' => 'Cremona SV-130 Viola'],
                    'category' => ['es' => 'Cuerdas', 'en' => 'Strings'],
                ],
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
