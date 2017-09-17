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
<h2>Update Fare</h2>
	<br/><br/>
	
<h3>Please Enter the Data</h3>
 
	<form action="update" method="post">
	<table >

		<tr>
			<td>New Business Price:<span style="color:red;">*</span></td>
			<td><input type="text" name="businessClassPrice" required/></td>
			<td style="color: red;"></td>

		</tr>
		<tr>
			<td>New Economy Price:<span style="color:red;">*</span></td>
			<td><input type="text" name="economyClassPrice" required/></td>
			<td style="color: red;"></td>

		</tr>
		<tr>
			<td>Flight Number:<span style="color:red;">*</span></td>
			<td><input type="text" name="flightObj.flightNumber" required/></td>
			<td style="color: red;"></td>

		</tr>	

		<tr>
			<td colspan="2"><input type="submit" value="Update"></input></td>
		</tr>
	</table>
</form>
</center>


</body> 
</html>