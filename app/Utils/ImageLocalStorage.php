<?php

namespace App\Utils;

use App\Interfaces\ImageStorage;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

// Author: Carlos Restrepo
class ImageLocalStorage implements ImageStorage
{
    public function store(UploadedFile $file, string $folder): string
    {
        $filename = Str::uuid() . '.' . $file->extension();

        $file->storeAs($folder, $filename, 'public');

        return $folder . '/' . $filename;
    }

    public function delete(string $path): void
    {
        if (Storage::disk('public')->exists($path)) {
            Storage::disk('public')->delete($path);
        }
    }
}