<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <style>
        body {
            background-image: url('/images/WP1-80.jpg');
        }
    </style>
    <title>Cookbook</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../assets/styles.css">
</head>
<body>
<header>
    <jsp:include page="header.jsp"/>
</header>

<div>
    <security:authorize access="isAuthenticated()">
        authenticated as <security:authentication property="principal.username" />
    </security:authorize>
</div>


</body>
</html>
