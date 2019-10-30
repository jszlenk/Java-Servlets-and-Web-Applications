<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSTL Start</title>
</head>
<body>
<c:import url="headerActions.jsp"/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarActions.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <h1>JSTL</h1>
            <%
                if (session.getAttribute("authorized_user") != null) {
            %>
            <h2>Welcome back ${sessionScope.authorized_user.userId}</h2>
            <%
            } else {
            %>
            <h2>Returning users login</h2>
            <a href="loginActions.jsp">here</a>
            <%
                }
            %>
        </td>
    </tr>
</table>
<c:import url="footerActions.jsp"/>
</body>
</html>