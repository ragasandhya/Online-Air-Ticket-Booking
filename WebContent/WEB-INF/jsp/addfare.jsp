<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>Welcome,  Here You can add Flight Fare</h2>
	<br/><br/>
	
<h3>Please Enter the  Details</h3>

	<form action="add" method = "post">
	<table class="tab">

		<tr>
			<td>Flight Number:<span style="color:red;">*</span></td>
			<td><input type="text" name="flightObj.flightNumber" required/></td>
			<td style="color: red;"></td>
		</tr>

		<tr>
			<td>Business Class Price:<span style="color:red;">*</span></td>
			<td><input type="text" name="businessClassPrice"  required/></td>
			<td style="color: red;"></td>

		</tr>

		<tr>
			<td>Economy Class Price:<span style="color:red;">*</span></td>
			<td><input type="text" name="economyClassPrice" required /></td>
			<td style="color: red;"></td>

		</tr>
		
		<tr>
			<td>Earlier Booking:<span style="color:red;">*</span></td>
			<td><input type="text" name="earlierBooking" required/></td>
			<td style="color: red;"></td>

		</tr>
		
		<tr>
			<td>Intermediate Booking:<span style="color:red;">*</span></td>
			<td><input type="text" name="intermediateBooking" required/></td>
			<td style="color: red;"></td>

		</tr>
		<tr>
			<td>Current Booking:<span style="color:red;">*</span></td>
			<td><input type="text" name="currentBooking" required/></td>
			<td style="color: red;"></td>

		</tr>

		<tr>
			<td colspan="2"><input type="submit" value="Add Details"></input></td>
		</tr>
	</table>
</form>
</center>

<center><a href="adminhome.obj">Go Back To HomePage</a></center>
</body> 
</html>