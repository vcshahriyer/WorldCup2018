@extends('Includes.main')

@section('slider')
    <div class="slider">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img src="{{asset('images/slider1.jpg')}}" alt=""/>
                    <div class="caption">
                        <div class="container">
                            <h1>2018 FIFA World Cup Russia™ </h1>
                            <a href="{{route('news')}}" class="btn btn-bordered">read more</a>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="{{asset('images/slider2.jpg')}}" alt=""/>
                    <div class="caption">
                        <div class="container">
                            <h1>2018 FIFA World Cup Russia™ </h1>
                            <a href="{{route('news')}}" class="btn btn-bordered">read more</a>
                        </div>
                    </div>
                </li>
                <li>
                    <img src="{{asset('images/slider3.jpg')}}" alt=""/>
                    <div class="caption">
                        <div class="container">
                            <h1>2018 FIFA World Cup Russia™ </h1>
                            <a href="{{route('news')}}" class="btn btn-bordered">read more</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
@endsection

@section('content')
<!-- Content Section. If need sidebars use the tag: <aside>. If articles use tag: <article> -->
<section id="m-a-n">
    <div class="container">
        <div class="col-8">
            <div class="tab"><a href="{{route('matches.all')}}">matches</a></div>
            <div class="match">
                <div class="col-6">
                    <div class="m-img"><img src="{{ 'images/Featured_Img/'.$main->fmg1 }}" alt=""/></div>
                </div>
                <div class="col-6">
                    <div class="m-img"><img src="{{ 'images/Featured_Img/'.$main->fmg2 }}" alt=""/></div>
                </div>
                <div class="m-result">
                    <div class="logo-club col-3"><img src="{{ 'images/Flags/'.$main->cd1.'.png'}}" alt=""/></div>
                    <span class="result col-6">{{ $main->team1_goal }} <b>:</b> {{ $main->team2_goal }}</span>
                    <div class="logo-club col-3"><img src="{{ 'images/Flags/'.$main->cd2.'.png'}}" alt=""/></div>
                    <div class="club-name col-12">
                        <span class="col-4">{{ $main->team1 }}</span>
                        <div class="match-name col-4">{{ $main->stadium_name }}<br> {{ $main->round }} <br> <b>{{ $main->date }}</b></div>
                        <span class="col-4">{{ $main->team2 }}</span>
                    </div>
                </div>
            </div>
            <div class="a-games">
                <ul class="clearfix">
                    @foreach($matches as $match)
                    <li><span class="text-right">{{ $match->team1 }}</span><span class="d-g">{{ $match->date }}</span><span
                                class="text-left">{{ $match->team2 }}</span></li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="col-4">
            <div class="tab">news</div>
            <div class="tab-small"><a href="{{route('news')}}">see all news</a></div>
            <div class="r-box-n scroll">
                @foreach($news as $ne)
                <article>
                    <h3><a href="/news/{{$ne->id}}">{{$ne->title}}</a></h3>
                    <p>{!! str_limit($ne->description) !!}</p>
                    <span class="date-n">{{ date('d-M', strtotime($ne->date)) }}</span>
                </article>
                @endforeach

            </div>
        </div>
    </div>
</section>
<!-- section for teaser -->
<section>
    <div class="container">
        <div id="teaser">
            <h2>RUSSIA 2018: SEARCH </h2>
            <form action="{{route('search')}}" method="post">
                @csrf
                <div class="form-wrap">
                    <div class="col-10">
                        <input type="text" name="data" required>
                    </div>
                    <div class="col-2">
                        <select name="what" id="what" required>
                            <option value="teams">Teams</option>
                            <option value="players">Players</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <button type="submit" class="btn btn-red">Search</button>
            </form>
        </div>
    </div>
</section>
<section id="video">
    <h2 class="site-heading"><span>Recent Videos</span></h2>
    <div class="container">

        <div id="v-tabs">

            <ul id="v-option" class="clearfix col-4 scroll">
                @foreach($videos as $video)
                <li data-youtube-link="{{ $video->slug }}"><i class="fa fa-play"></i>{{$video->title}}</li>
                @endforeach
            </ul>
            <div  class="tab-content col-8">
                <iframe id="video-tab" width="560" height="400" frameborder="0" style="border:0;" src="https://www.youtube.com/embed/RWgJ4KKn1vM"
                        allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>
<!-- twiter, blog, table -->
<section id="ttb">
    <div class="container">
        <div class="col-4">
            <div class="blog-s">
                <div class="bl-title"><h3>Stadiums &nbsp; <a href="{{route('stadiums')}}">\ &nbsp; see all Stadiums ›</a></h3></div>
                @foreach($stadiums as $stadium)
                    <div class="s-post">
                        <div class="post-img"><img src="{{ 'images/stadiums/'.$stadium->picture }}" alt=""/></div>
                        <h3><a href="/stadium/{{ str_replace(' ', '-', $stadium->name) }}"><span>{{ $stadium->name }}</span></a></h3>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="col-4">
            <div class="liga-t">
                <div class="bl-title"><h3>Short Point Table &nbsp;<a href="/points">\ &nbsp; Full point table ›</a> </h3></div>
                <table class="table-striped">
                    <tr class="t-h">
                        <td class="t-c">Group</td>
                        <td>Team Name</td>
                        <td>MP</td>
                        <td>PTS</td>
                    </tr>
                    @foreach($points as $point)
                        <tr>
                            <td class="t-c">{{ $point->group_name }}</td>
                            <td>{{ $point->team_name }}</td>
                            <td>{{ $point->MP }}</td>
                            <td>{{ $point->PTS }}</td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
        <div class="col-4">
            <div class="blog-s">
                <div class="bl-title"><h3>Awards &nbsp; <a href="{{route('awards')}}">\ &nbsp; see all awards ›</a></h3></div>
                @foreach($awards as $award)
                <div class="s-post">
                    <div class="post-img"><img src="{{ 'images/Awards/'.$award->award_img }}" alt=""/></div>
                    <h3><a href="{{route('awards')}}"><span>{{ $award->designation }}</span></a></h3>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
    @endsection