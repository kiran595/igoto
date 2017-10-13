<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/18/2017
  Time: 11:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<g:form action="save_profile" enctype="multipart/form-data">
    <g:hiddenField name="id" value="${userinfo.profile.id}"></g:hiddenField>
    <g:render template="form"></g:render>
    <g:submitButton name="update" value="Update" onclick="return confirm('Update Your Profile?')"></g:submitButton>
</g:form>
</body>
</html>