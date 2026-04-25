package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDAO;
import com.model.Product;

public class ReportCriteriaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ProductDAO dao = new ProductDAO();
            List<Product> list = null;

            // Get type of report
            String type = request.getParameter("type");

            if ("price".equals(type)) {
                double price = Double.parseDouble(request.getParameter("price"));
                list = dao.getProductsAbovePrice(price);

            } else if ("category".equals(type)) {
                String category = request.getParameter("category");
                list = dao.getProductsByCategory(category);
            }

            // Send data to JSP
            request.setAttribute("data", list);

            RequestDispatcher rd = request.getRequestDispatcher("report_result.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("<h3 style='color:red;'>Error Generating Report</h3>");
        }
    }
}