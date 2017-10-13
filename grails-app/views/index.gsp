<html xmlns="http://www.w3.org/1999/html">
    <head>
%{--<link href="<g:createLinkTo dir="templates" file="css/bootstrap.css"/>" rel="stylesheet">--}%
<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'style.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css',file: 'table.css')}">
<script src="${resource(dir: 'js',file: 'jquery.js')}"></script>
<script src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
</head>
<body>

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
            <g:link controller="event" action="showPublic">igoto</g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><g:link controller="event" action="showPublic">Home</g:link> </li>
                %{--**********************************SORT BY DATE AND CATEGORY********************************************--}%
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
                <li><a href="#">Contact Us</a></li>
            </ul>

        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Hello User <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><g:link controller="login" action="index">Log In</g:link></li>
                    <li role="separator" class="divider"></li>
                    <li><g:link controller="login" action="registration">Sign Up</g:link></li>
                </ul>
            </li>
        </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<!-- Container -->
<div class="jumbotron">
    %{--<img class="img-responsive " src="${resource(dir: 'images', file: 'event1.jpg')}"/>--}%
    <div class="container text-center">
        <h1>WELCOME TO EVENTBYTE!</h1>
        <h3><em>Create and Find Events</em></h3>
        <p><b>EventByte helps you to find the events you like</b></p>
        <!-- <button class="btn btn-primary" data-toggle="modal" data-target="#loginmodal">Login</button>
   -->  <g:form controller="login" action="registration">
        <g:submitButton name="signup" class="btn btn-primary btn-lg">Sign Up</g:submitButton>
        </g:form>
        <br>
        <br>
        %{--<div>--}%
            %{--<g:form controller="event" action="search">--}%
                %{--<g:textField name="keyword" value="${params.keyword}" placeholder="Search for public events"></g:textField>--}%
                %{--<g:submitButton name="search" value="search" class="btn btn-default">Search</g:submitButton>--}%
            %{--</g:form>--}%
        %{--</div>--}%
    </div>
</div>


<!-- Carousel -->
%{--<div class="container">--}%
    %{--<div id="myCarousel" class="carousel slide" data-ride="carousel">--}%
        %{--<!-- Indicators -->--}%
        %{--<ol class="carousel-indicators">--}%
            %{--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>--}%
            %{--<li data-target="#myCarousel" data-slide-to="1"></li>--}%
            %{--<li data-target="#myCarousel" data-slide-to="2"></li>--}%
        %{--</ol>--}%
        %{--<!-- Wrapper for slides -->--}%
        %{--<div class="carousel-inner" role="listbox">--}%
            %{--<div class="item active">--}%
                %{--<g:img dir="/images" file="carasol 1"></g:img>--}%
                %{--<div class="carousel-caption">--}%

                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="item">--}%
                %{--<g:img dir="/images" file="carasol 2"></g:img>--}%
                 %{--<div class="carousel-caption">--}%
                    %{--<h3>Chicago</h3>--}%
                    %{--<p>Thank you, Chicago - A night we won't forget.</p>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="item">--}%

                %{--<div class="carousel-caption">--}%
                    %{--<h3>LA</h3>--}%
                    %{--<p>Even though the traffic was a mess, we had the best time.</p>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%

        %{--<!-- Left and right controls--}%
  %{----> <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">--}%
        %{--<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>--}%
        %{--<span class="sr-only">Previous</span>--}%
    %{--</a>--}%
        %{--<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">--}%
            %{--<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>--}%
            %{--<span class="sr-only">Next</span>--}%
        %{--</a>--}%
    %{--</div>--}%
%{--</div>--}%

<!-- Latest Events -->
<div id="latestevents" class="bg-1">
    <div class="container">
        <div class="row slideanim">
            <h3 class="text-center"><b>CHECK OUT SOME EVENTS</b></h3>
            %{--<p class="text-center">Lorem ipsum <br> Find What you Like</p>--}%
            %{--<ul class="list-group">--}%
                %{--<li class="list-group-item">Programming Event <span class="label label-success">Event Finished!</span></li>--}%
                %{--<li class="list-group-item">Blood Donation <span class="label label-warning">Event Ongoing!</span></li>--}%
                %{--<li class="list-group-item">Blood Donation <span class="label label-danger">Event Cancelled!</span></li>--}%
                %{--<li class="list-group-item">Health Event <span class="badge">3</span></li>--}%
            %{--</ul>--}%
            <g:form style="float:left;">
                <g:each in="${eventinfo}" var="list" status="i">
                    <table style="position:relative;top:5%;">
                        <tr>
                            <td><g:if test="imageName">
                            <g:img dir="/images/profilepic" file="${list.user.profile.image}" width="100"></g:img>
                        </g:if>
                            </td>
                            <td style="position: relative;left: 20%">
                            ${list.user.profile.userName}
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                    %{--<table>--}%
                        %{--<tr>--}%
                            %{--<td> </td>--}%
                        %{--</tr>--}%
                    %{--</table>--}%

                    <table class="responstable" style="height: 10px;width:800px;">
                        <tr>
                            <td>Event Name</td>
                            <td>${list.event_name}</td>
                        </tr>
                        <tr>
                            <td>Event Type</td>
                            <td>${list.event_type}</td>
                        </tr>
                        <tr>
                            <td>Venue</td>
                            <td>${list.venue}</td>
                        </tr>
                        <tr>
                            <td>Organizer</td>
                            <td>${list.organizers_name}</td>
                        </tr>
                        <tr>
                            <td>Contact</td>
                            <td>${list.contact}</td>
                        </tr>
                        <tr>
                            <td>Event Time</td>
                            <td>${list.event_time}</td>
                        </tr>
                        <tr>
                            <td>Event Date</td>
                            <td><g:formatDate date="${list?.event_date}" type="date" style="LONG"></g:formatDate></td>
                            %{--<td><g:formatDate date=" ${list.event_date}" type="date" style="LONG"></g:formatDate></td>--}%
                        </tr>
                        <tr>
                            <td>Category</td>
                            <td>${list.category.cat_name}</td>
                        </tr>
                    </table>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                </g:each>
            </g:form>
        </div>
    </div>
    %{--<div class="col-md-3 col-md-offset-5"></div>--}%
    %{--<div class="pagination ">--}%
        %{--<a href="#">&laquo;</a>--}%
        %{--<a href="#" class="active">1</a>--}%
        %{--<a href="#">2</a>--}%
        %{--<a href="#">3</a>--}%
        %{--<a href="#">&raquo;</a>--}%
    %{--</div>--}%
</div>
</div>


%{--<div class="pagination">--}%
%{--<g:paginate total="${totalcount}" params="${params}"></g:paginate>--}%
%{--</div>--}%

<!-- Footer -->
<footer class="text-center">
    <div class="container">
        <p class="text-center">Pujan Bajracharya &copy 2017 <br>All Rights Reserved<br>
            Designed and Developed by <a href="https://www.w3schools.com" data-toggle="tooltip" title="Pujan Bajra">Pujan Bajra</a></p>
        <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
    </div>
</footer>

</body>
</html>