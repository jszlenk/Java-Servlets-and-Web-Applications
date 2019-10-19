package servlets.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RemoveCookies")
public class RemoveCookies extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

		Cookie[] MyCookies = request.getCookies();
        if (MyCookies != null && MyCookies.length > 0) {
            for (Cookie c : MyCookies) {
                if (c.getName().toLowerCase().contains("credentials")) {
                    c.setMaxAge(0);
                    response.addCookie(c);
                }
            }
        }

        PrintWriter out = response.getWriter();
        out.println("<html><body><h3>Cookies expired</h3></body></html>");
    }
}