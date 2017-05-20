<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"import="Users.Users"import="Users.User"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="style.css">
        <title>LoginAction</title>
    </head>
    <body>      


        <!-- Get users into the application scope-->
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="loginApp" class="Main.MainU" scope="application">
            <jsp:setProperty name="loginApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <div class="header">
            <img src="elogo.PNG" alt =logo"></img>
            <h1>Login</h1>
        </div>
        <%
            String name = request.getParameter("name");
            String password = request.getParameter("password");

            Users users = loginApp.getUsers();

            User user = users.login(name, password);//checks if user has loggged in
            session.setAttribute("user", user);

            if (user != null) {

        if (user.getAdmin().equals("Yes")) {%> 

        <div id="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="book.jsp">Book</a></li>
                <li><a href="results.jsp">Results</a></li>           
                <li><a href="bookings.jsp">Bookings</a></li>
                <li><a href="admin.jsp">Admin</a></li>
                <li id = "logout"><a href="logout.jsp">Logout (<%= user.getName()%>)</a></li>
            </ul>
        </div>

        <% } else {%>

        <div id="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="book.jsp">Book</a></li>
                <li><a href="results.jsp">Results</a></li>   
                <li><a href="bookings.jsp">Bookings</a></li> 
                <li id = "logout"><a href="logout.jsp">Logout (<%= user.getName()%>)</a></li>
            </ul>
        </div>

        <% }
        } else {%>
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

        <p> Password or username incorrect Click<a href="login.jsp"> here</a> to try again. 
            If issue continues contact support at 0424479116.</p>
            <% }%>


    </body>
</html>