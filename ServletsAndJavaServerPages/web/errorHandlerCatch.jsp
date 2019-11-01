<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error Handler</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
			<c:import url="navbarCatch.jsp"/>
		</td>
        <td style="width:75%;height:80%;">
            <h1>An Error has occurred!</h1><br>
            ${pageContext.exception.message}
            ${param.ex}
        </td>
    </tr>
</table>
</body>
</html>