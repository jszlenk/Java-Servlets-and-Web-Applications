<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Interceptor</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarTags.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <h1>Value: <%=request.getParameter("interceptedparam") %>
            </h1>
        </td>
    </tr>
</table>
<c:import url="footerJstl.jsp">
    <c:param name="copyrightYear" value="${initParam.copyright}"/>
    <c:param name="websiteLink" value="${initParam.weblink}"/>
</c:import>
</body>
</html>