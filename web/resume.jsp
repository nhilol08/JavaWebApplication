<%-- 
    Document   : resume
    Created on : Nov 22, 2023, 9:49:15 PM
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
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;800&family=Raleway:wght@400;700&family=Work+Sans:wght@300;500&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <title>My Resume</title>
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


    <div class="columns">
        <div class="left-column">
            <h2>Nawal Hayati Idris</h2>
            <br>
            <a></a>
            <i class="fa-solid fa-at" style="color: #202124;"></i>
            <a href="mailto:nawalhayati1989@gmail.com" target="_blank">nawalhayati1989@gmail.com</a></p>
            <i class="fa-solid fa-phone" style="color: #202124;"></i>
            <a>+60 11 6556 0825</a>
            <br>
            <i class="fa-brands fa-linkedin-in" style="color: #202124;"></i>
            <a class="linkedin" href="https://www.linkedin.com/in/nawalhayati">Nawal Hayati</a>
            <br><br>
            <h3>Skills</h3>
            <ul>
                <li data-list-text="•">
                    <p>Microsoft Office</p>
                </li>
                <li data-list-text="•">
                    <p>Editing</p>
                </li>
                <li data-list-text="•">
                    <p>Canva</p>
                </li>
                <li data-list-text="•">
                    <p>E-commerce</p>
                </li>
                <li data-list-text="•">
                    <p>Database Management</p>
                </li>
                <li data-list-text="•">
                    <p>Visual Studio</p>
                </li>
                <li data-list-text="•">
                    <p>CSS</p>
                </li>
                <li data-list-text="•">
                    <p>Blender</p>
                </li>
                <li data-list-text="•">
                    <p>Report Writing</p>
                </li>
                <li data-list-text="•">
                    <p>Collaborating in a team</p>
                </li>

                <br><br>
                <h3>Programming Languages</h3>
                <li data-list-text="•">
                    <p>Java
                    </p>
                </li>
                <li data-list-text="•">
                    <p>Python
                    </p>
                </li>
                <li data-list-text="•">
                    <p>C++
                    </p>
                </li>
                <li data-list-text="•">
                    <p>Php
                    </p>
                </li>
                <br><br>
                <h3>Languages</h3>
                <li data-list-text="•">
                    <p>Bahasa Melayu - Fluent
                    </p>
                </li>
                <li data-list-text="•">
                    <p>English - Intermediate
                    </p>
                </li>
            </ul>
        </div>

        <div class="mainpart">
            <h2>Introduction</h2>
            <p>I am an undergraduate specializing
                in Multimedia Computing with a strong foundation in computer science.</p>
            <p>My academic journey includes
                pursuing a Bachelor's degree in Multimedia Computing at Universiti Teknologi MARA in Shah Alam, where I
                am
                currently enrolled. Prior to this, I completed a Diploma in Computer Science at Universiti Teknologi
                MARA in
                Raub.</p>

            <p>I possess a diverse skill set that
                encompasses MySQL, E-commerce management, Visual Studio, Blender, PHP, phpMyAdmin, editing with tools
                like
                Canva, Python, and proficiency in Microsoft Office. My language proficiency includes fluency in Bahasa
                Melayu
                and intermediate proficiency in English.</p>

            <p>I am eager to leverage my academic
                background, internship experience, and technical skills to contribute effectively to multimedia
                computing
                projects and further enhance my capabilities in the field.</p>

            <br>
            <h2>Work Experience</h2>
            <br>
            <h3>Internship</h3>
            <p>Zeto Travel Sdn Bhd (September 2022 to February 2023)</p>
            <ul>
                <li data-list-text="•">
                    <p><b>Wordpress Web Developer</b></p>
                    <p>Collaborated within a team to develop the company's website.</p>
                </li>
                <li data-list-text="•">
                    <p><b>E-commerce Technician</b></p>
                    <p>Managed e-commerce platforms, including image editing, product uploads, campaign participation,
                        and customer communication.</p>
                    <br>
                </li>
            </ul>
        </div>

        <div class="edupart">
            <h2>Education</h2>

            <br>

            <h3>Bachelor's Degree in Multimedia Computing</h3>
            <p>UNIVERSITI TEKNOLOGI MARA - Shah Alam</p>
            <p>March 2023 to Present</p>

            <br>

            <h3>Diploma in Computer Science</h3>
            <p>UNIVERSITI TEKNOLOGI MARA - Raub</p>
            <p>October 2020 to February 2023</p>

            <br>

            <h2>Projects</h2>
            <br>
            <ul>
                <li data-list-text="•">
                    <p><b>Flower Shop Ordering System Development</b></p>
                    <p>Led a team in the creation of a flower shop ordering system, overseeing tasks such as project
                        planning,
                        database design, enterprise modeling using Entity-Relationship Diagrams (ERD) and Data Flow
                        Diagrams
                        (DFD), and the design of system outputs.</p>
                </li>
                <br>
                <li data-list-text="•">
                    <p><b>Flower Shop Ordering System Website and Application</b></p>
                    <p>Collaborated with a team to create a web and mobile application centered around a flower shop
                        ordering system, employing HTML, CSS, JavaScript, and PHP.</p>
                    <br>
                </li>
            </ul>

        </div>

    </div>
    <div class="download">
        <a href="NAWAL HAYATI RESUME.pdf" download="Nawal Hayati Resume.pdf"><i class="fa-solid fa-file-arrow-down"
                style="color: #202124;"></i> Download My Resume</a>
    </div>
</body>

</html>