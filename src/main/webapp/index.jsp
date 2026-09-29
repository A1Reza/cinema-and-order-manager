<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Store</title>
</head>
<body>

<h1><%= "REZA_ASADIPOUR_HW28_Maktab146" %></h1>

<h2>Welcome to Online Store</h2>

<h2>Order Management</h2>

<ul>
    <li>
        <a href="${pageContext.request.contextPath}/order">
            Create New Order
        </a>
    </li>

    <li>
        <a href="${pageContext.request.contextPath}/latest-order">
            View Latest Order
        </a>
    </li>
</ul>


<h2>CinemaHub</h2>

<ul>
    <li>
        <a href="${pageContext.request.contextPath}/cinema.jsp">
            View CinemaHub
        </a>
    </li>
</ul>

</body>
</html>