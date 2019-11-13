<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="siteTags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tags</title>
</head>
<body>
<siteTags:header/>
<table style="width:100%;">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <c:import url="navbarTags.jsp"/>
        </td>
        <td style="width:75%;height:80%;">
            <form id="login" method="post" action="LoginUser">
                <table style="width:450px;">
                    <tr>
                        <td>
                            <span>UserName:</span>
                        </td>
                        <td>
							<label>
								<input name="uid" type="text" style="width:250px;" value="${cookie.credentials_uid.value}"/>
							</label>
						</td>
                    </tr>
                    <tr>
                        <td>
                            <span>Password:</span>
                        </td>
                        <td>
							<label>
								<input name="pwd" type="password" style="width:250px;"
									   value="${cookie.credentials_pwd.value}"/>
							</label>
						</td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
							<label>
								<input name="rememberMe" type="checkbox">
							</label>&nbsp;Remember Me
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <input type="submit" value="Sign In" style="width:250px;"/>
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="dest" value="${param.dest}"/>
            </form>
        </td>
    </tr>
</table>
<siteTags:footer copyrightYear="${initParam.copyright}" websiteLink="${initParam.weblink}"/>
</body>
</html>