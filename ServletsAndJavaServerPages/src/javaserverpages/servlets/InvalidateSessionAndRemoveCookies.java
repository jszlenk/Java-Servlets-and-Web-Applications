package javaserverpages.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/InvalidateSessionAndRemoveCookies")
public class InvalidateSessionAndRemoveCookies extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession();
        s.invalidate();

        Cookie[] MyCookies = request.getCookies();
        if (MyCookies != null && MyCookies.length > 0) {
            for (Cookie c : MyCookies) {
                if (c.getName().toLowerCase().contains("credentials")) {
                    c.setMaxAge(0);
                    response.addCookie(c);
                }
            }
        }

        response.sendRedirect("clearSessionsAndCookies.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
