
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try {

            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/userDB;create=true;user=username;password=password";
            
            //load the driver
            Class.forName(driver);

            //connect to database
            Connection conn = DriverManager.getConnection(connectionString);

            // Check if the username and password match
            String sql = "SELECT * FROM REGISTERED WHERE username = ? AND password = ?";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, username);
                statement.setString(2, password);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    // Successful login
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    response.sendRedirect("welcome.jsp"); // Redirect to the home page after successful login
                } else {
                    // Incorrect username or password
                    request.setAttribute("errorMessage", "Invalid username or password");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }

            // Close the database connection
            conn.close();
        } catch (Exception e) {
            // Handle exceptions
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred. Please try again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
   

        /*// For simplicity, hardcoding a username and password
        if ("nawal".equals(username) && "123".equals(password)) {
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        response.sendRedirect("welcome.jsp"); // Redirect to a welcome page after successful login
        } else {
        request.setAttribute("errorMessage", "Invalid username or password");
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
        }*/
    }

    /*protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    doPost(request, response);
    }*/
}
