package servlets.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ListAllCities")
public class ListAllCities extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = getServletContext().getInitParameter("user");
        String password = getServletContext().getInitParameter("password");
        String database = getServletContext().getInitParameter("database");

        ConnectionBehavior connectionBehavior = new ServerConnection(user, password, database);

        ManagerDB managerDB = new ManagerDB(connectionBehavior);
        StringBuilder stringBuilder = new StringBuilder("<html><body>");

        try {
            if (!managerDB.isConnected()) {
                if (!managerDB.openConnection()) {
                    stringBuilder.append("Could not connect to the database...");
                }
            }

            stringBuilder.append("<table border=1><thead><tr><th>Id</th><th>Name</th><th>CountryCode</th><th>District</th><th>Population</th></tr></thead>");

            String query = "select * from city";

            ResultSet resultSet = managerDB.ExecuteResultSet(query);

            while (resultSet.next()) {

                int id = resultSet.getInt("Id");
                String name = resultSet.getString("Name");
                String city = resultSet.getString("CountryCode");
                String dist = resultSet.getString("District");
                int population = resultSet.getInt("Population");

                stringBuilder.append("<tbody><tr><td>").append(id).append("</td>").append("<td>").append(name).append("</td>").append("<td>").append(city)
                        .append("</td>").append("<td>").append(dist).append("</td>").append("<td>").append(population).append("</td></tr></tbody>");
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