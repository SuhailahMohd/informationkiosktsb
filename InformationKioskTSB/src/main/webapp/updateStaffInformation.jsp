<%@ page language="java" contentType="text/html; 
charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Staff Information</title>
    <style>
        .bordered {
            border: 1px solid black;
            padding: 10px;
            margin-bottom: 10px;
        }
        .long-input {
            width: 300px;
        }
    </style>
</head>
<body style="background-color: #e1efca;">
    <div class="bordered" align="center">
        <h2>Update Staff Information</h2>
        <form action="UpdateAccountServlet" method="post">
            <label for="staffId">Enter Staff ID:</label>
            <input type="text" id="staffId" name="staffId" required><br><br>
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" class="long-input" required><br><br>
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" class="long-input" required><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="long-input" required><br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="long-input" required><br><br>
            <label for="departmentName">Department Name:</label>
            <input type="text" id="departmentName" name="departmentName" class="long-input" required><br><br>
            <label for="departmentID">Department ID:</label>
            <input type="text" id="departmentID" name="departmentID" class="long-input" required><br><br>
            <input type="submit" value="Update">
            <input type="reset" value="Reset">
        </form>
    </div>
</body>
</html>