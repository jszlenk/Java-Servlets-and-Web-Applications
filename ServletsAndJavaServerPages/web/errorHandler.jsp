<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isErrorPage="true" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Our bad!</title>
</head>
<body>
<%@ include file="header.jsp" %>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <%@ include file="navbar.jsp" %>
        </td>
        <td style="width:75%;height:80%;">
            <h1>An Error has occurred!</h1><br>
            <%
                out.println(exception.getMessage());
            %>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>