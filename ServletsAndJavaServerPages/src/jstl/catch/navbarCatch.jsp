<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="indexCatch.jsp" var="indexURL"/>
<c:url value="errorHandlingTagsCatch.jsp" var="errorHandlingTags"/>
<c:url value="errorHandlingTagsTwoCatch.jsp" var="errorHandlingTagsTwo"/>
<a href="${indexURL}">Home</a><br>
<a href="${errorHandlingTags}">Error Tags</a><br>
<a href="${errorHandlingTagsTwo}">Error Tags 2</a><br>
<c:url value="urlwithparametersCatch.jsp" var="urlWithParams">
    <c:param name="param_uid" value="kuba"/>
    <c:param name="param_pwd" value="1234"/>
</c:url>
<a href="${urlWithParams}">URL With Params [${urlWithParams}]</a><br>