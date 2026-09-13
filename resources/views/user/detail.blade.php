@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('messages.userDetail') }}</div>
                    <div class="card-body">
                        <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getName() }}" readonly/>
                        <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getEmail() }}" readonly/>
                        <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getAddress() }}" readonly/>
                        <input type="text" class="form-control mb-2" value="{{ $viewData['user']->getPhone() }}" readonly/>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection