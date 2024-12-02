<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        table {
            width: 80%;
            margin: 50px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 15px;
            text-align: center;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Employee List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>
            <th>Salary</th>
        </tr>

        <!-- Use JSTL forEach loop to iterate through employees list -->
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.department}</td>
                <td>${employee.email}</td>
                <td>${employee.salary}</td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>
