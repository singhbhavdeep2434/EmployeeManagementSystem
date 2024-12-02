<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Employees</title>
    <style>
        body { text-align: center; }
        form { margin-top: 50px; }
        input { padding: 10px; margin: 10px; }
    </style>
</head>
<body>
    <h1>Add a New Employee</h1>

    <!-- Spring form that binds to a employee object -->
    <form:form action="handlerAddEmployee" method="post" modelAttribute="Employee">
        <div>
            <form:label path="name">Employee Name</form:label>
            <form:input path="name" required="true" />
        </div>
        <div>
            <form:label path="department">Department</form:label>
            <form:input path="department" required="true" />
        </div>
        <div>
             <form:label path="email">Email</form:label>
             <form:input path="email" type="email" required="true" />
        </div>
        <div>
            <form:label path="salary">Salary</form:label>
            <form:input path="salary" type="number" required="true" />
        </div>
        <div>
            <input type="submit" value="Add Employee" />
        </div>
    </form:form>
</body>
</html>
