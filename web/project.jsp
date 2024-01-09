<%-- 
    Document   : project
    Created on : Nov 22, 2023, 9:47:53 PM
    Author     : AINA
--%>

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

        <title>My Portfolio</title>
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


        <!--my projects-->
        <div class="project">
            <div class="title">
                <h1>My Projects</h1>
                <p>Stay tuned for more...</p>
            </div>
            <div class="cardcontainer">
                <div onclick="location.href = 'https://drive.google.com/drive/folders/1IyG1f_aYAMh6IZIT52ylyWHQtB144A0z?usp=sharing';" class="cardproject">
                    <h2>Computer Graphics Project</h2>
                    <p>Me and my partner are required to produce a 3D model with the title “Happy Playground” using Blender.</p>
                    <p>Click to see project!</p>
                </div>
                <div onclick="location.href = 'https://drive.google.com/drive/folders/1Nsq1HWChUZ_JagVU5-9cyhtABs7AWazw?usp=sharing';" class="cardproject">
                    <h2>Student Programs Management in UiTM Shah Alam</h2>
                    <p>Using Computational Thinking to Solve Problem of Student Programs Management in UiTM Shah Alam</p>
                    <p>Click to see project!</p>
                </div>
            </div>
        </div>

    </body>
</html>