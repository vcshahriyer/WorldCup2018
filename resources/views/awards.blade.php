@extends('Includes.main')

@section('content')
    <!-- Breadcrumb and title -->
    <section id="bc-t">
        <div class="container">
            <h1 class="blog-title">Awards</h1>
        </div>
    </section>
    <!-- Content Section. If need sidebars use the tag: <aside>. If articles use tag: <article> -->
    <section id="award">
        <div class="container">
            <div class="img-wrap">
                <img src="{{ asset('images/Awards/featured-img.jpg') }}" alt="Banner image">
            </div>
        </div>
        <div class="container">
            @foreach($awards as $award)
                @if($count++ %2 !=0)
                <div class="awards">
                    <div class="col-12"><h2 class="awrd-heading"><span>{{$award->designation}}</span></h2>
                    </div>
                    <div class="col-6">
                        <div class="tpp"><img src="{{ asset('images/Awards/'.$award->award_img) }}" alt=""/></div>
                    </div>
                    <div class="col-6">
                        <div class="tpi">
                            <span><img src="{{asset('images/Awards/'.$award->prize_img)}}" alt=""></span>
                            <span><img src="{{asset('images/Flags/'.$award->code.'.png')}}" alt=""></span>
                            <p>{{$award->team_name}}</p>
                            <h2>{{$award->player_name}}</h2>
                            <p>{{$award->award_description}}</p>
                        </div>
                    </div>
                </div>
                @else

                <div class="awards">
                    <div class="col-12"><h2 class="awrd-heading"><span>{{$award->designation}}</span></h2>
                    </div>
                    <div class="col-6">
                        <div class="tpi">
                            <span><img src="{{asset('images/Awards/'.$award->prize_img)}}" alt=""></span>
                            <span><img src="{{asset('images/Flags/'.$award->code.'.png')}}" alt=""></span>
                            <p>{{$award->team_name}}</p>
                            <h2>{{$award->player_name}}</h2>
                            <p>{{$award->award_description}}</p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="tpp"><img src="{{ asset('images/Awards/'.$award->award_img) }}" alt=""/></div>
                    </div>
                </div>
                @endif
            @endforeach
        </div>
    </section>

@endsection