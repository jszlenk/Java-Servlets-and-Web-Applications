<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign out</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
        </td>
        <td style="width:75%;height:80%;">
            <c:if test="${sessionScope.authorized_user != null}">
                <h3>BEFORE: Authorized User = ${sessionScope.authorized_user.userId}</h3>
            </c:if>
            <c:remove var="authorized_user" scope="session"/>
            <h3>AFTER: Authorized User = ${sessionScope.authorized_user.userId}</h3>
        </td>
    </tr>
</table>
</body>
</html>

<%--<c:forEach var="tempCity" items="${sessionScope.cityData}">--%>
<%--	<c:if test="${tempCity.methodX eq 'Jacek'}" >--%>
<%--		<h3>Country: ${tempCity.code} has = ${tempCity.methodX}</h3>--%>
<%--		<c:set var="updateCity" value="${tempCity}" />--%>
<%--		<h3>Before changes: ${updateCity}</h3>--%>
<%--		<c:set target="${updateCity}" property="methodX" value="Jacek" />--%>
<%--		<h3>Please update ${tempCity.code} to have = ${updateCity.methodX}</h3>--%>
<%--		<h3>New Values: ${updateCity}</h3>--%>
<%--		<c:remove var="updateCity" />--%>
<%--		<h3>Variable cleared: ${updateCity}</h3>--%>
<%--	</c:if>--%>
<%--</c:forEach>--%>