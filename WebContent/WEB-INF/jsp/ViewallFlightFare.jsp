<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 th, td {
    border: 1px solid black;
}
table
{
    border: 3px solid black;
}
body{
background-image: url(images/flight-tracker.jpg);
	background-repeat: no-repeat;
	background-position: center;
	width: 100%;
	height: 100%;
	}
</style>
</head>
<body>
	<h1>The Fare details are</h1>
<table>
<tr>
	<th>Flight Number</th>
	<th>Business Class Price</th>
	<th>Economy Class Price</th>
	<th>Earlier Booking</th>
	<th>Intermediate Booking</th>
	<th>Current Booking</th>

</tr>

	<c:forEach var="farelist" items="${flightfarelist}">
	<tr>
	
		 <td>${farelist.flightObj.flightNumber}</td>
		<td>${farelist.businessClassPrice}</td> 
		<td>${farelist.economyClassPrice}</td>
		<td>${farelist.earlierBooking} </td>
		<td>${farelist.intermediateBooking}</td> 
		 <td>${farelist.currentBooking} </td>
		 </tr>
		 </c:forEach>
		</table>

	<center><a href="adminhome.obj">Go Back To HomePage</a></center>
</body>
</html>