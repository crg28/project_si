<?php

namespace Database\Seeders;

use App\Models\Instrument;
use App\Models\InstrumentItem;
use App\Models\Order;
use App\Models\Payment;
use App\Models\Review;
use App\Models\User;
use Illuminate\Database\Seeder;

// Author: Santiago Arellano
class DatabaseSeeder extends Seeder
{
    // Creation of factories must be in order to prevent foreign keys errors
    public function run(): void
    {
        // 1. Includes a known-admin user for testing
        $adminUser = new User;
        $adminUser->setName('Admin');
        $adminUser->setEmail('admin@ejemplo.com');
        $adminUser->setPassword(bcrypt('contraseña'));
        $adminUser->setPhone('300000000');
        $adminUser->setAddress('Calle 1 # 2');
        $adminUser->setRole('admin');
        $adminUser->save();

        $users = User::factory(10)->create();

        // 2. Instruments
        $instruments = Instrument::factory(29)->create();

        // 3. Orders
        $orders = Order::factory(15)->create();

        // 4. Instrument Items
        InstrumentItem::factory(20)->create();

        // 5. Calculate totals for each order
        foreach ($orders as $order) {
            $order->calculateTotal();
        }

        // 6. Payments
        foreach ($orders as $order) {
            Payment::factory()->create([
                'order_id' => $order->getId(),
                'user_id' => $order->getUserId(),
            ]);
        }

        // 7. Reviews
        Review::factory(25)->create();
    }
}
