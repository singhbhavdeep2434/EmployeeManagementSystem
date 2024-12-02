<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #4CAF50; /* Green color */
        }
        a {
            text-decoration: none;
            color: #007BFF; /* Blue color */
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Employee Added Successfully!</h1>
    <p>Your employee has been added to the system.</p>
    <a href="${pageContext.request.contextPath}/showEmployees">View All Employees</a>
    <br>
    <a href="${pageContext.request.contextPath}/home">Go to Home</a>
</body>
</html>
