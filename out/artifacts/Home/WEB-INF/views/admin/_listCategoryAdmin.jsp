<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div style="display: inline-block;">
    <table border="1" cellpadding="5" cellspacing="1" >
        <tr><a href="/CreateCategory" style="display: block">Create a category</a></tr>
        <tr>
            <th>CategoryID</th>
            <th>Name</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listCategory}" var="category">
            <tr>
                <td>${category.categoryID}</td>
                <td><a href="AdminCategory?categoryID=${category.categoryID }">${category.name}</a></td>
                <td>
                    <form method="get" action="UpdateCategory">
                        <input type="hidden" name="id" value="${category.categoryID}" />
                        <input type="submit" name="action" value="Change Infomation" />
                    </form>
                    <form method="Post" action="DeleteCategory">
                        <input type="hidden" name="id" value="${category.categoryID}" />
                        <input type="submit" name="delete" value="Delete" />
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
