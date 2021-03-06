<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<div class="table-responsive-container">
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
                <td>${fn:escapeXml(product.name)}</td>
                <td><img src="${fn:escapeXml(product.image)}" alt="${fn:escapeXml(product.name)}" style="height: 100px;"></td>
                <td>
                    <fmt:formatNumber type="number" maxFractionDigits="0" value="${product.price}" />đ
                </td>
                <td>
                    <fmt:formatNumber type="percent" value="${1 - product.sale}" />
                </td>
                <td>${fn:escapeXml(product.num) }</td>
            </tr>
        </c:forEach>
    </table>
</div>