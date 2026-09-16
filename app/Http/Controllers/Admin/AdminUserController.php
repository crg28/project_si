<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreUserRequest;
use App\Http\Requests\Admin\UpdateUserRequest;
use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\View\View;

// Author: Carlos Restrepo
class AdminUserController extends Controller
{
    public function index(Request $request): View
    {
        $query = User::query();

        if ($request->filled('email')) {
            $query->where('email', 'like', '%'.$request->input('email').'%');
        }

        $viewData = [];
        $viewData['users'] = $query->get();
        $viewData['selectedEmail'] = $request->input('email', '');

        return view('admin.user.index', $viewData);
    }

    public function show(int $id): View
    {
        $viewData = [];
        $viewData['user'] = User::findOrFail($id);

        return view('admin.user.show', $viewData);
    }

    public function create(): View
    {
        $viewData = [];

        return view('admin.user.create', $viewData);
    }

    public function store(StoreUserRequest $request): RedirectResponse
    {
        $validated = $request->validated();

        $user = new User;
        $user->setName($validated['name']);
        $user->setEmail($validated['email']);
        $user->setPassword(Hash::make($validated['password']));
        $user->setPhone($validated['phone']);
        $user->setAddress($validated['address']);
        $user->setRole($validated['role']);
        $user->save();

        return redirect()->route('admin.user.index')
            ->with('success', __('messages.user_created_successfully'));
    }

    public function edit(int $id): View
    {
        $viewData = [];
        $viewData['user'] = User::findOrFail($id);

        return view('admin.user.edit', $viewData);
    }

    public function update(UpdateUserRequest $request, int $id): RedirectResponse
    {
        $validated = $request->validated();

        $user = User::findOrFail($id);
        $user->setName($validated['name']);
        $user->setEmail($validated['email']);
        $user->setPhone($validated['phone']);
        $user->setAddress($validated['address']);
        $user->setRole($validated['role']);

        if (! empty($validated['password'])) {
            $user->setPassword(Hash::make($validated['password']));
        }

        $user->save();

        return redirect()->route('admin.user.index')
            ->with('success', __('messages.user_updated_successfully'));
    }

    public function destroy(int $id): RedirectResponse
    {
        $user = User::findOrFail($id);

        if ($user->getId() === auth()->id()) {
            return redirect()->route('admin.user.index')
                ->with('error', __('messages.cannot_delete_self'));
        }

        $user->delete();

        return redirect()->route('admin.user.index')
            ->with('success', __('messages.user_deleted_successfully'));
    }
}
