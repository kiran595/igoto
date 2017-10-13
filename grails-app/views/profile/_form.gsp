<table>
    %{--<tr>--}%
    %{--<td>Image</td>--}%
    %{--<td><input type="file" name="image"></td>--}%
    %{--</tr>--}%
    <tr>
        <td>Full Name</td>
        <td><g:textField name="fullName" value="${userinfo?.profile?.fullName}"></g:textField></td>
    </tr>
    %{--<tr>--}%
    %{--<td>Email</td>--}%
    %{--<td></td>--}%
    %{--</tr>--}%
    %{--<tr>--}%
    %{--<td>Password</td>--}%
    %{--<td>user ko password tana</td>--}%
    %{--</tr>--}%
    <tr>
        <td>User Name</td>
        <td><g:textField name="userName" value="${userinfo?.profile?.userName}"></g:textField></td>
    </tr>
    <tr>
        <td>Address</td>
        <td><g:textField name="address" value="${userinfo?.profile?.address}"></g:textField></td>
    </tr>
    <tr>
        <td>Birth Date</td>
        <td><g:textField name="dob" value="${userinfo?.profile?.dob}" placeholder="YYYY-MM-DD"></g:textField></td>
    </tr>
    <tr>
        <td>Gender</td>
        <td><label><g:radio name="sex" value="Male" checked="checked"/>&nbsp; Male</label>
            <label><g:radio name="sex" value="Female"/>&nbsp; Female</label></td>
    </tr>
    <tr>
        <td>Image</td>
        <td><input type="file" name="imageName"></td>
    </tr>
</table>