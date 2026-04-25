<%@ page import="java.util.*,com.model.Product" %>

<!DOCTYPE html>
<html>
<head>
    <title>Report Result</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f7971e, #ffd200);
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
            background: #ff9800;
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
            color: #333;
        }
    </style>
</head>

<body>

<h2>Report Result</h2>

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

if(list != null && !list.isEmpty()){
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
} else {
%>
<tr>
<td colspan="5">No Data Found</td>
</tr>
<%
}
%>

</table>

<a class="back" href="index.jsp">Back to Home</a>

</body>
</html>