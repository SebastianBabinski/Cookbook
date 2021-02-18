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

<div class="container">
    <div class="logo">
        <a href="/"><img src='../../../images/cookbook.png' width="650"/></a>
    </div>
    <nav>
        <ul>
            <li><a href="recipes">Recipes</a></li>
            <li><a href="add">Add</a></li>
            <li><a href="register">Register</a></li>
            <li><a href="login">Login</a></li>
        </ul>
    </nav>
    <hr/>
</div>
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
