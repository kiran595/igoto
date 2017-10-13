<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/13/2017
  Time: 1:17 PM
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
        <li><a class="home"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<g:form action="save">
    <g:render template="form"></g:render>
    <fieldset class="buttons">
        <g:submitButton name="submit" value="Submit"></g:submitButton>
    </fieldset>
</g:form>
</body>
</html>