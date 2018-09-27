@extends('Includes.main')


@section('content')
    <div class="container">
        <div class="ftitle" id="match-header"><h2>All <span>Users</span></h2></div>
        <div class="all-match">
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            @if ($users->isEmpty())
                <p> There is no User.</p>
            @else
                <table class="table-striped-dflt">
                    <tr class="tr-head">
                        <td>Image</td>
                        <td>Name</td>
                        <td>Email</td>
                    </tr>
                    @foreach($users as $user)
                        <tr>
                            <td class="td-head"><img src="{{asset("images/".$user->img)}}" alt=""></td>
                            <td><a href="{!! action('Admin\UsersController@edit', $user->id) !!}">{{$user->name}}</a></td>
                            <td>{{$user->email}}</td>
                        </tr>
                    @endforeach
                </table>
            @endif
        </div>
    </div>
@endsection