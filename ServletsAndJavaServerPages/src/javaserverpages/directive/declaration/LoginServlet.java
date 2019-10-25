package javaserverpages.directive.declaration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");

        HttpSession s = request.getSession();
        s.setAttribute("uid", uid);
        s.setAttribute("pwd", pwd);

        String destination = "credentials.jsp";
        if (request.getParameter("noSession") != null) {
            String noSession = request.getParameter("noSession");
            if (noSession.equalsIgnoreCase("ON")) {
                destination = "credentialsTwo.jsp";
            }
        }
        response.sendRedirect(response.encodeRedirectURL(destination));
    }
}
