<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Log In</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%!
    private String uid = "";
    private String pwd = "";
%>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <%@ include file="navbar.jsp" %>
        </td>
        <td style="width:75%;height:80%;">
            <%
                if (session.getAttribute("uid") == null || session.getAttribute("uid").equals("")) {
                    Cookie[] myCookies = request.getCookies();
                    if (myCookies != null) {
                        for (Cookie c : myCookies) {
                            if (c.getName().equalsIgnoreCase("credentials_uid")) {
                                uid = c.getValue();
                            } else if (c.getName().equalsIgnoreCase("credentials_pwd")) {
                                pwd = c.getValue();
                            }
                        }
                    }
                } else {
                    uid = (String) session.getAttribute("uid");
                    pwd = (String) session.getAttribute("pwd");
                }
            %>
            <form id="form1" method="post" action="LoginServletTwo">
                <table style="width:450px;">
                    <tr>
                        <td>
                            <span>UserName:</span>
                        </td>
                        <td>
                            <input name="uid" type="text" style="width:250px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>Password:</span>
                        </td>
                        <td>
                            <input name="pwd" type="password" style="width:250px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <input name="noSession" type="checkbox">&nbsp;No Session
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <input name="rememberMe" type="checkbox">Remember Me
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <input type="submit" value="Sign In" style="width:250px;"/>
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>