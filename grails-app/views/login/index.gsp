<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/3/2017
  Time: 11:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'flatlybootstrap.css')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir:'css',file: 'style.css')}">

</head>

<body>
<div class="container">
<div class="col-md-6" style="margin-left:27%">
<div class="modal-content">
<div class="modal-header">
    %{--<button type="button" class="close" data-dismiss="modal">&times;</button>--}%
    <h4><span class="glyphicon glyphicon-lock"></span>LOG IN!!</h4>
</div>
<div class="modal-body">
<g:form name="frmLogin" action="postLogin" class="login">
                    <div class="form-group">
                        <label for="email"><span class="glyphicon glyphicon-user"></span> Email</label>
                        <g:field name="email" type="email" class="form-control" id="email" placeholder="Enter email address"></g:field>
                    </div>
                    <div class="form-group">
                        <label for="pword"><span class="glyphicon glyphicon-user"></span> Password</label>
                        <g:passwordField name="password" type="password" class="form-control" id="pword" placeholder="Enter your password"></g:passwordField>
                    </div>


            <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                    <span class="glyphicon glyphicon-remove"></span> Login
                </button>
                <button type="submit" class="btn btn-primary">
                    <g:link controller="event" action="showPublic">Cancel</g:link>
                </button>
            </div>

</g:form>

</div>
        </div>
    </div>
</div>
</body>
</html>