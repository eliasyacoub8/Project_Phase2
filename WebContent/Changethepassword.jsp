<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<body>
<form action="changepass.jsp" method="post">

<tr><td>Email</td>
<td><input type="email" name="email" required></td></tr>

<tr><td>Old Password</td>
<td><input type="password" name="old" required></td></tr>

<tr><td>New Password</td>
<td><input type="password" name="new" id='new'required></td></tr>

<tr><td>Confirm Password</td>
<td><input type="password" name="confirm" required></td></tr>

<tr><td><input type="submit" value="Change the Password">
</td></tr>

</table>


</form>

</body>
</html>