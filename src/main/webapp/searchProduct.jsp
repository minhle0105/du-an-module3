<%--
  Created by IntelliJ IDEA.
  User: Tuan
  Date: 3/18/2021
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <title>SEARCH PRODUCT</title>
</head>
<body>

<div>
    <div align="center">
        <caption> <h2>Search Result by part name</h2> </caption>
        <%--                <c:set var="search" value="${requestScope.searching}"/>--%>
        <%--                <c:if test="${(not empty search)}">--%>
        <table border="1"cellpadding="5">

            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Discount</th>
                <th>Category ID</th>
            </tr>
            <c:forEach var="product" items="${searching}">
                <tr>
                    <td> <c:out value="${product.productId}"/> </td>
                    <td> <c:out value="${product.productName}"/> </td>
                    <td> <c:out value="${product.productQuantity}"/> </td>
                    <td> <c:out value="${product.productPrice}"/> </td>
                    <td> <c:out value="${product.discount}"/> </td>
                    <td> <c:out value="${product.categoryId}"/> </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <br>
        <br>
    </div>
    <div id="pager" class="pager" align="center">
        <form>
            <input type="button"value="<<"class="first"/>
            <input type="button"value="<"class="prev"/>
            <input type="text"class="pagedisplay"/>
            <input type="button"value=">" class="next"/>
            <input type="button"value=">>"class="last">
            <select class="pagesize">
                <option value="2">2</option>
                <option selected="selected" value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="100">100</option>
            </select>
        </form>
        <td colspan="2"align="center">
            <a href="/productController">BACK</a>
        </td>
    </div>
</div>

</body>
</html>