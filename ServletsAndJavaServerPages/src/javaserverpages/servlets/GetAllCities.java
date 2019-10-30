package javaserverpages.servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaserverpages.actions.javabeans.City;
import servlets.contextlistener.Queries;
import servlets.jdbc.ManagerDB;

@WebServlet("/GetAllCities")
public class GetAllCities extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String target = "";
        HttpSession s = request.getSession();

        if (s.getAttribute("authorized_user") != null) {
            if (getServletContext().getAttribute("managerDB") != null) {
                ManagerDB managerDB = (ManagerDB) getServletContext().getAttribute("managerDB");
                if (!managerDB.isConnected()) {
                    if (!managerDB.openConnection()) {
                        throw new IOException("Could not connect to database and open connection");
                    }
                }

                ArrayList<City> allCities = new ArrayList<City>();
                String query = Queries.getCities();
                try {
                    ResultSet rs = managerDB.ExecuteResultSet(query);
                    while (rs.next()) {

                        City city = new City();
                        city.setName(rs.getString("Name"));
                        city.setCountryCode(rs.getString("CountryCode"));
                        city.setDistrict(rs.getString("District"));
                        city.setPopulation(rs.getInt("Population"));

                        allCities.add(city);
                    }
                    s.setAttribute("AllCities", allCities);
                    target = "showAllCountriesActions.jsp";
                } catch (Exception ex) {
                    throw new IOException("Query could not be executed for get all countries by name");
                }
            }
        } else {
            target = "loginActions.jsp?dest=listCountriesActions";
        }
        response.sendRedirect(target);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}