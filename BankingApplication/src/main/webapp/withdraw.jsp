<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Withdraw</title>
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
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
        }

        /* Container for form */
        .container {
            background: #ffffff; /* White background for the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        /* Header styling */
        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #444;
        }

        /* Form label styling */
        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }

        /* Form input styling */
        input[type="text"] {
            width: calc(100% - 22px); /* Adjust width to fit within padding */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        /* Submit button styling */
        input[type="submit"] {
            background-color: #007bff; /* Blue background for the button */
            color: #fff; /* White text */
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Withdraw Amount</h2>
        <form action="WithdrawServlet" method="post">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" placeholder="Enter amount"><br><br>
            <input type="submit" value="Withdraw">
        </form>
    </div>
</body>
</html>
