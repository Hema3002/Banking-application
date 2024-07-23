<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %></h2>
    <a href="registerCustomer.jsp">Register Customer</a> |
    <a href="listCustomers.jsp">List Customers</a> |
    <a href="viewCustomers.jsp">View Customers</a> |
    <a href="logout.jsp">Logout</a>
</body>
</html>
    