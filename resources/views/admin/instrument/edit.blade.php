@extends('layouts.admin')

@section('content')
    <h1>{{ __('messages.edit_instrument') }}</h1>

    <div class="admin-card p-4">
        <div class="mb-3">
            <img src="{{ asset('storage/' . $instrument->getImagePath()) }}" alt="{{ $instrument->getName() }}" style="width: 120px; height: 120px; object-fit: cover; border-radius: 0.5rem;">
        </div>

        <form method="POST" action="{{ route('admin.instrument.update', $instrument->getId()) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="name" class="form-label">{{ __('messages.name') }}</label>
                <input type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" value="{{ old('name', $instrument->getName()) }}">
                @error('name') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="model" class="form-label">{{ __('messages.model') }}</label>
                <input type="text" name="model" id="model" class="form-control @error('model') is-invalid @enderror" value="{{ old('model', $instrument->getModel()) }}">
                @error('model') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="category" class="form-label">{{ __('messages.category') }}</label>
                <input type="text" name="category" id="category" class="form-control @error('category') is-invalid @enderror" value="{{ old('category', $instrument->getCategory()) }}">
                @error('category') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">{{ __('messages.price') }}</label>
                <input type="number" step="0.01" name="price" id="price" class="form-control @error('price') is-invalid @enderror" value="{{ old('price', $instrument->getPrice()) }}">
                @error('price') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="stock" class="form-label">{{ __('messages.stock') }}</label>
                <input type="number" name="stock" id="stock" class="form-control @error('stock') is-invalid @enderror" value="{{ old('stock', $instrument->getStock()) }}">
                @error('stock') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <div class="mb-3">
                <label for="image" class="form-label">{{ __('messages.image') }}</label>
                <input type="file" name="image" id="image" class="form-control @error('image') is-invalid @enderror">
                <small class="text-muted">{{ __('messages.leave_empty_to_keep_image') }}</small>
                @error('image') <span class="text-danger">{{ $message }}</span> @enderror
            </div>

            <button type="submit" class="btn btn-primary">{{ __('messages.save') }}</button>
            <a href="{{ route('admin.instrument.index') }}" class="btn btn-secondary">{{ __('messages.cancel') }}</a>
        </form>
    </div>
@endsection