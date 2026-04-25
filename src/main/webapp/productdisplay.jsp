<%@ page import="java.util.*,com.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #cfd9df, #e2ebf0);
        }

        h2 {
            text-align: center;
            margin-top: 30px;
            color: #333;
        }

        table {
            width: 85%;
            margin: 40px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
        }

        th {
            background: #007bff;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }

        tr:hover {
            background: #ddd;
        }

        .back {
            display: block;
            text-align: center;
            margin-bottom: 20px;
            text-decoration: none;
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>

<body>

<h2>Product List</h2>

<table border="1">
<tr>
<th>ID</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>
</tr>

<%
List<Product> list = (List<Product>) request.getAttribute("data");

if(list != null){
    for(Product p : list){
%>
<tr>
<td><%=p.getProductId()%></td>
<td><%=p.getProductName()%></td>
<td><%=p.getCategory()%></td>
<td><%=p.getPrice()%></td>
<td><%=p.getQuantity()%></td>
</tr>
<%
    }
}
%>

</table>

<a class="back" href="index.jsp">Back to Home</a>

</body>
</html>