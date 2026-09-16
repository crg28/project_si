<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreInstrumentRequest;
use App\Http\Requests\Admin\UpdateInstrumentRequest;
use App\Interfaces\ImageStorage;
use App\Models\Instrument;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

// Author: Carlos Restrepo
class AdminInstrumentController extends Controller
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

        $viewData = [];
        $viewData['instruments'] = $query->get();
        $viewData['categories'] = Instrument::select('category')->distinct()->pluck('category');
        $viewData['selectedName'] = $request->input('name', '');
        $viewData['selectedCategory'] = $request->input('category', '');

        return view('admin.instrument.index', $viewData);
    }

    public function show(int $id): View
    {
        $viewData = [];
        $viewData['instrument'] = Instrument::findOrFail($id);

        return view('admin.instrument.show', $viewData);
    }

    public function create(): View
    {
        $viewData = [];

        return view('admin.instrument.create', $viewData);
    }

    public function store(StoreInstrumentRequest $request): RedirectResponse
    {
        $validated = $request->validated();

        $instrument = new Instrument;
        $instrument->setName($validated['name']);
        $instrument->setModel($validated['model']);
        $instrument->setPrice($validated['price']);
        $instrument->setStock($validated['stock']);
        $instrument->setCategory($validated['category']);

        if ($request->hasFile('image')) {
            $imageStorage = app(ImageStorage::class);
            $imagePath = $imageStorage->store($request->file('image'), 'instruments');
            $instrument->setImagePath($imagePath);
        } else {
            $instrument->setImagePath('instruments/icon.jpg');
        }

        $instrument->save();

        return redirect()->route('admin.instrument.index')
            ->with('success', __('messages.instrument_created'));
    }

    public function edit(int $id): View
    {
        $viewData = [];
        $viewData['instrument'] = Instrument::findOrFail($id);

        return view('admin.instrument.edit', $viewData);
    }

    public function update(UpdateInstrumentRequest $request, int $id): RedirectResponse
    {
        $validated = $request->validated();

        $instrument = Instrument::findOrFail($id);
        $instrument->setName($validated['name']);
        $instrument->setModel($validated['model']);
        $instrument->setPrice($validated['price']);
        $instrument->setStock($validated['stock']);
        $instrument->setCategory($validated['category']);

        if ($request->hasFile('image')) {
            $imageStorage = app(ImageStorage::class);

            if ($instrument->getImagePath() !== 'instruments/icon.jpg') {
                $imageStorage->delete($instrument->getImagePath());
            }

            $imagePath = $imageStorage->store($request->file('image'), 'instruments');
            $instrument->setImagePath($imagePath);
        }

        $instrument->save();

        return redirect()->route('admin.instrument.index')
            ->with('success', __('messages.instrument_updated'));
    }

    public function destroy(int $id): RedirectResponse
    {
        $instrument = Instrument::findOrFail($id);

        if ($instrument->getImagePath() !== 'instruments/icon.jpg') {
            $imageStorage = app(ImageStorage::class);
            $imageStorage->delete($instrument->getImagePath());
        }

        $instrument->delete();

        return redirect()->route('admin.instrument.index')
            ->with('success', __('messages.instrument_deleted'));
    }
}
