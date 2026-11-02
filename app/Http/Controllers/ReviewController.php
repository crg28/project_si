<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Requests\StoreReviewRequest;
use Illuminate\Http\RedirectResponse;

// Author: Juan Cortes
class ReviewController extends Controller
{
    public function store(StoreReviewRequest $request, int $instrumentId): RedirectResponse
    {

        $validated = $request->validated();

        $review = new Review;
        $review->setContent($validated['content']);
        $review->setUserId(auth()->id());
        $review->setInstrumentId($instrumentId);
        $review->save();

        return redirect()->route("instrument.show");
    }
}