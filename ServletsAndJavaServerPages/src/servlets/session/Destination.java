package servlets.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Destination")
public class Destination extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        if (session != null && !session.isNew() && session.getAttribute("userName") != null) {
            String uid = (String) session.getAttribute("userName");
            out.println("<html><body><span>Welcome <span><strong>" + uid + "</strong></body></html>");
        } else {
            out.println("<html><body><span>Unauthorized<span></body></html>");
        }
    }
}