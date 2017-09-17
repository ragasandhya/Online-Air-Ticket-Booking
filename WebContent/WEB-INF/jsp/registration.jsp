<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<style>
#a {
	background-image: url(images/registarion.jpg);
	background-repeat: no-repeat;
	background-position: left top;
	background-position: right top;
	width: 1000px;
	height: 900px;
}

</style>
</head>
<body id="a">
	<center>
		<h1 style="color: #EFFBF8">Registration Form</h1>
	</center>
	<hr>
	<br>
	<br>
	<br>
	
	<form action="Add registration.obj" method="post">
		<table width="500" align="center">
			<tr>
				<td><h3 style="color: #FFFFFF">UserName<i style=color:red>*</i></h3></td>
				<td><input type="text" name="userName" pattern="[0-9A-Za-z]{5,}" placeholder="username" title="enter proper username which should be minimum 5 charecter and no special charecter allowed" required /></td>
			</tr>

			<tr>
				<td><h3 style="color: #FFFFFF">Password<i style=color:red>*</i></h3></td>
				<td><input type="text" name="password" placeholder="Confirm Password" id="confirm_password" required></td>
			</tr>

			<tr>
				<td><h3 style="color: #FFFFFF">Name<i style=color:red>*</i></h3></td>
				<td><input type="text" name="name" placeholder="name" pattern="[A-Za-z ]{4,}" title="enter proper name no special charecter or number allowed" required></td>
			</tr>

			<tr>
				<td><h3 style="color: #FFFFFF">Age<i style=color:red>*</i></h3></td>
				<td><input type="number" name="name" placeholder="Enter Age" min="14" max="90" required/></td>
			</tr>

			<tr>
				<td><h3 style="color: #FFFFFF">Gender<i style=color:red>*</i></h3></td>
				<td><input type="radio" name="gender" value="male" required /><i style="color: #FFFFFF">Male</i>
					<input type="radio" name="gender" value="female" required /><i style="color: #FFFFFF">FeMale</i>
					<input type="radio" name="gender" value="other" required /><i style="color: #FFFFFF">Other</i>
				</td>
			</tr>

			<tr>
				<td><h3 style="color: #FFFFFF">Email<i style=color:red>*</i></h3></td>
				<td><input type="email" placeholder="Email" name="email" required /></td>
			</tr>

			<tr>
				<td><h3 style="color: #FFFFFF">Address<i style=color:red>*</i></h3></td>
				<td><input type="textarea" name="address" rows="4" cols="50" placeholder="Address" required /></td>
			</tr>


			<tr>
				<td><h3 style="color: #FFFFFF">ContactNumber<i style=color:red>*</i></h3></td>
				<td><input type="text" placeholder="phnumber" pattern="[0-9]{10}" name="phnumber" title="enter proper phone number" required /></td>
			</tr>
			
			
			<tr>
				<td><h3 style="color: #FFFFFF">IdentityNumber<i style=color:red>*</i></h3></td>
				<td><input type="text" placeholder="(PANNO/VOTERID..ANY)" pattern="[0-9]{10}" name="identityNumber" title="enter proper phone number" required /></td>
			</tr>



			<tr>
				<th colspan="2"><input type="submit" value="register" /></th>
			</tr>
			<tr>
				<th colspan="2"><input type="reset" value="Reset" /></th>
			</tr>
		</table>
	</form>
	<center>
	<a href="/capgFinalProjectOnlineAirTicketingSystem/index.jsp"><h2 style=color:#FAFAFA>Home Page</h2></a><br>
</center>
	
</body>
</html>