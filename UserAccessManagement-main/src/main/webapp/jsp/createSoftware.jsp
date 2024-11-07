<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Software Application</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div class="container fade-slide-in">
        <h2>Create Software Application</h2>
        <form action="../java/SoftwareServlet" method="post">
            <label for="softwareName">Software Name:</label>
            <input type="text" id="softwareName" name="softwareName" required>
            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="3" required></textarea>
            <label>Access Levels:</label>
            <label><input type="checkbox" name="accessLevels" value="Read"> Read</label>
            <label><input type="checkbox" name="accessLevels" value="Write"> Write</label>
            <label><input type="checkbox" name="accessLevels" value="Admin"> Admin</label>
            <button type="submit">Create Application</button>
        </form>
    </div>
</body>
</html>
