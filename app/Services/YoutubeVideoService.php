<?php

namespace App\Services;

use Illuminate\Http\Client\RequestException;
use Illuminate\Support\Facades\Http;
use InvalidArgumentException;
use RuntimeException;

class YouTubeVideoService
{
    private const VIDEOS_ENDPOINT = 'https://www.googleapis.com/youtube/v3/videos';
    private const MAX_IDS_PER_REQUEST = 50;

    /**
     * Consulta metadatos de videos de YouTube.
     *
     * @param  string[]  $video_ids  Hasta 50 IDs de video.
     * @return array<string, array{title: string, thumbnail_url: ?string, is_embeddable: bool}>
     *         Indexado por ID. Los videos borrados o privados no aparecen en el resultado.
     */
    public function fetch_videos_metadata(array $video_ids): array
    {
        $api_key = config('services.youtube.key');

        if (empty($api_key)) {
            throw new RuntimeException(
                'Falta YOUTUBE_API_KEY. Defínela en el .env y ejecuta: php artisan config:clear'
            );
        }

        $video_ids = array_values(array_unique(array_filter($video_ids)));

        if (empty($video_ids)) {
            return [];
        }

        if (count($video_ids) > self::MAX_IDS_PER_REQUEST) {
            throw new InvalidArgumentException(
                'YouTube permite máximo ' . self::MAX_IDS_PER_REQUEST . ' IDs por llamada.'
            );
        }

        try {
            $videos_response_json = Http::timeout(10)
                ->get(self::VIDEOS_ENDPOINT, [
                    'key'  => $api_key,
                    'part' => 'snippet,status',
                    'id'   => implode(',', $video_ids),
                ])
                ->throw()
                ->json();
        } catch (RequestException $exception) {
            $error_body_json = $exception->response->json();
            $error_message = $error_body_json['error']['message'] ?? $exception->getMessage();

            throw new RuntimeException(
                "Error de la API de YouTube (HTTP {$exception->response->status()}): {$error_message}",
                previous: $exception
            );
        }

        $metadata_by_video_id = [];

        foreach ($videos_response_json['items'] ?? [] as $item) {
            $thumbnails = $item['snippet']['thumbnails'] ?? [];

            $metadata_by_video_id[$item['id']] = [
                'title'         => $item['snippet']['title'] ?? '',
                'thumbnail_url' => $thumbnails['high']['url']
                    ?? $thumbnails['medium']['url']
                    ?? $thumbnails['default']['url']
                    ?? null,
                'is_embeddable' => (bool) ($item['status']['embeddable'] ?? false),
            ];
        }

        return $metadata_by_video_id;
    }
}