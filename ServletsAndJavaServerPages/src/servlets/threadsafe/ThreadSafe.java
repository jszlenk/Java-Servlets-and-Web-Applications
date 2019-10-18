package servlets.threadsafe;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ThreadSafe")
public class ThreadSafe extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String doThreadSafe = request.getParameter("threadsafe");
        int initial = Integer.parseInt(getServletContext().getInitParameter("initial"));

        getServletContext().setAttribute("current", initial);

        if (doThreadSafe.equalsIgnoreCase("nonthreadsafe")) {
            response.sendRedirect("NonThreadSafeServlet");
        } else if (doThreadSafe.equalsIgnoreCase("threadsafe")) {
            response.sendRedirect("ThreadSafeServlet");
        } else if (doThreadSafe.equalsIgnoreCase("requestthread")) {
            response.sendRedirect("ThreadSafeRequest");
        } else {
            response.sendRedirect("indexThreadSafe.html");
        }
    }
}