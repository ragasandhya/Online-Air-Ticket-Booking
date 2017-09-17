<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>These are the details you added</h2>
	<h4>Flight number: ${fare.flightObj.flightNumber}</h4>
	<h4>Business Class Price: ${fare.businessClassPrice}</h4>
	<h4>Economy Class Price: ${fare.economyClassPrice}</h4>
	<h4>Earlier Booking: ${fare.earlierBooking}</h4>
	<h4>Intermediate Booking: ${fare.intermediateBooking}</h4>
	<h4>Current Booking: ${fare.currentBooking}</h4>
	
	<center><a href="adminhome.obj">Go Back To HomePage</a></center>
</body>
</html>