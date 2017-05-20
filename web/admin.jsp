<%-- 
    Document   : results
    Created on : 16/05/2017, 7:56:48 PM
    Author     : Alexander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="Users.Users, Users.User"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Collection, java.util.ArrayList"%>

<!-- Get users into the application scope-->
<% String filePath = application.getRealPath("WEB-INF/users.xml");%> 
<jsp:useBean id="userApp" class="Main.MainU" scope="application">
    <jsp:setProperty name="userApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <h1>Admin</h1>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>Booking list</title>
        </head>
        <body>
                <body>

        <div class="header">
            <img src="logo.png" alt =logo"></img>
            <h1>Flight101</h1>
        </div>


        <% User user = (User) session.getAttribute("user"); %> 
        <% if (user != null) {%> 

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

        <% } else { %>

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

        <% }%>

    </body>
            <%
                Users users = userApp.getUsers();
                if (users != null) {

                    session.setAttribute("users", users); // sets to the session

                }
            %>
            List of flights:
            <table>
                <% // display the list of bookings %>
            </table>
        </body>
    </html>
</body>
</html>
