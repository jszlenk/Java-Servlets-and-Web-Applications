package servlets.threadsafe;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NonThreadSafeServlet")
public class NonThreadSafeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int current = (int) getServletContext().getAttribute("current");
        StringBuilder msg = new StringBuilder("");

        msg.append("<html><body>");
        msg.append(String.format("Attribute Retrieved Value: %d<br>", current));

        current *= 3;
        getServletContext().setAttribute("current", current);

        try {
            Thread.sleep(5000);
        } catch (InterruptedException ignored) {
        }

        current = (int) getServletContext().getAttribute("current");

        msg.append(String.format("Attribute retrieved value after process: %d<br>", current));
        msg.append("</body></html>");

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println(msg);
    }
}