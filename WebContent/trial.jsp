<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<%-- jsp directives --%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<title>Flight Details</title>
</head>

<body>
<%	String flightnumber=request.getParameter("flightno");
String airline=request.getParameter("airlinename");
String dateoftravel=request.getParameter("dateoftravel");


session.setAttribute("flightnumber", flightnumber);
session.setAttribute("airlinename", airline);
session.setAttribute("dateoftravel", dateoftravel);
%>
	<h2>Reservation form</h2>
	
	<h3>Flight Details</h3>

	<table border="1" cellpadding="5">
	
		<tr>
		<td>Flight Number</td>
		<td>${param.flightno}</td>
		</tr>
		
		<tr>
		<td>Airline Name</td>
		<td>${param.airlinename}</td>
		</tr>
		
		<tr>
		<td>Date of Travel</td>
		<td>${param.dateoftravel}</td>
		</tr>
		
		<tr>
		<td>Departure Time</td>
		<td>${param.deptime}</td>
		</tr>
		
		<tr>
		<td>Arrival Time</td>
		<td>${param.arrivaltime}</td>
		</tr>
		</table>
		
		<p>The following flight is selected for reservation. Enter your details, payment info and confirm.</p><br>
		
		<a href="register.jsp"><button>Confirm</button></a>
	
	

</body>

</html>	
	