<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  
<title>sql:query Tag</title>  
</head>  
<body>  
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/project_database"  
     user="root"  password="root"/>  

<!-- sql:query  tag --> 
<sql:query dataSource="${db}" var="rs">  
	SELECT * from flightdetails
</sql:query>  
   
   
<table border="2" width="100%">  
<tr>  
<th>Flight Number</th>  
<th>Airline Name</th> 
<th>Date of Travel</th>  
<th>Departure Time</th>  
<th>Arrival Time</th>  
 <th>Reserve a Flight</th>
</tr>  
	<c:forEach var="table" items="${rs.rows}">  
		<tr>  
			<td><c:out value="${table.FlightNumber}"/></td>  
			<td><c:out value="${table.AirlineName}"/></td> 
			<td><c:out value="${table.DateofTravel}"/></td>  
			<td><c:out value="${table.DepartureTime}"/></td>  
			<td><c:out value="${table.ArrivalTime}"/></td>
			
			<td>
			<form name="reserveSubmitForm" action="trial.jsp">
				<input type="submit" name="reserveButton" value="Reserve">
				<input type="hidden" name="flightno" value="${table.FlightNumber}">
				<input type="hidden" name="airlinename" value="${table.AirlineName}">
				<input type="hidden" name="dateoftravel" value="${table.DateofTravel}">
				<input type="hidden" name="deptime" value="${table.DepartureTime}">
				<input type="hidden" name="arrivaltime" value="${table.ArrivalTime}">
			</form>
		</td>
		</tr>  
	</c:forEach>  
</table>  

</body>  
</html>  