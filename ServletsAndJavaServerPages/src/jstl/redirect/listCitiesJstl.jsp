<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="servlets.jdbc.ManagerDB" %>
<%@ page import="javaserverpages.actions.javabeans.WebUser" %>
<%@ page import="servlets.contextlistener.Queries" %>
<%@ page import="java.sql.ResultSet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>List Cities</title>
</head>
<body>
<c:import url="headerJstl.jsp"/>
<%!
    String uid = "";
    String pwd = "";
    ManagerDB managerDB;
    WebUser wu;
%>
<%
    if (session.getAttribute("authorized_user") == null) {
%>
<c:redirect url="loginJstl.jsp?dest=listCities"/>
<%
} else {
    wu = (WebUser) session.getAttribute("authorized_user");
    Integer authLevel = (Integer) wu.getAuthLevel();
    if (authLevel < 1) {
%>
<c:redirect url="loginJstl.jsp?dest=listCities"/>
<%
        }

        if (wu.getUserId() != null && !wu.getUserId().equals("")) {
            uid = wu.getUserId();
        }
        if (wu.getPassword() != null && !wu.getPassword().equals("")) {
            pwd = wu.getPassword();
        }
    }
%>
<%
    if (uid != null && !uid.equals("")) {
%>
<h1><c:out value="Back"/><%= uid %>
</h1>
<h1><c:out value="Back ${sessionScope.authorized_user.userId}"/></h1>
<%
    }
%>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarJstl.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <%
                managerDB = (ManagerDB) application.getAttribute("managerDB");
                StringBuilder stringBuilder = new StringBuilder("<html><body>");
                try {
                    if (!managerDB.isConnected()) {
                        if (!managerDB.openConnection()) {
                            stringBuilder.append("Could not connect to the database...");
                        }
                    }

                    stringBuilder.append("<table border=1><thead><tr><th>Id</th><th>Name</th><th>CountryCode</th><th>District</th><th>Population</th></tr></thead>");

                    String query = Queries.getCities();
                    ResultSet resultSet = managerDB.ExecuteResultSet(query);

                    while (resultSet.next()) {
                        int id = resultSet.getInt("Id");
                        String name = resultSet.getString("Name");
                        String ctry = resultSet.getString("CountryCode");
                        String dist = resultSet.getString("District");
                        int pop = resultSet.getInt("Population");

                        stringBuilder.append("<tr><td>").append(id).append("</td>").append("<td>").append(name).append("</td>").append("<td>").append(ctry).append("</td>").append("<td>").append(dist).append("</td>").append("<td>").append(pop).append("</td></tr>");
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
<c:import url="footerJstl.jsp">
    <c:param name="copyrightYear" value="${initParam.copyright}"/>
    <c:param name="websiteLink" value="${initParam.weblink}"/>
</c:import>
</body>
</html>