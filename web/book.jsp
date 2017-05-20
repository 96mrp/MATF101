<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"  import="Users.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">    
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script> 
        <title>Book</title>
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

        <h2>Book appointment</h2>

        <table>
            <form action="booked.jsp" method="POST">
                <tr>
                    <td>Time:</td>
                    <td><input type="time" name="time"></td>
                </tr>
                <tr>
                    <td>Date:</td>
                    <td><input type="datepicker" name ="datepicker" id="datepicker"></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Contact:</td>
                    <td><input type="text" name = "contact"></td>
                </tr>
                <tr>
                    <td>Email Address(optional):</td>
                    <td><input type="text" name = "email"></td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td><input type="text" name="description"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="Submit" name="Submit"></td>
                </tr>
            </form>
        </table>
        
    </body>
</html>