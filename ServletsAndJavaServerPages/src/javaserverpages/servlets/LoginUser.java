package javaserverpages.servlets;

import javaserverpages.actions.javabeans.WebUser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");
        int authLevel = 1;

        WebUser wu = new WebUser();
        wu.setUserId(uid);
        wu.setPassword(pwd);
        wu.setAuthLevel(authLevel);

        HttpSession s = request.getSession();
        s.setAttribute("authorized_user", wu);

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

        String target = ((request.getParameter("dest") == null || request.getParameter("dest").equals(""))
                ? "indexActions.jsp" : request.getParameter("dest") + ".jsp");
        response.sendRedirect(target);
    }
}