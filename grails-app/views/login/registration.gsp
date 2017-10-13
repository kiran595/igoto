<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/13/2017
  Time: 2:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div class="container">
    <div class="col-md-6" style="margin-left:27%">
        <div class="modal-content">
            <div class="modal-header">
                %{--<button type="button" class="close" data-dismiss="modal">&times;</button>--}%
                <h4><span class="glyphicon glyphicon-lock"></span> REGISTER HERE!!!</h4>
            </div>
            <div class="modal-body">
                <g:form controller="user"  action="save">
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
                            <span class="glyphicon glyphicon-remove"></span> Register
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

%{--<h2>Reistration page</h2>--}%
%{--<g:form controller="user"  action="save">--}%
    %{--<g:hiddenField name="user_type" value="user"></g:hiddenField>--}%
    %{--<table>--}%
        %{--<tr>--}%
            %{--<td>Email</td>--}%
            %{--<td><g:field type="email" name="email"></g:field></td>--}%
        %{--</tr>--}%
        %{--<tr>--}%
            %{--<td>Password</td>--}%
            %{--<td><g:passwordField name="password"></g:passwordField></td>--}%
        %{--</tr>--}%
        %{--<tr>--}%
            %{--<td><g:submitButton name="register" value="Register"></g:submitButton></td>--}%
        %{--</tr>--}%
    %{--</table>--}%
%{--</g:form>--}%
</body>
</html>