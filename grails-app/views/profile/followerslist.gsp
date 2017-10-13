<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 6/3/2017
  Time: 3:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<g:each in="${userlist}" var="list" status="i">
    <g:if test="${user.followers.id.contains(list.id)}">
        ${list.profile.userName}
        <g:form controller="profile" action="unfollow">
            <g:hiddenField name="id" value="${list.id}"></g:hiddenField>
            <g:submitButton name="follow" value="Follow"></g:submitButton>
        </g:form>
    </g:if>
</g:each>
</body>
</html>