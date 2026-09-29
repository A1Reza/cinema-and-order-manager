<%@ page contentType="text/html;charset=UTF-8" %>
<%--This is a JSP Directive.
That is, it tells the JSP Container what settings this page should have.--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Order</title>
</head>
<body>

<h1>Create New Order</h1>
              <%-- Expression Language (EL) --%>
<form action="${pageContext.request.contextPath}/order" method="post"> <%--action specifies the destination address of the form.--%>
    <%--method="post"
This means that when the user clicks Submit, the data is sent with:
HTTP POST--%>

    <div>
        <label for="customerName">Customer Name:</label>
        <input type="text"
               id="customerName"
               name="customerName"
               required>
    </div>
    <%--HTML
name="customerName"
    ↓
Servlet
request.getParameter("customerName")--%>

    <br>

    <div>
        <label for="productName">Product Name:</label>
        <input type="text"
               id="productName"
               name="productName"
               required>
    </div>

    <br>

    <div>
        <%--for specifies which input this label belongs to.--%>
        <label for="productPrice">Product Price:</label>
        <input type="number"
               id="productPrice"
               name="productPrice"
               step="0.01"
               min="0"
               required>
    </div>

    <br>

    <%--id is mostly used to identify the element on the page.
But name in Form is very important for passing value to Servlet.--%>
    <div>
        <label for="quantity">Quantity:</label>
        <input type="number"
               id="quantity"
               name="quantity"
               min="1"
               required>
    </div>

    <br>

    <button type="submit">Submit Order</button>

</form>

</body>
</html>