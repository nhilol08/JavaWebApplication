/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String feedback = request.getParameter("feedback");
        
        PreparedStatement statement = null;
        Connection conn = null;
        
        
        try {

            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/userDB;create=true;user=username;password=password";
            
            //load the driver
            Class.forName(driver);

            //connect to database
            conn = DriverManager.getConnection(connectionString);
            
            // Prepare the SQL statement
            String sql = "INSERT INTO USERNAME.FEEDBACK (name, email, feedback) VALUES (?, ?, ?)";
            statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, feedback);
            
            statement.executeUpdate();
            
            //successful
            request.setAttribute("successMessage", "Feedback successfully submitted!");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(); // Handle exceptions appropriately
            request.setAttribute("errorMessage", "Failed to submit feedback. Please try again.");
        } finally {
            // Close the resources
            try {
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        
            RequestDispatcher dispatcher = request.getRequestDispatcher("feedback.jsp");
        dispatcher.forward(request, response);
    }
}
}