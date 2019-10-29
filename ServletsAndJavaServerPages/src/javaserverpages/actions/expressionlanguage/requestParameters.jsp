<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Request Parameters</title>
</head>
<body>
	<jsp:forward page="requestParametersTwo.jsp">
		<jsp:param value="RequestParametersUser" name="uid"/>
		<jsp:param value="RequestParametersPassword" name="pwd"/>
	</jsp:forward>
	<jsp:include page="navbarEL.jsp" />
</body>
</html>