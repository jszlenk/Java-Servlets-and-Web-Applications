<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="javaserverpages.actions.javabeans.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>setBeansTwo</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <jsp:include page="navbarJSP.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <jsp:useBean id="wu" class="javaserverpages.actions.javabeans.WebUser" scope="request">
                <jsp:setProperty name="wu" property="userId" value='<%=request.getParameter("uid")%>'/>
                <jsp:setProperty name="wu" property="password" value='<%=request.getParameter("pwd")%>'/>
                <jsp:setProperty name="wu" property="authLevel" value="1"/>
            </jsp:useBean>
            <jsp:forward page="useBeans.jsp"/>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>