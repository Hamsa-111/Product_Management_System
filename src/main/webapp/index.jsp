<!DOCTYPE html>
<html>
<head>
    <title>Product Management System</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #36d1dc, #5b86e5);
        }

        .container {
            text-align: center;
            margin-top: 120px;
            color: white;
        }

        h1 {
            margin-bottom: 40px;
        }

        .btn {
            display: block;
            width: 250px;
            margin: 10px auto;
            padding: 12px;
            background: white;
            color: #333;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: 0.3s;
        }

        .btn:hover {
            background: #333;
            color: white;
        }
    </style>
</head>

<body>

<div class="container">
    <h1>Product Management System</h1>

    <a class="btn" href="productadd.jsp">Add Product</a>
    <a class="btn" href="productupdate.jsp">Update Product</a>
    <a class="btn" href="productdelete.jsp">Delete Product</a>
    <a class="btn" href="DisplayProductsServlet">Display Products</a>
    <a class="btn" href="reports.jsp">Reports</a>
</div>

</body>
</html>