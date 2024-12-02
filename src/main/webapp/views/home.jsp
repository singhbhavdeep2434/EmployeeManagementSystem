<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Homepage</title>
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
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .button, .search-button {
            display: inline-block;
            padding: 12px 24px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            color: #fff;
            background-color: #007BFF;
            border-radius: 5px;
            border: none;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        .button:hover, .search-button:hover {
            background-color: #0056b3;
        }
        .search-box {
            padding: 12px;
            font-size: 16px;
            width: 100%;
            max-width: 300px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        label {
            display: block;
            font-size: 16px;
            margin-bottom: 8px;
            text-align: left;
        }
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .form-group {
            width: 100%;
            max-width: 600px;
            margin-bottom: 20px;
        }
        .action-buttons {
            text-align: center;
            width: 100%;
        }
        .action-buttons form {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Employees Portal</h1>

        <div class="form-container">
            <!-- Search Employee Form -->
            <form action="/searchEmployee" method="get" class="form-group">
                <label for="searchId">Search Employee by ID:</label>
                <input type="text" name="id" class="search-box" placeholder="Enter Employee ID" required>
                <input type="submit" value="Search Employee" class="search-button">
            </form>

            <!-- Other forms for showing, adding, updating employees -->
            <div class="action-buttons">
                <!-- Button to show all employees -->
                <form action="/showEmployees" method="get" class="form-group">
                    <input type="submit" value="Show All Employees" class="button">
                </form>

                <!-- Button to add a new employee -->
                <form action="/addEmployee" method="get" class="form-group">
                    <input type="submit" value="Add Employee" class="button">
                </form>

                <!-- Button to update a specific employee -->
                <form action="/updateEmployee" method="get" class="form-group">
                    <label for="updateEmployeeId">Enter Employee ID to Update:</label>
                    <input type="text" id="updateEmployeeId" name="id" class="search-box" placeholder="Employee ID" required>
                    <input type="submit" value="Update Employee" class="button">
                </form>
            </div>

            <!-- Button to delete a specific employee -->
            <form action="/deleteEmployee" method="POST" class="form-group" id="deleteEmployeeForm">
                 <label for="employeeId">Enter Employee ID to Delete:</label>
                 <input type="text" id="employeeId" name="id" class="search-box" placeholder="Employee ID" required>
                 <input type="submit" value="Delete Employee" class="button">
            </form>
        </div>
    </div>

    <script>

        document.getElementById('deleteEmployeeForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form submission

            var form = this;
            var employeeId = form.querySelector('#employeeId').value;

            if (!employeeId) {
                alert("Please enter a valid Employee ID.");
                return;
            }

            var hiddenMethodField = document.createElement('input');
            hiddenMethodField.setAttribute('type', 'hidden');
            hiddenMethodField.setAttribute('name', '_method');
            hiddenMethodField.setAttribute('value', 'DELETE');
            form.appendChild(hiddenMethodField);

            form.submit();
        });
    </script>
</body>
</html>
