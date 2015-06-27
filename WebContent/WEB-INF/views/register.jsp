<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <!-- jQuery -->
    <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet"/>
    <!-- Notes -->
    <link rel="stylesheet" href="<c:url value="/resources/css/notes.css" />" type="text/css"/>
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/sticky-footer.css" rel="stylesheet">
    <title><spring:message code="Registration"/></title>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/"> <spring:message code="BrandName"/> </a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/home">SecurityPage</a></li>
        </ul>
        <form class="navbar-form navbar-right">
            <button type="submit" class="btn btn-success" formaction="/login"><spring:message code="Signin"/></button>
        </form>
    </div>
</div>

<div class="container">
    <!-- Login Panel -->
    <div class="row registration-panel">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><spring:message code="Registration"/></h3>
                </div>
                <div class="panel-body">
                    <form:form accept-charset="UTF-8" role="form" action="register" method="POST" id="register-form"
                               commandName="registration">
                        <fieldset>
                            <c:set var="usernameErrors"><form:errors path="username"/></c:set>
                            <c:choose>
                            <c:when test="${not empty usernameErrors}">
                            <div class="form-group has-error">
                                </c:when>
                                <c:otherwise>
                                <div class="form-group">
                                    </c:otherwise>
                                    </c:choose>
                                    <label class="control-label" for="register-username">
                                        <form:errors path="username"/>
                                    </label>
                                    <spring:message code="User" var="user"/>
                                    <form:input type="text" path="username" placeholder="${user}" class="form-control"
                                                id="register-username" autofocus=""/>
                                </div>
                                <c:set var="passwordErrors">
                                    <form:errors path="password"/>
                                </c:set>
                                <c:choose>
                                <c:when test="${not empty passwordErrors}">
                                <div class="form-group has-error">
                                    </c:when>
                                    <c:otherwise>
                                    <div class="form-group">
                                        </c:otherwise>
                                        </c:choose>
                                        <label class="control-label" for="register-password">
                                            <form:errors path="password"/>
                                        </label>
                                        <spring:message code="Pass" var="pass"/>
                                        <form:password path="password" placeholder="${pass}" class="form-control"
                                                       id="register-password"/>
                                    </div>
                                    <c:set var="confirmPasswordErrors">
                                        <form:errors path="confirmPassword"/>
                                    </c:set>
                                    <c:choose>
                                    <c:when test="${not empty confirmPasswordErrors}">
                                    <div class="form-group has-error">
                                        </c:when>
                                        <c:otherwise>
                                        <div class="form-group">
                                            </c:otherwise>
                                            </c:choose>
                                            <label class="control-label" for="register-confirmPassword">
                                                <form:errors path="confirmPassword"/>
                                            </label>
                                            <spring:message code="ConfirmPass" var="confirmpass"/>
                                            <form:password path="confirmPassword" placeholder="${confirmpass}"
                                                           class="form-control" id="register-confirmPassword"/>
                                        </div>
                                        <c:set var="emailErrors">
                                            <form:errors path="email"/>
                                        </c:set>
                                        <c:choose>
                                        <c:when test="${not empty emailErrors}">
                                        <div class="form-group has-error">
                                            </c:when>
                                            <c:otherwise>
                                            <div class="form-group">
                                                </c:otherwise>
                                                </c:choose>
                                                <label class="control-label" for="register-email">
                                                    <form:errors path="email"/>
                                                </label>
                                                <spring:message code="EmailMsg" var="EmailMsg"/>
                                                <form:input type="text" path="email" placeholder="${EmailMsg}"
                                                            class="form-control" id="register-email"/>
                                            </div>
                                                <spring:message code="Registration" var="registration"/>
                                            <input type="submit" name="submit" value="${registration}"
                                                   class="btn btn-lg btn-primary btn-block"/>
                        </fieldset>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.min.js"></script>
<!-- Bootstrap -->
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<!-- Notes -->
<script src="<c:url value="/resources/js/notes.js" />"></script>
</body>
</html>