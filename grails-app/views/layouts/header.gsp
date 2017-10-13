<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="igoto"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'style.css')}">
    <script src="${resource(dir: 'js',file: 'jquery.min.js')}"></script>
    <script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
<g:layoutHead/>
<r:layoutResources />
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<!-- Navigation Bar -->
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">EventByte</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            %{--<li><a href="#latestevents">Latest Events</a></li>--}%
            %{--<li><a href="#popularevents">Popular Events <span class="sr-only">(current)</span></a></li>--}%
            %{--<li class="dropdown">--}%
                %{--<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Categories <span class="caret"></span></a>--}%
                %{--<ul class="dropdown-menu">--}%
                    %{--<li><a href="#">Information Technology</a></li>--}%
                    %{--<li><a href="#">Health</a></li>--}%
                    %{--<li><a href="#">Science</a></li>--}%
                    %{--<li><a href="#">Education</a></li>--}%
                    %{--<li><a href="#">Sports</a></li>--}%
                %{--</ul>--}%
            %{--</li>--}%
            <li><a href="#contactus">Contact Us</a></li>
        </ul>
        <g:if test="${!session.userid}">
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Hello User <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Sign Up</a></li>
                </ul>
            </li>
        </ul>
        </g:if>
        <g:else>
            <li style="float: right;">
            <g:link controller="login" action="logout">Logout</g:link>
            </li>
        </g:else>
    </div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->
</nav>

<!-- Container -->
%{--<div class="jumbotron">--}%
    %{--<div class="container text-center">--}%
        %{--<h1>WELCOME TO EVENTBYTE!</h1>--}%
        %{--<h3><em>Create and Find Events</em></h3>--}%
        %{--<p><b>EventByte helps you to find the events you like</b></p>--}%
        %{--<!-- <button class="btn btn-primary" data-toggle="modal" data-target="#loginmodal">Login</button>--}%
   %{---->--}%

        %{--<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Sign up</button>--}%
        %{--<br>--}%
        %{--<br>--}%
        %{--<div>--}%
            %{--<form>--}%
                %{--<input type="text" placeholder="Search Here " required>--}%
                %{--<!-- <input type="button" value="Search"> -->--}%
                %{--<button class="btn btn-default" value="Search">Search</button>--}%
            %{--</form>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</div>--}%
<g:layoutBody/>
</body>
</html>