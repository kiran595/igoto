<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/19/2017
  Time: 5:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
</head>

<body>
<g:each in="${userlist}" var="list" status="i">
    <g:if test="${user.following.id.contains(list.id)}">
        ${list.profile.userName}
        <g:form controller="profile" action="unfollow">
            <g:hiddenField name="id" value="${list.id}"></g:hiddenField>
            <g:submitButton name="unfollow" value="Unfollow"></g:submitButton>
        </g:form>
    </g:if>
</g:each>
</body>
</html>