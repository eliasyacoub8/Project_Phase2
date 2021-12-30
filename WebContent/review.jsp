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

<%  	String fullname=request.getParameter("fullname");
		String address=request.getParameter("address");
		String age=request.getParameter("age");
		String phonenumber=request.getParameter("phonenumber");
		String email=request.getParameter("email");
		String identification=request.getParameter("identification");
		String ID=request.getParameter("ID");
		String country=request.getParameter("country");
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_database", "root", "root");
		Statement st=conn.createStatement();
		
		int i=st.executeUpdate("insert into registerdetails values('"+fullname+"','"+address+"','"+age+"','"+phonenumber+"','"+email+"','"+identification+"','"+ID+"','"+country+"')");
		out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>
<jsp:useBean id="registerdetails" class="registerdetails.registerdetails" scope="session"></jsp:useBean>  

        <jsp:setProperty property="fullname" name="registerdetails" />
        <jsp:setProperty property="address" name="registerdetails"  />
        <jsp:setProperty property="age" name="registerdetails"  />
		<jsp:setProperty property="phonenumber" name="registerdetails" />
		<jsp:setProperty property="email" name="registerdetails"  />
		<jsp:setProperty property="identification" name="registerdetails" />	
		<jsp:setProperty property="ID" name="registerdetails"  />
		<jsp:setProperty property="country" name="registerdetails" />
		
		 <%  response.sendRedirect("reviewdetails.jsp"); %> 
</body>
</html>
