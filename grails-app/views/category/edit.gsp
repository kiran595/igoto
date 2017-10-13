<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/13/2017
  Time: 1:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<g:form action="update">
    <g:hiddenField name="id" value="${catinfo.id}"></g:hiddenField>
    <g:render template="form"></g:render>
    <fieldset class="buttons">
        <g:submitButton name="update" value="Update"></g:submitButton>
        %{--<g:submitButton name="cancel" value="Cancel"></g:submitButton>--}%
    </fieldset>
</g:form>
</body>
</html>