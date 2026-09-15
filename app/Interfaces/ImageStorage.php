<?php

namespace App\Interfaces;

use Illuminate\Http\UploadedFile;

// Author: Carlos Restrepo
interface ImageStorage
{
    public function store(UploadedFile $file, string $folder): string;

    public function delete(string $path): void;
}
