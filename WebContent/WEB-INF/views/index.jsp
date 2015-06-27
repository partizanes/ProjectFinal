<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <!-- jQuery -->
    <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet"/>
    <!-- Notes -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/resources/css/notes.css" />"
          type="text/css"/>
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/sticky-footer.css" rel="stylesheet">
    <title><spring:message code="BrandName"/></title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/"> <spring:message code="BrandName"/> </a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/home">SecurityPage</a></li>
            </ul>

            <form class="navbar-form navbar-right">
                <button type="submit" class="btn btn-success" formaction="/login"><spring:message
                        code="Signin"/></button>
                <button type="submit" class="btn btn-success" formaction="/register"><spring:message
                        code="Registration"/></button>
            </form>
        </div>
    </div>
</nav>

<div class="jumbotron">
    <div class="container">
        <h1>Это основная страница</h1>

        <h2>Используемые технологии:</h2>
        <h4>
            <ul>
                <li>Spring MVC</li>
                <li>Spring Security</li>
                <li>Hibernate</li>
                <li>Log4j</li>
            </ul>
        </h4>
        <h5>Для посещения данной страницы авторизация не нужна</h5>
    </div>
</div>

<%@ include file="footer.jsp" %>

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.min.js"></script>
<!-- Bootstrap -->
<script src="<c:url value="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" />"></script>
<!-- Notes -->
<script src="<c:url value="${pageContext.request.contextPath}/resources/js/notes.js" />"></script>

</body>
</html>
