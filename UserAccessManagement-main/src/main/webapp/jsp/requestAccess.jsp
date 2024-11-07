<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Request Access</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div class="container fade-slide-in">
        <h2>Request Access to Software</h2>
        <form action="../java/RequestServlet" method="post">
            <label for="softwareName">Software:</label>
            <select id="softwareName" name="softwareName" required>
                <!-- Options will be dynamically populated -->
                <option value="Software1">Software1</option>
                <option value="Software2">Software2</option>
            </select>
            <label for="accessType">Access Type:</label>
            <select id="accessType" name="accessType" required>
                <option value="Read">Read</option>
                <option value="Write">Write</option>
                <option value="Admin">Admin</option>
            </select>
            <label for="reason">Reason for Request:</label>
            <textarea id="reason" name="reason" rows="3" required></textarea>
            <button type="submit">Submit Request</button>
        </form>
    </div>
</body>
</html>
