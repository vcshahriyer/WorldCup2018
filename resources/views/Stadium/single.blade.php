@extends('Includes.main')

@section('content')
    <!-- Breadcrumb and title -->
    <section id="bc-t">
        <div class="container">
            <h1 class="blog-title">{{ $stadium->name }}</h1>
        </div>
    </section>
    <!-- Content Section. If need sidebars use the tag: <aside>. If articles use tag: <article> -->
    <section id="club">
        <div class="container">
            <!-- POST -->
            <article class="club-post">
                <div class="club-content">
                    <img size="(max-width: 1100px) 100vw, 1100px" src="{{ asset('images/stadiums/russia2018_top.jpg') }}" alt="2018 world cup russia">
                </div>
            </article>

        </div>
    </section>
    <section>
        <div class="container">
                <div class="single-stadium">
                    <img src="{{ asset('images/stadiums/'.$stadium->picture) }}" alt="">
                    <div class="content">
                        <h2>{{ $stadium->name }}</h2>
                        <p>City: {{ $stadium->city }} | Capacity: {{ $stadium->capacity }} | Opening: {{ $stadium->opening }}</p>
                        <hr>
                        <h2>History and description</h2>
                        <p class="dscp">{!!html_entity_decode($stadium->description)!!}</p>
                    </div>
                </div>
        </div>
    </section>
@endsection