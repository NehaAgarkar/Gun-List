<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" type="text/css" href="showAllGuns.css">
    <!-- Include JSTL Core library -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
        /* Your existing CSS styles here */

        /* Grid layout styles */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* Two columns */
            grid-gap: 20px; /* Adjust the gap between grid items */
        }

        .grid-container .image-container {
            display: flex;
            justify-content: space-between;
        }
       

        .grid-container img {
            width: calc(50% - 10px); /* Set width of images (50% of parent - grid gap) */
            max-height: 318px; /* Set max height for consistency */
              box-shadow:0 10px 16px black;
            margin-top: 20px;
            transform: scale(0.99);	
        }
        img:hover {
            width: calc(50% - 10px); /* Set width of images (50% of parent - grid gap) */
            max-height: 318px; /* Set max height for consistency */
            box-shadow:0 10px 16px black;
            margin-top: 20px;
             transform: scale(1);
        }
        .gun-info{
            margin-top: 20px;
        	padding-left: 2rem;
        	box-shadow:0 10px 16px black;
        }
        .button-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .button-container button {
            padding: 10px 20px;
            background-color: black; /* Update background color */
            color: white;
            border: none;
            border-radius: 50px; /* Update border radius */
            cursor: pointer;
            font-size: 18px; /* Update font size */
            font-family: Arial, sans-serif; /* Update font family */
        }

        .button-container button:hover {
            background-color: #333; /* Darken background color on hover */
        }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container mt-5">
    <div class="grid-container">
        <!-- First column for images -->
        <div>
            <div class="image-container">
                <!-- Display first pair of gun images -->
               
                <img src="${gun.getGunImg1()}" alt="">
                <img src="${gun.getGunImg1()}" alt="">
            </div>
            <div class="image-container">
                <!-- Display second pair of gun images -->
                <img src="${gun.getGunImg1()}" alt="">
                <img src="${gun.getGunImg1()}" alt="">
            </div>
        </div>
        <!-- Second column for gun details -->
        <div class="gun-info">
            <!-- Display gun details -->
            <p><strong>Gun Name:</strong> ${gun.getGunName()} </p>
            <p><strong>Gun Price:</strong> ${gun.getGunPrice()}</p>
            <p><strong>Action:</strong> ${gun.getAction()}</p>
            <p><strong>Barrel Length:</strong> ${gun.getBarrelLenth()}</p>
            <p><strong>Capacity:</strong> ${gun.getCapacity()}</p>
            <p><strong>Finish:</strong> ${gun.getFinish()}</p>
            <p><strong>Weight:</strong> ${gun.getWeight()}</p>
            <p><strong>Category:</strong> ${gun.getCategory()}</p>

            <!-- Buttons for Add to Cart and Buy Now -->
            <div class="button-container">
                <button > <a href="add-to-cart/${gun.getGunId()}" onclick="reloadPage()"> Add to Cart</a></button>
                <button><a href="/customerInfo?id=${gun.getGunId()}">Buy Now</a></button>
            </div>
        </div>
    </div>
</div>

<script>
        function reloadPage() {
            // Reload the current page
            location.reload();
        }
    </script>

</body>
</html>
