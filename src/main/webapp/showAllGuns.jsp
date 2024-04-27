<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="showAllGuns.css">
</head>
<body>

<div class="container mt-5">
    <div class="table-responsive">
        <table class="table table-striped table-dark text-white table-hover">
            <thead>
                <tr>
                    <th>Gun ID</th>
                    <th>Gun Name</th>
                    <th>Gun Price</th>
                    <th>Gun Image</th>
                    <th>Category</th>
                    <th>Modification</th>
                   
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${guns}" var="gun">
                    <tr>
                        <td>${gun.getGunId()}</td>
                        <td>${gun.getGunName()}</td>
                        <td>${gun.getGunPrice()}</td>
                        <td><img alt="" src="${gun.getGunImg1()}" width="40%" ></td>
                        <td>${gun.getCategory()}</td>
                        <td>
                            <button class="btn btn-danger"><a href="delete/${gun.getGunId()}" class="text-white">Delete</a></button>
                            <form action="getGunForUpdate">
                       		<button class="btn btn-primary" name="id" value="${gun.getGunId()}">Update</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>

