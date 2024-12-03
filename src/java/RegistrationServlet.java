/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author NAWAL
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {

    private PreparedStatement pstmt;

    @Override
    public void init() throws ServletException {
        initializeJdbc();
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            if (username.length() == 0 || password.length() == 0) {
                out.println("Username and Password are required");
                return;
            }
            storeUser(username, password);
            // Set success message as a request attribute
            request.setAttribute("successMessage", "Registration successful "+username+" , please proceed to Login");

            // Forward the request to the registration page
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        } catch (SQLIntegrityConstraintViolationException duplicateException) {
            // Handle duplicate username
            duplicateException.printStackTrace();

            // Set error message as a request attribute
            request.setAttribute("errorMessage", "Username already exists");

            // Forward the request to the registration page
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        } catch (Exception ex) {
            out.println("Error: " + ex.getMessage());
        } finally {
            out.close();
        }

        // Set error message as a request attribute
        request.setAttribute("errorMessage", "An error occurred during registration. Please try again.");

        // Forward the request to the registration page
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
        dispatcher.forward(request, response);
    }

    private void initializeJdbc() {
        try {
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/userDB;create=true;user=username;password=password";

            //load driver
            Class.forName(driver);

            //connect to database
            Connection conn = DriverManager.getConnection(connectionString);

            //create statement
            pstmt = conn.prepareStatement("INSERT INTO REGISTERED (username, password) VALUES (?, ?)");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void storeUser(String username, String password) throws SQLException {
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        pstmt.executeUpdate();

    }
}
