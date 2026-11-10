<?php

namespace Tests\Unit;

use App\Models\User;
use PHPUnit\Framework\TestCase;

// Author: Carlos Restrepo
class UserTest extends TestCase
{
    public function test_only_users_with_admin_role_are_admins(): void
    {
        $user = new User;

        $user->setRole('admin');
        $this->assertTrue($user->isAdmin());

        $user->setRole('client');
        $this->assertFalse($user->isAdmin());
    }
}
