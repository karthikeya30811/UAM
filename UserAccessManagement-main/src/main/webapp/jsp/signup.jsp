<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div class="container fade-slide-in">
        <h2>Sign Up</h2>
        <form action="../java/SignUpServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Create Account</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
    </div>
</body>
</html>
