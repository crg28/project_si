<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

// Author: Juan Cortes
class StoreReviewRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
           'content' => ['required', 'string', 'min:10', 'max:1000'],
        ];
    }
}
