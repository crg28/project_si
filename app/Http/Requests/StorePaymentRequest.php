<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

// Author: Carlos Restrepo
class StorePaymentRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'cardNumber' => ['required', 'string', 'max:20'],
            'cardExpiration' => ['required', 'date'],
            'cvv' => ['required', 'numeric', 'digits_between:3,4'],
        ];
    }
}
