<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wmelf" uri="ELFunctions" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Custom EL Functions</title>
</head>
<body>
<h2>SQUARE of 2.0:</h2>
<span>${wmelf:square(2.0)}</span>
<h2>CUBE of 2.0:</h2>
<span>${wmelf:cube(2.0)}</span>
<h2>SQUARE of 16.0</h2>
<span>${wmelf:sqrt(16.0)}</span>
</body>
</html>