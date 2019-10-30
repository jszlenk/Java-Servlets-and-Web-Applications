<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isErrorPage="true" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Our bad!</title>
</head>
<body>
<%@ include file="headerActions.jsp" %>
<table style="width:100%;">
	<tr>
		<td style="width:25%;height:80%;" valign="top">
			<%@ include file="navbarActions.jsp" %>
		</td>
		<td style="width:75%;height:80%;">
			<h1>An Error has occurred!</h1><br>
			${pageContext.exception.message}
		</td>
	</tr>
</table>
<jsp:include page="footerActions.jsp"/>
</body>
</html>