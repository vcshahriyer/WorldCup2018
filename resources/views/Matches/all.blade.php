@extends('Includes.main')


@section('content')
    <div class="container">
        @php
            $rounds = array("round");
        @endphp
        <div class="ftitle" id="match-header"><h2>All <span>Matches</span></h2></div>
        <div class="all-match">
            <table class="table-striped-dflt">
                <tr class="tr-head">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                @foreach($allmatch as $key=> $match)
                    @if($rounds[0] != $match->round)
                        <tr>
                            <td colspan="4"><h2 class="round">{{$match->round}}</h2></td>
                            @php
                                $rounds[0] = $match->round;
                            @endphp
                        </tr>
                    @endif
                <tr>
                    <td class="td-head">
                        <p>{{date('d-M-Y', strtotime($match->date))}}</p>
                        <p class="info">{{$match->stadium_name}}</p>
                    </td>
                    <td class="right-float">
                        <span class="team1">{{$match->team1}} </span><img src="{{asset('images/Flags/'.$match->cd1.'.png')}}" alt="">
                    </td>
                    <td class="versus">
                        <p>{{$match->team1_goal}}&nbsp;-&nbsp;{{$match->team2_goal}}</p>
                    </td>
                    <td class="left-float">
                        <img src="{{asset('images/Flags/'.$match->cd2.'.png')}}" alt=""><span class="team2"> {{$match->team2}}</span>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
@endsection