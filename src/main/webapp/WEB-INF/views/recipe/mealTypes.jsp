<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            background-image: url('/images/mealtypes.png');
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
    <table class="mealType">
        <tr>
            <td colspan="3"><a href="recipes/all"><img src='../../../images/all-95.png' class="all" alt="all"></a></td>
        </tr>
        <tr>
            <td>
                <a href=""><img src='../../../images/appetizer-95.png' class="all" alt="appetizer"></a>
            </td>
            <td>
                <a href=""><img src='../../../images/dessert.png' class="all" alt="dessert"></a>
            </td>
            <td>
                <a href=""><img src='../../../images/drink90.png' class="all" alt="drink"></a>
            </td>
        </tr>
        <tr>
            <td>
                <a href=""><img src='../../../images/salad.png' class="all" alt="salad"></a>
            </td>
            <td>
                <a href=""><img src='../../../images/sidedish.png' class="all" alt="side dish"></a>
            </td>
            <td>
                <a href=""><img src='../../../images/soup.png' class="all" alt="soup"></a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
