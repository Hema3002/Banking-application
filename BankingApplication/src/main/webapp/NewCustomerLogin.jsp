<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Password Reset</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
            text-align: left;
        }

        /* Header styling */
        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #444;
            text-align: center;
        }

        /* Icon styling */
        i {
            margin-right: 8px;
            color: #007bff;
        }

        /* Label styling */
        label {
            font-size: 16px;
            color: #666;
            display: block;
            margin-bottom: 10px;
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
            display: block;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fa fa-lock"></i>Customer Password Reset</h2>
        <form action="NewCustomerLogin" method="post">
            <label for="acc_no"><i class="fa fa-id-card"></i>Account No:</label>
            <input type="text" id="acc_no" name="acc_no">
            <label for="newPassword"><i class="fa fa-key"></i>Enter New Password:</label>
            <input type="text" id="newPassword" name="newPassword">
            <input type="submit" value="Reset Password">
        </form>
    </div>
</body>
</html>
