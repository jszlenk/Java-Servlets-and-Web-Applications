<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cookies</title>
</head>
<body>
Hello ${cookie["credentials_uid"].value}
<br>
Access Code: ${cookie.credentials_pwd.value}
<br>
<br><br>
<jsp:include page="navbarEL.jsp" />
</body>
</html>