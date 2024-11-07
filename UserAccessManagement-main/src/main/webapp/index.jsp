<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Access Management System</title>
    <link rel="stylesheet" href="./jsp/css/style.css">
</head>
<body>
   <div class="container">
        <h1 class="fade-slide-in">Welcome to the User Access Management System</h1>
        <p class="fade-slide-in">Select an action below:</p>
        <ul class="fade-in">
            <li><a href="jsp/signup.jsp">Sign Up</a></li>
            <li><a href="jsp/login.jsp">Login</a></li>
        </ul>
        <h2 class="fade-slide-in">Admin Options</h2>
        <ul class="fade-in">
            <li><a href="jsp/createSoftware.jsp">Manage Software Applications</a></li>
        </ul>
        <h2 class="fade-slide-in">Employee Options</h2>
        <ul class="fade-in">
            <li><a href="jsp/requestAccess.jsp">Request Access to Software</a></li>
        </ul>
        <h2 class="fade-slide-in">Manager Options</h2>
        <ul class="fade-in">
            <li><a href="jsp/pendingRequests.jsp">View Pending Access Requests</a></li>
        </ul>
    </div>
   
</body>
</html>
