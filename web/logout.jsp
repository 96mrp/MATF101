<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="style.css">
        <title>Logout</title>
    </head>
    <div class="header">
        <img src="elogo.PNG" alt =logo"></img>
        <h1>Flight101</h1>
    </div>

        <div id="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="book.jsp">Book</a></li>
                 <li><a href="results.jsp">Results</a></li>   
                <li><a href="bookings.jsp">Bookings</a></li> 
                <li id = "login"><a href="login.jsp">Login</a></li>
            </ul>
        </div>



    <% session.invalidate();%>

    <div style="text-align: right; border: solid 1px black;">
        <p>Logged out.</p>
    </div>
</body>
</html>