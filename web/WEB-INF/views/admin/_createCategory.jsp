<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <title>Update JSP</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="CreateCategory" method="POST">--%>
<%--    <h1>Create Category</h1>--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <td>Category's ID</td>--%>
<%--            <td><input type="text" name="id" value=""></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Category's Name</td>--%>
<%--            <td><input type="text" name="name" value=""></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <button type="submit">Create</button>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<div class="card">
    <h3 class="card-header" style="margin: 0px">
        Create Category
    </h3>
    <form action="CreateCategory" method="POST">
        <table>
            <tr>
                <td>Category's ID</td>
                <td><input type="text" name="id" value=""></td>
            </tr>
            <tr>
                <td>Category's Name</td>
                <td><input type="text" name="name" value=""></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn-primary">Save</button>
                    <button type="button" onclick="window.location.href='/Admin'" class="btn-cancel" >Cancel</button>
                </td>
            </tr>
        </table>
    </form>
</div>
