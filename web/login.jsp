<%-- 
    Document   : login
    Created on : Nov 21, 2023, 7:51:22 PM
    Author     : NAWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;800&family=Raleway:wght@400;700&family=Work+Sans:wght@300;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <title>Login Page</title>

    </head>
    <body>
        
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expire", 0);
        %>
        
        <div class="login">
            <div class="loginform">
                <h2>Login Page</h2>

                <%-- Display error message if available --%>
                <c:if test="${not empty requestScope.errorMessage}">
                    <p style="color: red;">${requestScope.errorMessage}</p>
                </c:if>

                <form action="LoginServlet" method="post">
                    Username: <input type="text" name="username" required><br>
                    Password: <input type="password" name="password" required><br>
                    <input type="submit" value="Login">
                </form>
                <p>Don't have an account? <a href="register.jsp">Register Now</a></p>
            </div>
        </div>
    </body>
</html>
