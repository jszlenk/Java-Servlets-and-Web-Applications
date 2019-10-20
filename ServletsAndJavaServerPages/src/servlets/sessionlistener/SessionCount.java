package servlets.sessionlistener;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SessionCount")
public class SessionCount extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        int activeUsers = SessionTracking.getActiveUserCount();

        out.println("<html><body>");
        out.println("<h1>Active Users: " + activeUsers + "</h1>");
        out.println("</body></html>");
    }
}