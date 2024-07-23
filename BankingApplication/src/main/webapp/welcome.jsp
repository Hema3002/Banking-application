<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style>
body {
    
    font-family: Arial, sans-serif;
    background-color: #E0F7FA; /* Light blue background */
    margin: 0;
    padding: 20px;
    text-align: center; /* Center align text in body */
}

h2 {
    color: #333; /* Dark gray color for headings */
    margin-bottom: 20px; /* Add spacing below the heading */
}

table {
    width: 80%; /* Adjusted width for better centering */
    margin: 20px auto; /* Center the table horizontally */
    border-collapse: collapse;
    background-color: #fff; /* White background for the table */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Light shadow for the table */
}

th, td {
    padding: 10px;
    text-align: left;
    border: 1px solid #ddd; /* Light gray border for cells */
}

th {
    background-color: #007BFF; /* Blue background for table headers */
    color: white; /* White text for table headers */
}

tr:nth-child(even) {
    background-color: #f2f2f2; /* Light gray background for even rows */
}

a {
    display: inline-block;
    margin: 20px auto; /* Center the link horizontally */
    padding: 10px 20px;
    text-decoration: none;
    background-color: #007BFF; /* Blue background for links */
    color: white; /* White text for links */
    border-radius: 5px; /* Rounded corners for links */
    font-size: 16px; /* Adjust font size for readability */
}

a:hover {
    background-color: #0056b3; /* Darker blue on hover */
}

    </style>
</head>
<body>
<div class="container">
    <h2>BANKING APPLICATION</h2>

    <a href="login.jsp">Admin</a>
    <a href="customerLogin.jsp">Customer</a>
</div>
</body>
</html>


