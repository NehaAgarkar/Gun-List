<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Guns.com Navigation Bar</title>
<style>
/* Your CSS styles for navigation bar */
nav {
    background:
        url('https://images.guns.com/prod/53ea2QeynGvzTzLYCRWHMGesutPocEhgfM5Srw3c.jpeg');
    background-size: cover;
    color: #fff;
    padding: 10px;
    display: flex;
    justify-content: space-between; /* Adjusted */
    align-items: center;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

li {
    display: inline;
    margin-right: 20px;
}

a {
    color: #fff;
    text-decoration: none;
}

#imge-logo {
    width: 20%;
    /* margin: 0px 0px 0px; */
    max-height: 9rem;
    position: relative;
}

.user-info {
    display: flex;
    align-items: center;
    justify-content: flex-end; /* Align to the right side */
}

.user-info a {
    margin-left: 20px; /* Adjust the spacing between elements */
}

/* Suggestions */
#suggestions {
    position: absolute;
    left: 57.1%;
    top: 17%;
    width: 12.9%;
    background-color: #fff;
    border: 1px solid #ccc;
    max-height: 127px;
    overflow-y: auto;
    color: black;
    z-index: 1;
}

.suggestion {
    padding: 10px;
    cursor: pointer;
}

.suggestion:hover {
    background-color: #f9f9f9;
}

/* Style for input search */
#browser {
    /* width: 100%; */
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

/* Style for datalist */
#browsers {
    overflow-y: auto;
    max-height: 100px; /* Adjust height as needed */
}

/* Media query for screens less than 1000px */
@media screen and (max-width: 1000px) {
    nav ul {
        display: none;
        flex-direction: column;
        align-items: center;
    }
    nav ul.active {
        display: flex;
    }
    .burger {
        display: block;
        cursor: pointer;
    }
    .burger .line {
        width: 25px;
        height: 3px;
        background-color: #fff;
        margin: 5px;
        left: 95%;
        position: relative;
    }
}
</style>
</head>
<body>
    <nav>
        <img id="imge-logo"
            src="https://images.guns.com/dev/2021/04/02/6066f53e87d5b822e9f0c866197731e2a32fcf38ba296.png"
            alt="Guns.com Logo">
        <ul class="nav-links">
            <li><a href="#">GUNS</a></li>
            <li><a href="#">AMMO</a></li>
            <li><a href="#">ACCESSORIES</a></li>
            <li><a href="#">🚨 DEALS 🚨</a></li>
            <li>
                <input list="browsers" name="browser" id="browser">
                <datalist id="browsers">
                    <c:forEach items="${guns}" var="gun" varStatus="status">
                        <option value="${gun.getGunName()}">
                    </c:forEach>
                </datalist>
            </li>
        </ul>
        <div class="user-info">
            <!-- Placed at right side -->
            <span class="user-name">${user}</span>
            <!-- User name -->
            <!-- Cart symbol -->
            <a href="/cart"><span class="cart-symbol">🛒<sup>${count }</sup></span></a>
            <!-- History icon -->
            <a href="/history"><span class="history-symbol"><a href="/history/${user }">History</a>
            </span></a>
        </div>
        <div class="burger" onclick="toggleNav()">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
    </nav>
    <script>
        function toggleNav() {
            var navLinks = document.querySelector('.nav-links');
            navLinks.classList.toggle('active');
        }
    </script>
</body>
</html>
