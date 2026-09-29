package ir.reza.store.servlet;

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