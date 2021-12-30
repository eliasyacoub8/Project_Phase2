<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register for the Flight</title>
</head>
<body>

<form action="review.jsp" method="post" >
	 Full Name <input type="text" name="fullname" required ><br>
  	 Address	<input type="text" name="address" required><br>
  	 Age	<input type="number" name="age" required><br>
  	 Mobile Number	<input type="number" name="phonenumber" required><br>
  	 Email	<input type="text" name="email" required><br>
  	 
  	 <label for="identification">Please provide your identification</label>

<select name="identification" required>
  <option value="none">------</option>
  <option value="SSN">SSN</option>
  <option value="Passport">Passport Number</option>
  <option value="Driving License">Driving License</option>
</select> 
	ID number <input type="password" name="ID" required><br>
	Country <input type="text" name="country"  required><br>
	<input type="submit" value="Review Page">
</form>
	
</body>
</html>