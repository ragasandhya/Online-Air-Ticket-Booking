<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>Update Status of Flight </h2>
	<br/><br/>
	
<h3>Please Enter the Data</h3>
 
	<form action="Add update.obj" method="post">
	<table >

		<tr>
			<td><h3 style="color:red;">Flight Status</h3></td>
			<td><input type="radio" name="status" value="active" required />Active
			<input type="radio" name="status" value="delay" required />Delay
			<input type="radio" name="status" value="cancel" required />Cancel
			</td>
		</tr><br><br>
		<tr>
			<td>Flight Number:<span style="color:red;">*</span></td>
			<td><input type="text" name="flightNumber" /></td>
			<td style="color: red;"></td>

		</tr>
		
			<th colspan="2"><input type="submit" value="Update"></input></th>
		
	</table>
</form>
</center>
<center>
<c:forEach var="msg" items="${status}">
<h2 style=color:red>${msg}</h2>
</c:forEach>
</center>

</body> 
</html>