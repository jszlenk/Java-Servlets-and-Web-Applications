<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SQL</title>
</head>
<body>
<table style="width:100%">
    <tr>
        <td style="width:30%">Tag</td>
        <td style="width:70%">Example</td>
    </tr>
    <tr>
        <td>setDataSource</td>
        <td><sql:setDataSource var="world" driver="com.mysql.cj.jdbc.Driver"
                               url="${initParam.urlDB}"
                               user="${initParam.user}"
                               password="${initParam.password}"/>
            [code]
        </td>
    </tr>
    <tr>
        <td>query</td>
        <td><sql:query dataSource="${world}" sql="select * from city" var="cityData"/>
            <table style="width:100%">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>CountryCode</td>
                </tr>
                <c:forEach var="dataRow" items="${cityData.rows}">
                    <tr>
                        <td>${dataRow.Id}</td>
                        <td>${dataRow.Name}</td>
                        <td>${dataRow.CountryCode }</td>
                    </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
</table>
</body>
</html>