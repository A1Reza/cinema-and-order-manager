<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Latest Order</title>
</head>
<body>

<h1>Latest Order</h1>

<h2>Order Information</h2>

<p>
    Customer Name:
    ${order.customerName}
</p>

<p>
    Product Name:
    ${order.productName}
</p>

<p>
    Product Price:
    ${order.productPrice}
</p>

<p>
    Quantity:
    ${order.quantity}
</p>

<p>
    Total Price:
    ${order.totalPrice}
</p>

<br>

<a href="${pageContext.request.contextPath}/order">
    Create Another Order
</a>

</body>
</html>

<%--If the user has not created any orders and goes directly to /latest-order, latestOrder will be null.
This is exactly where we will add the Filter in the next step to protect the Latest Order page.--%>