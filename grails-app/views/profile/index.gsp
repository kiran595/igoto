<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/13/2017
  Time: 8:08 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <g:javascript library="jquery"/>
    <title>Profile Page</title>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'table.css')}">
    <r:layoutResources/>
</head>

<body>
<g:if test="${flash.message}">
    <div>${flash.message}</div>
</g:if>

%{--NAVIGATION BAR--}%
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
                <li style="float: right;">
                    <g:link controller="login" action="logout">Logout</g:link>
                </li>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

%{--JUMBOTRON--}%
%{--<div class="jumbotron">--}%
%{--<div class="container text-center">--}%
%{--<h1>Welcome ${user.profile.userName} to<br/> igoto!!</h1>--}%
%{--<h3><em>Create and Find Events</em></h3>--}%
%{--<p><b>EventByte helps you to find the events you like</b></p>--}%
%{--<div>--}%
    %{--<g:form action="search" controller="profile">--}%
        %{--<g:textField name="keyword" value="${params.keyword}" placeholder="Search for user"></g:textField>--}%
        %{--<g:submitButton name="search" value="search">Search</g:submitButton>--}%
    %{--</g:form></div>--}%
%{--</div>--}%
%{--</div>--}%
%{--<div class="container">--}%
<div class="row" style="padding-top: 60px;">
%{--LEFT NAVIGTION BAR--}%
    <div class="col-md-2" style="padding-left: 30px;padding-top: 20px;">
            <g:each in="${use}" var="list">
                <g:if test="${list?.profile?.id!=null}">
                    <ul style="list-style-type: none;">
                        <li><g:if test="imageName">
                            <g:img dir="/images/profilepic" file="${list?.profile?.image}" width="100"></g:img>
                            </g:if></li>
                    </ul>
                    <ul style="list-style-type: none; font-size: 25px;">
                        <li style="padding-top:10px; padding-left: 17px;"><g:link controller="profile" action="viewprofile" id="${list?.id}"> ${list?.profile?.userName}</g:link></li>
                    </ul>
                    <ul style="list-style-type: none; font-size: 15px;">
                        <li style="padding-top:10px; padding-left: 17px;"><g:link controller="profile" action="edit">Edit Profile</g:link></li>
                    </ul>
                    <ul style="list-style-type: none; font-size: 15px;">
                        <li style="padding-top:10px; padding-left: 17px;">
                            <g:if test="${use?.profile?.id==null||use?.profile?.fullName==null||use?.profile?.userName==null||use?.profile?.address==null||use?.profile?.dob==null||use?.profile?.sex==null}">
                                <g:link controller="profile" action="fullprofile">Complete Your Profile</g:link>
                            </g:if>
                        </li>
                    </ul>
                    <hr style="border-color: #808080"/>
                    <ul style="list-style-type: none; font-size: 15px;">
                        <li style="padding-left: 17px;"><g:link controller="profile" action="listfollowing">Following</g:link></li>
                        <li style="padding-top:10px; padding-left: 17px;"><g:link controller="profile" action="listfollower">Followers</g:link></li>
                    </ul>
                    <hr style="border-color: #808080"/>
                    <ul style="list-style-type: none; font-size: 15px;">
                        <li style="padding-left: 10px;"><g:link controller="event" action="index">Crete events</g:link></li>
                    </ul>
                </g:if>
            </g:each>
        <hr style="border-color: #808080"/>

    %{--PEOPLE YOU MAY KNOW--}%
        <div>
            <ul style="list-style-type: none; font-size: 15px;">
                <li>People You May Know</li>
            </ul>
            <g:each in="${peopleYouKnow}" var="list">
            <g:if test="${list?.profile?.id != user?.profile?.id}">
            <ul style="list-style-type: none; font-size: 15px;">
                <li style="padding-left: 10px;"> <g:img dir="/images/profilepic" file="${list?.profile?.image}" width="50"></g:img></li>
                <li style="padding-left: 10px;"><g:link controller="profile" action="viewprofile" id="${list?.profile?.id}">${list?.profile?.userName}</g:link> </li>
            </ul>
            </g:if>

        </g:each>
        <hr style="border-color: #808080"/>
        </div>

    </div>

