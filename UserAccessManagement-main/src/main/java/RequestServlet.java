//package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RequestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        String softwareId = request.getParameter("softwareId");
        String accessType = request.getParameter("accessType");
        String reason = request.getParameter("reason");
        
        try (Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/useraccess", "postgres", "admin")) {

            String query = "INSERT INTO requests (user_id, software_id, access_type, reason, status) VALUES ((SELECT id FROM users WHERE username = ?), ?, ?, ?, 'Pending')";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setInt(2, Integer.parseInt(softwareId));
            stmt.setString(3, accessType);
            stmt.setString(4, reason);
            stmt.executeUpdate();
            response.sendRedirect("requestAccess.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error during access request!");
        }
    }
}
