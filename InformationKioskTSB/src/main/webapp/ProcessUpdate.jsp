<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Staff Information</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #e1efca;
    }
    .bordered {
      border: 1px solid black;
      padding: 10px;
      margin-bottom: 10px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 80%;
      margin: 20px auto;
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    p {
      margin: 5px 0;
    }
    a {
      display: block;
      text-align: center;
      margin-top: 20px;
      text-decoration: none;
      color: blue;
    }
  </style>
</head>
<body>

<div class="bordered">
  <h2>Update Staff Information</h2>
  <%
    // Simulate updating staff details in the database
    String staffId = request.getParameter("staffId");
    String staffName = request.getParameter("staffName");
    String staffPosition = request.getParameter("staffPosition");
    String staffDepartment = request.getParameter("staffDepartment");
    String staffEmail = request.getParameter("staffEmail");

    // Simulate database update operation
    boolean updateSuccess = true; // Assume the update is successful

    if (updateSuccess) {
  %>
      <p>Staff information updated successfully!</p>
      <p><b>Staff ID:</b> <%= staffId %></p>
      <p><b>Name:</b> <%= staffName %></p>
      <p><b>Position:</b> <%= staffPosition %></p>
      <p><b>Department:</b> <%= staffDepartment %></p>
      <p><b>Email:</b> <%= staffEmail %></p>
  <%
    } else {
  %>
      <p>Failed to update staff information. Please try again.</p>
  <%
    }
  %>
  <br>
  <a href="index.html">Back to Update Form</a>
</div>

</body>
</html>
