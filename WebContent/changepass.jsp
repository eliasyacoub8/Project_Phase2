<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
	<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Password Changed</title>
</head>
<body>

<%
String email=request.getParameter("email");
String oldpassword=request.getParameter("old");
String newpassword=request.getParameter("new");
String Confirmpassword=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/project_database";
Connection con=null;
String pass="";
String em="";
try{
	if(newpassword.equals(Confirmpassword)){
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from logindetails where password='"+oldpassword+"'");
while(rs.next()){
em=rs.getString(1);
pass=rs.getString(2);
} System.out.println(email+ " "+pass);
if(pass.equals(oldpassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update logindetails set password='"+newpassword+"' where Username='"+email+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
	else{
		
		out.println("Passwords don't match<br>");
	}
}
	
catch(Exception e){
out.println(e);
}

%>

</body>
</html>