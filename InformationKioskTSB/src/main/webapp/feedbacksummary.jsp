<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Summary</title>
</head>
<body>
<div class="container">
  <div class="form-container">
    <h2>Thank You for Your Feedback!</h2>
    <p>We appreciate you taking the time to share your experience with us.</p>
    <p>Here's a summary of your feedback:</p>
    <ul>
      <li><b>Name:</b> <%= request.getAttribute("name") %></li>
      <li><b>Email:</b> <%= request.getAttribute("email") %></li>
      <li><b>Phone Number:</b> <%= request.getAttribute("phone") %></li>
      <li><b>Rating:</b> <%= request.getAttribute("rating") %> stars</li>
      <li><b>Comments:</b> <%= request.getAttribute("comments") %></li>
    </ul>
    <p>You can expect a response from us soon (optional message).</p>
    <a href="index.html">Go Back to Home Page</a>
  </div>
</div>
</body>
</html>
