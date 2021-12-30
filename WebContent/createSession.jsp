<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@page import="java.sql.*,java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String name=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_database", "root", "root");
		Statement st=conn.createStatement();
		
		int i=st.executeUpdate("insert into logindetails(Username,Password) values('"+email+"','"+password+"')");
		out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
			 	session.setAttribute("name", name);
		         
		         response.sendRedirect("SearchFlights.jsp");     
 
%>

</body>
</html>