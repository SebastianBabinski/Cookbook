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
    <link rel="stylesheet" href="/assets/styles.css">
</head>
<body>
<header>
    <jsp:include page="../header.jsp"/>
</header>

<div class="mainContent">
    <div class="recipeForm">

        <form:form modelAttribute="recipe" method="post">
            <table>
                <tr>
                    <td>
                        <form:input path="recipeName" placeholder="Recipe name"/><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:select path="mealType">
                            <form:option value="" label="Select meal type" />
                            <form:option value="Appetizer">Appetizer</form:option>
                            <form:option value="Dessert">Dessert</form:option>
                            <form:option value="Drink">Drink</form:option>
                            <form:option value="Main dish">Main dish</form:option>
                            <form:option value="Salad">Salad</form:option>
                            <form:option value="Side dish">Side dish</form:option>
                            <form:option value="Soup">Soup</form:option>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:input path="prepTime" placeholder="Preparation time"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:textarea path="recipeDescription" style="overflow:auto;resize:none" placeholder="Recipe description" rows="7" cols="20"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Add recipe">
                    </td>
                </tr>
            </table>

        </form:form>
    </div>
</div>


</body>
</html>
