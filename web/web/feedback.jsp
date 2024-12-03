<%-- 
    Document   : feedback
    Created on : Dec 13, 2023, 11:52:59 PM
    Author     : NAWAL
--%>
<%@ page import="java.util.List" %>
<%@page import="model.Feedback" %>
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

  <title>Feedback</title>
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
      <a>Welcome <%= session.getAttribute("username") %>!</a>
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
  
   <!--feedback form-->
   <div class="project">
       <div class="title">
      <h1>Feedbacks for Website</h1>
      <p>Feel free to give feedback!</p>
      <!-- Display success message if present -->
    <c:if test="${not empty successMessage}">
        <p style="color: #171610; margin-top: 30px;">${successMessage}</p>
    </c:if>
    </div>
      <div class="feedback">
      <form action="FeedbackServlet" method="post">
                    Email: <input type="text" name="email" required><br>
                    Name: <input type="text" name="name" required><br>
                    Feedback: <textarea name="feedback" required></textarea><br>
                    <input type="submit" value="Submit">
                </form>
      </div>
   </div>
  
</html>
