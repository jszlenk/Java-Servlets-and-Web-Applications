package servlets.contextlistener;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servlets.jdbc.ManagerDB;

@WebServlet("/ListAllCountries")
public class ListAllCountries extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ManagerDB managerDB = (ManagerDB) getServletContext().getAttribute("managerDB");
        StringBuilder stringBuilder = new StringBuilder("<html><body>");

        try {
            if (!managerDB.isConnected()) {
                if (managerDB.openConnection()) {
                    stringBuilder.append("Could not connect to the database...");
                }
            }

            stringBuilder.append("<table border=1><thead><tr><th>CountryCode</th><th>Name</th><th>Population</th></tr></thead>");

            String query = Queries.getCountriesByName();
            ResultSet resultSet = managerDB.ExecuteResultSet(query);

            while (resultSet.next()) {

                String id = resultSet.getString("CountryCode");
                String name = resultSet.getString("Name");
                int population = resultSet.getInt("Population");
                stringBuilder.append("<tr><td>").append(id).append("</td>").append("<td>").append(name).append("</td>").append("<td>").append(population).append("</td></tr>");
            }

            stringBuilder.append("</table>");

        } catch (Exception e) {
            stringBuilder.append("<h1>ERROR: ").append(e.getMessage()).append("</h1>");
        }

        stringBuilder.append("</body></html>");

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println(stringBuilder);
    }
}