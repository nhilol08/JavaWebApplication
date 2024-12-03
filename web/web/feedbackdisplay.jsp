<%-- 
    Document   : feedbackdisplay
    Created on : Dec 27, 2023, 6:22:38 PM
    Author     : NAWAL
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="model.Feedback"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;800&family=Raleway:wght@400;700&family=Work+Sans:wght@300;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <title>Feedback Display</title>
    </head>

    <body>

        
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expire", 0);

        if(session.getAttribute("username")==null){
            response.sendRedirect("login.jsp");
        }
        %>

        <!-- top nav-->
        <div class="topnav">
            <!--brand-->
            <div class="brand">
                <a>Welcome <%= session.getAttribute("username")%>!</a>
            </div>
            <div class="topnav-centered">
                <a href="welcome.jsp">Home</a>
                <a href="about.jsp">About</a>
                <a href="project.jsp">Projects</a>
                <a href="resume.jsp">Resume</a>
                <a href="feedback.jsp">Feedback Form</a>
                <a href="feedbackdisplay.jsp">Feedback Display</a>
                <div class="logout">
                    <form action="LogoutServlet" method="post">
                        <input type="submit" value="Logout">
                    </form>
                </div>
            </div>
        </div>

        <!-- Display submitted feedback -->
        <div class="title">
            <h1>Submitted Feedback</h1>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Feedback</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {

            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/userDB;create=true;user=username;password=password";

            //load the driver
            Class.forName(driver);

            //connect to database
            Connection conn = DriverManager.getConnection(connectionString);

            // Execute the query
            String sql = "SELECT * FROM FEEDBACK";
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            
            
            // Process the result set
            while (resultSet.next()) {
                %>
                <tr>
                        <td><%=resultSet.getString("NAME")%></td>
                        <td><%=resultSet.getString("EMAIL")%></td>
                        <td><%=resultSet.getString("FEEDBACK")%></td>
                    </tr>
                    <% }
            

        } catch (Exception e){
            System.out.println("Exception is ;"+e);
        }
                    %>
                   
            </tbody>
        </table>

</html>
