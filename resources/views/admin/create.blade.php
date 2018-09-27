@extends('Includes.main')

@section('content')
    <div class="form-wrap">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">{{ __('Create a new role') }}</div>
                        <div class="card-body">
                            <form class="form-horizontal" method="post">
                                @foreach ($errors->all() as $error)
                                    <p class="invalid-feedback" role="alert">{{$error}}</p>
                                @endforeach
                                @if (session('status'))
                                        <div class="alert alert-success">
                                            {{ session('status') }}
                                        </div>
                                    @endif
                                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">
                                    <fieldset>
                                        <div class="form-group">
                                            <label for="name" class="col-lg-2 control-label">Name</label>
                                            <div class="col-lg-10">
                                                <input type="text" class="form-control" id="name" name="name">
                                            </div>
                                        </div>
                                        <div class="form-group row mb-0">
                                            <div class="col-lg-10 col-lg-offset-2">
                                                <button type="reset" class="btn btn-link">Cancel</button>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
