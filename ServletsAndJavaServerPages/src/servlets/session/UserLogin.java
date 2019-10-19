package servlets.session;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uid = "authorizeduser";
        int authLevel = 1;

        HttpSession session = request.getSession();
        session.setAttribute("userName", uid);
        session.setAttribute("userAuthLevel", authLevel);

        if (authLevel < 1 || uid == null || uid == "") {
            response.sendRedirect("loginSession.html");
        } else {
            response.sendRedirect("/Destination");
        }
    }
}