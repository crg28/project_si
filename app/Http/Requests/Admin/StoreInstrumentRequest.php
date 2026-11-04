<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

// Author: Carlos Restrepo
class StoreInstrumentRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'name' => ['required', 'array'],
            'name.es' => ['required', 'string', 'max:255'],
            'name.en' => ['required', 'string', 'max:255'],
            'model' => ['required', 'string', 'max:255'],
            'category' => ['required', 'array'],
            'category.es' => ['required', 'string', 'max:255'],
            'category.en' => ['required', 'string', 'max:255'],
            'price' => ['required', 'numeric', 'min:0'],
            'stock' => ['required', 'integer', 'min:0'],
            'image' => ['required', 'image', 'mimes:jpg,jpeg,png,webp', 'max:2048'],
        ];
    }
}
