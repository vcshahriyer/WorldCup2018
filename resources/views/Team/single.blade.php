@extends('Includes.main')

@section('content')
    <section id="club">
        <div class="container">
            <h2 class="awrd-heading"><span>Team {{ $team->team_name }}</span></h2>
            <div class="img-wrap">
                <img src="{{ asset('images/Featured_Img/'.$team->featured_img) }}" alt="Team image">
            </div>
            <article class="teamd">
                <div class="col-4">
                    <div class="tpp"><img src="{{asset('images/coach/'.$team->code.'.png')}}" alt=""/></div>
                </div>
                <div class="col-8">
                    <div class="tpi">
                        <h2>{{$team->coach_name}}</h2>
                        <span><img src="{{asset('images/Flags/'.$team->code.'.png')}}" alt="{{$team->coach_name}}"></span>
                        <p>{{$team->coach_about}}</p>
                    </div>
                </div>
            </article>
        </div>
        <div class="container">
            <svg style="position: absolute; width: 0; height: 0;" width="0" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <defs>
                    <clipPath id="clip-drop">
                        <path d="M99.851 194.226c.137.128.137.257.137.257s0-.064.138-.257c30.97-29.164 77.526-26.331 93.874-55.88C214.899 100.686 180.619 0 100.263 0h-.551C19.356 0-14.857 100.686 5.975 138.346c16.347 29.612 62.905 26.717 93.876 55.88z" />
                    </clipPath>
                </defs>
            </svg>
            <div class="ftitle fi"><h2>All <span> Players</span></h2></div>
            <div class="container">
                <div class="fi-wrap">
                    @foreach($players as $player)
                        <div class="fi-p">
                            <a class="" href="/players/{{$player->id}}">
                                <div class="fi-p-picture">
                                    <svg id="" class="fi-clip-svg " viewBox="0 0 200 200">
                                        <image width="100%" height="100%" xlink:href="{{asset('images/Players/'.$player->img)}}" class="image-r image-responsive"></image>
                                    </svg>
                                </div>
                            </a>
                            <div class="fi-p__info">
                                <div class="fi-p__jerseyNum ">
                                    <span class="fi-p__num">{{$player->p_number}}</span>
                                </div>
                                <div class="fi-p__n">
                                    <span class="fi-p__nShorter ">{{$player->name}}</span>
                                </div>
                                <div class="fi-p__info--role">{{$player->p_role}}</div>
                                <div class="fi-p__info--age">
                                    <span class="fi-p__info--ageText">Age:</span>
                                    <span class="fi-p__info--ageNum">{{$player->age}}</span>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="big_crsl">
                <div class="ftitle"><h2>All <span> Players images</span></h2></div>
                <div class="slider2">
                    @foreach($players as $player)
                        <div class="slide"><img src="{{asset('images/Players/'.$player->img)}}" alt=""/></div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">

        </div>
    </section>
@endsection