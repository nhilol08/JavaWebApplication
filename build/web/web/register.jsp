<%-- 
    Document   : index
    Created on : Nov 21, 2023, 7:50:09 PM
    Author     : AINA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;800&family=Raleway:wght@400;700&family=Work+Sans:wght@300;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <title>My Website</title>
    </head>
    <body>
        
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expire", 0);
        %>
        
        <div class="login">
            <div class="loginform">
                <h2>Register Page</h2>
                
                <%-- Display success message if available --%>
                <c:if test="${not empty requestScope.successMessage}">
                    <p style="color: green;">${requestScope.successMessage}</p>

                </c:if>

                <%-- Display error message if available --%>
                <c:if test="${not empty requestScope.errorMessage}">
                    <p style="color: red;">${requestScope.errorMessage}</p>
                </c:if>
                
                <form action="/MyWebsite/RegistrationServlet" method="post">
                    Username: <input type="text" name="username" required><br>
                    Password: <input type="password" name="password" required><br>
                    <input type="submit" value="Register">
                </form>
                <p>Already have an account? <a href="login.jsp">Login Now</a></p>
            </div>
        </div>
    </body>
</html>