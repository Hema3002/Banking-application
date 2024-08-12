<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
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
            text-align: center;
        }

        /* Form container styling */
        form {
            background: #e0e7ff; /* Light color background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            margin-top: 20px;
        }

        /* Header styling */
        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #444;
        }

        /* Label styling */
        label {
            font-size: 16px;
            color: #000; /* Black color for label text */
            display: block;
            margin-bottom: 20px;
        }

        /* Input styling */
        input[type="submit"] {
            padding: 10px 20px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Link styling */
        a {
            display: inline-block;
            margin-left: 20px;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
            background-color: #6c757d;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <h2>Close Account</h2>
    <form action="CloseAccountServlet" method="post">
        <label for="confirm">Are you sure you want to close your account?</label><br><br>
        <input type="submit" value="Yes">
        <a href="viewCustomers.jsp">No</a>
    </form>
</body>
</html>
