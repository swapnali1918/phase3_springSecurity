<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head>
        <title>Login</title>
    </head>
    <body>
    <center>
    <h2>Login Page</h2>
        <div th:if="${param.error}">
            Invalid username or password.
        </div>
        <div th:if="${param.logout}">
            You have been logged out.
        </div>
        <form th:action="@{/login}" method="post">
            <div><label> Username : <input type="text" name="username"/> </label>&nbsp;&nbsp;</div><br><br>
            <div><label> Password: <input type="password" name="password"/> </label></div><br><br>
            <div><input type="submit" value="Sign In"/></div>
        </form>
        <br>
        <a href="/">Return to Main Page</a>
        </center>
    </body>
</html>