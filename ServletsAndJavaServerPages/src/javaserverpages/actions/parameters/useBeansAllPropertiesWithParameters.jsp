<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>setBeans with All Parameters</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<table style="width:100%;">
		<tr>
			<td style="width:25%;height:80%;" valign="top">
				<jsp:include page="navbarJSP.jsp" />
			</td>
			<td style="width:75%;height:80%;">
				<jsp:useBean id="wu" class="javaserverpages.actions.javabeans.WebUser" scope="request"/>

				<h1>Welcome 
					<jsp:getProperty name="wu" property="userId" />
				</h1>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp" />
</body>
</html>