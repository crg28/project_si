<?php

namespace Tests\Unit;

use App\Models\InstrumentItem;
use PHPUnit\Framework\TestCase;

// Author: Carlos Restrepo
class InstrumentItemTest extends TestCase
{
    public function test_subtotal_is_quantity_times_price(): void
    {
        $item = new InstrumentItem;
        $item->setQuantity(3);
        $item->setPrice(150000.50);

        $this->assertSame(450001.5, $item->calculateSubtotal());
    }
}
