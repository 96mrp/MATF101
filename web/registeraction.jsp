<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="Users.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="registerApp" class="Main.MainU" scope="application">
            <jsp:setProperty name="registerApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="style.css">
        <title>Booked</title>

    </head>
    <body>
        <div class="header">
            <img src="elogo.PNG" alt =logo"></img>
            <h1>Flight101</h1>
        </div>


        <% User user = (User) session.getAttribute("user"); %> 
        <% if (user != null) {%> 

        <div id="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="book.jsp">Book</a></li>
                <li><a href="customers.jsp">Customers</a></li>           
                <li><a href="bookings.jsp">Bookings</a></li> 
                <li id = "logout"><a href="logout.jsp">Logout (<%= user.getName()%>)</a></li>
            </ul>
        </div>

        <% } else { %>

        <div id="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="book.jsp">Book</a></li>
                <li><a href="customers.jsp">Customers</a></li> 
                <li><a href="bookings.jsp">Bookings</a></li> 
                <li id = "login"><a href="login.jsp">Login</a></li>
            </ul>
        </div>

        <%}%>

        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
              String password = request.getParameter("password");
                String DOB = request.getParameter("DOB");
                String notAdmin = "No";

            if (registerApp.getUsers() != null) {
                registerApp.addUser(new User(name,email,password,DOB, notAdmin));
                registerApp.saveUsers();%>

        <p> Customer added <a href="customers.jsp"> bookings </a></p>
        <%  } else { %>

        <p> Customer add fail click <a href="register.jsp"> here </a> to try again. 
            If issue continues contact support at 0424479116.</p>

        <%}%>
    </body>
</html>