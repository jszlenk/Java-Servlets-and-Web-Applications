package servlets.requestattributes;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ResponderHelper")
public class ResponderHelper extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String useDB = (String) request.getAttribute("useDB");
        String sendEmail = (String) request.getAttribute("sendEmail");
        String choice = (String) request.getAttribute("userChoice");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String pageToNavigate = "";

        switch (choice) {
            case "1":
                pageToNavigate = "List all Cities";
                break;
            case "2":
                pageToNavigate = "Add a City";
                break;
            case "3":
                pageToNavigate = "Delete a City";
                break;
        }

        boolean optEmail = (sendEmail != null && sendEmail.equals("1"));
        boolean optDB = (useDB != null && useDB.equals("1"));

        String message = String.format("<span>You chose to show the "
                        + "page to %s and set useDB to %b and sendEmail to "
                        + "%b</span>",
				pageToNavigate,
				optDB,
				optEmail);
        out.println("<html><body><h3>" + message + "</h3></body></html>");
    }
}