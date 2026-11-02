<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\User;
use App\Http\Requests\StoreReviewRequest;
use Illuminate\Http\RedirectResponse;

// Author: Juan Cortes
class ReviewController extends Controller
{
    public function store(StoreReviewRequest $request, $instrumentId): RedirectResponse
    {
        $validated = $request->validated();

        /** @var User $user */
        $user = auth()->user();

        $review = new Review();
        $review->setContent($validated['content']);
        $review->setUserId($user->getId());
        $review->setInstrumentId($instrumentId);
        $review->save();

        return redirect()->route('instrument.show', $instrumentId)
            ->with('success', __('messages.review_created_success'));
    }
}