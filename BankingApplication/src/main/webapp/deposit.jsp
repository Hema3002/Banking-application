<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form container styling */
        form {
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 400px; /* Adjust width as needed */
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
            color: #666;
            display: block;
            margin-bottom: 10px;
            text-align: left;
        }

        /* Input styling */
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

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
    </style>
</head>
<body onload="showDepositMessage()">
    <form action="DepositServlet" method="post">
        <h2>Deposit Amount</h2>
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount"><br><br>
        <input type="submit" value="Deposit">
    </form>
</body>
</html>
