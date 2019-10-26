<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Start</title>
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
                pageContext.setAttribute("user2", "000", PageContext.PAGE_SCOPE);
                pageContext.setAttribute("LostCode", "111", PageContext.REQUEST_SCOPE);
                pageContext.setAttribute("SecretCode", "222", PageContext.APPLICATION_SCOPE);
                pageContext.setAttribute("SessionCode", "333", PageContext.SESSION_SCOPE);
                request.setAttribute("AnotherCode", "444");
                String destination = "secondPage.jsp?key=555";

//                response.sendRedirect(destination);

                RequestDispatcher rd = request.getRequestDispatcher(destination);
                rd.forward(request,response);

//                pageContext.forward(destination);
            %>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>