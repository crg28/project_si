<?php

namespace App\Http\Controllers;

use App\Models\Instrument;
use App\Models\InstrumentItem;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\View\View;

// Author: Carlos Restrepo
class InstrumentController extends Controller
{
    public function index(Request $request): View
    {
        $query = Instrument::query();

        if ($request->filled('name')) {
            $query->where('name', 'like', '%'.$request->input('name').'%');
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
        $topSellings = Instrument::withSum('instrumentItems', 'quantity')
            ->orderByDesc('instrument_items_sum_quantity')
            ->take(3)
            ->get();
        $viewData['instruments'] = $topSellings;

        return view('instrument.topSelling', $viewData);
    }

    // Author: Juan Cortes
    public function mostReviewed(): View
    {
       $topReviewed =Instrument::withCount('reviews')
            ->orderByDesc('reviews_count')
            ->take(3)
            ->get();

        $viewData['instruments'] = $topReviewed;

        return view('instrument.mostReviewed', $viewData);
    }
}
