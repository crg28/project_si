<?php

namespace App\Http\Controllers;

use App\Models\Instrument;
use App\Models\InstrumentItem;
use Illuminate\Http\Request;
use App\Models\Review;
use Illuminate\View\View;

// Author: Carlos Restrepo
class InstrumentController extends Controller
{
    public function index(Request $request): View
    {
        $query = Instrument::query();

        if ($request->filled('name')) {
            $query->where('name', 'like', '%' . $request->input('name') . '%');
        }

        if ($request->filled('category')) {
            $query->where('category', $request->input('category'));
        }

        $viewData['instruments'] = $query->get();
        $viewData['categories'] = Instrument::select('category')->distinct()->pluck('category');
        $viewData['selectedName'] = $request->input('name', '');
        $viewData['selectedCategory'] = $request->input('category', '');

        return view('instrument.index', $viewData);
    }

    public function show(int $id): View
    {
        $instrument = Instrument::findOrFail($id);

        $viewData['instrument'] = $instrument;
        $viewData['reviews'] = $instrument->reviews()->with('user')->latest()->get();

        return view('instrument.show', $viewData);
    }

    public function topSelling(): View
    {
        $topInstrumentIds = InstrumentItem::selectRaw('instrument_id, SUM(quantity) as total_sold')
            ->groupBy('instrument_id')
            ->orderByDesc('total_sold')
            ->take(3)
            ->pluck('instrument_id');

        $viewData['instruments'] = Instrument::whereIn('id', $topInstrumentIds)->get();

        return view('instrument.topSelling', $viewData);
    }

    public function mostReviewed(): View
    {
        $topInstrumentIds = Review::selectRaw('instrument_id, COUNT(*) as review_count')
            ->groupBy('instrument_id')
            ->orderByDesc('review_count')
            ->take(4)
            ->pluck('instrument_id');

        $viewData['instruments'] = Instrument::whereIn('id', $topInstrumentIds)->get();

        return view('instrument.mostReviewed', $viewData);
    }
}