@extends('includes.main')

@section('content')
<!-- Breadcrumb and title -->
<section id="bc-t">
    <div class="container">
        <h1 class="blog-title">Stadiums</h1>
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
        @foreach($stadiums as $stadium)
        <div class="stad-i">
            <img src="{{ 'images/stadiums/'.$stadium->picture }}" alt="">
            <div class="content">
                <h2>{{ $stadium->name }}</h2>
                <p>City: {{ $stadium->city }} | Capacity: {{ $stadium->capacity }} | Opening: {{ $stadium->opening }}</p>
                <a href="/stadium/{{ str_replace(' ', '-', $stadium->name) }}" class="btn btn-bordered">Read more</a>
            </div>
        </div>
        @endforeach
    </div>
</section>
    @endsection