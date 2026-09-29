package ir.reza.store.servlet;

import ir.reza.store.model.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/latest-order")
public class LatestOrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        Order latestOrder =
                (Order) session.getAttribute("latestOrder");

        request.setAttribute("order", latestOrder);

        request.getRequestDispatcher(
                "/WEB-INF/views/latest-order.jsp"
        ).forward(request, response);
    }
}