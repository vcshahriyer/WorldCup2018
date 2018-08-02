@extends('Includes.main')

@section('content')
<!-- Breadcrumb and title -->
<section id="bc-t">
    <div class="container">
        <h1 class="blog-title">Team</h1>
    </div>
</section>
<!-- Content Section. If need sidebars use the tag: <aside>. If articles use tag: <article> -->
<section id="club">
    <div class="container">
        <div class="img-wrap">
            <img src="{{ asset('images/mascot.jpg') }}" alt="Banner image">
        </div>
    </div>
    <div class="container">
        <div class="bootstrap-iso">
            <div class="team-pl row">
                @foreach($teams as $team)
                <div class="col-sm-4 team-card">
                    <a href="team/{{ $team->team_name }}">
                        <img src="{{asset('images/Featured_Img/'.$team->featured_img)}}" alt="{{ $team->team_name }}"/>
                        <div class="team-name">
                            <div class="team-flag"><img src="{{asset('images/Flags/'.$team->code.'.png')}}" alt="{{ $team->team_name.'flag' }}"></div>
                            <h2>{{ $team->team_name }}</h2>
                        </div>
                    </a>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="big_crsl">
            <div class="ftitle"><h2>All <span> Teams</span></h2></div>
            <div class="slider2">
                @foreach($teams as $team)
                <div class="slide"><img src="{{asset('images/Featured_Img/'.$team->featured_img)}}" alt=""/></div>
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