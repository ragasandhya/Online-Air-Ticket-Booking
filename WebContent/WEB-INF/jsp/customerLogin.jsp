<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

  <meta charset="UTF-8">

  <title>customer Login</title>

    <style>
#a{
background-image: url(images/customerlogin.jpg);
	background-repeat: no-repeat;
	background-position: left top;
	width: 100%;
	height: 100%;
	} 
	
	
</style>
</head>
 <body id="a">
 <center>
 <br>
<h1 style=color:#FAFAFA>Customer Login Page</h1><hr><br>
        
  <form action="Add customerLogin.obj" method="post">
     <table width="200" align="center" bgcolor="#E6E6E6" >
        <tr>
         <td><h3 style=color:#000000>UserName</h3></td>
         <td><input type="text" name="userName" placeholder="username"/></td>
        </tr>
        <tr></tr>
        <tr>
         <td><h3 style=color:#000000>Password</h3></td>
         <td><input type="password" name="password" placeholder="password"/></td>
        </tr>
         <tr>
            <th colspan="2"><input type="submit" value="login"/></th>
        </tr>
         <tr>
            <th colspan="2"> Not a member? <a href="registration.obj"><h2 style=color:#000000>Sign up now</h2></a></th>
        </tr>
    </table>  
        
 
 </form>
       

	<a href="/capgFinalProjectOnlineAirTicketingSystem/index.jsp"><h2 style=color:#000000>Home Page</h2></a><br>
</center>

</body>

</html>