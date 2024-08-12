<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
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
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Form container styling */
        form {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: block;
            width: 500px; /* Adjust width as needed */
            text-align: left;
            max-height: 80vh; /* Ensure form doesn't exceed viewport height */
            overflow-y: auto; /* Add scroll if content exceeds height */
        }

        /* Header styling */
        h2 {
            margin-bottom: 15px;
            font-size: 20px;
            color: #444;
            text-align: center;
        }

        /* Label styling */
        label {
            font-size: 14px;
            color: #666;
            display: block;
            margin-bottom: 5px;
        }

        /* Input and textarea styling */
        input[type="text"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Textarea specific styling */
        textarea {
            height: 80px;
            resize: vertical; /* Allow vertical resizing only */
        }

        /* Submit button styling */
        input[type="submit"] {
            padding: 10px 15px;
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
    <form action="RegisterCustomerServlet" method="post">
        <h2>Register Customer</h2>
        <label for="full_name">Full Name:</label>
        <input type="text" id="full_name" name="full_name">
        <label for="address">Address:</label>
        <textarea id="address" name="address"></textarea>
        <label for="mobile_no">Mobile No:</label>
        <input type="text" id="mobile_no" name="mobile_no">
        <label for="email_id">Email ID:</label>
        <input type="text" id="email_id" name="email_id">
        <label for="account_type">Account Type:</label>
        <select id="account_type" name="account_type">
            <option value="Saving">Saving</option>
            <option value="Current">Current</option>
        </select>
        <label for="initial_balance">Initial Balance:</label>
        <input type="text" id="initial_balance" name="initial_balance">
        <label for="date_of_birth">Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth">
        <label for="id_proof">ID Proof:</label>
        <input type="text" id="id_proof" name="id_proof">
        <input type="submit" value="Register">
    </form>
</body>
</html>
