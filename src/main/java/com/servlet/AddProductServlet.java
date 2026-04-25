package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.dao.ProductDAO;
import com.model.Product;

public class AddProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            // Get values from form
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String category = request.getParameter("category");
            double price = Double.parseDouble(request.getParameter("price"));
            int qty = Integer.parseInt(request.getParameter("qty"));

            // Create object
            Product p = new Product();
            p.setProductId(id);
            p.setProductName(name);
            p.setCategory(category);
            p.setPrice(price);
            p.setQuantity(qty);

            // Insert into DB
            ProductDAO dao = new ProductDAO();
            dao.addProduct(p);

            // Success message (temporary)
            out.println("<h2 style='color:green;text-align:center;'>Product Added Successfully!</h2>");

            // Redirect after 2 seconds
            response.setHeader("refresh", "2;URL=DisplayProductsServlet");

        } catch (Exception e) {
            e.printStackTrace();

            // Show error on screen
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }
    }
}