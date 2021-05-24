<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
    <!-- Import lib -->
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
    <link rel="stylesheet"  href="/assets-admin/fontawesome-free/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <!-- End import lib -->

    <link rel="stylesheet"  href="/assets-admin/css/style.css">
</head>
<body class="overlay-scrollbar">
    <!-- navbar -->
    <div class="navbar">
        <!-- nav left -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link">
                    <i class="fas fa-bars" onclick="collapseSidebar()"></i>
                </a>
            </li>
        </ul>

        <form class="navbar-search">
            <input type="text" name="Search" class="navbar-search-input" placeholder="What you looking for...">
            <i class="fas fa-search"></i>
        </form>
        <!-- end form -->
        <!-- nav right -->
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
    <!-- end navbar -->
    <jsp:include page="_listCategoryAdmin.jsp"></jsp:include>
    <div class="wrapper">
        <div class="row">
            <jsp:include page="_listProductAdmin.jsp"></jsp:include>
        </div>
    </div>

    <script src="/assets-admin/js/index.js"></script>

</body>
</html>
