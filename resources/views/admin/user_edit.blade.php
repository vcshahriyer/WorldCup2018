@extends("Includes.main")

@section('content')
    <div class="form-wrap">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-8">
                    <div class="card">
                        <div class="card-header">{{ __('Edit user') }}</div>

                        <div class="card-body">
                            <form class="form-horizontal" method="post">
                                @foreach ($errors->all() as $error)
                                    <p class="alert alert-danger">{{ $error }}</p>
                                @endforeach
                                @if (session('status'))
                                        <div class="alert alert-success">
                                            {{ session('status') }}
                                        </div>
                                    @endif
                                    {!! csrf_field() !!}
                                        <div class="form-group">
                                            <label for="name" class="col-lg-3 control-label">Name</label>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control" id="name" placeholder="Name" name="name"
                                                       value="{{ $user->name }}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="email" class="col-lg-3 control-label">Email</label>
                                            <div class="col-lg-10">
                                                <input type="email" class="form-control" id="email" placeholder="Email" name="email"
                                                       value="{{ $user->email }}"></div>
                                        </div>
                                        <div class="form-group user-role">
                                            <label for="select" class="col-lg-3 control-label">Role</label>
                                            <div class="col-lg-10 my-checkbox">
                                                <select class="form-control scroll" id="role" name="role[]" multiple>
                                                    @foreach($roles as $role)
                                                    <option value="{!! $role->name !!}" @if(in_array($role->name, $selectedRoles))selected="selected" @endif >{!! $role->name!!}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="col-lg-3 control-label">Password</label>
                                            <div class="col-lg-10">
                                                <input type="password" class="form-control" name="password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="col-lg-3 control-label">Confirm password</label>
                                            <div class="col-lg-10">
                                                <input type="password" class="form-control" name="password_confirmation">
                                            </div>
                                        </div>
                                        <div class="form-group row mb-0">
                                            <div class="col-lg-10 col-lg-offset-2">
                                                <button type="reset" class="btn btn-link">Cancel</button>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection