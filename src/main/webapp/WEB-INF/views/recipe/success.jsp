<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="../../../assets/styles.css">
</head>
<body>
<header>
    <jsp:include page="../header.jsp"/>
</header>

<div class="mainContent">
    <div class="success"> <p>Recipe added to the cookbook!</p>
        <button class="button" onClick="javascript:location.href='/'">back to homepage</button>
    </div>
</div>


</body>
</html>
