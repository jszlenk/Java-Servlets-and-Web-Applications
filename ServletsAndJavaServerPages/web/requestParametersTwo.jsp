<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>All Parameters</title>
</head>
<body>
	<h1>All Parameters</h1>
	${paramValues}
	<p>User: ${param.uid}</p>
	<p>Password: ${param.pwd}</p>
	<br>
	<jsp:include page="navbarEL.jsp" />
</body>
</html>