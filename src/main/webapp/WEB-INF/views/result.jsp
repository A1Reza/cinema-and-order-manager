<%@ page contentType="text/html;charset=UTF-8" %> <%--Requirement related to JSP Directive--%>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    //Scriptlet
    String message = "Your order has been calculated successfully.";
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Result</title>
</head>

<body>

<h1>Order Result</h1>

<p>
    <%= message %>
</p>

<p>
    Current Date and Time:
    <%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()) %>
    <%--JSP Expression: That is, the result of the Expression is placed directly in the Response.--%>
</p>

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

<br>
<br>

<a href="${pageContext.request.contextPath}/latest-order">
    View Latest Order
</a>

</body>
</html>