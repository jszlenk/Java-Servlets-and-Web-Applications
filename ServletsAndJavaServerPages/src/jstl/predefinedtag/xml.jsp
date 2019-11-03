<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>XML</title>
</head>
<body>
<c:set var="xmlCityData">
    <cities>
        <city>
            <id>1</id>
            <name>Berlin</name>
        </city>
        <city>
            <id>2</id>
            <name>London</name>
        </city>
        <city>
            <id>3</id>
            <name>Moscow</name>
        </city>
        <city>
            <id>4</id>
            <name>New York</name>
        </city>
        <city>
            <id>5</id>
            <name>Paris</name>
        </city>
    </cities>
</c:set>
<table style="width:100%">
    <tr>
        <td style="width:30%">Tag</td>
        <td style="width:70%">Example</td>
    </tr>
    <tr>
        <td>XML - parse DOC</td>
        <td>
            <x:parse var="cityData" xml="${xmlCityData}"/>
            <table style="width:100%;">
                <x:forEach var="city" select="$cityData/cities/city/name">
                    <tr>
                        <td><x:out select="$city"/></td>
                    </tr>
                </x:forEach>
            </table>
        </td>
    </tr>
</table>
</body>
</html>