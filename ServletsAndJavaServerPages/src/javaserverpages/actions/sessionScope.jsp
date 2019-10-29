<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Session Scope</title>
</head>
<body>
	<jsp:text>
		Hello ${sessionScope.uid}
	</jsp:text>
	<br>	
	Access Code: ${sessionScope.pwd}
	<br>
	<br><br>
	<jsp:include page="navbarEL.jsp" />
</body>
</html>