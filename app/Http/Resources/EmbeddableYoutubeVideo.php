<?php

namespace App\Http\Resources;

use App\Services\YouTubeVideoService;
use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Support\Facades\Log;
use RuntimeException;

// Author: Juan Cortes
class EmbeddableYoutubeVideo implements ValidationRule
{
    /**
     * Checks against the YouTube API that the video exists and can be embedded.
     * Laravel skips this rule when the value is empty, so a nullable field stays optional.
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        $videoId = (string) $value;

        try {
            $metadataByVideoId = app(YouTubeVideoService::class)->fetchVideosMetadata([$videoId]);
        } catch (RuntimeException $exception) {
            // Covers missing API key, HTTP errors and connection failures
            Log::error('YouTube validation failed: '.$exception->getMessage());
            $fail(__('messages.youtube_video_check_failed'));

            return;
        }

        if (! isset($metadataByVideoId[$videoId])) {
            // The video does not exist, is private or was deleted
            $fail(__('messages.youtube_video_not_found'));

            return;
        }

        if (! $metadataByVideoId[$videoId]['isEmbeddable']) {
            $fail(__('messages.youtube_video_not_embeddable'));
        }
    }
}
