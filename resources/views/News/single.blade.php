@extends('Includes.main')

@section('content')
    <!-- Breadcrumb and title -->
    <section id="bc-t">
        <div class="container">
            <h1 class="blog-title">Recent News</h1>
            @foreach ($errors->all() as $error)
                <p class="alert alert-danger">{{ $error }}</p>
            @endforeach
        </div>
    </section>
    <!-- Content Section. If need sidebars use the tag: <aside>. If articles use tag: <article> -->
    <section id="blog-single">
        <div class="container">
            <!-- BLOG POST SINGLE -->
            <article class="blog-post">
                <div class="post-img"><img src="{{asset('images/News/'.$post->featured_img)}}" alt=""/></div>
                <div class="col-3">
                    <aside class="sidebar-right">
                        <div class="a-name">
                            <h3>{{$post->author}}</h3>
                        </div>
                        <ul class="date-a">
                            <li><span><i class="fa fa-calendar"></i>Date:</span><a href="#">{{$post->date}}</a></li>
                            <li><span><i class="fa fa-comment"></i>Comments:</span><a href="#">&nbsp;{{isset($commentCount->comment)?$commentCount->comment:0}}</a></li>
                        </ul>
                    </aside>
                    <ul class="post-nav">
                        <li><span><i class="fa fa-angle-left"></i></span></li>
                        <li><span><i class="fa fa-angle-right"></i></span></li>
                    </ul>
                </div>
                <div class="col-9">
                    <div class="post-title">
                        <h1>{{$post->title}}</h1>
                    </div>
                    <div class="post-content">
                        {!!$post->description!!}
                        <iframe width="560" height="315" style="border:0;" src="{{$post->video}}" allowfullscreen></iframe>

                        <!-- comment -->
                        <div class="comment-wrap">
                            <div class="comtitle"><h3>Comments</h3><span class="com-count">{{isset($commentCount->comment)?$commentCount->comment:0}}</span></div>
                            <!-- COMMENT POST 1 -->
                            @foreach($comments as $comment)
                            <div class="com-post">
                                <div class="avatar"><img src="{{asset('images/'.$comment->img)}}" alt=""></div>
                                <div class="message">
                                    <a class="author" href="#">{{$comment->name}}</a>
                                    <span class="dcp">{{$comment->date}}</span>
                                    <p>{{$comment->comment}}</p>
                                </div>
                            </div>
                            @endforeach
                            <!-- ADD COMMENT FORM -->
                            @auth
                            <div class="addc">
                                <form method="post" action="/comment/store/{{$post->id}}">
                                    @csrf
                                    <input type="text" name="email" class="col-12" hidden value="{{Auth::user()->email}}"/>
                                    <textarea rows="6" class="col-12" placeholder="Message..." name="comment"></textarea>
                                    <button class="btn btn-red">leave a comment</button>
                                </form>
                            </div>
                              @else
                                <p class="please-login">Please <a href="{{ route('login') }}">login</a> to make comment</p>
                            @endauth
                        </div>
                    </div><!-- POST CONTENT END -->
                </div>
            </article>

        </div>
    </section>
@endsection