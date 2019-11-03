<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Formatting</title>
</head>
<body>
<c:set var="testDate" value="<%=new java.util.Date(94,Calendar.SEPTEMBER,2,11,9,17)%>"/>
<c:set var="testNumber" value="9.99"/>
<c:set var = "balance" value = "120000.2309" />

<p>Formatted Number (1): <fmt:formatNumber value = "${balance}"
										   type = "currency"/></p>
<table style="width:100%">
    <tr>
        <td style="width:30%">Tag</td>
        <td style="width:70%">Example2</td>
    </tr>
    <tr>
        <td>formatNumber - currency</td>
        <td><fmt:formatNumber type="currency" value="${testNumber}"/></td>
    </tr>
    <tr>
        <td>formatNumber - pattern</td>
        <td><fmt:formatNumber type="number" pattern="####.###E0" value="${testNumber}"/></td>
    </tr>
    <tr>
        <td>formatNumber - percent</td>
        <td><fmt:formatNumber type="percent" value="${testNumber}"/></td>
    </tr>
    <tr>
        <td>formatDate - pattern</td>
        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${testDate}"/></td>
    </tr>
    <tr>
        <td>formatDate - long/short mix</td>
        <td><fmt:formatDate type="both" dateStyle="long" timeStyle="short" value="${testDate}"/></td>
    </tr>
    <tr>
        <td>formatDate - medium/long mix</td>
        <td><fmt:formatDate type="both" dateStyle="medium" timeStyle="long" value="${testDate}"/></td>
    </tr>
    <tr>
        <td>formatDate - time only</td>
        <td><fmt:formatDate type="time" timeStyle="medium" value="${testDate}"/></td>
    </tr>
    <tr>
        <td>formatDate - date only</td>
        <td><fmt:formatDate type="date" dateStyle="short" value="${testDate}"/></td>
    </tr>
</table>
</body>
</html>