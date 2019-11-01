<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>URL Parameters</title>
</head>
<body>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarCatch.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <h3>Uid: ${param.param_uid}</h3>
            <h3>Pwd: ${param.param_pwd}</h3>
        </td>
    </tr>
</table>
</body>
</html>