<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <h1>Welcome to the Java Server Pages</h1>
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
<jsp:include page="footerActions.jsp"/>
</body>
</html>