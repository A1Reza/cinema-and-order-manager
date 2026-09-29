package ir.reza.store.servlet;

import jakarta.servlet.http.HttpSession;
import ir.reza.store.model.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

    /* Context Path: http://localhost:8080/online-store */
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        /* Request Forwarding */
        request.getRequestDispatcher("/WEB-INF/views/order.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String customerName = request.getParameter("customerName");
        String productName = request.getParameter("productName");

        double productPrice = Double.parseDouble(
                request.getParameter("productPrice")
        );

        int quantity = Integer.parseInt(
                request.getParameter("quantity")
        );

        double totalPrice = productPrice * quantity;

        Order order = new Order(
                customerName,
                productName,
                productPrice,
                quantity
        );

        order.setTotalPrice(totalPrice);

        HttpSession session = request.getSession();
        session.setAttribute("latestOrder", order);

        request.setAttribute("order", order);

        request.getRequestDispatcher("/WEB-INF/views/result.jsp")
                .forward(request, response);
    }
}
/*
Forward:

Browser → Servlet → JSP


Redirect:

Browser → Servlet
↓
Browser resends request
↓
Servlet
*/