<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gun Details Form</title>
    <link rel="stylesheet" type="text/css" href="addGuns.css"> <!-- External CSS file -->
</head>
<body>
    <h2>Gun Details Form</h2>
    <form action="addGuns">
        <label for="gunName">Gun Name:</label>
        <input type="text" id="gunName" name="gunName"><br><br>
        
        <label for="gunPrice">Gun Price:</label>
        <input type="text" id="gunPrice" name="gunPrice"><br><br>
        
        <label for="gunImg1">Gun Image 1:</label>
        <input type="text" id="gunImg1" name="gunImg1"><br><br>
        
        <label for="gunImg2">Gun Image 2:</label>
        <input type="text" id="gunImg2" name="gunImg2"><br><br>
        
        <label for="gunImg3">Gun Image 3:</label>
        <input type="text" id="gunImg3" name="gunImg3"><br><br>
        
        <label for="gunImg4">Gun Image 4:</label>
        <input type="text" id="gunImg4" name="gunImg4"><br><br>
        
        <label for="action">Action:</label>
        <input type="text" id="action" name="action"><br><br>
        
        <label for="barrelLength">Barrel Length:</label>
        <input type="text" id="barrelLength" name="barrelLength"><br><br>
        
        <label for="capacity">Capacity:</label>
        <input type="text" id="capacity" name="capacity"><br><br>
        
        <label for="finish">Finish:</label>
        <input type="text" id="finish" name="finish"><br><br>
        
        <label for="weight">Weight:</label>
        <input type="text" id="weight" name="weight"><br><br>
        
        <label for="category">Category:</label>
        <select id="category" name="category">
            <option value="Handguns">Handguns</option>
            <option value="Rifles">Rifles</option>
            <option value="Shotguns">Shotguns</option>
            <option value="Revolver">Revolver</option> <!-- Added Revolver option -->
        </select><br><br>
        
        <input type="submit" value="Submit">
         <a href="showAll" class="showAllGuns">Show All Guns</a>
    </form>
</body>
</html>
