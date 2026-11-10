<?php

namespace App\Services;

use Illuminate\Http\Client\ConnectionException;
use Illuminate\Http\Client\RequestException;
use Illuminate\Support\Facades\Http;
use InvalidArgumentException;
use RuntimeException;

// Author: Juan Cortes
class YouTubeVideoService
{
    private const VIDEOS_ENDPOINT = 'https://www.googleapis.com/youtube/v3/videos';
    private const MAX_IDS_PER_REQUEST = 50;
    private const VIDEO_ID_PATTERN = '/^[A-Za-z0-9_-]{11}$/D';

    /**
     * Fetches metadata for YouTube videos.
     *
     * @param  string[]  $videoIds  Up to 50 video IDs.
     * @return array<string, array{title: string, thumbnailUrl: ?string, isEmbeddable: bool}>
     *         Indexed by video ID. Deleted or private videos are not included in the result.
     */
    public function fetchVideosMetadata(array $videoIds): array
    {
        $apiKey = config('services.youtube.key');

        if (empty($apiKey)) {
            throw new RuntimeException(
                'Falta YOUTUBE_API_KEY. Defínela en el .env y ejecuta: php artisan config:clear'
            );
        }

        $videoIds = array_values(array_unique(array_filter($videoIds)));

        if (empty($videoIds)) {
            return [];
        }

        if (count($videoIds) > self::MAX_IDS_PER_REQUEST) {
            throw new InvalidArgumentException(
                'YouTube permite máximo ' . self::MAX_IDS_PER_REQUEST . ' IDs por llamada.'
            );
        }

        try {
            // The API key is sent in a header so it doesn't end up in URLs or logs
            $videosResponseJson = Http::timeout(10)
                ->withHeaders(['X-Goog-Api-Key' => $apiKey])
                ->get(self::VIDEOS_ENDPOINT, [
                    'part' => 'snippet,status',
                    'id'   => implode(',', $videoIds),
                ])
                ->throw()
                ->json();
        } catch (RequestException $exception) {
            // The API answered with an HTTP error (400, 403, ...)
            $errorBodyJson = $exception->response->json();
            $errorMessage = $errorBodyJson['error']['message'] ?? $exception->getMessage();

            throw new RuntimeException(
                "Error de la API de YouTube (HTTP {$exception->response->status()}): {$errorMessage}",
                previous: $exception
            );
        } catch (ConnectionException $exception) {
            // The request never reached the API (SSL, DNS, timeout, ...)
            throw new RuntimeException(
                'No se pudo conectar con la API de YouTube: ' . $exception->getMessage(),
                previous: $exception
            );
        }

        $metadataByVideoId = [];

        foreach ($videosResponseJson['items'] ?? [] as $item) {
            $thumbnails = $item['snippet']['thumbnails'] ?? [];

            $metadataByVideoId[$item['id']] = [
                'title'        => $item['snippet']['title'] ?? '',
                // Falls back to smaller thumbnails if the high-resolution one is missing
                'thumbnailUrl' => $thumbnails['high']['url']
                    ?? $thumbnails['medium']['url']
                    ?? $thumbnails['default']['url']
                    ?? null,
                'isEmbeddable' => (bool) ($item['status']['embeddable'] ?? false),
            ];
        }

        return $metadataByVideoId;
    }

    /**
     * Extracts the video ID from a YouTube URL or a bare ID.
     * Returns null if the value is not valid.
     */
    public static function parseYoutubeVideoId(?string $urlOrId): ?string
    {
        $urlOrId = trim((string) $urlOrId);

        if ($urlOrId === '') {
            return null;
        }

        // If it is already a valid ID, return it as is
        if (preg_match(self::VIDEO_ID_PATTERN, $urlOrId)) {
            return $urlOrId;
        }

        // Add the scheme if it is missing so parse_url can handle it
        if (! preg_match('~^https?://~i', $urlOrId)) {
            $urlOrId = 'https://' . $urlOrId;
        }

        $urlParts = parse_url($urlOrId);

        if (! $urlParts || empty($urlParts['host'])) {
            return null;
        }

        $host = strtolower(preg_replace('/^www\./i', '', $urlParts['host']));
        $path = $urlParts['path'] ?? '';
        $videoId = null;

        if ($host === 'youtu.be') {
            // https://youtu.be/ID
            $videoId = explode('/', ltrim($path, '/'))[0];
        } elseif (in_array($host, ['youtube.com', 'm.youtube.com', 'music.youtube.com', 'youtube-nocookie.com'], true)) {
            if ($path === '/watch') {
                // https://www.youtube.com/watch?v=ID&t=30s
                parse_str($urlParts['query'] ?? '', $queryParams);
                $videoId = $queryParams['v'] ?? null;
            } elseif (preg_match('~^/(?:embed|shorts|live|v)/([^/?]+)~', $path, $matches)) {
                // /embed/ID, /shorts/ID, /live/ID, /v/ID
                $videoId = $matches[1];
            }
        }

        return (is_string($videoId) && preg_match(self::VIDEO_ID_PATTERN, $videoId))
            ? $videoId
            : null;
    }
}