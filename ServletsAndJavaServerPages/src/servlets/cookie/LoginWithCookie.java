package servlets.cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginWithCookie")
public class LoginWithCookie extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uid = "";
        String password = "";
        Cookie[] MyCookies = request.getCookies();

        if (MyCookies != null) {
            for (Cookie c : MyCookies) {
                if (c.getName().equalsIgnoreCase("credentials_uid")) {
                    uid = c.getValue();
                } else if (c.getName().equalsIgnoreCase("credentials_password")) {
                    password = c.getValue();
                }
            }
        }

        StringBuilder sb = new StringBuilder("");
        sb.append("<html><body>");
        sb.append("<form id='frmLogin' name='frmLogin' action='/LoginCookies' method='post'>");
        sb.append("<table>");
        sb.append("<tr><td><span>Username:</span></td>"
                + "<td><input type='text' name='userID' value='" + uid + "'/></td></tr>");
        sb.append("<tr><td><span>Password:</span></td>"
                + "<td><input type='password' name='password' value='" + password + "'/></td></tr>");
        sb.append("<tr><td colspan='2' align='right'>"
                + "<input type='checkbox' name='remember' />Remember Me</td></tr>");
        sb.append("<tr><td colspan='2' align='right'>"
                + "<input name='loginbutton' type='submit' value='Log In' /></td></tr>");
        sb.append("</table>");
        sb.append("</form>");
        sb.append("</body></html>");

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println(sb.toString());
    }
}