@extends('Includes.main')

@section('content')
    <div id="groups">
        <div class="container">
            @foreach($points as $point)
                @if($count ==1)
            <div class="ftitle"><h2>Group <span> {{$point->group_name}}</span></h2></div>
            <table class="table-striped-dflt">
                <tr class="tr-head">
                    <td>Team</td>
                    <td>MP</td>
                    <td>W</td>
                    <td>D</td>
                    <td>L</td>
                    <td>GF</td>
                    <td>GA</td>
                    <td>GD</td>
                    <td>PTS</td>
                </tr>
                @endif
                <tr>
                    <td class="td-head">
                        <img src="{{asset('images/Flags/'.$point->code.'.png')}}" alt=""> {{$point->team_name}}
                    </td>
                    <td>{{$point->MP}}</td>
                    <td>{{$point->W}}</td>
                    <td>{{$point->D}}</td>
                    <td>{{$point->L}}</td>
                    <td>{{$point->GF}}</td>
                    <td>{{$point->GA}}</td>
                    <td>{{$point->GD}}</td>
                    <td>{{$point->PTS}}</td>
                </tr>
                @php
                    $count++;
                    if ($count ==5){
                        echo '</table>';
                        $count = 1;
                    }
                @endphp
            @endforeach
        </div>
    </div>


@endsection