<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Math</title>
</head>
<body>

<h3>EL math and Logic</h3>

<p>2 + 2 = ${2 + 2}</p>
<p>2 * 6 = ${2 * 6}</p>
<p>16 / 8 = ${16 / 8}</p>
<p>Is 32 > 50 ? : ${32 > 50}</p>
<p>Is 32 > 50 ? : ${32 gt 50}</p>
<p>Is 100 < 1000 ? : ${100 < 1000}</p>
<p>Is 100 < 1000 ? : ${100 lt 1000}</p>
<p>100 == 100 : <input type="text" value="${100 eq 100}"/></p>p>
<p>Is (100 < 1000 && 10 < 100) : ${100 < 1000 && 10 < 100}</p>
<p>Is (100 > 1000 || 10 < 100) : ${100 > 1000 || 10 < 100}</p>

<%
    pageContext.setAttribute("PI", 3.14159);
    pageContext.setAttribute("radius", 2);
    pageContext.setAttribute("width", 40);
    pageContext.setAttribute("length", 10);
%>

<p>Results:</p>
<p>Circle Area = ${pageScope.PI} * ${pageScope.radius}^2</p>
<strong>${pageScope.PI * pageScope.radius * pageScope.radius }</strong>
<p>Square Area = ${pageScope.length} * ${pageScope.length}</p>
<strong>${pageScope.length * pageScope.length}</strong>
<p>Rectangle Area = ${pageScope.length} * ${pageScope.width}</p>
<strong>${pageScope.length * pageScope.width}</strong>

</body>
</html>
