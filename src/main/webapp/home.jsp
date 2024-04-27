<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" type="text/css" href="showAllGuns.css">
<style>
    .cart {
        width: 30%;
        margin: 1%;
        display: inline-block;
        vertical-align: top;
        background-color: #ffffff;
        border: 1px solid #e5e5e5;
        border-radius: 5px;
        padding: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);
        box-sizing: border-box;
        transition: box-shadow 0.3s ease; /* Add transition effect */
        position: relative; /* Ensure positioning of pop-up image */
    }
    .cart:hover {
        box-shadow: 0 10px 16px black; /* Change box shadow on hover */
    }
    .cart img {
        max-width: 100%;
        height: auto;
        /* border: 1px solid #ccc; */ /* Add border to images */
        border-radius: 5px; /* Optional: Add border radius */
        transition: transform 0.3s ease; /* Add transition effect for transform */
    }
    .cart-inside:hover img {
        transform: scale(0.9); /* Enlarge image on hover */
    }
    .cart-info {
       /*  margin-top: 10px; */
        border-top: 1px solid #ccc; /* Add border to the top of additional info */
       /*  padding-top: 10px; */ /* Add some padding to separate from the image */
    }
    .cart-info p {
        margin: 5px 0; /* Add margin to paragraphs */
    }
    /* Style for the pop-up image */
    .popup-image {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        z-index: 999; /* Ensure the pop-up appears above other content */
        opacity: 0; /* Hide the pop-up by default */
        transition: opacity 0.3s ease; /* Add transition effect for opacity */
    }
    .cart-inside:hover .popup-image {
        opacity: 1; /* Show the pop-up on hover */
    }
    .button-click{
    	display: flex;
    	justify-content: center;
    }
    .cart-anchor{
    	color: black;
    }
    .info-para{
    	font-family: sans-serif;
    }
    
    
</style>

</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	
<div class="container mt-5">
    <div class="cart-container">
        <c:forEach items="${guns}" var="gun" varStatus="status">
            <div class="cart">
            <a class="cart-anchor" href="allInfo/${gun.getGunId()}">
            <div class="cart-inside">
                <img src="${gun.getGunImg1()}" alt="${gun.getGunName()}">
                </div>
                <div class="cart-info">
                   <%--  <p class="info-para"><strong>Gun ID:</strong> ${gun.getGunId()}</p> --%>
                    <p class="info-para"><strong>Gun Name:</strong> ${gun.getGunName()}</p>
                    <p class="info-para"><strong>Gun Price:</strong> ${gun.getGunPrice()}</p>
                    <p class="info-para"><strong>Category:</strong> ${gun.getCategory()}</p>
                    <%-- <div class="button-click">
                    <button class="btn btn-danger"><a href="delete/${gun.getGunId()}" class="text-white">Delete</a></button>
                    <form action="getGunForUpdate">
                        <button class="btn btn-primary" name="id" value="${gun.getGunId()}">Update</button>
                    </form>
                    </div> --%>
                </div>
                </a>
            </div>
            <!-- Close row and start a new row every 3rd item -->
            <c:if test="${status.index % 3 == 2}"></div><div class="cart-container"></c:if>
        </c:forEach>
    </div>
</div>

</body>
</html>
