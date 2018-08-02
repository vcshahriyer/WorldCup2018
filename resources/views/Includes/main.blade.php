<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Russia 2018</title>
    <meta name="description" content="HTML framework description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="{{asset('images/favicon-russia.png')}}" type="image/x-icon">
    <!-- Styles -->
    <link rel="stylesheet" href="{{asset('css/general.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
    <!-- Google fonts -->
    <link href="http://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700,300italic,400italic,500italic,700italic%7COswald:400,300,700&amp;subset=latin,latin-ext"
          rel="stylesheet" type="text/css">
    <!-- Font awesome -->
    <link rel="stylesheet" href="{{asset('css/font-awesome.css')}}">
    <!-- Modernizr -->
    <script type='text/javascript' src='{{asset('js/libs/modernizr-2.5.3.min.js')}}'></script>

    <!-- Semantic HTML5 Support on old IE -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

<!-- Header Section. If need a menu section, use tag: <nav> -->
@yield('slider')
<header>
    <div class="top">
        <div class="container">
            <div class="col-12">
                <div class="col-2 logo-wrap">
                    <a href="/"><div class="logo"><img src="{{asset('images/russia-worldcup-logo.png')}}" alt=""/></div></a>
                </div>
                <nav id="top-menu">
                    <ul class="clearfix">
                        <li class="{{ Route::is('home') ? 'active' : '' }}"><a href="/">Home</a></li>
                        <li class="{{ Route::is('teams*') ? 'active' : '' }}"><a href="{{route('teams')}}">Team</a></li>
                        <li class="{{ Route::is('news') ? 'active' : '' }}"><a href="{{ route('news') }}">News</a></li>
                        <li class="{{ Route::is('stadiums') ? 'active' : '' }}"><a href="{{route('stadiums')}}">Stadiums</a></li>
                        <li class="{{ Route::is('awards') ? 'active' : '' }}"><a href="{{route('awards')}}">Awards</a></li>
                        <li class="dropdown"><a href="#">Matches</a>
                            <ul class="dropdown-menu">
                                <li class="{{ Route::is('point.table') ? 'active' : '' }}"><a href="{{route('point.table')}}">Groups</a></li>
                                <li class="{{ Route::is('matches.all') ? 'active' : '' }}"><a href="{{route('matches.all')}}">All Match</a></li>
                            </ul>
                        </li>
                    </ul>
                    <a href="#" id="pull">Menu</a>
                </nav>
                <nav class="mobilemenu">
                    <select>
                        <option value="/">Menus</option>
                        <option {{ Route::is('home') ? 'selected' : '' }} value="/">Home</option>
                        <option {{ Route::is('teams') ? 'selected' : '' }} value="{{route('teams')}}">Team</option>
                        <option {{ Route::is('news') ? 'selected' : '' }} value="{{ route('news') }}">News</option>
                        <option {{ Route::is('stadiums') ? 'selected' : '' }} value="{{route('stadiums')}}">Stadiums</option>
                        <option {{ Route::is('awards') ? 'selected' : '' }} value="{{route('awards')}}">Awards</option>
                        <option {{ Route::is('matches.all') ? 'selected' : '' }} value="{{route('matches.all')}}">All Match</option>
                        <option {{ Route::is('point.table') ? 'selected' : '' }} value="{{route('point.table')}}">Groups</option>
                    </select>
                </nav>
                @if (Route::has('login'))
                <div class="login">
                    @auth
                        <a href="{{ route('home') }}"><span id="icon-user"><i class="fa fa-user"></i>{{{str_limit(Auth::user()->name,14)}}}</span></a><a href="{{ url('/logout') }}"><span>logout</span></a>
                        @else
                    <a href="{{ route('login') }}"><span id="icon-user"><i class="fa fa-user"></i>log in</span></a><a href="{{ route('register') }}"><span><i class="fa fa-book"></i>register</span></a>
                    @endauth
                </div>
                @endif
            </div>
        </div>
    </div>
</header>

@yield('content')

<!-- Footer Section -->
<footer>
    <div class="container">
        <div class="col-4" id="footer_left"><img  src="{{asset('images/footer_left.png')}}" alt=""/></div>
        <div class="col-6 footer_social">
            <div class="col-4">
                <div class="social-icon">
                    <ul id="social">
                        <li><a href="#"><img src="{{asset('images/soc-twitter.png')}}" alt=""/></a></li>
                        <li><a href="#"><img src="{{asset('images/soc-facebook.png')}}" alt=""/></a></li>
                        <li><a href="#"><img src="{{asset('images/soc-g.png')}}" alt=""/></a></li>
                        <li><a href="#"><img src="{{asset('images/soc-play.png')}}" alt=""/></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-6"><p class="copyright">© 2018 - All Rights Reserved Raghib Shahariyer</p></div>
        </div>
        <div class="col-2">
            <h3>Information</h3>
            <ul>
                <li><a href="{{route('home')}}">Home</a></li>
                <li><a href="{{route('teams')}}">Team</a></li>
                <li><a href="{{route('stadiums')}}">Stadiums</a></li>
                <li><a href="{{route('news')}}">News</a></li>
                <li><a href="{{route('awards')}}">Awards</a></li>

            </ul>
        </div>
    </div>
</footer>

<!-- Libs -->
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script
        src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
        integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
        crossorigin="anonymous"></script>
<script type='text/javascript' src="{{asset('js/libs/jquery.flexslider-min.js')}}"></script>
<script src="{{asset('js/jquery.bxslider.min.js')}}"></script>

<!-- Custom -->
<script src="{{asset('js/scripts.js')}}"></script>
</body>
</html>