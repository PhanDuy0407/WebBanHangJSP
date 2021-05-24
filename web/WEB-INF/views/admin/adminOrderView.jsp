<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title></title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<style>--%>
<%--    table, th, td {--%>
<%--        border: 1px solid black;--%>
<%--        padding: 1px;--%>
<%--        spacing: 1px;--%>
<%--        border-spacing: 1px;--%>
<%--    }--%>
<%--</style>--%>

<%--<table border="1" style="display: block;">--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Name</th>--%>
<%--        <th>Phone number</th>--%>
<%--        <th>Address</th>--%>
<%--        <th>Total money</th>--%>
<%--        <th>User ID</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Action</th>--%>
<%--    </tr>--%>

<%--        <tr>--%>
<%--            <td>${order.orderID}</td>--%>
<%--            <td>${order.fullName}</td>--%>
<%--            <td>${order.phoneNumber}</td>--%>
<%--            <td>${order.address}</td>--%>
<%--            <td>${order.totalMoney}</td>--%>
<%--            <td>${order.userID}</td>--%>
<%--            <c:if test="${!order.isStatus()}"><td>Pending</td></c:if>--%>
<%--            <c:if test="${order.isStatus()}"><td>Confirm</td></c:if>--%>
<%--            <td>--%>
<%--                <form method="get" action="AdminOrderDetail">--%>
<%--                    <input type="hidden" name="id" value="${order.orderID}" />--%>
<%--                    <input type="submit" name="action" value="Detail" />--%>
<%--                </form>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>


<%--</table>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order</title>
    <!-- Import lib -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
    <link rel="stylesheet" type="text/css" href="/assets-admin/fontawesome-free/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <!-- End import lib -->

    <link rel="stylesheet" type="text/css" href="/assets-admin/css/style.css">
</head>
<body class="overlay-scrollbar">
<!-- navbar -->
<div class="navbar">
    <ul class="navbar-nav nav-right">
        <li class="nav-item mode">
            <a class="nav-link" href="#" onclick="switchTheme()">
                <i class="fas fa-moon dark-icon"></i>
                <i class="fas fa-sun light-icon"></i>
            </a>
        </li>
    </ul>
    <!-- end nav right -->
</div>
<div class="wrapper">
    <div class="row">
        <div class="col-m-12 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h3>
                        Order
                    </h3>
                </div>
                <div class="pdoduct-content">
                    <table>
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Phone number</th>
                            <th>Address</th>
                            <th>Total money</th>
                            <th>User ID</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listOrder}" var="order">
                            <tr>
                                <td>${order.orderID}</td>
                                <td>${order.fullName}</td>
                                <td>${order.phoneNumber}</td>
                                <td>${order.address}</td>
                                <td>${order.totalMoney}</td>
                                <td>${order.userID}</td>
                                <c:if test="${!order.isStatus()}"><td>Pending</td></c:if>
                                <c:if test="${order.isStatus()}"><td>Confirm</td></c:if>
                                <td>
                                    <form class="navbar-nav nav-left">
                                        <li class="nav-item">
                                            <a class="nav-link" href="/AdminOrderDetail?id=${order.orderID}">
                                                <i class="fas fa-info-circle"></i>
                                            </a>
                                        </li>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end main content -->
<!-- import script -->
<script src="/assets-admin/js/index.js"></script>
<!-- end import script -->
</body>
</html>