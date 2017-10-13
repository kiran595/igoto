<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/18/2017
  Time: 9:52 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'table.css')}">
</head>

<body>

<g:form action="create">
    <g:render template="form"></g:render>
    <g:submitButton name="submit" value="Complete"></g:submitButton>
</g:form>
</body>
</html>