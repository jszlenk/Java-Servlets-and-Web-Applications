<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Declaration and Page Directive</title>
</head>
<body>
<%@ include file="header.jsp" %>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <%@ include file="navbar.jsp" %>
        </td>
        <td style="width:75%;height:80%;">
            <%!
                private Calendar gc = GregorianCalendar.getInstance();
                private String hour = String.format("%s", gc.get(Calendar.HOUR_OF_DAY));
                private String min = String.format("%s", gc.get(Calendar.MINUTE));
                private String sec = String.format("%s", gc.get(Calendar.SECOND));
                private Random r = new Random(gc.getTimeInMillis());
            %>
            <%
                if (hour.length() < 2) hour = String.format("0%s", hour);
                if (min.length() < 2) min = String.format("0%s", min);
                if (sec.length() < 2) sec = String.format("0%s", sec);

                out.println("Current Time: <h1>" + hour + ":" + min + ":" + sec + "</h1>");
                out.println("Your lucky number for today: <h2>" + r.nextInt() + "</h2>");
            %>
        </td>
    </tr>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>