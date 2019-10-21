<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ELFalse</title>
</head>
<body>
<%@ include file="header.jsp" %>
<table style="width:100%;">
	<tr>
		<td style="width:25%;height:80%;" valign="top">
			<%@ include file="navbar.jsp" %>
		</td>
		<td style="width:75%;height:80%;">
			<p>
				Hello <strong>${initParam.user}</strong>
			</p>
		</td>
	</tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>