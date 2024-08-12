<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
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
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start; /* Align content at the top */
            height: 100vh;
            margin: 0;
            padding: 20px;
        }

        /* Container for content */
        .container {
            background: #ffffff; /* White background for the box */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
            margin-top: 50px; /* Add margin to move the box down a bit from the top */
        }

        /* Header styling */
        h2 {
            margin-bottom: 20px;
            font-size: 24px; /* Smaller font size for the header */
            color: #333;
        }

        /* Link styling */
        a {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            text-decoration: none;
            font-size: 18px;
            color: #fff;
            background-color: #007bff; /* Blue background for buttons */
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.3s;
        }

        a:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: scale(1.05); /* Slightly enlarge on hover */
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
