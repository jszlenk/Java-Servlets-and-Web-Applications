<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"
         import="servlets.contextlistener.*, servlets.jdbc.*, java.sql.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Scriplets</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%!
    private String uid = "";
    private String pwd = "";
%>
<%
    if (session.getAttribute("authlevel") == null || session.getAttribute("authlevel").equals("")) {
        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
    } else {
        Integer authLevel = (Integer) session.getAttribute("authlevel");
        if (authLevel < 1) {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }
    if (session.getAttribute("uid") != null && !session.getAttribute("uid").equals("")) {
        uid = (String) session.getAttribute("uid");
    }
    if (session.getAttribute("pwd") != null && !session.getAttribute("pwd").equals("")) {
        pwd = (String) session.getAttribute("pwd");
    }
%>
<%
    if (uid != null && !uid.equals("")) {
%>
<h1>Welcome Back <%= uid %></h1>
<%
    }
%>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <%@ include file="navbar.jsp" %>
        </td>
        <td style="width:75%;height:80%;">
            <%
                ManagerDB managerDB = (ManagerDB) application.getAttribute("managerDB");

                StringBuilder stringBuilder = new StringBuilder("<html><body>");

                try {
                    if (!managerDB.isConnected()) {
                        if (managerDB.openConnection()) {
                            stringBuilder.append("Could not connect to the database...");
                        }
                    }

                    stringBuilder.append("<table border=1><thead><tr><th>Id</th><th>Name</th><th>CountryCode</th><th>District</th><th>Population</th></tr></thead>");

                    String query = Queries.getCities();
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
                out.println(stringBuilder);
            %>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>