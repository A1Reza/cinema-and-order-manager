<%@ page contentType="text/html;charset=UTF-8" %> <%--Requirement related to JSP Directive--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Result</title>
</head>
<body>

<h1>Order Result</h1>

<h2>Order Information</h2>

<%--This is Expression Language.
That is, JSP says:
From the Object in the Request named order, find the value of customerName.

EL accesses the customerName property and in JavaBean it usually uses:
getCustomerName()--%>
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