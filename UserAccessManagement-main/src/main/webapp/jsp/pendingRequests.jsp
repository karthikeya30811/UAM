<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pending Requests</title>
    <link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <div class="container fade-slide-in">
        <h2>Pending Access Requests</h2>
        <table>
            <tr>
                <th>Employee</th>
                <th>Software</th>
                <th>Access Type</th>
                <th>Reason</th>
                <th>Action</th>
            </tr>
            <!-- Example row; dynamically generate in servlet -->
            <tr>
                <td>John Doe</td>
                <td>Software1</td>
                <td>Write</td>
                <td>Project requirement</td>
                <td>
                    <button onclick="approveRequest()">Approve</button>
                    <button onclick="rejectRequest()">Reject</button>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
