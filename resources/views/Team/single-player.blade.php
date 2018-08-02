@extends('Includes.main')

@section('content')
<div class="container">
    <article class="single-player bootstrap-iso">
        <svg style="position: absolute; width: 0; height: 0;" width="0" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <defs>
                <clipPath id="clip-drop">
                    <path d="M99.851 194.226c.137.128.137.257.137.257s0-.064.138-.257c30.97-29.164 77.526-26.331 93.874-55.88C214.899 100.686 180.619 0 100.263 0h-.551C19.356 0-14.857 100.686 5.975 138.346c16.347 29.612 62.905 26.717 93.876 55.88z" />
                </clipPath>
            </defs>
        </svg>
        <div class="col-md-4">
            <div class="tpp">
                <div class="fi-wrap">
                    <div class="fi-p">
                            <div class="fi-p-picture">
                                <svg id="" class="fi-clip-svg " viewBox="0 0 200 200">
                                    <image width="100%" height="100%" xlink:href="{{asset('images/Players/'.$player->img)}}" class="image-r image-responsive"></image>

                                </svg>
                            </div>
                        <div class="fi-p__flag">
                            <div class="fi-p__flag__wrapper">
                                <img src="{{asset('images/Flags/'.$player->code.'.png')}}" alt="">
                            </div>
                        </div>
                        <div class="fi-p__info">
                            <div class="fi-p__jerseyNum ">
                                <span class="fi-p__num">{{$player->p_number}}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="tpi">
                <div class="col-lg-12"><h2 class="awrd-heading">{{$player->name}}</h2></div>
                <div class="col-md-4 col-sm-4">
                    <h5>{{$player->country}}</h5>
                    <h5>Role: {{$player->p_role}}</h5>
                    <h5>Age: {{$player->age}}</h5>
                    <h5>Height: {{$player->height}}cm</h5>
                </div>
                <div class="col-md-8 col-sm-8">
                    <h4>BIRTH Date:&nbsp; {{date('d-M-Y',strtotime($player->birth_date))}}</h4>
                    <h5>Match Played:&nbsp; {{$player->match_played}}</h5>
                    <h5>Goals:&nbsp; {{$player->goals_scored}}</h5>
                    <h5>MINUTES PLAYED:&nbsp; {{$player->minutes_played}}</h5>
                </div>
            </div>
        </div>
    </article>
</div>
@endsection