<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="servlets.*, java.sql.*" %>
<%@ page import="javaserverpages.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>List Cities</title>
</head>
<body>
<c:import url="headerJstl.jsp"/>
<c:choose>
    <c:when test="${sessionScope.authorized_user eq null}">
        <c:redirect url="loginJstl.jsp?dest=listCities"/>
    </c:when>
    <c:when test="${sessionScope.authorized_user.authLevel ne 1}">
        <c:redirect url="loginJstl.jsp?dest=listCities"/>
    </c:when>
    <c:when test="${sessionScope.authorized_user.userId eq null}">
        <c:redirect url="loginJstl.jsp?dest=listCities"/>
    </c:when>
    <c:when test="${sessionScope.AllCities eq null}">
        <c:redirect url="GetAllCities"/>
    </c:when>
    <c:otherwise>
        <h1><c:out value="Welcome Back ${sessionScope.authorized_user.userId}"/></h1>
    </c:otherwise>
</c:choose>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarJstl.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <table border=1>
                <tr>
                    <td>POSITION</td>
                    <td>ID</td>
                    <td>NAME</td>
                    <td>COUNTRY_CODE</td>
                    <td>DISTRICT</td>
                    <td>POPULATION</td>
                </tr>
                <c:forEach var="AllCities" items="${sessionScope.AllCities}" varStatus="iterationCount">
                    <tr>
                        <td>${iterationCount.count}</td>
                        <td>${AllCities.id}</td>
                        <td>${AllCities.name}</td>
                        <td>${AllCities.countryCode}</td>
                        <td>${AllCities.district}</td>
                        <td>${AllCities.population}</td>
                    </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
</table>
<c:import url="footerJstl.jsp">
    <c:param name="copyrightYear" value="${initParam.copyright}"/>
    <c:param name="websiteLink" value="${initParam.weblink}"/>
</c:import>
</body>
</html>