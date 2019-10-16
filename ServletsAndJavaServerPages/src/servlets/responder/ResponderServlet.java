package servlets.responder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ResponderServlet")
public class ResponderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String userChoice = request.getParameter("menuChoice");
        String[] userOptions = request.getParameterValues("adminOptions");

        StringBuilder params = new StringBuilder("");
        String queryStringParams = "";

        if (userOptions != null) {
            boolean isFirst = true;
            for (String userOption : userOptions) {
                if (!isFirst) {
                    params.append("&");
                } else {
                    params.append("?");
                }

                if (userOption.equalsIgnoreCase("useDB")) {
                    params.append("useDB=1");
                } else if (userOption.equalsIgnoreCase("sendEmail")) {
                    params.append("sendEmail=1");
                }
                isFirst = false;
            }
            queryStringParams = params.toString();
        }

        switch (userChoice) {
            case "1":
                response.sendRedirect("listCitiesResponder.html" + queryStringParams);
                break;
            case "2":
                response.sendRedirect("addCityResponder.html" + queryStringParams);
                break;
            case "3":
                response.sendRedirect("deleteCityResponder.html" + queryStringParams);
                break;
            default:
                response.sendRedirect("indexResponder.html");
                break;
        }
    }
}