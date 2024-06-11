<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plant Details</title>
<style>
  body {
    margin: 150;
    font-family: Arial, sans-serif;
    background-color: #cefad0;
  }
  .container {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .details-container {
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 60px;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    width: 100%;
  }
  h1 {
    font-weight: bold;
    text-align: center;
    margin-bottom: 30px;
  }
  .details-group {
    margin-bottom: 10px;
  }
  .details-group h3 {
    display: inline;
    margin: 0;
    font-weight: normal;
  }
  .details-group span {
    display: inline;
    font-size: large;
  }
</style>
</head>
<body>

<div class="container">
  <div class="details-container">
    <h1>Plant Details</h1>
    <div class="details-group">
      <h3>Plant Scientific Name: </h3>
      <span><%= request.getParameter("plantSciname") %></span>
    </div>
    <div class="details-group">
      <h3>Plant Common Name: </h3>
      <span><%= request.getParameter("plantComname") %></span>
    </div>
    <div class="details-group">
      <h3>Plant Type: </h3>
      <span><%= request.getParameter("plantType") %></span>
    </div>
    <% String plantType = request.getParameter("plantType"); %>
    <% if ("Indoor".equals(plantType)) { %>
      <div class="details-group">
        <h3>Light Requirements: </h3>
        <span><%= request.getParameter("lightRequirements") %></span>
      </div>
      <div class="details-group">
        <h3>Humidity Preferences: </h3>
        <span><%= request.getParameter("humidityPreferences") %></span>
      </div>
      <div class="details-group">
        <h3>Watering Frequency: </h3>
        <span><%= request.getParameter("wateringFrequency") %></span>
      </div>
    <% } else if ("Outdoor".equals(plantType)) { %>
      <div class="details-group">
        <h3>Sunlight Exposure: </h3>
        <span><%= request.getParameter("sunlightExposure") %></span>
      </div>
      <div class="details-group">
        <h3>Wind Resistance: </h3>
        <span><%= request.getParameter("windResistance") %></span>
      </div>
      <div class="details-group">
        <h3>Soil Type: </h3>
        <span><%= request.getParameter("soilType") %></span>
      </div>
    <% } %>
    <div class="details-group">
      <h3>Plant Habitat: </h3>
      <span><%= request.getParameter("plantHabitat") %></span>
    </div>
    <div class="details-group">
      <h3>Plant Species: </h3>
      <span><%= request.getParameter("plantSpecies") %></span>
    </div>
    <div class="details-group">
      <h3>Plant Description: </h3>
      <span><%= request.getParameter("plantDesc") %></span>
    </div>
  </div>
</div>

</body>
</html>
