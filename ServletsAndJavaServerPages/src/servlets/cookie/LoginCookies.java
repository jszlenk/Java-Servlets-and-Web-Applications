package servlets.cookie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginCookies")
public class LoginCookies extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uid = request.getParameter("userID");
        String password = request.getParameter("password");
        boolean remember = false;

        if (request.getParameter("remember") != null) {
            String rememberMe = request.getParameter("remember");
            if (rememberMe.equalsIgnoreCase("on")) {
                remember = true;
            }
        }

        int authLevel = 1;

        HttpSession session = request.getSession();
        session.setAttribute("userName", uid);
        session.setAttribute("userAuthLevel", authLevel);

        if (remember) {

            int cookieLife = 3600 * 24 * 7;

            Cookie uidCook = new Cookie("credentials_uid", uid);
            uidCook.setMaxAge(cookieLife);
            response.addCookie(uidCook);

            Cookie passwordCook = new Cookie("credentials_password", password);
            uidCook.setMaxAge(cookieLife);
            response.addCookie(passwordCook);
        }

        if (authLevel < 1 || uid == null || uid == "") {
            response.sendRedirect(response.encodeRedirectURL("cookies.html"));

        } else {
            response.sendRedirect(response.encodeRedirectURL("/Destination"));
        }
    }
}