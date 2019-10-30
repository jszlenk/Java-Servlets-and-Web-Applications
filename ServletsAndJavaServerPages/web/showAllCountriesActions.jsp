<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         import="java.util.*, javaserverpages.actions.javabeans.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>index JSP</title>
</head>
<body>
<jsp:include page="headerActions.jsp"/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <jsp:include page="navbarActions.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <table style="width:100%" border="1">
                <%
                    ArrayList<City> allCountries = (ArrayList<City>) session.getAttribute("AllCities");
                    StringBuilder sb = new StringBuilder("");
                    sb.append("<tr><td>Name</td><td>Code</td>");

                    for (City c : allCountries) {
                        sb.append("<tr>");

                        sb.append("<td>").append(c.getName()).append("</td>");
                        sb.append("<td>").append(c.getCountryCode()).append("</td>");
                        sb.append("</tr>");
                    }
                    out.println(sb);
                %>
            </table>
        </td>
    </tr>
</table>
<jsp:include page="footerActions.jsp"/>
</body>
</html>