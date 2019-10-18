package servlets.requestattributes;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ResponderTwo")
public class ResponderTwo extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userChoice = request.getParameter("menuChoice");
        request.setAttribute("userChoice", userChoice);
        String[] userOptions = request.getParameterValues("adminOptions");

        if (userOptions != null) {
            for (String userOption : userOptions) {
                if (userOption.equalsIgnoreCase("useDB")) {
                    request.setAttribute("useDB", "1");
                }

                if (userOption.equalsIgnoreCase("sendEmail")) {
                    request.setAttribute("sendEmail", "1");
                }
            }
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/ResponderHelper");
        dispatcher.forward(request, response);
    }
}