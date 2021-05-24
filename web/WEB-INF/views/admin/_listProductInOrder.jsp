
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="table-responsive-container">
<%--    <table>--%>
<%--        <tr>--%>
<%--            <th>Mã sản phẩm</th>--%>
<%--            <th>Tên sản phẩm</th>--%>
<%--            <th>Giá</th>--%>
<%--            <th>Số lượng</th>--%>
<%--            <th>Giảm giá</th>--%>
<%--            <th>Tạm tính</th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td class="table-row-link" data-link="#">111</td>--%>
<%--            <td>Dell Latitude 7480</td>--%>
<%--            <td>15.000.000 đ</td>--%>
<%--            <td>1</td>--%>
<%--            <td>20%</td>--%>
<%--            <td>12.000.000 đ</td>--%>
<%--        </tr>--%>
<%--    </table>--%>

    <table>
        <tr>
            <th>Product's name</th>
            <th>Product's image</th>
            <th>Product's price</th>
            <th>Product's sale</th>
            <th>Amount</th>
        </tr>
        <c:forEach items="${listProduct}" var="product">
            <tr>
                <td>${product.name}</td>
                <td><img src="${product.image }" alt="${product.name}" style="height: 100px;"></td>
                <td>
                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${product.price}" />đ
                </td>
                <td>
                    <fmt:formatNumber type="percent" value="${1 - product.sale}" />
                </td>
                <td>${product.num }</td>
            </tr>
        </c:forEach>
    </table>
</div>