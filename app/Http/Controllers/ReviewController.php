<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\User;
use App\Http\Requests\StoreReviewRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;

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

    public function edit(int $id): View
    {
        $review = Review::findOrFail($id);

        /** @var User $user */
        $user = auth()->user();

        if ($user->getId() !== $review->getUserId()) {
            abort(403);
        }

        $viewData = [];
        $viewData['review'] = $review;

        return view('review.edit', $viewData);
    }

    public function update(StoreReviewRequest $request, int $id): RedirectResponse
    {
        $validated = $request->validated();

        $review = Review::findOrFail($id);

        /** @var User $user */
        $user = auth()->user();

        if ($user->getId() !== $review->getUserId()) {
            abort(403);
        }

        $review->setContent($validated['content']);
        $review->save();

        return redirect()->route('instrument.show', $review->getInstrumentId())
            ->with('success', __('messages.review_updated_success'));
    }
}