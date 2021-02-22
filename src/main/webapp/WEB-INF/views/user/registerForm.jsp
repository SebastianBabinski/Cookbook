<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            background-image: url('/images/register70.png');
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
    <div class="recipeForm">
        <%--@elvariable id="user" type="babinski.sebastian.model.User"--%>
        <form:form modelAttribute="user" method="post">
            <table>
                <tr>
                    <td>
                        <form:input path="firstName" placeholder="first name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:input path="lastName" placeholder="last name"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:input path="email" placeholder="email"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:password path="password" placeholder="password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Register">
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</div>
</body>
</html>
