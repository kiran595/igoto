<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/13/2017
  Time: 1:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="index.gsp"><g:message code="default.home.label"/></a></li>
        <li><g:link action="create">Add Category</g:link></li>
        <li style="float: right;">
            <g:form action="search">
                <g:textField name="search"></g:textField>
                <g:submitButton name="search" value="Search"></g:submitButton>
            </g:form>
        </li>
    </ul>
</div>
<table>
    <thead>
    <tr>
        <th>SN</th>
        <th>Name</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${categorylist}" var="list" status="i">
        <tr>
            <td>${i+1}</td>
            <td>${list.cat_name}</td>
            <td><g:link action="edit" id="${list.id}">Edit</g:link> </td>
            <td><g:link action="delete" id="${list.id}" onclick="return confirm('Are you Sure?')">Delete</g:link> </td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>