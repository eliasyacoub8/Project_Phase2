<%@ page language="java" %>
<html>
<head><title>Date Validation in JSP</title>
<script language = "Javascript">
var separator= "/";
var minYear=1900;
var maxYear=2500;

function isInteger(s){
var i;
for (i = 0; i < s.length; i++){ 
// Check that current character is a number or not.
var c = s.charAt(i);
if (((c < "0") || (c > "9"))) return false;
}
// All characters are numbers.
return true;
}

function stripCharsInBag(s, bag){
var i;
var returnString = "";
// Search through string's characters one by one.
// If character is not in bag, append to returnString.
for (i = 0; i < s.length; i++){ 
var c = s.charAt(i);
if (bag.indexOf(c) == -1) returnString += c;
}
return returnString;
}

function daysInFebruary (year){
// February has 29 days in any year evenly divisible by four,
// EXCEPT for centurial years which are not also divisible by 400.
return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
for (var i = 1; i <= n; i++) {
this[i] = 31
if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
if (i==2) {this[i] = 29}
} 
return this
}

function isDate(dtStr){
var daysInMonth = DaysArray(12)
var pos1=dtStr.indexOf(separator)
var pos2=dtStr.indexOf(separator,pos1+1)
var strMonth=dtStr.substring(0,pos1)
var strDay=dtStr.substring(pos1+1,pos2)
var strYear=dtStr.substring(pos2+1)
strYr=strYear
if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
for (var i = 1; i <= 3; i++) {
if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
}
month=parseInt(strMonth)
day=parseInt(strDay)
year=parseInt(strYr)
if (pos1==-1 || pos2==-1){
alert("The date format should be : MM/DD/YYYY")
return false
}
if (strMonth.length<1 || month<1 || month>12){
alert("Please enter a valid month")
return false
}
if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
alert("Please enter a valid day")
return false
}
if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
alert("Please enter a valid 4 digit year between "+minYear+" and "+maxYear)
return false
}
if (dtStr.indexOf(separator,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, separator))==false){
alert("Please enter a valid date")
return false
}
alert("Entered date is valid")
<%response.sendRedirect("flightpage.jsp");%>
return true
}

function ValidateDate(){
var dt=document.frm.txtDate
if (isDate(dt.value)==false){
dt.focus()
return false
}
return true
}
</script> 
</head>
<body>
<form name="frm" method="post" onSubmit="return ValidateDate()">
<p>Enter any Date <font color="#CC0000"><b>(MM/DD/YYYY)</b></font> 
<input type="text" name="txtDate" maxlength="10" size="15" required>
 Source City	<input type="text" name="sourcecity" required><br>
  	 Destination City	<input type="text" name="destcity" required><br>
  	 Number of Persons	<input type="number" name="numberofppl" required><br>
	<button>Search</button>
</form>
</body>
</html>