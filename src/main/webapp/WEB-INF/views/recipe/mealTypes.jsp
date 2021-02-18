<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        <table>
            <tr>
                <td><a href="recipes/all">All</a></td>
            </tr>
            <tr>
                <td>
                    <a href="">Appetizer</a>
                </td>
                <td>
                    <a href="">Dessert</a>
                </td>
                <td>
                    <a href="">Main dish</a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="">Salad</a>
                </td>
                <td>
                    <a href="">Side dish</a>
                </td>
                <td>
                    <a href="">Soup</a>
                </td>
            </tr>
        </table>
</div>
</body>
</html>
