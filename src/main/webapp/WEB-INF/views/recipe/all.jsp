<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <c:forEach items="${recipes}" var="recipes">
        <table>
            <tr>
                <td>
                    1: ${recipes.recipeName}
                    2: ${recipes.mealType}
                    3: ${recipes.prepTime}
                    4: ${recipes.recipeDescription}}
                </td>
            </tr>
        </table>
    </c:forEach>
</div>
</body>
</html>
