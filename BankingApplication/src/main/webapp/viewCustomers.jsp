<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <style>
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
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Container for content */
        .container {
            background: #f9f9f9; /* Light grey color for the box */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            text-align: center;
            border: 1px solid #ddd; /* Slightly darker border for definition */
        }

        /* Header styling */
        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #444;
        }

        /* Information box styling */
        .info {
            background-color: #e0f7fa; /* Light blue color for the info box */
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 18px;
            color: #00796b; /* Darker text color for contrast */
        }

        /* Link styling */
        a {
            color: #007bff;
            text-decoration: none;
            margin: 0 10px;
            font-size: 16px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, Customer</h2>
        <%
            String accountNo = (String) session.getAttribute("account_no");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Hema");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
            ps.setString(1, accountNo);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                out.print("<div class='info'>Account No: " + rs.getString("account_no") + "<br>");
                out.print("Balance: $" + rs.getDouble("initial_balance") + "</div>");
            }
        %>
        <a href="viewTransactions.jsp">View Transactions</a> |
        <a href="deposit.jsp">Deposit</a> |
        <a href="withdraw.jsp">Withdraw</a> |
        <a href="closeAccount.jsp">Close Account</a> |
        <a href="logout.jsp">Logout</a>
    </div>
</body>
</html>
