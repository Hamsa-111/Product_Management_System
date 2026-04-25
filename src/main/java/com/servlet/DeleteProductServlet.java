package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.dao.ProductDAO;

public class DeleteProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            int id = Integer.parseInt(request.getParameter("id"));

            ProductDAO dao = new ProductDAO();
            dao.deleteProduct(id);

            // Success message
            out.println("<h2 style='color:red;text-align:center;'>Product Deleted Successfully!</h2>");

            // Redirect after 2 sec
            response.setHeader("refresh", "2;URL=DisplayProductsServlet");

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }
    }
}