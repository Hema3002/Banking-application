<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Customers</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E0F7FA; /* Light blue background */
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: inline-block;
            margin: 20px 0;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Customer List</h2>
    <table border="1">
        <tr>
            <th>Customer ID</th>
            <th>Full Name</th>
            <th>Address</th>
            <th>Mobile No</th>
            <th>Email ID</th>
            <th>Account Type</th>
            <th>Initial Balance</th>
            <th>Date of Birth</th>
            <th>Account No</th>
            
        </tr>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Hema");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Customer");
                
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getInt("customer_id") + "</td>");
                    out.println("<td>" + rs.getString("full_name") + "</td>");
                    out.println("<td>" + rs.getString("address") + "</td>");
                    out.println("<td>" + rs.getString("mobile_no") + "</td>");
                    out.println("<td>" + rs.getString("email_id") + "</td>");
                    out.println("<td>" + rs.getString("account_type") + "</td>");
                    out.println("<td>" + rs.getDouble("initial_balance") + "</td>");
                    out.println("<td>" + rs.getDate("date_of_birth") + "</td>");
                    out.println("<td>" + rs.getString("account_no") + "</td>");
                   
                    out.println("</tr>");
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <a href="adminDashboard.jsp">Back to Dashboard</a>
</body>
</html>

    