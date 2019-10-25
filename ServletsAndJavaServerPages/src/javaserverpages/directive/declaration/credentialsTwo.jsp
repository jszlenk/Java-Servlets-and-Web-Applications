<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Credentials</title>
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
                try {
                    HttpSession s = request.getSession();
                    String uid = (String) s.getAttribute("uid");
                    out.println("Hello <strong>" + uid + "</strong>");
                } catch (Exception e) {
                    out.println("Could not access the session");
                }
            %>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>