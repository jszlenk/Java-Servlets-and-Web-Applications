<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>IndexEL</title>
</head>
<body>

<h3>Hello ${initParam.user}</h3>
I see you like to use <br><strong>${header["user-agent"]}</strong><br> to browse!

<br>${pageContext.request.contextPath}<br>

<h4>HeaderValues:</h4>
${headerValues}<br>

<h2>The application variables tell us:</h2>
<p>User: ${applicationScope.uid}</p>
<p>Password: ${applicationScope.pwd}</p>

<%
    session.setAttribute("uid", "SessionScopeUser");
    session.setAttribute("pwd", "SessionScopePassword");

    int cookieLife = 3600 * 24 * 7;

    Cookie uidCook = new Cookie("credentials_uid", "CookieUser");
    uidCook.setMaxAge(cookieLife);
    response.addCookie(uidCook);

    Cookie pwdCook = new Cookie("credentials_pwd", "CookiePassword");
    uidCook.setMaxAge(cookieLife);
    response.addCookie(pwdCook);
%>

<br><br>
<jsp:include page="navbarEL.jsp"/>
</body>
</html>