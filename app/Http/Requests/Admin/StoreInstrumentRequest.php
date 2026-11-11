<?php

namespace App\Http\Requests\Admin;

use App\Http\Resources\EmbeddableYoutubeVideo;
use App\Services\YouTubeVideoService;
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
            'youtube_video_id' => ['bail', 'nullable', 'string', 'regex:/^[A-Za-z0-9_-]{11}$/D', new EmbeddableYoutubeVideo],
        ];
    }

    public function messages(): array
    {
        return [
            'youtube_video_id.regex' => __('messages.youtube_video_invalid_format'),
        ];
    }

    /**
     * Accepts either a YouTube link or a bare ID and normalizes it to the ID.
     */
    protected function prepareForValidation(): void
    {
        $rawVideoInput = $this->input('youtube_video_id');

        if (filled($rawVideoInput)) {
            // If parsing fails, keep the raw value so the regex rule rejects it
            $this->merge([
                'youtube_video_id' => YouTubeVideoService::parseYoutubeVideoId($rawVideoInput) ?? $rawVideoInput,
            ]);
        }
    }
}
