<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

  <meta charset="UTF-8">

  <title>CodePen - Login</title>

    <style>
#b{
background-image: url(images/admin.jpg);
	background-repeat: no-repeat;
	background-position: left top;
	width: 100%;
	height: 100%;
	}
		
</style>
</head>
 <body id="b">
 <center>
 <br>
<i style=color:#0B0801></i><br><br><br>
      ${errmsg }  
  <form action="Add adminLogin.obj" method="post">
     <table width="300" align="center" id="a">
     <tr>
            <th colspan="2"><h1 style=color:#0B0801><i>Admin Login Page</i><hr></h1></th>
        </tr>
        <tr>
         <td><h3 style="color:#0B0801">UserName</h3></td>
         <td><input type="text" name="adminUserName" placeholder="username"/></td>
        </tr>
        <tr></tr>
        <tr>
         <td><h3 style=color:#0B0801>Password</h3></td>
         <td><input type="password" name="adminPassword" placeholder="password"/></td>
        </tr>
         <tr>
            <th colspan="2"><input type="submit" value="login"/></th>
        </tr>
    </table>  
        
 
 </form>
        <p style=color:0B0801>Not a member?</p> <a href="signUp.obj">Sign up now</a></span>


	<a href="/capgFinalProjectOnlineAirTicketingSystem/index.jsp"><h2 style=color:#0B0801>Home Page</h2></a><br>
</center>
<c:if test="${sessionScope.validate ne null}">
<h1>wrong password</h1>

</c:if>
</body>

</html>