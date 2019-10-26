<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Page Two</title>
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
                String dbUIDFail = (pageContext.getAttribute("user2", PageContext.PAGE_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("user2", PageContext.PAGE_SCOPE));

                String dbUIDSuccess = (application.getInitParameter("user") == null ? "bad" :
                        application.getInitParameter("user"));

                String uid = (pageContext.getAttribute("uid", PageContext.SESSION_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("uid", PageContext.SESSION_SCOPE));

                String sessionCode = (pageContext.getAttribute("SessionCode", PageContext.SESSION_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("SessionCode", PageContext.SESSION_SCOPE));

                String scode = (pageContext.getAttribute("SecretCode", PageContext.APPLICATION_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("SecretCode", PageContext.APPLICATION_SCOPE));

                String acode = (pageContext.getAttribute("AnotherCode", PageContext.REQUEST_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("AnotherCode", PageContext.REQUEST_SCOPE));

                String pcode = (pageContext.getAttribute("key", PageContext.REQUEST_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("key", PageContext.REQUEST_SCOPE));

                String pcode2 = request.getParameter("key");

                String lcode = (pageContext.getAttribute("LostCode", PageContext.REQUEST_SCOPE) == null ? "bad" :
                        (String) pageContext.getAttribute("LostCode", PageContext.REQUEST_SCOPE));

            %>
            <table style="width:100%;" border="1">
                <tr>
                    <td style="width:35%;">pageContext DB User ID</td>
                    <%
                        if (dbUIDFail.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= dbUIDFail %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= dbUIDFail %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">application DB User ID</td>
                    <%
                        if (dbUIDSuccess.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= dbUIDSuccess %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= dbUIDSuccess %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">User ID SESSION_SCOPE</td>
                    <%
                        if (uid.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= uid %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= uid %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">User ID</td>
                    <%
                        if (sessionCode.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= sessionCode %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= sessionCode %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">Secret Code</td>
                    <%
                        if (scode.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= scode %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= scode %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">Another Code</td>
                    <%
                        if (acode.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= acode %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= acode %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">Key REQUEST_SCOPE</td>
                    <%
                        if (pcode.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= pcode %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= pcode %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">Key</td>
                    <%
                        if (pcode2.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= pcode2 %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= pcode2 %></td>
                    <%
                        }
                    %>
                </tr>
                <tr>
                    <td style="width:35%;">Lost Code</td>
                    <%
                        if (lcode.equalsIgnoreCase("BAD")) {
                    %>
                    <td style="width:65%;background-color:#e5b75b;"><%= lcode %></td>
                    <%
                    } else {
                    %>
                    <td style="width:65%;background-color:#6599ff;"><%= lcode %></td>
                    <%
                        }
                    %>
                </tr>
            </table>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>