<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Forward</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
			<jsp:include page="navbarJSP.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <jsp:forward page="forwardTwo.jsp">
                <jsp:param value="10110101" name="secretCode"/>
                <jsp:param value="webuser" name="uid"/>
            </jsp:forward>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>