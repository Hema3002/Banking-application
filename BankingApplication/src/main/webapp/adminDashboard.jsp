 <%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
    /* CSS for Admin Dashboard */

/* Basic reset for margin and padding */
* {

    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f2f5;
    color: #333;
    padding: 20px;
    text-align: center;
}

/* Header styling */
h2 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #444;
}

/* Navigation links */
a {
    display: inline-block;
    margin: 0 10px;
    padding: 10px 20px;
    text-decoration: none;
    color: #fff;
    background-color: #007bff;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

a:hover {
    background-color: #0056b3;
}

/* Mobile-friendly adjustments */
@media (max-width: 600px) {
    a {
        display: block;
        margin: 10px 0;
        width: 100%;
        padding: 15px;
    }
}
    
    </style>
</head>
<body>

    <h2>Welcome, <%= session.getAttribute("username") %></h2><br>
    <a href="registerCustomer.jsp">Register Customer</a> |
    <a href="listCustomers.jsp">List Customers</a> |
    <a href="viewCustomers.jsp">View Customers</a> |
    <a href="logout.jsp">Logout</a>

</body>
</html>
    