<div class="col-md-9">
    %{--SEARCH BAR--}%
        <g:form style="padding-top: 25px; padding-left: 320px;">
            <g:textField name="keyword" value="${params.keyword}" placeholder="Search for user"></g:textField>
            <g:submitToRemote value="Search" url="[controller: 'profile', action: 'search']" update="searchuser"></g:submitToRemote>
        </g:form>
    %{--<g:remoteLink controller="profile" action="search" update="searchuser">Search</g:remoteLink>--}%

    %{--SEARCH RESULT--}%
    <div id="searchuser"></div>


    <hr style="border-color: #808080"/>

    %{--RECOMMENDED EVENT LIST--}%
        <div>
        <h3>Recommendation</h3>
        <g:each in="${eventList}" var="list" status="i">
            <g:if test="${list?.user?.id != user?.id}">
                    <table style="position: relative">
                        <tr>
                            <td><g:if test="imageName">
                                <g:img dir="/images/profilepic" file="${list?.user?.profile?.image}" width="100"></g:img>
                            </g:if></td>
                             <td style="position: relative;left: 20%">${list?.user?.profile?.userName}</td>
                            <td style="position: relative;left: 85%">
                                <g:if test="${recommendList?.event?.id?.contains(list?.id)}">

                                    <g:link controller="event" action="unjoin" id="${list.id}">Un-Join Event</g:link>
                                </g:if>
                                <g:else>
                                    <g:link  controller="event" action="join" id="${list.id}">Join Event</g:link>
                                </g:else>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <table class="responstable">
                        <tr>
                            <td>Event Name</td>
                            <td>${list.event_name}</td>
                        </tr>
                        <tr>
                            <td>Event Type</td>
                            <td>${list.event_type}</td>
                        </tr>
                        <tr>
                            <td>Event Venue</td>
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

                        </tr>
                        <tr>
                            <td>Category</td>
                            <td>${list.category.cat_name}</td>
                        </tr>
                        <tr>
                            <td>Description</td>
                            <td><p>${list.description}</p></td>
                        </tr>
                    </table>
                    &nbsp;
                    &nbsp;
                    &nbsp;

            %{--<g:link controller="event" action="join" id="${eventinfo.id}">Join</g:link>--}%
            </g:if>
            </g:each>
        </div>

    <hr style="border-color: #808080"/>
%{--SUBSCRIBER'S EVENT LIST--}%
    <div>
    <h3>Subscription</h3>
        <g:each in="${sevent}" var="slist">
            <g:if test="${use?.following?.id?.contains(slist?.user?.id)}">
               %{--<table>--}%
                ${slist.user.profile.userName}
                <g:if test="imageName">
                <g:img dir="/images/profilepic" file="${slist?.user?.profile?.image}" width="100"></g:img>
                </g:if>
                <g:if test="${recommendList?.event?.id?.contains(slist.id)}">
                    <g:link controller="event" action="unjoin" id="${slist?.id}">Un-Join</g:link>
                    </g:if>
                <g:else>
                    <g:link controller="event" action="join" id="${slist?.id}">Join</g:link>
                </g:else>

                %{--</table>--}%
            <table class="responstable">
            <tr>
            <td>Event Name</td>
            <td>${slist.event_name}</td>
            </tr>
            <tr>
            <td>Event Type</td>
            <td>${slist.event_type}</td>
            </tr>
            <tr>
            <td>Event Venue</td>
            <td>${slist.venue}</td>
            </tr>
            <tr>
            <td>Organizer</td>
            <td>${slist.organizers_name}</td>
            </tr>
            <tr>
            <td>Contact</td>
            <td>${slist.contact}</td>
            </tr>
            <tr>
            <td>Event Time</td>
            <td>${slist.event_time}</td>
            </tr>
            <tr>
            <td>Event Date</td>
                <td><g:formatDate date="${slist?.event_date}" type="date" style="LONG"></g:formatDate></td>

            </tr>
            <tr>
            <td>Category</td>
            <td>${slist.category.cat_name}</td>
            </tr>
            <tr>
            <td>Descrition</td>
            <td>${slist.description}</td>
            </tr>
            </table>
            </g:if>
                %{--<g:form controller="event" action="join">--}%
                    %{--<table style="position: relative">--}%
                        %{--<tr>--}%
                            %{--<td><g:if test="imageName">--}%
                                %{--<g:img dir="/images/profilepic" file="${slist?.user?.profile?.image}" width="100"></g:img>--}%
                            %{--</g:if></td>--}%
                            %{--<td style="position: relative;left: 20%">${slist?.user?.profile?.userName}</td>--}%
                            %{--<td style="position: relative;left: 120%">--}%
                                %{--<g:hiddenField name="eventid" value="${slist.id}"></g:hiddenField>--}%
                                %{--<g:submitButton name="join" value="Join Event"></g:submitButton>--}%
                            %{--</td>--}%
                        %{--</tr>--}%

                    %{--</table>--}%
                    %{--<table class="responstable">--}%
                        %{--<tr>--}%
                            %{--<td>Event Name</td>--}%
                            %{--<td>${slist.event_name}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Event Type</td>--}%
                            %{--<td>${slist.event_type}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Event Venue</td>--}%
                            %{--<td>${slist.venue}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Organizer</td>--}%
                            %{--<td>${slist.organizers_name}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Contact</td>--}%
                            %{--<td>${slist.contact}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Event Time</td>--}%
                            %{--<td>${slist.event_time}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Event Date</td>--}%
                            %{--<td>${slist.event_date}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Category</td>--}%
                            %{--<td>${slist.category.cat_name}</td>--}%
                        %{--</tr>--}%
                        %{--<tr>--}%
                            %{--<td>Descrition</td>--}%
                            %{--<td>${slist.description}</td>--}%
                        %{--</tr>--}%
                    %{--</table>--}%
                    %{--&nbsp;--}%
                    %{--&nbsp;--}%
                    %{--&nbsp;--}%
                %{--</g:form>--}%
            %{--<g:link controller="event" action="join" id="${eventinfo.id}">Join</g:link>--}%
            %{--</g:if>--}%
        </g:each>
    </div>

</div>
%{--</div>--}%
<r:layoutResources/>
</body>
</html>