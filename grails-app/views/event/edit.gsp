<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 6/14/2017
  Time: 3:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'table.css')}">
</head>

<body>
<g:form controller="event" action="update">
    <g:render template="form"></g:render>
    <g:hiddenField name="id" value="${editEvent?.id}"></g:hiddenField>
    <g:submitButton name="edit" value="Update"></g:submitButton>
    <g:link controller="event" action="join">Cancel</g:link>
</g:form>
</body>
</html>