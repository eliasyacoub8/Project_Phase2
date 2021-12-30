<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<form action="createSession.jsp" name="LoginForm" method="post" >
<table>
<tr valign="top">
<td width="20%">Enter your name</td>
<td><input name="username" type="text"
maxlength=20 required></td>
</tr>
<tr valign="top">
<td width="20%">Enter Your Email</td>
<td><input name="email" type="email"
maxlength=20 required></td>
</tr>
<tr valign="top">
<td width="20%">Enter your Password</td>
<td><input name="password" type="password"
maxlength=20 required></td>
</tr>
</table>
<input type="submit" value="Login">
<input type="reset" value="Reset">

</form>
<a href="Changethepassword.jsp"><button>Change Your Password</button></a>
</body>
</html>