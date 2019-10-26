package javaserverpages.directive.pagecontext;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServletTwo")
public class LoginServletTwo extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");

        HttpSession s = request.getSession();
        s.setAttribute("uid", uid);
        s.setAttribute("pwd", pwd);

        int authLevel = 1;
        s.setAttribute("authlevel", authLevel);

        String destination = "listCities.jsp";
        if (request.getAttribute("dest") != null) {
            destination = (String) request.getAttribute("dest");
        }
        if (destination != null && destination.equals("listcities")) {
            destination = "listCities.jsp";
        }

        if (request.getParameter("rememberMe") != null) {
            String rememberMe = request.getParameter("rememberMe");
            if (rememberMe.equalsIgnoreCase("ON")) {

                int cookieLife = 3600 * 24 * 7;
                Cookie uidCook = new Cookie("credentials_uid", uid);
                uidCook.setMaxAge(cookieLife);
                response.addCookie(uidCook);
                Cookie pwdCook = new Cookie("credentials_pwd", pwd);
                uidCook.setMaxAge(cookieLife);
                response.addCookie(pwdCook);
            }
        }

        if (authLevel < 1 || uid == null || uid == "") {
            response.sendRedirect(response.encodeRedirectURL("login.jsp"));

        } else {
            response.sendRedirect(response.encodeRedirectURL(destination));
        }
    }
}