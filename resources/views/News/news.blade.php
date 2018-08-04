@extends('Includes.main')

@section('content')
    <!-- Breadcrumb and title -->
    <section id="bc-t">
        <div class="container">
            <h1 class="blog-title">News</h1>
        </div>
    </section>
    <!-- Content Section. If need sidebars use the tag: <aside>. If articles use tag: <article> -->
    <section id="blog-grid">
        <div class="container">
            <div class="b-menu">
            </div>
            <!-- blog menu end -->
            <!-- BLOG POST #1 -->
            @foreach($posts as $post)
               @if($count++ %2 !=0)
            <article class="blog-item">
                <div class="col-6">
                    <div class="b-img-s"><a href="/news/{{$post->id}}"><img src="{{asset('images/News/'.$post->featured_img)}}" alt="" /></a></div>
                </div>
                <div class="col-6">
                    <div class="b-desc arr-l">
                        <h3><a href="/news/{{$post->id}}">{{str_limit($post->title, 40)}}</a></h3>
                        <p>{!! str_limit($post->description, 100) !!}</p>
                        <div class="date-i">
                            <span><i class="fa fa-calendar"></i> {{ date('d-m-y',strtotime($post->date)) }}</span>
                            <span><i class="fa fa-comment"></i>&nbsp;{{$post->comment}}</span>
                            <a href="/news/{{$post->id}}" class="btn-small-grey">Read More</a>
                        </div>
                    </div>
                </div>
            </article>
                @else
            <!-- BLOG POST #2 -->
            <article class="blog-item">
                <div class="col-6">
                    <div class="b-desc arr-r">
                        <h3><a href="/news/{{$post->id}}">{{str_limit($post->title, 40)}}</a></h3>
                        <p>{!! str_limit($post->description, 100) !!}</p>
                        <div class="date-i">
                            <span><i class="fa fa-calendar"></i> {{ date('d-m-y',strtotime($post->date)) }}</span>
                            <span><i class="fa fa-comment"></i>&nbsp;{{$post->comment}}</span>
                            <a href="/news/{{$post->id}}" class="btn-small-grey">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="b-img-s"><a href="/news/{{$post->id}}"><img src="{{asset('images/News/'.$post->featured_img)}}" alt=""/></a></div>
                </div>
            </article>
            @endif
            @endforeach

            <!-- PAGINATION -->
            <div class="pagination">
                <ul>
                    <li class="nav-arr prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li class="nav-arr next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
            </div>
        </div>
    </section>
@endsection