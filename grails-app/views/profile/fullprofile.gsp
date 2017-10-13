<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/13/2017
  Time: 7:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
</head>

<body>

<g:form action="save_profile" enctype="multipart/form-data">
    <g:render template="form"></g:render>
    <g:submitButton name="submit" value="Complete"></g:submitButton>
</g:form>
</body>
</html>