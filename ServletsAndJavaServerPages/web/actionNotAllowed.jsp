<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Welcome to the World Manager</title>
</head>
<body>
<%@ include file="header.jsp" %>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <%@ include file="navbar.jsp" %>
        </td>
        <td style="width:75%;height:80%;">
            <h1>Something has gone wrong with the system. Please try again.</h1>
            <p>${pageContext.exception.message}</p>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>