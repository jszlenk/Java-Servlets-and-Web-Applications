package encodeurl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/EncodeServlet")
public class EncodeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        boolean authorized = false;
        String uid = null;
        int authLevel = -1;

        if (session.getAttribute("userName") != null) {
            uid = (String) session.getAttribute("userName");
        }

        if (session.getAttribute("userAuthLevel") != null) {
            authLevel = (int) session.getAttribute("userAuthLevel");
        }

        if (authLevel >= 1 && uid != null && !uid.equals("")) {
            authorized = true;
        }

        if (!authorized) {
            response.sendRedirect(response.encodeRedirectURL("Login.html"));
        } else {
            response.sendRedirect(response.encodeRedirectURL("/Destination"));
        }
    }
}