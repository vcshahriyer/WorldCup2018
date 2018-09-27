@extends('Includes.main')


@section('content')
    <div class="container">
        <div class="ftitle" id="match-header"><h2>All <span>Roles</span></h2></div>
        <div class="all-match">
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            @if ($roles->isEmpty())
                    <p> There is no role.</p>
                @else
                <table class="table-striped-dflt">
                    <tr class="tr-head">
                        <td>Name</td>
                    </tr>
                    @foreach($roles as $role)
                        <tr>
                            <td class="td-head">{!! $role->name !!}</td>
                        </tr>
                    @endforeach
                </table>
            @endif
        </div>
    </div>
@endsection