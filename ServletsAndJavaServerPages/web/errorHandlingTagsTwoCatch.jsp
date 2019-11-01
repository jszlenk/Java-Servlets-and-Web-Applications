<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error Two</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
			<c:import url="navbarCatch.jsp"/>
		</td>
        <td style="width:75%;height:80%;">
            <c:catch var="badCode">
                Result: ${ 59 / 0 }<br>
                Result2: <% int x = 59 / 0; %><%= x %>
            </c:catch>
            <c:if test="${badCode != null}">
                <c:redirect url="errorHandlerCatch.jsp">
                    <c:param name="ex" value="${badCode.message}"/>
                </c:redirect>
            </c:if>
        </td>
    </tr>
</table>
</body>
</html>