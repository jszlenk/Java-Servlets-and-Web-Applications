<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Request Scope</title>
</head>
<body>
	<jsp:text>
		Hello ${requestScope.uid}
	</jsp:text>
	<br>	
		Access Code: ${requestScope.pwd}
	<br><br>
	<jsp:include page="navbarEL.jsp" />
</body>
</html>