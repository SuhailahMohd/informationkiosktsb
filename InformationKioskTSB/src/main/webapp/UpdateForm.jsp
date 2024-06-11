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
      background-color: #b7d7d2;
    }
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-top: 2px;
      padding: 0.8rem;
    }
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #f5f5f5;
    }
    .header .logo {
      font-size: 25px;
      color: #000;
      text-decoration: none;
      margin-left: 30px;
    }
    .nav-items {
      display: flex;
      justify-content: space-around;
      align-items: center;
      background-color: #f5f5f5;
      margin-right: 20px;
    }
    .nav-items a {
      font-family: sans-serif;
      text-decoration: none;
      color: #000;
      padding: 35px 20px;
    }
    .form-container {
      background-color: #fff;
      border: 1px solid #ddd;
      padding: 80px;
      border-radius: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1, h2 {
      font-weight: bold;
      text-align: center;
      margin-top: 5px;
      margin-bottom: 30px;
    }
    .form-group {
      margin-bottom: 10px;
    }
    .form-group h3, label {
      margin: 0;
      margin-bottom: 10px;
      font-weight: normal;
    }
    .form-group input[type="text"], 
    .form-group input[type="email"], 
    .form-group select {
      width: 100%;
      padding: 0.4rem;
      margin-top: 10px;
      border: 1px solid #ddd;
      border-radius: 0.5rem;
      background-color: rgba(255, 255, 255, 0.3);
      color: inherit;
      font-family: inherit;
      line-height: 1.5;
    }
    .form-group input[type="radio"] {
      margin-right: 10px;
    }
    .hidden-fields {
      display: none;
      margin-top: 20px;
    }
    .hidden-fields h3 {
      font-weight: normal;
    }
    .hidden-fields select {
      margin-top: 5px;
      padding: 5px;
    }
    .form-actions {
      text-align: center;
      margin-top: 20px;
    }
    .form-actions input[type="submit"],
    .form-actions input[type="reset"] {
      padding: 10px 20px;
      border: none;
      border-radius: 20px;
      background-color: green;
      color: white;
      font-size: 16px;
      cursor: pointer;
      margin: 0 10px;
      margin-top: 20px;
    }
    .form-actions input[type="reset"] {
      background-color: #d9534f;
    }
  </style>
  <script>
    function resetForm() {
      document.getElementById('updateForm').reset();
    }
  </script>
</head>
<body style="background-color: #b7d7d2;">
<%
    // Simulate fetching staff details from the database using the staff ID
    String staffId = request.getParameter("staffId");
    // Placeholder for staff details
    String staffName = "";
    String staffPosition = "";
    String staffDepartment = "";
    String staffEmail = "johndoe@example.com";

    // Check if staffId is provided and not empty
    boolean hasStaffId = staffId != null && !staffId.trim().isEmpty();
%>

<div class="container">
  <div class="form-container">
    <h2>Update Staff Information</h2>
    <form id="updateForm" action="ProcessUpdate.jsp" method="post">
      <input type="hidden" name="staffId" value="<%= staffId %>">
      <% if (hasStaffId) { %>
        <div class="form-group">
          <label for="staffName">Staff Name:</label>
          <input type="text" id="staffName" name="staffName" value="<%= staffName %>" class="long-input" required><br><br>
        </div>
        <div class="form-group">
          <label for="staffPosition">Position:</label>
          <input type="text" id="staffPosition" name="staffPosition" value="<%= staffPosition %>" class="long-input" required><br><br>
        </div>
        <div class="form-group">
          <label for="staffDepartment">Department:</label>
          <input type="text" id="staffDepartment" name="staffDepartment" value="<%= staffDepartment %>" class="long-input" required><br><br>
        </div>
        <div class="form-group">
          <label for="staffEmail">Email:</label>
          <input type="email" id="staffEmail" name="staffEmail" value="<%= staffEmail %>" class="long-input" required><br><br>
        </div>
        <div class="form-actions">
          <input type="submit" value="Update">
          <input type="reset" value="Reset" onclick="resetForm()">
        </div>
      <% } else { %>
        <p>Please enter a valid Staff ID to update information.</p>
      <% } %>
    </form>
  </div>
</div>

</body>
</html>
