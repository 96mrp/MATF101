<%-- 
    Document   : results
    Created on : 16/05/2017, 7:56:48 PM
    Author     : Alexander
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Flights.Flights"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Collection, java.util.ArrayList"%>

<% String filePath = application.getRealPath("WEB-INF/flights.xml");%>
<jsp:useBean id="flightApp" class="Main.MainF" scope="application">
    <jsp:setProperty name="flightApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Flights</h1>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>Flight  List</title>
        </head>
        <body>
            <%
                Flights flights = flightApp.getflights();
                if (flights != null) {

                    session.setAttribute("flights", flights);

                }
            %>
            List of flights:
            <table>
                <c:forEach items="${flights}" var="flight">
                    <tr>
                        <td><c:out value="${flight.getPrices}" /></td>
                    </tr>
                </c:forEach>
            </table>
        </body>
    </html>
</body>
</html>
