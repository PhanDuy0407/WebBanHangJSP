<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="controller.admin.CreateUserServlet"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <title>Update JSP</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="CreateUser" method="POST">--%>
<%--    <h1>Create User</h1>--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <td>User's ID</td>--%>
<%--            <td><input type="text" name="id" value="${user.getUserID()}"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>User's Name</td>--%>
<%--            <td><input type="text" name="name" value="${user.getName()}"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Username</td>--%>
<%--            <td><input type="text" name="username" value="${user.getUserName()}"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td></td>--%>
<%--            <td>--%>
<%--                <c:if test="${invalidUsername}">--%>
<%--                    <p style="color: red; margin: 0px;font-size: small">Username has already been taken</p>--%>
<%--                </c:if>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Password</td>--%>
<%--            <td><input type="text" name="password" value="${user.getPassword()}"></td>--%>
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
        Create User
    </h3>
    <form action="CreateUser" method="POST">
        <table>
            <tr>
                <td>User's ID</td>
                <td><input type="text" name="id" value="${fn:escapeXml(user.getUserID())}"></td>
            </tr>
            <tr>
                <td>User's Name</td>
                <td><input type="text" name="name" value="${fn:escapeXml(user.getName())}"></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username" value="${fn:escapeXml(user.getUserName())}"></td>
            </tr>
            <c:if test="${invalidUsername}">
                <tr>
                    <td colspan="2">
                        <p style="color: red; margin: 0px;font-size: small">Username has already been taken</p>
                    </td>
                </tr>
            </c:if>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" value="${user.getPassword()}"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn-primary">Save</button>
                    <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/AdminUser'" class="btn-cancel" >Cancel</button>
                </td>
            </tr>
        </table>
    </form>
</div>
