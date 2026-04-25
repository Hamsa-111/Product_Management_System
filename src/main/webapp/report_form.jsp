<!DOCTYPE html>
<html>
<head>
    <title>Generate Report</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #8e2de2, #4a00e0);
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

        select, input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #6f42c1;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #5a32a3;
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
    <h2>Generate Report</h2>

    <form action="ReportCriteriaServlet" method="post">

        <select name="type">
            <option value="price">Price Greater Than</option>
            <option value="category">Category</option>
        </select>

        <input type="text" name="price" placeholder="Enter Price (for price report)">
        <input type="text" name="category" placeholder="Enter Category (for category report)">

        <button type="submit">Generate Report</button>
    </form>

    <a href="index.jsp"> Back to Home</a>
</div>

</body>
</html>