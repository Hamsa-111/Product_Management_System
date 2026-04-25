<!DOCTYPE html>
<html>
<head>
    <title>Delete Product</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ff416c, #ff4b2b);
        }

        .form-container {
            width: 320px;
            margin: 100px auto;
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
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #dc3545;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #c82333;
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
    <h2>Delete Product</h2>

    <form action="DeleteProductServlet" method="post">
        <input type="text" name="id" placeholder="Enter Product ID" required>

        <button type="submit">Delete Product</button>
    </form>

    <a href="index.jsp">Back to Home</a>
</div>

</body>
</html>