<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="errorHandler.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bad Page</title>
</head>
<body>
<%
    if (request.getParameter("notSetYet") == null) {
        throw new IllegalArgumentException("Not Set Yet is. Not Yet Set As Expected!");
    }
%>
</body>
</html>