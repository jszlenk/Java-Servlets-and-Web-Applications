<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Clear Session and Cookies</title>
</head>
<body>
<%@ include file="header.jsp" %>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <%@ include file="navbar.jsp" %>
        </td>
        <td style="width:75%;height:80%;">
            <%
                session.invalidate();
                Cookie[] myCookies = request.getCookies();
                if (myCookies != null && myCookies.length > 0) {
                    for (Cookie c : myCookies) {
                        if (c.getName().toLowerCase().contains("credentials")) {
                            c.setMaxAge(0);
                            response.addCookie(c);
                        }
                    }
                }
            %>
            <h1>Sessions and Cookies Cleared</h1>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>