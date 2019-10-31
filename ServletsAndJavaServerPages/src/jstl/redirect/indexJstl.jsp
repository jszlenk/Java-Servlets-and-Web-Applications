<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSTL Index</title>
</head>
<body>
<c:import url="headerJstl.jsp"/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarJstl.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <h1><c:out value="JSTL"/></h1>
            <%
                if (session.getAttribute("authorized_user") != null) {
            %>
            <h2><c:out value="${sessionScope.authorized_user.userId}"/></h2>
            <%
            } else {
            %>
            <h2><c:out value="Returning users login"/></h2>
            <a href="loginJstl.jsp">here</a>
            <%
                }
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