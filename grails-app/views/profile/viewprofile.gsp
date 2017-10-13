<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 6/5/2017
  Time: 10:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'table.css')}">
</head>

<body>
<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <h1 style="font-family: Supercell-Magic">Profile Details </h1>
        <div class="card">
            <g:img dir="/images/profilepic" file="${profile?.image}" width="100"></g:img>

        </div>
        <div class="container col-md-12">
            <label>Full Name</label>
            <div><h3 class="form-control">${profile?.fullName}</h3>
                <label>Username</label>
                <h3 class="form-control">${profile?.userName}</h3>
                %{--follow unfollow rakhney--}%
            </div>
        </div>
    </div>
</div>
<g:if test="${event[0]?.user?.id == sessionUser?.id}">
<h3>My Events</h3>
<div>
<table class="responstable">
    <thead>
    <tr>
    <th>Event Name</th>
    <th>Event Date</th>
    <th>Category</th>
    <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${event}" var="list" status="i">

            <tr>
                <td>${list?.event_name}</td>
                <td>${list?.event_date}</td>
                <td>${list?.category?.cat_name}</td>

                <td><g:link controller="event" action="edit" id="${list?.id}">Edit</g:link></td>
                <td><g:link controller="event" action="delete" id="${list?.id}">Delete</g:link></td>
            </tr>
        </tbody>
    </g:each>
    </table>
</div>
</g:if>
</body>
</html>