<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title><spring:message code="BrandName"/> <spring:message code="SignOut"/></title>
</head>
<body>
<h2><spring:message code="SignOutMsg"/></h2>
<a href="<c:url value='/login' />">Login</a>
</body>
</html>