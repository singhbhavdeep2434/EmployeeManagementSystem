<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            margin-top: 50px;
        }
        h1 {
            color: #333;
        }
        .form-container {
            display: inline-block;
            text-align: left;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .form-container input[type="text"], .form-container input[type="email"], .form-container input[type="number"] {
            width: 300px;
            padding: 10px;
            margin-bottom: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-container input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
        }
        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .form-container label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Employee</h1>
        <div class="form-container">
            <form action="/saveUpdatedEmployee" method="post">
                <!-- Hidden input to pass the employee ID -->
                <input type="hidden" name="id" value="${Employee.id}">

                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${Employee.name}" required><br>

                <label for="department">Department:</label>
                <input type="text" id="department" name="department" value="${Employee.department}" required><br>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${Employee.email}" required><br>

                <label for="salary">Salary:</label>
                <input type="number" id="salary" name="salary" value="${Employee.salary}" required><br><br>

                <input type="submit" value="Update Employee">
            </form>
        </div>
    </div>
</body>
</html>
