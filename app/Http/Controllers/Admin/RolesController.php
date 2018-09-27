<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\RoleFormRequest;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesController extends Controller
{
	public function index()
	{
		$roles = Role::all();
		return view('admin.roles', compact('roles'));
	}
	public function create()
	{
		return view('admin.create');
	}
	public function store(RoleFormRequest $request)
	{
		Role::create(['name' => $request->get('name')]);
		return redirect('/admin/roles/create')->with('status', 'A new role has been created!');
	}
}
