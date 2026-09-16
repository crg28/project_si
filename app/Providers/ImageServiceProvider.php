<?php

namespace App\Providers;

use App\Interfaces\ImageStorage;
use App\Utils\ImageLocalStorage;
use Illuminate\Support\ServiceProvider;

// Author: Carlos Restrepo
class ImageServiceProvider extends ServiceProvider
{
    public function register(): void
    {
        $this->app->bind(ImageStorage::class, function () {
            return new ImageLocalStorage;
        });
    }
}
