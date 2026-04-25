<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ff7e5f, #feb47b);
        }

        .form-container {
            width: 350px;
            margin: 80px auto;
            padding: 25px;
            background: white;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #218838;
        }

        a {
            display: block;
            margin-top: 15px;
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>

<body>

<div class="form-container">
    <h2>Add Product</h2>

    <form action="AddProductServlet" method="post">
        <input type="text" name="id" placeholder="Product ID" required>
        <input type="text" name="name" placeholder="Product Name" required>
        <input type="text" name="category" placeholder="Category" required>
        <input type="text" name="price" placeholder="Price" required>
        <input type="text" name="qty" placeholder="Quantity" required>

        <button type="submit">Add Product</button>
    </form>

    <a href="index.jsp">Back to Home</a>
</div>

</body>
</html>