<%-- 
    Document   : about
    Created on : Nov 21, 2023, 7:25:59 PM
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


        <!--aboutme-->
        <div class="about">
            <img src="img/nawalgreen.jpg">
            <h2>About Me</h2>
            <p>
                Name: Nawal Hayati Binti Idris
                <br
            <p>Age: 21</p>
            Degree: Bachelor in Multimedia Computing
        </p>
        <br>
        <p>Behind the Scenes: One thing about me is you can't find any good picture of me; 
            <br>
            it's always a candid picture because I don't really like to take pictures. 
            <br>
            I'm more comfortable behind the lens, capturing moments and creating visuals.</p>
        <br>

    </div>


    <div class="about-hobby">
        <section>
            <video controls autoplay loop muted>
                <source src="img/video.mp4" type="video/mp4">
            </video>
            <p>Hobbies: Sometimes you might catch me on the badminton court with my classmates. 
                <br>
                Playing badminton is not just a sport for us; it's a way to unwind, stay active, and build connections within classmates.
                <br>
            </p>
        </section>
    </div>

    <div class="about-third">
        <section>
            <p>Collaboration and Growth: I value collaboration and believe that the best creations come from the synergy of diverse minds. 
                <br>
                Working in teams, I've learned the power of different perspectives and the magic of collective creativity.
                <br><br>
                I'm on a journey to explore, create, and innovate in the realm of multimedia computing, 
                <br>
                and I'm excited to share my experiences and projects with you. Thanks for visiting!
                <br><br>
                Feel free to reach out if you'd like to connect, collaborate, or just chat about multimedia computing and its endless possibilities.
            </p>
        </section>
    </div>

    <div class="socmedicon" id="contact">
        <a class="instagram" href="https://www.instagram.com/nwlhyti">
            <i class="fa-brands fa-instagram fa-2xl" style="color: #202124;"></i>
        </a>
        <a class="google" href="mailto:nawalhayati1989@gmail.com">
            <i class="fa-regular fa-envelope fa-2xl" style="color: #202124;"></i>
        </a>
        <a class="linkedin" href="https://www.linkedin.com/in/nawalhayati">
            <i class="fa-brands fa-linkedin-in fa-2xl" style="color: #202124;"></i>
        </a>
    </div>



</body>
</html>