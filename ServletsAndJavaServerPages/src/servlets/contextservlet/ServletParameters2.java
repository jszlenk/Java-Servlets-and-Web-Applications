package servlets.contextservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletParameters2")
public class ServletParameters2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String secretCode = getServletConfig().getInitParameter("secretCode");
		String db = getServletContext().getInitParameter("DB");
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String outString = String.format("Secret Code: %s\tJDBC: %s\n",
				(secretCode == null ? "unauthorized" : secretCode),
				db);
		
		out.println("<html><body><h3>" + outString + "</h3></body></html>");
	}
}