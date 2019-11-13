<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="siteTags" tagdir="/WEB-INF/tags" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tags</title>
</head>
<body>
<siteTags:header/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarTags.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <h1><c:out value="Tags"/></h1>

            <c:if test="${sessionScope.authorized_user ne null}">
                <h2><c:out value="${sessionScope.authorized_user.userId}"/></h2>
            </c:if>
            <c:if test="${sessionScope.authorized_user eq null}">
                <h2><c:out value="Returning users login"/></h2>
                <a href="loginTags.jsp">here</a>
            </c:if>
        </td>
    </tr>
</table>
<siteTags:footer copyrightYear="${initParam.copyright}" websiteLink="${initParam.weblink}"/>
</body>
</html>