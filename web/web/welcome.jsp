<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

        <!-- main banner -->
        <div class="container">
            <div class="homebanner">
                <div class="bannertext">
                    <h1>I'm Nawal
                        <br>
                        UNDERGRADUATE STUDENT IN
                        <br>
                        MULTIMEDIA COMPUTING.
                    </h1>
                </div>
            </div>
        </div>

        <!--bar-->
        <div class="custom-shape-divider-bottom-1703587805">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
    </svg>
</div>

        <!--things i've learned-->
        <div class="learn">
            <div class="title">
                <h1>Things I've Learned</h1>
                <p>More to come...</p>
            </div>
            <div class="cardcontainer">
                <div class="card">
                    <i class="fa-regular fa-file-code fa-2xl" style="color: #202124;"></i>
                    <h2>Programming Languages</h2>
                </div>
                <div class="card">
                    <i class="fa-regular fa-window-restore fa-2xl" style="color: #202124;"></i>
                    <h2>Web Development</h2>
                </div>
                <div class="card">
                    <i class="fa-solid fa-cube fa-2xl" style="color: #202124;"></i>
                    <h2>3D Modeling</h2>
                </div>
                <div class="card">
                    <i class="fa-solid fa-database fa-2xl" style="color: #202124;"></i>
                    <h2>Database Design</h2>
                </div>
                <div class="card">
                    <i class="fa-solid fa-code-branch fa-2xl" style="color: #202124;"></i>
                    <h2>Artificial Intelligence</h2>
                </div>
                <div class="card">
                    <i class="fa-solid fa-sort fa-2xl" style="color: #202124;"></i>
                    <h2>Game Design Development</h2>
                </div>
            </div>
        </div>

    </body>

</html>