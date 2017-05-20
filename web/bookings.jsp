<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="Bookings.Bookings" import="Users.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% String filePath = application.getRealPath("WEB-INF/bookings.xml");%>
<jsp:useBean id="bookingApp" class="Main.MainB" scope="application">
    <jsp:setProperty name="bookingApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<html>
    <head>
        <title>Bookings</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>   
        <div class="header">
            <img src="elogo.PNG" alt =logo"> </img>
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
        <%
            Bookings bookings = bookingApp.getBookings();
            if (bookings != null) {
        %>
        <!--List-->

        <input type="text" id="myInput" onkeyup="myFFunction()" placeholder="Search for names.." title="Type in a name">

        <script>
            function myFFunction() {
                var input, filter, table, tr, td, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[2];
                    if (td) {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
            function myDFunction(r)
            {
                var i = r.parentNode.parentNode.rowIndex;
                document.getElementById("myTable").deleteRow(i);
                //save table
            }
        </script>

        <table id = "myTable">
            <tr> 
                <th>Time</th>   
                <th>Date</th> 
                <th>Name</th> 
                <th>Contact</th>  
                <th>Email</th>  
                <th>Description</th>
                <th>Booker</th>
                <th>Remove</th>
            </tr>

        </table>    

        <% } else { %>
        <!--Exception-->
        <p> Cannot load bookings, Contact support at 0424479116 </p>
        <% }%>
    </body>
</html>