<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<b>Congratulations <%= session.getAttribute("name") %></b><br>
<b>You Successfully booked your flight</b><br>

<jsp:useBean id="registerdetails" class="registerdetails.registerdetails" scope="session"></jsp:useBean>  

        Full name:<jsp:getProperty property="fullname" name="registerdetails" /><br>
        Address: <jsp:getProperty property="address" name="registerdetails" /><br>
        Age: <jsp:getProperty property="age" name="registerdetails" /><br>
		Phone Number: <jsp:getProperty property="phonenumber" name="registerdetails" /><br>
		Email: <jsp:getProperty property="email" name="registerdetails" /><br>
		Identification: <jsp:getProperty property="identification" name="registerdetails" /><br>	
		ID number: <jsp:getProperty property="ID" name="registerdetails" /><br>
		Country: <jsp:getProperty property="country" name="registerdetails"/><br>
		
		
		Flight Number: <%=session.getAttribute("flightnumber")%><br>
		Airline Name: <%=session.getAttribute("airlinename")%><br>
		Date of Travel: <%=session.getAttribute("dateoftravel")%><br>
</body>
</html>