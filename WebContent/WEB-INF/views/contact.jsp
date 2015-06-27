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
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/"> <spring:message code="BrandName"/> </a>
    </div>
    <div class="collapse navbar-collapse">
      <%@ include file="menu.jsp" %>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value='/j_spring_security_logout' />"><spring:message code="SignOut"/></a></li>
        <li class="dropdown"><a href="#" class="dropdown-toggle"
                                data-toggle="dropdown"><c:out value="${username}"/> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Profile</a></li>
            <li class="divider"></li>
            <li><a href="<c:url value='/j_spring_security_logout' />"><spring:message code="SignOut"/></a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!--/.nav-collapse -->
  </div>
</div>
<div class="container-fluid">
 <h2>Contact Page</h2>
 <br/>
  <spring:message code="Welcome"/> <c:out value="${username}"/>!
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