<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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
    <div class="recipeForm">
        <form action="/login" method="post">
            <table>
                <tr>
                    <td>
                        <input type="email" name="email" placeholder="email"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" placeholder="password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Login">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>


</body>
</html>
