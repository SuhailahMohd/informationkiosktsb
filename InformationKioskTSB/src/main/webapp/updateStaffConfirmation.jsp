<%@ page language="java" contentType="text/html; 
charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Update Confirmation</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #e1efca; }
        .container { margin: 0 auto; padding: 20px; border: 1px solid #000; width: 50%; text-align: center; background: #fff; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Staff Information Updated Successfully</h2>
        <p>Details:</p>
        <ul>
            <li>Staff ID: ${staffId}</li>
            <li>First Name: ${firstName}</li>
            <li>Last Name: ${lastName}</li>
            <li>Email: ${email}</li>
            <li>Department Name: ${departmentName}</li>
            <li>Department ID: ${departmentID}</li>
        </ul>
        <p><a href="updateStaffAccount.html">Back to form</a></p>
    </div>
</body>
</html>